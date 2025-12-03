@interface FHSmartFeatureDisputeDocumentSuggestion
- (BOOL)isEqual:(id)equal;
- (FHSmartFeatureDisputeDocumentSuggestion)initWithCoder:(id)coder;
- (FHSmartFeatureDisputeDocumentSuggestion)initWithRankedValue:(id)value type:(unint64_t)type;
- (id)_initWithUUID:(id)d rankScore:(id)score type:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHSmartFeatureDisputeDocumentSuggestion

- (FHSmartFeatureDisputeDocumentSuggestion)initWithRankedValue:(id)value type:(unint64_t)type
{
  valueCopy = value;
  featureLabel = [valueCopy featureLabel];
  featureRank = [valueCopy featureRank];

  v9 = [(FHSmartFeatureDisputeDocumentSuggestion *)self _initWithUUID:featureLabel rankScore:featureRank type:type];
  return v9;
}

- (id)_initWithUUID:(id)d rankScore:(id)score type:(unint64_t)type
{
  dCopy = d;
  scoreCopy = score;
  v11 = [(FHSmartFeatureDisputeDocumentSuggestion *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_UUID, d);
    objc_storeStrong(&v12->_rankScore, score);
    v12->_type = type;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    UUID = self->_UUID;
    uUID = [(FHSmartFeatureDisputeDocumentSuggestion *)v5 UUID];
    if ([(NSString *)UUID isEqualToString:uUID])
    {
      rankScore = self->_rankScore;
      rankScore = [(FHSmartFeatureDisputeDocumentSuggestion *)v5 rankScore];
      if ([(NSDecimalNumber *)rankScore isEqualToNumber:rankScore])
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

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_rankScore forKey:@"rankScore"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (FHSmartFeatureDisputeDocumentSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FHSmartFeatureDisputeDocumentSuggestion;
  v5 = [(FHSmartFeatureDisputeDocumentSuggestion *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankScore"];
    rankScore = v5->_rankScore;
    v5->_rankScore = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end