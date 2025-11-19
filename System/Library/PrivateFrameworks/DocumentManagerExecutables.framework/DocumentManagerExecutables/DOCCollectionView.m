@interface DOCCollectionView
- (CGSize)contentSize;
- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)setContentSize:(CGSize)a3;
@end

@implementation DOCCollectionView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCCollectionView();
  [(DOCCollectionView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = DOCCollectionView.offsetAdjustmentBehaviors.getter();
  (*(*v6 + 168))(v6);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for DOCCollectionView();
  [(DOCCollectionView *)&v7 setContentSize:width, height];
}

- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCCollectionView();
  return [(DOCCollectionView *)&v10 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCollectionView();
  v4 = a3;
  v5 = [(DOCCollectionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end