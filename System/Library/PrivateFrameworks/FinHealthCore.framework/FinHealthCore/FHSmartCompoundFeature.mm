@interface FHSmartCompoundFeature
- (BOOL)isEqual:(id)a3;
- (FHSmartCompoundFeature)initWithCoder:(id)a3;
- (FHSmartCompoundFeature)initWithCompoundFeatureKey:(id)a3 smartCompoundFeatures:(id)a4 locale:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHSmartCompoundFeature

- (void)encodeWithCoder:(id)a3
{
  compoundFeatureKey = self->_compoundFeatureKey;
  v5 = a3;
  [v5 encodeObject:compoundFeatureKey forKey:@"compoundFeature"];
  [v5 encodeObject:self->_rankedValues forKey:@"rankedValues"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
}

- (FHSmartCompoundFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FHSmartCompoundFeature;
  v5 = [(FHSmartCompoundFeature *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compoundFeature"];
    compoundFeatureKey = v5->_compoundFeatureKey;
    v5->_compoundFeatureKey = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"rankedValues"];
    rankedValues = v5->_rankedValues;
    v5->_rankedValues = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v13;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(FHSmartCompoundFeature *)self compoundFeatureKey];
  v4 = [v3 hash];

  v5 = [(FHSmartCompoundFeature *)self rankedValues];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(FHSmartCompoundFeature *)self locale];
  v8 = [v7 hash] - v6 + 32 * v6;

  return v8 + 29791;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    compoundFeatureKey = self->_compoundFeatureKey;
    v7 = [(FHSmartCompoundFeature *)v5 compoundFeatureKey];
    if ([(NSString *)compoundFeatureKey isEqual:v7])
    {
      rankedValues = self->_rankedValues;
      v9 = [(FHSmartCompoundFeature *)v5 rankedValues];
      if ([(NSArray *)rankedValues isEqual:v9])
      {
        locale = self->_locale;
        v11 = [(FHSmartCompoundFeature *)v5 locale];
        v12 = [(NSString *)locale isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (FHSmartCompoundFeature)initWithCompoundFeatureKey:(id)a3 smartCompoundFeatures:(id)a4 locale:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FHSmartCompoundFeature;
  v12 = [(FHSmartCompoundFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_compoundFeatureKey, a3);
    objc_storeStrong(&v13->_rankedValues, a4);
    objc_storeStrong(&v13->_locale, a5);
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"compoundFeature", self->_compoundFeatureKey];
  [v3 appendFormat:@"%@: '%@'; ", @"locale", self->_locale];
  v4 = [(NSArray *)self->_rankedValues description];
  [v3 appendFormat:@"%@: '%@'; ", @"rankedValues", v4];

  [v3 appendFormat:@">"];
  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v5;
}

@end