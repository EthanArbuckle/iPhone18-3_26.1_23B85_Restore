@interface EllipticAttributes
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (_TtC17NanoControlCenter18EllipticAttributes)init;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation EllipticAttributes

- (CGRect)bounds
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);
  v4 = *(&self->bounds.origin.x + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);
  v5 = *(&self->bounds.origin.y + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);
  v6 = *(&self->bounds.size.width + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);

  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (self + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);
  *v8 = x;
  v8[1] = y;
  v8[2] = width;
  v8[3] = height;
}

- (CGPoint)center
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_center);
  v4 = *(&self->bounds.origin.x + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_center);

  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (self + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_center);
  *v6 = x;
  v6[1] = y;
}

- (CGAffineTransform)transform
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->bounds.size.height + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform);
  v6 = *(&self->center.x + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform);
  v8 = *(&self->bounds.origin.y + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform);

  *&retstr->a = v9;
  *&retstr->c = v8;
  retstr->tx = v5;
  retstr->ty = v6;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v7 = *&transform->c;
  v8 = *&transform->a;
  tx = transform->tx;
  ty = transform->ty;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = self + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform;
  *v6 = v8;
  *(v6 + 1) = v7;
  *(v6 + 4) = tx;
  *(v6 + 5) = ty;
}

- (_TtC17NanoControlCenter18EllipticAttributes)init
{
  ObjectType = swift_getObjectType();
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (self + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_bounds);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_center);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtC17NanoControlCenter18EllipticAttributes_transform);
  *v6 = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(EllipticAttributes *)&v9 init];

  return v7;
}

@end