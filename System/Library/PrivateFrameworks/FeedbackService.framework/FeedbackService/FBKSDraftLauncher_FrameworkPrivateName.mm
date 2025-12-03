@interface FBKSDraftLauncher_FrameworkPrivateName
- (FBKSDraftLauncher_FrameworkPrivateName)init;
- (FBKSDraftLauncher_FrameworkPrivateName)initWithFeedbackForm:(id)form;
- (FBKSForm_FrameworkPrivateName)form;
- (void)collectFeedbackWithLaunchConfiguration:(id)configuration completion:(id)completion;
- (void)setForm:(id)form;
@end

@implementation FBKSDraftLauncher_FrameworkPrivateName

- (FBKSForm_FrameworkPrivateName)form
{
  v3 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setForm:(id)form
{
  v5 = OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = form;
  formCopy = form;
}

- (FBKSDraftLauncher_FrameworkPrivateName)initWithFeedbackForm:(id)form
{
  *(&self->super.isa + OBJC_IVAR___FBKSDraftLauncher_FrameworkPrivateName_form) = form;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FBKSDraftLauncher();
  formCopy = form;
  return [(FBKSDraftLauncher_FrameworkPrivateName *)&v6 init];
}

- (void)collectFeedbackWithLaunchConfiguration:(id)configuration completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  configurationCopy = configuration;
  selfCopy = self;
  sub_1B0144E44(configuration, v6, v7);
  sub_1B0145C7C(v6);
}

- (FBKSDraftLauncher_FrameworkPrivateName)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end