@interface MNTraceNavigationUpdateRecorder
- (MNTraceNavigationUpdateRecorder)initWithTraceRecorder:(id)recorder;
- (void)_recordRouteChangeWithRouteInfo:(id)info reason:(unint64_t)reason;
@end

@implementation MNTraceNavigationUpdateRecorder

- (void)_recordRouteChangeWithRouteInfo:(id)info reason:(unint64_t)reason
{
  infoCopy = info;
  v23 = infoCopy;
  if (reason == 13)
  {
    route = [infoCopy route];
    routeInitializerData = [route routeInitializerData];

    traceRecorder = self->_traceRecorder;
    directionsRequest = [routeInitializerData directionsRequest];
    directionsResponse = [routeInitializerData directionsResponse];
    waypoints = [routeInitializerData waypoints];
    [(MNTraceRecorder *)self->_traceRecorder timeSinceRecordingBegan];
    v14 = v13;
    [(MNTraceRecorder *)self->_traceRecorder timeSinceRecordingBegan];
    [(MNTraceRecorder *)traceRecorder recordDirectionsRequest:directionsRequest response:directionsResponse error:0 waypoints:waypoints selectedRouteIndex:0 requestTimestamp:v14 responseTimestamp:v15];

    infoCopy = v23;
  }

  v16 = self->_traceRecorder;
  route2 = [infoCopy route];
  indexInResponse = [route2 indexInResponse];
  route3 = [v23 route];
  directionsResponseID = [route3 directionsResponseID];
  route4 = [v23 route];
  etauResponseID = [route4 etauResponseID];
  [(MNTraceRecorder *)v16 recordRouteChangeWithIndex:indexInResponse directionsResponseID:directionsResponseID etauResponseID:etauResponseID rerouteReason:reason];
}

- (MNTraceNavigationUpdateRecorder)initWithTraceRecorder:(id)recorder
{
  recorderCopy = recorder;
  if (recorderCopy && (v9.receiver = self, v9.super_class = MNTraceNavigationUpdateRecorder, v6 = [(MNTraceNavigationUpdateRecorder *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_traceRecorder, recorder);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end