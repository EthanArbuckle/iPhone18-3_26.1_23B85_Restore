@interface FHDateTimeAggregateFeature
- (BOOL)isEqual:(id)equal;
- (FHDateTimeAggregateFeature)initWithCoder:(id)coder;
- (FHDateTimeAggregateFeature)initWithStartDate:(id)date endDate:(id)endDate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHDateTimeAggregateFeature

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FHDateTimeAggregateFeature;
  coderCopy = coder;
  [(FHAggregateFeature *)&v7 encodeWithCoder:coderCopy];
  v5 = [(FHDateTimeAggregateFeature *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(FHDateTimeAggregateFeature *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
}

- (FHDateTimeAggregateFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHDateTimeAggregateFeature;
  v5 = [(FHAggregateFeature *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(FHDateTimeAggregateFeature *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(FHDateTimeAggregateFeature *)v5 setEndDate:v7];
  }

  return v5;
}

- (FHDateTimeAggregateFeature)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12.receiver = self;
  v12.super_class = FHDateTimeAggregateFeature;
  v9 = [(FHDateTimeAggregateFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FHAggregateFeature *)v9 setType:2];
    objc_storeStrong(&v10->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"startDate", self->_startDate];
  [v3 appendFormat:@"%@: '%@'; ", @"endDate", self->_endDate];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = FHDateTimeAggregateFeature;
  v3 = [(FHAggregateFeature *)&v9 hash];
  startDate = [(FHDateTimeAggregateFeature *)self startDate];
  v5 = [startDate hash] - v3 + 32 * v3;

  endDate = [(FHDateTimeAggregateFeature *)self endDate];
  v7 = [endDate hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12.receiver = self, v12.super_class = FHDateTimeAggregateFeature, [(FHAggregateFeature *)&v12 isEqual:v5]))
  {
    startDate = [(FHDateTimeAggregateFeature *)self startDate];
    startDate2 = [(FHDateTimeAggregateFeature *)v5 startDate];
    if ([startDate isEqual:startDate2])
    {
      endDate = [(FHDateTimeAggregateFeature *)self endDate];
      endDate2 = [(FHDateTimeAggregateFeature *)v5 endDate];
      v10 = [endDate isEqual:endDate2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end