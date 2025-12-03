@interface RTFamiliarityIndexResult
- (BOOL)isEqual:(id)equal;
- (RTFamiliarityIndexResult)initWithCoder:(id)coder;
- (RTFamiliarityIndexResult)initWithDateInterval:(id)interval familiarityIndex:(double)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTFamiliarityIndexResult

- (RTFamiliarityIndexResult)initWithDateInterval:(id)interval familiarityIndex:(double)index
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = RTFamiliarityIndexResult;
  v8 = [(RTFamiliarityIndexResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, interval);
    v9->_familiarityIndex = index;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeDouble:@"familiarityIndex" forKey:self->_familiarityIndex];
}

- (RTFamiliarityIndexResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RTFamiliarityIndexResult;
  v5 = [(RTFamiliarityIndexResult *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    [coderCopy decodeDoubleForKey:@"familiarityIndex"];
    v5->_familiarityIndex = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTFamiliarityIndexResult alloc];
  dateInterval = self->_dateInterval;
  familiarityIndex = self->_familiarityIndex;

  return [(RTFamiliarityIndexResult *)v4 initWithDateInterval:dateInterval familiarityIndex:familiarityIndex];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    dateInterval = [(RTFamiliarityIndexResult *)self dateInterval];
    dateInterval2 = [(RTFamiliarityIndexResult *)v6 dateInterval];
    if ([dateInterval isEqualToDateInterval:dateInterval2])
    {
      [(RTFamiliarityIndexResult *)self familiarityIndex];
      v10 = v9;
      [(RTFamiliarityIndexResult *)v6 familiarityIndex];
      v12 = v10 == v11;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dateInterval = [(RTFamiliarityIndexResult *)self dateInterval];
  [(RTFamiliarityIndexResult *)self familiarityIndex];
  v6 = [v3 stringWithFormat:@"dateInterval, %@, index, %.2f", dateInterval, v5];

  return v6;
}

@end