@interface CEKAnimationGeneratorAnimation
- (CEKAnimationGeneratorAnimation)initWithStartTime:(double)a3 duration:(double)a4 updateHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation CEKAnimationGeneratorAnimation

- (CEKAnimationGeneratorAnimation)initWithStartTime:(double)a3 duration:(double)a4 updateHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v20.receiver = self;
  v20.super_class = CEKAnimationGeneratorAnimation;
  v12 = [(CEKAnimationGeneratorAnimation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_startTime = a3;
    v12->_duration = a4;
    v14 = [v10 copy];
    updateHandler = v13->_updateHandler;
    v13->_updateHandler = v14;

    v16 = [v11 copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;

    v18 = v13;
  }

  return v13;
}

@end