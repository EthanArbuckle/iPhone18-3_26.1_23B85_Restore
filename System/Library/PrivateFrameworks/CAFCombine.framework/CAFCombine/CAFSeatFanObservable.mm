@interface CAFSeatFanObservable
- (NSString)description;
- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(id)service didUpdateOn:(BOOL)on;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFSeatFanObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSeatFanObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)fanService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatFanObservable.fanService(_:didUpdateOn:)();
}

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatFanObservable.fanService(_:didUpdateFanLevel:)();
}

- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatFanObservable.fanService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSeatFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatFanObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatFanObservable.serviceDidFinishGroupUpdate(_:)();
}

@end