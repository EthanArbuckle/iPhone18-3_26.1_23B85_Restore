@interface CHDTrendlineLabel
+ (CHDTrendlineLabel)trendlineLabelWithResources:(id)a3;
- (CHDTrendlineLabel)initWithResources:(id)a3;
- (id)contentFormat;
- (id)description;
- (void)setContentFormat:(id)a3;
- (void)setGraphicProperties:(id)a3;
- (void)setName:(id)a3 chart:(id)a4;
@end

@implementation CHDTrendlineLabel

- (CHDTrendlineLabel)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDTrendlineLabel;
  v5 = [(CHDTrendlineLabel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mContentFormatId = -1;
    *&v6->mGeneratedText = 1;
  }

  return v6;
}

+ (CHDTrendlineLabel)trendlineLabelWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (void)setName:(id)a3 chart:(id)a4
{
  v11 = a3;
  v7 = a4;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != v11)
  {
    objc_storeStrong(p_mName, a3);
    if (v11)
    {
      v10 = [v7 processors];
      [v10 markObject:v11 processor:objc_opt_class()];
    }
  }
}

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained contentFormats];
  v5 = [v4 objectWithKey:self->mContentFormatId];

  return v5;
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDTrendlineLabel;
  v2 = [(CHDTrendlineLabel *)&v4 description];

  return v2;
}

@end