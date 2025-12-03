@interface CCUIIconSubviewStretchable
- (CCUIIconSubviewStretchable)init;
- (CCUIIconSubviewStretchable)initWithIconView:(id)view subview:(id)subview;
- (void)applyStretchScale:(CGPoint)scale;
- (void)applyStretchTranslation:(CGVector)translation;
@end

@implementation CCUIIconSubviewStretchable

- (CCUIIconSubviewStretchable)initWithIconView:(id)view subview:(id)subview
{
  *(&self->super.isa + OBJC_IVAR___CCUIIconSubviewStretchable_iconView) = view;
  *(&self->super.isa + OBJC_IVAR___CCUIIconSubviewStretchable_subview) = subview;
  v8.receiver = self;
  v8.super_class = CCUIIconSubviewStretchable;
  viewCopy = view;
  subviewCopy = subview;
  return [(CCUIIconSubviewStretchable *)&v8 init];
}

- (void)applyStretchScale:(CGPoint)scale
{
  y = scale.y;
  x = scale.x;
  selfCopy = self;
  subview = [(CCUIIconSubviewStretchable *)selfCopy subview];
  [(UIView *)subview transform];
  CGAffineTransformDecompose(&v7, &transform);
  transform.a = x;
  transform.b = y;
  *&transform.c = *&v7.c;
  *&transform.tx = *&v7.tx;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [(UIView *)subview setTransform:&transform];
}

- (void)applyStretchTranslation:(CGVector)translation
{
  dy = translation.dy;
  dx = translation.dx;
  selfCopy = self;
  subview = [(CCUIIconSubviewStretchable *)selfCopy subview];
  [(UIView *)subview transform];
  CGAffineTransformDecompose(&v7, &transform);
  *&transform.a = *&v7.a;
  *&transform.c = *&v7.c;
  transform.tx = dx;
  transform.ty = dy;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [(UIView *)subview setTransform:&transform];
}

- (CCUIIconSubviewStretchable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end