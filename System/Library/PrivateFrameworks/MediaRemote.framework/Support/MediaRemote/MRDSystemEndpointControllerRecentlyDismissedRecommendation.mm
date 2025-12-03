@interface MRDSystemEndpointControllerRecentlyDismissedRecommendation
- (BOOL)isEqual:(id)equal;
- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithDictionaryRepresentation:(id)representation;
- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithOutputDevice:(id)device date:(id)date disableDuration:(double)duration devicePlaybackSessionID:(id)d;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation MRDSystemEndpointControllerRecentlyDismissedRecommendation

- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithOutputDevice:(id)device date:(id)date disableDuration:(double)duration devicePlaybackSessionID:(id)d
{
  deviceCopy = device;
  dateCopy = date;
  dCopy = d;
  selfCopy = 0;
  if (deviceCopy && dateCopy)
  {
    v18.receiver = self;
    v18.super_class = MRDSystemEndpointControllerRecentlyDismissedRecommendation;
    v15 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_outputDeviceUID, device);
      objc_storeStrong(&v16->_date, date);
      v16->_disableDuration = duration;
      objc_storeStrong(&v16->_devicePlaybackSessionID, d);
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (MRDSystemEndpointControllerRecentlyDismissedRecommendation)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [MRDSystemEndpointControllerRecentlyDismissedRecommendation alloc];
  v6 = [representationCopy objectForKeyedSubscript:@"outputDeviceUID"];
  v7 = [representationCopy objectForKeyedSubscript:@"date"];
  v8 = [representationCopy objectForKeyedSubscript:@"disableDuration"];
  [v8 doubleValue];
  v10 = v9;
  v11 = [representationCopy objectForKeyedSubscript:@"devicePlaybackSessionID"];

  v12 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v5 initWithOutputDevice:v6 date:v7 disableDuration:v11 devicePlaybackSessionID:v10];
  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  outputDeviceUID = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self outputDeviceUID];
  [v3 setObject:outputDeviceUID forKeyedSubscript:@"outputDeviceUID"];

  date = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self date];
  [v3 setObject:date forKeyedSubscript:@"date"];

  [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self disableDuration];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"disableDuration"];

  date2 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self date];
  [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self disableDuration];
  v8 = [date2 dateByAddingTimeInterval:?];
  [v8 timeIntervalSinceNow];
  v9 = [NSNumber numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"timeRemaining"];

  devicePlaybackSessionID = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self devicePlaybackSessionID];
  [v3 setObject:devicePlaybackSessionID forKeyedSubscript:@"devicePlaybackSessionID"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      outputDeviceUID = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)self outputDeviceUID];
      outputDeviceUID2 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v5 outputDeviceUID];
      if (outputDeviceUID == outputDeviceUID2)
      {
        v8 = 1;
      }

      else
      {
        v8 = [outputDeviceUID isEqual:outputDeviceUID2];
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