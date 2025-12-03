@interface CKMediaObject(Display)
- (IMSenderContext)senderContext;
@end

@implementation CKMediaObject(Display)

- (IMSenderContext)senderContext
{
  messageContext = [(CKMediaObject *)self messageContext];
  serviceName = [messageContext serviceName];
  isSenderUnknown = [messageContext isSenderUnknown];
  v5 = [MEMORY[0x1E69A8228] contextWithKnownSender:isSenderUnknown serviceName:serviceName];

  return v5;
}

@end