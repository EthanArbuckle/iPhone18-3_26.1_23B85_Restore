@interface FBKSDraftLauncher_FrameworkPrivateName
- (FBKSDraftLauncher_FrameworkPrivateName)init;
- (FBKSDraftLauncher_FrameworkPrivateName)initWithFeedbackForm:(id)a3;
- (FBKSForm_FrameworkPrivateName)form;
- (void)collectFeedbackWithLaunchConfiguration:(id)a3 completion:(id)a4;
- (void)setForm:(id)a3;
@end

@implementation FBKSDraftLauncher_FrameworkPrivateName

- (FBKSForm_FrameworkPrivateName)form
{
  v3 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setForm:(id)a3
{
  v5 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (FBKSDraftLauncher_FrameworkPrivateName)initWithFeedbackForm:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBKSDraftLauncher();
  v4 = a3;
  return [(FBKSDraftLauncher_FrameworkPrivateName *)&v6 init];
}

- (void)collectFeedbackWithLaunchConfiguration:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B0145C8C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1B0144E44(a3, v6, v7);
  sub_1B0145C7C(v6);
}

- (FBKSDraftLauncher_FrameworkPrivateName)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end