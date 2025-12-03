@interface CFXEffectPickerViewController
+ (id)effectPickerViewController;
- (BOOL)shouldRotateCellsForDeviceOrientation;
- (CFXEffectPickerViewControllerDelegate)delegate;
- (id)CFX_createPickerViewForEffectType:(id)type;
- (id)effectPickerView:(id)view effectAtIndex:(int64_t)index;
- (id)effectPickerView:(id)view effectIdentifierAtIndex:(int64_t)index;
- (id)effectPickerView:(id)view effectTitleAtIndex:(int64_t)index;
- (unint64_t)CFX_indexForEffectIdentifier:(id)identifier;
- (unint64_t)numberOfEffectsInPickerView:(id)view;
- (void)CFX_configureEffect:(id)effect previewSizeInPixels:(CGSize)pixels;
- (void)CFX_loadEffectsForType:(id)type completion:(id)completion;
- (void)CFX_restartPreviewing;
- (void)CFX_stopPreviewing;
- (void)effectPickerView:(id)view didPickEffectAtIndex:(int64_t)index;
- (void)effectPickerView:(id)view effectAtIndex:(int64_t)index forPreviewingAtSizeInPixels:(CGSize)pixels completionBlock:(id)block;
- (void)effectPickerViewDidScroll:(id)scroll;
- (void)setEffectType:(id)type;
- (void)setPreviewBackgroundImage:(id)image;
- (void)startPreviewing;
- (void)stopPreviewing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation CFXEffectPickerViewController

+ (id)effectPickerViewController
{
  v2 = MEMORY[0x277D75AC8];
  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v4 = [v2 storyboardWithName:@"CFXEffectPickerViewController" bundle:jfxBundle];
  v5 = [v4 instantiateViewControllerWithIdentifier:@"CFXEffectPickerViewController"];

  return v5;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v11 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(CFXEffectPickerViewController *)self view];
  [view setBackgroundColor:clearColor];

  if (viewDidLoad_onceToken != -1)
  {
    [CFXEffectPickerViewController viewDidLoad];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"com.apple.%@.effectLoadingQueue", v7];

  uTF8String = [v8 UTF8String];
  v10 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
  [(CFXEffectPickerViewController *)self setEffectLoadingQueue:v10];
}

uint64_t __44__CFXEffectPickerViewController_viewDidLoad__block_invoke()
{
  s_effectLoadingSemaphore = dispatch_semaphore_create(2);

  return MEMORY[0x2821F96F8]();
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v5 viewWillAppear:appear];
  pickerView = [(CFXEffectPickerViewController *)self pickerView];
  [pickerView reloadData];

  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {
    [(CFXEffectPickerViewController *)self CFX_restartPreviewing];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v4 viewWillDisappear:disappear];
  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {
    [(CFXEffectPickerViewController *)self CFX_stopPreviewing];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CFXEffectPickerViewController;
  coordinatorCopy = coordinator;
  [(CFXEffectPickerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__CFXEffectPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278D7B4B8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __84__CFXEffectPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pickerView];
  [v1 orientationDidChange];
}

- (void)setPreviewBackgroundImage:(id)image
{
  objc_storeStrong(&self->_previewBackgroundImage, image);
  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {

    [(CFXEffectPickerViewController *)self CFX_restartPreviewing];
  }
}

- (void)setEffectType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqual:self->_effectType] & 1) == 0)
  {
    [(CFXEffectPickerViewController *)self CFX_stopPreviewing];
    pickerView = [(CFXEffectPickerViewController *)self pickerView];
    [pickerView removeFromSuperview];

    objc_storeStrong(&self->_effectType, type);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__CFXEffectPickerViewController_setEffectType___block_invoke;
    v7[3] = &unk_278D79C88;
    v7[4] = self;
    v8 = typeCopy;
    [(CFXEffectPickerViewController *)self CFX_loadEffectsForType:v8 completion:v7];
  }
}

