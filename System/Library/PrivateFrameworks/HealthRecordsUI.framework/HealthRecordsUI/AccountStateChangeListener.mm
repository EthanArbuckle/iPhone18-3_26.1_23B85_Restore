@interface AccountStateChangeListener
- (_TtC15HealthRecordsUI26AccountStateChangeListener)init;
- (void)clinicalAccountStore:(id)store accountDidChange:(id)change changeType:(int64_t)type;
@end

@implementation AccountStateChangeListener

- (void)clinicalAccountStore:(id)store accountDidChange:(id)change changeType:(int64_t)type
{
  storeCopy = store;
  changeCopy = change;
  selfCopy = self;
  sub_1D123CE50(storeCopy, changeCopy, type);
}

- (_TtC15HealthRecordsUI26AccountStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end