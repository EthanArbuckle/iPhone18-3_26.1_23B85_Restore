@interface DOCCollectionViewCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)a3;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
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
  v2 = self;
  DOCCollectionViewCompositionalLayout.prepare()();
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14.receiver = v10;
  v14.super_class = ObjectType;
  v12 = [(DOCCollectionViewCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v12)
  {
    DOCCollectionViewCompositionalLayout.setWidthAttributes(attributes:)(v12);
  }

  (*(v6 + 8))(v9, v5);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  v8 = DOCCollectionViewCompositionalLayout.shouldInvalidateLayout(forBoundsChange:)(v10);

  return v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  v14 = DOCCollectionViewCompositionalLayout.layoutAttributesForSupplementaryView(ofKind:at:)(v10, v12);

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)a3
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
  return [(DOCCollectionViewCompositionalLayout *)&v9 initWithSection:a3];
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
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
  return [(DOCCollectionViewCompositionalLayout *)&v11 initWithSection:a3 configuration:a4];
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return DOCCollectionViewCompositionalLayout.init(sectionProvider:)(thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?)partial apply, v4);
}

- (_TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return DOCCollectionViewCompositionalLayout.init(sectionProvider:configuration:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?), v6, a4);
}

@end