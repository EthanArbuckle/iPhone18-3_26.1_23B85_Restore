@interface CAFCurrentUserStatusObservable
- (NSString)description;
- (void)currentUserStatusService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)currentUserStatusService:(id)service didUpdateImage:(id)image;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCurrentUserStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCurrentUserStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)currentUserStatusService:(id)service didUpdateImage:(id)image
{
  if (image)
  {
    serviceCopy = service;
    selfCopy = self;
    imageCopy = image;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    serviceCopy2 = service;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateImage:)();
  outlined consume of Data?(v9, v11);
}

- (void)currentUserStatusService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateHidden:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCurrentUserStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCurrentUserStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCurrentUserStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end