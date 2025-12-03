@interface JFXEffectPreviewManager
+ (id)JFX_createTransparentEmptyImageForPreviewSize:(CGSize)size;
- (BOOL)JFX_rendersDefaultContinousPreviewImage;
- (BOOL)isContinouslyPreviewing;
- (CGSize)continousPreviewSize;
- (JFXEffectPreviewManager)initWithName:(id)name callbackQueue:(id)queue;
- (JFXEffectPreviewManagerDelegate)delegate;
- (JFXEffectPreviewManagerDelegate)delegate_internal;
- (JFXEffectsPreviewGenerator)staticPreviewGenerator;
- (NSSet)continousPreviewEffects;
- (id)buildRenderRequest:(id)request time:(id *)time;
- (id)defaultPreviewImage;
- (id)defaultPreviewImageDisplayTransformValue;
- (void)JFX_cancelAssetRequestForAllEffects;
- (void)JFX_configureCommonRenderingPropertiesForEffect:(id)effect forPreviewSize:(CGSize)size withPreviewOptions:(id)options;
- (void)JFX_delegateDidFinishDownloadingPreviewAssetsForEffect:(id)effect wasCancelled:(BOOL)cancelled error:(id)error;
- (void)JFX_delegateDownloadingPreviewAssetsForEffect:(id)effect progress:(double)progress;
- (void)JFX_delegateUpdateContinousPreviewsForEffectIDs:(id)ds;
- (void)JFX_delegateWillBeginDownloadingPreviewAssetsForEffect:(id)effect;
- (void)JFX_dispatchBlockOnCallbackQueueImmediatelyWhenPossible:(id)possible;
- (void)JFX_loadRenderingResourcesForEffect:(id)effect completion:(id)completion;
- (void)JFX_prepareEffectForContinousPreview:(id)preview;
- (void)JFX_renderPreviewForEffect:(id)effect previewSize:(CGSize)size options:(id)options completion:(id)completion;
- (void)JFX_requestPreviewAssetsForEffect:(id)effect withPriority:(int64_t)priority onlyThumbnailAssetWhenAvailable:(BOOL)available completion:(id)completion;
- (void)JFX_setContinousPreviewEffects:(id)effects;
- (void)JFX_startPreparingPreviewsContinuouslyAtSize:(CGSize)size options:(id)options;
- (void)JFX_stopCachingPreviewsContinuously;
- (void)JFX_updateAssetRequestsPriorityAssociatedWithEffects:(id)effects toPriority:(int64_t)priority;
- (void)JFX_updateAssetRequestsPriorityNotAssociatedWithEffects:(id)effects toPriority:(int64_t)priority;
- (void)cachedPreviewForEffect:(id)effect completion:(id)completion;
- (void)continousPreviewsForEffectIDs:(id)ds completion:(id)completion;
- (void)dealloc;
- (void)preparePreviewForEffect:(id)effect atSize:(CGSize)size options:(id)options completion:(id)completion;
- (void)previewForEffect:(id)effect atSize:(CGSize)size options:(id)options completion:(id)completion;
- (void)purgeCachedPreviewForEffect:(id)effect;
- (void)purgeCachedPreviewsForAllEffects;
- (void)renderRequestComplete:(id)complete results:(id)results completedOutOfOrder:(BOOL)order;
- (void)setContinousPreviewEffects:(id)effects;
- (void)setContinouslyPreviewing:(BOOL)previewing;
- (void)setDefaultPreviewImage:(id)image transformValue:(id)value;
- (void)setDelegate:(id)delegate;
- (void)startPreparingPreviewsContinuouslyAtSize:(CGSize)size options:(id)options;
- (void)stopCachingPreviewsContinuously;
@end

@implementation JFXEffectPreviewManager

- (JFXEffectPreviewManager)initWithName:(id)name callbackQueue:(id)queue
{
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = JFXEffectPreviewManager;
  v7 = [(JFXEffectPreviewManager *)&v28 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_name, name);
    v8->_inDealloc = 0;
    objc_storeStrong(&v8->_callbackQueue, MEMORY[0x277D85CD0]);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);

    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"EffectPreviewManager.%@.previewQ", nameCopy];
    v12 = dispatch_queue_create([nameCopy UTF8String], v10);
    previewQueue = v8->_previewQueue;
    v8->_previewQueue = v12;

    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"EffectPreviewManager.%@.synchronization", nameCopy];
    v15 = dispatch_queue_create([nameCopy2 UTF8String], 0);
    synchronizationQueue = v8->_synchronizationQueue;
    v8->_synchronizationQueue = v15;

    v17 = [[JFXLRUCache alloc] initWithCapacity:20];
    previewCache = v8->_previewCache;
    v8->_previewCache = v17;

    v19 = [[JFXEffectPreviewDiskCache alloc] initWithDirectory:nameCopy];
    previewDiskCache = v8->_previewDiskCache;
    v8->_previewDiskCache = v19;

    v21 = dispatch_semaphore_create(2);
    concurrentStaticPreviewSemaphore = v8->_concurrentStaticPreviewSemaphore;
    v8->_concurrentStaticPreviewSemaphore = v21;

    v23 = objc_opt_new();
    pickerPreviewingToken = v8->_pickerPreviewingToken;
    v8->_pickerPreviewingToken = v23;

    v25 = objc_opt_new();
    effectsPreparingForPreview = v8->_effectsPreparingForPreview;
    v8->_effectsPreparingForPreview = v25;

    if (initWithName_callbackQueue__onceToken != -1)
    {
      [JFXEffectPreviewManager initWithName:callbackQueue:];
    }
  }

  return v8;
}

uint64_t __54__JFXEffectPreviewManager_initWithName_callbackQueue___block_invoke()
{
  v0 = objc_opt_new();
  v1 = s_renderResourceLoadingOperationsQueue;
  s_renderResourceLoadingOperationsQueue = v0;

  [s_renderResourceLoadingOperationsQueue setMaxConcurrentOperationCount:2];
  [s_renderResourceLoadingOperationsQueue setQualityOfService:25];
  v2 = s_renderResourceLoadingOperationsQueue;

  return [v2 setName:@"renderResourceLoadingOperationsQueue"];
}

- (void)dealloc
{
  self->_inDealloc = 1;
  [(JFXEffectPreviewManager *)self JFX_stopCachingPreviewsContinuously];
  [(JFXEffectPreviewManager *)self JFX_cancelAssetRequestForAllEffects];
  v3.receiver = self;
  v3.super_class = JFXEffectPreviewManager;
  [(JFXEffectPreviewManager *)&v3 dealloc];
}

- (void)JFX_dispatchBlockOnCallbackQueueImmediatelyWhenPossible:(id)possible
{
  block = possible;
  callbackQueue = [(JFXEffectPreviewManager *)self callbackQueue];
  label = dispatch_queue_get_label(callbackQueue);
  v6 = dispatch_queue_get_label(0);

  if (label == v6)
  {
    block[2]();
  }

  else
  {
    callbackQueue2 = [(JFXEffectPreviewManager *)self callbackQueue];
    dispatch_async(callbackQueue2, block);
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__JFXEffectPreviewManager_setDelegate___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(synchronizationQueue, v7);
}

uint64_t __39__JFXEffectPreviewManager_setDelegate___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 80), *(a1 + 40));
  *(*(a1 + 32) + 8) = objc_opt_respondsToSelector() & 1;
  *(*(a1 + 32) + 9) = objc_opt_respondsToSelector() & 1;
  *(*(a1 + 32) + 10) = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 11) = result & 1;
  return result;
}

- (JFXEffectPreviewManagerDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__JFXEffectPreviewManager_delegate__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__JFXEffectPreviewManager_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (void)JFX_delegateUpdateContinousPreviewsForEffectIDs:(id)ds
{
  dsCopy = ds;
  objc_initWeak(&location, self);
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__JFXEffectPreviewManager_JFX_delegateUpdateContinousPreviewsForEffectIDs___block_invoke;
  v7[3] = &unk_278D7C140;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_sync(synchronizationQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __75__JFXEffectPreviewManager_JFX_delegateUpdateContinousPreviewsForEffectIDs___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(*(a1 + 32) + 8) == 1)
  {
    v4 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__JFXEffectPreviewManager_JFX_delegateUpdateContinousPreviewsForEffectIDs___block_invoke_2;
    block[3] = &unk_278D7A600;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v3;
    v7 = v5;
    dispatch_async(v4, block);
  }
}

void __75__JFXEffectPreviewManager_JFX_delegateUpdateContinousPreviewsForEffectIDs___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  [WeakRetained effectPreviewManager:a1[5] didUpdateContinousPreviewsForEffectIDs:a1[6]];
}

- (void)JFX_delegateWillBeginDownloadingPreviewAssetsForEffect:(id)effect
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__JFXEffectPreviewManager_JFX_delegateWillBeginDownloadingPreviewAssetsForEffect___block_invoke;
  v7[3] = &unk_278D7C140;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = effectCopy;
  v6 = effectCopy;
  dispatch_sync(synchronizationQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82__JFXEffectPreviewManager_JFX_delegateWillBeginDownloadingPreviewAssetsForEffect___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(*(a1 + 32) + 9) == 1)
  {
    v4 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__JFXEffectPreviewManager_JFX_delegateWillBeginDownloadingPreviewAssetsForEffect___block_invoke_2;
    block[3] = &unk_278D7A600;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v3;
    v7 = v5;
    dispatch_async(v4, block);
  }
}

void __82__JFXEffectPreviewManager_JFX_delegateWillBeginDownloadingPreviewAssetsForEffect___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  [WeakRetained effectPreviewManager:a1[5] willBeginDownloadingPreviewAssetsForEffect:a1[6]];
}

- (void)JFX_delegateDownloadingPreviewAssetsForEffect:(id)effect progress:(double)progress
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__JFXEffectPreviewManager_JFX_delegateDownloadingPreviewAssetsForEffect_progress___block_invoke;
  block[3] = &unk_278D7CDA8;
  objc_copyWeak(v11, &location);
  block[4] = self;
  v10 = effectCopy;
  v11[1] = *&progress;
  v8 = effectCopy;
  dispatch_sync(synchronizationQueue, block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __82__JFXEffectPreviewManager_JFX_delegateDownloadingPreviewAssetsForEffect_progress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(*(a1 + 32) + 10) == 1)
  {
    v4 = [WeakRetained callbackQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__JFXEffectPreviewManager_JFX_delegateDownloadingPreviewAssetsForEffect_progress___block_invoke_2;
    v6[3] = &unk_278D79CF8;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v6[5] = v3;
    v7 = v5;
    v8 = *(a1 + 56);
    dispatch_async(v4, v6);
  }
}

void __82__JFXEffectPreviewManager_JFX_delegateDownloadingPreviewAssetsForEffect_progress___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained effectPreviewManager:*(a1 + 40) downloadingPreviewAssetsForEffect:*(a1 + 48) progress:*(a1 + 56)];
}

- (void)JFX_delegateDidFinishDownloadingPreviewAssetsForEffect:(id)effect wasCancelled:(BOOL)cancelled error:(id)error
{
  effectCopy = effect;
  errorCopy = error;
  objc_initWeak(&location, self);
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__JFXEffectPreviewManager_JFX_delegateDidFinishDownloadingPreviewAssetsForEffect_wasCancelled_error___block_invoke;
  v13[3] = &unk_278D7CDF8;
  objc_copyWeak(&v16, &location);
  v13[4] = self;
  v14 = effectCopy;
  cancelledCopy = cancelled;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = effectCopy;
  dispatch_sync(synchronizationQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __101__JFXEffectPreviewManager_JFX_delegateDidFinishDownloadingPreviewAssetsForEffect_wasCancelled_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && *(*(a1 + 32) + 11) == 1)
  {
    v4 = [WeakRetained callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__JFXEffectPreviewManager_JFX_delegateDidFinishDownloadingPreviewAssetsForEffect_wasCancelled_error___block_invoke_2;
    block[3] = &unk_278D7CDD0;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v3;
    v7 = v5;
    v9 = *(a1 + 64);
    v8 = *(a1 + 48);
    dispatch_async(v4, block);
  }
}

void __101__JFXEffectPreviewManager_JFX_delegateDidFinishDownloadingPreviewAssetsForEffect_wasCancelled_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained effectPreviewManager:*(a1 + 40) didFinishDownloadingPreviewAssetsForEffect:*(a1 + 48) wasCancelled:*(a1 + 64) error:*(a1 + 56)];
}

- (void)setContinousPreviewEffects:(id)effects
{
  effectsCopy = effects;
  objc_initWeak(&location, self);
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__JFXEffectPreviewManager_setContinousPreviewEffects___block_invoke;
  block[3] = &unk_278D7B3F0;
  objc_copyWeak(&v9, &location);
  v8 = effectsCopy;
  v6 = effectsCopy;
  dispatch_async(previewQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__JFXEffectPreviewManager_setContinousPreviewEffects___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained JFX_setContinousPreviewEffects:*(a1 + 32)];
}

