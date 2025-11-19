@interface InterruptionMonitor
- (_TtC19ContactlessReaderUI19InterruptionMonitor)init;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)dealloc;
@end

@implementation InterruptionMonitor

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x100);
  v3 = self;
  v2(0);
  v4.receiver = v3;
  v4.super_class = type metadata accessor for InterruptionMonitor();
  [(InterruptionMonitor *)&v4 dealloc];
}

- (_TtC19ContactlessReaderUI19InterruptionMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_243F8F72C(v7);
}

@end