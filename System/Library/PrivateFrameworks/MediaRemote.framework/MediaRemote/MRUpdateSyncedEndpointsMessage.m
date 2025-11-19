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
    v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v5 = [v4 endpoints];
    v6 = [v5 mr_map:&__block_literal_global_80];
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
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 endpointFeatures];

  return v3;
}

@end