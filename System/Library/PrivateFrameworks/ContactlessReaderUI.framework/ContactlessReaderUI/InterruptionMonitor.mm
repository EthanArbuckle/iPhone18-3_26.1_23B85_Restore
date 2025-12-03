@interface InterruptionMonitor
- (_TtC19ContactlessReaderUI19InterruptionMonitor)init;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)dealloc;
@end

@implementation InterruptionMonitor

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x100);
  selfCopy = self;
  v2(0);
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for InterruptionMonitor();
  [(InterruptionMonitor *)&v4 dealloc];
}

- (_TtC19ContactlessReaderUI19InterruptionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)callObserver:(id)observer callChanged:(id)changed
{
  observerCopy = observer;
  changedCopy = changed;
  selfCopy = self;
  sub_243F8F72C(changedCopy);
}

@end