- (void)JFX_setContinousPreviewEffects:(id)effects
{
  v21 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  [(JFXEffectPreviewManager *)self setCurrentContinousPreviewEffects:effectsCopy];
  continousPreviewOptions = [(JFXEffectPreviewManager *)self continousPreviewOptions];
  effectsToApplyToBackground = [continousPreviewOptions effectsToApplyToBackground];

  if ([effectsToApplyToBackground count])
  {
    firstObject = [effectsToApplyToBackground firstObject];
    v9 = [firstObject isNone] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = effectsCopy;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if ((v9 & 1) != 0 || ([*(*(&v16 + 1) + 8 * v14) isNone] & 1) == 0)
        {
          [(JFXEffectPreviewManager *)self JFX_prepareEffectForContinousPreview:v15, v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(JFXEffectPreviewManager *)self JFX_updateAssetRequestsPriorityAssociatedWithEffects:v10 toPriority:1];
  [(JFXEffectPreviewManager *)self JFX_updateAssetRequestsPriorityNotAssociatedWithEffects:v10 toPriority:3];
}

- (NSSet)continousPreviewEffects
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__JFXEffectPreviewManager_continousPreviewEffects__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(previewQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __50__JFXEffectPreviewManager_continousPreviewEffects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentContinousPreviewEffects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (BOOL)isContinouslyPreviewing
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__JFXEffectPreviewManager_isContinouslyPreviewing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(synchronizationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setContinouslyPreviewing:(BOOL)previewing
{
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__JFXEffectPreviewManager_setContinouslyPreviewing___block_invoke;
  v6[3] = &unk_278D79E38;
  v6[4] = self;
  previewingCopy = previewing;
  dispatch_sync(synchronizationQueue, v6);
}

- (void)setDefaultPreviewImage:(id)image transformValue:(id)value
{
  imageCopy = image;
  valueCopy = value;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__JFXEffectPreviewManager_setDefaultPreviewImage_transformValue___block_invoke;
  block[3] = &unk_278D7A600;
  block[4] = self;
  v12 = imageCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = imageCopy;
  dispatch_sync(synchronizationQueue, block);
}

void __65__JFXEffectPreviewManager_setDefaultPreviewImage_transformValue___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 96);

  objc_storeStrong(v3, v2);
}

- (id)defaultPreviewImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__JFXEffectPreviewManager_defaultPreviewImage__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)defaultPreviewImageDisplayTransformValue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24;
  v11 = __Block_byref_object_dispose__24;
  v12 = 0;
  synchronizationQueue = [(JFXEffectPreviewManager *)self synchronizationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__JFXEffectPreviewManager_defaultPreviewImageDisplayTransformValue__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(synchronizationQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)JFX_loadRenderingResourcesForEffect:(id)effect completion:(id)completion
{
  effectCopy = effect;
  completionCopy = completion;
  if ([effectCopy renderEffectResourcesAreReady])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    v7 = MEMORY[0x277CCA8C8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__JFXEffectPreviewManager_JFX_loadRenderingResourcesForEffect_completion___block_invoke;
    v9[3] = &unk_278D79D20;
    v10 = effectCopy;
    v8 = [v7 blockOperationWithBlock:v9];
    [v8 setCompletionBlock:completionCopy];
    [s_renderResourceLoadingOperationsQueue addOperation:v8];
  }
}

- (void)JFX_configureCommonRenderingPropertiesForEffect:(id)effect forPreviewSize:(CGSize)size withPreviewOptions:(id)options
{
  height = size.height;
  width = size.width;
  effectCopy = effect;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  [effectCopy setRenderSize:{width, height}];
}

- (void)JFX_requestPreviewAssetsForEffect:(id)effect withPriority:(int64_t)priority onlyThumbnailAssetWhenAvailable:(BOOL)available completion:(id)completion
{
  availableCopy = available;
  v42 = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  completionCopy = completion;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  if ([effectCopy arePreviewingAssetsLocal])
  {
    v13 = objc_opt_new();
    [v13 setContentType:1];
    [v13 setUsageMode:1];
    [v13 setFilteringMode:1];
    [effectCopy localAssetsWithFilteringOptions:v13];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v14 = v38 = 0u;
    localURL = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (localURL)
    {
      v16 = *v38;
      while (2)
      {
        for (i = 0; i != localURL; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          attributes = [v18 attributes];
          if ([attributes contentType] == 1 && objc_msgSend(attributes, "usageMode") == 1)
          {
            localURL = [v18 localURL];

            goto LABEL_16;
          }
        }

        localURL = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (localURL)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    (*(completionCopy + 2))(completionCopy, 0, localURL, 0);
  }

  else
  {
    assetRequestsForPreviewEffects = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];

    if (!assetRequestsForPreviewEffects)
    {
      v21 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
      [(JFXEffectPreviewManager *)self setAssetRequestsForPreviewEffects:v21];
    }

    [(JFXEffectPreviewManager *)self JFX_delegateWillBeginDownloadingPreviewAssetsForEffect:effectCopy];
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke;
    v33[3] = &unk_278D7CE20;
    objc_copyWeak(&v35, &location);
    v22 = effectCopy;
    v34 = v22;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke_2;
    v29 = &unk_278D7CE70;
    objc_copyWeak(&v32, &location);
    v31 = completionCopy;
    v23 = v22;
    v30 = v23;
    v24 = [v23 requestPreviewingAssetsWithPriority:priority onlyThumbnailAssetWhenAvailable:availableCopy progressHandler:v33 completionHandler:&v26];
    v25 = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects:v26];
    [v25 setObject:v24 forKey:v23];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }
}

void __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained JFX_delegateDownloadingPreviewAssetsForEffect:*(a1 + 32) progress:a2];
}

void __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke_2(id *a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    v10 = [WeakRetained previewQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke_3;
    block[3] = &unk_278D7CE48;
    objc_copyWeak(&v16, &location);
    v12 = a1[4];
    v17 = a3;
    v15 = a1[5];
    v13 = v8;
    v14 = v7;
    dispatch_async(v10, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __117__JFXEffectPreviewManager_JFX_requestPreviewAssetsForEffect_withPriority_onlyThumbnailAssetWhenAvailable_completion___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained assetRequestsForPreviewEffects];
    [v4 removeObjectForKey:*(a1 + 32)];

    if (*(a1 + 72) == 1)
    {
      v5 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (!*(a1 + 40))
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v6 = *(a1 + 48);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          v8 = *v13;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v13 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v12 + 1) + 8 * i);
              v11 = [v10 attributes];
              if ([v11 contentType] == 1 && objc_msgSend(v11, "usageMode") == 1)
              {
                v7 = [v10 localURL];

                goto LABEL_20;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        (*(*(a1 + 56) + 16))();
        goto LABEL_7;
      }

      v5 = *(*(a1 + 56) + 16);
    }

    v5();
LABEL_7:
    [v3 JFX_delegateDidFinishDownloadingPreviewAssetsForEffect:*(a1 + 32) wasCancelled:*(a1 + 72) error:{*(a1 + 40), v12}];
  }
}

