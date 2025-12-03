@interface RTFetchFingerprintsOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTFetchFingerprintsOptions)init;
- (RTFetchFingerprintsOptions)initWithCoder:(id)coder;
- (RTFetchFingerprintsOptions)initWithDateInterval:(id)interval settledState:(unint64_t)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTFetchFingerprintsOptions

- (RTFetchFingerprintsOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTFetchFingerprintsOptions *)self initWithDateInterval:v6 settledState:2];
  return v7;
}

- (RTFetchFingerprintsOptions)initWithDateInterval:(id)interval settledState:(unint64_t)state
{
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = RTFetchFingerprintsOptions;
  v7 = [(RTFetchFingerprintsOptions *)&v15 init];
  if (v7)
  {
    if (intervalCopy)
    {
      v8 = [intervalCopy copy];
      dateInterval = v7->_dateInterval;
      v7->_dateInterval = v8;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696AB80]);
      dateInterval = [MEMORY[0x1E695DF00] distantPast];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v12 = [v10 initWithStartDate:dateInterval endDate:distantFuture];
      v13 = v7->_dateInterval;
      v7->_dateInterval = v12;
    }

    v7->_settledState = state;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dateInterval = self->_dateInterval;
  settledState = self->_settledState;

  return [v4 initWithDateInterval:dateInterval settledState:settledState];
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_settledState forKey:@"settledState"];
}

- (RTFetchFingerprintsOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeIntegerForKey:@"settledState"];

  v7 = [(RTFetchFingerprintsOptions *)self initWithDateInterval:v5 settledState:v6];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTFetchFingerprintsOptions *)self isEqualToOptions:v5];
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
  settledState = self->_settledState;
  if (settledState == [v6 settledState])
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settledState];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v6 = [v3 stringWithFormat:@"start date, %@, end date, %@, settledState, %lu", startDate, endDate, self->_settledState];

  return v6;
}

@end