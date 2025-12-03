@interface HealthRecordsSupportedStateChangeListener
- (_TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener)init;
- (void)healthRecordsStore:(id)store healthRecordsSupportedDidChangeTo:(BOOL)to;
@end

@implementation HealthRecordsSupportedStateChangeListener

- (void)healthRecordsStore:(id)store healthRecordsSupportedDidChangeTo:(BOOL)to
{
  storeCopy = store;
  selfCopy = self;
  sub_1D12D6D20(storeCopy, to);
}

- (_TtC15HealthRecordsUI41HealthRecordsSupportedStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end