@interface CAFDriveModeObservable
- (NSString)description;
- (void)driveModeService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)modeItemsService:(id)service didUpdateCurrentIndex:(unsigned int)index;
- (void)modeItemsService:(id)service didUpdateDefaultIndex:(unsigned int)index;
- (void)modeItemsService:(id)service didUpdateIdentifiers:(id)identifiers;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDriveModeObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDriveModeObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)modeItemsService:(id)service didUpdateIdentifiers:(id)identifiers
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateIdentifiers:)();
}

- (void)modeItemsService:(id)service didUpdateCurrentIndex:(unsigned int)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateCurrentIndex:)();
}

- (void)modeItemsService:(id)service didUpdateDefaultIndex:(unsigned int)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateDefaultIndex:)();
}

- (void)driveModeService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFDriveModeObservable.driveModeService(_:didUpdateHidden:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDriveModeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDriveModeObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDriveModeObservable.serviceDidFinishGroupUpdate(_:)();
}

@end