@interface OADFontReference
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)applyToParagraphProperties:(id)properties;
@end

@implementation OADFontReference

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[2] = self->mIndex;
  v6 = [(OADColor *)self->mColor copyWithZone:zone];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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

- (void)applyToParagraphProperties:(id)properties
{
  propertiesCopy = properties;
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

  isMergedWithParent = [propertiesCopy isMergedWithParent];
  [propertiesCopy setMergedWithParent:0];
  if (([propertiesCopy hasLatinFont] & 1) == 0)
  {
    [propertiesCopy setLatinFont:v5];
  }

  if (([propertiesCopy hasEastAsianFont] & 1) == 0)
  {
    [propertiesCopy setEastAsianFont:v6];
  }

  if (([propertiesCopy hasBidiFont] & 1) == 0)
  {
    [propertiesCopy setBidiFont:v7];
  }

  if (self->mColor && ([propertiesCopy hasFill] & 1) == 0)
  {
    v9 = objc_alloc_init(OADSolidFill);
    [(OADSolidFill *)v9 setColor:self->mColor];
    [propertiesCopy setFill:v9];
  }

  [propertiesCopy setMergedWithParent:isMergedWithParent];
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