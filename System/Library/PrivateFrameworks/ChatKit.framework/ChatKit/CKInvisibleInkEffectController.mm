@interface CKInvisibleInkEffectController
- (CKInvisibleInkEffectController)initWithHostView:(id)a3;
- (CKInvisibleInkEffectHostView)hostView;
- (CKInvisibleInkEffectView)effectView;
- (id)borrowEffectView;
- (void)_updateBorrowedEffectViewSnapshot;
- (void)dealloc;
- (void)hostViewDidLayoutSubviews;
- (void)hostViewDidUpdateSnapshot:(id)a3;
- (void)invisibleInkEffectViewWasUncovered:(id)a3;
- (void)prepareForDisplay;
- (void)returnBorrowedEffectView;
- (void)setEnabled:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setSuspended:(BOOL)a3;
- (void)suspendForTimeInterval:(double)a3;
@end

@implementation CKInvisibleInkEffectController

- (CKInvisibleInkEffectController)initWithHostView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKInvisibleInkEffectController;
  v5 = [(CKInvisibleInkEffectController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostView, v4);
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(CKInvisibleInkEffectController *)self resumeTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CKInvisibleInkEffectController;
  [(CKInvisibleInkEffectController *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled == !a3)
  {
    block[7] = v3;
    block[8] = v4;
    self->_enabled = a3;
    [(CKInvisibleInkEffectController *)self setEffectViewNeedsReset:1];
    [(CKInvisibleInkEffectController *)self setSuspended:0];
    v6 = [(CKInvisibleInkEffectController *)self resumeTimer];
    [v6 invalidate];

    if (!self->_enabled)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__CKInvisibleInkEffectController_setEnabled___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __45__CKInvisibleInkEffectController_setEnabled___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEnabled] & 1) == 0)
  {
    v2 = [*(a1 + 32) effectView];

    if (v2)
    {
      v3 = [*(a1 + 32) hostView];
      [v3 detachInvisibleInkEffectView];

      v4 = *(a1 + 32);

      [v4 setEffectView:0];
    }
  }
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended == !a3)
  {
    v4 = a3;
    self->_suspended = a3;
    [(CKInvisibleInkEffectView *)self->_effectView setSuspended:?];
    v5 = [(CKInvisibleInkEffectController *)self hostView];
    v6 = v5;
    if (v4)
    {
      [v5 invisibleInkEffectViewWasSuspended];
    }

    else
    {
      [v5 invisibleInkEffectViewWasResumed];
    }
  }

  v7 = [(CKInvisibleInkEffectController *)self resumeTimer];
  [v7 invalidate];
}

- (void)suspendForTimeInterval:(double)a3
{
  [(CKInvisibleInkEffectController *)self setSuspended:1];
  v5 = [(CKInvisibleInkEffectController *)self resumeTimer];
  v6 = [v5 isValid];

  if (v6)
  {
    v8 = [(CKInvisibleInkEffectController *)self resumeTimer];
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
    [v8 setFireDate:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_resumeTimerFired_ selector:0 userInfo:0 repeats:a3];
    [(CKInvisibleInkEffectController *)self setResumeTimer:?];
  }
}

