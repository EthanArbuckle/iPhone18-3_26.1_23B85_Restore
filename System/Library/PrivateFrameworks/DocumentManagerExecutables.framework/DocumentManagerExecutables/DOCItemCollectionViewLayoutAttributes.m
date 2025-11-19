@interface DOCItemCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (_TtC26DocumentManagerExecutables37DOCItemCollectionViewLayoutAttributes)init;
@end

@implementation DOCItemCollectionViewLayoutAttributes

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = DOCItemCollectionViewLayoutAttributes.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (_TtC26DocumentManagerExecutables37DOCItemCollectionViewLayoutAttributes)init
{
  v3 = self + OBJC_IVAR____TtC26DocumentManagerExecutables37DOCItemCollectionViewLayoutAttributes_columnData;
  v4 = type metadata accessor for DOCItemCollectionViewLayoutAttributes();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(UICollectionViewLayoutAttributes *)&v6 init];
}

@end