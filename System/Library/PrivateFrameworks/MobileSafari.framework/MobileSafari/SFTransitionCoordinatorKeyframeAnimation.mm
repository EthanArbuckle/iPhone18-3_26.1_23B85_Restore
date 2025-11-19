@interface SFTransitionCoordinatorKeyframeAnimation
- (double)initWithStartTime:(double)a3 duration:(double)a4 animations:;
- (void)invokeInContext:(id)a3;
@end

@implementation SFTransitionCoordinatorKeyframeAnimation

- (void)invokeInContext:(id)a3
{
  v4 = a3;
  if ([v4 usesKeyframeAnimations])
  {
    v5 = MEMORY[0x1E69DD250];
    duration = self->_duration;
    startTime = self->_startTime;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__SFTransitionCoordinatorKeyframeAnimation_invokeInContext___block_invoke;
    v8[3] = &unk_1E721B400;
    v8[4] = self;
    v9 = v4;
    [v5 addKeyframeWithRelativeStartTime:v8 relativeDuration:startTime animations:duration];
  }

  else
  {
    (*(self->_animations + 2))();
  }
}

- (double)initWithStartTime:(double)a3 duration:(double)a4 animations:
{
  if (!a1)
  {
    return 0;
  }

  v11.receiver = a1;
  v11.super_class = SFTransitionCoordinatorKeyframeAnimation;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = _Block_copy(v6);

  v9 = *(v7 + 1);
  *(v7 + 1) = v8;

  v7[2] = a4;
  v7[3] = a3;
  return v7;
}

@end