- (void)JFX_updateAssetRequestsPriorityAssociatedWithEffects:(id)effects toPriority:(int64_t)priority
{
  v19 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [effectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(effectsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        assetRequestsForPreviewEffects = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
        v13 = [assetRequestsForPreviewEffects objectForKey:v11];

        if (v13)
        {
          [v11 updatePriorityForAssetRequest:v13 newPriority:priority];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [effectsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)JFX_updateAssetRequestsPriorityNotAssociatedWithEffects:(id)effects toPriority:(int64_t)priority
{
  v27 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  assetRequestsForPreviewEffects = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
  v9 = [assetRequestsForPreviewEffects count];

  if (v9)
  {
    v10 = MEMORY[0x277CBEB58];
    assetRequestsForPreviewEffects2 = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
    v12 = NSAllMapTableKeys(assetRequestsForPreviewEffects2);
    v13 = [v10 setWithArray:v12];

    [v13 minusSet:effectsCopy];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          assetRequestsForPreviewEffects3 = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
          v21 = [assetRequestsForPreviewEffects3 objectForKey:v19];

          [v19 updatePriorityForAssetRequest:v21 newPriority:priority];
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }
  }
}

- (void)JFX_cancelAssetRequestForAllEffects
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_inDealloc)
  {
    previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
    dispatch_assert_queue_V2(previewQueue);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetRequestsForPreviewEffects = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
  v5 = [assetRequestsForPreviewEffects countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(assetRequestsForPreviewEffects);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        assetRequestsForPreviewEffects2 = [(JFXEffectPreviewManager *)self assetRequestsForPreviewEffects];
        v11 = [assetRequestsForPreviewEffects2 objectForKey:v9];

        [v9 cancelAssetRequest:v11];
        ++v8;
      }

      while (v6 != v8);
      v6 = [assetRequestsForPreviewEffects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(JFXEffectPreviewManager *)self setAssetRequestsForPreviewEffects:0];
}

- (void)startPreparingPreviewsContinuouslyAtSize:(CGSize)size options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  if (![(JFXEffectPreviewManager *)self isContinouslyPreviewing])
  {
    [(JFXEffectPreviewManager *)self setContinouslyPreviewing:1];
    objc_initWeak(&location, self);
    previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__JFXEffectPreviewManager_startPreparingPreviewsContinuouslyAtSize_options___block_invoke;
    block[3] = &unk_278D7CE98;
    objc_copyWeak(v11, &location);
    v11[1] = *&width;
    v11[2] = *&height;
    v10 = optionsCopy;
    dispatch_async(previewQueue, block);

    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __76__JFXEffectPreviewManager_startPreparingPreviewsContinuouslyAtSize_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained JFX_startPreparingPreviewsContinuouslyAtSize:*(a1 + 32) options:{*(a1 + 48), *(a1 + 56)}];
}

- (void)JFX_startPreparingPreviewsContinuouslyAtSize:(CGSize)size options:(id)options
{
  height = size.height;
  width = size.width;
  v62[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  previewCache = [(JFXEffectPreviewManager *)self previewCache];
  [previewCache setCapacity:0];

  [(JFXEffectPreviewManager *)self setContinousPreviewSize:width, height];
  v10 = [optionsCopy copy];
  [(JFXEffectPreviewManager *)self setContinousPreviewOptions:v10];

  v61 = *MEMORY[0x277D41AC0];
  continousPreviewOptions = [(JFXEffectPreviewManager *)self continousPreviewOptions];
  outputColorSpace = [continousPreviewOptions outputColorSpace];
  v62[0] = outputColorSpace;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];

  v14 = [objc_alloc(MEMORY[0x277D41660]) initWithOptions:v13 delegate:self];
  [(JFXEffectPreviewManager *)self setContinousPreviewPlayer:v14];

  continousPreviewPlayer = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
  continousPreviewOptions2 = [(JFXEffectPreviewManager *)self continousPreviewOptions];
  [continousPreviewPlayer setQueueSize:{objc_msgSend(continousPreviewOptions2, "maxFramesRenderedAtATime")}];

  continousPreviewPlayer2 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
  v18 = MEMORY[0x277CCACA8];
  name = [(JFXEffectPreviewManager *)self name];
  v20 = [v18 stringWithFormat:@"PreviewManagerPVPlayer_%@", name];
  [continousPreviewPlayer2 setName:v20];

  continousPreviewOptions3 = [(JFXEffectPreviewManager *)self continousPreviewOptions];
  LOBYTE(name) = [continousPreviewOptions3 parentCode] == -1;

  if ((name & 1) == 0)
  {
    continousPreviewOptions4 = [(JFXEffectPreviewManager *)self continousPreviewOptions];
    parentCode = [continousPreviewOptions4 parentCode];
    continousPreviewPlayer3 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer3 setParentCode:parentCode];
  }

  v25 = objc_opt_new();
  [(JFXEffectPreviewManager *)self setPreparedContinousPreviewEffects:v25];

  backgroundType = [optionsCopy backgroundType];
  if (!backgroundType)
  {
    pickerSource = optionsCopy;
    v41 = [objc_alloc(MEMORY[0x277D41668]) initWithCADisplayLinkFPS:{objc_msgSend(pickerSource, "preferredUpdatesPerSecond")}];
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__JFXEffectPreviewManager_JFX_startPreparingPreviewsContinuouslyAtSize_options___block_invoke;
    block[3] = &unk_278D7B3F0;
    objc_copyWeak(&v59, &location);
    v31 = v41;
    v58 = v31;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v42 = objc_alloc_init(MEMORY[0x277D41688]);
    v43 = CreatePVLPThrottlingControlParameters();
    [v42 setThermalLevel:0 controlParameters:v43];

    v44 = CreatePVLPThrottlingControlParameters();
    [v42 setThermalLevel:10 controlParameters:v44];

    v45 = CreatePVLPThrottlingControlParameters();
    [v42 setThermalLevel:20 controlParameters:v45];

    v46 = CreatePVLPThrottlingControlParameters();
    [v42 setThermalLevel:30 controlParameters:v46];

    continousPreviewPlayer4 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer4 setThermalThrottlingPolicy:v42];

    backgroundImage = [pickerSource backgroundImage];
    v49 = backgroundImage;
    if (backgroundImage)
    {
      v50 = backgroundImage;
    }

    else
    {
      v50 = [objc_opt_class() JFX_createTransparentEmptyImageForPreviewSize:{width, height}];
    }

    v51 = v50;

    v52 = objc_alloc(MEMORY[0x277D41680]);
    pvImageBuffer = [v51 pvImageBuffer];
    v54 = [v52 initWithPVImageBuffer:pvImageBuffer];

    [(JFXEffectPreviewManager *)self setDefaultPreviewImage:v51 transformValue:0];
    continousPreviewPlayer5 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer5 setSource:v54 inputID:0];

    continousPreviewPlayer6 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer6 start];

    objc_destroyWeak(&v59);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  if (backgroundType == 1)
  {
    v27 = +[JFXPickerCameraSource sharedInstance];
    pickerPreviewingToken = [(JFXEffectPreviewManager *)self pickerPreviewingToken];
    [v27 registerPickerAsPreviewingWithObject:pickerPreviewingToken];

    v29 = +[JFXPickerCameraSource sharedInstance];
    pickerSource = [v29 pickerSource];

    v31 = [objc_alloc(MEMORY[0x277D41670]) initWithPlayerCameraSource:pickerSource];
    continousPreviewPlayer7 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer7 setSource:pickerSource inputID:0];

    continousPreviewPlayer8 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer8 setRenderLink:v31];

    v34 = objc_alloc_init(MEMORY[0x277D41688]);
    v35 = CreatePVLPThrottlingControlParameters();
    [v34 setThermalLevel:0 controlParameters:v35];

    v36 = CreatePVLPThrottlingControlParameters();
    [v34 setThermalLevel:10 controlParameters:v36];

    v37 = CreatePVLPThrottlingControlParameters();
    [v34 setThermalLevel:20 controlParameters:v37];

    v38 = CreatePVLPThrottlingControlParameters();
    [v34 setThermalLevel:30 controlParameters:v38];

    continousPreviewPlayer9 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer9 setThermalThrottlingPolicy:v34];

    continousPreviewPlayer10 = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer10 start];

LABEL_10:
  }
}

void __80__JFXEffectPreviewManager_JFX_startPreparingPreviewsContinuouslyAtSize_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained continousPreviewPlayer];
  [v2 setRenderLink:*(a1 + 32)];
}

+ (id)JFX_createTransparentEmptyImageForPreviewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  [defaultFormat setOpaque:0];
  [defaultFormat setPreferredRange:2];
  [defaultFormat setScale:1.0];
  v6 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:defaultFormat format:{0.0, 0.0, width, height}];
  v7 = [v6 imageWithActions:&__block_literal_global_69_1];
  v8 = [JTImage jtImageWithUIImage:v7];

  return v8;
}

- (void)JFX_prepareEffectForContinousPreview:(id)preview
{
  previewCopy = preview;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  preparedContinousPreviewEffects = [(JFXEffectPreviewManager *)self preparedContinousPreviewEffects];
  if ([preparedContinousPreviewEffects containsObject:previewCopy])
  {
  }

  else
  {
    effectsPreparingForPreview = [(JFXEffectPreviewManager *)self effectsPreparingForPreview];
    v8 = [effectsPreparingForPreview containsObject:previewCopy];

    if ((v8 & 1) == 0)
    {
      effectsPreparingForPreview2 = [(JFXEffectPreviewManager *)self effectsPreparingForPreview];
      [effectsPreparingForPreview2 addObject:previewCopy];

      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke;
      v17[3] = &unk_278D7B3F0;
      objc_copyWeak(&v19, &location);
      v10 = previewCopy;
      v18 = v10;
      v11 = MEMORY[0x245D22230](v17);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_2;
      v13[3] = &unk_278D7CF08;
      objc_copyWeak(&v16, &location);
      v12 = v11;
      v15 = v12;
      v14 = v10;
      [(JFXEffectPreviewManager *)self JFX_requestPreviewAssetsForEffect:v14 withPriority:1 onlyThumbnailAssetWhenAvailable:0 completion:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }
}

void __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained effectsPreparingForPreview];
  [v2 removeObject:*(a1 + 32)];
}

