@interface DOCDownloadProgressView
+ (UIColor)defaultProgressColor;
+ (UIColor)defaultTrackColorOnSelectedBackground;
- (CGSize)intrinsicContentSize;
- (DOCDownloadProgressView)initWithCoder:(id)a3;
- (DOCDownloadProgressView)initWithFrame:(CGRect)a3;
- (void)_addToPendingAnimationQueue:(id)a3;
- (void)_setProgress:(double)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_updateStatusPropertiesAnimated:(BOOL)a3 completion:(id)a4;
- (void)animateToFullRingAndHideWithCompletion:(id)a3;
- (void)beginGraduallyIncreasingProgress;
- (void)dealloc;
- (void)doc_commonInit;
- (void)fadeoutWithCompletion:(id)a3;
- (void)handleTap:(id)a3;
- (void)installSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActiveStrokeColor:(id)a3;
- (void)setInactiveStrokeColor:(id)a3;
- (void)setObservedProgress:(id)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation DOCDownloadProgressView

- (DOCDownloadProgressView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DOCDownloadProgressView;
  v3 = [(DOCDownloadProgressView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(DOCDownloadProgressView *)v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

- (DOCDownloadProgressView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = DOCDownloadProgressView;
  v3 = [(DOCDownloadProgressView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DOCDownloadProgressView *)v3 doc_commonInit];
    v5 = v4;
  }

  return v4;
}

+ (UIColor)defaultTrackColorOnSelectedBackground
{
  v2 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v3 = [MEMORY[0x277D75348] secondaryLabelColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];

  return v4;
}

+ (UIColor)defaultProgressColor
{
  v2 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v3 = [MEMORY[0x277D75348] labelColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];

  return v4;
}

- (void)doc_commonInit
{
  v3 = [DOCGhostRingView alloc];
  [(DOCDownloadProgressView *)self bounds];
  v4 = [(DOCGhostRingView *)v3 initWithFrame:?];
  ghostRingView = self->_ghostRingView;
  self->_ghostRingView = v4;

  v6 = [DOCIndeterminateProgressRingView alloc];
  [(DOCDownloadProgressView *)self bounds];
  v7 = [(DOCIndeterminateProgressRingView *)v6 initWithFrame:?];
  indeterminateProgressRingView = self->_indeterminateProgressRingView;
  self->_indeterminateProgressRingView = v7;

  v9 = [DOCDeterminateProgressRingView alloc];
  [(DOCDownloadProgressView *)self bounds];
  v10 = [(DOCDeterminateProgressRingView *)v9 initWithFrame:?];
  determinateProgressRingView = self->_determinateProgressRingView;
  self->_determinateProgressRingView = v10;

  [(DOCGhostRingView *)self->_ghostRingView setAlpha:0.0];
  [(DOCIndeterminateProgressRingView *)self->_indeterminateProgressRingView setAlpha:0.0];
  [(DOCDeterminateProgressRingView *)self->_determinateProgressRingView setAlpha:0.0];
  v17 = [objc_opt_class() defaultProgressColor];
  v12 = [objc_opt_class() defaultTrackColor];
  [(DOCGhostRingView *)self->_ghostRingView setTintColor:v12];

  [(DOCIndeterminateProgressRingView *)self->_indeterminateProgressRingView setTintColor:v17];
  [(DOCDeterminateProgressRingView *)self->_determinateProgressRingView setTintColor:v17];
  [(DOCDownloadProgressView *)self installSubviews];
  v13 = objc_opt_new();
  pendingAnimationQueue = self->_pendingAnimationQueue;
  self->_pendingAnimationQueue = v13;

  [(NSOperationQueue *)self->_pendingAnimationQueue setMaxConcurrentOperationCount:1];
  [(DOCDownloadProgressView *)self _updateStatusPropertiesAnimated:0 completion:0];
  v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v15;

  [(DOCDownloadProgressView *)self addGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)installSubviews
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = self;
  [(DOCDownloadProgressView *)v2 setAutoresizesSubviews:1];
  v3 = v2;
  if (DOCVibrancyFeatureEnabled())
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(DOCDownloadProgressView *)v2 bounds];
    v5 = [v4 initWithFrame:?];
    v6 = [v5 asPrimaryStrokeViewDecoratorEmbeddable];
    v3 = v2;
    if (v6)
    {
      v3 = v5;

      [v6 setAutoresizingMask:18];
      [(DOCDownloadProgressView *)v2 bounds];
      [v6 setFrame:?];
      [(DOCDownloadProgressView *)v2 addSubview:v6];
    }
  }

  v12[0] = v2->_indeterminateProgressRingView;
  v12[1] = v2->_ghostRingView;
  v12[2] = v2->_determinateProgressRingView;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__DOCDownloadProgressView_installSubviews__block_invoke;
  v10[3] = &unk_278FA2538;
  v11 = v3;
  v8 = v3;
  [v7 enumerateObjectsUsingBlock:v10];
  v9 = [MEMORY[0x277D755A8] doc_circleWithInset:-8.0];
  [(DOCDownloadProgressView *)v2 setHoverStyle:v9];
}

