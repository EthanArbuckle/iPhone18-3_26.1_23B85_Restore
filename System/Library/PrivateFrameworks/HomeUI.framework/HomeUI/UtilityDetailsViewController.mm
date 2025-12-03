@interface UtilityDetailsViewController
- (_TtC6HomeUI28UtilityDetailsViewController)initWithCoder:(id)coder;
- (_TtC6HomeUI28UtilityDetailsViewController)initWithHome:(id)home details:(id)details;
- (_TtC6HomeUI28UtilityDetailsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation UtilityDetailsViewController

- (_TtC6HomeUI28UtilityDetailsViewController)initWithHome:(id)home details:(id)details
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  v6 = sub_20D567758();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_home) = home;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_details) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UtilityDetailsViewController();
  homeCopy = home;
  return [(UtilityDetailsViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC6HomeUI28UtilityDetailsViewController)initWithCoder:(id)coder
{
  type metadata accessor for UtilityDetailsViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20CF0A734();
}

- (_TtC6HomeUI28UtilityDetailsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end