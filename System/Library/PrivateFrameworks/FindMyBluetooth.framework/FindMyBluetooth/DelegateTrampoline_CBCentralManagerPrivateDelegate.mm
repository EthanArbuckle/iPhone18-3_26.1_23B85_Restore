@interface DelegateTrampoline_CBCentralManagerPrivateDelegate
- (_TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate)init;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation DelegateTrampoline_CBCentralManagerPrivateDelegate

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24AC9C318(v4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = sub_24ACD0500();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_24ACA0DD8(v12, v10, v13);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24ACA0FF4(v7, &unk_285E26BA0, &unk_24ACD5D48);
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_24ACA13F4(a4, v9);
}

- (_TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end