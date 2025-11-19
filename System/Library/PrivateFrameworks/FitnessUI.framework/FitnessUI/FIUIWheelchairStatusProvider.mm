@interface FIUIWheelchairStatusProvider
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation FIUIWheelchairStatusProvider

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1E5DA92BC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1E5DA929C();

  v10 = sub_1E5DA928C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = a4;

  sub_1E5D580A8(0, 0, v7, &unk_1E5DB21F8, v11);
}

@end