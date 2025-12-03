@interface CAFSoundDistributionObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)soundDistributionService:(id)service didUpdateBalance:(char)balance;
- (void)soundDistributionService:(id)service didUpdateFade:(char)fade;
@end

@implementation CAFSoundDistributionObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSoundDistributionObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)soundDistributionService:(id)service didUpdateBalance:(char)balance
{
  serviceCopy = service;
  selfCopy = self;
  CAFSoundDistributionObservable.soundDistributionService(_:didUpdateBalance:)();
}

- (void)soundDistributionService:(id)service didUpdateFade:(char)fade
{
  serviceCopy = service;
  selfCopy = self;
  CAFSoundDistributionObservable.soundDistributionService(_:didUpdateFade:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSoundDistributionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSoundDistributionObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSoundDistributionObservable.serviceDidFinishGroupUpdate(_:)();
}

@end