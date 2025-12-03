@interface NMGenericMessageLogAction
+ (id)logActionWithMessage:(id)message;
- (NMGenericMessageLogAction)initWithMessage:(id)message;
@end

@implementation NMGenericMessageLogAction

+ (id)logActionWithMessage:(id)message
{
  messageCopy = message;
  v5 = [[self alloc] initWithMessage:messageCopy];

  return v5;
}

- (NMGenericMessageLogAction)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = NMGenericMessageLogAction;
  v6 = [(NMGenericMessageLogAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
  }

  return v7;
}

@end