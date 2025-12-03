@interface RTStoredElevationEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTStoredElevationEnumerationOptions)init;
- (RTStoredElevationEnumerationOptions)initWithCoder:(id)coder;
- (RTStoredElevationEnumerationOptions)initWithDateInterval:(id)interval batchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredElevationEnumerationOptions

- (RTStoredElevationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTStoredElevationEnumerationOptions *)self initWithDateInterval:v6 batchSize:0];
  return v7;
}

- (RTStoredElevationEnumerationOptions)initWithDateInterval:(id)interval batchSize:(unint64_t)size
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = RTStoredElevationEnumerationOptions;
  v8 = [(RTStoredElevationEnumerationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, interval);
    v9->_batchSize = size;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dateInterval = self->_dateInterval;
  batchSize = self->_batchSize;

  return [v4 initWithDateInterval:dateInterval batchSize:batchSize];
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
}

- (RTStoredElevationEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeIntegerForKey:@"batchSize"];

  v7 = [(RTStoredElevationEnumerationOptions *)self initWithDateInterval:v5 batchSize:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredElevationEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  dateInterval = self->_dateInterval;
  v8 = dateInterval;
  if (dateInterval)
  {
LABEL_4:
    dateInterval = [v6 dateInterval];
    v10 = [(NSDateInterval *)v8 isEqual:dateInterval];

    if (dateInterval)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dateInterval2 = [optionsCopy dateInterval];
  if (dateInterval2)
  {
    v8 = self->_dateInterval;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  batchSize = self->_batchSize;
  if (batchSize == [v6 batchSize])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_dateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end