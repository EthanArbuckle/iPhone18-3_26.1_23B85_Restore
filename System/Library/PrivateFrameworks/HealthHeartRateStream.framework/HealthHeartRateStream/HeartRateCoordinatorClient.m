@interface HeartRateCoordinatorClient
- (void)handleFilteredHeartRate:(id)a3;
- (void)handleOneSecondStreamingHeartRate:(id)a3;
@end

@implementation HeartRateCoordinatorClient

- (void)handleFilteredHeartRate:(id)a3
{
  v4 = a3;
  v5 = self;
  HeartRateCoordinatorClient.handleFilteredHeartRate(_:)(v4);
}

- (void)handleOneSecondStreamingHeartRate:(id)a3
{
  v4 = a3;
  v5 = self;
  HeartRateCoordinatorClient.handleOneSecondStreamingHeartRate(_:)(v4);
}

@end