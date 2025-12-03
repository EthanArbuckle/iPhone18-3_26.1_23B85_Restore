@interface CEKAnimationSequence
- (CEKAnimationSequence)initWithAnimations:(id)animations completionHandler:(id)handler;
- (void)_notifyCompletionWithSuccess:(BOOL)success;
- (void)_startNextAnimation;
- (void)stopAllAnimations;
@end

@implementation CEKAnimationSequence

- (CEKAnimationSequence)initWithAnimations:(id)animations completionHandler:(id)handler
{
  animationsCopy = animations;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = CEKAnimationSequence;
  v8 = [(CEKAnimationSequence *)&v17 init];
  if (v8)
  {
    v9 = [animationsCopy mutableCopy];
    animations = v8->__animations;
    v8->__animations = v9;

    v11 = [handlerCopy copy];
    completionHandler = v8->__completionHandler;
    v8->__completionHandler = v11;

    v13 = objc_alloc_init(CEKAnimationGenerator);
    animationGenerator = v8->__animationGenerator;
    v8->__animationGenerator = v13;

    v15 = v8;
  }

  return v8;
}

- (void)_startNextAnimation
{
  v18 = *MEMORY[0x1E69E9840];
  _animations = [(CEKAnimationSequence *)self _animations];
  firstObject = [_animations firstObject];

  if (firstObject)
  {
    _animations2 = [(CEKAnimationSequence *)self _animations];
    [_animations2 removeObjectAtIndex:0];

    v6 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [firstObject identifier];
      *buf = 138543362;
      v17 = identifier;
      _os_log_impl(&dword_1B7E93000, v6, OS_LOG_TYPE_DEFAULT, "Starting animation %{public}@", buf, 0xCu);
    }

    _animationGenerator = [(CEKAnimationSequence *)self _animationGenerator];
    identifier2 = [firstObject identifier];
    [firstObject duration];
    v11 = v10;
    updateHandler = [firstObject updateHandler];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__CEKAnimationSequence__startNextAnimation__block_invoke;
    v13[3] = &unk_1E7CC6410;
    v14 = firstObject;
    selfCopy = self;
    [_animationGenerator startAnimationForIdentifier:identifier2 duration:updateHandler updateHandler:v13 completionHandler:v11];
  }

  else
  {
    [(CEKAnimationSequence *)self _notifyCompletionWithSuccess:1];
  }
}

uint64_t __43__CEKAnimationSequence__startNextAnimation__block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.camera", "CameraEditKit");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v12 = 138543618;
    v13 = v5;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_1B7E93000, v4, OS_LOG_TYPE_DEFAULT, "Finished animation %{public}@ with completed=%d", &v12, 0x12u);
  }

  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) completionHandler];
    v7[2](v7, a2);
  }

  v8 = *(a1 + 40);
  if (a2)
  {
    return [v8 _startNextAnimation];
  }

  v10 = [v8 _animations];
  [v10 enumerateObjectsUsingBlock:&__block_literal_global];

  v11 = [*(a1 + 40) _animations];
  [v11 removeAllObjects];

  [*(a1 + 40) set_animationGenerator:0];
  return [*(a1 + 40) _notifyCompletionWithSuccess:0];
}

void __43__CEKAnimationSequence__startNextAnimation__block_invoke_30(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 completionHandler];

  if (v2)
  {
    v3 = [v4 completionHandler];
    v3[2](v3, 0);
  }
}

- (void)stopAllAnimations
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.camera", "CameraEditKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _animationGenerator = [(CEKAnimationSequence *)self _animationGenerator];
    isAnimating = [_animationGenerator isAnimating];
    _animations = [(CEKAnimationSequence *)self _animations];
    v9[0] = 67109376;
    v9[1] = isAnimating;
    v10 = 2048;
    v11 = [_animations count];
    _os_log_impl(&dword_1B7E93000, v3, OS_LOG_TYPE_DEFAULT, "Stopping animations (%d in progress, %ld pending)", v9, 0x12u);
  }

  _animationGenerator2 = [(CEKAnimationSequence *)self _animationGenerator];
  [_animationGenerator2 stopAllAnimations];

  [(CEKAnimationSequence *)self set_animationGenerator:0];
  _animations2 = [(CEKAnimationSequence *)self _animations];
  [_animations2 removeAllObjects];
}

- (void)_notifyCompletionWithSuccess:(BOOL)success
{
  successCopy = success;
  v8 = *MEMORY[0x1E69E9840];
  _completionHandler = [(CEKAnimationSequence *)self _completionHandler];
  [(CEKAnimationSequence *)self set_completionHandler:0];
  if (_completionHandler)
  {
    v6 = os_log_create("com.apple.camera", "CameraEditKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = successCopy;
      _os_log_impl(&dword_1B7E93000, v6, OS_LOG_TYPE_DEFAULT, "Animations completed with success=%d", v7, 8u);
    }

    _completionHandler[2](_completionHandler, successCopy);
  }
}

@end