@interface CHDAxis
- (CHDAxis)initWithResources:(id)a3;
- (NSString)description;
- (id)contentFormat;
- (id)defaultDateTimeContentFormat;
- (id)font;
- (id)tickLabelColor;
- (void)setAxisGraphicProperties:(id)a3;
- (void)setContentFormat:(id)a3;
- (void)setFont:(id)a3;
- (void)setLabelEffects:(id)a3;
- (void)setMajorGridLinesGraphicProperties:(id)a3;
- (void)setMinorGridLinesGraphicProperties:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation CHDAxis

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained contentFormats];
  v5 = [v4 objectWithKey:self->mContentFormatId];

  return v5;
}

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];
  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (CHDAxis)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDAxis;
  v5 = [(CHDAxis *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
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

- (void)setFont:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained fonts];
  self->mFontIndex = [v5 addOrEquivalentObject:v6];
}

- (id)defaultDateTimeContentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v3 = [WeakRetained contentFormats];
  v4 = [v3 objectWithKey:14];

  return v4;
}

- (void)setContentFormat:(id)a3
{
  v8 = a3;
  v4 = [v8 formatId];
  if (v4 == -1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = [WeakRetained contentFormats];

    v7 = [v6 objectAtIndex:{objc_msgSend(v6, "addOrEquivalentObject:", v8)}];
    self->mContentFormatId = [v7 formatId];
  }

  else
  {
    self->mContentFormatId = v4;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  mTitle = self->mTitle;
  p_mTitle = &self->mTitle;
  if (mTitle != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mTitle, a3);
    v5 = v8;
  }
}

- (void)setMinorGridLinesGraphicProperties:(id)a3
{
  v5 = a3;
  mMinorGridLinesGraphicProperties = self->mMinorGridLinesGraphicProperties;
  p_mMinorGridLinesGraphicProperties = &self->mMinorGridLinesGraphicProperties;
  if (mMinorGridLinesGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mMinorGridLinesGraphicProperties, a3);
    v5 = v8;
  }
}

- (void)setMajorGridLinesGraphicProperties:(id)a3
{
  v5 = a3;
  mMajorGridLinesGraphicProperties = self->mMajorGridLinesGraphicProperties;
  p_mMajorGridLinesGraphicProperties = &self->mMajorGridLinesGraphicProperties;
  if (mMajorGridLinesGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mMajorGridLinesGraphicProperties, a3);
    v5 = v8;
  }
}

- (void)setAxisGraphicProperties:(id)a3
{
  v5 = a3;
  mAxisGraphicProperties = self->mAxisGraphicProperties;
  p_mAxisGraphicProperties = &self->mAxisGraphicProperties;
  if (mAxisGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mAxisGraphicProperties, a3);
    v5 = v8;
  }
}

- (void)setLabelEffects:(id)a3
{
  v5 = a3;
  mLabelEffects = self->mLabelEffects;
  p_mLabelEffects = &self->mLabelEffects;
  if (mLabelEffects != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mLabelEffects, a3);
    v5 = v8;
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
  v4 = [WeakRetained colors];
  v5 = [v4 objectAtIndex:self->mTickLabelColorIndex];

  return v5;
}

@end