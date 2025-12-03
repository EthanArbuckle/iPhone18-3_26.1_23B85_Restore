@interface DropInManager
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdateSupportedCapabilities:(id)capabilities;
- (void)didAddHome:(id)home;
- (void)didRemoveHome:(id)home;
- (void)didUpdateHomes:(id)homes;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddUser:(id)user;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveUser:(id)user;
- (void)home:(id)home didUpdateAccessControlForUser:(id)user;
@end

@implementation DropInManager

- (void)didUpdateHomes:(id)homes
{
  sub_249DF691C(0, &unk_28130D1A0, 0x277CD1A60);
  sub_249E7ABE8();
  selfCopy = self;
  sub_249E19EE0();
}

- (void)didAddHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_249E1A3D4(homeCopy);
}

- (void)didRemoveHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_249E1A808(homeCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_249E1B1A0();
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_249E1B1A0();
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  sub_249E1B758();
}

- (void)accessoryDidUpdateSupportedCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  selfCopy = self;
  sub_249E1B758();
}

- (void)home:(id)home didAddUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_249E1BB54(homeCopy, userCopy);
}

- (void)home:(id)home didRemoveUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_249E1BF6C(homeCopy, userCopy);
}

- (void)home:(id)home didUpdateAccessControlForUser:(id)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_249E1C104();
}

@end