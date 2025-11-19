@interface CHDLegend
- (CHDLegend)initWithResources:(id)a3;
- (id)description;
- (id)font;
- (void)setFont:(id)a3;
- (void)setGraphicProperties:(id)a3;
- (void)setLabelEffects:(id)a3;
@end

@implementation CHDLegend

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];
  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (CHDLegend)initWithResources:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CHDLegend;
  v5 = [(CHDLegend *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mFontIndex = -1;
    v6->mLegendPosition = 0;
    v7 = objc_alloc_init(EDCollection);
    mLegendEntries = v6->mLegendEntries;
    v6->mLegendEntries = v7;

    *&v6->mIsVertical = 1;
  }

  return v6;
}

- (void)setGraphicProperties:(id)a3
{
  v5 = a3;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mGraphicProperties, a3);
    v5 = v8;
  }
}

- (void)setFont:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained fonts];
  self->mFontIndex = [v5 addOrEquivalentObject:v6];
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDLegend;
  v2 = [(CHDLegend *)&v4 description];

  return v2;
}

@end