@interface CAFTypeTestIndexByPositionObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)typeTestIndexByPositionService:(id)service didUpdateTestInt32:(int)int32;
@end

@implementation CAFTypeTestIndexByPositionObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTypeTestIndexByPositionObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)typeTestIndexByPositionService:(id)service didUpdateTestInt32:(int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFTypeTestIndexByPositionObservable.typeTestIndexByPositionService(_:didUpdateTestInt32:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestIndexByPositionObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTypeTestIndexByPositionObservable.serviceDidFinishGroupUpdate(_:)();
}

@end