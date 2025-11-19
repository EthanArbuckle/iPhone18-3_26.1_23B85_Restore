@interface WDShading
+ (id)autoBackgroundColor;
+ (id)autoForegroundColor;
+ (id)nilShading;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShading:(id)a3;
- (WDShading)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setShading:(id)a3;
@end

@implementation WDShading

- (WDShading)init
{
  v9.receiver = self;
  v9.super_class = WDShading;
  v2 = [(WDShading *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->mStyle = 0;
    v4 = [objc_opt_class() autoForegroundColor];
    mForegroundColor = v3->mForegroundColor;
    v3->mForegroundColor = v4;

    v6 = [objc_opt_class() autoBackgroundColor];
    mBackgroundColor = v3->mBackgroundColor;
    v3->mBackgroundColor = v6;
  }

  return v3;
}

+ (id)autoForegroundColor
{
  {
    +[WDShading autoForegroundColor]::theColor = [[OITSUColor alloc] initWithWhite:0.0 alpha:1.0];
  }

  v2 = +[WDShading autoForegroundColor]::theColor;

  return v2;
}

+ (id)autoBackgroundColor
{
  {
    +[WDShading autoBackgroundColor]::theColor = [[OITSUColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  v2 = +[WDShading autoBackgroundColor]::theColor;

  return v2;
}

+ (id)nilShading
{
  v2 = +[WDShading nilShading]::theShading;
  if (!+[WDShading nilShading]::theShading)
  {
    v3 = objc_alloc_init(WDShading);
    v4 = +[WDShading nilShading]::theShading;
    +[WDShading nilShading]::theShading = v3;

    [+[WDShading nilShading]::theShading setStyle:0xFFFFLL];
    v2 = +[WDShading nilShading]::theShading;
  }

  return v2;
}

- (BOOL)isEqualToShading:(id)a3
{
  v4 = a3;
  if (self->mStyle == *(v4 + 2) && ((mForegroundColor = self->mForegroundColor, mForegroundColor == v4[2]) || [(OITSUColor *)mForegroundColor isEqual:?]))
  {
    mBackgroundColor = self->mBackgroundColor;
    if (mBackgroundColor == v4[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(OITSUColor *)mBackgroundColor isEqual:?];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(WDShading *)self isEqualToShading:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  mStyle = self->mStyle;
  v4.receiver = self;
  v4.super_class = WDShading;
  return [(WDShading *)&v4 hash]^ mStyle;
}

- (void)setShading:(id)a3
{
  v6 = a3;
  -[WDShading setStyle:](self, "setStyle:", [v6 style]);
  v4 = [v6 foreground];
  [(WDShading *)self setForeground:v4];

  v5 = [v6 background];
  [(WDShading *)self setBackground:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDShading allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->mStyle = self->mStyle;
    mForegroundColor = self->mForegroundColor;
    v7 = [objc_opt_class() autoForegroundColor];
    if (mForegroundColor == v7)
    {
      v8 = [objc_opt_class() autoForegroundColor];
    }

    else
    {
      v8 = [(OITSUColor *)self->mForegroundColor copy];
    }

    v9 = v5->mForegroundColor;
    v5->mForegroundColor = v8;

    mBackgroundColor = self->mBackgroundColor;
    v11 = [objc_opt_class() autoBackgroundColor];
    if (mBackgroundColor == v11)
    {
      v12 = [objc_opt_class() autoBackgroundColor];
    }

    else
    {
      v12 = [(OITSUColor *)self->mBackgroundColor copy];
    }

    v13 = v5->mBackgroundColor;
    v5->mBackgroundColor = v12;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDShading;
  v2 = [(WDShading *)&v4 description];

  return v2;
}

@end