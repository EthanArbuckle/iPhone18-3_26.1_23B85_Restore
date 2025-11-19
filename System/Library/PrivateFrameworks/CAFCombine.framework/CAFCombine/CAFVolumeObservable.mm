@interface CAFVolumeObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4;
- (void)volumeService:(id)a3 didUpdateName:(id)a4;
- (void)volumeService:(id)a3 didUpdateUserVisibleLabel:(id)a4;
- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4;
- (void)volumeService:(id)a3 didUpdateVolumeType:(unsigned __int8)a4;
@end

@implementation CAFVolumeObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFVolumeObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)volumeService:(id)a3 didUpdateVolumeType:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFVolumeObservable.volumeService(_:didUpdateVolumeType:)();
}

- (void)volumeService:(id)a3 didUpdateVolume:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFVolumeObservable.volumeService(_:didUpdateVolume:)();
}

- (void)volumeService:(id)a3 didUpdateUserVisibleLabel:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFVolumeObservable.volumeService(_:didUpdateUserVisibleLabel:)();
}

- (void)volumeService:(id)a3 didUpdateMute:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFVolumeObservable.volumeService(_:didUpdateMute:)();
}

- (void)volumeService:(id)a3 didUpdateName:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFVolumeObservable.volumeService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFVolumeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFVolumeObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFVolumeObservable.serviceDidFinishGroupUpdate(_:)();
}

@end