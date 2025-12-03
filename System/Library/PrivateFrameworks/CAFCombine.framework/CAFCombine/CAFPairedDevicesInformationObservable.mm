@interface CAFPairedDevicesInformationObservable
- (NSString)description;
- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFPairedDevicesInformationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFPairedDevicesInformationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)pairedDevicesInformationService:(id)service didUpdatePairedDeviceList:(id)list
{
  serviceCopy = service;
  listCopy = list;
  selfCopy = self;
  CAFPairedDevicesInformationObservable.pairedDevicesInformationService(_:didUpdatePairedDeviceList:)(selfCopy, listCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFPairedDevicesInformationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFPairedDevicesInformationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFPairedDevicesInformationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end