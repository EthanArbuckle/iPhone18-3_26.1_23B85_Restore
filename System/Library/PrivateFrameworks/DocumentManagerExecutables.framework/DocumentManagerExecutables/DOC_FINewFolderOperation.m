@interface DOC_FINewFolderOperation
- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)a3 destinationFolder:(id)a4 propertyList:(id)a5;
- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)a3 destinationFolderItem:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOC_FINewFolderOperation

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOC_FINewFolderOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOC_FINewFolderOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)a3 destinationFolder:(id)a4 propertyList:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)a3 destinationFolderItem:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end