- (void)prepareForDisplay
{
  v11 = [(CKInvisibleInkEffectController *)self hostView];
  v3 = [(CKInvisibleInkEffectController *)self isEnabled];
  effectView = self->_effectView;
  if (v3)
  {
    if (effectView)
    {
      if ([(CKInvisibleInkEffectController *)self effectViewNeedsReset])
      {
        [(CKInvisibleInkEffectView *)self->_effectView reset];
      }

      [(CKInvisibleInkEffectView *)self->_effectView prepareForDisplay];
    }

    else
    {
      v6 = [(CKInvisibleInkEffectController *)self hostView];
      v7 = objc_alloc([v6 invisibleInkEffectViewClass]);
      [v11 bounds];
      v8 = [v7 initWithFrame:?];
      v9 = self->_effectView;
      self->_effectView = v8;

      [(CKInvisibleInkEffectView *)self->_effectView setAutoresizingMask:18];
      v10 = objc_alloc_init(CKInvisibleInkGestureRecognizer);
      [(CKInvisibleInkGestureRecognizer *)v10 setCancelsTouchesInView:0];
      [(CKInvisibleInkEffectView *)self->_effectView addGestureRecognizer:v10];
      [(CKInvisibleInkEffectView *)self->_effectView setDelegate:self];
      [(CKInvisibleInkEffectView *)self->_effectView setPaused:[(CKInvisibleInkEffectController *)self isPaused]];
      [(CKInvisibleInkEffectView *)self->_effectView setSuspended:[(CKInvisibleInkEffectController *)self isSuspended]];
      [v11 attachInvisibleInkEffectView];
    }

    [(CKInvisibleInkEffectController *)self setEffectViewNeedsReset:0];
  }

  else if (effectView)
  {
    [v11 detachInvisibleInkEffectView];
    v5 = self->_effectView;
    self->_effectView = 0;
  }
}

- (void)hostViewDidLayoutSubviews
{
  if ([(CKInvisibleInkEffectController *)self isEnabled])
  {
    effectView = self->_effectView;
    v5 = [(CKInvisibleInkEffectController *)self hostView];
    v4 = [v5 imageForInvisibleInkEffectView];
    [(CKInvisibleInkEffectView *)effectView setImage:v4];
  }
}

- (void)hostViewDidUpdateSnapshot:(id)a3
{
  v4 = a3;
  if ([(CKInvisibleInkEffectController *)self isEnabled])
  {
    [(CKInvisibleInkEffectView *)self->_effectView setImage:v4];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused == !a3)
  {
    self->_paused = a3;
    [(CKInvisibleInkEffectView *)self->_effectView setPaused:?];
  }
}

- (void)_updateBorrowedEffectViewSnapshot
{
  v4 = [(CKInvisibleInkEffectView *)self->_effectView snapshotViewAfterScreenUpdates:0];
  v3 = [(CKInvisibleInkEffectController *)self hostView];
  [v3 detachInvisibleInkEffectView];
  [(CKInvisibleInkEffectController *)self setBorrowedEffectViewSnapshot:v4];
  [v3 attachInvisibleInkEffectView];
}

- (id)borrowEffectView
{
  v3 = [(CKInvisibleInkEffectController *)self borrowedEffectViewSnapshot];

  if (!v3)
  {
    [(CKInvisibleInkEffectController *)self _updateBorrowedEffectViewSnapshot];
  }

  effectView = self->_effectView;

  return effectView;
}

- (void)returnBorrowedEffectView
{
  v3 = [(CKInvisibleInkEffectController *)self borrowedEffectViewSnapshot];

  if (v3)
  {
    v4 = [(CKInvisibleInkEffectController *)self hostView];
    [v4 detachInvisibleInkEffectView];
    [(CKInvisibleInkEffectController *)self setBorrowedEffectViewSnapshot:0];
    effectView = self->_effectView;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v6;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(CKInvisibleInkEffectView *)effectView setTransform:v8];
    v7 = self->_effectView;
    [v4 bounds];
    [(CKInvisibleInkEffectView *)v7 setFrame:?];
    [v4 attachInvisibleInkEffectView];
  }
}

- (CKInvisibleInkEffectView)effectView
{
  borrowedEffectViewSnapshot = self->_borrowedEffectViewSnapshot;
  if (!borrowedEffectViewSnapshot)
  {
    borrowedEffectViewSnapshot = self->_effectView;
  }

  return borrowedEffectViewSnapshot;
}

- (void)invisibleInkEffectViewWasUncovered:(id)a3
{
  v3 = [(CKInvisibleInkEffectController *)self hostView];
  [v3 invisibleInkEffectViewWasUncovered];
}

- (CKInvisibleInkEffectHostView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end