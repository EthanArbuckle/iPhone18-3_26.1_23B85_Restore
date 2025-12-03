@interface SFOnboardingTipController
- (NSString)identifier;
- (SFOnboardingTipController)init;
- (SFOnboardingTipControllerDelegate)delegate;
- (int64_t)state;
- (void)cancel;
- (void)triggerTip;
@end

@implementation SFOnboardingTipController

- (SFOnboardingTipControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)triggerTip
{
  selfCopy = self;
  sub_18B9AD550();
}

- (void)cancel
{
  selfCopy = self;
  sub_18B9AE9E4();
}

- (NSString)identifier
{
  v3 = OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  sub_18B80DBC4(self + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = (*(v5 + 40))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);

  return v6;
}

- (int64_t)state
{
  v3 = OBJC_IVAR___SFOnboardingTipController_tip;
  swift_beginAccess();
  sub_18B80DBC4(self + v3, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = (*(v5 + 48))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

- (SFOnboardingTipController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end