void __42__DOCDownloadProgressView_installSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAutoresizingMask:18];
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [*(a1 + 32) addSubview:v3];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_observedProgress && self->_shouldStopObservingProgress)
  {
    v3 = MEMORY[0x277D06310];
    v4 = *MEMORY[0x277D06310];
    if (!*MEMORY[0x277D06310])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      observedProgress = self->_observedProgress;
      *buf = 138543362;
      v9 = observedProgress;
      _os_log_impl(&dword_2493AC000, v4, OS_LOG_TYPE_DEFAULT, "Progress: [Download Progress View] REMOVE-DEALLOC fractionCompleted observer for: %{public}@", buf, 0xCu);
    }

    [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"isIndeterminate"];
    self->_shouldStopObservingProgress = 0;
    v6 = self->_observedProgress;
    self->_observedProgress = 0;
  }

  v7.receiver = self;
  v7.super_class = DOCDownloadProgressView;
  [(DOCDownloadProgressView *)&v7 dealloc];
}

- (void)setActiveStrokeColor:(id)a3
{
  objc_storeStrong(&self->_activeStrokeColor, a3);
  v5 = a3;
  [(DOCIndeterminateProgressRingView *)self->_indeterminateProgressRingView setTintColor:v5];
  [(DOCDeterminateProgressRingView *)self->_determinateProgressRingView setTintColor:v5];
}

- (void)setInactiveStrokeColor:(id)a3
{
  objc_storeStrong(&self->_inactiveStrokeColor, a3);
  v5 = a3;
  [(DOCGhostRingView *)self->_ghostRingView setTintColor:v5];
}

- (void)_addToPendingAnimationQueue:(id)a3
{
  v4 = a3;
  v5 = self->_pendingAnimationQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke;
  aBlock[3] = &unk_278FA2560;
  aBlock[4] = self;
  v6 = v5;
  v25 = v6;
  v7 = _Block_copy(aBlock);
  v8 = MEMORY[0x277D06310];
  v9 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(DOCDownloadProgressView *)self _addToPendingAnimationQueue:v9, v10, v11, v12, v13, v14, v15];
  }

  pendingAnimationQueue = self->_pendingAnimationQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_24;
  v20[3] = &unk_278FA2588;
  v20[4] = self;
  v21 = v6;
  v22 = v4;
  v23 = v7;
  v17 = v7;
  v18 = v4;
  v19 = v6;
  [(NSOperationQueue *)pendingAnimationQueue addOperationWithBlock:v20];
}

uint64_t __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x277D06310];
  v5 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_cold_1(a1, a2, v5);
  }

  return [*(a1 + 40) setSuspended:0];
}

void __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_24(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_2;
  v8[3] = &unk_278FA2588;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 addOperationWithBlock:v8];
}

