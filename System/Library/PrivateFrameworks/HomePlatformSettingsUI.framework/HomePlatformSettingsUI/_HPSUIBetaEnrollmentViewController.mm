@interface _HPSUIBetaEnrollmentViewController
+ (BOOL)isMultiSeedingEnrollmentEnabled;
+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion;
+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d withCompletion:(id)completion;
- (_HPSUIBetaEnrollmentViewController)init;
- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d;
- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
- (void)didFinishEnrollment;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _HPSUIBetaEnrollmentViewController

- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d
{
  v3 = sub_2542AD50C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  return BetaEnrollmentViewController.init(withHomeID:)(v6);
}

- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  v4 = sub_2542AD50C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0]);
  v8 = sub_2542AD84C();
  return BetaEnrollmentViewController.init(withHomeID:homeKitIdentifiers:)(v7, v8);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  BetaEnrollmentViewController.willMove(toParent:)(controller);
}

- (_HPSUIBetaEnrollmentViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d withCompletion:(id)completion
{
  v5 = sub_2542AD50C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_2542AD4FC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:withCompletion:)(ObjCClassMetadata, sub_2542AD414, v11);

  (*(v6 + 8))(v9, v5);
}

+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v6 = sub_2542AD50C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0]);
  sub_2542AD84C();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:homeKitIdentifiers:withCompletion:)(ObjCClassMetadata, v14, sub_2542AD230, v12);

  (*(v7 + 8))(v10, v6);
}

+ (BOOL)isMultiSeedingEnrollmentEnabled
{
  v4[3] = &type metadata for Feature;
  v4[4] = sub_2542ACCB8();
  v2 = sub_2542AD51C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

- (void)didFinishEnrollment
{
  selfCopy = self;
  BetaEnrollmentViewController.didFinishEnrollment()();
}

@end