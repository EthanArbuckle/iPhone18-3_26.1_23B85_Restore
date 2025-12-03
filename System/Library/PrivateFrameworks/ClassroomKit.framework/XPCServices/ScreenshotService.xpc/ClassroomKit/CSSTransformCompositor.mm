@interface CSSTransformCompositor
- (CGAffineTransform)composedTransform;
- (CSSTransformCompositor)init;
- (void)appendTransform:(CGAffineTransform *)transform;
@end

@implementation CSSTransformCompositor

- (CSSTransformCompositor)init
{
  v6.receiver = self;
  v6.super_class = CSSTransformCompositor;
  v2 = [(CSSTransformCompositor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transforms = v2->_transforms;
    v2->_transforms = v3;
  }

  return v2;
}

- (void)appendTransform:(CGAffineTransform *)transform
{
  transforms = [(CSSTransformCompositor *)self transforms];
  v5 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v5;
  v7[2] = *&transform->tx;
  v6 = [NSValue valueWithCGAffineTransform:v7];
  [transforms addObject:v6];
}

- (CGAffineTransform)composedTransform
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5010000000;
  v13 = "";
  v4 = *&CGAffineTransformIdentity.c;
  v14 = *&CGAffineTransformIdentity.a;
  v15 = v4;
  v16 = *&CGAffineTransformIdentity.tx;
  transforms = [(CSSTransformCompositor *)self transforms];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001EE8;
  v9[3] = &unk_10000C570;
  v9[4] = &v10;
  [transforms enumerateObjectsWithOptions:2 usingBlock:v9];

  v6 = v11;
  v7 = *(v11 + 3);
  *&retstr->a = *(v11 + 2);
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 4);
  _Block_object_dispose(&v10, 8);
  return result;
}

@end