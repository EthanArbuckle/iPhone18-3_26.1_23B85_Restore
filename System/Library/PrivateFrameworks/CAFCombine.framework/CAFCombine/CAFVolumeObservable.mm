@interface CAFVolumeObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)volumeService:(id)service didUpdateMute:(BOOL)mute;
- (void)volumeService:(id)service didUpdateName:(id)name;
- (void)volumeService:(id)service didUpdateUserVisibleLabel:(id)label;
- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume;
- (void)volumeService:(id)service didUpdateVolumeType:(unsigned __int8)type;
@end

@implementation CAFVolumeObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFVolumeObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)volumeService:(id)service didUpdateVolumeType:(unsigned __int8)type
{
  serviceCopy = service;
  selfCopy = self;
  CAFVolumeObservable.volumeService(_:didUpdateVolumeType:)();
}

- (void)volumeService:(id)service didUpdateVolume:(unsigned __int8)volume
{
  serviceCopy = service;
  selfCopy = self;
  CAFVolumeObservable.volumeService(_:didUpdateVolume:)();
}

- (void)volumeService:(id)service didUpdateUserVisibleLabel:(id)label
{
  if (label)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFVolumeObservable.volumeService(_:didUpdateUserVisibleLabel:)();
}

- (void)volumeService:(id)service didUpdateMute:(BOOL)mute
{
  serviceCopy = service;
  selfCopy = self;
  CAFVolumeObservable.volumeService(_:didUpdateMute:)();
}

- (void)volumeService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFVolumeObservable.volumeService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFVolumeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFVolumeObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFVolumeObservable.serviceDidFinishGroupUpdate(_:)();
}

@end