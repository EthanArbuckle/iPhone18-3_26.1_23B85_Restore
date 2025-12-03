@interface FPCoordinationContext
- (FPCoordinationContext)initWithProgress:(id)progress completionHandler:(id)handler;
@end

@implementation FPCoordinationContext

- (FPCoordinationContext)initWithProgress:(id)progress completionHandler:(id)handler
{
  progressCopy = progress;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = FPCoordinationContext;
  v9 = [(FPCoordinationContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_progress, progress);
    v11 = _Block_copy(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end