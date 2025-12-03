@interface DIXPCDispatcher
- (DIAudioPowerDelegate)audioPowerDelegate;
- (DIAudioStatusDelegate)audioStatusDelegate;
- (DIDeviceListDelegate)deviceListDelegate;
- (DIDeviceStatusDelegate)deviceStatusDelegate;
- (DISessionStatusDelegate)sessionStatusDelegate;
- (void)didAddDevice:(id)device;
- (void)didAddSession:(id)session;
- (void)didLoadDevices:(id)devices;
- (void)didRemoveDevice:(id)device;
- (void)didRemoveSession:(id)session;
- (void)didUpdateAudioPower:(float)power;
- (void)didUpdateDevice:(id)device;
- (void)didUpdateDownlinkMuteStatus:(BOOL)status;
- (void)didUpdateSession:(id)session;
- (void)didUpdateUplinkMuteStatus:(BOOL)status;
- (void)fetchClientContextWithCompletionHandler:(id)handler;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status;
- (void)setAudioPowerDelegate:(id)delegate;
- (void)setAudioStatusDelegate:(id)delegate;
- (void)setDeviceListDelegate:(id)delegate;
- (void)setDeviceStatusDelegate:(id)delegate;
- (void)setSessionStatusDelegate:(id)delegate;
@end

@implementation DIXPCDispatcher

- (DIDeviceListDelegate)deviceListDelegate
{
  v2 = sub_249DD2AE0();

  return v2;
}

- (void)setDeviceListDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DD2B4C(delegate);
}

- (DIDeviceStatusDelegate)deviceStatusDelegate
{
  v2 = sub_249DD2C1C();

  return v2;
}

- (void)setDeviceStatusDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DD2C88(delegate);
}

- (DISessionStatusDelegate)sessionStatusDelegate
{
  v2 = sub_249DD2D58();

  return v2;
}

- (void)setSessionStatusDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DD2DC4(delegate);
}

- (DIAudioPowerDelegate)audioPowerDelegate
{
  v2 = sub_249DD2E94();

  return v2;
}

- (void)setAudioPowerDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DD2F00(delegate);
}

- (DIAudioStatusDelegate)audioStatusDelegate
{
  v2 = sub_249DD2FD4();

  return v2;
}

- (void)setAudioStatusDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_249DD3078(delegate);
}

- (void)fetchClientContextWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_249DD3638(&unk_249DDFDD8, v5);
}

- (void)didLoadDevices:(id)devices
{
  sub_249DD38BC();
  v4 = sub_249DDC908();
  selfCopy = self;
  sub_249DD3748(v4);
}

- (void)didAddDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_249DD3964(deviceCopy);
}

- (void)didRemoveDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_249DD39E8(deviceCopy);
}

- (void)didUpdateDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_249DD3BA4(deviceCopy);
}

- (void)didAddSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_249DD3C28(sessionCopy);
}

- (void)didRemoveSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_249DD3CAC(sessionCopy);
}

- (void)didUpdateSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_249DD3D30(sessionCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_249DD3DB4(sessionCopy, errorCopy);
}

- (void)session:(id)session didUpdateUplinkMuteStatus:(BOOL)status
{
  sessionCopy = session;
  selfCopy = self;
  sub_249DD4008(sessionCopy, status);
}

- (void)didUpdateAudioPower:(float)power
{
  selfCopy = self;
  sub_249DD41C0(power);
}

- (void)didUpdateUplinkMuteStatus:(BOOL)status
{
  selfCopy = self;
  sub_249DD430C(status);
}

- (void)didUpdateDownlinkMuteStatus:(BOOL)status
{
  selfCopy = self;
  sub_249DD4374(status);
}

@end