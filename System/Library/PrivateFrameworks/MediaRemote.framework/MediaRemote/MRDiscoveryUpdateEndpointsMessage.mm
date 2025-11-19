@interface MRDiscoveryUpdateEndpointsMessage
- (MRDiscoveryUpdateEndpointsMessage)initWithEndpoints:(id)a3 configuration:(id)a4;
- (MRDiscoveryUpdateEndpointsMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRDiscoveryUpdateEndpointsMessage

- (MRDiscoveryUpdateEndpointsMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = MRDiscoveryUpdateEndpointsMessage;
  v7 = [(MRProtocolMessage *)&v16 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
    v9 = [v6 configuration];
    v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:v9];
    configuration = v7->_configuration;
    v7->_configuration = v10;

    v12 = [v6 endpoints];
    v13 = [v12 mr_map:&__block_literal_global_33];
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

- (MRDiscoveryUpdateEndpointsMessage)initWithEndpoints:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MRDiscoveryUpdateEndpointsMessage;
  v8 = [(MRProtocolMessage *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    endpoints = v8->_endpoints;
    v8->_endpoints = v9;

    v11 = [v7 copy];
    configuration = v8->_configuration;
    v8->_configuration = v11;

    v13 = objc_alloc_init(_MRDiscoveryUpdateEndpointsProtobufMessage);
    v14 = [v6 mr_map:&__block_literal_global_29];
    v15 = [v14 mutableCopy];
    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)v13 setEndpoints:v15];

    v16 = [v7 protobuf];
    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)v13 setConfiguration:v16];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v13];
  }

  return v8;
}

@end