@interface RecoveryContactSetUpViewControllerWrapper.AAUICustodianSetupDelegate
- (_TtCV14FamilyCircleUI41RecoveryContactSetUpViewControllerWrapper26AAUICustodianSetupDelegate)init;
- (void)custodianSetupFlowControllerDidFinish:(id)a3;
@end

@implementation RecoveryContactSetUpViewControllerWrapper.AAUICustodianSetupDelegate

- (void)custodianSetupFlowControllerDidFinish:(id)a3
{
  v4 = a3;
  v8 = self;
  [v4 dismissViewControllerAnimated:1 completion:0];
  v5 = *(&v8->super.isa + OBJC_IVAR____TtCV14FamilyCircleUI41RecoveryContactSetUpViewControllerWrapper26AAUICustodianSetupDelegate_onChange);
  if (v5)
  {
    v6 = *&v8->onChange[OBJC_IVAR____TtCV14FamilyCircleUI41RecoveryContactSetUpViewControllerWrapper26AAUICustodianSetupDelegate_onChange];

    v5(v7);

    sub_21BB5AEC4(v5);
  }

  else
  {
  }
}

- (_TtCV14FamilyCircleUI41RecoveryContactSetUpViewControllerWrapper26AAUICustodianSetupDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end