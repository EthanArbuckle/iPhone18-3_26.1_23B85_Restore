@interface DOCMoveOperation
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)items destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)items destinationURL:(id)l;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLs:(id)ls destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithURLs:(id)ls destinationFolder:(id)folder;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
- (void)registerUndo;
@end

@implementation DOCMoveOperation

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithURLs:(id)ls destinationFolder:(id)folder
{
  type metadata accessor for URL();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCMoveOperation.init(urls:destinationFolder:)(v5, folder);
}

- (void)presendNotifications
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCMoveOperation();
  v2 = v4.receiver;
  [(FPMoveOperation *)&v4 presendNotifications];
  defaultCenter = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willBegin != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:static DOCMoveOperation.willBegin object:v2];
}

- (void)actionMain
{
  selfCopy = self;
  DOCMoveOperation.actionMain()();
}

- (void)finishWithResult:(id)result error:(id)error
{
  if (result)
  {
    errorCopy = error;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    errorCopy2 = error;
    selfCopy2 = self;
  }

  DOCMoveOperation.finish(withResult:error:)(v10, error);

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
  selfCopy = self;
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

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)items destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithItems:(id)items destinationURL:(id)l
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4 - 8, v5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLs:(id)ls destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCMoveOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end