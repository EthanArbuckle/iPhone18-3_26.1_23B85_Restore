@interface CCUIIconSubviewStretchable
- (CCUIIconSubviewStretchable)init;
- (CCUIIconSubviewStretchable)initWithIconView:(id)a3 subview:(id)a4;
- (void)applyStretchScale:(CGPoint)a3;
- (void)applyStretchTranslation:(CGVector)a3;
@end

@implementation CCUIIconSubviewStretchable

- (CCUIIconSubviewStretchable)initWithIconView:(id)a3 subview:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___CCUIIconSubviewStretchable_iconView) = a3;
  *(&self->super.isa + OBJC_IVAR___CCUIIconSubviewStretchable_subview) = a4;
  v8.receiver = self;
  v8.super_class = CCUIIconSubviewStretchable;
  v5 = a3;
  v6 = a4;
  return [(CCUIIconSubviewStretchable *)&v8 init];
}

- (void)applyStretchScale:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(CCUIIconSubviewStretchable *)v5 subview];
  [(UIView *)v6 transform];
  CGAffineTransformDecompose(&v7, &transform);
  transform.a = x;
  transform.b = y;
  *&transform.c = *&v7.c;
  *&transform.tx = *&v7.tx;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [(UIView *)v6 setTransform:&transform];
}

- (void)applyStretchTranslation:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  v5 = self;
  v6 = [(CCUIIconSubviewStretchable *)v5 subview];
  [(UIView *)v6 transform];
  CGAffineTransformDecompose(&v7, &transform);
  *&transform.a = *&v7.a;
  *&transform.c = *&v7.c;
  transform.tx = dx;
  transform.ty = dy;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [(UIView *)v6 setTransform:&transform];
}

- (CCUIIconSubviewStretchable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end