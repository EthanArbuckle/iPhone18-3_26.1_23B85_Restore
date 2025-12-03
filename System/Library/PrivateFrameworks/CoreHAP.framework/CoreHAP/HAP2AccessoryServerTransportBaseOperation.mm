@interface HAP2AccessoryServerTransportBaseOperation
- (HAP2AccessoryServerTransportBaseOperation)initWithName:(id)name transport:(id)transport;
- (void)setTransport:(uint64_t)transport;
@end

@implementation HAP2AccessoryServerTransportBaseOperation

- (void)setTransport:(uint64_t)transport
{
  if (transport)
  {
    objc_storeStrong((transport + 280), 0);
  }
}

- (HAP2AccessoryServerTransportBaseOperation)initWithName:(id)name transport:(id)transport
{
  transportCopy = transport;
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServerTransportBaseOperation;
  v8 = [(HAP2AsynchronousOperation *)&v11 initWithName:name];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transport, transport);
  }

  return v9;
}

@end