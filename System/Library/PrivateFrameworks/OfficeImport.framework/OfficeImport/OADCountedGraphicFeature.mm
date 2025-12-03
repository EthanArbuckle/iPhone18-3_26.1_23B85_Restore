@interface OADCountedGraphicFeature
- (OADCountedGraphicFeature)initWithFeature:(id)feature;
- (int64_t)compareUsageCount:(id)count;
- (void)dealloc;
@end

@implementation OADCountedGraphicFeature

- (void)dealloc
{
  mFeature = self->mFeature;
  self->mFeature = 0;

  v4.receiver = self;
  v4.super_class = OADCountedGraphicFeature;
  [(OADCountedGraphicFeature *)&v4 dealloc];
}

- (OADCountedGraphicFeature)initWithFeature:(id)feature
{
  featureCopy = feature;
  v9.receiver = self;
  v9.super_class = OADCountedGraphicFeature;
  v6 = [(OADCountedGraphicFeature *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mFeature, feature);
    v7->mUsageCount = 1;
  }

  return v7;
}

- (int64_t)compareUsageCount:(id)count
{
  mUsageCount = self->mUsageCount;
  v4 = *(count + 2);
  v5 = mUsageCount > v4;
  v6 = mUsageCount != v4;
  if (v5)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

@end