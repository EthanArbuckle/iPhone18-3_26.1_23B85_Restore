@interface HearingTestSetUpViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelButtonTapped:(id)tapped;
- (void)continueButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HearingTestSetUpViewController

- (void)viewDidLoad
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CD7EDB4();
}

- (void)viewDidAppear:(BOOL)appear
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_20CD7F588(appear);
}

- (void)continueButtonTapped:(id)tapped
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CD80284();
  v5 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager);
  v7 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_currentStep);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CDE3FD0(selfCopy, &v7, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

- (void)cancelButtonTapped:(id)tapped
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager;
  v6 = (*(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13HearingTestUI30HearingTestSetUpViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v7 = *v6;
  v8 = v6[1];
  ObjectType = swift_getObjectType();
  v12 = 4;
  v10 = *(v8 + 48);
  swift_unknownObjectRetain();
  v10(&v12, selfCopy, &off_2823BBD50, ObjectType, v8);
  swift_unknownObjectRelease();
  v11 = *(&selfCopy->super.super.super.super.super.super.isa + v5);
  sub_20CDDE960();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v5 = sub_20CD7E360();
  if (v5 >> 62)
  {
    v6 = sub_20CE141C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  result = sub_20CD7E360();
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F313610](section, result);
    goto LABEL_7;
  }

  if (section < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
  {
    v8 = *(result + 8 * section + 32);

LABEL_7:

    v9 = *(v8 + 32);

    v10 = *(v9 + 16);

    return v10;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_20CE12614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE125D4();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_20CD80910(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  v9 = sub_20CD80CD0(viewCopy, section);

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_20CE12614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE125D4();
  viewCopy = view;
  selfCopy = self;
  sub_20CD81108(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

@end