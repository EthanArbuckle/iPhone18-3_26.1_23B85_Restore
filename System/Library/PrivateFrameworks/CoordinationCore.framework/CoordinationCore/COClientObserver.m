@interface COClientObserver
- (BOOL)isEqual:(id)a3;
- (COClientObserver)initWithConnection:(id)a3;
- (COClientObserver)initWithConnection:(id)a3 domain:(id)a4 cluster:(id)a5;
@end

@implementation COClientObserver

- (COClientObserver)initWithConnection:(id)a3
{
  v4 = MEMORY[0x277CFD078];
  v5 = a3;
  v6 = [v4 homeCluster];
  v7 = [(COClientObserver *)self initWithConnection:v5 domain:@"default" cluster:v6];

  return v7;
}

- (COClientObserver)initWithConnection:(id)a3 domain:(id)a4 cluster:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = COClientObserver;
  v11 = [(COCoordinationServiceClient *)&v19 initWithConnection:v8];
  if (v11)
  {
    v12 = [v8 processIdentifier];
    memset(buffer, 0, sizeof(buffer));
    *(buffer + proc_name(v12, buffer, 0x40u)) = 0;
    if (LOBYTE(buffer[0]))
    {
      v13 = buffer;
    }

    else
    {
      v13 = "unknown";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.CoordinationCore.%@.observing-%s", v9, v13];
    [v14 UTF8String];
    v15 = os_transaction_create();
    transaction = v11->_transaction;
    v11->_transaction = v15;

    objc_storeStrong(&v11->_cluster, a5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COClientObserver;
  if ([(COCoordinationServiceClient *)&v9 isEqual:v4])
  {
    v5 = [(COClientObserver *)self cluster];
    v6 = [v4 cluster];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end