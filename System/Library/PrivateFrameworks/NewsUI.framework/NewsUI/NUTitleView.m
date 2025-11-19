@interface NUTitleView
- (CGRect)lastLayoutBounds;
- (NUTitleView)initWithStyler:(id)a3;
- (NUTitleViewDelegate)delegate;
- (id)createMaskingLayerForTranslation;
- (void)applyTitleViewUpdate:(id)a3 animation:(unint64_t)a4;
- (void)finishDisplayingTitleViewUpdate:(id)a3 finished:(id)a4;
- (void)layoutSubviews;
- (void)setStyler:(id)a3;
- (void)titleViewHandleTapGesture;
@end

@implementation NUTitleView

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = NUTitleView;
  [(NUTitleView *)&v30 layoutSubviews];
  v3 = [(NUTitleView *)self slideAnimator];
  if ([v3 isAnimating])
  {
    goto LABEL_5;
  }

  [(NUTitleView *)self lastLayoutBounds];
  v5 = v4;
  v7 = v6;
  [(NUTitleView *)self bounds];
  v9 = v8;
  v11 = v10;

  if (v5 != v9 || v7 != v11)
  {
    [(NUTitleView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(NUTitleView *)self titleView];
    [v20 setFrame:{v13, v15, v17, v19}];

    [(NUTitleView *)self bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(NUTitleView *)self incomingTitleView];
    [v29 setFrame:{v22, v24, v26, v28}];

    v3 = [(NUTitleView *)self titleView];
    [v3 relayoutWithAnimation:0];
LABEL_5:
  }

  [(NUTitleView *)self bounds];
  [(NUTitleView *)self setLastLayoutBounds:?];
}

- (CGRect)lastLayoutBounds
{
  x = self->_lastLayoutBounds.origin.x;
  y = self->_lastLayoutBounds.origin.y;
  width = self->_lastLayoutBounds.size.width;
  height = self->_lastLayoutBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NUTitleView)initWithStyler:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = NUTitleView;
  v6 = MEMORY[0x277CBF3A0];
  v7 = [(NUTitleView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_styler, a3);
    v9 = objc_alloc_init(NUAnimationQueue);
    animationQueue = v8->_animationQueue;
    v8->_animationQueue = v9;

    v11 = [NUSlideViewAnimator alloc];
    [(NUTitleView *)v8 bounds];
    v12 = [(NUSlideViewAnimator *)v11 initWithBounds:?];
    slideAnimator = v8->_slideAnimator;
    v8->_slideAnimator = v12;

    v14 = NUTranslationAnimationTimingFunction();
    [(NUSlideViewAnimator *)v8->_slideAnimator setMediaTimingFunction:v14];

    v15 = objc_alloc_init(NUFadeViewAnimator);
    fadeAnimator = v8->_fadeAnimator;
    v8->_fadeAnimator = v15;

    v17 = v6[1];
    v8->_lastLayoutBounds.origin = *v6;
    v8->_lastLayoutBounds.size = v17;
    v18 = [[NUCrossFadeTitleView alloc] initWithStyler:v5];
    titleView = v8->_titleView;
    v8->_titleView = v18;

    [(NUCrossFadeTitleView *)v8->_titleView setAutoresizingMask:2];
    [(NUCrossFadeTitleView *)v8->_titleView setClipsToBounds:1];
    [(NUTitleView *)v8 addSubview:v8->_titleView];
    v20 = [[NUCrossFadeTitleView alloc] initWithStyler:v5];
    incomingTitleView = v8->_incomingTitleView;
    v8->_incomingTitleView = v20;

    [(NUCrossFadeTitleView *)v8->_incomingTitleView setAutoresizingMask:2];
    [(NUCrossFadeTitleView *)v8->_incomingTitleView setClipsToBounds:1];
    [(NUTitleView *)v8 insertSubview:v8->_incomingTitleView belowSubview:v8->_titleView];
    v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v8 action:sel_titleViewHandleTapGesture];
    [(NUTitleView *)v8 addGestureRecognizer:v22];
    [(UIView *)v8 nu_supportViewDebugging];
  }

  return v8;
}

