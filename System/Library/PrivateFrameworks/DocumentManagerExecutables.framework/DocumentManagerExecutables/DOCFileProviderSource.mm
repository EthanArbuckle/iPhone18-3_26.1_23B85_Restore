@interface DOCFileProviderSource
+ (id)createSourceFrom:(id)from with:(id)with;
+ (id)createSpotlightSources;
- (BOOL)iconPreferingSymbolImagesRequiresHierarchicalColors;
- (BOOL)isAvailableSystemWide;
- (BOOL)isEjectable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForConfiguration:(id)configuration;
- (BOOL)isiCloudBased;
- (DOCActionManager)actionManager;
- (NSArray)supportedSearchFilters;
- (NSString)domainName;
- (UIImage)iconPreferingSymbolImages;
- (_TtC26DocumentManagerExecutables21DOCFileProviderSource)init;
- (id)loadIconForSize:(int64_t)size;
- (unint64_t)status;
- (void)setActionManager:(id)manager;
- (void)setIsEjectable:(BOOL)ejectable;
@end

@implementation DOCFileProviderSource

- (BOOL)iconPreferingSymbolImagesRequiresHierarchicalColors
{
  selfCopy = self;
  v3 = DOCFileProviderSource.iconPreferingSymbolImagesRequiresHierarchicalColors.getter();

  return v3 & 1;
}

- (UIImage)iconPreferingSymbolImages
{
  selfCopy = self;
  v3 = DOCFileProviderSource.iconPreferingSymbolImages.getter();

  return v3;
}

- (DOCActionManager)actionManager
{
  selfCopy = self;
  v3 = DOCFileProviderSource.actionManager.getter();

  return v3;
}

- (void)setActionManager:(id)manager
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = manager;
  managerCopy = manager;
}

- (NSString)domainName
{
  selfCopy = self;
  v3 = DOCFileProviderSource._domainName.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x24C1FAD20](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadIconForSize:(int64_t)size
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v3)
  {
    v4 = [objc_opt_self() iconForFileProvider:v3 size:size];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEjectable
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIsEjectable:(BOOL)ejectable
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = ejectable;
}

- (BOOL)isAvailableSystemWide
{
  if (*(&self->super._hidden + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type))
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v2)
    {
      LOBYTE(v2) = [v2 isAvailableSystemWide];
    }

    else
    {
      __break(1u);
    }
  }

  return v2;
}

- (unint64_t)status
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xF8);
  selfCopy = self;
  v4 = v2();

  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return (v4 & 1) == 0;
  }
}

- (NSArray)supportedSearchFilters
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v2)
  {
    selfCopy = self;
    supportedSearchFilters = [v2 supportedSearchFilters];
    if (supportedSearchFilters)
    {
      v5 = supportedSearchFilters;
      type metadata accessor for NSFileProviderSearchFilter(0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v7 = isa;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DOCFileProviderSource.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

+ (id)createSpotlightSources
{
  specialized static DOCFileProviderSource.createSpotlightSources()();
  type metadata accessor for DOCFileProviderSource();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (id)createSourceFrom:(id)from with:(id)with
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  fromCopy = from;
  v9 = specialized static DOCFileProviderSource.newSource(from:with:)(fromCopy, v5, v7);

  v10 = swift_allocObject();
  *(v10 + 16) = fromCopy;
  v11 = (v9 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v12 = *v11;
  *v11 = closure #1 in static DOCFileProviderSource.createSource(from:with:)partial apply;
  v11[1] = v10;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12);

  return v9;
}

- (BOOL)isValidForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  LOBYTE(self) = DOCFileProviderSource.isValid(for:)(configurationCopy);

  return self & 1;
}

- (BOOL)isiCloudBased
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v2)
  {
    LOBYTE(v2) = [v2 isiCloudDriveProvider];
  }

  return v2;
}

- (_TtC26DocumentManagerExecutables21DOCFileProviderSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end