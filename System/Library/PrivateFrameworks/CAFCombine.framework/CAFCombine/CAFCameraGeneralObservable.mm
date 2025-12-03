@interface CAFCameraGeneralObservable
- (NSString)description;
- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on;
- (void)cameraGeneralService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCameraGeneralObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCameraGeneralObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cameraGeneralService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateOn:)();
}

- (void)cameraGeneralService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  serviceCopy = service;
  selfCopy = self;
  CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateUserDismissible:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCameraGeneralObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCameraGeneralObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCameraGeneralObservable.serviceDidFinishGroupUpdate(_:)();
}

@end