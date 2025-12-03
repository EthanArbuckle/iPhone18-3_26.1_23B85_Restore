@interface DOC_FPCreateFolderOperation
- (_TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation)initWithParentItem:(id)item folderName:(id)name;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)registerUndo;
@end

@implementation DOC_FPCreateFolderOperation

- (id)operationForRedoing
{
  selfCopy = self;
  v3 = DOC_FPCreateFolderOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOC_FPCreateFolderOperation.operationForUndoing()();

  return v3;
}

- (void)registerUndo
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo) == 1)
  {
    [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager) registerUndoOperationForSender_];
  }
}

- (_TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation)initWithParentItem:(id)item folderName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end