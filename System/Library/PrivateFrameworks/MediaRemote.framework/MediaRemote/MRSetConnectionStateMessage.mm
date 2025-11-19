@interface MRSetConnectionStateMessage
- (unsigned)state;
@end

@implementation MRSetConnectionStateMessage

- (unsigned)state
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRConnectionStateFromProtobuf([v2 state]);

  return v3;
}

@end