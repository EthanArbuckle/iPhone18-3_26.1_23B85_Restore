@interface RemotePairing
- (_TtC15DSRemotePairing13RemotePairing)init;
- (id)getPairedDevicesWithCompletion:(id)a3;
- (id)removeAllPairedDevices;
- (void)removeSelectedDevices:(id)a3 invokingCompletionHandlerOn:(id)a4 completion:(id)a5;
@end

@implementation RemotePairing

- (id)getPairedDevicesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_230CF4DDC(v4);
  _Block_release(v4);
  _Block_release(v4);

  sub_230CF5B40();
  v6 = sub_230CF5EC4();

  return v6;
}

- (id)removeAllPairedDevices
{
  sub_230CF5DA4();
  v2 = sub_230CF5D94();
  sub_230CF5D84();

  return 0;
}

- (void)removeSelectedDevices:(id)a3 invokingCompletionHandlerOn:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_230CF5B40();
  v8 = sub_230CF5ED4();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  _s15DSRemotePairing06RemoteB0C21removeSelectedDevices_27invokingCompletionHandlerOn10completionySaySo16DSPairedComputerCG_So17OS_dispatch_queueCSgys5Error_pSgctF_0(v8, a4, sub_230CF5B8C, v9);
}

- (_TtC15DSRemotePairing13RemotePairing)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(RemotePairing *)&v3 init];
}

@end