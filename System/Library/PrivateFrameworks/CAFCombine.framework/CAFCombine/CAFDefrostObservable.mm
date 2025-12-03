@interface CAFDefrostObservable
- (NSString)description;
- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)defrostService:(id)service didUpdateTypes:(unint64_t)types;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDefrostObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDefrostObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)defrostService:(id)service didUpdateTypes:(unint64_t)types
{
  serviceCopy = service;
  selfCopy = self;
  CAFDefrostObservable.defrostService(_:didUpdateTypes:)();
}

- (void)defrostService:(id)service didUpdateLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFDefrostObservable.defrostService(_:didUpdateLevel:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDefrostObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDefrostObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDefrostObservable.serviceDidFinishGroupUpdate(_:)();
}

@end