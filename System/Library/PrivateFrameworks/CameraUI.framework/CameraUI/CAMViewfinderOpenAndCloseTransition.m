@interface CAMViewfinderOpenAndCloseTransition
- (CAMViewfinderOpenAndCloseTransition)initWithTransitionableViewfinder:(id)a3;
- (CAMViewfinderTransitionable)_transitionableViewfinder;
- (id)_existingSnapshotViewCreateIfNecessary:(BOOL)a3 removedOnCompletion:(BOOL)a4;
- (void)_closeViewfinder:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)closeWithoutBlurring;
@end

@implementation CAMViewfinderOpenAndCloseTransition

- (CAMViewfinderOpenAndCloseTransition)initWithTransitionableViewfinder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CAMViewfinderOpenAndCloseTransition;
  v5 = [(CAMViewfinderOpenAndCloseTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__transitionableViewfinder, v4);
    v6->_didEnterBackground = 0;
    v7 = v6;
  }

  return v6;
}

- (id)_existingSnapshotViewCreateIfNecessary:(BOOL)a3 removedOnCompletion:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CAMViewfinderOpenAndCloseTransition *)self _snapshotView];
  if (!v7 && v5)
  {
    v8 = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
    v9 = [v8 previewView];
    v10 = [v9 superview];
    v7 = -[CAMSnapshotView initWithView:desiredAspectRatio:]([CAMSnapshotView alloc], "initWithView:desiredAspectRatio:", v9, [v8 desiredAspectRatio]);
    [v10 insertSubview:v7 aboveSubview:v9];
    [(CAMViewfinderOpenAndCloseTransition *)self _setSnapshotView:v7];
  }

  if (v7 && v4)
  {
    [(CAMViewfinderOpenAndCloseTransition *)self _setSnapshotView:0];
  }

  return v7;
}

- (void)_closeViewfinder:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  CAMSignpostWithIDAndArgs(5, 0xEEEEB0B5B2B2EEEELL, 0, 0, 0, 0);
  v9 = [(CAMViewfinderOpenAndCloseTransition *)self _existingSnapshotViewCreateIfNecessary:v6 removedOnCompletion:v6 ^ 1];
  v10 = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
  v11 = [v10 previewView];
  [v11 setHidden:v6];

  objc_initWeak(&location, v9);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __87__CAMViewfinderOpenAndCloseTransition__closeViewfinder_animated_withCompletionHandler___block_invoke;
  v19 = &unk_1E76FABE8;
  v22 = !v6;
  objc_copyWeak(&v21, &location);
  v12 = v8;
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

  if (!v14 && !v6)
  {
    if (([v9 blurred] & 1) == 0)
    {
      [v9 fadeOutAnimatedWithStyle:0 completion:v13];
      goto LABEL_9;
    }

    v15 = 0;
  }

  [v9 setBlurred:v6 animated:v5 style:v15 withCompletionBlock:v13];
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
  v5 = [(CAMViewfinderOpenAndCloseTransition *)self _transitionableViewfinder];
  v4 = [v5 previewView];
  [v4 setHidden:1];
}

- (CAMViewfinderTransitionable)_transitionableViewfinder
{
  WeakRetained = objc_loadWeakRetained(&self->__transitionableViewfinder);

  return WeakRetained;
}

@end