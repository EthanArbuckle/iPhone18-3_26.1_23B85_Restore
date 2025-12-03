@interface DelegateTrampoline_CBPeripheralPrivateDelegate
- (_TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate)init;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheralDidUpdateName:(id)name;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response;
@end

@implementation DelegateTrampoline_CBPeripheralPrivateDelegate

- (void)peripheralDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_24AC42210(nameCopy);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
  v6 = sub_24ACD0700();
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_24AC425B0(peripheralCopy, v6);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_24AC42C54(peripheralCopy, services);
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  sub_24AC44688(responseCopy);
}

- (_TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end