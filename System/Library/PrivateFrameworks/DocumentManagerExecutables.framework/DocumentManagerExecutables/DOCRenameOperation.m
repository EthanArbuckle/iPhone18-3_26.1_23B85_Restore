@interface DOCRenameOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables18DOCRenameOperation)init;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)schedule;
@end

@implementation DOCRenameOperation

- (void)schedule
{
  v2 = self;
  DOCRenameOperation.schedule()();
}

- (NSString)actionNameForUndoing
{
  v2 = self;
  v3 = DOCRenameOperation.actionNameForUndoing.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOCRenameOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOCRenameOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables18DOCRenameOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end