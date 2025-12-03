@interface CAFSeatBeltObservable
- (NSString)description;
- (void)seatBeltService:(id)service didUpdateBuckleState:(unsigned __int8)state;
- (void)seatBeltService:(id)service didUpdateSeatBeltIndicator:(unsigned __int8)indicator;
- (void)seatBeltService:(id)service didUpdateSeatOccupancy:(unsigned __int8)occupancy;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFSeatBeltObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSeatBeltObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)seatBeltService:(id)service didUpdateSeatOccupancy:(unsigned __int8)occupancy
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatOccupancy:)(selfCopy, occupancy);
}

- (void)seatBeltService:(id)service didUpdateBuckleState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatBeltObservable.seatBeltService(_:didUpdateBuckleState:)(selfCopy, state);
}

- (void)seatBeltService:(id)service didUpdateSeatBeltIndicator:(unsigned __int8)indicator
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatBeltObservable.seatBeltService(_:didUpdateSeatBeltIndicator:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSeatBeltObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatBeltObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatBeltObservable.serviceDidFinishGroupUpdate(_:)();
}

@end