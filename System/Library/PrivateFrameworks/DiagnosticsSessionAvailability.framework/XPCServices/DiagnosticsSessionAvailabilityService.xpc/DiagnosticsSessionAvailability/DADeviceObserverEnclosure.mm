@interface DADeviceObserverEnclosure
- (DADeviceObserverEnclosure)initWithObserver:(id)a3 delegate:(id)a4;
- (DADeviceObserverEnclosureDelegate)delegate;
- (void)begin;
- (void)end;
- (void)oneshotWithHandler:(id)a3;
@end

@implementation DADeviceObserverEnclosure

- (DADeviceObserverEnclosure)initWithObserver:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DADeviceObserverEnclosure;
  v9 = [(DADeviceObserverEnclosure *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, a3);
    v11 = +[NSSet set];
    devices = v10->_devices;
    v10->_devices = v11;

    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)begin
{
  v3 = [(DADeviceObserverEnclosure *)self identifier];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [(DADeviceObserverEnclosure *)self observer];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100002BB4;
    v9 = &unk_1000145D0;
    objc_copyWeak(&v10, &location);
    v5 = [v4 beginDiscoveringDevicesWithHandler:&v6];
    [(DADeviceObserverEnclosure *)self setIdentifier:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)end
{
  v3 = [(DADeviceObserverEnclosure *)self identifier];

  if (v3)
  {
    v4 = [(DADeviceObserverEnclosure *)self observer];
    v5 = [(DADeviceObserverEnclosure *)self identifier];
    [v4 endDiscoveringDevicesWithIdentifier:v5];

    [(DADeviceObserverEnclosure *)self setIdentifier:0];
  }
}

- (void)oneshotWithHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(DADeviceObserverEnclosure *)self observer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002E40;
  v7[3] = &unk_1000145F8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 discoverAllDevicesWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (DADeviceObserverEnclosureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end