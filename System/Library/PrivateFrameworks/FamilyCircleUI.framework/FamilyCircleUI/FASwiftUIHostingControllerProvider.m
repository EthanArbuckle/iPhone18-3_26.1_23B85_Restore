@interface FASwiftUIHostingControllerProvider
+ (id)familyMemberAccountChangePasswordControllerWithMainAccount:(id)a3 memberToShow:(id)a4 familyCircle:(id)a5;
+ (id)getCheckListControllerWithSpecifiers:(id)a3;
+ (id)getFamilyChecklistHeaderView;
+ (id)getFamilySettingsViewControllerWithViewModel:(id)a3 locationModel:(id)a4 pictureStore:(id)a5 appleAccount:(id)a6 accountManager:(id)a7 delegate:(id)a8 appleCardFamilySettingsViewModel:(id)a9 hostingViewController:(id)a10;
+ (id)getLoadingControllerWithCancelAction:(id)a3;
+ (id)getLocationViewControllerWithViewModel:(id)a3 pictureStore:(id)a4 hackfromObjC:(BOOL)a5;
+ (id)getSettingsViewControllerWithResourceDictionary:(id)a3;
- (_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider)init;
@end

@implementation FASwiftUIHostingControllerProvider

+ (id)getFamilySettingsViewControllerWithViewModel:(id)a3 locationModel:(id)a4 pictureStore:(id)a5 appleAccount:(id)a6 accountManager:(id)a7 delegate:(id)a8 appleCardFamilySettingsViewModel:(id)a9 hostingViewController:(id)a10
{
  swift_getObjectType();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  swift_unknownObjectRetain();
  v21 = a9;
  v22 = a10;
  v23 = sub_21BDF37A0(v16, v17, v18, v20, a8, v21, v22);

  swift_unknownObjectRelease();

  return v23;
}

+ (id)getLocationViewControllerWithViewModel:(id)a3 pictureStore:(id)a4 hackfromObjC:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  sub_21BDFD940(v9, v10, v5, v15);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610));
  sub_21BC12ED0(v15, &v14);
  v12 = sub_21BDF2F58(v15, 0, 0);

  sub_21BD7FB80(v15);

  return v12;
}

+ (id)familyMemberAccountChangePasswordControllerWithMainAccount:(id)a3 memberToShow:(id)a4 familyCircle:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC033familyMemberAccountChangePasswordF004mainJ012memberToShow0hB0So06UIViewF0CSo08FAFamilyI0C_AKSo0rB0CtFZ_0(v7, v8, v9);

  return v10;
}

+ (id)getFamilyChecklistHeaderView
{
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BDF471C(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
  sub_21BE2727C();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB0, &qword_21BE4F618));
  v3 = sub_21BE2774C();

  return v3;
}

+ (id)getCheckListControllerWithSpecifiers:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v3 = sub_21BE28C3C();
  v4 = objc_allocWithZone(type metadata accessor for CheckListHostController());
  v5 = sub_21BD92B14(v3);

  return v5;
}

+ (id)getLoadingControllerWithCancelAction:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    *(swift_allocObject() + 16) = v3;
  }

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB8, qword_21BE4F620));
  v5 = sub_21BE2774C();

  return v5;
}

+ (id)getSettingsViewControllerWithResourceDictionary:(id)a3
{
  v3 = _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC015getSettingsViewF018resourceDictionarySo06UIViewF0CSDys11AnyHashableVypG_tFZ_0();

  return v3;
}

- (_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FASwiftUIHostingControllerProvider();
  return [(FASwiftUIHostingControllerProvider *)&v3 init];
}

@end