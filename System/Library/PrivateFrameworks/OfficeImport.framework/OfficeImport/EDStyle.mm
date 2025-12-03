@interface EDStyle
+ (id)styleWithResources:(id)resources;
- (BOOL)isCenterAcrossAligned;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStyle:(id)style;
- (BOOL)isEquivalentToStyle:(id)style;
- (EDAlignmentInfo)alignmentInfo;
- (EDBorders)borders;
- (EDContentFormat)contentFormat;
- (EDFill)fill;
- (EDFont)font;
- (EDStyle)initWithResources:(id)resources;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parent;
- (void)setAlignmentInfo:(id)info;
- (void)setAlignmentInfoIndex:(unint64_t)index;
- (void)setAlignmentInfoOverridden:(BOOL)overridden;
- (void)setBorders:(id)borders;
- (void)setBordersIndex:(unint64_t)index;
- (void)setBordersOverridden:(BOOL)overridden;
- (void)setContentFormat:(id)format;
- (void)setContentFormatId:(unint64_t)id;
- (void)setContentFormatOverridden:(BOOL)overridden;
- (void)setFill:(id)fill;
- (void)setFillIndex:(unint64_t)index;
- (void)setFillOverridden:(BOOL)overridden;
- (void)setFont:(id)font;
- (void)setFontIndex:(unint64_t)index;
- (void)setFontOverridden:(BOOL)overridden;
- (void)setParent:(id)parent;
- (void)setParentIndex:(unint64_t)index;
- (void)setProtection:(id)protection;
- (void)setProtectionOverridden:(BOOL)overridden;
@end

@implementation EDStyle

- (EDFont)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];

  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (EDFill)fill
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fills = [WeakRetained fills];

  v5 = [fills objectAtIndex:self->mFillIndex];

  return v5;
}

- (EDAlignmentInfo)alignmentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  alignmentInfos = [WeakRetained alignmentInfos];

  v5 = [alignmentInfos objectAtIndex:self->mAlignmentInfoIndex];

  return v5;
}

- (EDBorders)borders
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  borders = [WeakRetained borders];

  v5 = [borders objectAtIndex:self->mBordersIndex];

  return v5;
}

- (EDContentFormat)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  contentFormats = [WeakRetained contentFormats];

  v5 = [contentFormats objectWithKey:self->mContentFormatId];

  return v5;
}

- (EDStyle)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = EDStyle;
  v5 = [(EDStyle *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
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

+ (id)styleWithResources:(id)resources
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
    *(v7 + 16) = self->mParentIndex;
    *(v7 + 24) = self->mContentFormatId;
    *(v7 + 32) = self->mFontIndex;
    *(v7 + 40) = self->mFillIndex;
    *(v7 + 48) = self->mAlignmentInfoIndex;
    *(v7 + 56) = self->mBordersIndex;
    v8 = [(EDProtection *)self->mProtection copyWithZone:zone];
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

- (BOOL)isEquivalentToStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  if (*&self->mContentFormatId == *(styleCopy + 24) && self->mFillIndex == *(styleCopy + 5) && self->mBordersIndex == *(styleCopy + 7) && self->mAlignmentInfoIndex == *(styleCopy + 6))
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

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = styleCopy;
  v6 = self->mContentFormatOverridden == styleCopy[80] && self->mFontOverridden == styleCopy[82] && self->mFillOverridden == styleCopy[84] && self->mAlignmentInfoOverridden == styleCopy[86] && self->mBordersOverridden == styleCopy[88] && self->mProtectionOverridden == styleCopy[90] && self->mParentIndex == *(styleCopy + 2) && [(EDStyle *)self isEquivalentToStyle:styleCopy];

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDStyle *)self isEqualToStyle:v5];
  }

  return v6;
}

- (void)setContentFormatOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mContentFormatOverridden = overridden;
  }
}

