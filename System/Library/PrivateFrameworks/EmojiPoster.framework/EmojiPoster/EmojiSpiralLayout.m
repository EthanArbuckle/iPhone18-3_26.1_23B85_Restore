@interface EmojiSpiralLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (_TtC11EmojiPoster17EmojiSpiralLayout)init;
- (_TtC11EmojiPoster17EmojiSpiralLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation EmojiSpiralLayout

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = [(EmojiSpiralLayout *)v2 collectionView];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)prepareLayout
{
  v6 = self;
  v2 = [(EmojiSpiralLayout *)v6 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;

    *(&v6->super.super.isa + OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius) = (v5 + 40.0) * 0.5;
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_24A0214F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A0214B8();
  v8 = self;
  v9 = sub_249FED008();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v3 = self;
  v4 = sub_249FED7B0();

  if (v4)
  {
    sub_249FEDA9C();
    v5 = sub_24A0217C8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = self;
  v6 = [(EmojiSpiralLayout *)v5 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v12.width = v8;
    v12.height = v9;
    v13.width = width;
    v13.height = height;
    v10 = CGSizeEqualToSize(v12, v13);

    return !v10;
  }

  else
  {

    return 0;
  }
}

- (_TtC11EmojiPoster17EmojiSpiralLayout)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius) = 0x3FF0000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmojiSpiralLayout();
  return [(EmojiSpiralLayout *)&v3 init];
}

- (_TtC11EmojiPoster17EmojiSpiralLayout)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius) = 0x3FF0000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmojiSpiralLayout();
  v4 = a3;
  v5 = [(EmojiSpiralLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end