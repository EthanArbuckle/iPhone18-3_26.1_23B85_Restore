@interface ENStatusChangeObserver
- (BOOL)active;
- (ENStatusChangeObserver)init;
- (ENStatusChangeObserver)initWithAdapter:(id)adapter didChangeHandler:(id)handler;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation ENStatusChangeObserver

- (ENStatusChangeObserver)initWithAdapter:(id)adapter didChangeHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___ENStatusChangeObserver_active) = 0;
  swift_unknownObjectWeakAssign();
  v7 = (self + OBJC_IVAR___ENStatusChangeObserver_didChangeHandler);
  *v7 = sub_2516C46E4;
  v7[1] = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  return [(ENStatusChangeObserver *)&v9 init];
}

- (BOOL)active
{
  v3 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  ENManagerAdapter.StatusChangeObserver.active.setter(active);
}

- (void)dealloc
{
  v3 = OBJC_IVAR___ENStatusChangeObserver_active;
  swift_beginAccess();
  *(&self->super.isa + v3) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ENManagerAdapter.StatusChangeObserver();
  selfCopy = self;
  [(ENStatusChangeObserver *)&v5 dealloc];
}

- (ENStatusChangeObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end