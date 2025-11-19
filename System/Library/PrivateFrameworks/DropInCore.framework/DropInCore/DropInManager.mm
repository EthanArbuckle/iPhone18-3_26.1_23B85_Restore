@interface DropInManager
- (void)accessoryDidUpdateName:(id)a3;
- (void)accessoryDidUpdateSupportedCapabilities:(id)a3;
- (void)didAddHome:(id)a3;
- (void)didRemoveHome:(id)a3;
- (void)didUpdateHomes:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4;
@end

@implementation DropInManager

- (void)didUpdateHomes:(id)a3
{
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  sub_249E7ABE8();
  v4 = self;
  sub_249E19EE0();
}

- (void)didAddHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249E1A3D4(v4);
}

- (void)didRemoveHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249E1A808(v4);
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E1B1A0();
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E1B1A0();
}

- (void)accessoryDidUpdateName:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249E1B758();
}

- (void)accessoryDidUpdateSupportedCapabilities:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249E1B758();
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E1BB54(v6, v7);
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E1BF6C(v6, v7);
}

- (void)home:(id)a3 didUpdateAccessControlForUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249E1C104();
}

@end