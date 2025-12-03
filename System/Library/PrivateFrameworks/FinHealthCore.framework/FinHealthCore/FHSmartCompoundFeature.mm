@interface FHSmartCompoundFeature
- (BOOL)isEqual:(id)equal;
- (FHSmartCompoundFeature)initWithCoder:(id)coder;
- (FHSmartCompoundFeature)initWithCompoundFeatureKey:(id)key smartCompoundFeatures:(id)features locale:(id)locale;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHSmartCompoundFeature

- (void)encodeWithCoder:(id)coder
{
  compoundFeatureKey = self->_compoundFeatureKey;
  coderCopy = coder;
  [coderCopy encodeObject:compoundFeatureKey forKey:@"compoundFeature"];
  [coderCopy encodeObject:self->_rankedValues forKey:@"rankedValues"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
}

- (FHSmartCompoundFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FHSmartCompoundFeature;
  v5 = [(FHSmartCompoundFeature *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compoundFeature"];
    compoundFeatureKey = v5->_compoundFeatureKey;
    v5->_compoundFeatureKey = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"rankedValues"];
    rankedValues = v5->_rankedValues;
    v5->_rankedValues = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v13;
  }

  return v5;
}

- (unint64_t)hash
{
  compoundFeatureKey = [(FHSmartCompoundFeature *)self compoundFeatureKey];
  v4 = [compoundFeatureKey hash];

  rankedValues = [(FHSmartCompoundFeature *)self rankedValues];
  v6 = [rankedValues hash] - v4 + 32 * v4;

  locale = [(FHSmartCompoundFeature *)self locale];
  v8 = [locale hash] - v6 + 32 * v6;

  return v8 + 29791;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    compoundFeatureKey = self->_compoundFeatureKey;
    compoundFeatureKey = [(FHSmartCompoundFeature *)v5 compoundFeatureKey];
    if ([(NSString *)compoundFeatureKey isEqual:compoundFeatureKey])
    {
      rankedValues = self->_rankedValues;
      rankedValues = [(FHSmartCompoundFeature *)v5 rankedValues];
      if ([(NSArray *)rankedValues isEqual:rankedValues])
      {
        locale = self->_locale;
        locale = [(FHSmartCompoundFeature *)v5 locale];
        v12 = [(NSString *)locale isEqual:locale];
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

- (FHSmartCompoundFeature)initWithCompoundFeatureKey:(id)key smartCompoundFeatures:(id)features locale:(id)locale
{
  keyCopy = key;
  featuresCopy = features;
  localeCopy = locale;
  v15.receiver = self;
  v15.super_class = FHSmartCompoundFeature;
  v12 = [(FHSmartCompoundFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_compoundFeatureKey, key);
    objc_storeStrong(&v13->_rankedValues, features);
    objc_storeStrong(&v13->_locale, locale);
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