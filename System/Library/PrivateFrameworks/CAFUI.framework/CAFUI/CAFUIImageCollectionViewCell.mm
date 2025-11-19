@interface CAFUIImageCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC5CAFUI28CAFUIImageCollectionViewCell)initWithCoder:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CAFUIImageCollectionViewCell

- (_TtC5CAFUI28CAFUIImageCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_decoratorImageView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_focusRingView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_enabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  v2 = v6.receiver;
  [(CAFUIImageCollectionViewCell *)&v6 prepareForReuse];
  v3 = OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView;
  v4 = *&v2[OBJC_IVAR____TtC5CAFUI28CAFUIImageCollectionViewCell_checkImageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUIImageCollectionViewCell.didUpdateFocus(in:with:)(v6, v7);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  return [(CAFUIImageCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  CAFUIImageCollectionViewCell.isHighlighted.setter(a3);
}

@end