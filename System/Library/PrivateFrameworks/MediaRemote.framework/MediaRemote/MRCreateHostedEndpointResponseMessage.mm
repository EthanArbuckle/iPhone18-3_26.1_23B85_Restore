@interface MRCreateHostedEndpointResponseMessage
- (MRCreateHostedEndpointResponseMessage)initWithGroupUID:(id)d;
- (NSString)groupUID;
@end

@implementation MRCreateHostedEndpointResponseMessage

- (MRCreateHostedEndpointResponseMessage)initWithGroupUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MRCreateHostedEndpointResponseMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRCreateHostedEndpointResponseProtobuf);
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];

    v7 = [dCopy copy];
    underlyingCodableMessage = [(MRProtocolMessage *)v5 underlyingCodableMessage];
    [underlyingCodableMessage setGroupUID:v7];
  }

  return v5;
}

- (NSString)groupUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  groupUID = [underlyingCodableMessage groupUID];

  return groupUID;
}

@end