@interface DOCTrashOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables17DOCTrashOperation)initWithItems:(id)items;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
@end

@implementation DOCTrashOperation

- (void)actionMain
{
  selfCopy = self;
  DOCTrashOperation.actionMain()();
}

- (NSString)actionNameForUndoing
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = DOCTrashOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCTrashOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables17DOCTrashOperation)initWithItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end