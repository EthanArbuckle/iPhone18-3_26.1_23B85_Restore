@interface PKSpendingSummaryFetcherRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKSpendingSummaryFetcherRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSpendingSummaryFetcherRequest allocWithZone:](PKSpendingSummaryFetcherRequest init];
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v6;

  v5->_withLastChange = self->_withLastChange;
  v5->_type = self->_type;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_withLastChange - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    startDate = self->_startDate;
    v7 = v5[2];
    if (startDate && v7)
    {
      if (([(NSDate *)startDate isEqual:?]& 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (startDate != v7)
    {
      goto LABEL_10;
    }

    if (self->_type == v5[3])
    {
      v8 = self->_withLastChange == *(v5 + 8);
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"startDate: %@; ", self->_startDate];
  [v3 appendFormat:@"type: %lu; ", self->_type];
  if (self->_withLastChange)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"withLastChange: %@; ", v4];
  [v3 appendString:@">"];

  return v3;
}

@end