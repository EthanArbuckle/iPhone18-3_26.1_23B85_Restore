@interface FAPrivacyDisclosureAcknowledgmentHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook)init;
- (void)processElement:(RUIElement *)a3 attributes:(NSDictionary *)a4 objectModel:(RUIObjectModel *)a5 completion:(id)a6;
- (void)processObjectModel:(RUIObjectModel *)a3 completion:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation FAPrivacyDisclosureAcknowledgmentHook

- (RUIServerHookDelegate)delegate
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)shouldMatchElement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21BDC3894(v4);

  return v6 & 1;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21BDC3940(v4);

  return v6 & 1;
}

- (void)processElement:(RUIElement *)a3 attributes:(NSDictionary *)a4 objectModel:(RUIObjectModel *)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_21BE28DAC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE4D3E0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21BE4D3E8;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_21BDC4F90(0, 0, v14, &unk_21BE4D3F0, v19);
}

- (void)processObjectModel:(RUIObjectModel *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_21BE28DAC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE4D3D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE391F0, v15);
}

- (_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook_delegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FAPrivacyDisclosureAcknowledgmentHook();
  return [(FAPrivacyDisclosureAcknowledgmentHook *)&v3 init];
}

@end