@interface MosaicSquareGridLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (_TtC9MomentsUI22MosaicSquareGridLayout)init;
- (_TtC9MomentsUI22MosaicSquareGridLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation MosaicSquareGridLayout

- (void)prepareLayout
{
  v2 = self;
  MosaicSquareGridLayout.prepare()();
}

- (CGSize)collectionViewContentSize
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x78);
  v3 = self;
  v2();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = self;
  v6 = [(MosaicSquareGridLayout *)v5 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v10.width = width;
    v10.height = height;
    v8 = CGSizeEqualToSize(v10, v11);

    return !v8;
  }

  else
  {

    return 0;
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x60);
  v9 = self;
  v10 = v8();
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v11)
  {

    v14 = 0;
    goto LABEL_9;
  }

  v12 = IndexPath.item.getter();
  result = v8();
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x21CE93180](v12, result);

    goto LABEL_9;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v14 = *(result + v12 + 4);

LABEL_9:
  (*(v5 + 8))(v7, v4);

  return v14;
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
  v8 = MosaicSquareGridLayout.layoutAttributesForElements(in:)(v12);

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

- (_TtC9MomentsUI22MosaicSquareGridLayout)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes) = MEMORY[0x277D84F90];
  v3 = (self + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds);
  v4 = type metadata accessor for MosaicSquareGridLayout();
  *v3 = 0u;
  v3[1] = 0u;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MosaicSquareGridLayout *)&v6 init];
}

- (_TtC9MomentsUI22MosaicSquareGridLayout)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_cachedAttributes) = MEMORY[0x277D84F90];
  v4 = (self + OBJC_IVAR____TtC9MomentsUI22MosaicSquareGridLayout_contentBounds);
  *v4 = 0u;
  v4[1] = 0u;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MosaicSquareGridLayout();
  v5 = a3;
  v6 = [(MosaicSquareGridLayout *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end