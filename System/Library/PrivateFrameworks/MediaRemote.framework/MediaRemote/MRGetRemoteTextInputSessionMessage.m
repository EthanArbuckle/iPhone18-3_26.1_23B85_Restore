@interface MRGetRemoteTextInputSessionMessage
- (MRGetRemoteTextInputSessionMessage)init;
@end

@implementation MRGetRemoteTextInputSessionMessage

- (MRGetRemoteTextInputSessionMessage)init
{
  v5.receiver = self;
  v5.super_class = MRGetRemoteTextInputSessionMessage;
  v2 = [(MRProtocolMessage *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_MRGetRemoteTextInputSessionProtobuf);
    [(MRProtocolMessage *)v2 setUnderlyingCodableMessage:v3];
  }

  return v2;
}

@end