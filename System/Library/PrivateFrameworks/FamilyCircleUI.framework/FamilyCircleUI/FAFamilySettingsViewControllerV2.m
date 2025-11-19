@interface FAFamilySettingsViewControllerV2
- (UINavigationItem)navigationItem;
- (UIViewController)_presenter;
- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithAppleAccount:(id)a3 grandSlamSigner:(id)a4 familyCircle:(id)a5 pictureStore:(id)a6 accountManager:(id)a7 peopleDiscoveryService:(id)a8;
- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP14FamilyCircleUI40FAFamilySettingsViewControllerV2Delegate_)delegate;
- (void)addFamilyMemberButtonWasTapped;
- (void)amsHookWasCalled;
- (void)dealloc;
- (void)didSelectSubscriptionWithURL:(NSURL *)a3 completion:(id)a4;
- (void)didSelectSubscriptionWithURLMemberDetails:(NSURL *)a3 familyMemberDSID:(NSString *)a4 serviceName:(int64_t)a5 completion:(id)a6;
- (void)didTapAddRemoteGuardianFor:(id)a3;
- (void)handleDisclosureDismiss;
- (void)loadMemberDetailsWithMember:(FAFamilyMember *)a3 navigationController:(UINavigationController *)a4 completionHandler:(id)a5;
- (void)set_presenter:(id)a3;
- (void)stopFamilySharing;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation FAFamilySettingsViewControllerV2

- (_TtP14FamilyCircleUI40FAFamilySettingsViewControllerV2Delegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)_presenter
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_presenter:(id)a3
{
  v5 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithAppleAccount:(id)a3 grandSlamSigner:(id)a4 familyCircle:(id)a5 pictureStore:(id)a6 accountManager:(id)a7 peopleDiscoveryService:(id)a8
{
  swift_getObjectType();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  swift_unknownObjectRetain();

  return sub_21BBB475C(v15, v16, v17, v18, v19, a8, self);
}

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_21BBA76B4();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21BBA77CC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21BBAA56C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_21BBAB844(a3);
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController);
  v4 = self;
  if (v3)
  {
    [v3 cancel];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  [(FAFamilySettingsViewControllerV2 *)&v5 dealloc];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_21BBACC24(a3, a4);
}

- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSelectSubscriptionWithURL:(NSURL *)a3 completion:(id)a4
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
  v14[4] = &unk_21BE32A50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A58;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_21BDC4F90(0, 0, v10, &unk_21BE32A60, v15);
}

- (void)didSelectSubscriptionWithURLMemberDetails:(NSURL *)a3 familyMemberDSID:(NSString *)a4 serviceName:(int64_t)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
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
  v18[4] = &unk_21BE32A30;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_21BE32A38;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_21BDC4F90(0, 0, v14, &unk_21BE32A40, v19);
}

- (void)stopFamilySharing
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_21BE28D7C();
  v8 = self;
  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_21BBA932C(0, 0, v6, &unk_21BE32A20, v10);
}

- (void)addFamilyMemberButtonWasTapped
{
  v2 = self;
  FAFamilySettingsViewControllerV2.addFamilyMemberButtonWasTapped()();
}

- (void)loadMemberDetailsWithMember:(FAFamilyMember *)a3 navigationController:(UINavigationController *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21BE32A08;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE32A10;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_21BDC4F90(0, 0, v12, &unk_21BE391F0, v17);
}

- (void)didTapAddRemoteGuardianFor:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14FamilyCircleUI32FAFamilySettingsViewControllerV2C23didTapAddRemoteGuardian3forySo0D6MemberC_tF_0();
}

- (void)amsHookWasCalled
{
  v2 = self;
  sub_21BBB26A4();
}

- (void)handleDisclosureDismiss
{
  v2 = self;
  sub_21BBB2898();
}

@end