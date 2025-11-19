@interface CCUIStatusLabelViewController
- (CCUIStatusLabelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CCUIStatusLabelViewControllerDelegate)delegate;
- (UIEdgeInsets)edgeInsets;
- (unint64_t)_advancePresentationStateFromFadeIn;
- (unint64_t)_advancePresentationStateFromPresenting;
- (unint64_t)_advancePresentationStateFromReady;
- (unint64_t)verticalAlignment;
- (void)_advancePresentationState;
- (void)_notifyDelegateDidFinishStatusUpdates;
- (void)_notifyDelegateWillBeginStatusUpdates;
- (void)_resetPresentationStateAnimated:(BOOL)a3;
- (void)enqueueStatusUpdate:(id)a3 forIdentifier:(id)a4;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setVerticalAlignment:(unint64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUIStatusLabelViewController

- (void)viewWillLayoutSubviews
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CCUIStatusLabelViewController;
  [(CCUIStatusLabelViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(CCUIStatusLabelViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_statusLabels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setFrame:{0.0, 0.0, v5, v7, v13}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (CCUIStatusLabelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = CCUIStatusLabelViewController;
  v4 = [(CCUIStatusLabelViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(CCUIStatusUpdateQueue);
    updateQueue = v4->_updateQueue;
    v4->_updateQueue = v5;
  }

  return v4;
}

- (UIEdgeInsets)edgeInsets
{
  v2 = [(NSArray *)self->_statusLabels firstObject];
  [v2 edgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v18 = *MEMORY[0x277D85DE8];
  [(CCUIStatusLabelViewController *)self loadViewIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_statusLabels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setEdgeInsets:{top, left, bottom, right, v13}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (unint64_t)verticalAlignment
{
  v2 = [(NSArray *)self->_statusLabels firstObject];
  v3 = [v2 verticalAlignment];

  return v3;
}

- (void)setVerticalAlignment:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  [(CCUIStatusLabelViewController *)self loadViewIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_statusLabels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setVerticalAlignment:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)enqueueStatusUpdate:(id)a3 forIdentifier:(id)a4
{
  [(CCUIStatusUpdateQueue *)self->_updateQueue enqueueStatusUpdate:a3 forIdentifier:a4];
  if (!self->_presentationState)
  {

    [(CCUIStatusLabelViewController *)self _advancePresentationState];
  }
}

- (void)viewDidLoad
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = CCUIStatusLabelViewController;
  [(CCUIStatusLabelViewController *)&v18 viewDidLoad];
  v3 = objc_alloc_init(CCUIStatusLabel);
  v20[0] = v3;
  v4 = objc_alloc_init(CCUIStatusLabel);
  v20[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  statusLabels = self->_statusLabels;
  self->_statusLabels = v5;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_statusLabels;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [(CCUIStatusLabelViewController *)self view];
        [v13 addSubview:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  [(CCUIStatusLabelViewController *)self _resetPresentationStateAnimated:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CCUIStatusLabelViewController;
  [(CCUIStatusLabelViewController *)&v5 viewWillDisappear:?];
  [(CCUIStatusLabelViewController *)self _resetPresentationStateAnimated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CCUIStatusLabelViewController;
  [(CCUIStatusLabelViewController *)&v4 viewDidDisappear:a3];
  [(CCUIStatusLabelViewController *)self _resetPresentationStateAnimated:0];
}

- (void)_resetPresentationStateAnimated:(BOOL)a3
{
  v3 = a3;
  [(CCUIStatusUpdateQueue *)self->_updateQueue removeAllStatusUpdates];
  [(NSTimer *)self->_presentationTimer invalidate];
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke;
    v7[3] = &unk_278381DF0;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke_2;
    v6[3] = &unk_278382888;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.3];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke_4;
    v5[3] = &unk_278381DF0;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }

  self->_presentationState = 0;
}

void __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 1000);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _fadeOutStatusLabel:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke_3;
  v11[3] = &unk_278381DF0;
  v11[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] animateWithDuration:v11 animations:0.3];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 1000);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setText:{0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t __65__CCUIStatusLabelViewController__resetPresentationStateAnimated___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 1000);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [*(a1 + 32) _fadeOutStatusLabel:{v7, v9}];
        [v7 setText:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _notifyDelegateDidFinishStatusUpdates];
}

- (void)_advancePresentationState
{
  presentationState = self->_presentationState;
  if (presentationState > 1)
  {
    if (presentationState == 2)
    {
      v4 = [(CCUIStatusLabelViewController *)self _advancePresentationStateFromPresenting];
    }

    else
    {
      if (presentationState != 3)
      {
        return;
      }

      v4 = [(CCUIStatusLabelViewController *)self _advancePresentationStateFromFadeOut];
    }
  }

  else if (presentationState)
  {
    if (presentationState != 1)
    {
      return;
    }

    v4 = [(CCUIStatusLabelViewController *)self _advancePresentationStateFromFadeIn];
  }

  else
  {
    v4 = [(CCUIStatusLabelViewController *)self _advancePresentationStateFromReady];
  }

  self->_presentationState = v4;
}

- (unint64_t)_advancePresentationStateFromReady
{
  v3 = [(CCUIStatusUpdateQueue *)self->_updateQueue dequeueNextStatusUpdate];
  if (v3)
  {
    v4 = self->_currentStatusLabelIndex + 1;
    self->_currentStatusLabelIndex = v4 % [(NSArray *)self->_statusLabels count];
    v5 = [(NSArray *)self->_statusLabels objectAtIndex:?];
    v6 = [v3 message];
    [v5 setText:v6];
    v7 = [(CCUIStatusLabelViewController *)self view];
    [v7 setNeedsLayout];

    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke;
    v16[3] = &unk_278381DF0;
    v16[4] = self;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_2;
    v13[3] = &unk_2783828D8;
    objc_copyWeak(&v15, &location);
    v9 = v5;
    v14 = v9;
    [v8 animateWithDuration:v16 animations:v13 completion:0.3];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    v10 = 1;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_5;
    v12[3] = &unk_278381DF0;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0.3];
    v10 = 0;
  }

  return v10;
}

void __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D75D18];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_3;
    v6[3] = &unk_2783828B0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_4;
    v4[3] = &unk_2783826A8;
    objc_copyWeak(&v5, (a1 + 40));
    [v3 animateWithDuration:v6 animations:v4 completion:0.3];
    objc_destroyWeak(&v5);

    objc_destroyWeak(&v8);
  }
}

void __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fadeInStatusLabel:*(a1 + 32)];
}

