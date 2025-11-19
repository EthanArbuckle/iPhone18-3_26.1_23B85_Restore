@interface MFPGraphicsContainer
- (CGAffineTransform)containerTransform;
- (MFPGraphicsContainer)initWithParentGraphicsState:(id)a3 containerTransform:(CGAffineTransform *)a4;
@end

@implementation MFPGraphicsContainer

- (MFPGraphicsContainer)initWithParentGraphicsState:(id)a3 containerTransform:(CGAffineTransform *)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MFPGraphicsContainer;
  v8 = [(MFPGraphicsContainer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mParentGraphicsState, a3);
    v10 = *&a4->a;
    v11 = *&a4->tx;
    *&v9->mContainerTransform.c = *&a4->c;
    *&v9->mContainerTransform.tx = v11;
    *&v9->mContainerTransform.a = v10;
    CurrentContext = UIGraphicsGetCurrentContext();
    v13 = *&v9->mContainerTransform.c;
    *&v15.a = *&v9->mContainerTransform.a;
    *&v15.c = v13;
    *&v15.tx = *&v9->mContainerTransform.tx;
    CGContextConcatCTM(CurrentContext, &v15);
  }

  return v9;
}

- (CGAffineTransform)containerTransform
{
  v3 = *&self->tx;
  *&retstr->a = *&self->c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].a;
  return self;
}

@end