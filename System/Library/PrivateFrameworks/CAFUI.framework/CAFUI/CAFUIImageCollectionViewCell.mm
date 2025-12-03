@interface CAFUIImageCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC5CAFUI28CAFUIImageCollectionViewCell)initWithCoder:(id)coder;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CAFUIImageCollectionViewCell

- (_TtC5CAFUI28CAFUIImageCollectionViewCell)initWithCoder:(id)coder
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  CAFUIImageCollectionViewCell.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAFUIImageCollectionViewCell();
  return [(CAFUIImageCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  CAFUIImageCollectionViewCell.isHighlighted.setter(highlighted);
}

@end