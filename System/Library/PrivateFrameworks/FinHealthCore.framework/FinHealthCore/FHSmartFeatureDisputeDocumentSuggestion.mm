@interface FHSmartFeatureDisputeDocumentSuggestion
- (BOOL)isEqual:(id)a3;
- (FHSmartFeatureDisputeDocumentSuggestion)initWithCoder:(id)a3;
- (FHSmartFeatureDisputeDocumentSuggestion)initWithRankedValue:(id)a3 type:(unint64_t)a4;
- (id)_initWithUUID:(id)a3 rankScore:(id)a4 type:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHSmartFeatureDisputeDocumentSuggestion

- (FHSmartFeatureDisputeDocumentSuggestion)initWithRankedValue:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 featureLabel];
  v8 = [v6 featureRank];

  v9 = [(FHSmartFeatureDisputeDocumentSuggestion *)self _initWithUUID:v7 rankScore:v8 type:a4];
  return v9;
}

- (id)_initWithUUID:(id)a3 rankScore:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(FHSmartFeatureDisputeDocumentSuggestion *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_UUID, a3);
    objc_storeStrong(&v12->_rankScore, a4);
    v12->_type = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    UUID = self->_UUID;
    v7 = [(FHSmartFeatureDisputeDocumentSuggestion *)v5 UUID];
    if ([(NSString *)UUID isEqualToString:v7])
    {
      rankScore = self->_rankScore;
      v9 = [(FHSmartFeatureDisputeDocumentSuggestion *)v5 rankScore];
      if ([(NSDecimalNumber *)rankScore isEqualToNumber:v9])
      {
        type = self->_type;
        v11 = type == [(FHSmartFeatureDisputeDocumentSuggestion *)v5 type];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_UUID hash];
  v4 = [(NSDecimalNumber *)self->_rankScore hash];
  return self->_type - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3) + 29791;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"%@, ", self->_UUID];
  [(NSDecimalNumber *)self->_rankScore doubleValue];
  [v3 appendFormat:@"%f", v4];
  [v3 appendFormat:@"%lu", self->_type];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"uuid"];
  [v5 encodeObject:self->_rankScore forKey:@"rankScore"];
  [v5 encodeInteger:self->_type forKey:@"type"];
}

- (FHSmartFeatureDisputeDocumentSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FHSmartFeatureDisputeDocumentSuggestion;
  v5 = [(FHSmartFeatureDisputeDocumentSuggestion *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rankScore"];
    rankScore = v5->_rankScore;
    v5->_rankScore = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end