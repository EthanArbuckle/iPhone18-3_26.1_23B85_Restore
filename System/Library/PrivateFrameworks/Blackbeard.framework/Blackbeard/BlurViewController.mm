@interface BlurViewController
- (NSArray)preferredFocusEnvironments;
- (_TtC10Blackbeard18BlurViewController)initWithCoder:(id)coder;
- (_TtC10Blackbeard18BlurViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BlurViewController

- (NSArray)preferredFocusEnvironments
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E65EA660;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10Blackbeard18BlurViewController_viewController);
  *(v3 + 32) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v6 = sub_1E65E5EF8();

  return v6;
}

- (_TtC10Blackbeard18BlurViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10Blackbeard18BlurViewController_blurView;
  effectWithStyle_ = [objc_opt_self() effectWithStyle_];
  initWithEffect_ = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v7 = sub_1E65E6508();
  *(&self->super.super.super.isa + v4) = v7;
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E630B96C();
}

- (_TtC10Blackbeard18BlurViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end