@interface ParticipantListLayout
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation ParticipantListLayout

- (void)prepareLayout
{
  selfCopy = self;
  ParticipantListLayout.prepare()();
}

- (CGSize)collectionViewContentSize
{
  v2 = ParticipantListLayout.collectionViewContentSize.getter();
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = ParticipantListLayout.layoutAttributesForItem(at:)();

  (*(v5 + 8))(v7, v4);

  return v9;
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
  v8 = ParticipantListLayout.layoutAttributesForElements(in:)(v12);

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

@end