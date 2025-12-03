@interface CHDLegend
- (CHDLegend)initWithResources:(id)resources;
- (id)description;
- (id)font;
- (void)setFont:(id)font;
- (void)setGraphicProperties:(id)properties;
- (void)setLabelEffects:(id)effects;
@end

@implementation CHDLegend

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (CHDLegend)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v10.receiver = self;
  v10.super_class = CHDLegend;
  v5 = [(CHDLegend *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mFontIndex = -1;
    v6->mLegendPosition = 0;
    v7 = objc_alloc_init(EDCollection);
    mLegendEntries = v6->mLegendEntries;
    v6->mLegendEntries = v7;

    *&v6->mIsVertical = 1;
  }

  return v6;
}

- (void)setGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];
  self->mFontIndex = [fonts addOrEquivalentObject:fontCopy];
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDLegend;
  v2 = [(CHDLegend *)&v4 description];

  return v2;
}

@end