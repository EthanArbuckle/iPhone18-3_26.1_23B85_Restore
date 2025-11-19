@interface NoResultsViewController
- (void)didTapEnd;
- (void)didTapRestart;
- (void)viewDidLoad;
@end

@implementation NoResultsViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_20CD941CC();
}

- (void)didTapRestart
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager;
  v4 = (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v5 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  v11 = 5;
  v8 = *(v6 + 48);
  v10 = self;
  swift_unknownObjectRetain();
  v8(&v11, v10, &protocol witness table for NoResultsViewController, ObjectType, v6);
  swift_unknownObjectRelease();
  v9 = *(&self->super.super.super.super.super.isa + v3);
  sub_20CDDE578(1);
}

- (void)didTapEnd
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager;
  v4 = (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI23NoResultsViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v5 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  v11 = 3;
  v8 = *(v6 + 48);
  v10 = self;
  swift_unknownObjectRetain();
  v8(&v11, v10, &protocol witness table for NoResultsViewController, ObjectType, v6);
  swift_unknownObjectRelease();
  v9 = *(&self->super.super.super.super.super.isa + v3);
  sub_20CDDE960();
}

@end