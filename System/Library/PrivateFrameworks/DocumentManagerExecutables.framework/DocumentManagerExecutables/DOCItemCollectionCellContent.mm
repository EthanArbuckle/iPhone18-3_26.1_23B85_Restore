@interface DOCItemCollectionCellContent
- (BOOL)accessibilityIsFolder;
- (BOOL)accessibilityShouldDim;
- (id)accessibilityItem;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)thumbnailLoaded:(id)a3;
@end

@implementation DOCItemCollectionCellContent

- (void)dealloc
{
  v2 = self;
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DOCItemCollectionCellContent(0);
  [(DOCItemCollectionCellContent *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  outlined destroy of CharacterSet?(v18, &_sypSgMd);
}

- (void)thumbnailLoaded:(id)a3
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  swift_unknownObjectRetain_n();
  v7 = self;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (id)accessibilityItem
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x3D0);
  v3 = self;
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
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (BOOL)accessibilityShouldDim
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x910);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

@end