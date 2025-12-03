@interface HMDHomePrimaryResidentMessagingHandlerPendingMessageContext
- (HMDHomePrimaryResidentMessagingHandlerPendingMessageContext)initWithMessage:(id)message messageTimerContext:(id)context;
@end

@implementation HMDHomePrimaryResidentMessagingHandlerPendingMessageContext

- (HMDHomePrimaryResidentMessagingHandlerPendingMessageContext)initWithMessage:(id)message messageTimerContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HMDHomePrimaryResidentMessagingHandlerPendingMessageContext;
  v9 = [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    objc_storeStrong(&v10->_messageTimerContext, context);
  }

  return v10;
}

@end