@interface DelegateTrampoline_CBPeripheralPrivateDelegate
- (_TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate)init;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheralDidUpdateName:(id)a3;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3;
@end

@implementation DelegateTrampoline_CBPeripheralPrivateDelegate

- (void)peripheralDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24AC42210(v4);
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
  v6 = sub_24ACD0700();
  v7 = a3;
  v8 = self;
  sub_24AC425B0(v7, v6);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_24AC42C54(v6, a4);
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24AC44688(v4);
}

- (_TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end