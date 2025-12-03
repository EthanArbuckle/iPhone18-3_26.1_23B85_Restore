@interface CRKInvalidateTransportOperation
- (CRKInvalidateTransportOperation)initWithTransport:(id)transport;
- (void)main;
- (void)transportDidInvalidate:(id)invalidate;
@end

@implementation CRKInvalidateTransportOperation

- (CRKInvalidateTransportOperation)initWithTransport:(id)transport
{
  transportCopy = transport;
  v9.receiver = self;
  v9.super_class = CRKInvalidateTransportOperation;
  v6 = [(CRKInvalidateTransportOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, transport);
  }

  return v7;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CRKInvalidateTransportOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__CRKInvalidateTransportOperation_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 transport];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) transport];
  [v4 invalidate];
}

- (void)transportDidInvalidate:(id)invalidate
{
  if ([(CRKInvalidateTransportOperation *)self isExecuting])
  {

    [(CRKInvalidateTransportOperation *)self endOperationWithResultObject:0];
  }
}

@end