void __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_2(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v10 = WeakRetained;
  if (WeakRetained && ([WeakRetained isContinouslyPreviewing] & 1) != 0 && (objc_msgSend(v10, "previewQueue"), v11 = objc_claimAutoreleasedReturnValue(), dispatch_assert_queue_V2(v11), v11, !a2))
  {
    v12 = a1[4];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_3;
    v13[3] = &unk_278D7CEE0;
    objc_copyWeak(&v16, a1 + 6);
    v15 = a1[5];
    v14 = a1[4];
    [v10 JFX_loadRenderingResourcesForEffect:v12 completion:v13];

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained previewQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_4;
    block[3] = &unk_278D7CEE0;
    objc_copyWeak(&v8, a1 + 6);
    v7 = a1[5];
    v6 = a1[4];
    dispatch_async(v4, block);

    objc_destroyWeak(&v8);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __64__JFXEffectPreviewManager_JFX_prepareEffectForContinousPreview___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isContinouslyPreviewing] & 1) != 0)
  {
    v4 = [v3 continousPreviewOptions];
    v5 = v4;
    memset(&v19, 0, sizeof(v19));
    if (v4)
    {
      [v4 effectAnimationDuration];
    }

    memset(&v18, 0, sizeof(v18));
    *&v15.start.value = *MEMORY[0x277CC08F0];
    v15.start.epoch = *(MEMORY[0x277CC08F0] + 16);
    duration = v19;
    CMTimeRangeMake(&v18, &v15.start, &duration);
    v6 = v19.flags & 1;
    [*(a1 + 32) setForceRenderAtPosterFrame:(v19.flags & 1) == 0];
    [*(a1 + 32) setBuildInAnimation:v6];
    v16 = v18;
    v7 = [*(a1 + 32) renderEffect];
    v15 = v16;
    [v7 setEffectRange:&v15];

    [v3 continousPreviewSize];
    v9 = v8;
    v11 = v10;
    [v3 JFX_configureCommonRenderingPropertiesForEffect:*(a1 + 32) forPreviewSize:v5 withPreviewOptions:?];
    v12 = [v5 renderPropertiesConfigurationBlock];

    if (v12)
    {
      v13 = [v5 renderPropertiesConfigurationBlock];
      v13[2](v13, *(a1 + 32), v9, v11);
    }

    v14 = [v3 preparedContinousPreviewEffects];
    [v14 addObject:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)continousPreviewsForEffectIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (continousPreviewsForEffectIDs_completion__onceToken != -1)
  {
    [JFXEffectPreviewManager continousPreviewsForEffectIDs:completion:];
  }

  previewCache = [(JFXEffectPreviewManager *)self previewCache];
  v7 = [previewCache objectsForKeys:dsCopy notFoundMarker:continousPreviewsForEffectIDs_completion__s_missingImageMarker];

  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v8];
  v10 = 0;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = [v7 objectAtIndexedSubscript:v11];
      v14 = [dsCopy objectAtIndexedSubscript:v11];
      if (v13 == continousPreviewsForEffectIDs_completion__s_missingImageMarker)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_7;
      }

LABEL_8:

      if (v8 == ++v11)
      {
        goto LABEL_14;
      }
    }

    if ((v12 & 1) == 0)
    {
      defaultPreviewImage = [(JFXEffectPreviewManager *)self defaultPreviewImage];

      v10 = defaultPreviewImage;
    }

    v10 = v10;

    v12 = 1;
    v13 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    [v9 setObject:v13 forKey:v14];
    goto LABEL_8;
  }

