@interface EQKitLayoutImplementation
- (BOOL)layoutWithContext:(id)a3;
- (CGRect)erasableBounds;
- (CGSize)naturalSize;
- (EQKitLayoutImplementation)initWithRoot:(id)a3 environment:(id)a4;
- (NSString)description;
- (double)depth;
- (double)height;
- (double)vsize;
- (id)rootInspectable;
- (id)selectionForPoint:(CGPoint)a3;
- (void)dealloc;
- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4;
@end

@implementation EQKitLayoutImplementation

- (EQKitLayoutImplementation)initWithRoot:(id)a3 environment:(id)a4
{
  v8.receiver = self;
  v8.super_class = EQKitLayoutImplementation;
  v6 = [(EQKitLayoutImplementation *)&v8 init];
  if (v6)
  {
    v6->mRoot = a3;
    v6->mEnvironment = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayoutImplementation;
  [(EQKitLayoutImplementation *)&v3 dealloc];
}

- (BOOL)layoutWithContext:(id)a3
{
  self->mBox = 0;
  self->mScale = 1.0;
  if (a3)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return self->mBox != 0;
    }

    v5 = [(EQKitRootNode *)self->mRoot attributeCollection];
    if (!v5)
    {
      return self->mBox != 0;
    }

    [(EQKitEnvironment *)self->mEnvironment beginLayout];
    EQKitLayoutManager::EQKitLayoutManager(v31, a3, self->mEnvironment, v5);
    mBox = EQKitLayoutManager::layoutExpression(v31, self->mRoot, &self->mAscent, &self->mDescent, &self->mLeading, &self->mNaturalAlignmentOffset, &self->mSingleLineHeight);
    self->mBox = mBox;
    if (self->mSingleLineHeight)
    {
      v7 = self->mAscent + self->mDescent;
    }

    else
    {
      [(EQKitBox *)mBox height];
      v9 = v8;
      mLeading = self->mLeading;
      mAscent = self->mAscent;
      [(EQKitBox *)self->mBox depth];
      v13 = v9 + mLeading * 0.5;
      if (v13 < mAscent)
      {
        v13 = mAscent;
      }

      mDescent = v12 + self->mLeading * 0.5;
      if (mDescent < self->mDescent)
      {
        mDescent = self->mDescent;
      }

      v7 = v13 + mDescent;
      mBox = self->mBox;
    }

    [(EQKitBox *)mBox width];
    if (v15 > 0.0 && v7 > 0.0)
    {
      [a3 targetSize];
      v18 = v17;
      if (v17 <= 0.0 || (v19 = v16, v16 <= 0.0))
      {
        [a3 containerSize];
        v26 = v25;
        if (v25 <= 0.0)
        {
          goto LABEL_20;
        }

        v27 = v24;
        if (v24 <= 0.0)
        {
          goto LABEL_20;
        }

        [(EQKitBox *)self->mBox width];
        *&v28 = v26 / v28;
        v21 = fminf(*&v28, 1.0);
        v23 = v27 / v7;
      }

      else
      {
        [(EQKitBox *)self->mBox erasableBounds];
        v21 = v18 / v20;
        v23 = v19 / v22;
      }

      v29 = v23;
      self->mScale = fminf(v21, v29);
    }

LABEL_20:
    [(EQKitEnvironment *)self->mEnvironment endLayout];
    EQKitLayoutManager::~EQKitLayoutManager(v31);
    return self->mBox != 0;
  }

  return 0;
}

- (double)height
{
  if (self->mSingleLineHeight)
  {
    return self->mAscent * self->mScale;
  }

  [(EQKitBox *)self->mBox height];
  mAscent = v4 + self->mLeading * 0.5;
  if (mAscent < self->mAscent)
  {
    mAscent = self->mAscent;
  }

  return self->mScale * mAscent;
}

- (double)depth
{
  if (self->mSingleLineHeight)
  {
    return self->mDescent * self->mScale;
  }

  [(EQKitBox *)self->mBox depth];
  mDescent = v4 + self->mLeading * 0.5;
  if (mDescent < self->mDescent)
  {
    mDescent = self->mDescent;
  }

  return self->mScale * mDescent;
}

- (double)vsize
{
  [(EQKitLayoutImplementation *)self height];
  v4 = v3;
  [(EQKitLayoutImplementation *)self depth];
  return v4 + v5;
}

- (CGRect)erasableBounds
{
  mBox = self->mBox;
  if (mBox)
  {
    [(EQKitBox *)mBox erasableBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    CGAffineTransformMakeScale(&v12, self->mScale, self->mScale);
    v13.origin.x = v5;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    return CGRectApplyAffineTransform(v13, &v12);
  }

  else
  {
    return **&MEMORY[0x277CBF3A0];
  }
}

- (id)selectionForPoint:(CGPoint)a3
{
  result = [(EQKitBox *)self->mBox hitTest:a3.x, a3.y];
  if (result)
  {
    v4 = result;
    v5 = [EQKitSelection alloc];

    return [(EQKitSelection *)v5 initWithBox:v4];
  }

  return result;
}

- (CGSize)naturalSize
{
  [(EQKitLayoutImplementation *)self erasableBounds];
  v4 = v3;
  v6 = v5;
  [(EQKitLayoutImplementation *)self width];
  if (v7 >= v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  [(EQKitLayoutImplementation *)self height];
  v10 = v9;
  [(EQKitLayoutImplementation *)self depth];
  v12 = v10 + v11;
  if (v12 >= v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  v14 = v8 + 2.0;
  v15 = v13 + 2.0;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)renderIntoContext:(id)a3 offset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [a3 cgContext];
  CGContextSaveGState(v6);
  CGContextScaleCTM(v6, self->mScale, self->mScale);
  CGAffineTransformMakeScale(&v9, 1.0 / self->mScale, 1.0 / self->mScale);
  [(EQKitBox *)self->mBox renderIntoContext:a3 offset:vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x))];
  CGContextRestoreGState(v6);
}

- (id)rootInspectable
{
  v3 = [_EQKitInspectableBox alloc];
  mBox = self->mBox;

  return [(_EQKitInspectableBox *)v3 initWithBox:mBox];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p box=%@>", NSStringFromClass(v4), self, self->mBox];
}

@end