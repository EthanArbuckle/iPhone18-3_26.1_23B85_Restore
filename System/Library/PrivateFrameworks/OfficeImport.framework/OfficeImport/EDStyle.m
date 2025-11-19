@interface EDStyle
+ (id)styleWithResources:(id)a3;
- (BOOL)isCenterAcrossAligned;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStyle:(id)a3;
- (BOOL)isEquivalentToStyle:(id)a3;
- (EDAlignmentInfo)alignmentInfo;
- (EDBorders)borders;
- (EDContentFormat)contentFormat;
- (EDFill)fill;
- (EDFont)font;
- (EDStyle)initWithResources:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parent;
- (void)setAlignmentInfo:(id)a3;
- (void)setAlignmentInfoIndex:(unint64_t)a3;
- (void)setAlignmentInfoOverridden:(BOOL)a3;
- (void)setBorders:(id)a3;
- (void)setBordersIndex:(unint64_t)a3;
- (void)setBordersOverridden:(BOOL)a3;
- (void)setContentFormat:(id)a3;
- (void)setContentFormatId:(unint64_t)a3;
- (void)setContentFormatOverridden:(BOOL)a3;
- (void)setFill:(id)a3;
- (void)setFillIndex:(unint64_t)a3;
- (void)setFillOverridden:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setFontIndex:(unint64_t)a3;
- (void)setFontOverridden:(BOOL)a3;
- (void)setParent:(id)a3;
- (void)setParentIndex:(unint64_t)a3;
- (void)setProtection:(id)a3;
- (void)setProtectionOverridden:(BOOL)a3;
@end

@implementation EDStyle

- (EDFont)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];

  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (EDFill)fill
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fills];

  v5 = [v4 objectAtIndex:self->mFillIndex];

  return v5;
}

- (EDAlignmentInfo)alignmentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained alignmentInfos];

  v5 = [v4 objectAtIndex:self->mAlignmentInfoIndex];

  return v5;
}

- (EDBorders)borders
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained borders];

  v5 = [v4 objectAtIndex:self->mBordersIndex];

  return v5;
}

- (EDContentFormat)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained contentFormats];

  v5 = [v4 objectWithKey:self->mContentFormatId];

  return v5;
}

- (EDStyle)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDStyle;
  v5 = [(EDStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v6->mParentIndex = xmmword_25D6FE620;
    *&v6->mFontIndex = v7;
    *&v6->mAlignmentInfoIndex = v7;
    v6->mIndex = -1;
    *&v6->mContentFormatOverridden = 0;
    *&v6->mFillApplied = 0;
  }

  return v6;
}

+ (id)styleWithResources:(id)a3
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
    *(v7 + 16) = self->mParentIndex;
    *(v7 + 24) = self->mContentFormatId;
    *(v7 + 32) = self->mFontIndex;
    *(v7 + 40) = self->mFillIndex;
    *(v7 + 48) = self->mAlignmentInfoIndex;
    *(v7 + 56) = self->mBordersIndex;
    v8 = [(EDProtection *)self->mProtection copyWithZone:a3];
    v9 = *(v7 + 64);
    *(v7 + 64) = v8;

    *(v7 + 72) = self->mIndex;
    *(v7 + 80) = self->mContentFormatOverridden;
    *(v7 + 82) = self->mFontOverridden;
    *(v7 + 84) = self->mFillOverridden;
    *(v7 + 86) = self->mAlignmentInfoOverridden;
    *(v7 + 88) = self->mBordersOverridden;
    *(v7 + 90) = self->mProtectionOverridden;
    *(v7 + 83) = self->mFontApplied;
    *(v7 + 85) = self->mFillApplied;
    *(v7 + 87) = self->mAlignmentInfoApplied;
    *(v7 + 89) = self->mBordersApplied;
    *(v7 + 81) = self->mContentFormatApplied;
    *(v7 + 91) = self->mProtectionApplied;
    *(v7 + 92) = 0;
    v10 = v7;
  }

  return v7;
}

