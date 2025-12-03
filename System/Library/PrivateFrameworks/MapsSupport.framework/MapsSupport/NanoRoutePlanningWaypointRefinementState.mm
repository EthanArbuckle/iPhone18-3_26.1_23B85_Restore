@interface NanoRoutePlanningWaypointRefinementState
- (void)_handleCompletionWithWaypoints:(id)waypoints error:(id)error;
- (void)start;
@end

@implementation NanoRoutePlanningWaypointRefinementState

- (void)start
{
  manager = [(NanoRoutePlanningState *)self manager];
  request = [manager request];

  waypoints = [request waypoints];
  waypoints2 = [request waypoints];
  v7 = sub_1000282B8(waypoints2, &stru_100085320);

  v8 = [v7 count];
  v9 = [waypoints count];
  v10 = sub_100053324();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v8 == v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "All waypoints are already refined", buf, 2u);
    }

    [(NanoRoutePlanningWaypointRefinementState *)self _handleCompletionWithWaypoints:waypoints error:0];
  }

  else
  {
    if (v11)
    {
      *buf = 134217984;
      v30 = [waypoints count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Will refine %lu waypoints", buf, 0xCu);
    }

    traits = [request traits];
    v13 = [[NSMutableDictionary alloc] initWithCapacity:2];
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000F614;
    v24[3] = &unk_100085370;
    v25 = v14;
    v26 = traits;
    v27 = request;
    v15 = v13;
    v28 = v15;
    v16 = traits;
    v17 = v14;
    [waypoints enumerateObjectsUsingBlock:v24];
    dispatch_group_leave(v17);
    objc_initWeak(buf, self);
    isolationQueue = self->super._isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F980;
    block[3] = &unk_100085290;
    objc_copyWeak(&v23, buf);
    v21 = v15;
    v22 = waypoints;
    v19 = v15;
    dispatch_group_notify(v17, isolationQueue, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)_handleCompletionWithWaypoints:(id)waypoints error:(id)error
{
  waypointsCopy = waypoints;
  errorCopy = error;
  if ([(NanoRoutePlanningState *)self isActive])
  {
    v8 = sub_1000282B8(waypointsCopy, &stru_1000853B0);
    v9 = sub_100053324();
    v10 = v9;
    if (errorCopy)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = errorCopy;
        v21 = 2114;
        v22 = v8;
        v11 = "Error refining waypoints: %{public}@\nRefinement success: %{public}@";
        v12 = v10;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 22;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v20 = v8;
      v11 = "Refined waypoints (%{public}@)";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
      goto LABEL_7;
    }

    manager = [(NanoRoutePlanningState *)self manager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000FDCC;
    v16[3] = &unk_1000852E0;
    v17 = waypointsCopy;
    v18 = errorCopy;
    [manager updateWithBlock:v16];
  }
}

@end