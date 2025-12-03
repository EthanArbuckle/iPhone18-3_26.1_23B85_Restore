@interface CHDAxis
- (CHDAxis)initWithResources:(id)resources;
- (NSString)description;
- (id)contentFormat;
- (id)defaultDateTimeContentFormat;
- (id)font;
- (id)tickLabelColor;
- (void)setAxisGraphicProperties:(id)properties;
- (void)setContentFormat:(id)format;
- (void)setFont:(id)font;
- (void)setLabelEffects:(id)effects;
- (void)setMajorGridLinesGraphicProperties:(id)properties;
- (void)setMinorGridLinesGraphicProperties:(id)properties;
- (void)setTitle:(id)title;
@end

@implementation CHDAxis

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  contentFormats = [WeakRetained contentFormats];
  v5 = [contentFormats objectWithKey:self->mContentFormatId];

  return v5;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (CHDAxis)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = CHDAxis;
  v5 = [(CHDAxis *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    *&v6->mAutoCrossValue = 1;
    *&v6->mReverseOrder = 0x101000100000000;
    v6->mContentFormatId = -1;
    v6->mFontIndex = -1;
    v6->mScalingMaximum = 0.0;
    v6->mScalingMinimum = 0.0;
    v6->mOrientation = 0;
    v6->mTickLabelPosition = 3;
    v6->mAxisId = -1;
    *&v6->mCrossBetween = 1;
    *&v6->mCrossAxisId = xmmword_25D6FE610;
    *&v6->mMajorTickMark = xmmword_25D6FE600;
    v6->mTickLabelRotation = 0.0;
    v6->mIsAutoRotation = 0;
    v6->mTickLabelColorIndex = -1;
  }

  return v6;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  self->mFontIndex = [fonts addOrEquivalentObject:fontCopy];
}

- (id)defaultDateTimeContentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  contentFormats = [WeakRetained contentFormats];
  v4 = [contentFormats objectWithKey:14];

  return v4;
}

- (void)setContentFormat:(id)format
{
  formatCopy = format;
  formatId = [formatCopy formatId];
  if (formatId == -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    contentFormats = [WeakRetained contentFormats];

    v7 = [contentFormats objectAtIndex:{objc_msgSend(contentFormats, "addOrEquivalentObject:", formatCopy)}];
    self->mContentFormatId = [v7 formatId];
  }

  else
  {
    self->mContentFormatId = formatId;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  mTitle = self->mTitle;
  p_mTitle = &self->mTitle;
  if (mTitle != titleCopy)
  {
    v8 = titleCopy;
    objc_storeStrong(p_mTitle, title);
    titleCopy = v8;
  }
}

- (void)setMinorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mMinorGridLinesGraphicProperties = self->mMinorGridLinesGraphicProperties;
  p_mMinorGridLinesGraphicProperties = &self->mMinorGridLinesGraphicProperties;
  if (mMinorGridLinesGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mMinorGridLinesGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)setMajorGridLinesGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mMajorGridLinesGraphicProperties = self->mMajorGridLinesGraphicProperties;
  p_mMajorGridLinesGraphicProperties = &self->mMajorGridLinesGraphicProperties;
  if (mMajorGridLinesGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mMajorGridLinesGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)setAxisGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mAxisGraphicProperties = self->mAxisGraphicProperties;
  p_mAxisGraphicProperties = &self->mAxisGraphicProperties;
  if (mAxisGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mAxisGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)setLabelEffects:(id)effects
{
  effectsCopy = effects;
  mLabelEffects = self->mLabelEffects;
  p_mLabelEffects = &self->mLabelEffects;
  if (mLabelEffects != effectsCopy)
  {
    v8 = effectsCopy;
    objc_storeStrong(p_mLabelEffects, effects);
    effectsCopy = v8;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDAxis;
  v2 = [(CHDAxis *)&v4 description];

  return v2;
}

- (id)tickLabelColor
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  colors = [WeakRetained colors];
  v5 = [colors objectAtIndex:self->mTickLabelColorIndex];

  return v5;
}

@end