LABEL_14:
  callbackQueue = [(JFXEffectPreviewManager *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__JFXEffectPreviewManager_continousPreviewsForEffectIDs_completion___block_invoke_2;
  block[3] = &unk_278D7ACB0;
  v23 = v9;
  v24 = v20;
  v17 = v9;
  v18 = v20;
  dispatch_async(callbackQueue, block);
}

uint64_t __68__JFXEffectPreviewManager_continousPreviewsForEffectIDs_completion___block_invoke()
{
  v0 = objc_alloc_init(JTImage);
  v1 = continousPreviewsForEffectIDs_completion__s_missingImageMarker;
  continousPreviewsForEffectIDs_completion__s_missingImageMarker = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)stopCachingPreviewsContinuously
{
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__JFXEffectPreviewManager_stopCachingPreviewsContinuously__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(previewQueue, block);
}

- (void)JFX_stopCachingPreviewsContinuously
{
  if (!self->_inDealloc)
  {
    previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
    dispatch_assert_queue_V2(previewQueue);
  }

  if ([(JFXEffectPreviewManager *)self isContinouslyPreviewing])
  {
    [(JFXEffectPreviewManager *)self setContinouslyPreviewing:0];
    v4 = +[JFXPickerCameraSource sharedInstance];
    pickerPreviewingToken = [(JFXEffectPreviewManager *)self pickerPreviewingToken];
    [v4 unregisterPickerAsPreviewingWithObject:pickerPreviewingToken];

    previewCache = [(JFXEffectPreviewManager *)self previewCache];
    [previewCache setCapacity:20];

    continousPreviewPlayer = [(JFXEffectPreviewManager *)self continousPreviewPlayer];
    [continousPreviewPlayer shutdown];

    [(JFXEffectPreviewManager *)self setContinousPreviewPlayer:0];
    [(JFXEffectPreviewManager *)self setContinousPreviewOptions:0];
    [(JFXEffectPreviewManager *)self setDefaultPreviewImage:0 transformValue:0];
    [(JFXEffectPreviewManager *)self setPreparedContinousPreviewEffects:0];

    [(JFXEffectPreviewManager *)self JFX_cancelAssetRequestForAllEffects];
  }
}

- (BOOL)JFX_rendersDefaultContinousPreviewImage
{
  continousPreviewOptions = [(JFXEffectPreviewManager *)self continousPreviewOptions];
  v3 = [continousPreviewOptions backgroundType] == 1;

  return v3;
}

- (id)buildRenderRequest:(id)request time:(id *)time
{
  requestCopy = request;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__JFXEffectPreviewManager_buildRenderRequest_time___block_invoke;
  v11[3] = &unk_278D7C190;
  v14 = *time;
  v11[4] = self;
  v12 = requestCopy;
  v13 = &v15;
  v8 = requestCopy;
  dispatch_sync(previewQueue, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __51__JFXEffectPreviewManager_buildRenderRequest_time___block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v85 = *(a1 + 56);
  v86 = *(a1 + 72);
  v83 = 0uLL;
  v84 = 0;
  v2 = [*(a1 + 32) continousPreviewOptions];
  v3 = v2;
  if (v2)
  {
    [v2 effectAnimationDuration];
  }

  else
  {
    v83 = 0uLL;
    v84 = 0;
  }

  v4 = [*(a1 + 32) continousPreviewOptions];
  if ([v4 loopAnimation] && (BYTE12(v83) & 0x11) == 1)
  {
    *time1 = *(a1 + 56);
    *&time1[16] = *(a1 + 72);
    *time2 = v83;
    *&time2[16] = v84;
    v5 = CMTimeCompare(time1, time2);

    if (v5 >= 1)
    {
      v6 = [*(a1 + 32) continousPreviewPlayer];
      [v6 resetRenderTime];

      v85 = *MEMORY[0x277CC08F0];
      v86 = *(MEMORY[0x277CC08F0] + 16);
    }
  }

  else
  {
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:&unk_28556D710];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 colorImageBuffer];
    [*(a1 + 32) continousPreviewSize];
    v11 = v10;
    v13 = v12;
    v14 = [*(a1 + 32) continousPreviewOptions];
    v73 = [v14 effectsToApplyToBackground];

    v15 = *(MEMORY[0x277CBF2C0] + 16);
    *time1 = *MEMORY[0x277CBF2C0];
    *&time1[16] = v15;
    v82 = *(MEMORY[0x277CBF2C0] + 32);
    v16 = [*(a1 + 32) continousPreviewOptions];
    v72 = v8;
    if ([v16 backgroundType] == 1)
    {
      v17 = [*(a1 + 32) continousPreviewOptions];
      v18 = [v17 rotateCameraFrameToInterfaceOrientation];

      if (v18)
      {
        v19 = +[JFXVideoCameraController sharedInstance];
        v20 = [v19 cameraPosition];

        v21 = +[JFXVideoCameraController sharedInstance];
        v22 = [v21 captureVideoOrientation];

        v23 = +[JFXOrientationMonitor interfaceOrientation];
        [v9 size];
        [JFXRotationTransforms transformFromTopLeftCaptureDevicePivotPosition:v20 captureVideoOrientation:v22 toInterfaceOrientation:v23 size:?];
      }
    }

    else
    {
    }

    v26 = [MEMORY[0x277D415E0] jfx_getColorSpaceFromImageBuffer:v9];
    if ([*(a1 + 32) JFX_rendersDefaultContinousPreviewImage])
    {
      if ([v73 count] && (objc_msgSend(v73, "firstObject"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isNone"), v27, !v28) || (objc_msgSend(v26, "isHDRSpace") & 1) != 0)
      {
        v29 = [JFXEffectsPreviewGenerationRequest alloc];
        *time2 = kDefaultEffectPreviewRenderTime;
        *&time2[16] = 0;
        v30 = [(JFXEffectsPreviewGenerationRequest *)v29 initWithInput:v9 effectStack:v73 outputSize:time2 renderTime:v11, v13];
        v31 = [*(a1 + 32) continousPreviewOptions];
        v32 = [v31 parentCode];

        if (v32 != -1)
        {
          v33 = [*(a1 + 32) continousPreviewOptions];
          -[JTImage setParentCode:](v30, "setParentCode:", [v33 parentCode]);
        }

        *time2 = *time1;
        *&time2[16] = *&time1[16];
        v80 = v82;
        [(JTImage *)v30 setUserSourceTransform:time2];
        [(JTImage *)v30 centerAnimationInfo];
        v34 = [*(a1 + 32) continousPreviewOptions];
        -[JTImage setHighQuality:](v30, "setHighQuality:", [v34 quality] == 2);

        -[JTImage setPriority:](v30, "setPriority:", [*(a1 + 32) JFX_lowPriorityScheduling] ^ 1);
        v35 = [*(a1 + 32) staticPreviewGenerator];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __51__JFXEffectPreviewManager_buildRenderRequest_time___block_invoke_2;
        v78[3] = &unk_278D7B490;
        v78[4] = *(a1 + 32);
        [v35 generatePreviewRequest:v30 completionHandler:v78];
      }

      else
      {
        v36 = *(a1 + 32);
        v30 = [[JTImage alloc] initWithPVImage:v9];
        *time2 = *time1;
        *&time2[16] = *&time1[16];
        v80 = v82;
        v37 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:time2];
        [v36 setDefaultPreviewImage:v30 transformValue:v37];
      }
    }

    v71 = v9;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v38 = [*(a1 + 32) currentContinousPreviewEffects];
    v39 = [v38 countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v75;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v75 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v74 + 1) + 8 * i);
          if ([v43 type] == 1)
          {
            v44 = [*(a1 + 32) delegate];
            v45 = objc_opt_respondsToSelector();

            if (v45)
            {
              v46 = [*(a1 + 32) delegate];
              v47 = [v46 previewIsHDR];
            }

            else
            {
              v47 = 0;
            }

            [v43 setHDR:{(objc_msgSend(v26, "isHDRSpace") | v47) & 1}];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v40);
    }

    v48 = MEMORY[0x277CBEB58];
    v49 = [*(a1 + 32) currentContinousPreviewEffects];
    v50 = [v49 allObjects];
    v51 = [v48 setWithArray:v50];

    v52 = MEMORY[0x277CBEB98];
    v53 = [*(a1 + 32) preparedContinousPreviewEffects];
    v54 = [v53 allObjects];
    v55 = [v52 setWithArray:v54];

    [v51 intersectSet:v55];
    v56 = [JFXEffectsPreviewGenerationRequest alloc];
    *time2 = v85;
    *&time2[16] = v86;
    v25 = v71;
    v57 = [(JFXEffectsPreviewGenerationRequest *)v56 initWithInput:v71 effectStack:v73 outputSize:time2 renderTime:v11, v13];
    v58 = [*(a1 + 32) continousPreviewOptions];
    v59 = [v58 backgroundType];

    if (v59 == 1)
    {
      *time2 = *time1;
      *&time2[16] = *&time1[16];
      v80 = v82;
      [(JFXEffectsPreviewGenerationRequest *)v57 setUserSourceTransform:time2];
    }

    [(JFXEffectsPreviewGenerationRequest *)v57 centerAnimationInfo];
    v60 = [*(a1 + 32) continousPreviewOptions];
    v61 = [v60 parentCode];

    if (v61 != -1)
    {
      v62 = [*(a1 + 32) continousPreviewOptions];
      -[JFXEffectsPreviewGenerationRequest setParentCode:](v57, "setParentCode:", [v62 parentCode]);
    }

    v63 = [*(a1 + 32) continousPreviewOptions];
    -[JFXEffectsPreviewGenerationRequest setHighQuality:](v57, "setHighQuality:", [v63 quality] == 2);

    -[JFXEffectsPreviewGenerationRequest setPriority:](v57, "setPriority:", [*(a1 + 32) JFX_lowPriorityScheduling] ^ 1);
    v64 = [v51 allObjects];
    [(JFXEffectsPreviewGenerationRequest *)v57 setPickerPreviewEffectList:v64];

    v65 = [[JFXEffectsPreviewRequestHandler alloc] initWithRequest:v57];
    v66 = [*(a1 + 32) continousPreviewOptions];
    v67 = [v66 outputColorSpace];

    v68 = [(JFXEffectsPreviewRequestHandler *)v65 buildPVRenderRequestWithOutputColorSpace:v67];
    v69 = *(*(a1 + 48) + 8);
    v70 = *(v69 + 40);
    *(v69 + 40) = v68;

    [*(*(*(a1 + 48) + 8) + 40) setUserContext:v65];
    v8 = v72;
  }

  else
  {
    v24 = *(*(a1 + 48) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;
  }
}

void __51__JFXEffectPreviewManager_buildRenderRequest_time___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectEnumerator];
  v6 = [v3 nextObject];

  v4 = *(a1 + 32);
  v5 = [[JTImage alloc] initWithPVImage:v6];
  [v4 setDefaultPreviewImage:v5 transformValue:0];
}

- (void)renderRequestComplete:(id)complete results:(id)results completedOutOfOrder:(BOOL)order
{
  v33 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  resultsCopy = results;
  v9 = resultsCopy;
  if (!order && [resultsCopy count])
  {
    previewCache = [(JFXEffectPreviewManager *)self previewCache];
    [previewCache removeAllObjects];

    v26 = completeCopy;
    userContext = [completeCopy userContext];
    v25 = v9;
    v11 = [userContext buildCallbackMap:v9];
    v12 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v13 objectForKey:v18];
          v20 = [[JTImage alloc] initWithPVImage:v19];
          previewCache2 = [(JFXEffectPreviewManager *)self previewCache];
          effectID = [v18 effectID];
          [previewCache2 setObject:v20 forKey:effectID];

          effectID2 = [v18 effectID];
          [v12 addObject:effectID2];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    [v12 addObject:*MEMORY[0x277D41718]];
    [(JFXEffectPreviewManager *)self JFX_delegateUpdateContinousPreviewsForEffectIDs:v12];

    v9 = v25;
    completeCopy = v26;
  }
}

