@interface DOCPickerContext
- (BOOL)canRename;
- (BOOL)canSetTags;
- (DOCPickerContext)init;
- (DOCPickerContext)initWithFPURLs:(id)a3;
- (DOCPickerContext)initWithNodes:(id)a3;
- (DOCPickerContext)initWithURLs:(id)a3;
- (NSArray)nodesToMove;
- (NSArray)urlsToSave;
- (NSArray)utisToSave;
- (NSString)firstDisplayName;
- (int64_t)numberOfItems;
- (void)setUtisToSave:(id)a3;
@end

@implementation DOCPickerContext

- (NSArray)urlsToSave
{
  if (*(self + OBJC_IVAR___DOCPickerContext_urlsToSave))
  {
    type metadata accessor for URL();

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (NSArray)utisToSave
{
  swift_beginAccess();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setUtisToSave:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___DOCPickerContext_utisToSave;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSArray)nodesToMove
{
  if (*(self + OBJC_IVAR___DOCPickerContext_nodesToMove))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (BOOL)canRename
{
  v2 = self;
  v3 = [(DOCPickerContext *)v2 urlsToSave];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for URL();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v5 + 16);

    return v6 == 1;
  }

  else
  {

    return 0;
  }
}

- (BOOL)canSetTags
{
  v2 = self;
  v3 = [(DOCPickerContext *)v2 urlsToSave];
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (int64_t)numberOfItems
{
  v2 = self;
  v3 = DOCPickerContext.numberOfItems.getter();

  return v3;
}

- (NSString)firstDisplayName
{
  v2 = self;
  DOCPickerContext.firstDisplayName.getter();
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x24C1FAD20](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DOCPickerContext)init
{
  *(self + OBJC_IVAR___DOCPickerContext_utisToSave) = MEMORY[0x277D84F90];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (DOCPickerContext)initWithFPURLs:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(fpurls:)(v3);
}

- (DOCPickerContext)initWithURLs:(id)a3
{
  type metadata accessor for URL();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(urls:)(v3);
}

- (DOCPickerContext)initWithNodes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(nodes:)(v3);
}

@end