uint64_t __47__CFXEffectPickerViewController_setEffectType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) CFX_createPickerViewForEffectType:*(a1 + 40)];
  [*(a1 + 32) setPickerView:v2];

  result = [*(a1 + 32) isPreviewing];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 CFX_restartPreviewing];
  }

  return result;
}

- (void)startPreviewing
{
  [(CFXEffectPickerViewController *)self setPreviewing:1];
  view = [(CFXEffectPickerViewController *)self view];
  window = [view window];

  if (window)
  {

    [(CFXEffectPickerViewController *)self CFX_restartPreviewing];
  }
}

- (void)stopPreviewing
{
  [(CFXEffectPickerViewController *)self setPreviewing:0];

  [(CFXEffectPickerViewController *)self CFX_stopPreviewing];
}

- (void)CFX_restartPreviewing
{
  pickerView = [(CFXEffectPickerViewController *)self pickerView];

  if (!pickerView)
  {
    return;
  }

  pickerView2 = [(CFXEffectPickerViewController *)self pickerView];
  [pickerView2 stopPreviewing];

  effectType = [(CFXEffectPickerViewController *)self effectType];
  jtEffectType = [effectType jtEffectType];

  if (jtEffectType == 2)
  {
    pickerView3 = [(CFXEffectPickerViewController *)self pickerView];
    [pickerView3 setPreviewBackgroundImage:0];

    pickerView4 = [(CFXEffectPickerViewController *)self pickerView];
    [pickerView4 setContinuousPreviewEnabled:1];

    pickerView5 = [(CFXEffectPickerViewController *)self pickerView];
    pickerView8 = pickerView5;
    v14 = 0;
  }

  else
  {
    if (jtEffectType != 1)
    {
      pickerView6 = [(CFXEffectPickerViewController *)self pickerView];
      [pickerView6 setPreviewBackgroundImage:0];

      pickerView7 = [(CFXEffectPickerViewController *)self pickerView];
      [pickerView7 setUseCameraForContinuousPreview:0];

      pickerView8 = [(CFXEffectPickerViewController *)self pickerView];
      [pickerView8 setContinuousPreviewEnabled:0];
      goto LABEL_9;
    }

    previewBackgroundImage = [(CFXEffectPickerViewController *)self previewBackgroundImage];
    pickerView9 = [(CFXEffectPickerViewController *)self pickerView];
    [pickerView9 setPreviewBackgroundImage:previewBackgroundImage];

    previewBackgroundImage2 = [(CFXEffectPickerViewController *)self previewBackgroundImage];
    v10 = previewBackgroundImage2 == 0;

    pickerView10 = [(CFXEffectPickerViewController *)self pickerView];
    [pickerView10 setContinuousPreviewEnabled:v10];

    pickerView5 = [(CFXEffectPickerViewController *)self pickerView];
    pickerView8 = pickerView5;
    v14 = v10;
  }

  [pickerView5 setUseCameraForContinuousPreview:v14];
LABEL_9:

  pickerView11 = [(CFXEffectPickerViewController *)self pickerView];
  [pickerView11 startPreviewing];
}

- (void)CFX_stopPreviewing
{
  pickerView = [(CFXEffectPickerViewController *)self pickerView];
  [pickerView stopPreviewing];
}

- (void)CFX_loadEffectsForType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  [(CFXEffectPickerViewController *)self setEffects:0];
  if (typeCopy)
  {
    v8 = +[JFXEffectFactory sharedInstance];
    jtEffectType = [typeCopy jtEffectType];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__CFXEffectPickerViewController_CFX_loadEffectsForType_completion___block_invoke;
    v10[3] = &unk_278D7B4E0;
    v11 = typeCopy;
    selfCopy = self;
    v13 = completionCopy;
    [v8 effectIDsForType:jtEffectType completion:v10];
  }
}

