@interface CFXEffectPickerViewController
+ (id)effectPickerViewController;
- (BOOL)shouldRotateCellsForDeviceOrientation;
- (CFXEffectPickerViewControllerDelegate)delegate;
- (id)CFX_createPickerViewForEffectType:(id)a3;
- (id)effectPickerView:(id)a3 effectAtIndex:(int64_t)a4;
- (id)effectPickerView:(id)a3 effectIdentifierAtIndex:(int64_t)a4;
- (id)effectPickerView:(id)a3 effectTitleAtIndex:(int64_t)a4;
- (unint64_t)CFX_indexForEffectIdentifier:(id)a3;
- (unint64_t)numberOfEffectsInPickerView:(id)a3;
- (void)CFX_configureEffect:(id)a3 previewSizeInPixels:(CGSize)a4;
- (void)CFX_loadEffectsForType:(id)a3 completion:(id)a4;
- (void)CFX_restartPreviewing;
- (void)CFX_stopPreviewing;
- (void)effectPickerView:(id)a3 didPickEffectAtIndex:(int64_t)a4;
- (void)effectPickerView:(id)a3 effectAtIndex:(int64_t)a4 forPreviewingAtSizeInPixels:(CGSize)a5 completionBlock:(id)a6;
- (void)effectPickerViewDidScroll:(id)a3;
- (void)setEffectType:(id)a3;
- (void)setPreviewBackgroundImage:(id)a3;
- (void)startPreviewing;
- (void)stopPreviewing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation CFXEffectPickerViewController

+ (id)effectPickerViewController
{
  v2 = MEMORY[0x277D75AC8];
  v3 = [MEMORY[0x277CCA8D8] jfxBundle];
  v4 = [v2 storyboardWithName:@"CFXEffectPickerViewController" bundle:v3];
  v5 = [v4 instantiateViewControllerWithIdentifier:@"CFXEffectPickerViewController"];

  return v5;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(CFXEffectPickerViewController *)self view];
  [v4 setBackgroundColor:v3];

  if (viewDidLoad_onceToken != -1)
  {
    [CFXEffectPickerViewController viewDidLoad];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"com.apple.%@.effectLoadingQueue", v7];

  v9 = [v8 UTF8String];
  v10 = dispatch_queue_create(v9, MEMORY[0x277D85CD8]);
  [(CFXEffectPickerViewController *)self setEffectLoadingQueue:v10];
}

