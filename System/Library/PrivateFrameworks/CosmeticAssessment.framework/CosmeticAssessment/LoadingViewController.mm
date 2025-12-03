@interface LoadingViewController
- (_TtC18CosmeticAssessment21LoadingViewController)initWithCoder:(id)coder;
- (_TtC18CosmeticAssessment21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation LoadingViewController

- (_TtC18CosmeticAssessment21LoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = OBJC_IVAR____TtC18CosmeticAssessment21LoadingViewController_activityIndicator;
  v8 = objc_allocWithZone(MEMORY[0x277D750E8]);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v7) = [v8 initWithActivityIndicatorStyle_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LoadingViewController *)&v12 initWithNibName:0 bundle:0];

  return v10;
}

- (_TtC18CosmeticAssessment21LoadingViewController)initWithCoder:(id)coder
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC18CosmeticAssessment21LoadingViewController_activityIndicator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  result = sub_247D20398();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_247CC55D8();
}

@end