uint64_t __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D06310];
  v3 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_2_cold_1(a1, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 40) setSuspended:1];
  v10 = *v2;
  if (!*v2)
  {
    DOCInitLogging();
    v10 = *v2;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_2_cold_2(a1, v10, v11, v12, v13, v14, v15, v16);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_updateStatusPropertiesAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_progress == 0.0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke;
    aBlock[3] = &unk_278FA1C30;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v4)
    {
      v9 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_2;
      v18[3] = &unk_278FA25B0;
      v19 = v6;
      [v9 animateWithDuration:v8 animations:v18 completion:0.35];
    }

    else
    {
      v7[2](v7);
      if (v6)
      {
        (*(v6 + 2))(v6, 1);
      }
    }
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_3;
    v17[3] = &unk_278FA1C30;
    v17[4] = self;
    v8 = _Block_copy(v17);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_4;
    v16[3] = &unk_278FA1C30;
    v16[4] = self;
    v10 = _Block_copy(v16);
    v11 = v10;
    if (v4)
    {
      v12 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_5;
      v13[3] = &unk_278FA25D8;
      v14 = v8;
      v15 = v6;
      [v12 animateWithDuration:v11 animations:v13 completion:0.35];
    }

    else
    {
      (*(v10 + 2))(v10);
      v8[2](v8);
      if (v6)
      {
        (*(v6 + 2))(v6, 1);
      }
    }
  }
}

void __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) indeterminateProgressRingView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) ghostRingView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) determinateProgressRingView];
  [v4 setAlpha:0.0];
}

uint64_t __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) progress];
  v3 = v2;
  v4 = [*(a1 + 32) determinateProgressRingView];
  [v4 setProgress:v3];
}

void __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) indeterminateProgressRingView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) ghostRingView];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) determinateProgressRingView];
  [v4 setAlpha:1.0];
}

void __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_6;
  v3[3] = &unk_278FA25B0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v1 animateWithDuration:134 delay:v2 options:v3 animations:0.4 completion:0.0];
}

uint64_t __70__DOCDownloadProgressView__updateStatusPropertiesAnimated_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setProgress:(double)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  progress = self->_progress;
  if (progress == a3)
  {
    if (v8)
    {
      (*(v8 + 2))(v8, 1);
    }
  }

  else
  {
    self->_progress = a3;
    if (a3 == 0.0 || progress == 0.0)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke;
      v17[3] = &unk_278FA25B0;
      v18 = v8;
      [(DOCDownloadProgressView *)self _updateStatusPropertiesAnimated:v5 completion:v17];
    }

    else
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke_2;
      aBlock[3] = &unk_278FA2128;
      aBlock[4] = self;
      *&aBlock[5] = a3;
      v11 = _Block_copy(aBlock);
      v12 = v11;
      if (v5)
      {
        v13 = MEMORY[0x277D75D18];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke_3;
        v14[3] = &unk_278FA25B0;
        v15 = v9;
        [v13 animateWithDuration:134 delay:v12 options:v14 animations:0.4 completion:0.0];
      }

      else
      {
        (*(v11 + 2))(v11);
        if (v9)
        {
          v9[2](v9, 1);
        }
      }
    }
  }
}

uint64_t __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) determinateProgressRingView];
  [v2 setProgress:v1];
}

uint64_t __60__DOCDownloadProgressView__setProgress_animated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setProgress:(double)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277D06310];
  v10 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *location = 138412802;
    *&location[4] = self;
    v16 = 2048;
    v17 = a3;
    v18 = 1024;
    v19 = v5;
    _os_log_debug_impl(&dword_2493AC000, v10, OS_LOG_TYPE_DEBUG, "%@ | --setStatus--\tcalled with status: %f animated: %d", location, 0x1Cu);
  }

  if (self->_graduallyIncreasingProgress)
  {
    if (v8)
    {
      v8[2](v8, 0);
    }
  }

  else
  {
    objc_initWeak(location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__DOCDownloadProgressView_setProgress_animated_completion___block_invoke;
    v11[3] = &unk_278FA2600;
    objc_copyWeak(v13, location);
    v13[1] = *&a3;
    v14 = v5;
    v12 = v8;
    [(DOCDownloadProgressView *)self _addToPendingAnimationQueue:v11];

    objc_destroyWeak(v13);
    objc_destroyWeak(location);
  }
}

