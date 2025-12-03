@interface DOCCollectionViewCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)section;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation DOCCollectionViewCompositionalLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for DOCItemCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareLayout
{
  selfCopy = self;
  DOCCollectionViewCompositionalLayout.prepare()();
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  v12 = [(DOCCollectionViewCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v12)
  {
    DOCCollectionViewCompositionalLayout.setWidthAttributes(attributes:)(v12);
  }

  (*(v6 + 8))(v9, v5);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v8 = DOCCollectionViewCompositionalLayout.shouldInvalidateLayout(forBoundsChange:)(v10);

  return v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = DOCCollectionViewCompositionalLayout.layoutAttributesForElements(in:)(v12);

  if (v8)
  {
    type metadata accessor for UICollectionViewLayoutAttributes();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v14 = DOCCollectionViewCompositionalLayout.layoutAttributesForSupplementaryView(ofKind:at:)(v10, v12);

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)section
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.super._collectionView + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate) = 0;
  swift_unknownObjectWeakInit();
  v7 = self + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout;
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(DOCCollectionViewCompositionalLayout *)&v9 initWithSection:section];
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  ObjectType = swift_getObjectType();
  v8 = self + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super._collectionView + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_outlineDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9 = self + OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_coreLayout;
  *v9 = 0;
  *(v9 + 1) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(DOCCollectionViewCompositionalLayout *)&v11 initWithSection:section configuration:configuration];
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider
{
  v3 = _Block_copy(provider);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return DOCCollectionViewCompositionalLayout.init(sectionProvider:)(thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?)partial apply, v4);
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return DOCCollectionViewCompositionalLayout.init(sectionProvider:configuration:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?), v6, configuration);
}

@end