@interface CAFProtocolPerfTestObservable
- (NSString)description;
- (void)protocolPerfTestService:(id)service didUpdateTestInt16:(signed __int16)int16;
- (void)protocolPerfTestService:(id)service didUpdateTestInt32:(int)int32;
- (void)protocolPerfTestService:(id)service didUpdateTestUInt16:(unsigned __int16)int16;
- (void)protocolPerfTestService:(id)service didUpdateTestUInt32:(unsigned int)int32;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFProtocolPerfTestObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFProtocolPerfTestObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)protocolPerfTestService:(id)service didUpdateTestInt32:(int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt32:)(selfCopy, int32);
}

- (void)protocolPerfTestService:(id)service didUpdateTestInt16:(signed __int16)int16
{
  serviceCopy = service;
  selfCopy = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt16:)();
}

- (void)protocolPerfTestService:(id)service didUpdateTestUInt32:(unsigned int)int32
{
  serviceCopy = service;
  selfCopy = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt32:)(selfCopy, int32);
}

- (void)protocolPerfTestService:(id)service didUpdateTestUInt16:(unsigned __int16)int16
{
  serviceCopy = service;
  selfCopy = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt16:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFProtocolPerfTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFProtocolPerfTestObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFProtocolPerfTestObservable.serviceDidFinishGroupUpdate(_:)();
}

@end