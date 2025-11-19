@interface DOCUnarchiveOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables21DOCUnarchiveOperation)initWithItem:(id)a3 destinationFolder:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOCUnarchiveOperation

- (NSString)actionNameForUndoing
{
  v2 = self;
  v3 = DOCUnarchiveOperation.actionNameForUndoing.getter();
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
  v3 = DOCUnarchiveOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOCUnarchiveOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables21DOCUnarchiveOperation)initWithItem:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end