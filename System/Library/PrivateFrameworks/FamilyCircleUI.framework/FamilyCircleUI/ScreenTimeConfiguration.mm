@interface ScreenTimeConfiguration
- (BOOL)isRestrictedForFeature:(id)a3;
- (_TtC14FamilyCircleUI23ScreenTimeConfiguration)init;
- (void)isContentPrivacyEnabledForDSID:(NSNumber *)a3 completionHandler:(id)a4;
@end

@implementation ScreenTimeConfiguration

- (_TtC14FamilyCircleUI23ScreenTimeConfiguration)init
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState;
  *(&self->super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for ScreenTimeConfiguration();
  return [(ScreenTimeConfiguration *)&v5 init];
}

- (void)isContentPrivacyEnabledForDSID:(NSNumber *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_21BE3A1C0;
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

- (BOOL)isRestrictedForFeature:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 BOOLRestrictionForFeature_];

    return v8 == 2;
  }

  else
  {

    __break(1u);
  }

  return result;
}

@end