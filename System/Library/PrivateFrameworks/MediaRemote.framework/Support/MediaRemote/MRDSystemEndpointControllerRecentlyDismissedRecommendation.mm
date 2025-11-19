@interface MRDSystemEndpointControllerRecentlyDismissedRecommendation
- (BOOL)isEqual:(id)a3;
- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithDictionaryRepresentation:(id)a3;
- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithOutputDevice:(id)a3 date:(id)a4 disableDuration:(double)a5 devicePlaybackSessionID:(id)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation MRDSystemEndpointControllerRecentlyDismissedRecommendation

- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithOutputDevice:(id)a3 date:(id)a4 disableDuration:(double)a5 devicePlaybackSessionID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = 0;
  if (v11 && v12)
  {
    v18.receiver = self;
    v18.super_class = MRDSystemEndpointControllerRecentlyDismissedRecommendation;
    v15 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_outputDeviceUID, a3);
      objc_storeStrong(&v16->_date, a4);
      v16->_disableDuration = a5;
      objc_storeStrong(&v16->_devicePlaybackSessionID, a6);
    }

    self = v16;
    v14 = self;
  }

  return v14;
}

- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [MRDSystemEndpointControllerRecentlyDismissedRecommendation alloc];
  v6 = [v4 objectForKeyedSubscript:@"outputDeviceUID"];
  v7 = [v4 objectForKeyedSubscript:@"date"];
  v8 = [v4 objectForKeyedSubscript:@"disableDuration"];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"devicePlaybackSessionID"];

  v12 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v5 initWithOutputDevice:v6 date:v7 disableDuration:v11 devicePlaybackSessionID:v10];
  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self outputDeviceUID];
  [v3 setObject:v4 forKeyedSubscript:@"outputDeviceUID"];

  v5 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self date];
  [v3 setObject:v5 forKeyedSubscript:@"date"];

  [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self disableDuration];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"disableDuration"];

  v7 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self date];
  [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self disableDuration];
  v8 = [v7 dateByAddingTimeInterval:?];
  [v8 timeIntervalSinceNow];
  v9 = [NSNumber numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"timeRemaining"];

  v10 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self devicePlaybackSessionID];
  [v3 setObject:v10 forKeyedSubscript:@"devicePlaybackSessionID"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self outputDeviceUID];
      v7 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v5 outputDeviceUID];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end