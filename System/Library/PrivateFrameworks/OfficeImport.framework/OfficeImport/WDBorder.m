@interface WDBorder
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBorder:(id)a3;
- (WDBorder)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setBorder:(id)a3;
- (void)setNullBorder;
- (void)setSingleBlackBorder;
@end

@implementation WDBorder

- (WDBorder)init
{
  v6.receiver = self;
  v6.super_class = WDBorder;
  v2 = [(WDBorder *)&v6 init];
  if (v2)
  {
    v3 = +[OITSUColor clearColor];
    mColor = v2->mColor;
    v2->mColor = v3;
  }

  return v2;
}

- (BOOL)isEqualToBorder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mStyle == *(v4 + 2) && self->mWidth == *(v4 + 24) && self->mSpace == *(v4 + 25) && self->mShadow == *(v4 + 26) && self->mFrame == *(v4 + 27))
  {
    mColor = self->mColor;
    if (mColor == v5[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(OITSUColor *)mColor isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(WDBorder *)self isEqualToBorder:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = (self->mStyle << 16) | (self->mWidth << 8);
  mSpace = self->mSpace;
  v5.receiver = self;
  v5.super_class = WDBorder;
  return ([(WDBorder *)&v5 hash]^ mSpace) + v2;
}

- (void)setBorder:(id)a3
{
  v5 = a3;
  -[WDBorder setStyle:](self, "setStyle:", [v5 style]);
  v4 = [v5 color];
  [(WDBorder *)self setColor:v4];

  -[WDBorder setWidth:](self, "setWidth:", [v5 width]);
  -[WDBorder setSpace:](self, "setSpace:", [v5 space]);
  -[WDBorder setShadow:](self, "setShadow:", [v5 shadow]);
  -[WDBorder setFrame:](self, "setFrame:", [v5 frame]);
}

- (void)setNullBorder
{
  [(WDBorder *)self setStyle:0];
  v3 = +[OITSUColor clearColor];
  [(WDBorder *)self setColor:v3];

  [(WDBorder *)self setWidth:0];
  [(WDBorder *)self setSpace:0];
  [(WDBorder *)self setShadow:0];

  [(WDBorder *)self setFrame:0];
}

- (void)setSingleBlackBorder
{
  [(WDBorder *)self setStyle:1];
  v3 = +[OITSUColor blackColor];
  [(WDBorder *)self setColor:v3];

  [(WDBorder *)self setWidth:1];
  [(WDBorder *)self setSpace:0];
  [(WDBorder *)self setShadow:0];

  [(WDBorder *)self setFrame:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDBorder allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->mStyle = self->mStyle;
    v6 = [(OITSUColor *)self->mColor copy];
    mColor = v5->mColor;
    v5->mColor = v6;

    v5->mWidth = self->mWidth;
    v5->mSpace = self->mSpace;
    v5->mShadow = self->mShadow;
    v5->mFrame = self->mFrame;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDBorder;
  v2 = [(WDBorder *)&v4 description];

  return v2;
}

@end