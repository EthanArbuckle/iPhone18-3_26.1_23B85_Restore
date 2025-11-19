@interface MRSetDiscoveryModeMessage
- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRSetDiscoveryModeMessage

- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = MRSetDiscoveryModeMessage;
  v7 = [(MRProtocolMessage *)&v14 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v7->_mode = [v6 mode];
    if ([v6 hasConfiguration])
    {
      v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
      v9 = [v6 configuration];
      v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:v9];
      configuration = v7->_configuration;
      v7->_configuration = v10;

LABEL_6:
      goto LABEL_7;
    }

    if ([v6 hasFeatures])
    {
      v12 = -[MRAVRoutingDiscoverySessionConfiguration initWithEndpointFeatures:]([MRAVRoutingDiscoverySessionConfiguration alloc], "initWithEndpointFeatures:", [v6 features]);
      v9 = v7->_configuration;
      v7->_configuration = v12;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v7;
}

@end