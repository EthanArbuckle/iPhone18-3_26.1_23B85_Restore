@interface HeartRateCoordinatorClient
- (void)handleFilteredHeartRate:(id)rate;
- (void)handleOneSecondStreamingHeartRate:(id)rate;
@end

@implementation HeartRateCoordinatorClient

- (void)handleFilteredHeartRate:(id)rate
{
  rateCopy = rate;
  selfCopy = self;
  HeartRateCoordinatorClient.handleFilteredHeartRate(_:)(rateCopy);
}

- (void)handleOneSecondStreamingHeartRate:(id)rate
{
  rateCopy = rate;
  selfCopy = self;
  HeartRateCoordinatorClient.handleOneSecondStreamingHeartRate(_:)(rateCopy);
}

@end