@interface MRDSystemEndpointControllerHelper
- (MRDSystemEndpointControllerHelper)initWithSystemEndpointController:(id)controller;
- (void)_handleDeviceInfoDidChange:(id)change;
- (void)_initialize;
- (void)_onWorkerQueue_retargetWithReason:(id)reason;
- (void)_retargetWithReason:(id)reason;
@end

@implementation MRDSystemEndpointControllerHelper

- (MRDSystemEndpointControllerHelper)initWithSystemEndpointController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MRDSystemEndpointControllerHelper;
  v6 = [(MRDSystemEndpointControllerHelper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.MRDSystemEndpointControllerHelper", v8);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v9;

    v11 = dispatch_time(0, 3000000000);
    workerQueue = [(MRDSystemEndpointControllerHelper *)v7 workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016BB38;
    block[3] = &unk_1004B6D08;
    v15 = v7;
    dispatch_after(v11, workerQueue, block);
  }

  return v7;
}

- (void)_initialize
{
  workerQueue = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

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
  selfCopy = self;
  v10 = [(MRAVRoutingDiscoverySession *)v8 addEndpointsAddedCallback:v14];
  v11 = self->_discoverySession;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016BCD8;
  v13[3] = &unk_1004BFB70;
  v13[4] = selfCopy;
  v12 = [(MRAVRoutingDiscoverySession *)v11 addEndpointsRemovedCallback:v13];
}

- (void)_handleDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  mr_origin = [changeCopy mr_origin];
  mr_deviceInfo = [changeCopy mr_deviceInfo];
  mr_previousDeviceInfo = [changeCopy mr_previousDeviceInfo];

  if ([mr_origin isLocal])
  {
    v7 = +[MRUserSettings currentSettings];
    supportASERetargetting = [v7 supportASERetargetting];

    if (supportASERetargetting)
    {
      parentGroupID = [mr_deviceInfo parentGroupID];
      parentGroupID2 = [mr_previousDeviceInfo parentGroupID];
      v11 = parentGroupID2;
      if (parentGroupID == parentGroupID2)
      {
      }

      else
      {
        v12 = [parentGroupID isEqual:parentGroupID2];

        if ((v12 & 1) == 0)
        {
          v13 = @"ParentGroupID Changed";
LABEL_13:
          [(MRDSystemEndpointControllerHelper *)self _retargetWithReason:v13];
          goto LABEL_14;
        }
      }

      isAirPlayActive = [mr_deviceInfo isAirPlayActive];
      if (isAirPlayActive == [mr_previousDeviceInfo isAirPlayActive])
      {
        groupContainsDiscoverableGroupLeader = [mr_deviceInfo groupContainsDiscoverableGroupLeader];
        if (groupContainsDiscoverableGroupLeader == [mr_previousDeviceInfo groupContainsDiscoverableGroupLeader])
        {
          parentGroupContainsDiscoverableGroupLeader = [mr_deviceInfo parentGroupContainsDiscoverableGroupLeader];
          if (parentGroupContainsDiscoverableGroupLeader == [mr_previousDeviceInfo parentGroupContainsDiscoverableGroupLeader])
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

- (void)_retargetWithReason:(id)reason
{
  reasonCopy = reason;
  workerQueue = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016BF8C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workerQueue, v7);
}

- (void)_onWorkerQueue_retargetWithReason:(id)reason
{
  reasonCopy = reason;
  workerQueue = [(MRDSystemEndpointControllerHelper *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDSystemEndpointControllerHelper] Reevaluating with reason=%@", &v12, 0xCu);
  }

  v7 = +[MRUserSettings currentSettings];
  supportASERetargetting = [v7 supportASERetargetting];

  if (supportASERetargetting)
  {
    v9 = [MRUpdateActiveSystemEndpointRequest alloc];
    activeOutputDeviceUID = [(MRDAVSystemEndpointController *)self->_controller activeOutputDeviceUID];
    v11 = [v9 initWithOutputDeviceUID:activeOutputDeviceUID reason:reasonCopy];

    [(MRDAVSystemEndpointController *)self->_controller updateSystemEndpointForRequest:v11 event:9 completion:0];
  }
}

@end