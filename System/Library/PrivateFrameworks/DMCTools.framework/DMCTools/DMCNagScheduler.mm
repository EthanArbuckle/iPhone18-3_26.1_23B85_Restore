@interface DMCNagScheduler
- (BOOL)evaluateNagsWithBackgroundTask:(id)a3;
- (DMCNagScheduler)init;
- (DMCNagScheduler)initWithTaskName:(id)a3 delegate:(id)a4;
- (DMCNagSchedulerDelegate)delegate;
- (id)launchDeadlineActionFor:(id)a3;
- (id)nagItemsWithError:(id *)a3;
- (id)nextNagForItems:(id)a3;
- (void)launchDeadlineURLString:(id)a3;
- (void)setBackgroundTask:(id)a3;
@end

@implementation DMCNagScheduler

- (DMCNagSchedulerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setBackgroundTask:(id)a3
{
  v4 = *(self + OBJC_IVAR___DMCNagScheduler_backgroundTask);
  *(self + OBJC_IVAR___DMCNagScheduler_backgroundTask) = a3;
  v3 = a3;
}

- (DMCNagScheduler)initWithTaskName:(id)a3 delegate:(id)a4
{
  v4 = sub_247F23F3C();
  v6 = v5;
  swift_unknownObjectRetain();
  return DMCNagScheduler.init(taskName:delegate:)(v4, v6);
}

- (id)nagItemsWithError:(id *)a3
{
  v3 = self;
  DMCNagScheduler.nagItems()();

  type metadata accessor for DMCNagItem(0);
  v4 = sub_247F2402C();

  return v4;
}

- (BOOL)evaluateNagsWithBackgroundTask:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_247F1CBD0(v3);

  return v3 & 1;
}

- (id)nextNagForItems:(id)a3
{
  type metadata accessor for DMCNagItem(0);
  v4 = sub_247F2403C();
  v5 = self;
  v6 = sub_247F1D33C(v4);

  return v6;
}

- (id)launchDeadlineActionFor:(id)a3
{
  v5 = sub_247F23DEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = self;
  sub_247F1E138(v10);

  v12 = sub_247F23D8C();
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (void)launchDeadlineURLString:(id)a3
{
  v4 = sub_247F23F3C();
  v6 = v5;
  v7 = self;
  sub_247F1FDEC(v4, v6);
}

- (DMCNagScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end