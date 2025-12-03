@interface DOCUntrashOperation
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables19DOCUntrashOperation)initWithItems:(id)items restoreDirectory:(id)directory;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOCUntrashOperation

- (NSString)actionNameForUndoing
{
  selfCopy = self;
  DOCUntrashOperation.actionNameForUndoing.getter();
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
  v3 = DOCUntrashOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCUntrashOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables19DOCUntrashOperation)initWithItems:(id)items restoreDirectory:(id)directory
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end