- (void)setStyler:(id)a3
{
  objc_storeStrong(&self->_styler, a3);
  v5 = a3;
  v6 = [(NUTitleView *)self titleView];
  [v6 setStyler:v5];

  v7 = [(NUTitleView *)self incomingTitleView];
  [v7 setStyler:v5];
}

- (void)applyTitleViewUpdate:(id)a3 animation:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    if ([MEMORY[0x277D75D18] areAnimationsEnabled])
    {
      v7 = a4;
    }

    else
    {
      v7 = 3;
    }

    if ([v6 shouldCancelPendingUpdates])
    {
      v8 = [(NUTitleView *)self animationQueue];
      [v8 cancel];

      v9 = [(NUTitleView *)self lingerSemaphore];

      if (v9)
      {
        v10 = [(NUTitleView *)self lingerSemaphore];
        dispatch_semaphore_signal(v10);

        [(NUTitleView *)self setLingerSemaphore:0];
      }
    }

    objc_initWeak(&location, self);
    v11 = [(NUTitleView *)self animationQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_2;
    v18 = &unk_2799A3CA8;
    objc_copyWeak(v20, &location);
    v20[1] = v7;
    v12 = v6;
    v19 = v12;
    [v11 addAnimation:&v15];

    v13 = [v12 accessibilityTitle];
    [(NUTitleView *)self setAccessibilityLabel:v13];

    v14 = [(NUTitleView *)self accessibilityLabel];
    [(NUTitleView *)self setIsAccessibilityElement:v14 != 0];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [MEMORY[0x277CCACC8] isMainThread];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = dispatch_semaphore_create(0);
    [v6 setLingerSemaphore:v7];

    v8 = *(a1 + 48);
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v33 = [v6 incomingTitleView];
        [v33 updateTitleViewWithUpdate:*(a1 + 32) animated:0 completion:0];

        v34 = [v6 incomingTitleView];
        [v34 setAlpha:0.0];

        v24 = [v6 fadeAnimator];
        v25 = [v6 titleView];
        v26 = [v6 incomingTitleView];
        v27 = v37;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_6;
        v37[3] = &unk_2799A3328;
        v28 = &v38;
        objc_copyWeak(&v38, (a1 + 40));
        v37[4] = *(a1 + 32);
        v37[5] = v3;
        [v24 fadeFromView:v25 toView:v26 completion:v37];
        goto LABEL_10;
      }

      if (v8 != 3)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v9 = [v6 incomingTitleView];
        [v9 updateTitleViewWithUpdate:*(a1 + 32) animated:0 completion:0];

        v10 = [v6 createMaskingLayerForTranslation];
        v11 = [v6 layer];
        [v11 setMask:v10];

        v12 = [v6 incomingTitleView];
        [v12 setAlpha:1.0];

        v13 = [v6 layer];
        v14 = [v13 mask];
        [v14 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = [v6 slideAnimator];
        [v23 setBounds:{v16, v18, v20, v22}];

        v24 = [v6 slideAnimator];
        v25 = [v6 titleView];
        v26 = [v6 incomingTitleView];
        v27 = v35;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_8;
        v35[3] = &unk_2799A3328;
        v28 = &v36;
        objc_copyWeak(&v36, (a1 + 40));
        v35[4] = *(a1 + 32);
        v35[5] = v3;
        [v24 translateFromView:v25 toView:v26 direction:0 completion:v35];
LABEL_10:
        v31 = (v27 + 4);
        v32 = (v27 + 5);

        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v29 = v8 == 0;
    v24 = [v6 titleView];
    v30 = *(a1 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_4;
    v39[3] = &unk_2799A3328;
    v28 = &v42;
    objc_copyWeak(&v42, (a1 + 40));
    v40 = *(a1 + 32);
    v41 = v3;
    [v24 updateTitleViewWithUpdate:v30 animated:v29 completion:v39];
    v31 = &v40;
    v32 = &v41;
LABEL_11:

    objc_destroyWeak(v28);
    goto LABEL_12;
  }

LABEL_13:
}

