@interface CHDDataLabel
+ (CHDDataLabel)dataLabelWithResources:(id)resources;
- (BOOL)isCustomLabelBlockingVisibility;
- (CHDDataLabel)initWithResources:(id)resources;
- (id)contentFormat;
- (id)description;
- (void)setContentFormat:(id)format;
- (void)setGraphicProperties:(id)properties;
- (void)setLeaderlineGraphicProperties:(id)properties;
@end

@implementation CHDDataLabel

- (CHDDataLabel)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = CHDDataLabel;
  v5 = [(CHDDataLabel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    *&v6->mDeleted = 0;
    v6->mRotation = 0.0;
    v6->mContentFormatId = -1;
    *&v6->mPosition = 0;
    *&v6->mShowBubbleSize = 0;
  }

  return v6;
}

+ (CHDDataLabel)dataLabelWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
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

- (BOOL)isCustomLabelBlockingVisibility
{
  string = [(CHDDataLabel *)self string];
  v3 = string;
  v9 = 0;
  if (string)
  {
    v2String = [string string];

    if (v2String)
    {
      string2 = [v3 string];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v7 = [string2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      v8 = [v7 length];
      if (!v8)
      {
        v9 = 1;
      }
    }
  }

  return v9;
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

- (void)setLeaderlineGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mLeaderlineGraphicProperties = self->mLeaderlineGraphicProperties;
  p_mLeaderlineGraphicProperties = &self->mLeaderlineGraphicProperties;
  if (mLeaderlineGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mLeaderlineGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDDataLabel;
  v2 = [(CHDDataLabel *)&v4 description];

  return v2;
}

@end