@interface ODIDeviceInfo.DeviceInfoHelper
- (_TtCC17CoreODIEssentials13ODIDeviceInfoP33_B07CCE03E02CC77E93497B1A0FAD96D316DeviceInfoHelper)init;
- (void)phoneNumberChanged:(id)a3;
@end

@implementation ODIDeviceInfo.DeviceInfoHelper

- (_TtCC17CoreODIEssentials13ODIDeviceInfoP33_B07CCE03E02CC77E93497B1A0FAD96D316DeviceInfoHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)phoneNumberChanged:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  Strong = swift_weakLoadStrong();
  v10 = sub_1DB09DA24();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = Strong;
  v11[5] = a3;
  v12 = a3;
  sub_1DAF4F6F8(0, 0, v8, &unk_1DB0AC338, v11);
}

@end