uint64_t __44__CFXEffectPickerViewController_viewDidLoad__block_invoke()
{
  s_effectLoadingSemaphore = dispatch_semaphore_create(2);

  return MEMORY[0x2821F96F8]();
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v5 viewWillAppear:a3];
  v4 = [(CFXEffectPickerViewController *)self pickerView];
  [v4 reloadData];

  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {
    [(CFXEffectPickerViewController *)self CFX_restartPreviewing];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v4 viewWillDisappear:a3];
  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {
    [(CFXEffectPickerViewController *)self CFX_stopPreviewing];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CFXEffectPickerViewController;
  v7 = a4;
  [(CFXEffectPickerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__CFXEffectPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278D7B4B8;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __84__CFXEffectPickerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pickerView];
  [v1 orientationDidChange];
}

- (void)setPreviewBackgroundImage:(id)a3
{
  objc_storeStrong(&self->_previewBackgroundImage, a3);
  if ([(CFXEffectPickerViewController *)self isPreviewing])
  {

    [(CFXEffectPickerViewController *)self CFX_restartPreviewing];
  }
}

- (void)setEffectType:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_effectType] & 1) == 0)
  {
    [(CFXEffectPickerViewController *)self CFX_stopPreviewing];
    v6 = [(CFXEffectPickerViewController *)self pickerView];
    [v6 removeFromSuperview];

    objc_storeStrong(&self->_effectType, a3);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__CFXEffectPickerViewController_setEffectType___block_invoke;
    v7[3] = &unk_278D79C88;
    v7[4] = self;
    v8 = v5;
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
  v3 = [(CFXEffectPickerViewController *)self view];
  v4 = [v3 window];

  if (v4)
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
  v3 = [(CFXEffectPickerViewController *)self pickerView];

  if (!v3)
  {
    return;
  }

  v4 = [(CFXEffectPickerViewController *)self pickerView];
  [v4 stopPreviewing];

  v5 = [(CFXEffectPickerViewController *)self effectType];
  v6 = [v5 jtEffectType];

  if (v6 == 2)
  {
    v15 = [(CFXEffectPickerViewController *)self pickerView];
    [v15 setPreviewBackgroundImage:0];

    v16 = [(CFXEffectPickerViewController *)self pickerView];
    [v16 setContinuousPreviewEnabled:1];

    v12 = [(CFXEffectPickerViewController *)self pickerView];
    v13 = v12;
    v14 = 0;
  }

  else
  {
    if (v6 != 1)
    {
      v17 = [(CFXEffectPickerViewController *)self pickerView];
      [v17 setPreviewBackgroundImage:0];

      v18 = [(CFXEffectPickerViewController *)self pickerView];
      [v18 setUseCameraForContinuousPreview:0];

      v13 = [(CFXEffectPickerViewController *)self pickerView];
      [v13 setContinuousPreviewEnabled:0];
      goto LABEL_9;
    }

    v7 = [(CFXEffectPickerViewController *)self previewBackgroundImage];
    v8 = [(CFXEffectPickerViewController *)self pickerView];
    [v8 setPreviewBackgroundImage:v7];

    v9 = [(CFXEffectPickerViewController *)self previewBackgroundImage];
    v10 = v9 == 0;

    v11 = [(CFXEffectPickerViewController *)self pickerView];
    [v11 setContinuousPreviewEnabled:v10];

    v12 = [(CFXEffectPickerViewController *)self pickerView];
    v13 = v12;
    v14 = v10;
  }

  [v12 setUseCameraForContinuousPreview:v14];
LABEL_9:

  v19 = [(CFXEffectPickerViewController *)self pickerView];
  [v19 startPreviewing];
}

- (void)CFX_stopPreviewing
{
  v2 = [(CFXEffectPickerViewController *)self pickerView];
  [v2 stopPreviewing];
}

- (void)CFX_loadEffectsForType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CFXEffectPickerViewController *)self setEffects:0];
  if (v6)
  {
    v8 = +[JFXEffectFactory sharedInstance];
    v9 = [v6 jtEffectType];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__CFXEffectPickerViewController_CFX_loadEffectsForType_completion___block_invoke;
    v10[3] = &unk_278D7B4E0;
    v11 = v6;
    v12 = self;
    v13 = v7;
    [v8 effectIDsForType:v9 completion:v10];
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

- (unint64_t)CFX_indexForEffectIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectPickerViewController *)self effects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CFXEffectPickerViewController_CFX_indexForEffectIdentifier___block_invoke;
  v9[3] = &unk_278D7B508;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __62__CFXEffectPickerViewController_CFX_indexForEffectIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)CFX_createPickerViewForEffectType:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [a3 jtEffectType];
    v4 = objc_opt_new();
    v5 = [(CFXEffectPickerViewController *)self view];
    [v5 addSubview:v4];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = MEMORY[0x277CCAAD0];
    v23 = [v4 leadingAnchor];
    v24 = [(CFXEffectPickerViewController *)self view];
    v22 = [v24 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v19 = [v4 trailingAnchor];
    v20 = [(CFXEffectPickerViewController *)self view];
    v18 = [v20 trailingAnchor];
    v16 = [v19 constraintEqualToAnchor:v18];
    v25[1] = v16;
    v15 = [v4 topAnchor];
    v6 = [(CFXEffectPickerViewController *)self view];
    v7 = [v6 topAnchor];
    v8 = [v15 constraintEqualToAnchor:v7];
    v25[2] = v8;
    v9 = [v4 bottomAnchor];
    v10 = [(CFXEffectPickerViewController *)self view];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
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

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = CFXEffectPickerViewController;
  [(CFXEffectPickerViewController *)&v3 willMoveToParentViewController:a3];
}

