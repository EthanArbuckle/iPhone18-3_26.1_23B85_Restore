@interface OADCountedGraphicFeature
- (OADCountedGraphicFeature)initWithFeature:(id)a3;
- (int64_t)compareUsageCount:(id)a3;
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

- (OADCountedGraphicFeature)initWithFeature:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OADCountedGraphicFeature;
  v6 = [(OADCountedGraphicFeature *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mFeature, a3);
    v7->mUsageCount = 1;
  }

  return v7;
}

- (int64_t)compareUsageCount:(id)a3
{
  mUsageCount = self->mUsageCount;
  v4 = *(a3 + 2);
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