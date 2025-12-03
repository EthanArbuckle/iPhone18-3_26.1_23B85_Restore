@interface DMCNagScheduler
- (BOOL)evaluateNagsWithBackgroundTask:(id)task;
- (DMCNagScheduler)init;
- (DMCNagScheduler)initWithTaskName:(id)name delegate:(id)delegate;
- (DMCNagSchedulerDelegate)delegate;
- (id)launchDeadlineActionFor:(id)for;
- (id)nagItemsWithError:(id *)error;
- (id)nextNagForItems:(id)items;
- (void)launchDeadlineURLString:(id)string;
- (void)setBackgroundTask:(id)task;
@end

@implementation DMCNagScheduler

- (DMCNagSchedulerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setBackgroundTask:(id)task
{
  v4 = *(self + OBJC_IVAR___DMCNagScheduler_backgroundTask);
  *(self + OBJC_IVAR___DMCNagScheduler_backgroundTask) = task;
  taskCopy = task;
}

- (DMCNagScheduler)initWithTaskName:(id)name delegate:(id)delegate
{
  v4 = sub_247F23F3C();
  v6 = v5;
  swift_unknownObjectRetain();
  return DMCNagScheduler.init(taskName:delegate:)(v4, v6);
}

- (id)nagItemsWithError:(id *)error
{
  selfCopy = self;
  DMCNagScheduler.nagItems()();

  type metadata accessor for DMCNagItem(0);
  v4 = sub_247F2402C();

  return v4;
}

- (BOOL)evaluateNagsWithBackgroundTask:(id)task
{
  taskCopy = task;
  taskCopy2 = task;
  selfCopy = self;
  LOBYTE(taskCopy) = sub_247F1CBD0(taskCopy);

  return taskCopy & 1;
}

- (id)nextNagForItems:(id)items
{
  type metadata accessor for DMCNagItem(0);
  v4 = sub_247F2403C();
  selfCopy = self;
  v6 = sub_247F1D33C(v4);

  return v6;
}

- (id)launchDeadlineActionFor:(id)for
{
  v5 = sub_247F23DEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  forCopy = for;
  selfCopy = self;
  sub_247F1E138(forCopy);

  v12 = sub_247F23D8C();
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (void)launchDeadlineURLString:(id)string
{
  v4 = sub_247F23F3C();
  v6 = v5;
  selfCopy = self;
  sub_247F1FDEC(v4, v6);
}

- (DMCNagScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end