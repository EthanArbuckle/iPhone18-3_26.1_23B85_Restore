@interface CAMViewfinderOpenAndCloseTransition
- (CAMViewfinderOpenAndCloseTransition)initWithTransitionableViewfinder:(id)viewfinder;
- (CAMViewfinderTransitionable)_transitionableViewfinder;
- (id)_existingSnapshotViewCreateIfNecessary:(BOOL)necessary removedOnCompletion:(BOOL)completion;
- (void)_closeViewfinder:(BOOL)viewfinder animated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)closeWithoutBlurring;
@end

@implementation CAMViewfinderOpenAndCloseTransition

- (CAMViewfinderOpenAndCloseTransition)initWithTransitionableViewfinder:(id)viewfinder
{
  viewfinderCopy = viewfinder;
  v9.receiver = self;
  v9.super_class = CAMViewfinderOpenAndCloseTransition;
  v5 = [(CAMViewfinderOpenAndCloseTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__transitionableViewfinder, viewfinderCopy);
    v6->_didEnterBackground = 0;
    v7 = v6;
  }

  return v6;
}

- (id)_existingSnapshotViewCreateIfNecessary:(BOOL)necessary removedOnCompletion:(BOOL)completion
{
  completionCopy = completion;
  necessaryCopy = necessary;
  _snapshotView = [(CAMViewfinderOpenAndCloseTransition *)self _snapshotView];
  if (!_snapshotView && necessaryCopy)
  {
    _transitionableViewfinder = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
    previewView = [_transitionableViewfinder previewView];
    superview = [previewView superview];
    _snapshotView = -[CAMSnapshotView initWithView:desiredAspectRatio:]([CAMSnapshotView alloc], "initWithView:desiredAspectRatio:", previewView, [_transitionableViewfinder desiredAspectRatio]);
    [superview insertSubview:_snapshotView aboveSubview:previewView];
    [(CAMViewfinderOpenAndCloseTransition *)self _setSnapshotView:_snapshotView];
  }

  if (_snapshotView && completionCopy)
  {
    [(CAMViewfinderOpenAndCloseTransition *)self _setSnapshotView:0];
  }

  return _snapshotView;
}

- (void)_closeViewfinder:(BOOL)viewfinder animated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  viewfinderCopy = viewfinder;
  handlerCopy = handler;
  CAMSignpostWithIDAndArgs(5, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v9 = [(CAMViewfinderOpenAndCloseTransition *)self _existingSnapshotViewCreateIfNecessary:viewfinderCopy removedOnCompletion:viewfinderCopy ^ 1];
  _transitionableViewfinder = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
  previewView = [_transitionableViewfinder previewView];
  [previewView setHidden:viewfinderCopy];

  objc_initWeak(&location, v9);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __87__CAMViewfinderOpenAndCloseTransition__closeViewfinder_animated_withCompletionHandler___block_invoke;
  v19 = &unk_1E76FABE8;
  v22 = !viewfinderCopy;
  objc_copyWeak(&v21, &location);
  v12 = handlerCopy;
  v20 = v12;
  v13 = _Block_copy(&v16);
  v14 = [(CAMViewfinderOpenAndCloseTransition *)self didEnterBackground:v16];
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  if (!v14 && !viewfinderCopy)
  {
    if (([v9 blurred] & 1) == 0)
    {
      [v9 fadeOutAnimatedWithStyle:0 completion:v13];
      goto LABEL_9;
    }

    v15 = 0;
  }

  [v9 setBlurred:viewfinderCopy animated:animatedCopy style:v15 withCompletionBlock:v13];
LABEL_9:

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __87__CAMViewfinderOpenAndCloseTransition__closeViewfinder_animated_withCompletionHandler___block_invoke(uint64_t a1)
{
  CAMSignpostWithIDAndArgs(6, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained removeFromSuperview];
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)closeWithoutBlurring
{
  v3 = [(CAMViewfinderOpenAndCloseTransition *)self _existingSnapshotViewCreateIfNecessary:1 removedOnCompletion:0];
  _transitionableViewfinder = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
  previewView = [_transitionableViewfinder previewView];
  [previewView setHidden:1];
}

- (CAMViewfinderTransitionable)_transitionableViewfinder
{
  WeakRetained = objc_loadWeakRetained(&self->__transitionableViewfinder);

  return WeakRetained;
}

@end