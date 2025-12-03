@interface TagViewBadgeView
- (_TtC7NewsUI216TagViewBadgeView)initWithCoder:(id)coder;
- (_TtC7NewsUI216TagViewBadgeView)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TagViewBadgeView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21952C748(change);
}

- (_TtC7NewsUI216TagViewBadgeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TagViewBadgeView();
  return [(TagViewBadgeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7NewsUI216TagViewBadgeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TagViewBadgeView();
  coderCopy = coder;
  v5 = [(TagViewBadgeView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end