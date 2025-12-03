@interface DOCUnarchiveOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables21DOCUnarchiveOperation)initWithItem:(id)item destinationFolder:(id)folder;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOCUnarchiveOperation

- (NSString)actionNameForUndoing
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = DOCUnarchiveOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCUnarchiveOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables21DOCUnarchiveOperation)initWithItem:(id)item destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end