void __67__CCUIStatusLabelViewController__advancePresentationStateFromReady__block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _advancePresentationState];
  }
}

- (unint64_t)_advancePresentationStateFromFadeIn
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__CCUIStatusLabelViewController__advancePresentationStateFromFadeIn__block_invoke;
  v7[3] = &unk_278382900;
  objc_copyWeak(&v8, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
  presentationTimer = self->_presentationTimer;
  self->_presentationTimer = v4;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return 2;
}

void __68__CCUIStatusLabelViewController__advancePresentationStateFromFadeIn__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[128];
    WeakRetained[128] = 0;
    v3 = WeakRetained;

    [v3 _advancePresentationState];
    WeakRetained = v3;
  }
}

- (unint64_t)_advancePresentationStateFromPresenting
{
  v3 = [(CCUIStatusUpdateQueue *)self->_updateQueue dequeueNextStatusUpdate];
  v4 = [(NSArray *)self->_statusLabels objectAtIndex:self->_currentStatusLabelIndex];
  if (v3)
  {
    v5 = self->_currentStatusLabelIndex + 1;
    self->_currentStatusLabelIndex = v5 % [(NSArray *)self->_statusLabels count];
    v6 = [(NSArray *)self->_statusLabels objectAtIndex:?];
    v7 = [v3 message];
    [v6 setText:v7];

    v8 = [(CCUIStatusLabelViewController *)self view];
    [v8 setNeedsLayout];

    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke;
    v22[3] = &unk_2783828B0;
    objc_copyWeak(&v24, &location);
    v23 = v4;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_2;
    v19[3] = &unk_2783828D8;
    objc_copyWeak(&v21, &location);
    v10 = v6;
    v20 = v10;
    [v9 animateWithDuration:v22 animations:v19 completion:0.3];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    v11 = 1;
  }

  else
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_5;
    v16[3] = &unk_2783828B0;
    objc_copyWeak(&v18, &location);
    v17 = v4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_6;
    v14[3] = &unk_2783826A8;
    objc_copyWeak(&v15, &location);
    [v12 animateWithDuration:v16 animations:v14 completion:1.0];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    v11 = 3;
  }

  return v11;
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fadeOutStatusLabel:*(a1 + 32)];
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = MEMORY[0x277D75D18];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_3;
    v6[3] = &unk_2783828B0;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_4;
    v4[3] = &unk_2783826A8;
    objc_copyWeak(&v5, (a1 + 40));
    [v3 animateWithDuration:v6 animations:v4 completion:0.3];
    objc_destroyWeak(&v5);

    objc_destroyWeak(&v8);
  }
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fadeInStatusLabel:*(a1 + 32)];
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _advancePresentationState];
  }
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fadeOutStatusLabel:*(a1 + 32)];
}

void __72__CCUIStatusLabelViewController__advancePresentationStateFromPresenting__block_invoke_6(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _advancePresentationState];
  }
}

- (void)_notifyDelegateWillBeginStatusUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 statusLabelViewControllerWillBeginStatusUpdates:self];
  }
}

- (void)_notifyDelegateDidFinishStatusUpdates
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 statusLabelViewControllerDidFinishStatusUpdates:self];
  }
}

- (CCUIStatusLabelViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end