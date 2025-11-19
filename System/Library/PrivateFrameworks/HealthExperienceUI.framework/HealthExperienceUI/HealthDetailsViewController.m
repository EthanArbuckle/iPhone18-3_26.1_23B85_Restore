@interface HealthDetailsViewController
- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCollectionViewLayout:(id)a3;
- (void)resetCharacteristics;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation HealthDetailsViewController

- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA432D18();
}

- (void)resetCharacteristics
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 0;
  v2 = self;
  _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();

  sub_1BA2EEC58();

  [(HealthDetailsViewController *)v2 setEditing:0 animated:1];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1BA432F88(a3, a4);
}

- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end