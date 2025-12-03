@interface HealthDetailsViewController
- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCollectionViewLayout:(id)layout;
- (void)resetCharacteristics;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HealthDetailsViewController

- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController____lazy_storage___healthDetailsDataSource) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA432D18();
}

- (void)resetCharacteristics
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27HealthDetailsViewController_shouldSaveItems) = 0;
  selfCopy = self;
  _s18HealthExperienceUI0A21DetailsViewControllerC10dataSource3forAA021CompoundSectionedDataH0CSo06UIViewF0C_tF_0();

  sub_1BA2EEC58();

  [(HealthDetailsViewController *)selfCopy setEditing:0 animated:1];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1BA432F88(editing, animated);
}

- (_TtC18HealthExperienceUI27HealthDetailsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end