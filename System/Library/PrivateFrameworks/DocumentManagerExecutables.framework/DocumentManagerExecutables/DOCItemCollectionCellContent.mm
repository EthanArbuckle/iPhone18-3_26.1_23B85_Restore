@interface DOCItemCollectionCellContent
- (BOOL)accessibilityIsFolder;
- (BOOL)accessibilityShouldDim;
- (id)accessibilityItem;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)thumbnailLoaded:(id)loaded;
@end

@implementation DOCItemCollectionCellContent

- (void)dealloc
{
  selfCopy = self;
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DOCItemCollectionCellContent(0);
  [(DOCItemCollectionCellContent *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  outlined destroy of CharacterSet?(v18, &_sypSgMd);
}

- (void)thumbnailLoaded:(id)loaded
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = loaded;
  swift_unknownObjectRetain_n();
  selfCopy = self;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (id)accessibilityItem
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x3D0);
  selfCopy = self;
  if (v2())
  {
    swift_getObjectType();
    v4 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)accessibilityIsFolder
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x800);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (BOOL)accessibilityShouldDim
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x910);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end