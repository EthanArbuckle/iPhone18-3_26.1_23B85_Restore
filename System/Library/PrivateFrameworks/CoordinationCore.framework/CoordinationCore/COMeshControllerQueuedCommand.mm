@interface COMeshControllerQueuedCommand
- (COMeshControllerQueuedCommand)initWithCommand:(id)command completionHandler:(id)handler;
- (void)invokeCallbackWithError:(id)error;
@end

@implementation COMeshControllerQueuedCommand

- (COMeshControllerQueuedCommand)initWithCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = COMeshControllerQueuedCommand;
  v9 = [(COMeshControllerQueuedCommand *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, command);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)invokeCallbackWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(COMeshControllerQueuedCommand *)self completionHandler];
  command = [(COMeshControllerQueuedCommand *)self command];
  completionHandler[2](completionHandler, command, errorCopy);
}

@end