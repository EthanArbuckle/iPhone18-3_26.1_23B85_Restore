@interface DOCCopyOperation
- (NSDictionary)targetFilenamesByItem;
- (NSDictionary)transferResults;
- (NSString)actionNameForUndoing;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)items destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)items destinationURL:(id)l;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLs:(id)ls destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder;
- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithURLs:(id)ls destinationFolder:(id)folder;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)actionMain;
- (void)presendNotifications;
- (void)setTargetFilenamesByItem:(id)item;
@end

@implementation DOCCopyOperation

- (NSDictionary)transferResults
{
  selfCopy = self;
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
  targetFilenamesByItem = [(FPMoveOperation *)&v7 targetFilenamesByItem];
  if (targetFilenamesByItem)
  {
    v4 = targetFilenamesByItem;
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

- (void)setTargetFilenamesByItem:(id)item
{
  isa = item;
  if (item)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCopyOperation();
  [(FPMoveOperation *)&v7 setTargetFilenamesByItem:isa];

  DOCCopyOperation.targetFilenamesByItem.didset();
}

- (void)presendNotifications
{
  selfCopy = self;
  if (DOCCopyOperation.handlePresendNotifications_asDSCopy()())
  {
  }

  else
  {
    v3.receiver = selfCopy;
    v3.super_class = type metadata accessor for DOCCopyOperation();
    [(FPMoveOperation *)&v3 presendNotifications];
  }
}

- (void)actionMain
{
  selfCopy = self;
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

  selfCopy = self;
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
  selfCopy = self;
  v3 = DOCCopyOperation.operationForRedoing()();

  return v3;
}

- (id)operationForUndoing
{
  selfCopy = self;
  v3 = DOCCopyOperation.operationForUndoing()();

  return v3;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)items destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithURLs:(id)ls destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithItems:(id)items destinationURL:(id)l
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4 - 8, v5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLs:(id)ls destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables16DOCCopyOperation)initWithSourceURLsAndNames:(id)names destinationFolder:(id)folder
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end