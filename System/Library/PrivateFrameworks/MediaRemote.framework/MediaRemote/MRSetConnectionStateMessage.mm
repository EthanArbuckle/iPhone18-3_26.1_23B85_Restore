@interface MRSetConnectionStateMessage
- (unsigned)state;
@end

@implementation MRSetConnectionStateMessage

- (unsigned)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRConnectionStateFromProtobuf([underlyingCodableMessage state]);

  return v3;
}

@end