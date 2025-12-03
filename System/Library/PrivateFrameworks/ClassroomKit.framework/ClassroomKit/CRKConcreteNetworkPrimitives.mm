@interface CRKConcreteNetworkPrimitives
+ (id)makePathMonitorForInterfaceType:(int)type;
- (id)ethernetNetworkPathMonitor;
- (id)wifiNetworkPathMonitor;
@end

@implementation CRKConcreteNetworkPrimitives

- (id)wifiNetworkPathMonitor
{
  v2 = objc_opt_class();

  return [v2 makePathMonitorForInterfaceType:1];
}

- (id)ethernetNetworkPathMonitor
{
  v2 = objc_opt_class();

  return [v2 makePathMonitorForInterfaceType:3];
}

+ (id)makePathMonitorForInterfaceType:(int)type
{
  v3 = nw_path_monitor_create_with_type(type);
  if (v3)
  {
    v4 = [[CRKConcreteNetworkPathMonitor alloc] initWithUnderlyingPathMonitor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end