@interface MRDiscoveryUpdateEndpointsMessage
- (MRDiscoveryUpdateEndpointsMessage)initWithEndpoints:(id)endpoints configuration:(id)configuration;
- (MRDiscoveryUpdateEndpointsMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRDiscoveryUpdateEndpointsMessage

- (MRDiscoveryUpdateEndpointsMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MRDiscoveryUpdateEndpointsMessage;
  v7 = [(MRProtocolMessage *)&v16 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
    configuration = [messageCopy configuration];
    v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:configuration];
    configuration = v7->_configuration;
    v7->_configuration = v10;

    endpoints = [messageCopy endpoints];
    v13 = [endpoints mr_map:&__block_literal_global_33];
    endpoints = v7->_endpoints;
    v7->_endpoints = v13;
  }

  return v7;
}

MRAVDistantEndpoint *__76__MRDiscoveryUpdateEndpointsMessage_initWithUnderlyingCodableMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v2];

  return v3;
}

- (MRDiscoveryUpdateEndpointsMessage)initWithEndpoints:(id)endpoints configuration:(id)configuration
{
  endpointsCopy = endpoints;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = MRDiscoveryUpdateEndpointsMessage;
  v8 = [(MRProtocolMessage *)&v18 init];
  if (v8)
  {
    v9 = [endpointsCopy copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    v11 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v11;

    v13 = objc_alloc_init(_MRDiscoveryUpdateEndpointsProtobufMessage);
    v14 = [endpointsCopy mr_map:&__block_literal_global_29];
    v15 = [v14 mutableCopy];
    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)v13 setEndpoints:v15];

    protobuf = [configurationCopy protobuf];
    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)v13 setConfiguration:protobuf];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v13];
  }

  return v8;
}

@end