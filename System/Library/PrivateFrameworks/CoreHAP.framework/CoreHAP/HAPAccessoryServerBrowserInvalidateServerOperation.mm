@interface HAPAccessoryServerBrowserInvalidateServerOperation
- (HAPAccessoryServerBrowserInvalidateServerOperation)initWithServer:(id)server;
- (void)main;
@end

@implementation HAPAccessoryServerBrowserInvalidateServerOperation

- (void)main
{
  server = [(HAPAccessoryServerBrowserInvalidateServerOperation *)self server];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HAPAccessoryServerBrowserInvalidateServerOperation_main__block_invoke;
  v4[3] = &unk_2786D6CA0;
  v4[4] = self;
  [server invalidateWithCompletionHandler:v4];
}

- (HAPAccessoryServerBrowserInvalidateServerOperation)initWithServer:(id)server
{
  serverCopy = server;
  identifier = [serverCopy identifier];
  v9.receiver = self;
  v9.super_class = HAPAccessoryServerBrowserInvalidateServerOperation;
  v7 = [(HAP2AsynchronousOperation *)&v9 initWithName:identifier];

  if (v7)
  {
    objc_storeStrong(&v7->_server, server);
  }

  return v7;
}

@end