void __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishDisplayingTitleViewUpdate:*(a1 + 32) finished:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = WeakRetained;
    v4 = [v3 titleView];
    [v3 sendSubviewToBack:v4];
    v5 = [v3 incomingTitleView];
    [v3 setTitleView:v5];

    [v3 setIncomingTitleView:v4];
    v6 = [v3 incomingTitleView];
    [v6 setAlpha:0.0];

    v7 = [v3 layer];
    [v7 setMask:0];

    [v3 finishDisplayingTitleViewUpdate:*(a1 + 32) finished:*(a1 + 40)];
    WeakRetained = v8;
  }
}

void __46__NUTitleView_applyTitleViewUpdate_animation___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = WeakRetained;
    v4 = [v3 titleView];
    [v3 sendSubviewToBack:v4];
    v5 = [v3 incomingTitleView];
    [v3 setTitleView:v5];

    [v3 setIncomingTitleView:v4];
    v6 = [v3 incomingTitleView];
    [v6 setAlpha:0.0];

    v7 = [v3 layer];
    [v7 setMask:0];

    [v3 finishDisplayingTitleViewUpdate:*(a1 + 32) finished:*(a1 + 40)];
    WeakRetained = v8;
  }
}

- (void)titleViewHandleTapGesture
{
  v3 = [(NUTitleView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NUTitleView *)self delegate];
    [v5 titleViewDidTapOnTitleView:self];
  }
}

- (void)finishDisplayingTitleViewUpdate:(id)a3 finished:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _UIAccessibilityFocusedElements();
  if ([v8 containsObject:self])
  {
LABEL_5:

    goto LABEL_6;
  }

  v9 = [v6 shouldSpeakAccessibilityTitleWhenDisplayed];

  if (v9)
  {
    v8 = [v6 accessibilityTitle];
    if (v8)
    {
      UIAccessibilitySpeakOrQueueIfNeeded();
    }

    goto LABEL_5;
  }

LABEL_6:
  [v6 lingerTimeInterval];
  if (v10 == 0.0 || ([(NUTitleView *)self lingerSemaphore], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v7[2](v7);
  }

  else
  {
    v12 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__NUTitleView_finishDisplayingTitleViewUpdate_finished___block_invoke;
    block[3] = &unk_2799A3170;
    block[4] = self;
    v14 = v6;
    v15 = v7;
    dispatch_async(v12, block);
  }
}

void __56__NUTitleView_finishDisplayingTitleViewUpdate_finished___block_invoke(id *a1)
{
  v2 = [a1[4] lingerSemaphore];
  [a1[5] lingerTimeInterval];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  dispatch_semaphore_wait(v2, v4);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NUTitleView_finishDisplayingTitleViewUpdate_finished___block_invoke_2;
  block[3] = &unk_2799A3148;
  v6 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)createMaskingLayerForTranslation
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EB0] layer];
  v4 = [(NUTitleView *)self titleView];
  [v4 visibleFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NUTitleView *)self incomingTitleView];
  [v13 visibleFrame];
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  v27.origin.x = v6;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  v28 = CGRectUnion(v27, v29);
  [v3 setFrame:{v28.origin.x, v28.origin.y, v28.size.width, v28.size.height}];

  [(NUTitleView *)self center];
  [v3 setPosition:?];
  v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  v25[0] = [v18 CGColor];
  v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  v25[1] = [v19 CGColor];
  v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  v25[2] = [v20 CGColor];
  v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  v25[3] = [v21 CGColor];
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v3 setColors:v22];

  [v3 setLocations:&unk_286E12E78];
  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NUTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end