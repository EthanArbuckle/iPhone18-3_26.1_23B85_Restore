@interface LACXPCConnectionEndpointBSAdapter
- (LACXPCConnectionEndpointBSAdapter)initWithMachService:(id)service protocolServiceName:(id)name;
@end

@implementation LACXPCConnectionEndpointBSAdapter

- (LACXPCConnectionEndpointBSAdapter)initWithMachService:(id)service protocolServiceName:(id)name
{
  serviceCopy = service;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = LACXPCConnectionEndpointBSAdapter;
  v8 = [(LACXPCConnectionEndpointBSAdapter *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E698F4A0] endpointForMachName:serviceCopy service:nameCopy instance:0];
    endpoint = v8->_endpoint;
    v8->_endpoint = v9;
  }

  return v8;
}

@end