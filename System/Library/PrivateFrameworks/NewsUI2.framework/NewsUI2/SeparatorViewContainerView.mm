@interface SeparatorViewContainerView
- (_TtC7NewsUI226SeparatorViewContainerView)initWithCoder:(id)coder;
- (_TtC7NewsUI226SeparatorViewContainerView)initWithFrame:(CGRect)frame;
@end

@implementation SeparatorViewContainerView

- (_TtC7NewsUI226SeparatorViewContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(SeparatorViewContainerView *)&v12 initWithFrame:x, y, width, height];
  [(SeparatorViewContainerView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator)];
  return height;
}

- (_TtC7NewsUI226SeparatorViewContainerView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end