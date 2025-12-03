@interface MRCreateHostedEndpointRequestMessage
- (MRCreateHostedEndpointRequestMessage)initWithOutputDeviceUIDs:(id)ds;
- (NSArray)outputDeviceUIDs;
@end

@implementation MRCreateHostedEndpointRequestMessage

- (MRCreateHostedEndpointRequestMessage)initWithOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  v10.receiver = self;
  v10.super_class = MRCreateHostedEndpointRequestMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRCreateHostedEndpointRequestProtobuf);
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];

    v7 = [dsCopy mutableCopy];
    underlyingCodableMessage = [(MRProtocolMessage *)v5 underlyingCodableMessage];
    [underlyingCodableMessage setOutputDeviceUIDs:v7];
  }

  return v5;
}

- (NSArray)outputDeviceUIDs
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUIDs = [underlyingCodableMessage outputDeviceUIDs];

  return outputDeviceUIDs;
}

@end