@interface DataTypeDetailViewControllerWithLoadAction
- (_TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction)initWithCoder:(id)a3;
- (void)viewDidLoad;
@end

@implementation DataTypeDetailViewControllerWithLoadAction

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA18FF24();
}

- (_TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction)initWithCoder:(id)a3
{
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadAction);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_shouldRunLoadAction) = 0;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI42DataTypeDetailViewControllerWithLoadAction_onLoadActionContext;
  v7 = type metadata accessor for DataTypeDetailViewControllerWithLoadAction.OnLoadActionContext(0);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  v11.receiver = self;
  v11.super_class = type metadata accessor for DataTypeDetailViewControllerWithLoadAction(0);
  v8 = a3;
  v9 = [(DataTypeDetailViewController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end