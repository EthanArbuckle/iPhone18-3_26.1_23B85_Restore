@interface CHDDefaultTextProperty
+ (id)defaultTextPropertyWithResources:(id)a3;
- (CHDDefaultTextProperty)initWithResources:(id)a3;
- (NSString)description;
- (id)contentFormat;
- (void)setContentFormat:(id)a3;
- (void)setRuns:(id)a3;
@end

@implementation CHDDefaultTextProperty

- (CHDDefaultTextProperty)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHDDefaultTextProperty;
  v5 = [(CHDDefaultTextProperty *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mDefaultTextType = 2;
    v6->mContentFormatId = -1;
    *&v6->mLabelPosition = 0;
  }

  return v6;
}

+ (id)defaultTextPropertyWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (void)setRuns:(id)a3
{
  v5 = a3;
  mRuns = self->mRuns;
  p_mRuns = &self->mRuns;
  if (mRuns != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mRuns, a3);
    v5 = v8;
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

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDDefaultTextProperty;
  v2 = [(CHDDefaultTextProperty *)&v4 description];

  return v2;
}

@end