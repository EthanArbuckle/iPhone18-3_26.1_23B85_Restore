@interface FAFetchFollowupOperation
- (id)fetchFollowUps;
@end

@implementation FAFetchFollowupOperation

- (id)fetchFollowUps
{
  networkService = [(FANetworkClient *)self networkService];
  v3 = [networkService standardPlistRequestWithEndpoint:@"fetchFamilyFollowups"];

  return v3;
}

@end