@interface RTTripSegmentInertialDataEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTTripSegmentInertialDataEnumerationOptions)init;
- (RTTripSegmentInertialDataEnumerationOptions)initWithCoder:(id)coder;
- (RTTripSegmentInertialDataEnumerationOptions)initWithDateInterval:(id)interval;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RTTripSegmentInertialDataEnumerationOptions

- (RTTripSegmentInertialDataEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTTripSegmentInertialDataEnumerationOptions *)self initWithDateInterval:v6];
  return v7;
}

- (RTTripSegmentInertialDataEnumerationOptions)initWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = RTTripSegmentInertialDataEnumerationOptions;
  v7 = [(RTTripSegmentInertialDataEnumerationOptions *)&v11 init];
  if (v7)
  {
    if (intervalCopy)
    {
      v8 = [intervalCopy copy];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E696AB80]);
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v8 = [v9 initWithStartDate:distantPast endDate:distantFuture];
    }

    objc_storeStrong(&v7->_dateInterval, v8);
    if (!intervalCopy)
    {

      v8 = distantPast;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dateInterval = [(RTTripSegmentInertialDataEnumerationOptions *)self dateInterval];
  v6 = [v4 initWithDateInterval:dateInterval];

  return v6;
}

- (RTTripSegmentInertialDataEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v6 = [(RTTripSegmentInertialDataEnumerationOptions *)self initWithDateInterval:v5];
  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripSegmentInertialDataEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  dateInterval = self->_dateInterval;
  v8 = dateInterval;
  if (!dateInterval)
  {
    dateInterval = [optionsCopy dateInterval];
    if (!dateInterval)
    {
      v10 = 1;
LABEL_7:

      goto LABEL_8;
    }

    v8 = self->_dateInterval;
  }

  dateInterval2 = [v6 dateInterval];
  v10 = [(NSDateInterval *)v8 isEqual:dateInterval2];

  if (!dateInterval)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v8 = [v3 stringWithFormat:@"start date, %@, end date, %@", stringFromDate, stringFromDate2];

  return v8;
}

@end