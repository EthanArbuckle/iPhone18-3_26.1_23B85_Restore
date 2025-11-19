@interface SeparatorViewContainerView
- (_TtC7NewsUI226SeparatorViewContainerView)initWithCoder:(id)a3;
- (_TtC7NewsUI226SeparatorViewContainerView)initWithFrame:(CGRect)a3;
@end

@implementation SeparatorViewContainerView

- (_TtC7NewsUI226SeparatorViewContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(SeparatorViewContainerView *)&v12 initWithFrame:x, y, width, height];
  [(SeparatorViewContainerView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator)];
  return v10;
}

- (_TtC7NewsUI226SeparatorViewContainerView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7NewsUI226SeparatorViewContainerView_separator;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end