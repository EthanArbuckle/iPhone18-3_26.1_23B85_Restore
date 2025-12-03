@interface CRKCurrentPlatformIPAddressProvider
+ (id)makePathMonitorWithPrimitives:(id)primitives;
- (CRKCurrentPlatformIPAddressProvider)init;
- (CRKCurrentPlatformIPAddressProvider)initWithNetworkPrimitives:(id)primitives;
- (id)currentIPAddress;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CRKCurrentPlatformIPAddressProvider

- (void)dealloc
{
  [(CRKNetworkPathMonitor *)self->_pathMonitor removeObserver:self forKeyPath:@"path" context:@"ObservationContext"];
  v3.receiver = self;
  v3.super_class = CRKCurrentPlatformIPAddressProvider;
  [(CRKCurrentPlatformIPAddressProvider *)&v3 dealloc];
}

- (CRKCurrentPlatformIPAddressProvider)init
{
  v3 = objc_opt_new();
  v4 = [(CRKCurrentPlatformIPAddressProvider *)self initWithNetworkPrimitives:v3];

  return v4;
}

- (CRKCurrentPlatformIPAddressProvider)initWithNetworkPrimitives:(id)primitives
{
  primitivesCopy = primitives;
  v9.receiver = self;
  v9.super_class = CRKCurrentPlatformIPAddressProvider;
  v5 = [(CRKCurrentPlatformIPAddressProvider *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() makePathMonitorWithPrimitives:primitivesCopy];
    pathMonitor = v5->_pathMonitor;
    v5->_pathMonitor = v6;

    [(CRKNetworkPathMonitor *)v5->_pathMonitor resume];
    [(CRKNetworkPathMonitor *)v5->_pathMonitor addObserver:v5 forKeyPath:@"path" options:4 context:@"ObservationContext"];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context != @"ObservationContext")
  {
    v13.receiver = self;
    v13.super_class = CRKCurrentPlatformIPAddressProvider;
    [(CRKCurrentPlatformIPAddressProvider *)&v13 observeValueForKeyPath:path ofObject:object change:change context:?];
    return;
  }

  v8 = [(CRKCurrentPlatformIPAddressProvider *)self IPAddress:path];
  if (v8 || ([(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    iPAddress = [(CRKCurrentPlatformIPAddressProvider *)self IPAddress];
    currentIPAddress = [(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress];
    v11 = [iPAddress isEqual:currentIPAddress];

    if (v8)
    {

      if (v11)
      {
        return;
      }
    }

    else
    {

      if (v11)
      {
        return;
      }
    }

    currentIPAddress2 = [(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress];
    [(CRKCurrentPlatformIPAddressProvider *)self setIPAddress:currentIPAddress2];
  }
}

+ (id)makePathMonitorWithPrimitives:(id)primitives
{
  v3 = MEMORY[0x277CBEBD0];
  primitivesCopy = primitives;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"CRKPreferEthernet"];

  if (v6)
  {
    [primitivesCopy ethernetNetworkPathMonitor];
  }

  else
  {
    [primitivesCopy wifiNetworkPathMonitor];
  }
  v7 = ;

  return v7;
}

- (id)currentIPAddress
{
  pathMonitor = [(CRKCurrentPlatformIPAddressProvider *)self pathMonitor];
  path = [pathMonitor path];

  if ([path isSatisfied])
  {
    interfaces = [path interfaces];
    v5 = [interfaces sortedArrayUsingComparator:&__block_literal_global_30];
    v6 = [v5 crk_firstMatching:&__block_literal_global_12_0];

    ipv4Endpoint = [v6 ipv4Endpoint];
    iPAddress = [ipv4Endpoint IPAddress];
  }

  else
  {
    iPAddress = 0;
  }

  return iPAddress;
}

uint64_t __55__CRKCurrentPlatformIPAddressProvider_currentIPAddress__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __55__CRKCurrentPlatformIPAddressProvider_currentIPAddress__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 ipv4Endpoint];
  v3 = [v2 IPAddress];
  v4 = v3 != 0;

  return v4;
}

@end