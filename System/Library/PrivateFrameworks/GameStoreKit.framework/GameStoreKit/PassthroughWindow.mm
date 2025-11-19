@interface PassthroughWindow
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithCoder:(id)a3;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithFrame:(CGRect)a3;
- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithWindowScene:(id)a3;
@end

@implementation PassthroughWindow

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithCoder:(id)a3
{
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow_isPointInside);
  v8 = a4;
  v9 = self;
  v10 = v7(x, y);

  return v10 & 1;
}

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithWindowScene:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKitP33_4F054BC24576EBD4098B1DFE752E0D7C17PassthroughWindow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end