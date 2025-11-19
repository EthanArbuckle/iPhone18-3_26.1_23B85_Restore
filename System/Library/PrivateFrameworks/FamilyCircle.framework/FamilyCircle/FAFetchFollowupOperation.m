@interface FAFetchFollowupOperation
- (id)fetchFollowUps;
@end

@implementation FAFetchFollowupOperation

- (id)fetchFollowUps
{
  v2 = [(FANetworkClient *)self networkService];
  v3 = [v2 standardPlistRequestWithEndpoint:@"fetchFamilyFollowups"];

  return v3;
}

@end