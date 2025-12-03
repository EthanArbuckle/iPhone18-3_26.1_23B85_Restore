@interface MRUpdateSyncedEndpointsMessage
- (NSArray)endpoints;
- (unsigned)features;
@end

@implementation MRUpdateSyncedEndpointsMessage

- (NSArray)endpoints
{
  endpoints = self->_endpoints;
  if (!endpoints)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    endpoints = [underlyingCodableMessage endpoints];
    v6 = [endpoints mr_map:&__block_literal_global_80];
    v7 = self->_endpoints;
    self->_endpoints = v6;

    endpoints = self->_endpoints;
  }

  return endpoints;
}

MRAVDistantEndpoint *__43__MRUpdateSyncedEndpointsMessage_endpoints__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantEndpoint alloc] initWithDescriptor:v2];

  return v3;
}

- (unsigned)features
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  endpointFeatures = [underlyingCodableMessage endpointFeatures];

  return endpointFeatures;
}

@end