@interface HKMCCachedPregnancyModel
- (BOOL)isEqual:(id)a3;
- (HKMCCachedPregnancyModel)initWithCoder:(id)a3;
- (HKMCCachedPregnancyModel)initWithModel:(id)a3;
@end

@implementation HKMCCachedPregnancyModel

- (HKMCCachedPregnancyModel)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKMCCachedPregnancyModel;
  v6 = [(HKMCCachedPregnancyModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachedModel, a3);
  }

  return v7;
}

- (HKMCCachedPregnancyModel)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMCCachedPregnancyModel;
  v5 = [(HKMCCachedPregnancyModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CachedPregnancyModel"];
    cachedModel = v5->_cachedModel;
    v5->_cachedModel = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  cachedModel = self->_cachedModel;
  v6 = v4->_cachedModel;
  if (cachedModel == v6)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_8;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(HKMCPregnancyModel *)cachedModel isEqual:?];
LABEL_8:

  return v7;
}

@end