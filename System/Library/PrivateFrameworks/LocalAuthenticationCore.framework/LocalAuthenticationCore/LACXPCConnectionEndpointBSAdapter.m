@interface LACXPCConnectionEndpointBSAdapter
- (LACXPCConnectionEndpointBSAdapter)initWithMachService:(id)a3 protocolServiceName:(id)a4;
@end

@implementation LACXPCConnectionEndpointBSAdapter

- (LACXPCConnectionEndpointBSAdapter)initWithMachService:(id)a3 protocolServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LACXPCConnectionEndpointBSAdapter;
  v8 = [(LACXPCConnectionEndpointBSAdapter *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E698F4A0] endpointForMachName:v6 service:v7 instance:0];
    endpoint = v8->_endpoint;
    v8->_endpoint = v9;
  }

  return v8;
}

@end