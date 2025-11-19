@interface MNTraceNavigationUpdateRecorder
- (MNTraceNavigationUpdateRecorder)initWithTraceRecorder:(id)a3;
- (void)_recordRouteChangeWithRouteInfo:(id)a3 reason:(unint64_t)a4;
@end

@implementation MNTraceNavigationUpdateRecorder

- (void)_recordRouteChangeWithRouteInfo:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v23 = v6;
  if (a4 == 13)
  {
    v7 = [v6 route];
    v8 = [v7 routeInitializerData];

    traceRecorder = self->_traceRecorder;
    v10 = [v8 directionsRequest];
    v11 = [v8 directionsResponse];
    v12 = [v8 waypoints];
    [(MNTraceRecorder *)self->_traceRecorder timeSinceRecordingBegan];
    v14 = v13;
    [(MNTraceRecorder *)self->_traceRecorder timeSinceRecordingBegan];
    [(MNTraceRecorder *)traceRecorder recordDirectionsRequest:v10 response:v11 error:0 waypoints:v12 selectedRouteIndex:0 requestTimestamp:v14 responseTimestamp:v15];

    v6 = v23;
  }

  v16 = self->_traceRecorder;
  v17 = [v6 route];
  v18 = [v17 indexInResponse];
  v19 = [v23 route];
  v20 = [v19 directionsResponseID];
  v21 = [v23 route];
  v22 = [v21 etauResponseID];
  [(MNTraceRecorder *)v16 recordRouteChangeWithIndex:v18 directionsResponseID:v20 etauResponseID:v22 rerouteReason:a4];
}

- (MNTraceNavigationUpdateRecorder)initWithTraceRecorder:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = MNTraceNavigationUpdateRecorder, v6 = [(MNTraceNavigationUpdateRecorder *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_traceRecorder, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end