@interface CAMViewfinderTransitionController
- (CAMViewfinderTransitionable)target;
- (void)closeAndRotateWithDirection:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)closeWithBlur:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)handleApplicationDidEnterBackground;
- (void)openForReason:(int64_t)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
@end

@implementation CAMViewfinderTransitionController

- (void)closeWithBlur:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v11 = a5;
  v8 = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  if (!v8)
  {
    v9 = [CAMViewfinderOpenAndCloseTransition alloc];
    v10 = [(CAMViewfinderTransitionController *)self target];
    v8 = [(CAMViewfinderOpenAndCloseTransition *)v9 initWithTransitionableViewfinder:v10];

    [(CAMViewfinderTransitionController *)self _setOpenAndCloseTransition:v8];
  }

  if (v6)
  {
    [(CAMViewfinderOpenAndCloseTransition *)v8 closeAnimated:v5 withCompletionHandler:v11];
  }

  else
  {
    [(CAMViewfinderOpenAndCloseTransition *)v8 closeWithoutBlurring];
    if (v11)
    {
      v11[2]();
    }
  }
}

- (void)closeAndRotateWithDirection:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v9 = a4;
  v6 = [(CAMViewfinderTransitionController *)self _flipTransition];
  if (!v6)
  {
    v7 = [CAMViewfinderFlipTransition alloc];
    v8 = [(CAMViewfinderTransitionController *)self target];
    v6 = [(CAMViewfinderFlipTransition *)v7 initWithTransitionableViewfinder:v8];

    [(CAMViewfinderTransitionController *)self _setFlipTransition:v6];
  }

  [(CAMViewfinderFlipTransition *)v6 performFlipTransitionWithDirection:a3 completionHandler:v9];
}

- (void)openForReason:(int64_t)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  v9 = [(CAMViewfinderTransitionController *)self _flipTransition];
  v10 = v9;
  if (v8)
  {
    [(CAMViewfinderTransitionController *)self _setOpenAndCloseTransition:0];
    [v8 openAnimated:v5 withCompletionHandler:v7];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (v9)
  {
LABEL_5:
    [(CAMViewfinderTransitionController *)self _setFlipTransition:0];
    [v10 completeTransitionToLivePreviewWithCompletionHandler:v7];
    if (v8)
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Opened the viewfinder removing both an open/close and a flip transtion.", v13, 2u);
      }
    }

    goto LABEL_9;
  }

  v12 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CAMViewfinderTransitionController openForReason:v12 animated:? withCompletionHandler:?];
  }

  if (v7)
  {
    v7[2](v7);
  }

LABEL_9:
}

- (void)handleApplicationDidEnterBackground
{
  v2 = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  [v2 setDidEnterBackground:1];
}

- (CAMViewfinderTransitionable)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end