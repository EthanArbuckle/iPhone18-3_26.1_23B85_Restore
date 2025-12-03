@interface DOC_FIDeleteOperation
- (_TtC26DocumentManagerExecutables21DOC_FIDeleteOperation)init;
- (id)operationForRedoing;
- (void)schedule;
@end

@implementation DOC_FIDeleteOperation

- (void)schedule
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOC_FIDeleteOperation_fiOperation);
  if (v2)
  {
    [v2 schedule];
  }
}

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOC_FIDeleteOperation.operationForRedoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables21DOC_FIDeleteOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end