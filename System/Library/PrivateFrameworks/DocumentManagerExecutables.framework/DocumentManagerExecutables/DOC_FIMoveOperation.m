@interface DOC_FIMoveOperation
- (_TtC26DocumentManagerExecutables19DOC_FIMoveOperation)init;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)registerUndo;
- (void)schedule;
@end

@implementation DOC_FIMoveOperation

- (void)schedule
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_fiOperation);
  if (v2)
  {
    [v2 schedule];
  }
}

- (id)operationForRedoing
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  if (v2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_sourceItems);
    v4 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_destinationFolderItem);
    v5 = objc_allocWithZone(type metadata accessor for DOC_FIMoveOperation());
    swift_getObjectType();
    v6 = v2;

    swift_unknownObjectRetain();
    v7 = specialized DOC_FIMoveOperation.init(nodes:destinationFolder:undoManager:)(v3, v4, v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOC_FIMoveOperation.operationForUndoing()();

  return v3;
}

- (void)registerUndo
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FIMoveOperation_undoManager);
  if (v3)
  {
    [v3 registerUndoOperationForSender_];
  }
}

- (_TtC26DocumentManagerExecutables19DOC_FIMoveOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end