@interface PassthroughWindow
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithCoder:(id)coder;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithFrame:(CGRect)frame;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithWindowScene:(id)scene;
@end

@implementation PassthroughWindow

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithCoder:(id)coder
{
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow_isPointInside);
  eventCopy = event;
  selfCopy = self;
  v10 = v7(x, y);

  return v10 & 1;
}

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithWindowScene:(id)scene
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end