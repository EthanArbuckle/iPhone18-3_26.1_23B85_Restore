@interface DOCCopyOperation
- (NSDictionary)targetFilenamesByItem;
- (NSDictionary)transferResults;
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)a3 destinationURL:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLs:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithURLs:(id)a3 destinationFolder:(id)a4;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
- (void)presendNotifications;
- (void)setTargetFilenamesByItem:(id)a3;
@end

@implementation DOCCopyOperation

- (NSDictionary)transferResults
{
  v2 = self;
  v3 = DOCCopyOperation.transferResults.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (NSDictionary)targetFilenamesByItem
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCopyOperation();
  v2 = v7.receiver;
  v3 = [(FPMoveOperation *)&v7 targetFilenamesByItem];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)setTargetFilenamesByItem:(id)a3
{
  isa = a3;
  if (a3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = self;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCopyOperation();
  [(FPMoveOperation *)&v7 setTargetFilenamesByItem:isa];

  DOCCopyOperation.targetFilenamesByItem.didset();
}

- (void)presendNotifications
{
  v2 = self;
  if (DOCCopyOperation.handlePresendNotifications_asDSCopy()())
  {
  }

  else
  {
    v3.receiver = v2;
    v3.super_class = type metadata accessor for DOCCopyOperation();
    [(FPMoveOperation *)&v3 presendNotifications];
  }
}

- (void)actionMain
{
  v2 = self;
  DOCCopyOperation.actionMain()();
}

- (NSString)actionNameForUndoing
{
  if ((*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs))[2])
  {
    v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x1B0);
  }

  else
  {
    v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x1A8);
  }

  v4 = self;
  v5 = v3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)operationForRedoing
{
  v2 = self;
  v3 = DOCCopyOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  v2 = self;
  v3 = DOCCopyOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithURLs:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)a3 destinationURL:(id)a4
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4 - 8, v5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLs:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLsAndNames:(id)a3 destinationFolder:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end