@interface CRKConcreteNetworkInterface
- (CRKConcreteNetworkInterface)initWithUnderlyingInterface:(id)interface;
- (CRKNetworkEndpoint)ipv4Endpoint;
- (CRKNetworkEndpoint)ipv6Endpoint;
- (NSString)name;
- (id)makeLocalEndpointForRemoteEndpointWithHost:(id)host port:(id)port;
@end

@implementation CRKConcreteNetworkInterface

- (CRKConcreteNetworkInterface)initWithUnderlyingInterface:(id)interface
{
  interfaceCopy = interface;
  v9.receiver = self;
  v9.super_class = CRKConcreteNetworkInterface;
  v6 = [(CRKConcreteNetworkInterface *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingInterface, interface);
  }

  return v7;
}

- (NSString)name
{
  name = self->_name;
  if (!name)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __35__CRKConcreteNetworkInterface_name__block_invoke;
    v7[3] = &unk_278DC2A10;
    v7[4] = self;
    v4 = __35__CRKConcreteNetworkInterface_name__block_invoke(v7);
    v5 = self->_name;
    self->_name = v4;

    name = self->_name;
  }

  return name;
}

uint64_t __35__CRKConcreteNetworkInterface_name__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) underlyingInterface];
  name = nw_interface_get_name(v1);

  v3 = MEMORY[0x277CCACA8];

  return [v3 stringWithUTF8String:name];
}

- (CRKNetworkEndpoint)ipv4Endpoint
{
  ipv4Endpoint = self->_ipv4Endpoint;
  if (!ipv4Endpoint)
  {
    v4 = [(CRKConcreteNetworkInterface *)self makeLocalEndpointForRemoteEndpointWithHost:@"0.0.0.0" port:@"0"];
    v5 = self->_ipv4Endpoint;
    self->_ipv4Endpoint = v4;

    ipv4Endpoint = self->_ipv4Endpoint;
  }

  return ipv4Endpoint;
}

- (CRKNetworkEndpoint)ipv6Endpoint
{
  ipv6Endpoint = self->_ipv6Endpoint;
  if (!ipv6Endpoint)
  {
    v4 = [(CRKConcreteNetworkInterface *)self makeLocalEndpointForRemoteEndpointWithHost:@"::" port:@"0"];
    v5 = self->_ipv6Endpoint;
    self->_ipv6Endpoint = v4;

    ipv6Endpoint = self->_ipv6Endpoint;
  }

  return ipv6Endpoint;
}

- (id)makeLocalEndpointForRemoteEndpointWithHost:(id)host port:(id)port
{
  hostCopy = host;
  portCopy = port;
  uTF8String = [host UTF8String];
  uTF8String2 = [portCopy UTF8String];

  host = nw_endpoint_create_host(uTF8String, uTF8String2);
  if (host)
  {
    underlyingInterface = [(CRKConcreteNetworkInterface *)self underlyingInterface];
    v13 = nw_interface_copy_local_address_for_remote_address();

    if (v13)
    {
      v14 = [[CRKConcreteNetworkEndpoint alloc] initWithUnderlyingEndpoint:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end