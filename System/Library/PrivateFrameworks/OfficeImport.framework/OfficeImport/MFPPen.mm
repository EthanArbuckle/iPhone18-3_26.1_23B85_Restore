@interface MFPPen
- (CGAffineTransform)transform;
- (MFPPen)init;
- (void)applyDashCapToPath:(id)a3;
- (void)applyDashPatternToPath:(id)a3;
- (void)applyLineCapToPath:(id)a3;
- (void)applyLineJoinToPath:(id)a3;
- (void)dealloc;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)strokePath:(id)a3;
@end

@implementation MFPPen

- (MFPPen)init
{
  v6.receiver = self;
  v6.super_class = MFPPen;
  result = [(MFPPen *)&v6 init];
  if (result)
  {
    v3 = MEMORY[0x277CBF2C0];
    result->mWidth = 1.0;
    v5 = v3[1];
    v4 = v3[2];
    *&result->mTransform.a = *v3;
    *&result->mTransform.c = v5;
    *&result->mTransform.tx = v4;
    *&result->mStartCap = 0;
    *&result->mLineJoin = 0x4120000000000000;
    *&result->mDashStyle = 0;
  }

  return result;
}

- (void)dealloc
{
  mDashPattern = self->mDashPattern;
  if (mDashPattern)
  {
    MEMORY[0x25F896FE0](mDashPattern, 0x1000C8052888210);
  }

  mCompoundArray = self->mCompoundArray;
  if (mCompoundArray)
  {
    MEMORY[0x25F896FE0](mCompoundArray, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = MFPPen;
  [(MFPPen *)&v5 dealloc];
}

- (CGAffineTransform)transform
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->mTransform.tx = *&a3->tx;
  *&self->mTransform.c = v4;
  *&self->mTransform.a = v3;
}

- (void)applyDashPatternToPath:(id)a3
{
  v9 = a3;
  v4 = 0;
  v5 = 0;
  mDashStyle = self->mDashStyle;
  if (mDashStyle > 2)
  {
    switch(mDashStyle)
    {
      case 3:
        v5 = &[MFPPen applyDashPatternToPath:]::dashDotPattern;
        break;
      case 4:
        v5 = &[MFPPen applyDashPatternToPath:]::dashDotDotPattern;
        break;
      case 5:
        [(MFPPen *)self setDashPattern:self->mDashPattern count:self->mDashPatternCount toPath:v9];
        goto LABEL_18;
      default:
        goto LABEL_15;
    }

LABEL_13:
    LODWORD(v4) = -1;
    v7 = v5;
    do
    {
      v8 = *v7++;
      v4 = (v4 + 1);
    }

    while (v8 != -1.0);
    goto LABEL_15;
  }

  switch(mDashStyle)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = &[MFPPen applyDashPatternToPath:]::dashPattern;
      goto LABEL_13;
    case 2:
      v5 = &[MFPPen applyDashPatternToPath:]::dotPattern;
      goto LABEL_13;
  }

LABEL_15:
  if (self->mDashCap)
  {
    operator new[]();
  }

  [(MFPPen *)self setDashPattern:v5 count:v4 toPath:v9];
LABEL_18:
}

- (void)applyLineJoinToPath:(id)a3
{
  v4 = a3;
  mLineJoin = self->mLineJoin;
  if (mLineJoin == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (mLineJoin == 1);
  }

  v7 = v4;
  [v4 setLineJoinStyle:v6];
  [v7 setMiterLimit:self->mMiterLimit];
}

- (void)applyLineCapToPath:(id)a3
{
  v4 = a3;
  mStartCap = self->mStartCap;
  v6 = 1;
  if (mStartCap <= 16)
  {
    if (mStartCap > 1)
    {
      if (mStartCap == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (mStartCap != 1)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v6 = 2;
    goto LABEL_13;
  }

  if (mStartCap > 18)
  {
    goto LABEL_11;
  }

  if (mStartCap == 17)
  {
    goto LABEL_12;
  }

LABEL_13:
  v7 = v4;
  [v4 setLineCapStyle:v6];
}

- (void)applyDashCapToPath:(id)a3
{
  v4 = a3;
  mDashCap = self->mDashCap;
  if (mDashCap > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_25D6FDB60[mDashCap];
  }

  v7 = v4;
  [v4 setLineCapStyle:v6];
}

- (void)strokePath:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->mDashStyle)
  {
    [(MFPPen *)self applyDashCapToPath:v4];
  }

  else
  {
    [(MFPPen *)self applyLineCapToPath:v4];
  }

  [(MFPPen *)self applyLineJoinToPath:v8];
  [(MFPPen *)self applyDashPatternToPath:v8];
  v5 = [(MFPPen *)self brush];
  v6 = [v5 color];
  [v6 set];
  [(MFPPen *)self width];
  [v8 setLineWidth:v7];
  [v8 stroke];
}

@end