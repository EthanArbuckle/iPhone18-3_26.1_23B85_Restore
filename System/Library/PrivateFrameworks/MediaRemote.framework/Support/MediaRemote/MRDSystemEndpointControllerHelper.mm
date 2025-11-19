@interface MRDSystemEndpointControllerHelper
- (MRDSystemEndpointControllerHelper)initWithSystemEndpointController:(id)a3;
- (void)_handleDeviceInfoDidChange:(id)a3;
- (void)_initialize;
- (void)_onWorkerQueue_retargetWithReason:(id)a3;
- (void)_retargetWithReason:(id)a3;
@end

@implementation MRDSystemEndpointControllerHelper

- (MRDSystemEndpointControllerHelper)initWithSystemEndpointController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MRDSystemEndpointControllerHelper;
  v6 = [(MRDSystemEndpointControllerHelper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.MRDSystemEndpointControllerHelper", v8);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v9;

    v11 = dispatch_time(0, 3000000000);
    v12 = [(MRDSystemEndpointControllerHelper *)v7 workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016BB38;
    block[3] = &unk_1004B6D08;
    v15 = v7;
    dispatch_after(v11, v12, block);
  }

  return v7;
}

- (void)_initialize
{
  v3 = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleDeviceInfoDidChange:" name:kMRDeviceInfoDidChangeNotification object:0];

  v5 = [[MRAVRoutingDiscoverySessionConfiguration alloc] initWithEndpointFeatures:8];
  [v5 setAlwaysAllowUpdates:1];
  v6 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v5];
  discoverySession = self->_discoverySession;
  self->_discoverySession = v6;

  v8 = self->_discoverySession;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003CB9C;
  v14[3] = &unk_1004BFB70;
  v14[4] = self;
  v9 = self;
  v10 = [(MRAVRoutingDiscoverySession *)v8 addEndpointsAddedCallback:v14];
  v11 = self->_discoverySession;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016BCD8;
  v13[3] = &unk_1004BFB70;
  v13[4] = v9;
  v12 = [(MRAVRoutingDiscoverySession *)v11 addEndpointsRemovedCallback:v13];
}

- (void)_handleDeviceInfoDidChange:(id)a3
{
  v4 = a3;
  v17 = [v4 mr_origin];
  v5 = [v4 mr_deviceInfo];
  v6 = [v4 mr_previousDeviceInfo];

  if ([v17 isLocal])
  {
    v7 = +[MRUserSettings currentSettings];
    v8 = [v7 supportASERetargetting];

    if (v8)
    {
      v9 = [v5 parentGroupID];
      v10 = [v6 parentGroupID];
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        v12 = [v9 isEqual:v10];

        if ((v12 & 1) == 0)
        {
          v13 = @"ParentGroupID Changed";
LABEL_13:
          [(MRDSystemEndpointControllerHelper *)self _retargetWithReason:v13];
          goto LABEL_14;
        }
      }

      v14 = [v5 isAirPlayActive];
      if (v14 == [v6 isAirPlayActive])
      {
        v15 = [v5 groupContainsDiscoverableGroupLeader];
        if (v15 == [v6 groupContainsDiscoverableGroupLeader])
        {
          v16 = [v5 parentGroupContainsDiscoverableGroupLeader];
          if (v16 == [v6 parentGroupContainsDiscoverableGroupLeader])
          {
            goto LABEL_14;
          }

          v13 = @"parentGroupContainsDiscoverableGroupLeader Changed";
        }

        else
        {
          v13 = @"groupContainsDiscoverableGroupLeader Changed";
        }
      }

      else
      {
        v13 = @"isAirPlayActive Changed";
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)_retargetWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016BF8C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWorkerQueue_retargetWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDSystemEndpointControllerHelper] Reevaluating with reason=%@", &v12, 0xCu);
  }

  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 supportASERetargetting];

  if (v8)
  {
    v9 = [MRUpdateActiveSystemEndpointRequest alloc];
    v10 = [(MRDAVSystemEndpointController *)self->_controller activeOutputDeviceUID];
    v11 = [v9 initWithOutputDeviceUID:v10 reason:v4];

    [(MRDAVSystemEndpointController *)self->_controller updateSystemEndpointForRequest:v11 event:9 completion:0];
  }
}

@end