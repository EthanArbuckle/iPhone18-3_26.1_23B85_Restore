@interface FamilySettingsApplication
- (id)accountsForAccountManager:(id)a3;
@end

@implementation FamilySettingsApplication

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21BBB62F4(MEMORY[0x277D84F90]);
  v6 = *(&v5->super.isa + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_servicesOwnerManager);
  v7 = *MEMORY[0x277CED1A0];
  sub_21BD403A8([v6 accountForService_], v7);
  v8 = *MEMORY[0x277CED1C0];
  sub_21BD403A8([v6 accountForService_], v8);

  type metadata accessor for AIDAServiceType(0);
  sub_21BB3A2A4(0, &qword_280BD68E0, 0x277CB8F30);
  sub_21BB3E240(&unk_280BD6960, type metadata accessor for AIDAServiceType);
  v9 = sub_21BE288EC();

  return v9;
}

@end