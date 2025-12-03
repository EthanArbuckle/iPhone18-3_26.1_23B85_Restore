@interface MRSetDiscoveryModeMessage
- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetDiscoveryModeMessage

- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MRSetDiscoveryModeMessage;
  v7 = [(MRProtocolMessage *)&v14 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v7->_mode = [messageCopy mode];
    if ([messageCopy hasConfiguration])
    {
      v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
      configuration = [messageCopy configuration];
      v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:configuration];
      configuration = v7->_configuration;
      v7->_configuration = v10;

LABEL_6:
      goto LABEL_7;
    }

    if ([messageCopy hasFeatures])
    {
      v12 = -[MRAVRoutingDiscoverySessionConfiguration initWithEndpointFeatures:]([MRAVRoutingDiscoverySessionConfiguration alloc], "initWithEndpointFeatures:", [messageCopy features]);
      configuration = v7->_configuration;
      v7->_configuration = v12;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v7;
}

@end