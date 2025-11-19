@interface MNTraceRecordingData
+ (id)traceRecordingDataFromCompanionRouteDetails:(id)a3;
@end

@implementation MNTraceRecordingData

+ (id)traceRecordingDataFromCompanionRouteDetails:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 hasRequest] && objc_msgSend(v5, "hasResponse"))
  {
    v6 = objc_alloc_init(a1);
    v7 = [[NSMutableArray alloc] initWithCapacity:2];
    v8 = [v5 composedOrigin];
    if (v8)
    {
      [v7 addObject:v8];
    }

    v9 = [v5 composedDestination];
    if (v9)
    {
      [v7 addObject:v9];
    }

    v10 = [v7 copy];
    [v6 setWaypoints:v10];

    v11 = [v5 request];
    [v6 setInitialDirectionsRequest:v11];

    v12 = [v5 response];
    [v6 setInitialDirectionsResponse:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end