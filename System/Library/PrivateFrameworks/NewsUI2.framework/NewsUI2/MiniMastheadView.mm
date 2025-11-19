@interface MiniMastheadView
- (BOOL)accessibilityElementsHidden;
- (_TtC7NewsUI216MiniMastheadView)initWithCoder:(id)a3;
- (_TtC7NewsUI216MiniMastheadView)initWithFrame:(CGRect)a3;
- (void)setVerticalOffset:(double)a3;
@end

@implementation MiniMastheadView

- (_TtC7NewsUI216MiniMastheadView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MiniMastheadView *)&v12 initWithFrame:x, y, width, height];
  [(MiniMastheadView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView)];
  return v10;
}

- (_TtC7NewsUI216MiniMastheadView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (BOOL)accessibilityElementsHidden
{
  v2 = self;
  v3 = [(MiniMastheadView *)v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 traitCollection];
    v6 = [v5 horizontalSizeClass];

    return v6 == 1;
  }

  else
  {

    return 0;
  }
}

- (void)setVerticalOffset:(double)a3
{
  v4 = self;
  [(MiniMastheadView *)v4 transform];
  v6 = a3;
  [(MiniMastheadView *)v4 setTransform:&v5];
}

@end