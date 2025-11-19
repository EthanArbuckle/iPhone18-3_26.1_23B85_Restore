@interface AccountStateChangeListener
- (_TtC15HealthRecordsUI26AccountStateChangeListener)init;
- (void)clinicalAccountStore:(id)a3 accountDidChange:(id)a4 changeType:(int64_t)a5;
@end

@implementation AccountStateChangeListener

- (void)clinicalAccountStore:(id)a3 accountDidChange:(id)a4 changeType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1D123CE50(v8, v9, a5);
}

- (_TtC15HealthRecordsUI26AccountStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end