@interface MRHeadphonesRouteDetectorDataSource
- (BOOL)relevantRouteDetector:(id)detector isEndpointRelevant:(id)relevant;
@end

@implementation MRHeadphonesRouteDetectorDataSource

- (BOOL)relevantRouteDetector:(id)detector isEndpointRelevant:(id)relevant
{
  relevantCopy = relevant;
  if ([relevantCopy isLocalEndpoint])
  {
    isCompanionEndpoint = 1;
  }

  else
  {
    isCompanionEndpoint = [relevantCopy isCompanionEndpoint];
  }

  return isCompanionEndpoint;
}

@end