void __59__DOCDownloadProgressView_setProgress_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__DOCDownloadProgressView_setProgress_animated_completion___block_invoke_2;
  v8[3] = &unk_278FA25D8;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  [WeakRetained _setProgress:v6 animated:v8 completion:v5];
}

uint64_t __59__DOCDownloadProgressView_setProgress_animated_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &DOCDownloadProgressViewKVOContext)
  {
    v7 = [(DOCDownloadProgressView *)self observedProgress:a3];
    v8 = [v7 isIndeterminate];

    if (v8)
    {

      [(DOCDownloadProgressView *)self setProgress:1 animated:0.0];
    }

    else
    {
      v9 = [(DOCDownloadProgressView *)self observedProgress];
      [v9 fractionCompleted];
      [(DOCDownloadProgressView *)self setProgress:1 animated:?];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = DOCDownloadProgressView;
    [(DOCDownloadProgressView *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setObservedProgress:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  observedProgress = self->_observedProgress;
  if (observedProgress != v5)
  {
    if (observedProgress && self->_shouldStopObservingProgress)
    {
      v7 = MEMORY[0x277D06310];
      v8 = *MEMORY[0x277D06310];
      if (!*MEMORY[0x277D06310])
      {
        DOCInitLogging();
        v8 = *v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_observedProgress;
        v17 = 138543362;
        v18 = v9;
        _os_log_impl(&dword_2493AC000, v8, OS_LOG_TYPE_DEFAULT, "Progress: [Download Progress View] REMOVE fractionCompleted observer for: %{public}@", &v17, 0xCu);
      }

      [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"fractionCompleted"];
      [(NSProgress *)self->_observedProgress removeObserver:self forKeyPath:@"isIndeterminate"];
      [(DOCDownloadProgressView *)self setShouldStopObservingProgress:0];
    }

    objc_storeStrong(&self->_observedProgress, a3);
    v10 = self->_observedProgress;
    if (v10 && ![(NSProgress *)v10 isFinished])
    {
      v11 = [(DOCDownloadProgressView *)self observedProgress];
      v12 = [v11 isIndeterminate];

      if (v12)
      {
        [(DOCDownloadProgressView *)self setProgress:1 animated:0.0];
      }

      else
      {
        v13 = [(DOCDownloadProgressView *)self observedProgress];
        [v13 fractionCompleted];
        [(DOCDownloadProgressView *)self setProgress:1 animated:?];
      }

      v14 = MEMORY[0x277D06310];
      v15 = *MEMORY[0x277D06310];
      if (!*MEMORY[0x277D06310])
      {
        DOCInitLogging();
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_observedProgress;
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_2493AC000, v15, OS_LOG_TYPE_DEFAULT, "Progress: [Download Progress View] ADD fractionCompleted observer for: %{public}@", &v17, 0xCu);
      }

      [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:&DOCDownloadProgressViewKVOContext];
      [(NSProgress *)self->_observedProgress addObserver:self forKeyPath:@"isIndeterminate" options:1 context:&DOCDownloadProgressViewKVOContext];
      self->_shouldStopObservingProgress = 1;
    }

    else
    {
      [(DOCDownloadProgressView *)self setProgress:1 animated:0.0];
    }
  }
}

- (void)beginGraduallyIncreasingProgress
{
  self->_graduallyIncreasingProgress = 1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke;
  aBlock[3] = &unk_278FA1C30;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_4;
  v5[3] = &unk_278FA2628;
  v5[4] = self;
  objc_copyWeak(&v7, &location);
  v4 = v3;
  v6 = v4;
  [(DOCDownloadProgressView *)self _addToPendingAnimationQueue:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

uint64_t __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_2;
  v3[3] = &unk_278FA1C30;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_3;
  v2[3] = &unk_278FA2420;
  v2[4] = v4;
  return [MEMORY[0x277D75D18] animateWithDuration:134 delay:v3 options:v2 animations:5.0 completion:0.0];
}

uint64_t __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _setProgress:0 animated:0 completion:0.0];
  }

  return result;
}

