@interface HAP2AccessoryServerTransportBaseOperation
- (HAP2AccessoryServerTransportBaseOperation)initWithName:(id)a3 transport:(id)a4;
- (void)setTransport:(uint64_t)a1;
@end

@implementation HAP2AccessoryServerTransportBaseOperation

- (void)setTransport:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 280), 0);
  }
}

- (HAP2AccessoryServerTransportBaseOperation)initWithName:(id)a3 transport:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServerTransportBaseOperation;
  v8 = [(HAP2AsynchronousOperation *)&v11 initWithName:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transport, a4);
  }

  return v9;
}

@end