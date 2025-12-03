@interface CEKAnimationGeneratorAnimation
- (CEKAnimationGeneratorAnimation)initWithStartTime:(double)time duration:(double)duration updateHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CEKAnimationGeneratorAnimation

- (CEKAnimationGeneratorAnimation)initWithStartTime:(double)time duration:(double)duration updateHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v20.receiver = self;
  v20.super_class = CEKAnimationGeneratorAnimation;
  v12 = [(CEKAnimationGeneratorAnimation *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_startTime = time;
    v12->_duration = duration;
    v14 = [handlerCopy copy];
    updateHandler = v13->_updateHandler;
    v13->_updateHandler = v14;

    v16 = [completionHandlerCopy copy];
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v16;

    v18 = v13;
  }

  return v13;
}

@end