- (JFXEffectsPreviewGenerator)staticPreviewGenerator
{
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  staticPreviewGenerator = self->_staticPreviewGenerator;
  if (!staticPreviewGenerator)
  {
    v5 = objc_alloc_init(JFXEffectsPreviewGenerator);
    v6 = self->_staticPreviewGenerator;
    self->_staticPreviewGenerator = v5;

    [(JFXEffectsPreviewGenerator *)self->_staticPreviewGenerator trackStats:0];
    v7 = MEMORY[0x277CCACA8];
    name = [(JFXEffectPreviewManager *)self name];
    v9 = [v7 stringWithFormat:@"PreviewManagerStaticPreview_%@", name];
    [(JFXEffectsPreviewGenerator *)self->_staticPreviewGenerator setName:v9];

    staticPreviewGenerator = self->_staticPreviewGenerator;
  }

  return staticPreviewGenerator;
}

- (void)preparePreviewForEffect:(id)effect atSize:(CGSize)size options:(id)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke;
  v18[3] = &unk_278D7CFD0;
  v18[4] = self;
  v19 = effectCopy;
  v20 = optionsCopy;
  v21 = completionCopy;
  v22 = width;
  v23 = height;
  v15 = completionCopy;
  v16 = optionsCopy;
  v17 = effectCopy;
  dispatch_async(previewQueue, v18);
}

void __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) effectsPreparingForPreview];
  [v2 addObject:*(a1 + 40)];

  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) callbackQueue];
  v4 = objc_loadWeakRetained(&location);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) dontUseThumbnailAssetWhenAvailable];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_2;
  v8[3] = &unk_278D7CFA8;
  objc_copyWeak(&v13, &location);
  v9 = *(a1 + 40);
  v7 = v3;
  v10 = v7;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v14 = *(a1 + 64);
  [v4 JFX_requestPreviewAssetsForEffect:v5 withPriority:2 onlyThumbnailAssetWhenAvailable:v6 ^ 1u completion:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (a2 || !WeakRetained)
  {
    v17 = [WeakRetained effectsPreparingForPreview];
    [v17 removeObject:*(a1 + 32)];

    v18 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_3;
    block[3] = &unk_278D7A168;
    v37 = *(a1 + 56);
    dispatch_async(v18, block);
  }

  else if (v7 && ([*(a1 + 48) dontUseThumbnailAssetWhenAvailable] & 1) == 0)
  {
    v19 = MEMORY[0x277D755B8];
    v20 = [v7 path];
    v21 = [v19 imageWithContentsOfFile:v20];
    v22 = [JTImage jtImageWithUIImage:v21];

    if (([*(a1 + 48) dontCache] & 1) == 0)
    {
      v23 = [v10 previewCache];
      v24 = [*(a1 + 32) effectID];
      [v23 setObject:v22 forKey:v24];
    }

    v25 = *(a1 + 40);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_4;
    v33[3] = &unk_278D7ACB0;
    v26 = *(a1 + 56);
    v34 = v22;
    v35 = v26;
    v27 = v22;
    dispatch_async(v25, v33);
  }

  else
  {
    v11 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_5;
    v28[3] = &unk_278D7CF80;
    objc_copyWeak(&v31, (a1 + 64));
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    *&v15 = *(a1 + 48);
    *(&v15 + 1) = v13;
    *&v16 = v12;
    *(&v16 + 1) = v14;
    v29 = v16;
    v30 = v15;
    v32 = *(a1 + 72);
    [v10 JFX_loadRenderingResourcesForEffect:v11 completion:v28];

    objc_destroyWeak(&v31);
  }
}

void __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained previewQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_7;
    v7[3] = &unk_278D7CF58;
    v5 = &v8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    objc_copyWeak(&v12, (a1 + 64));
    v13 = *(a1 + 72);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    dispatch_async(v4, v7);

    objc_destroyWeak(&v12);
  }

  else
  {
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_6;
    block[3] = &unk_278D7A168;
    v5 = &v15;
    v15 = *(a1 + 56);
    dispatch_async(v6, block);
  }
}

void __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) effectWillRenderPreviewWithOptions:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_8;
  v5[3] = &unk_278D7CF30;
  objc_copyWeak(&v9, (a1 + 64));
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [WeakRetained JFX_renderPreviewForEffect:v4 previewSize:v2 options:v5 completion:{*(a1 + 72), *(a1 + 80)}];

  objc_destroyWeak(&v9);
}

void __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained effectsPreparingForPreview];
  [v8 removeObject:*(a1 + 32)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__JFXEffectPreviewManager_preparePreviewForEffect_atSize_options_completion___block_invoke_9;
  block[3] = &unk_278D7A320;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, block);
}

- (void)previewForEffect:(id)effect atSize:(CGSize)size options:(id)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__JFXEffectPreviewManager_previewForEffect_atSize_options_completion___block_invoke;
  v17[3] = &unk_278D7D020;
  objc_copyWeak(v21, &location);
  v14 = completionCopy;
  v20 = v14;
  v15 = effectCopy;
  v18 = v15;
  v21[1] = *&width;
  v21[2] = *&height;
  v16 = optionsCopy;
  v19 = v16;
  [(JFXEffectPreviewManager *)self cachedPreviewForEffect:v15 completion:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __70__JFXEffectPreviewManager_previewForEffect_atSize_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 || !WeakRetained || [WeakRetained isContinouslyPreviewing])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__JFXEffectPreviewManager_previewForEffect_atSize_options_completion___block_invoke_2;
    v11[3] = &unk_278D7CFF8;
    v12 = *(a1 + 48);
    [v8 preparePreviewForEffect:v9 atSize:v10 options:v11 completion:{*(a1 + 64), *(a1 + 72)}];
  }
}

