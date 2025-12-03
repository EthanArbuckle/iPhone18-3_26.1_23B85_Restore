@interface FHSmartCompoundFeatureRankedValue
- (BOOL)isEqual:(id)equal;
- (FHSmartCompoundFeatureRankedValue)initWithCoder:(id)coder;
- (FHSmartCompoundFeatureRankedValue)initWithLabelAndIntegerRank:(id)rank featureRank:(int64_t)featureRank;
- (FHSmartCompoundFeatureRankedValue)initWithLabelAndRank:(id)rank featureRank:(id)featureRank;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHSmartCompoundFeatureRankedValue

- (FHSmartCompoundFeatureRankedValue)initWithLabelAndRank:(id)rank featureRank:(id)featureRank
{
  rankCopy = rank;
  featureRankCopy = featureRank;
  v9 = [(FHSmartCompoundFeatureRankedValue *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureLabel, rank);
    objc_storeStrong(&v10->_featureRank, featureRank);
  }

  return v10;
}

- (FHSmartCompoundFeatureRankedValue)initWithLabelAndIntegerRank:(id)rank featureRank:(int64_t)featureRank
{
  v6 = MEMORY[0x277CCA980];
  v7 = MEMORY[0x277CCABB0];
  rankCopy = rank;
  v9 = [v7 numberWithInteger:featureRank];
  v10 = v9;
  if (v9)
  {
    [v9 decimalValue];
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
  }

  v11 = [v6 decimalNumberWithDecimal:v14];
  v12 = [(FHSmartCompoundFeatureRankedValue *)self initWithLabelAndRank:rankCopy featureRank:v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    featureLabel = self->_featureLabel;
    featureLabel = [(FHSmartCompoundFeatureRankedValue *)v5 featureLabel];
    if ([(NSString *)featureLabel isEqual:featureLabel])
    {
      featureRank = self->_featureRank;
      featureRank = [(FHSmartCompoundFeatureRankedValue *)v5 featureRank];
      if ([(NSDecimalNumber *)featureRank isEqual:featureRank])
      {
        eventIdentifiers = [(FHSmartCompoundFeatureRankedValue *)self eventIdentifiers];
        eventIdentifiers2 = [(FHSmartCompoundFeatureRankedValue *)v5 eventIdentifiers];
        if (FHEqualObjects(eventIdentifiers, eventIdentifiers2))
        {
          eventStartDate = [(FHSmartCompoundFeatureRankedValue *)self eventStartDate];
          eventStartDate2 = [(FHSmartCompoundFeatureRankedValue *)v5 eventStartDate];
          if (FHEqualObjects(eventStartDate, eventStartDate2))
          {
            eventEndDate = [(FHSmartCompoundFeatureRankedValue *)self eventEndDate];
            eventEndDate2 = [(FHSmartCompoundFeatureRankedValue *)v5 eventEndDate];
            v16 = FHEqualObjects(eventEndDate, eventEndDate2);
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_featureLabel hash];
  v4 = self->_featureRank + 32 * v3 - v3;
  eventIdentifiers = [(FHSmartCompoundFeatureRankedValue *)self eventIdentifiers];
  v6 = [eventIdentifiers hash] - v4 + 32 * v4;

  eventStartDate = [(FHSmartCompoundFeatureRankedValue *)self eventStartDate];
  v8 = [eventStartDate hash] - v6 + 32 * v6;

  eventEndDate = [(FHSmartCompoundFeatureRankedValue *)self eventEndDate];
  v10 = [eventEndDate hash] - v8 + 32 * v8;

  return v10 + 28629151;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"%@, ", self->_featureLabel];
  [(NSDecimalNumber *)self->_featureRank doubleValue];
  [v3 appendFormat:@"%f", v4];
  eventIdentifiers = [(FHSmartCompoundFeatureRankedValue *)self eventIdentifiers];

  if (eventIdentifiers)
  {
    eventIdentifiers2 = [(FHSmartCompoundFeatureRankedValue *)self eventIdentifiers];
    [v3 appendFormat:@"Event identifiers: %@", eventIdentifiers2];
  }

  eventStartDate = [(FHSmartCompoundFeatureRankedValue *)self eventStartDate];

  if (eventStartDate)
  {
    eventStartDate2 = [(FHSmartCompoundFeatureRankedValue *)self eventStartDate];
    [v3 appendFormat:@"Event start date: %@", eventStartDate2];
  }

  eventEndDate = [(FHSmartCompoundFeatureRankedValue *)self eventEndDate];

  if (eventEndDate)
  {
    eventEndDate2 = [(FHSmartCompoundFeatureRankedValue *)self eventEndDate];
    [v3 appendFormat:@"Event end date:%@", eventEndDate2];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  featureLabel = self->_featureLabel;
  coderCopy = coder;
  [coderCopy encodeObject:featureLabel forKey:@"featureLabel"];
  [coderCopy encodeObject:self->_featureRank forKey:@"featureRank"];
  [coderCopy encodeObject:self->_eventIdentifiers forKey:@"eventIdentifiers"];
  [coderCopy encodeObject:self->_eventStartDate forKey:@"eventStartDate"];
  [coderCopy encodeObject:self->_eventEndDate forKey:@"eventEndDate"];
}

- (FHSmartCompoundFeatureRankedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = FHSmartCompoundFeatureRankedValue;
  v5 = [(FHSmartCompoundFeatureRankedValue *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureLabel"];
    featureLabel = v5->_featureLabel;
    v5->_featureLabel = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureRank"];
    featureRank = v5->_featureRank;
    v5->_featureRank = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifiers"];
    eventIdentifiers = v5->_eventIdentifiers;
    v5->_eventIdentifiers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventStartDate"];
    eventStartDate = v5->_eventStartDate;
    v5->_eventStartDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventEndDate"];
    eventEndDate = v5->_eventEndDate;
    v5->_eventEndDate = v14;
  }

  return v5;
}

@end