@interface MiniMastheadView
- (BOOL)accessibilityElementsHidden;
- (_TtC7NewsUI216MiniMastheadView)initWithCoder:(id)coder;
- (_TtC7NewsUI216MiniMastheadView)initWithFrame:(CGRect)frame;
- (void)setVerticalOffset:(double)offset;
@end

@implementation MiniMastheadView

- (_TtC7NewsUI216MiniMastheadView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(MiniMastheadView *)&v12 initWithFrame:x, y, width, height];
  [(MiniMastheadView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView)];
  return height;
}

- (_TtC7NewsUI216MiniMastheadView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  window = [(MiniMastheadView *)selfCopy window];
  if (window)
  {
    v4 = window;
    traitCollection = [window traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    return horizontalSizeClass == 1;
  }

  else
  {

    return 0;
  }
}

- (void)setVerticalOffset:(double)offset
{
  selfCopy = self;
  [(MiniMastheadView *)selfCopy transform];
  offsetCopy = offset;
  [(MiniMastheadView *)selfCopy setTransform:&v5];
}

@end