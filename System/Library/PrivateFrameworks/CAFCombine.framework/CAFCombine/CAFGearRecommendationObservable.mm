@interface CAFGearRecommendationObservable
- (NSString)description;
- (void)gearRecommendationService:(id)service didUpdateGearShiftRecommendation:(char)recommendation;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFGearRecommendationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFGearRecommendationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)gearRecommendationService:(id)service didUpdateGearShiftRecommendation:(char)recommendation
{
  serviceCopy = service;
  selfCopy = self;
  CAFGearRecommendationObservable.gearRecommendationService(_:didUpdateGearShiftRecommendation:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFGearRecommendationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFGearRecommendationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFGearRecommendationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end