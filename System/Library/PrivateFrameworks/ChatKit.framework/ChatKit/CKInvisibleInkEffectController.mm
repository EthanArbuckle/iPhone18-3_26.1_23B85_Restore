@interface CKInvisibleInkEffectController
- (CKInvisibleInkEffectController)initWithHostView:(id)view;
- (CKInvisibleInkEffectHostView)hostView;
- (CKInvisibleInkEffectView)effectView;
- (id)borrowEffectView;
- (void)_updateBorrowedEffectViewSnapshot;
- (void)dealloc;
- (void)hostViewDidLayoutSubviews;
- (void)hostViewDidUpdateSnapshot:(id)snapshot;
- (void)invisibleInkEffectViewWasUncovered:(id)uncovered;
- (void)prepareForDisplay;
- (void)returnBorrowedEffectView;
- (void)setEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
- (void)setSuspended:(BOOL)suspended;
- (void)suspendForTimeInterval:(double)interval;
@end

@implementation CKInvisibleInkEffectController

- (CKInvisibleInkEffectController)initWithHostView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = CKInvisibleInkEffectController;
  v5 = [(CKInvisibleInkEffectController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostView, viewCopy);
  }

  return v6;
}

- (void)dealloc
{
  resumeTimer = [(CKInvisibleInkEffectController *)self resumeTimer];
  [resumeTimer invalidate];

  v4.receiver = self;
  v4.super_class = CKInvisibleInkEffectController;
  [(CKInvisibleInkEffectController *)&v4 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled == !enabled)
  {
    block[7] = v3;
    block[8] = v4;
    self->_enabled = enabled;
    [(CKInvisibleInkEffectController *)self setEffectViewNeedsReset:1];
    [(CKInvisibleInkEffectController *)self setSuspended:0];
    resumeTimer = [(CKInvisibleInkEffectController *)self resumeTimer];
    [resumeTimer invalidate];

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

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended == !suspended)
  {
    suspendedCopy = suspended;
    self->_suspended = suspended;
    [(CKInvisibleInkEffectView *)self->_effectView setSuspended:?];
    hostView = [(CKInvisibleInkEffectController *)self hostView];
    v6 = hostView;
    if (suspendedCopy)
    {
      [hostView invisibleInkEffectViewWasSuspended];
    }

    else
    {
      [hostView invisibleInkEffectViewWasResumed];
    }
  }

  resumeTimer = [(CKInvisibleInkEffectController *)self resumeTimer];
  [resumeTimer invalidate];
}

- (void)suspendForTimeInterval:(double)interval
{
  [(CKInvisibleInkEffectController *)self setSuspended:1];
  resumeTimer = [(CKInvisibleInkEffectController *)self resumeTimer];
  isValid = [resumeTimer isValid];

  if (isValid)
  {
    resumeTimer2 = [(CKInvisibleInkEffectController *)self resumeTimer];
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:interval];
    [resumeTimer2 setFireDate:v7];
  }

  else
  {
    resumeTimer2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_resumeTimerFired_ selector:0 userInfo:0 repeats:interval];
    [(CKInvisibleInkEffectController *)self setResumeTimer:?];
  }
}

- (void)prepareForDisplay
{
  hostView = [(CKInvisibleInkEffectController *)self hostView];
  isEnabled = [(CKInvisibleInkEffectController *)self isEnabled];
  effectView = self->_effectView;
  if (isEnabled)
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
      hostView2 = [(CKInvisibleInkEffectController *)self hostView];
      v7 = objc_alloc([hostView2 invisibleInkEffectViewClass]);
      [hostView bounds];
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
      [hostView attachInvisibleInkEffectView];
    }

    [(CKInvisibleInkEffectController *)self setEffectViewNeedsReset:0];
  }

  else if (effectView)
  {
    [hostView detachInvisibleInkEffectView];
    v5 = self->_effectView;
    self->_effectView = 0;
  }
}

- (void)hostViewDidLayoutSubviews
{
  if ([(CKInvisibleInkEffectController *)self isEnabled])
  {
    effectView = self->_effectView;
    hostView = [(CKInvisibleInkEffectController *)self hostView];
    imageForInvisibleInkEffectView = [hostView imageForInvisibleInkEffectView];
    [(CKInvisibleInkEffectView *)effectView setImage:imageForInvisibleInkEffectView];
  }
}

- (void)hostViewDidUpdateSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if ([(CKInvisibleInkEffectController *)self isEnabled])
  {
    [(CKInvisibleInkEffectView *)self->_effectView setImage:snapshotCopy];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused == !paused)
  {
    self->_paused = paused;
    [(CKInvisibleInkEffectView *)self->_effectView setPaused:?];
  }
}

- (void)_updateBorrowedEffectViewSnapshot
{
  v4 = [(CKInvisibleInkEffectView *)self->_effectView snapshotViewAfterScreenUpdates:0];
  hostView = [(CKInvisibleInkEffectController *)self hostView];
  [hostView detachInvisibleInkEffectView];
  [(CKInvisibleInkEffectController *)self setBorrowedEffectViewSnapshot:v4];
  [hostView attachInvisibleInkEffectView];
}

- (id)borrowEffectView
{
  borrowedEffectViewSnapshot = [(CKInvisibleInkEffectController *)self borrowedEffectViewSnapshot];

  if (!borrowedEffectViewSnapshot)
  {
    [(CKInvisibleInkEffectController *)self _updateBorrowedEffectViewSnapshot];
  }

  effectView = self->_effectView;

  return effectView;
}

- (void)returnBorrowedEffectView
{
  borrowedEffectViewSnapshot = [(CKInvisibleInkEffectController *)self borrowedEffectViewSnapshot];

  if (borrowedEffectViewSnapshot)
  {
    hostView = [(CKInvisibleInkEffectController *)self hostView];
    [hostView detachInvisibleInkEffectView];
    [(CKInvisibleInkEffectController *)self setBorrowedEffectViewSnapshot:0];
    effectView = self->_effectView;
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v6;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(CKInvisibleInkEffectView *)effectView setTransform:v8];
    v7 = self->_effectView;
    [hostView bounds];
    [(CKInvisibleInkEffectView *)v7 setFrame:?];
    [hostView attachInvisibleInkEffectView];
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

- (void)invisibleInkEffectViewWasUncovered:(id)uncovered
{
  hostView = [(CKInvisibleInkEffectController *)self hostView];
  [hostView invisibleInkEffectViewWasUncovered];
}

- (CKInvisibleInkEffectHostView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

@end