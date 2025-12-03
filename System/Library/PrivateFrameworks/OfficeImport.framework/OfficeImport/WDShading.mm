@interface WDShading
+ (id)autoBackgroundColor;
+ (id)autoForegroundColor;
+ (id)nilShading;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShading:(id)shading;
- (WDShading)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setShading:(id)shading;
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
    autoForegroundColor = [objc_opt_class() autoForegroundColor];
    mForegroundColor = v3->mForegroundColor;
    v3->mForegroundColor = autoForegroundColor;

    autoBackgroundColor = [objc_opt_class() autoBackgroundColor];
    mBackgroundColor = v3->mBackgroundColor;
    v3->mBackgroundColor = autoBackgroundColor;
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

- (BOOL)isEqualToShading:(id)shading
{
  shadingCopy = shading;
  if (self->mStyle == *(shadingCopy + 2) && ((mForegroundColor = self->mForegroundColor, mForegroundColor == shadingCopy[2]) || [(OITSUColor *)mForegroundColor isEqual:?]))
  {
    mBackgroundColor = self->mBackgroundColor;
    if (mBackgroundColor == shadingCopy[3])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(WDShading *)self isEqualToShading:v5];
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

- (void)setShading:(id)shading
{
  shadingCopy = shading;
  -[WDShading setStyle:](self, "setStyle:", [shadingCopy style]);
  foreground = [shadingCopy foreground];
  [(WDShading *)self setForeground:foreground];

  background = [shadingCopy background];
  [(WDShading *)self setBackground:background];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDShading allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    v4->mStyle = self->mStyle;
    mForegroundColor = self->mForegroundColor;
    autoForegroundColor = [objc_opt_class() autoForegroundColor];
    if (mForegroundColor == autoForegroundColor)
    {
      autoForegroundColor2 = [objc_opt_class() autoForegroundColor];
    }

    else
    {
      autoForegroundColor2 = [(OITSUColor *)self->mForegroundColor copy];
    }

    v9 = v5->mForegroundColor;
    v5->mForegroundColor = autoForegroundColor2;

    mBackgroundColor = self->mBackgroundColor;
    autoBackgroundColor = [objc_opt_class() autoBackgroundColor];
    if (mBackgroundColor == autoBackgroundColor)
    {
      autoBackgroundColor2 = [objc_opt_class() autoBackgroundColor];
    }

    else
    {
      autoBackgroundColor2 = [(OITSUColor *)self->mBackgroundColor copy];
    }

    v13 = v5->mBackgroundColor;
    v5->mBackgroundColor = autoBackgroundColor2;
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