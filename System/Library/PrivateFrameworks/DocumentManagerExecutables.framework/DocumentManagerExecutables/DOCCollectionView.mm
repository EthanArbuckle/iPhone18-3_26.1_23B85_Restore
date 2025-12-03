@interface DOCCollectionView
- (CGSize)contentSize;
- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)setContentSize:(CGSize)size;
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

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = DOCCollectionView.offsetAdjustmentBehaviors.getter();
  (*(*v6 + 168))(v6);

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DOCCollectionView();
  [(DOCCollectionView *)&v7 setContentSize:width, height];
}

- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCCollectionView();
  return [(DOCCollectionView *)&v10 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables17DOCCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCCollectionView____lazy_storage___offsetAdjustmentBehaviors) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCCollectionView();
  coderCopy = coder;
  v5 = [(DOCCollectionView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end