void __67__CFXEffectPickerViewController_CFX_loadEffectsForType_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CFXEffect effectWithIdentifier:*(*(&v11 + 1) + 8 * v9) forEffectType:*(a1 + 32), v11];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) setEffects:v4];
  (*(*(a1 + 48) + 16))();
}

- (unint64_t)CFX_indexForEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  effects = [(CFXEffectPickerViewController *)self effects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CFXEffectPickerViewController_CFX_indexForEffectIdentifier___block_invoke;
  v9[3] = &unk_278D7B508;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [effects indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __62__CFXEffectPickerViewController_CFX_indexForEffectIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)CFX_createPickerViewForEffectType:(id)type
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (type)
  {
    [type jtEffectType];
    v4 = objc_opt_new();
    view = [(CFXEffectPickerViewController *)self view];
    [view addSubview:v4];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v4 leadingAnchor];
    view2 = [(CFXEffectPickerViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v21;
    trailingAnchor = [v4 trailingAnchor];
    view3 = [(CFXEffectPickerViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v16;
    topAnchor = [v4 topAnchor];
    view4 = [(CFXEffectPickerViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v8;
    bottomAnchor = [v4 bottomAnchor];
    view5 = [(CFXEffectPickerViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v17 activateConstraints:v13];

    [v4 setDataSource:self];
    [v4 setDelegate:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v3 willMoveToParentViewController:controller];
}

- (void)effectPickerView:(id)view didPickEffectAtIndex:(int64_t)index
{
  effects = [(CFXEffectPickerViewController *)self effects];
  v7 = [effects count];

  if (v7 > index)
  {
    effects2 = [(CFXEffectPickerViewController *)self effects];
    v9 = [effects2 objectAtIndex:index];
    v11 = [v9 copy];

    delegate = [(CFXEffectPickerViewController *)self delegate];
    [delegate effectPickerViewController:self didPickEffect:v11];
  }
}

- (void)effectPickerViewDidScroll:(id)scroll
{
  v3 = +[CFXAnalyticsManager sharedInstance];
  [v3 pickerDidScroll];
}

- (unint64_t)numberOfEffectsInPickerView:(id)view
{
  effects = [(CFXEffectPickerViewController *)self effects];
  v4 = [effects count];

  return v4;
}

- (id)effectPickerView:(id)view effectAtIndex:(int64_t)index
{
  effects = [(CFXEffectPickerViewController *)self effects];
  v7 = [effects count];

  if (v7 <= index)
  {
    v9 = 0;
  }

  else
  {
    effects2 = [(CFXEffectPickerViewController *)self effects];
    v9 = [effects2 objectAtIndex:index];
  }

  return v9;
}

- (id)effectPickerView:(id)view effectIdentifierAtIndex:(int64_t)index
{
  effects = [(CFXEffectPickerViewController *)self effects];
  v7 = [effects count];

  if (v7 <= index)
  {
    identifier = 0;
  }

  else
  {
    effects2 = [(CFXEffectPickerViewController *)self effects];
    v9 = [effects2 objectAtIndex:index];

    identifier = [v9 identifier];
  }

  return identifier;
}

- (id)effectPickerView:(id)view effectTitleAtIndex:(int64_t)index
{
  effects = [(CFXEffectPickerViewController *)self effects];
  v6 = [effects objectAtIndex:index];

  localizedTitle = [v6 localizedTitle];

  return localizedTitle;
}

- (void)effectPickerView:(id)view effectAtIndex:(int64_t)index forPreviewingAtSizeInPixels:(CGSize)pixels completionBlock:(id)block
{
  height = pixels.height;
  width = pixels.width;
  blockCopy = block;
  effects = [(CFXEffectPickerViewController *)self effects];
  v12 = [effects count];

  if (v12 > index)
  {
    effects2 = [(CFXEffectPickerViewController *)self effects];
    v14 = [effects2 objectAtIndex:index];

    jtEffect = [v14 jtEffect];
    if ([jtEffect type] == 2)
    {
      v16 = jtEffect;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (![jtEffect isNone])
    {
      renderEffectResourcesAreReady = [jtEffect renderEffectResourcesAreReady];
      if (v17 && [v17 hasDynamicText])
      {
        v19 = [v17 wasDynamicTextSet] ^ 1;
      }

      else
      {
        v19 = 0;
      }

      [jtEffect renderSize];
      if (!renderEffectResourcesAreReady || (v19 & 1) != 0)
      {
        effectLoadingQueue = [(CFXEffectPickerViewController *)self effectLoadingQueue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke;
        v23[3] = &unk_278D7B580;
        v24 = jtEffect;
        v31 = v19;
        v25 = v17;
        selfCopy = self;
        v29 = width;
        v30 = height;
        v28 = blockCopy;
        v27 = v14;
        dispatch_async(effectLoadingQueue, v23);

        goto LABEL_18;
      }

      if (v20 != width || v21 != height)
      {
        [(CFXEffectPickerViewController *)self CFX_configureEffect:jtEffect previewSizeInPixels:width, height];
      }
    }

    (*(blockCopy + 2))(blockCopy, v14);
LABEL_18:

    goto LABEL_19;
  }

  (*(blockCopy + 2))(blockCopy, 0);
LABEL_19:
}

void __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke(uint64_t a1)
{
  v2 = s_effectLoadingSemaphore;
  v3 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v3);
  [*(a1 + 32) loadRenderEffect];
  if (*(a1 + 88) == 1)
  {
    v4 = dispatch_semaphore_create(0);
    v5 = *(a1 + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke_2;
    v13[3] = &unk_278D7B530;
    v14 = v4;
    v6 = v4;
    [v5 updateDynamicTextWithCompletionBlock:v13];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  dispatch_semaphore_signal(s_effectLoadingSemaphore);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke_3;
  block[3] = &unk_278D7B558;
  block[4] = *(a1 + 48);
  v9 = *(a1 + 32);
  v12 = *(a1 + 72);
  v11 = *(a1 + 64);
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) CFX_configureEffect:*(a1 + 40) previewSizeInPixels:{*(a1 + 64), *(a1 + 72)}];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)CFX_configureEffect:(id)effect previewSizeInPixels:(CGSize)pixels
{
  height = pixels.height;
  width = pixels.width;
  effectCopy = effect;
  if (([effectCopy isNone] & 1) == 0 && objc_msgSend(effectCopy, "renderEffectResourcesAreReady"))
  {
    [effectCopy setRenderSize:{width, height}];
    renderEffect = [effectCopy renderEffect];
    v16 = *kDefaultEffectPreviewAnimationRange;
    [renderEffect setEffectRange:&v16];

    [effectCopy setForceRenderAtPosterFrame:1];
    if ([effectCopy type] == 2)
    {
      v8 = effectCopy;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    if (v9)
    {
      v13 = *MEMORY[0x277CC08F0];
      *&v16.a = *MEMORY[0x277CC08F0];
      v11 = *(MEMORY[0x277CC08F0] + 16);
      v16.c = v11;
      [v9 applyScaleToFitFrame:&v16 withComponentTime:0.0 relativeRect:{0.0, width, height, 0.0, 0.0, width, height}];
      [v10 pickerScale];
      if (v12 != 1.0)
      {
        CGAffineTransformMakeScale(&v16, v12, v12);
        v14 = v13;
        v15 = v11;
        [v10 addTransform:&v16 withComponentTime:&v14 relativeTo:1 basisOrigin:{0.0, 0.0, width, height}];
      }
    }
  }
}

- (BOOL)shouldRotateCellsForDeviceOrientation
{
  delegate = [(CFXEffectPickerViewController *)self delegate];
  shouldRotateCellsForDeviceOrientation = [delegate shouldRotateCellsForDeviceOrientation];

  return shouldRotateCellsForDeviceOrientation;
}

- (CFXEffectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end