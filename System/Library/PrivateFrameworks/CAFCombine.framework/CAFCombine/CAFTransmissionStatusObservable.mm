@interface CAFTransmissionStatusObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)transmissionStatusService:(id)service didUpdateGearPosition:(unsigned __int8)position;
- (void)transmissionStatusService:(id)service didUpdateTransmissionMode:(unsigned __int8)mode;
@end

@implementation CAFTransmissionStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTransmissionStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)transmissionStatusService:(id)service didUpdateTransmissionMode:(unsigned __int8)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateTransmissionMode:)(selfCopy, mode);
}

- (void)transmissionStatusService:(id)service didUpdateGearPosition:(unsigned __int8)position
{
  serviceCopy = service;
  selfCopy = self;
  CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateGearPosition:)(selfCopy, position);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTransmissionStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTransmissionStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTransmissionStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end