@interface FASwiftUIHostingControllerProvider
+ (id)familyMemberAccountChangePasswordControllerWithMainAccount:(id)account memberToShow:(id)show familyCircle:(id)circle;
+ (id)getCheckListControllerWithSpecifiers:(id)specifiers;
+ (id)getFamilyChecklistHeaderView;
+ (id)getFamilySettingsViewControllerWithViewModel:(id)model locationModel:(id)locationModel pictureStore:(id)store appleAccount:(id)account accountManager:(id)manager delegate:(id)delegate appleCardFamilySettingsViewModel:(id)viewModel hostingViewController:(id)self0;
+ (id)getLoadingControllerWithCancelAction:(id)action;
+ (id)getLocationViewControllerWithViewModel:(id)model pictureStore:(id)store hackfromObjC:(BOOL)c;
+ (id)getSettingsViewControllerWithResourceDictionary:(id)dictionary;
- (_TtC14FamilyCircleUI34FASwiftUIHostingControllerProvider)init;
@end

@implementation FASwiftUIHostingControllerProvider

+ (id)getFamilySettingsViewControllerWithViewModel:(id)model locationModel:(id)locationModel pictureStore:(id)store appleAccount:(id)account accountManager:(id)manager delegate:(id)delegate appleCardFamilySettingsViewModel:(id)viewModel hostingViewController:(id)self0
{
  swift_getObjectType();
  modelCopy = model;
  locationModelCopy = locationModel;
  storeCopy = store;
  accountCopy = account;
  managerCopy = manager;
  swift_unknownObjectRetain();
  viewModelCopy = viewModel;
  controllerCopy = controller;
  v23 = sub_21BDF37A0(modelCopy, locationModelCopy, storeCopy, managerCopy, delegate, viewModelCopy, controllerCopy);

  swift_unknownObjectRelease();

  return v23;
}

+ (id)getLocationViewControllerWithViewModel:(id)model pictureStore:(id)store hackfromObjC:(BOOL)c
{
  cCopy = c;
  modelCopy = model;
  storeCopy = store;
  v9 = modelCopy;
  v10 = storeCopy;
  sub_21BDFD940(v9, v10, cCopy, v15);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610));
  sub_21BC12ED0(v15, &v14);
  v12 = sub_21BDF2F58(v15, 0, 0);

  sub_21BD7FB80(v15);

  return v12;
}

+ (id)familyMemberAccountChangePasswordControllerWithMainAccount:(id)account memberToShow:(id)show familyCircle:(id)circle
{
  accountCopy = account;
  showCopy = show;
  circleCopy = circle;
  v10 = _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC033familyMemberAccountChangePasswordF004mainJ012memberToShow0hB0So06UIViewF0CSo08FAFamilyI0C_AKSo0rB0CtFZ_0(accountCopy, showCopy, circleCopy);

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

+ (id)getCheckListControllerWithSpecifiers:(id)specifiers
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC370, &qword_21BE4A2F0);
  v3 = sub_21BE28C3C();
  v4 = objc_allocWithZone(type metadata accessor for CheckListHostController());
  v5 = sub_21BD92B14(v3);

  return v5;
}

+ (id)getLoadingControllerWithCancelAction:(id)action
{
  v3 = _Block_copy(action);
  if (v3)
  {
    *(swift_allocObject() + 16) = v3;
  }

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB8, qword_21BE4F620));
  v5 = sub_21BE2774C();

  return v5;
}

+ (id)getSettingsViewControllerWithResourceDictionary:(id)dictionary
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