@interface UtilityDetailsViewController
- (_TtC6HomeUI28UtilityDetailsViewController)initWithCoder:(id)a3;
- (_TtC6HomeUI28UtilityDetailsViewController)initWithHome:(id)a3 details:(id)a4;
- (_TtC6HomeUI28UtilityDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation UtilityDetailsViewController

- (_TtC6HomeUI28UtilityDetailsViewController)initWithHome:(id)a3 details:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  v6 = sub_20D567758();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_home) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_details) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UtilityDetailsViewController();
  v7 = a3;
  return [(UtilityDetailsViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC6HomeUI28UtilityDetailsViewController)initWithCoder:(id)a3
{
  type metadata accessor for UtilityDetailsViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20CF0A734();
}

- (_TtC6HomeUI28UtilityDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end