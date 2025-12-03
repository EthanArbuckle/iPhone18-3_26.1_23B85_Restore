@interface DOCPickerContext
- (BOOL)canRename;
- (BOOL)canSetTags;
- (DOCPickerContext)init;
- (DOCPickerContext)initWithFPURLs:(id)ls;
- (DOCPickerContext)initWithNodes:(id)nodes;
- (DOCPickerContext)initWithURLs:(id)ls;
- (NSArray)nodesToMove;
- (NSArray)urlsToSave;
- (NSArray)utisToSave;
- (NSString)firstDisplayName;
- (int64_t)numberOfItems;
- (void)setUtisToSave:(id)save;
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

- (void)setUtisToSave:(id)save
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
  selfCopy = self;
  urlsToSave = [(DOCPickerContext *)selfCopy urlsToSave];
  if (urlsToSave)
  {
    v4 = urlsToSave;
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
  selfCopy = self;
  urlsToSave = [(DOCPickerContext *)selfCopy urlsToSave];
  v4 = urlsToSave;
  if (urlsToSave)
  {
  }

  return v4 != 0;
}

- (int64_t)numberOfItems
{
  selfCopy = self;
  v3 = DOCPickerContext.numberOfItems.getter();

  return v3;
}

- (NSString)firstDisplayName
{
  selfCopy = self;
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

- (DOCPickerContext)initWithFPURLs:(id)ls
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(fpurls:)(v3);
}

- (DOCPickerContext)initWithURLs:(id)ls
{
  type metadata accessor for URL();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(urls:)(v3);
}

- (DOCPickerContext)initWithNodes:(id)nodes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return DOCPickerContext.init(nodes:)(v3);
}

@end