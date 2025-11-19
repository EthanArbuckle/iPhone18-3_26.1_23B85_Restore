@interface CHDDataLabel
+ (CHDDataLabel)dataLabelWithResources:(id)a3;
- (BOOL)isCustomLabelBlockingVisibility;
- (CHDDataLabel)initWithResources:(id)a3;
- (id)contentFormat;
- (id)description;
- (void)setContentFormat:(id)a3;
- (void)setGraphicProperties:(id)a3;
- (void)setLeaderlineGraphicProperties:(id)a3;
@end

@implementation CHDDataLabel

- (CHDDataLabel)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDDataLabel;
  v5 = [(CHDDataLabel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    *&v6->mDeleted = 0;
    v6->mRotation = 0.0;
    v6->mContentFormatId = -1;
    *&v6->mPosition = 0;
    *&v6->mShowBubbleSize = 0;
  }

  return v6;
}

+ (CHDDataLabel)dataLabelWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
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

- (BOOL)isCustomLabelBlockingVisibility
{
  v2 = [(CHDDataLabel *)self string];
  v3 = v2;
  v9 = 0;
  if (v2)
  {
    v4 = [v2 string];

    if (v4)
    {
      v5 = [v3 string];
      v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v7 = [v5 stringByTrimmingCharactersInSet:v6];

      v8 = [v7 length];
      if (!v8)
      {
        v9 = 1;
      }
    }
  }

  return v9;
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

- (void)setLeaderlineGraphicProperties:(id)a3
{
  v5 = a3;
  mLeaderlineGraphicProperties = self->mLeaderlineGraphicProperties;
  p_mLeaderlineGraphicProperties = &self->mLeaderlineGraphicProperties;
  if (mLeaderlineGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mLeaderlineGraphicProperties, a3);
    v5 = v8;
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