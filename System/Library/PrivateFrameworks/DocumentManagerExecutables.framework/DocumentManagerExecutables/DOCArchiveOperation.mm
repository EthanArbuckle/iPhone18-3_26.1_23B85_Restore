@interface DOCArchiveOperation
- (_TtC26DocumentManagerExecutables19DOCArchiveOperation)initWithItems:(id)a3 destinationFolder:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOCArchiveOperation

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOCArchiveOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOCArchiveOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables19DOCArchiveOperation)initWithItems:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end