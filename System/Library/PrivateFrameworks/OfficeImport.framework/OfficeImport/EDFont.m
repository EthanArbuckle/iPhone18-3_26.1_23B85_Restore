@interface EDFont
+ (EDFont)fontWithResources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFont:(id)a3;
- (EDFont)initWithResources:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)setBold:(BOOL)a3;
- (void)setCharSet:(int)a3;
- (void)setColor:(id)a3;
- (void)setColorReference:(id)a3;
- (void)setFamily:(int)a3;
- (void)setHeight:(double)a3;
- (void)setItalic:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setOutline:(BOOL)a3;
- (void)setScript:(int)a3;
- (void)setShadow:(BOOL)a3;
- (void)setStrike:(BOOL)a3;
- (void)setUnderline:(int)a3;
- (void)setWeight:(unsigned int)a3;
@end

@implementation EDFont

- (EDFont)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDFont;
  v5 = [(EDFont *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
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

+ (EDFont)fontWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v7 = [v5 initWithResources:WeakRetained];

  if (v7)
  {
    v8 = [(NSString *)self->mName copyWithZone:a3];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;

    v10 = [(EDColorReference *)self->mColorReference copyWithZone:a3];
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

- (BOOL)isEqualToFont:(id)a3
{
  v4 = a3;
  mName = self->mName;
  v7 = (mName == v4[2] || [(NSString *)mName isEqual:?]) && ((mColorReference = self->mColorReference, mColorReference == v4[3]) || [(EDColorReference *)mColorReference isEqual:?]) && self->mBold == *(v4 + 60) && self->mItalic == *(v4 + 61) && self->mShadow == *(v4 + 62) && self->mStrike == *(v4 + 63) && self->mOutline == *(v4 + 64) && self->mUnderline == *(v4 + 8) && self->mScript == *(v4 + 9) && self->mHeightInTwips == *(v4 + 5) && self->mCharSet == *(v4 + 12) && self->mFamily == *(v4 + 13) && self->mWeight == *(v4 + 14) && self->mUnderlineOverridden == *(v4 + 65) && self->mStrikeOverridden == *(v4 + 66) && self->mBoldOverridden == *(v4 + 67) && self->mItalicOverridden == *(v4 + 69) && self->mWeightOverridden == *(v4 + 68) && self->mNameOverridden == *(v4 + 71);

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDFont *)self isEqualToFont:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  mHeightInTwips = self->mHeightInTwips;
  v4 = [(NSString *)self->mName hash];
  return v4 ^ [(EDColorReference *)self->mColorReference hash]^ mHeightInTwips;
}

- (void)setScript:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mScript = a3;
  }
}

- (void)setUnderline:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mUnderline = a3;
    self->mUnderlineOverridden = 1;
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  if (!self->mDoNotModify && self->mName != v5)
  {
    self->mNameOverridden = 1;
    v6 = v5;
    objc_storeStrong(&self->mName, a3);
    v5 = v6;
  }
}

- (void)setColor:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v9 = v4;
    v5 = [EDColorReference alloc];
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v7 = [(EDColorReference *)v5 initWithColor:v9 resources:WeakRetained];
    mColorReference = self->mColorReference;
    self->mColorReference = v7;

    v4 = v9;
  }
}

- (void)setBold:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mBold = a3;
    self->mBoldOverridden = 1;
  }
}

- (void)setItalic:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mItalic = a3;
    self->mItalicOverridden = 1;
  }
}

- (void)setShadow:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mShadow = a3;
  }
}

- (void)setOutline:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mOutline = a3;
  }
}

- (void)setStrike:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mStrike = a3;
    self->mStrikeOverridden = 1;
  }
}

- (void)setHeight:(double)a3
{
  if (!self->mDoNotModify)
  {
    self->mHeightInTwips = a3;
    self->mHeightOverridden = 1;
  }
}

- (void)setCharSet:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mCharSet = a3;
  }
}

- (void)setFamily:(int)a3
{
  if (!self->mDoNotModify)
  {
    self->mFamily = a3;
  }
}

- (void)setWeight:(unsigned int)a3
{
  if (!self->mDoNotModify)
  {
    self->mWeight = a3;
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

- (void)setColorReference:(id)a3
{
  v5 = a3;
  if (!self->mDoNotModify)
  {
    mColorReference = self->mColorReference;
    p_mColorReference = &self->mColorReference;
    if (mColorReference != v5)
    {
      v8 = v5;
      objc_storeStrong(p_mColorReference, a3);
      v5 = v8;
    }
  }
}

@end