- (void)effectPickerView:(id)a3 didPickEffectAtIndex:(int64_t)a4
{
  v6 = [(CFXEffectPickerViewController *)self effects];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(CFXEffectPickerViewController *)self effects];
    v9 = [v8 objectAtIndex:a4];
    v11 = [v9 copy];

    v10 = [(CFXEffectPickerViewController *)self delegate];
    [v10 effectPickerViewController:self didPickEffect:v11];
  }
}

- (void)effectPickerViewDidScroll:(id)a3
{
  v3 = +[CFXAnalyticsManager sharedInstance];
  [v3 pickerDidScroll];
}

- (unint64_t)numberOfEffectsInPickerView:(id)a3
{
  v3 = [(CFXEffectPickerViewController *)self effects];
  v4 = [v3 count];

  return v4;
}

- (id)effectPickerView:(id)a3 effectAtIndex:(int64_t)a4
{
  v6 = [(CFXEffectPickerViewController *)self effects];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(CFXEffectPickerViewController *)self effects];
    v9 = [v8 objectAtIndex:a4];
  }

  return v9;
}

- (id)effectPickerView:(id)a3 effectIdentifierAtIndex:(int64_t)a4
{
  v6 = [(CFXEffectPickerViewController *)self effects];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(CFXEffectPickerViewController *)self effects];
    v9 = [v8 objectAtIndex:a4];

    v10 = [v9 identifier];
  }

  return v10;
}

- (id)effectPickerView:(id)a3 effectTitleAtIndex:(int64_t)a4
{
  v5 = [(CFXEffectPickerViewController *)self effects];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 localizedTitle];

  return v7;
}

- (void)effectPickerView:(id)a3 effectAtIndex:(int64_t)a4 forPreviewingAtSizeInPixels:(CGSize)a5 completionBlock:(id)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a6;
  v11 = [(CFXEffectPickerViewController *)self effects];
  v12 = [v11 count];

  if (v12 > a4)
  {
    v13 = [(CFXEffectPickerViewController *)self effects];
    v14 = [v13 objectAtIndex:a4];

    v15 = [v14 jtEffect];
    if ([v15 type] == 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (![v15 isNone])
    {
      v18 = [v15 renderEffectResourcesAreReady];
      if (v17 && [v17 hasDynamicText])
      {
        v19 = [v17 wasDynamicTextSet] ^ 1;
      }

      else
      {
        v19 = 0;
      }

      [v15 renderSize];
      if (!v18 || (v19 & 1) != 0)
      {
        v22 = [(CFXEffectPickerViewController *)self effectLoadingQueue];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __108__CFXEffectPickerViewController_effectPickerView_effectAtIndex_forPreviewingAtSizeInPixels_completionBlock___block_invoke;
        v23[3] = &unk_278D7B580;
        v24 = v15;
        v31 = v19;
        v25 = v17;
        v26 = self;
        v29 = width;
        v30 = height;
        v28 = v10;
        v27 = v14;
        dispatch_async(v22, v23);

        goto LABEL_18;
      }

      if (v20 != width || v21 != height)
      {
        [(CFXEffectPickerViewController *)self CFX_configureEffect:v15 previewSizeInPixels:width, height];
      }
    }

    (*(v10 + 2))(v10, v14);
LABEL_18:

    goto LABEL_19;
  }

  (*(v10 + 2))(v10, 0);
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

- (void)CFX_configureEffect:(id)a3 previewSizeInPixels:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  if (([v6 isNone] & 1) == 0 && objc_msgSend(v6, "renderEffectResourcesAreReady"))
  {
    [v6 setRenderSize:{width, height}];
    v7 = [v6 renderEffect];
    v16 = *kDefaultEffectPreviewAnimationRange;
    [v7 setEffectRange:&v16];

    [v6 setForceRenderAtPosterFrame:1];
    if ([v6 type] == 2)
    {
      v8 = v6;
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
  v2 = [(CFXEffectPickerViewController *)self delegate];
  v3 = [v2 shouldRotateCellsForDeviceOrientation];

  return v3;
}

- (CFXEffectPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end