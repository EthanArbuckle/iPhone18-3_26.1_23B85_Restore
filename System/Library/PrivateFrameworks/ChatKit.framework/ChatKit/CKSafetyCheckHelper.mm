@interface CKSafetyCheckHelper
- (CKSafetyCheckHelper)init;
- (CKSafetyCheckHelper)initWithContacts:(id)contacts;
- (void)presentSafetyCheckFromController:(UIViewController *)controller completion:(id)completion;
@end

@implementation CKSafetyCheckHelper

- (CKSafetyCheckHelper)initWithContacts:(id)contacts
{
  sub_1902188FC(0, &qword_1EAD44E40);
  v3 = sub_190D57180();
  return SafetyCheckHelper.init(contacts:)(v3);
}

- (void)presentSafetyCheckFromController:(UIViewController *)controller completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = controller;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_190E00F08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_190DD75C0;
  v14[5] = v13;
  controllerCopy = controller;
  selfCopy = self;
  sub_190C798DC(0, 0, v9, &unk_190DD75C8, v14);
}

- (CKSafetyCheckHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end