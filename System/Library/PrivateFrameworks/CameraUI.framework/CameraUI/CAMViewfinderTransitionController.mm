@interface CAMViewfinderTransitionController
- (CAMViewfinderTransitionable)target;
- (void)closeAndRotateWithDirection:(unint64_t)direction withCompletionHandler:(id)handler;
- (void)closeWithBlur:(BOOL)blur animated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)handleApplicationDidEnterBackground;
- (void)openForReason:(int64_t)reason animated:(BOOL)animated withCompletionHandler:(id)handler;
@end

@implementation CAMViewfinderTransitionController

- (void)closeWithBlur:(BOOL)blur animated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  blurCopy = blur;
  handlerCopy = handler;
  _openAndCloseTransition = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  if (!_openAndCloseTransition)
  {
    v9 = [CAMViewfinderOpenAndCloseTransition alloc];
    target = [(CAMViewfinderTransitionController *)self target];
    _openAndCloseTransition = [(CAMViewfinderOpenAndCloseTransition *)v9 initWithTransitionableViewfinder:target];

    [(CAMViewfinderTransitionController *)self _setOpenAndCloseTransition:_openAndCloseTransition];
  }

  if (blurCopy)
  {
    [(CAMViewfinderOpenAndCloseTransition *)_openAndCloseTransition closeAnimated:animatedCopy withCompletionHandler:handlerCopy];
  }

  else
  {
    [(CAMViewfinderOpenAndCloseTransition *)_openAndCloseTransition closeWithoutBlurring];
    if (handlerCopy)
    {
      handlerCopy[2]();
    }
  }
}

- (void)closeAndRotateWithDirection:(unint64_t)direction withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _flipTransition = [(CAMViewfinderTransitionController *)self _flipTransition];
  if (!_flipTransition)
  {
    v7 = [CAMViewfinderFlipTransition alloc];
    target = [(CAMViewfinderTransitionController *)self target];
    _flipTransition = [(CAMViewfinderFlipTransition *)v7 initWithTransitionableViewfinder:target];

    [(CAMViewfinderTransitionController *)self _setFlipTransition:_flipTransition];
  }

  [(CAMViewfinderFlipTransition *)_flipTransition performFlipTransitionWithDirection:direction completionHandler:handlerCopy];
}

- (void)openForReason:(int64_t)reason animated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  _openAndCloseTransition = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  _flipTransition = [(CAMViewfinderTransitionController *)self _flipTransition];
  v10 = _flipTransition;
  if (_openAndCloseTransition)
  {
    [(CAMViewfinderTransitionController *)self _setOpenAndCloseTransition:0];
    [_openAndCloseTransition openAnimated:animatedCopy withCompletionHandler:handlerCopy];
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  if (_flipTransition)
  {
LABEL_5:
    [(CAMViewfinderTransitionController *)self _setFlipTransition:0];
    [v10 completeTransitionToLivePreviewWithCompletionHandler:handlerCopy];
    if (_openAndCloseTransition)
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_9:
}

- (void)handleApplicationDidEnterBackground
{
  _openAndCloseTransition = [(CAMViewfinderTransitionController *)self _openAndCloseTransition];
  [_openAndCloseTransition setDidEnterBackground:1];
}

- (CAMViewfinderTransitionable)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end