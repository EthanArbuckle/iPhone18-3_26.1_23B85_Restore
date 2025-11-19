@interface DOCMoveOperation
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)a3 destinationURL:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLs:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithURLs:(id)a3 destinationFolder:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)presendNotifications;
- (void)registerUndo;
@end

@implementation DOCMoveOperation

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithURLs:(id)a3 destinationFolder:(id)a4
{
  type metadata accessor for URL();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCMoveOperation.init(urls:destinationFolder:)(v5, a4);
}

- (void)presendNotifications
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCMoveOperation();
  v2 = v4.receiver;
  [(FPMoveOperation *)&v4 presendNotifications];
  v3 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:static DOCMoveOperation.willBegin object:v2];
}

- (void)actionMain
{
  v2 = self;
  DOCMoveOperation.actionMain()();
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  DOCMoveOperation.finish(withResult:error:)(v10, a4);

  outlined destroy of Any?(v10);
}

- (id)operationForRedoing
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  if (v2)
  {
    v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_sourceItems);
    v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_destinationFolderItem);
    v5 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
    v6 = v2;

    v7 = DOCMoveOperation.init(items:destinationFolder:undoManager:)(v3, v4, v6);
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
  v3 = DOCMoveOperation.operationForUndoing()();

  return v3;
}

- (void)registerUndo
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCMoveOperation_undoManager);
  if (v3)
  {
    [v3 registerUndoOperationForSender_];
  }
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)a3 destinationURL:(id)a4
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4 - 8, v5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLs:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end