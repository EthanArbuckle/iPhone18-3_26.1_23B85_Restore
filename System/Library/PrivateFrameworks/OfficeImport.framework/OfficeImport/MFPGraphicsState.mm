@interface MFPGraphicsState
- (CGAffineTransform)pageTransform;
- (CGAffineTransform)worldTransform;
- (MFPGraphicsState)initWithDefaults;
- (MFPGraphicsState)initWithGraphicsState:(id)state;
- (void)multiplyWorldTransformBy:(CGAffineTransform *)by order:(int)order;
- (void)removeTransform:(CGAffineTransform *)transform;
- (void)setPageTransform:(CGAffineTransform *)transform;
- (void)setWorldTransform:(CGAffineTransform *)transform;
@end

@implementation MFPGraphicsState

- (MFPGraphicsState)initWithDefaults
{
  v7.receiver = self;
  v7.super_class = MFPGraphicsState;
  result = [(MFPGraphicsState *)&v7 init];
  if (result)
  {
    v3 = MEMORY[0x277CBF2C0];
    v4 = *MEMORY[0x277CBF2C0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->mPageTransform.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&result->mPageTransform.c = v5;
    *&result->mPageTransform.a = v4;
    v6 = v3[1];
    *&result->mWorldTransform.a = *v3;
    *&result->mWorldTransform.c = v6;
    *&result->mWorldTransform.tx = v3[2];
  }

  return result;
}

- (MFPGraphicsState)initWithGraphicsState:(id)state
{
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = MFPGraphicsState;
  v5 = [(MFPGraphicsState *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = *(stateCopy + 8);
    v8 = *(stateCopy + 24);
    *(v5 + 40) = *(stateCopy + 40);
    *(v5 + 24) = v8;
    *(v5 + 8) = v7;
    v9 = *(stateCopy + 56);
    v10 = *(stateCopy + 72);
    *(v5 + 88) = *(stateCopy + 88);
    *(v5 + 72) = v10;
    *(v5 + 56) = v9;
  }

  return v6;
}

- (void)removeTransform:(CGAffineTransform *)transform
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = *&transform->c;
  *&v6.a = *&transform->a;
  *&v6.c = v5;
  *&v6.tx = *&transform->tx;
  CGAffineTransformInvert(&transform, &v6);
  CGContextConcatCTM(CurrentContext, &transform);
}

- (CGAffineTransform)pageTransform
{
  v3 = *&self->d;
  *&retstr->a = *&self->b;
  *&retstr->c = v3;
  *&retstr->tx = *&self->ty;
  return self;
}

- (void)setPageTransform:(CGAffineTransform *)transform
{
  v5 = *&self->mWorldTransform.c;
  *&v13.a = *&self->mWorldTransform.a;
  *&v13.c = v5;
  *&v13.tx = *&self->mWorldTransform.tx;
  [(MFPGraphicsState *)self removeTransform:&v13];
  v6 = *&self->mPageTransform.c;
  *&v13.a = *&self->mPageTransform.a;
  *&v13.c = v6;
  *&v13.tx = *&self->mPageTransform.tx;
  [(MFPGraphicsState *)self removeTransform:&v13];
  v7 = *&transform->a;
  v8 = *&transform->c;
  *&self->mPageTransform.tx = *&transform->tx;
  *&self->mPageTransform.c = v8;
  *&self->mPageTransform.a = v7;
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = *&self->mPageTransform.c;
  *&v13.a = *&self->mPageTransform.a;
  *&v13.c = v10;
  *&v13.tx = *&self->mPageTransform.tx;
  CGContextConcatCTM(CurrentContext, &v13);
  v11 = UIGraphicsGetCurrentContext();
  v12 = *&self->mWorldTransform.c;
  *&v13.a = *&self->mWorldTransform.a;
  *&v13.c = v12;
  *&v13.tx = *&self->mWorldTransform.tx;
  CGContextConcatCTM(v11, &v13);
}

- (CGAffineTransform)worldTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setWorldTransform:(CGAffineTransform *)transform
{
  v5 = *&self->mWorldTransform.c;
  *&v10.a = *&self->mWorldTransform.a;
  *&v10.c = v5;
  *&v10.tx = *&self->mWorldTransform.tx;
  [(MFPGraphicsState *)self removeTransform:&v10];
  v6 = *&transform->a;
  v7 = *&transform->c;
  *&self->mWorldTransform.tx = *&transform->tx;
  *&self->mWorldTransform.c = v7;
  *&self->mWorldTransform.a = v6;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = *&self->mWorldTransform.c;
  *&v10.a = *&self->mWorldTransform.a;
  *&v10.c = v9;
  *&v10.tx = *&self->mWorldTransform.tx;
  CGContextConcatCTM(CurrentContext, &v10);
}

- (void)multiplyWorldTransformBy:(CGAffineTransform *)by order:(int)order
{
  v7 = *&self->mWorldTransform.c;
  *&transform.a = *&self->mWorldTransform.a;
  *&transform.c = v7;
  *&transform.tx = *&self->mWorldTransform.tx;
  [(MFPGraphicsState *)self removeTransform:&transform];
  if (order)
  {
    v8 = *&self->mWorldTransform.c;
    *&t1.a = *&self->mWorldTransform.a;
    *&t1.c = v8;
    *&t1.tx = *&self->mWorldTransform.tx;
    v9 = *&by->c;
    *&v16.a = *&by->a;
    *&v16.c = v9;
    v10 = *&by->tx;
  }

  else
  {
    v11 = *&by->c;
    *&t1.a = *&by->a;
    *&t1.c = v11;
    *&t1.tx = *&by->tx;
    v12 = *&self->mWorldTransform.c;
    *&v16.a = *&self->mWorldTransform.a;
    *&v16.c = v12;
    v10 = *&self->mWorldTransform.tx;
  }

  *&v16.tx = v10;
  CGAffineTransformConcat(&transform, &t1, &v16);
  v13 = *&transform.c;
  *&self->mWorldTransform.a = *&transform.a;
  *&self->mWorldTransform.c = v13;
  *&self->mWorldTransform.tx = *&transform.tx;
  CurrentContext = UIGraphicsGetCurrentContext();
  v15 = *&self->mWorldTransform.c;
  *&transform.a = *&self->mWorldTransform.a;
  *&transform.c = v15;
  *&transform.tx = *&self->mWorldTransform.tx;
  CGContextConcatCTM(CurrentContext, &transform);
}

@end