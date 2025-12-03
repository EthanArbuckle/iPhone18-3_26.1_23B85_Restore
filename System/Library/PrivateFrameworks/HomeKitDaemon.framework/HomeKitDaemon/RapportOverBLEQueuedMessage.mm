@interface RapportOverBLEQueuedMessage
- (RapportOverBLEQueuedMessage)initWithMessage:(id)message withCompletion:(id)completion;
@end

@implementation RapportOverBLEQueuedMessage

- (RapportOverBLEQueuedMessage)initWithMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = RapportOverBLEQueuedMessage;
  v9 = [(RapportOverBLEQueuedMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    v11 = _Block_copy(completionCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end