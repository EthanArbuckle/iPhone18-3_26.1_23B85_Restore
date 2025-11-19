@interface IngestionStateChangeListener
- (_TtC15HealthRecordsUI28IngestionStateChangeListener)init;
- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4;
@end

@implementation IngestionStateChangeListener

- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D10A9AAC(v6, a4);
}

- (_TtC15HealthRecordsUI28IngestionStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end