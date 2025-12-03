@interface DOCArchiveOperation
- (_TtC26DocumentManagerExecutables19DOCArchiveOperation)initWithItems:(id)items destinationFolder:(id)folder;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOCArchiveOperation

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOCArchiveOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCArchiveOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables19DOCArchiveOperation)initWithItems:(id)items destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end