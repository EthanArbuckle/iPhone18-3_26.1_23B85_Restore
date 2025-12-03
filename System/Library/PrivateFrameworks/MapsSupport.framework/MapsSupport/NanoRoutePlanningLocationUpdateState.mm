@interface NanoRoutePlanningLocationUpdateState
- (NanoRoutePlanningLocationUpdateState)initWithStateManager:(id)manager isolationQueue:(id)queue;
- (void)_handleLocation:(id)location error:(id)error;
- (void)start;
- (void)stop;
@end

@implementation NanoRoutePlanningLocationUpdateState

- (NanoRoutePlanningLocationUpdateState)initWithStateManager:(id)manager isolationQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = NanoRoutePlanningLocationUpdateState;
  v4 = [(NanoRoutePlanningState *)&v8 initWithStateManager:manager isolationQueue:queue];
  if (v4)
  {
    v5 = objc_alloc_init(SingleLocationUpdate);
    locationUpdater = v4->_locationUpdater;
    v4->_locationUpdater = v5;
  }

  return v4;
}

- (void)start
{
  objc_initWeak(&location, self);
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  traits = [request traits];
  deviceLocation = [traits deviceLocation];

  if (deviceLocation)
  {
    manager2 = [(NanoRoutePlanningState *)self manager];
    [manager2 updateWithBlock:&stru_100085268];
  }

  else
  {
    locationUpdater = self->_locationUpdater;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EF48;
    v9[3] = &unk_1000852B8;
    objc_copyWeak(&v10, &location);
    [(SingleLocationUpdate *)locationUpdater requestSingleLocationUpdateWithCompletionHandler:v9];
    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)_handleLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v8 = sub_100053324();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v16 = locationCopy;
      v17 = 2112;
      v18 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Handle location:%{private}@, error:%@", buf, 0x16u);
    }

    if (locationCopy)
    {
      v9 = [[GEOLocation alloc] initWithCLLocation:locationCopy];
    }

    else
    {
      v9 = 0;
    }

    manager = [(NanoRoutePlanningState *)self manager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F214;
    v12[3] = &unk_1000852E0;
    v13 = errorCopy;
    v14 = v9;
    v11 = v9;
    [manager updateWithBlock:v12];
  }
}

- (void)stop
{
  [(SingleLocationUpdate *)self->_locationUpdater cancel];
  locationUpdater = self->_locationUpdater;
  self->_locationUpdater = 0;
}

@end