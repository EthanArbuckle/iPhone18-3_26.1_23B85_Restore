@interface DOC_FINewFolderOperation
- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)name destinationFolder:(id)folder propertyList:(id)list;
- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)name destinationFolderItem:(id)item;
- (id)operationForRedoing;
- (id)operationForUndoing;
@end

@implementation DOC_FINewFolderOperation

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOC_FINewFolderOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOC_FINewFolderOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)name destinationFolder:(id)folder propertyList:(id)list
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation)initWithName:(id)name destinationFolderItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end