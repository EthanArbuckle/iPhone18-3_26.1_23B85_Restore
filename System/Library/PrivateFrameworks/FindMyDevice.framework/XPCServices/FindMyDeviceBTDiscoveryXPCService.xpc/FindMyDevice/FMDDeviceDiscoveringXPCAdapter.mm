@interface FMDDeviceDiscoveringXPCAdapter
- (FMDDeviceDiscoveringXPCAdapter)initWithDiscovery:(id)a3 delegate:(id)a4;
- (void)startDiscovery;
- (void)stopDiscovery;
@end

@implementation FMDDeviceDiscoveringXPCAdapter

- (FMDDeviceDiscoveringXPCAdapter)initWithDiscovery:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = FMDDeviceDiscoveringXPCAdapter;
  v8 = [(FMDDeviceDiscoveringXPCAdapter *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(FMDDeviceDiscoveringXPCAdapter *)v8 setDiscovery:v6];
    [(FMDDeviceDiscoveringXPCAdapter *)v9 setDelegate:v7];
    objc_initWeak(&location, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000029D0;
    v18[3] = &unk_10000C468;
    objc_copyWeak(&v19, &location);
    v10 = [(FMDDeviceDiscoveringXPCAdapter *)v9 discovery];
    [v10 setDidEndDiscovery:v18];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002A3C;
    v16[3] = &unk_10000C490;
    objc_copyWeak(&v17, &location);
    v11 = [(FMDDeviceDiscoveringXPCAdapter *)v9 discovery];
    [v11 setDidDiscoverDevice:v16];

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
  v2 = [(FMDDeviceDiscoveringXPCAdapter *)self discovery];
  [v2 startDiscovery];
}

- (void)stopDiscovery
{
  v2 = [(FMDDeviceDiscoveringXPCAdapter *)self discovery];
  [v2 stopDiscovery];
}

@end