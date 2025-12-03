@interface FMDDeviceDiscoveringXPCAdapter
- (FMDDeviceDiscoveringXPCAdapter)initWithDiscovery:(id)discovery delegate:(id)delegate;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDDeviceDiscoveringXPCAdapter

- (FMDDeviceDiscoveringXPCAdapter)initWithDiscovery:(id)discovery delegate:(id)delegate
{
  discoveryCopy = discovery;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = FMDDeviceDiscoveringXPCAdapter;
  v8 = [(FMDDeviceDiscoveringXPCAdapter *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(FMDDeviceDiscoveringXPCAdapter *)v8 setDiscovery:discoveryCopy];
    [(FMDDeviceDiscoveringXPCAdapter *)v9 setDelegate:delegateCopy];
    objc_initWeak(&location, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000029D0;
    v18[3] = &unk_10000C468;
    objc_copyWeak(&v19, &location);
    discovery = [(FMDDeviceDiscoveringXPCAdapter *)v9 discovery];
    [discovery setDidEndDiscovery:v18];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002A3C;
    v16[3] = &unk_10000C490;
    objc_copyWeak(&v17, &location);
    discovery2 = [(FMDDeviceDiscoveringXPCAdapter *)v9 discovery];
    [discovery2 setDidDiscoverDevice:v16];

    objc_copyWeak(&v15, &location);
    v12 = [(FMDDeviceDiscoveringXPCAdapter *)v9 discovery:_NSConcreteStackBlock];
    [v12 setDidLoseDevice:&v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)startDiscovery
{
  discovery = [(FMDDeviceDiscoveringXPCAdapter *)self discovery];
  [discovery startDiscovery];
}

- (void)stopDiscovery
{
  discovery = [(FMDDeviceDiscoveringXPCAdapter *)self discovery];
  [discovery stopDiscovery];
}

@end