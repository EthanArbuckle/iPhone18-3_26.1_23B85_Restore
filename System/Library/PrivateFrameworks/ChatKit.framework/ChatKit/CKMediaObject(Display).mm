@interface CKMediaObject(Display)
- (IMSenderContext)senderContext;
@end

@implementation CKMediaObject(Display)

- (IMSenderContext)senderContext
{
  v2 = [(CKMediaObject *)self messageContext];
  v3 = [v2 serviceName];
  v4 = [v2 isSenderUnknown];
  v5 = [MEMORY[0x1E69A8228] contextWithKnownSender:v4 serviceName:v3];

  return v5;
}

@end