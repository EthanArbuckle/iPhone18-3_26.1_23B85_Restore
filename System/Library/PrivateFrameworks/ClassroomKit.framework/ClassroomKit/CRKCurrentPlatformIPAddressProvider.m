@interface CRKCurrentPlatformIPAddressProvider
+ (id)makePathMonitorWithPrimitives:(id)a3;
- (CRKCurrentPlatformIPAddressProvider)init;
- (CRKCurrentPlatformIPAddressProvider)initWithNetworkPrimitives:(id)a3;
- (id)currentIPAddress;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (CRKCurrentPlatformIPAddressProvider)initWithNetworkPrimitives:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKCurrentPlatformIPAddressProvider;
  v5 = [(CRKCurrentPlatformIPAddressProvider *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() makePathMonitorWithPrimitives:v4];
    pathMonitor = v5->_pathMonitor;
    v5->_pathMonitor = v6;

    [(CRKNetworkPathMonitor *)v5->_pathMonitor resume];
    [(CRKNetworkPathMonitor *)v5->_pathMonitor addObserver:v5 forKeyPath:@"path" options:4 context:@"ObservationContext"];
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 != @"ObservationContext")
  {
    v13.receiver = self;
    v13.super_class = CRKCurrentPlatformIPAddressProvider;
    [(CRKCurrentPlatformIPAddressProvider *)&v13 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  v8 = [(CRKCurrentPlatformIPAddressProvider *)self IPAddress:a3];
  if (v8 || ([(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [(CRKCurrentPlatformIPAddressProvider *)self IPAddress];
    v10 = [(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress];
    v11 = [v9 isEqual:v10];

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

    v12 = [(CRKCurrentPlatformIPAddressProvider *)self currentIPAddress];
    [(CRKCurrentPlatformIPAddressProvider *)self setIPAddress:v12];
  }
}

+ (id)makePathMonitorWithPrimitives:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CRKPreferEthernet"];

  if (v6)
  {
    [v4 ethernetNetworkPathMonitor];
  }

  else
  {
    [v4 wifiNetworkPathMonitor];
  }
  v7 = ;

  return v7;
}

- (id)currentIPAddress
{
  v2 = [(CRKCurrentPlatformIPAddressProvider *)self pathMonitor];
  v3 = [v2 path];

  if ([v3 isSatisfied])
  {
    v4 = [v3 interfaces];
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_30];
    v6 = [v5 crk_firstMatching:&__block_literal_global_12_0];

    v7 = [v6 ipv4Endpoint];
    v8 = [v7 IPAddress];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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