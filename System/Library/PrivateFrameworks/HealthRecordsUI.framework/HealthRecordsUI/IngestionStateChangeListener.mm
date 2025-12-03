@interface IngestionStateChangeListener
- (_TtC15HealthRecordsUI28IngestionStateChangeListener)init;
- (void)clinicalIngestionStore:(id)store ingestionStateDidUpdateTo:(int64_t)to;
@end

@implementation IngestionStateChangeListener

- (void)clinicalIngestionStore:(id)store ingestionStateDidUpdateTo:(int64_t)to
{
  storeCopy = store;
  selfCopy = self;
  sub_1D10A9AAC(storeCopy, to);
}

- (_TtC15HealthRecordsUI28IngestionStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end