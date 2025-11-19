@interface MRGetKeyboardSessionMessage
- (MRGetKeyboardSessionMessage)init;
@end

@implementation MRGetKeyboardSessionMessage

- (MRGetKeyboardSessionMessage)init
{
  v5.receiver = self;
  v5.super_class = MRGetKeyboardSessionMessage;
  v2 = [(MRProtocolMessage *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(_MRGetKeyboardSessionProtobuf);
    [(MRProtocolMessage *)v2 setUnderlyingCodableMessage:v3];
  }

  return v2;
}

@end