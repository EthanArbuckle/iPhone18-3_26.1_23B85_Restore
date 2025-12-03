@interface LSChangeObserver.Observer
- (_TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer)init;
- (void)observerDidObserveDatabaseChange:(id)change;
@end

@implementation LSChangeObserver.Observer

- (void)observerDidObserveDatabaseChange:(id)change
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_notify);
  v4 = *&self->notify[OBJC_IVAR____TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer_notify];
  selfCopy = self;

  v3(v5);
}

- (_TtCC21DefaultAppsSettingsUI16LSChangeObserverP33_7689C6B5CF2FFB3629BA237567A0B8718Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end