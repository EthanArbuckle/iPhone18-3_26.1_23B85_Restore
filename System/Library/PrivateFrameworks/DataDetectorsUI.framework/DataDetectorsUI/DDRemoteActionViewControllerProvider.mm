@interface DDRemoteActionViewControllerProvider
- (DDRemoteActionViewControllerProvider)initWithContext:(id)context;
- (void)createViewControllerWithCompletionHandler:(id)handler;
@end

@implementation DDRemoteActionViewControllerProvider

- (DDRemoteActionViewControllerProvider)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = DDRemoteActionViewControllerProvider;
  v6 = [(DDRemoteActionViewControllerProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionContext, context);
    v8 = v7;
  }

  return v7;
}

- (void)createViewControllerWithCompletionHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDRemoteAction.m" lineNumber:792 description:@"This method should never be called in the class DDRemoteActionViewControllerProvider. This method should be overriden."];
}

@end