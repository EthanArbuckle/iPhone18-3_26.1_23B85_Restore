@interface MRHeadphonesRouteDetectorDataSource
- (BOOL)relevantRouteDetector:(id)a3 isEndpointRelevant:(id)a4;
@end

@implementation MRHeadphonesRouteDetectorDataSource

- (BOOL)relevantRouteDetector:(id)a3 isEndpointRelevant:(id)a4
{
  v4 = a4;
  if ([v4 isLocalEndpoint])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isCompanionEndpoint];
  }

  return v5;
}

@end