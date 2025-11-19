@interface DIXPCDispatcher
- (DIAudioPowerDelegate)audioPowerDelegate;
- (DIAudioStatusDelegate)audioStatusDelegate;
- (DIDeviceListDelegate)deviceListDelegate;
- (DIDeviceStatusDelegate)deviceStatusDelegate;
- (DISessionStatusDelegate)sessionStatusDelegate;
- (void)didAddDevice:(id)a3;
- (void)didAddSession:(id)a3;
- (void)didLoadDevices:(id)a3;
- (void)didRemoveDevice:(id)a3;
- (void)didRemoveSession:(id)a3;
- (void)didUpdateAudioPower:(float)a3;
- (void)didUpdateDevice:(id)a3;
- (void)didUpdateDownlinkMuteStatus:(BOOL)a3;
- (void)didUpdateSession:(id)a3;
- (void)didUpdateUplinkMuteStatus:(BOOL)a3;
- (void)fetchClientContextWithCompletionHandler:(id)a3;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateUplinkMuteStatus:(BOOL)a4;
- (void)setAudioPowerDelegate:(id)a3;
- (void)setAudioStatusDelegate:(id)a3;
- (void)setDeviceListDelegate:(id)a3;
- (void)setDeviceStatusDelegate:(id)a3;
- (void)setSessionStatusDelegate:(id)a3;
@end

@implementation DIXPCDispatcher

- (DIDeviceListDelegate)deviceListDelegate
{
  v2 = sub_249DD2AE0();

  return v2;
}

- (void)setDeviceListDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DD2B4C(a3);
}

- (DIDeviceStatusDelegate)deviceStatusDelegate
{
  v2 = sub_249DD2C1C();

  return v2;
}

- (void)setDeviceStatusDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DD2C88(a3);
}

- (DISessionStatusDelegate)sessionStatusDelegate
{
  v2 = sub_249DD2D58();

  return v2;
}

- (void)setSessionStatusDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DD2DC4(a3);
}

- (DIAudioPowerDelegate)audioPowerDelegate
{
  v2 = sub_249DD2E94();

  return v2;
}

- (void)setAudioPowerDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DD2F00(a3);
}

- (DIAudioStatusDelegate)audioStatusDelegate
{
  v2 = sub_249DD2FD4();

  return v2;
}

- (void)setAudioStatusDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_249DD3078(a3);
}

- (void)fetchClientContextWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_249DD3638(&unk_249DDFDD8, v5);
}

- (void)didLoadDevices:(id)a3
{
  sub_249DD38BC();
  v4 = sub_249DDC908();
  v5 = self;
  sub_249DD3748(v4);
}

- (void)didAddDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD3964(v4);
}

- (void)didRemoveDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD39E8(v4);
}

- (void)didUpdateDevice:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD3BA4(v4);
}

- (void)didAddSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD3C28(v4);
}

- (void)didRemoveSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD3CAC(v4);
}

- (void)didUpdateSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DD3D30(v4);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_249DD3DB4(v6, v8);
}

- (void)session:(id)a3 didUpdateUplinkMuteStatus:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_249DD4008(v6, a4);
}

- (void)didUpdateAudioPower:(float)a3
{
  v4 = self;
  sub_249DD41C0(a3);
}

- (void)didUpdateUplinkMuteStatus:(BOOL)a3
{
  v4 = self;
  sub_249DD430C(a3);
}

- (void)didUpdateDownlinkMuteStatus:(BOOL)a3
{
  v4 = self;
  sub_249DD4374(a3);
}

@end