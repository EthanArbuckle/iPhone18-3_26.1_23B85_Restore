@interface CAFCustomImageArchiveObservable
- (NSString)description;
- (void)customImageArchiveService:(id)service didUpdateIdentifier:(id)identifier;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCustomImageArchiveObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCustomImageArchiveObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)customImageArchiveService:(id)service didUpdateIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFCustomImageArchiveObservable.customImageArchiveService(_:didUpdateIdentifier:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCustomImageArchiveObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCustomImageArchiveObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCustomImageArchiveObservable.serviceDidFinishGroupUpdate(_:)();
}

@end