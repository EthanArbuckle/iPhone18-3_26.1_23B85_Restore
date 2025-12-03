@interface ExpressParentalControlHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (_TtC14FamilyCircleUI26ExpressParentalControlHook)init;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(RUIObjectModel *)model completion:(id)completion;
@end

@implementation ExpressParentalControlHook

- (RUIServerHookDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC14FamilyCircleUI26ExpressParentalControlHook)init
{
  v2 = type metadata accessor for ParentalControlStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets;
  v7 = sub_21BE2679C();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  v9 = sub_21BE266DC();
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  v11 = sub_21BE2688C();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  sub_21BE2670C();
  v12 = sub_21BC3F624(v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  name = [elementCopy name];
  if (name)
  {
    v5 = name;
    sub_21BE28A0C();

    v6 = sub_21BE28B6C();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = sub_21BC3F77C(modelCopy);

  return v6 & 1;
}

- (void)processObjectModel:(RUIObjectModel *)model completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = model;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE391E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  modelCopy = model;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_21BE2890C();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  elementCopy = element;
  modelCopy = model;
  selfCopy = self;
  sub_21BC3B308(elementCopy, v10, modelCopy, sub_21BC0FF38, v11);
}

@end