- (BOOL)isEquivalentToStyle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->mContentFormatId == *(v4 + 24) && self->mFillIndex == *(v4 + 5) && self->mBordersIndex == *(v4 + 7) && self->mAlignmentInfoIndex == *(v4 + 6))
  {
    mProtection = self->mProtection;
    if (mProtection == v5[8])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(EDProtection *)mProtection isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->mContentFormatOverridden == v4[80] && self->mFontOverridden == v4[82] && self->mFillOverridden == v4[84] && self->mAlignmentInfoOverridden == v4[86] && self->mBordersOverridden == v4[88] && self->mProtectionOverridden == v4[90] && self->mParentIndex == *(v4 + 2) && [(EDStyle *)self isEquivalentToStyle:v4];

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDStyle *)self isEqualToStyle:v5];
  }

  return v6;
}

- (void)setContentFormatOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mContentFormatOverridden = a3;
  }
}

- (void)setContentFormat:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    *&self->mContentFormatOverridden = 257;
    v9 = v4;
    v5 = [v4 formatId];
    if (v5 == -1)
    {
      WeakRetained = objc_loadWeakRetained(&self->mResources);
      v7 = [WeakRetained contentFormats];

      v8 = [v7 objectAtIndex:{objc_msgSend(v7, "addOrEquivalentObject:", v9)}];
      self->mContentFormatId = [v8 formatId];
    }

    else
    {
      self->mContentFormatId = v5;
    }

    v4 = v9;
  }
}

- (void)setFontOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mFontOverridden = a3;
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained fonts];

    self->mFontIndex = [v6 addOrEquivalentObject:v7];
    *&self->mFontOverridden = 257;

    v4 = v7;
  }
}

- (void)setFillOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mFillOverridden = a3;
  }
}

- (void)setFill:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained fills];

    self->mFillIndex = [v6 addOrEquivalentObject:v7];
    *&self->mFillOverridden = 257;

    v4 = v7;
  }
}

- (void)setAlignmentInfoOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mAlignmentInfoOverridden = a3;
  }
}

- (BOOL)isCenterAcrossAligned
{
  v2 = [(EDStyle *)self alignmentInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 horizontalAlignment] == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlignmentInfo:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained alignmentInfos];

    self->mAlignmentInfoIndex = [v6 addOrEquivalentObject:v7];
    *&self->mAlignmentInfoOverridden = 257;

    v4 = v7;
  }
}

- (void)setBordersOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mBordersOverridden = a3;
  }
}

- (void)setBorders:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained borders];

    self->mBordersIndex = [v6 addOrEquivalentObject:v7];
    *&self->mBordersOverridden = 257;

    v4 = v7;
  }
}

- (void)setProtectionOverridden:(BOOL)a3
{
  if (!self->mDoNotModify)
  {
    self->mProtectionOverridden = a3;
  }
}

- (void)setProtection:(id)a3
{
  v5 = a3;
  if (!self->mDoNotModify && self->mProtection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mProtection, a3);
    v5 = v6;
    *&self->mProtectionOverridden = 257;
  }
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained styles];

  v5 = [v4 objectAtIndex:self->mParentIndex];

  return v5;
}

- (void)setParent:(id)a3
{
  v4 = a3;
  if (!self->mDoNotModify)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained styles];

    self->mParentIndex = [v6 addObject:v7];
    v4 = v7;
  }
}

- (void)setFontIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    *&self->mFontOverridden = 257;
    self->mFontIndex = a3;
  }
}

- (void)setContentFormatId:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    *&self->mContentFormatOverridden = 257;
    self->mContentFormatId = a3;
  }
}

- (void)setParentIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    self->mParentIndex = a3;
  }
}

- (void)setBordersIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    *&self->mBordersOverridden = 257;
    self->mBordersIndex = a3;
  }
}

- (void)setFillIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    *&self->mFillOverridden = 257;
    self->mFillIndex = a3;
  }
}

- (void)setAlignmentInfoIndex:(unint64_t)a3
{
  if (!self->mDoNotModify)
  {
    *&self->mAlignmentInfoOverridden = 257;
    self->mAlignmentInfoIndex = a3;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDStyle;
  v2 = [(EDStyle *)&v4 description];

  return v2;
}

@end