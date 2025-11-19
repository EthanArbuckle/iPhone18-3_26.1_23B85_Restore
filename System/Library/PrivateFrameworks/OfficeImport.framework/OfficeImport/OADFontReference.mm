@interface OADFontReference
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)applyToParagraphProperties:(id)a3;
@end

@implementation OADFontReference

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[2] = self->mIndex;
  v6 = [(OADColor *)self->mColor copyWithZone:a3];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    if (self->mIndex == *(v7 + 2))
    {
      mColor = self->mColor;
      if (mColor == v7[2])
      {
        v6 = 1;
      }

      else
      {
        v6 = [(OADColor *)mColor isEqual:?];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyToParagraphProperties:(id)a3
{
  v10 = a3;
  mIndex = self->mIndex;
  if (mIndex)
  {
    if (mIndex != 1)
    {
      goto LABEL_15;
    }

    v5 = @"+mn-lt";
    v6 = @"+mn-ea";
    v7 = @"+mn-cs";
  }

  else
  {
    v5 = @"+mj-lt";
    v6 = @"+mj-ea";
    v7 = @"+mj-cs";
  }

  v8 = [v10 isMergedWithParent];
  [v10 setMergedWithParent:0];
  if (([v10 hasLatinFont] & 1) == 0)
  {
    [v10 setLatinFont:v5];
  }

  if (([v10 hasEastAsianFont] & 1) == 0)
  {
    [v10 setEastAsianFont:v6];
  }

  if (([v10 hasBidiFont] & 1) == 0)
  {
    [v10 setBidiFont:v7];
  }

  if (self->mColor && ([v10 hasFill] & 1) == 0)
  {
    v9 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v9 setColor:self->mColor];
    [v10 setFill:v9];
  }

  [v10 setMergedWithParent:v8];
LABEL_15:
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFontReference;
  v2 = [(OADFontReference *)&v4 description];

  return v2;
}

@end