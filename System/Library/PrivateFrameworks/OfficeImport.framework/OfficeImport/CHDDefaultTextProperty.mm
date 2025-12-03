@interface CHDDefaultTextProperty
+ (id)defaultTextPropertyWithResources:(id)resources;
- (CHDDefaultTextProperty)initWithResources:(id)resources;
- (NSString)description;
- (id)contentFormat;
- (void)setContentFormat:(id)format;
- (void)setRuns:(id)runs;
@end

@implementation CHDDefaultTextProperty

- (CHDDefaultTextProperty)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = CHDDefaultTextProperty;
  v5 = [(CHDDefaultTextProperty *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mDefaultTextType = 2;
    v6->mContentFormatId = -1;
    *&v6->mLabelPosition = 0;
  }

  return v6;
}

+ (id)defaultTextPropertyWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (void)setRuns:(id)runs
{
  runsCopy = runs;
  mRuns = self->mRuns;
  p_mRuns = &self->mRuns;
  if (mRuns != runsCopy)
  {
    v8 = runsCopy;
    objc_storeStrong(p_mRuns, runs);
    runsCopy = v8;
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

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDDefaultTextProperty;
  v2 = [(CHDDefaultTextProperty *)&v4 description];

  return v2;
}

@end