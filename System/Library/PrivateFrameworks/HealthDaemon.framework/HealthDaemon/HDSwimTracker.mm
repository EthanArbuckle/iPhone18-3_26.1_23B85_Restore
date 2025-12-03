@interface HDSwimTracker
- (_TtC12HealthDaemon13HDSwimTracker)init;
- (_TtP12HealthDaemon20HDCMSwimTrackerProxy_)tracker;
- (id)makeSwimTracker;
- (void)fetchLatestDataWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)setTracker:(id)tracker;
- (void)startWith:(id)with;
- (void)stop;
@end

@implementation HDSwimTracker

- (_TtP12HealthDaemon20HDCMSwimTrackerProxy_)tracker
{
  selfCopy = self;
  v3 = sub_2289C88D8();

  return v3;
}

- (void)setTracker:(id)tracker
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker);
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon13HDSwimTracker____lazy_storage___tracker) = tracker;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)makeSwimTracker
{
  v3 = objc_allocWithZone(MEMORY[0x277CC1D60]);
  selfCopy = self;
  v5 = [v3 init];
  v6 = type metadata accessor for HDCMSwimTracker();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(HDSwimTracker *)&v10 init];

  return v8;
}

- (void)startWith:(id)with
{
  v4 = sub_22911B8DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  selfCopy = self;
  sub_2289C8E94();

  (*(v5 + 8))(v8, v4);
}

- (void)fetchLatestDataWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_2289C9A90(0, sub_2289CADB0, v5);
}

- (void)stop
{
  selfCopy = self;
  sub_2289C97C4();
}

- (void)registerObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2289CAAB8(observer, selfCopy);
  swift_unknownObjectRelease();
}

- (_TtC12HealthDaemon13HDSwimTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end