void __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] progress];
  if (v4 == 0.0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_5;
    v6[3] = &unk_278FA25D8;
    v7 = a1[5];
    v8 = v3;
    [WeakRetained _setProgress:1 animated:v6 completion:0.0];
  }

  else
  {
    (*(a1[5] + 2))();
    (*(v3 + 2))(v3, 1);
  }
}

uint64_t __59__DOCDownloadProgressView_beginGraduallyIncreasingProgress__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fadeoutWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke;
  v6[3] = &unk_278FA2650;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(DOCDownloadProgressView *)self _addToPendingAnimationQueue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke_2;
  v9[3] = &unk_278FA1C80;
  objc_copyWeak(&v10, (a1 + 40));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke_3;
  v6[3] = &unk_278FA25D8;
  v7 = *(a1 + 32);
  v5 = v3;
  v8 = v5;
  [v4 animateWithDuration:v9 animations:v6 completion:0.25];

  objc_destroyWeak(&v10);
}

void __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained determinateProgressRingView];
  [v3 setAlpha:0.0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 ghostRingView];
  [v5 setAlpha:0.0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v6 = [v7 indeterminateProgressRingView];
  [v6 setAlpha:0.0];
}

uint64_t __49__DOCDownloadProgressView_fadeoutWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)animateToFullRingAndHideWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke;
  v6[3] = &unk_278FA2650;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(DOCDownloadProgressView *)self _addToPendingAnimationQueue:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained determinateProgressRingView];
  v6 = [v5 layer];
  v7 = [v6 presentationLayer];
  [v7 strokeEnd];
  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 determinateProgressRingView];
  v12 = [v11 layer];
  [v12 removeAllAnimations];

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 _setProgress:0 animated:0 completion:v9];

  v14 = objc_loadWeakRetained((a1 + 40));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_2;
  v16[3] = &unk_278FA26A0;
  objc_copyWeak(&v19, (a1 + 40));
  v17 = *(a1 + 32);
  v15 = v3;
  v18 = v15;
  [v14 _setProgress:1 animated:v16 completion:1.0];

  objc_destroyWeak(&v19);
}

void __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_2(id *a1)
{
  v2 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_3;
  v7[3] = &unk_278FA1C80;
  objc_copyWeak(&v8, a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_4;
  v3[3] = &unk_278FA2678;
  v4 = a1[4];
  objc_copyWeak(&v6, a1 + 6);
  v5 = a1[5];
  [v2 animateWithDuration:v7 animations:v3 completion:0.25];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
}

void __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained determinateProgressRingView];
  [v3 setAlpha:0.0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 ghostRingView];
  [v5 setAlpha:0.0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v6 = [v7 indeterminateProgressRingView];
  [v6 setAlpha:0.0];
}

uint64_t __66__DOCDownloadProgressView_animateToFullRingAndHideWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setGraduallyIncreasingProgress:0];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (CGSize)intrinsicContentSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    observedProgress = self->_observedProgress;
    if (observedProgress)
    {

      [(NSProgress *)observedProgress cancel];
    }
  }
}

void __55__DOCDownloadProgressView__addToPendingAnimationQueue___block_invoke_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_2493AC000, log, OS_LOG_TYPE_DEBUG, "%@ | --_addToPendingAnimationQueue--\tResuming queue. Anim finished: %d.", &v4, 0x12u);
}

@end