@interface HMDHomePrimaryResidentMessagingHandlerPendingMessageContext
- (HMDHomePrimaryResidentMessagingHandlerPendingMessageContext)initWithMessage:(id)a3 messageTimerContext:(id)a4;
@end

@implementation HMDHomePrimaryResidentMessagingHandlerPendingMessageContext

- (HMDHomePrimaryResidentMessagingHandlerPendingMessageContext)initWithMessage:(id)a3 messageTimerContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomePrimaryResidentMessagingHandlerPendingMessageContext;
  v9 = [(HMDHomePrimaryResidentMessagingHandlerPendingMessageContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, a3);
    objc_storeStrong(&v10->_messageTimerContext, a4);
  }

  return v10;
}

@end