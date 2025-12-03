@interface COClientObserver
- (BOOL)isEqual:(id)equal;
- (COClientObserver)initWithConnection:(id)connection;
- (COClientObserver)initWithConnection:(id)connection domain:(id)domain cluster:(id)cluster;
@end

@implementation COClientObserver

- (COClientObserver)initWithConnection:(id)connection
{
  v4 = MEMORY[0x277CFD078];
  connectionCopy = connection;
  homeCluster = [v4 homeCluster];
  v7 = [(COClientObserver *)self initWithConnection:connectionCopy domain:@"default" cluster:homeCluster];

  return v7;
}

- (COClientObserver)initWithConnection:(id)connection domain:(id)domain cluster:(id)cluster
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  domainCopy = domain;
  clusterCopy = cluster;
  v19.receiver = self;
  v19.super_class = COClientObserver;
  v11 = [(COCoordinationServiceClient *)&v19 initWithConnection:connectionCopy];
  if (v11)
  {
    processIdentifier = [connectionCopy processIdentifier];
    memset(buffer, 0, sizeof(buffer));
    *(buffer + proc_name(processIdentifier, buffer, 0x40u)) = 0;
    if (LOBYTE(buffer[0]))
    {
      v13 = buffer;
    }

    else
    {
      v13 = "unknown";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.CoordinationCore.%@.observing-%s", domainCopy, v13];
    [v14 UTF8String];
    v15 = os_transaction_create();
    transaction = v11->_transaction;
    v11->_transaction = v15;

    objc_storeStrong(&v11->_cluster, cluster);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = COClientObserver;
  if ([(COCoordinationServiceClient *)&v9 isEqual:equalCopy])
  {
    cluster = [(COClientObserver *)self cluster];
    cluster2 = [equalCopy cluster];
    v7 = [cluster isEqual:cluster2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end