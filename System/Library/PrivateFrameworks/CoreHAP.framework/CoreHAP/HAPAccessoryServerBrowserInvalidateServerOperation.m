@interface HAPAccessoryServerBrowserInvalidateServerOperation
- (HAPAccessoryServerBrowserInvalidateServerOperation)initWithServer:(id)a3;
- (void)main;
@end

@implementation HAPAccessoryServerBrowserInvalidateServerOperation

- (void)main
{
  v3 = [(HAPAccessoryServerBrowserInvalidateServerOperation *)self server];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HAPAccessoryServerBrowserInvalidateServerOperation_main__block_invoke;
  v4[3] = &unk_2786D6CA0;
  v4[4] = self;
  [v3 invalidateWithCompletionHandler:v4];
}

- (HAPAccessoryServerBrowserInvalidateServerOperation)initWithServer:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v9.receiver = self;
  v9.super_class = HAPAccessoryServerBrowserInvalidateServerOperation;
  v7 = [(HAP2AsynchronousOperation *)&v9 initWithName:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_server, a3);
  }

  return v7;
}

@end