@interface FHFeaturesResponse
- (BOOL)isEqual:(id)a3;
- (FHFeaturesResponse)initWithCoder:(id)a3;
- (FHFeaturesResponse)initWithSmartFeatures:(id)a3 aggregateFeatureswithProcessingWindow:(id)a4 compoundFeatures:(id)a5 transactionID:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHFeaturesResponse

- (void)encodeWithCoder:(id)a3
{
  aggregateFeatures = self->_aggregateFeatures;
  v5 = a3;
  [v5 encodeObject:aggregateFeatures forKey:@"aggregateFeatures"];
  [v5 encodeObject:self->_aggregateFeaturesWithProcessingWindow forKey:@"aggregateFeaturesWithProcessingWindow"];
  [v5 encodeObject:self->_compoundFeatures forKey:@"compoundFeatures"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"identifier"];
}

- (FHFeaturesResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FHFeaturesResponse;
  v5 = [(FHFeaturesResponse *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"aggregateFeatures"];
    aggregateFeatures = v5->_aggregateFeatures;
    v5->_aggregateFeatures = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"aggregateFeaturesWithProcessingWindow"];
    aggregateFeaturesWithProcessingWindow = v5->_aggregateFeaturesWithProcessingWindow;
    v5->_aggregateFeaturesWithProcessingWindow = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"compoundFeatures"];
    compoundFeatures = v5->_compoundFeatures;
    v5->_compoundFeatures = v23;
  }

  return v5;
}

- (FHFeaturesResponse)initWithSmartFeatures:(id)a3 aggregateFeatureswithProcessingWindow:(id)a4 compoundFeatures:(id)a5 transactionID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FHFeaturesResponse;
  v15 = [(FHFeaturesResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_aggregateFeatures, a3);
    objc_storeStrong(&v16->_aggregateFeaturesWithProcessingWindow, a4);
    objc_storeStrong(&v16->_compoundFeatures, a5);
    objc_storeStrong(&v16->_transactionIdentifier, a6);
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
  v3 = [(FHFeaturesResponse *)self aggregateFeatures];
  v4 = [v3 hash];

  v5 = [(FHFeaturesResponse *)self aggregateFeaturesWithProcessingWindow];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(FHFeaturesResponse *)self compoundFeatures];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(FHFeaturesResponse *)self transactionIdentifier];
  v10 = [v9 hash] - v8 + 32 * v8;

  return v10 + 923521;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    aggregateFeatures = self->_aggregateFeatures;
    v7 = [(FHFeaturesResponse *)v5 aggregateFeatures];
    if ([(NSArray *)aggregateFeatures isEqual:v7])
    {
      aggregateFeaturesWithProcessingWindow = self->_aggregateFeaturesWithProcessingWindow;
      v9 = [(FHFeaturesResponse *)v5 aggregateFeaturesWithProcessingWindow];
      if ([(NSArray *)aggregateFeaturesWithProcessingWindow isEqual:v9])
      {
        compoundFeatures = self->_compoundFeatures;
        v11 = [(FHFeaturesResponse *)v5 compoundFeatures];
        if ([(NSArray *)compoundFeatures isEqual:v11])
        {
          transactionIdentifier = self->_transactionIdentifier;
          v13 = [(FHFeaturesResponse *)v5 transactionIdentifier];
          v14 = [(NSString *)transactionIdentifier isEqual:v13];
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