- (void)setContentFormat:(id)format
{
  formatCopy = format;
  if (!self->mDoNotModify)
  {
    *&self->mContentFormatOverridden = 257;
    v9 = formatCopy;
    formatId = [formatCopy formatId];
    if (formatId == -1)
    {
      WeakRetained = objc_loadWeakRetained(&self->mResources);
      contentFormats = [WeakRetained contentFormats];

      v8 = [contentFormats objectAtIndex:{objc_msgSend(contentFormats, "addOrEquivalentObject:", v9)}];
      self->mContentFormatId = [v8 formatId];
    }

    else
    {
      self->mContentFormatId = formatId;
    }

    formatCopy = v9;
  }
}

- (void)setFontOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mFontOverridden = overridden;
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (!self->mDoNotModify)
  {
    v7 = fontCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    fonts = [WeakRetained fonts];

    self->mFontIndex = [fonts addOrEquivalentObject:v7];
    *&self->mFontOverridden = 257;

    fontCopy = v7;
  }
}

- (void)setFillOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mFillOverridden = overridden;
  }
}

- (void)setFill:(id)fill
{
  fillCopy = fill;
  if (!self->mDoNotModify)
  {
    v7 = fillCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    fills = [WeakRetained fills];

    self->mFillIndex = [fills addOrEquivalentObject:v7];
    *&self->mFillOverridden = 257;

    fillCopy = v7;
  }
}

- (void)setAlignmentInfoOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mAlignmentInfoOverridden = overridden;
  }
}

- (BOOL)isCenterAcrossAligned
{
  alignmentInfo = [(EDStyle *)self alignmentInfo];
  v3 = alignmentInfo;
  if (alignmentInfo)
  {
    v4 = [alignmentInfo horizontalAlignment] == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlignmentInfo:(id)info
{
  infoCopy = info;
  if (!self->mDoNotModify)
  {
    v7 = infoCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    alignmentInfos = [WeakRetained alignmentInfos];

    self->mAlignmentInfoIndex = [alignmentInfos addOrEquivalentObject:v7];
    *&self->mAlignmentInfoOverridden = 257;

    infoCopy = v7;
  }
}

- (void)setBordersOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mBordersOverridden = overridden;
  }
}

- (void)setBorders:(id)borders
{
  bordersCopy = borders;
  if (!self->mDoNotModify)
  {
    v7 = bordersCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    borders = [WeakRetained borders];

    self->mBordersIndex = [borders addOrEquivalentObject:v7];
    *&self->mBordersOverridden = 257;

    bordersCopy = v7;
  }
}

- (void)setProtectionOverridden:(BOOL)overridden
{
  if (!self->mDoNotModify)
  {
    self->mProtectionOverridden = overridden;
  }
}

- (void)setProtection:(id)protection
{
  protectionCopy = protection;
  if (!self->mDoNotModify && self->mProtection != protectionCopy)
  {
    v6 = protectionCopy;
    objc_storeStrong(&self->mProtection, protection);
    protectionCopy = v6;
    *&self->mProtectionOverridden = 257;
  }
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  styles = [WeakRetained styles];

  v5 = [styles objectAtIndex:self->mParentIndex];

  return v5;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  if (!self->mDoNotModify)
  {
    v7 = parentCopy;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    styles = [WeakRetained styles];

    self->mParentIndex = [styles addObject:v7];
    parentCopy = v7;
  }
}

- (void)setFontIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    *&self->mFontOverridden = 257;
    self->mFontIndex = index;
  }
}

- (void)setContentFormatId:(unint64_t)id
{
  if (!self->mDoNotModify)
  {
    *&self->mContentFormatOverridden = 257;
    self->mContentFormatId = id;
  }
}

- (void)setParentIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    self->mParentIndex = index;
  }
}

- (void)setBordersIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    *&self->mBordersOverridden = 257;
    self->mBordersIndex = index;
  }
}

- (void)setFillIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    *&self->mFillOverridden = 257;
    self->mFillIndex = index;
  }
}

- (void)setAlignmentInfoIndex:(unint64_t)index
{
  if (!self->mDoNotModify)
  {
    *&self->mAlignmentInfoOverridden = 257;
    self->mAlignmentInfoIndex = index;
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