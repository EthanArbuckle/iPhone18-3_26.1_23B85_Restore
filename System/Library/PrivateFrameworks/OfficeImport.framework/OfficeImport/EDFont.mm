@interface EDFont
+ (EDFont)fontWithResources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFont:(id)font;
- (EDFont)initWithResources:(id)resources;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setBold:(BOOL)bold;
- (void)setCharSet:(int)set;
- (void)setColor:(id)color;
- (void)setColorReference:(id)reference;
- (void)setFamily:(int)family;
- (void)setHeight:(double)height;
- (void)setItalic:(BOOL)italic;
- (void)setName:(id)name;
- (void)setOutline:(BOOL)outline;
- (void)setScript:(int)script;
- (void)setShadow:(BOOL)shadow;
- (void)setStrike:(BOOL)strike;
- (void)setUnderline:(int)underline;
- (void)setWeight:(unsigned int)weight;
@end

@implementation EDFont

- (EDFont)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = EDFont;
  v5 = [(EDFont *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    *&v6->mUnderline = 0;
    v6->mOutline = 0;
    v6->mHeightInTwips = 200.0;
    *&v6->mCharSet = 0;
    *&v6->mWeight = 400;
    *&v6->mUnderlineOverridden = 0;
    *&v6->mWeightOverridden = 0;
    mName = v6->mName;
    v6->mName = @"Verdana";

    v6->mDoNotModify = 0;
  }

  return v6;
}

+ (EDFont)fontWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v7 = [v5 initWithResources:WeakRetained];

  if (v7)
  {
    v8 = [(NSString *)self->mName copyWithZone:zone];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;

    v10 = [(EDColorReference *)self->mColorReference copyWithZone:zone];
    v11 = *(v7 + 24);
    *(v7 + 24) = v10;

    *(v7 + 32) = *&self->mUnderline;
    *(v7 + 40) = self->mHeightInTwips;
    *(v7 + 48) = self->mCharSet;
    *(v7 + 52) = self->mFamily;
    *(v7 + 56) = self->mWeight;
    *(v7 + 60) = self->mBold;
    *(v7 + 61) = self->mItalic;
    *(v7 + 62) = self->mShadow;
    *(v7 + 63) = self->mStrike;
    *(v7 + 64) = self->mOutline;
    *(v7 + 65) = self->mUnderlineOverridden;
    *(v7 + 66) = self->mStrikeOverridden;
    *(v7 + 67) = self->mBoldOverridden;
    *(v7 + 68) = self->mWeightOverridden;
    *(v7 + 69) = self->mItalicOverridden;
    *(v7 + 70) = self->mHeightOverridden;
    *(v7 + 71) = self->mNameOverridden;
    *(v7 + 72) = 0;
    v12 = v7;
  }

  return v7;
}

- (BOOL)isEqualToFont:(id)font
{
  fontCopy = font;
  mName = self->mName;
  v7 = (mName == fontCopy[2] || [(NSString *)mName isEqual:?]) && ((mColorReference = self->mColorReference, mColorReference == fontCopy[3]) || [(EDColorReference *)mColorReference isEqual:?]) && self->mBold == *(fontCopy + 60) && self->mItalic == *(fontCopy + 61) && self->mShadow == *(fontCopy + 62) && self->mStrike == *(fontCopy + 63) && self->mOutline == *(fontCopy + 64) && self->mUnderline == *(fontCopy + 8) && self->mScript == *(fontCopy + 9) && self->mHeightInTwips == *(fontCopy + 5) && self->mCharSet == *(fontCopy + 12) && self->mFamily == *(fontCopy + 13) && self->mWeight == *(fontCopy + 14) && self->mUnderlineOverridden == *(fontCopy + 65) && self->mStrikeOverridden == *(fontCopy + 66) && self->mBoldOverridden == *(fontCopy + 67) && self->mItalicOverridden == *(fontCopy + 69) && self->mWeightOverridden == *(fontCopy + 68) && self->mNameOverridden == *(fontCopy + 71);

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDFont *)self isEqualToFont:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  mHeightInTwips = self->mHeightInTwips;
  v4 = [(NSString *)self->mName hash];
  return v4 ^ [(EDColorReference *)self->mColorReference hash]^ mHeightInTwips;
}

- (void)setScript:(int)script
{
  if (!self->mDoNotModify)
  {
    self->mScript = script;
  }
}

- (void)setUnderline:(int)underline
{
  if (!self->mDoNotModify)
  {
    self->mUnderline = underline;
    self->mUnderlineOverridden = 1;
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (!self->mDoNotModify && self->mName != nameCopy)
  {
    self->mNameOverridden = 1;
    v6 = nameCopy;
    objc_storeStrong(&self->mName, name);
    nameCopy = v6;
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (!self->mDoNotModify)
  {
    v9 = colorCopy;
    v5 = [EDColorReference alloc];
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v7 = [(EDColorReference *)v5 initWithColor:v9 resources:WeakRetained];
    mColorReference = self->mColorReference;
    self->mColorReference = v7;

    colorCopy = v9;
  }
}

- (void)setBold:(BOOL)bold
{
  if (!self->mDoNotModify)
  {
    self->mBold = bold;
    self->mBoldOverridden = 1;
  }
}

- (void)setItalic:(BOOL)italic
{
  if (!self->mDoNotModify)
  {
    self->mItalic = italic;
    self->mItalicOverridden = 1;
  }
}

- (void)setShadow:(BOOL)shadow
{
  if (!self->mDoNotModify)
  {
    self->mShadow = shadow;
  }
}

- (void)setOutline:(BOOL)outline
{
  if (!self->mDoNotModify)
  {
    self->mOutline = outline;
  }
}

- (void)setStrike:(BOOL)strike
{
  if (!self->mDoNotModify)
  {
    self->mStrike = strike;
    self->mStrikeOverridden = 1;
  }
}

- (void)setHeight:(double)height
{
  if (!self->mDoNotModify)
  {
    self->mHeightInTwips = height;
    self->mHeightOverridden = 1;
  }
}

- (void)setCharSet:(int)set
{
  if (!self->mDoNotModify)
  {
    self->mCharSet = set;
  }
}

- (void)setFamily:(int)family
{
  if (!self->mDoNotModify)
  {
    self->mFamily = family;
  }
}

- (void)setWeight:(unsigned int)weight
{
  if (!self->mDoNotModify)
  {
    self->mWeight = weight;
    self->mWeightOverridden = 1;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDFont;
  v2 = [(EDFont *)&v4 description];

  return v2;
}

- (void)setColorReference:(id)reference
{
  referenceCopy = reference;
  if (!self->mDoNotModify)
  {
    mColorReference = self->mColorReference;
    p_mColorReference = &self->mColorReference;
    if (mColorReference != referenceCopy)
    {
      v8 = referenceCopy;
      objc_storeStrong(p_mColorReference, reference);
      referenceCopy = v8;
    }
  }
}

@end