@interface COMeshControllerQueuedCommand
- (COMeshControllerQueuedCommand)initWithCommand:(id)a3 completionHandler:(id)a4;
- (void)invokeCallbackWithError:(id)a3;
@end

@implementation COMeshControllerQueuedCommand

- (COMeshControllerQueuedCommand)initWithCommand:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = COMeshControllerQueuedCommand;
  v9 = [(COMeshControllerQueuedCommand *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, a3);
    v11 = [v8 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)invokeCallbackWithError:(id)a3
{
  v4 = a3;
  v6 = [(COMeshControllerQueuedCommand *)self completionHandler];
  v5 = [(COMeshControllerQueuedCommand *)self command];
  v6[2](v6, v5, v4);
}

@end