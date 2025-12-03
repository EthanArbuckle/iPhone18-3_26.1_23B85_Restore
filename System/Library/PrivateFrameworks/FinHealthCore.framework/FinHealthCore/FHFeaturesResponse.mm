@interface FHFeaturesResponse
- (BOOL)isEqual:(id)equal;
- (FHFeaturesResponse)initWithCoder:(id)coder;
- (FHFeaturesResponse)initWithSmartFeatures:(id)features aggregateFeatureswithProcessingWindow:(id)window compoundFeatures:(id)compoundFeatures transactionID:(id)d;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHFeaturesResponse

- (void)encodeWithCoder:(id)coder
{
  aggregateFeatures = self->_aggregateFeatures;
  coderCopy = coder;
  [coderCopy encodeObject:aggregateFeatures forKey:@"aggregateFeatures"];
  [coderCopy encodeObject:self->_aggregateFeaturesWithProcessingWindow forKey:@"aggregateFeaturesWithProcessingWindow"];
  [coderCopy encodeObject:self->_compoundFeatures forKey:@"compoundFeatures"];
  [coderCopy encodeObject:self->_transactionIdentifier forKey:@"identifier"];
}

- (FHFeaturesResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = FHFeaturesResponse;
  v5 = [(FHFeaturesResponse *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"aggregateFeatures"];
    aggregateFeatures = v5->_aggregateFeatures;
    v5->_aggregateFeatures = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"aggregateFeaturesWithProcessingWindow"];
    aggregateFeaturesWithProcessingWindow = v5->_aggregateFeaturesWithProcessingWindow;
    v5->_aggregateFeaturesWithProcessingWindow = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"compoundFeatures"];
    compoundFeatures = v5->_compoundFeatures;
    v5->_compoundFeatures = v23;
  }

  return v5;
}

- (FHFeaturesResponse)initWithSmartFeatures:(id)features aggregateFeatureswithProcessingWindow:(id)window compoundFeatures:(id)compoundFeatures transactionID:(id)d
{
  featuresCopy = features;
  windowCopy = window;
  compoundFeaturesCopy = compoundFeatures;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = FHFeaturesResponse;
  v15 = [(FHFeaturesResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_aggregateFeatures, features);
    objc_storeStrong(&v16->_aggregateFeaturesWithProcessingWindow, window);
    objc_storeStrong(&v16->_compoundFeatures, compoundFeatures);
    objc_storeStrong(&v16->_transactionIdentifier, d);
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"aggregateFeatures", self->_aggregateFeatures];
  [v3 appendFormat:@"%@: '%@'; ", @"aggregateFeaturesWithProcessingWindow", self->_aggregateFeaturesWithProcessingWindow];
  [v3 appendFormat:@"%@: '%@'; ", @"compoundFeatures", self->_compoundFeatures];
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", self->_transactionIdentifier];
  [v3 appendFormat:@">"];
  v4 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v4;
}

- (unint64_t)hash
{
  aggregateFeatures = [(FHFeaturesResponse *)self aggregateFeatures];
  v4 = [aggregateFeatures hash];

  aggregateFeaturesWithProcessingWindow = [(FHFeaturesResponse *)self aggregateFeaturesWithProcessingWindow];
  v6 = [aggregateFeaturesWithProcessingWindow hash] - v4 + 32 * v4;

  compoundFeatures = [(FHFeaturesResponse *)self compoundFeatures];
  v8 = [compoundFeatures hash] - v6 + 32 * v6;

  transactionIdentifier = [(FHFeaturesResponse *)self transactionIdentifier];
  v10 = [transactionIdentifier hash] - v8 + 32 * v8;

  return v10 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    aggregateFeatures = self->_aggregateFeatures;
    aggregateFeatures = [(FHFeaturesResponse *)v5 aggregateFeatures];
    if ([(NSArray *)aggregateFeatures isEqual:aggregateFeatures])
    {
      aggregateFeaturesWithProcessingWindow = self->_aggregateFeaturesWithProcessingWindow;
      aggregateFeaturesWithProcessingWindow = [(FHFeaturesResponse *)v5 aggregateFeaturesWithProcessingWindow];
      if ([(NSArray *)aggregateFeaturesWithProcessingWindow isEqual:aggregateFeaturesWithProcessingWindow])
      {
        compoundFeatures = self->_compoundFeatures;
        compoundFeatures = [(FHFeaturesResponse *)v5 compoundFeatures];
        if ([(NSArray *)compoundFeatures isEqual:compoundFeatures])
        {
          transactionIdentifier = self->_transactionIdentifier;
          transactionIdentifier = [(FHFeaturesResponse *)v5 transactionIdentifier];
          v14 = [(NSString *)transactionIdentifier isEqual:transactionIdentifier];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end