- (void)JFX_renderPreviewForEffect:(id)effect previewSize:(CGSize)size options:(id)options completion:(id)completion
{
  height = size.height;
  width = size.width;
  v57[1] = *MEMORY[0x277D85DE8];
  effectCopy = effect;
  optionsCopy = options;
  completionCopy = completion;
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  dispatch_assert_queue_V2(previewQueue);

  concurrentStaticPreviewSemaphore = [(JFXEffectPreviewManager *)self concurrentStaticPreviewSemaphore];
  v16 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(concurrentStaticPreviewSemaphore, v16);

  if (optionsCopy)
  {
    [optionsCopy renderRange];
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
  }

  renderEffect = [effectCopy renderEffect];
  v51 = v54;
  v52 = v55;
  v53 = v56;
  [renderEffect setEffectRange:&v51];

  [effectCopy setForceRenderAtPosterFrame:1];
  [(JFXEffectPreviewManager *)self JFX_configureCommonRenderingPropertiesForEffect:effectCopy forPreviewSize:optionsCopy withPreviewOptions:width, height];
  [optionsCopy renderedImageCropRect];
  *&v51 = v18;
  *(&v51 + 1) = v19;
  *&v52 = v20;
  *(&v52 + 1) = v21;
  renderPropertiesConfigurationBlock = [optionsCopy renderPropertiesConfigurationBlock];
  LOBYTE(renderEffect) = renderPropertiesConfigurationBlock == 0;

  if ((renderEffect & 1) == 0)
  {
    renderPropertiesConfigurationBlock2 = [optionsCopy renderPropertiesConfigurationBlock];
    (renderPropertiesConfigurationBlock2)[2](renderPropertiesConfigurationBlock2, effectCopy, &v51, width, height);
  }

  renderBackgroundImage = [optionsCopy renderBackgroundImage];
  v25 = renderBackgroundImage == 0;

  if (v25)
  {
    location = 0uLL;
    v50 = 0;
    if (optionsCopy && ([optionsCopy renderTime], (v48 & 1) != 0))
    {
      [optionsCopy renderTime];
    }

    else
    {
      location = kDefaultEffectPreviewRenderTime;
      v50 = 0;
    }

    v31 = [JFXEffectsPreviewGenerationRequest alloc];
    v46 = location;
    v47 = v50;
    height = [(JFXEffectsPreviewGenerationRequest *)v31 initWithInputGenerator:effectCopy effectStack:0 outputSize:&v46 renderTime:width, height];
  }

  else
  {
    v26 = [JFXEffectsPreviewGenerationRequest alloc];
    renderBackgroundImage2 = [optionsCopy renderBackgroundImage];
    pvImageBuffer = [renderBackgroundImage2 pvImageBuffer];
    v57[0] = effectCopy;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    if (optionsCopy)
    {
      [optionsCopy renderTime];
    }

    else
    {
      location = 0uLL;
      v50 = 0;
    }

    height = [(JFXEffectsPreviewGenerationRequest *)v26 initWithInput:pvImageBuffer effectStack:v29 outputSize:&location renderTime:width, height];

    [(JFXEffectsPreviewGenerationRequest *)height centerAnimationInfo];
  }

  -[JFXEffectsPreviewGenerationRequest setHighQuality:](height, "setHighQuality:", [optionsCopy quality] == 2);
  if ([optionsCopy parentCode] != -1)
  {
    -[JFXEffectsPreviewGenerationRequest setParentCode:](height, "setParentCode:", [optionsCopy parentCode]);
  }

  concurrentStaticPreviewSemaphore2 = [(JFXEffectPreviewManager *)self concurrentStaticPreviewSemaphore];
  objc_initWeak(&location, self);
  staticPreviewGenerator = [(JFXEffectPreviewManager *)self staticPreviewGenerator];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __85__JFXEffectPreviewManager_JFX_renderPreviewForEffect_previewSize_options_completion___block_invoke;
  v38[3] = &unk_278D7D048;
  v34 = concurrentStaticPreviewSemaphore2;
  v39 = v34;
  objc_copyWeak(&v43, &location);
  v35 = completionCopy;
  v42 = v35;
  v44 = v51;
  v45 = v52;
  v36 = optionsCopy;
  v40 = v36;
  v37 = effectCopy;
  v41 = v37;
  [staticPreviewGenerator generatePreviewRequest:height completionHandler:v38];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __85__JFXEffectPreviewManager_JFX_renderPreviewForEffect_previewSize_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained || !v14)
  {
    (*(*(a1 + 56) + 16))();
    goto LABEL_15;
  }

  v4 = [v14 objectEnumerator];
  v5 = [v4 nextObject];

  if (v5)
  {
    if (CGRectIsEmpty(*(a1 + 72)))
    {
      v6 = [v5 copyOfUIImage];
    }

    else
    {
      v6 = [v5 copyOfUIImage:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    }

    v7 = v6;
    if (v6)
    {
      v8 = [[JTImage alloc] initWithUIImage:v6];
      if (([*(a1 + 40) dontCache] & 1) == 0)
      {
        v9 = [WeakRetained previewCache];
        v10 = [*(a1 + 48) effectID];
        [v9 setObject:v8 forKey:v10];

        if (([*(a1 + 40) dontCacheToDisk] & 1) == 0)
        {
          v11 = [WeakRetained previewDiskCache];
          v12 = [*(a1 + 48) effectID];
          v13 = [*(a1 + 48) contentVersion];
          [v11 savePreviewForEffectID:v12 image:v8 version:v13 completion:0];
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
LABEL_14:
  (*(*(a1 + 56) + 16))();

LABEL_15:
}

- (void)cachedPreviewForEffect:(id)effect completion:(id)completion
{
  effectCopy = effect;
  completionCopy = completion;
  previewCache = [(JFXEffectPreviewManager *)self previewCache];
  effectID = [effectCopy effectID];
  v10 = [previewCache objectForKey:effectID];

  if (v10)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __61__JFXEffectPreviewManager_cachedPreviewForEffect_completion___block_invoke;
    v29[3] = &unk_278D7A320;
    v32 = completionCopy;
    v30 = v10;
    v31 = 0;
    [(JFXEffectPreviewManager *)self JFX_dispatchBlockOnCallbackQueueImmediatelyWhenPossible:v29];

    defaultPreviewImage = v32;
  }

  else if ([(JFXEffectPreviewManager *)self isContinouslyPreviewing])
  {
    defaultPreviewImage = [(JFXEffectPreviewManager *)self defaultPreviewImage];
    if (defaultPreviewImage)
    {
      v12 = objc_opt_new();
      defaultPreviewImageDisplayTransformValue = [(JFXEffectPreviewManager *)self defaultPreviewImageDisplayTransformValue];
      if (defaultPreviewImageDisplayTransformValue)
      {
        [v12 setValue:defaultPreviewImageDisplayTransformValue forKey:@"JFXEffectFoundPreviewLiveCaptureImageDisplayTransform"];
      }

      [v12 setValue:MEMORY[0x277CBEC38] forKey:@"JFXEffectFoundDefaultImageToUseWhilePreparingPreview"];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __61__JFXEffectPreviewManager_cachedPreviewForEffect_completion___block_invoke_4;
      v19[3] = &unk_278D7A320;
      v22 = completionCopy;
      defaultPreviewImage = defaultPreviewImage;
      v20 = defaultPreviewImage;
      v21 = v12;
      v14 = v12;
      [(JFXEffectPreviewManager *)self JFX_dispatchBlockOnCallbackQueueImmediatelyWhenPossible:v19];
    }
  }

  else
  {
    callbackQueue = [(JFXEffectPreviewManager *)self callbackQueue];
    objc_initWeak(&location, self);
    previewDiskCache = [(JFXEffectPreviewManager *)self previewDiskCache];
    effectID2 = [effectCopy effectID];
    contentVersion = [effectCopy contentVersion];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__JFXEffectPreviewManager_cachedPreviewForEffect_completion___block_invoke_2;
    v23[3] = &unk_278D7D070;
    objc_copyWeak(&v27, &location);
    v24 = effectCopy;
    defaultPreviewImage = callbackQueue;
    v25 = defaultPreviewImage;
    v26 = completionCopy;
    [previewDiskCache previewForEffectID:effectID2 version:contentVersion completion:v23];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __61__JFXEffectPreviewManager_cachedPreviewForEffect_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = [WeakRetained previewCache];
    v6 = [*(a1 + 32) effectID];
    [v5 setObject:v3 forKey:v6];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__JFXEffectPreviewManager_cachedPreviewForEffect_completion___block_invoke_3;
  v10[3] = &unk_278D7ACB0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(v7, v10);
}

- (void)purgeCachedPreviewForEffect:(id)effect
{
  effectCopy = effect;
  previewCache = [(JFXEffectPreviewManager *)self previewCache];
  effectID = [effectCopy effectID];

  [previewCache removeObjectForKey:effectID];
}

- (void)purgeCachedPreviewsForAllEffects
{
  previewCache = [(JFXEffectPreviewManager *)self previewCache];
  [previewCache removeAllObjects];

  objc_initWeak(&location, self);
  previewQueue = [(JFXEffectPreviewManager *)self previewQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__JFXEffectPreviewManager_purgeCachedPreviewsForAllEffects__block_invoke;
  v5[3] = &unk_278D7B1C8;
  objc_copyWeak(&v6, &location);
  dispatch_async(previewQueue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __59__JFXEffectPreviewManager_purgeCachedPreviewsForAllEffects__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStaticPreviewGenerator:0];
}

- (JFXEffectPreviewManagerDelegate)delegate_internal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate_internal);

  return WeakRetained;
}

- (CGSize)continousPreviewSize
{
  width = self->_continousPreviewSize.width;
  height = self->_continousPreviewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end