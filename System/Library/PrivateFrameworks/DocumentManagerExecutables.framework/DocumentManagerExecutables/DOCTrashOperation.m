@interface DOCTrashOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables17DOCTrashOperation)initWithItems:(id)a3;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
@end

@implementation DOCTrashOperation

- (void)actionMain
{
  v2 = self;
  DOCTrashOperation.actionMain()();
}

- (NSString)actionNameForUndoing
{
  v2 = self;
  DOCTrashOperation.actionNameForUndoing.getter();
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x24C1FAD20](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOCTrashOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOCTrashOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables17DOCTrashOperation)initWithItems:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end