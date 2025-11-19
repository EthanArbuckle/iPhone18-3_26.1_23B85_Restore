@interface RapportOverBLEQueuedMessage
- (RapportOverBLEQueuedMessage)initWithMessage:(id)a3 withCompletion:(id)a4;
@end

@implementation RapportOverBLEQueuedMessage

- (RapportOverBLEQueuedMessage)initWithMessage:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = RapportOverBLEQueuedMessage;
  v9 = [(RapportOverBLEQueuedMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    v11 = _Block_copy(v8);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end