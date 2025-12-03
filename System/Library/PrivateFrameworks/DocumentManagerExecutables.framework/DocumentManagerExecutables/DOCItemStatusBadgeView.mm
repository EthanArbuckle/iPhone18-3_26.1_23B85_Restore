@interface DOCItemStatusBadgeView
- (CGSize)intrinsicContentSize;
- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithImage:(id)image;
- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation DOCItemStatusBadgeView

- (CGSize)intrinsicContentSize
{
  v2 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits);
  if (*(&self->super.super._swiftAnimationInfo + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits))
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for DOCItemStatusBadgeView();
    [(DOCItemStatusBadgeView *)&v5 intrinsicContentSize];
  }

  else
  {
    v3 = *v2;
    v4 = v2[1];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithImage:(id)image
{
  v4 = self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCItemStatusBadgeView();
  return [(DOCItemStatusBadgeView *)&v6 initWithImage:image];
}

- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v6 = self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemStatusBadgeView();
  return [(DOCItemStatusBadgeView *)&v8 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCItemStatusBadgeView();
  return [(DOCItemStatusBadgeView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutables22DOCItemStatusBadgeView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCItemStatusBadgeView_layoutTraits;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemStatusBadgeView();
  coderCopy = coder;
  v6 = [(DOCItemStatusBadgeView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end