@interface _AppProtectionManager
- (void)shieldViewUnlockButtonPressed:(id)pressed;
@end

@implementation _AppProtectionManager

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  pressedCopy = pressed;
  swift_retain_n();
  v10 = pressedCopy;
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = self;
  sub_1D22AE01C(0, 0, v7, &unk_1D287E880, v12);
}

@end