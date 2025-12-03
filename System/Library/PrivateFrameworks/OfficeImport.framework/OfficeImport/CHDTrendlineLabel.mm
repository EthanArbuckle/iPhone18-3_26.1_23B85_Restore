@interface CHDTrendlineLabel
+ (CHDTrendlineLabel)trendlineLabelWithResources:(id)resources;
- (CHDTrendlineLabel)initWithResources:(id)resources;
- (id)contentFormat;
- (id)description;
- (void)setContentFormat:(id)format;
- (void)setGraphicProperties:(id)properties;
- (void)setName:(id)name chart:(id)chart;
@end

@implementation CHDTrendlineLabel

- (CHDTrendlineLabel)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = CHDTrendlineLabel;
  v5 = [(CHDTrendlineLabel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mContentFormatId = -1;
    *&v6->mGeneratedText = 1;
  }

  return v6;
}

+ (CHDTrendlineLabel)trendlineLabelWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (void)setName:(id)name chart:(id)chart
{
  nameCopy = name;
  chartCopy = chart;
  mName = self->mName;
  p_mName = &self->mName;
  if (mName != nameCopy)
  {
    objc_storeStrong(p_mName, name);
    if (nameCopy)
    {
      processors = [chartCopy processors];
      [processors markObject:nameCopy processor:objc_opt_class()];
    }
  }
}

- (id)contentFormat
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  contentFormats = [WeakRetained contentFormats];
  v5 = [contentFormats objectWithKey:self->mContentFormatId];

  return v5;
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDTrendlineLabel;
  v2 = [(CHDTrendlineLabel *)&v4 description];

  return v2;
}

@end