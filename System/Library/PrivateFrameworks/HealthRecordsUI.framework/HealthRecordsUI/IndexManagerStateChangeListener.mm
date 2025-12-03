@interface IndexManagerStateChangeListener
- (_TtC15HealthRecordsUI31IndexManagerStateChangeListener)init;
- (void)conceptStore:(id)store indexManagerDidChangeState:(unint64_t)state;
@end

@implementation IndexManagerStateChangeListener

- (void)conceptStore:(id)store indexManagerDidChangeState:(unint64_t)state
{
  storeCopy = store;
  selfCopy = self;
  sub_1D13740DC(storeCopy, state);
}

- (_TtC15HealthRecordsUI31IndexManagerStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end