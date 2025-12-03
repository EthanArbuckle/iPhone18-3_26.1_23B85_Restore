@interface RTSynthesizedLocationEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTSynthesizedLocationEnumerationOptions)init;
- (RTSynthesizedLocationEnumerationOptions)initWithCoder:(id)coder;
- (RTSynthesizedLocationEnumerationOptions)initWithDateInterval:(id)interval preferredDownsamplingLevel:(int64_t)level batchSize:(unint64_t)size boundingBoxLocation:(id)location;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSynthesizedLocationEnumerationOptions

- (RTSynthesizedLocationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTSynthesizedLocationEnumerationOptions *)self initWithDateInterval:v6 preferredDownsamplingLevel:0 batchSize:0 boundingBoxLocation:0];
  return v7;
}

- (RTSynthesizedLocationEnumerationOptions)initWithDateInterval:(id)interval preferredDownsamplingLevel:(int64_t)level batchSize:(unint64_t)size boundingBoxLocation:(id)location
{
  intervalCopy = interval;
  locationCopy = location;
  v14 = locationCopy;
  if (locationCopy && ([locationCopy horizontalAccuracy], v15 <= 0.0))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: boundingBoxLocation.horizontalAccuracy > 0", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = RTSynthesizedLocationEnumerationOptions;
    v16 = [(RTSynthesizedLocationEnumerationOptions *)&v24 init];
    if (v16)
    {
      if (intervalCopy)
      {
        v17 = [intervalCopy copy];
      }

      else
      {
        v20 = objc_alloc(MEMORY[0x1E696AB80]);
        distantPast = [MEMORY[0x1E695DF00] distantPast];
        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        v17 = [v20 initWithStartDate:distantPast endDate:distantFuture];
      }

      objc_storeStrong(&v16->_dateInterval, v17);
      if (!intervalCopy)
      {

        v17 = distantPast;
      }

      v16->_preferredDownsamplingLevel = level;
      v16->_batchSize = size;
      v21 = [v14 copy];
      boundingBoxLocation = v16->_boundingBoxLocation;
      v16->_boundingBoxLocation = v21;
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dateInterval = [(RTSynthesizedLocationEnumerationOptions *)self dateInterval];
  preferredDownsamplingLevel = [(RTSynthesizedLocationEnumerationOptions *)self preferredDownsamplingLevel];
  batchSize = [(RTSynthesizedLocationEnumerationOptions *)self batchSize];
  boundingBoxLocation = [(RTSynthesizedLocationEnumerationOptions *)self boundingBoxLocation];
  v9 = [v4 initWithDateInterval:dateInterval preferredDownsamplingLevel:preferredDownsamplingLevel batchSize:batchSize boundingBoxLocation:boundingBoxLocation];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_preferredDownsamplingLevel forKey:@"preferredDownsamplingLevel"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
}

- (RTSynthesizedLocationEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeIntegerForKey:@"preferredDownsamplingLevel"];
  v7 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];

  v9 = [(RTSynthesizedLocationEnumerationOptions *)self initWithDateInterval:v5 preferredDownsamplingLevel:v6 batchSize:v7 boundingBoxLocation:v8];
  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTSynthesizedLocationEnumerationOptions *)self isEqualToOptions:v5];
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
    v21 = [(NSDateInterval *)v8 isEqual:dateInterval];

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

  v21 = 1;
LABEL_7:

LABEL_8:
  preferredDownsamplingLevel = self->_preferredDownsamplingLevel;
  preferredDownsamplingLevel = [v6 preferredDownsamplingLevel];
  batchSize = self->_batchSize;
  batchSize = [v6 batchSize];
  boundingBoxLocation = self->_boundingBoxLocation;
  v15 = boundingBoxLocation;
  if (boundingBoxLocation)
  {
    goto LABEL_11;
  }

  dateInterval = [v6 boundingBoxLocation];
  if (dateInterval)
  {
    v15 = self->_boundingBoxLocation;
LABEL_11:
    boundingBoxLocation = [v6 boundingBoxLocation];
    v17 = [(CLLocation *)v15 isEqual:boundingBoxLocation];

    if (boundingBoxLocation)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = 1;
LABEL_14:

LABEL_15:
  v18 = v21;
  if (preferredDownsamplingLevel != preferredDownsamplingLevel)
  {
    v18 = 0;
  }

  if (batchSize == batchSize)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19 & v17;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_dateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredDownsamplingLevel];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v7 = [v6 hash];
  v8 = v7 ^ [(CLLocation *)self->_boundingBoxLocation hash];

  return v5 ^ v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  batchSize = self->_batchSize;
  v9 = [v3 stringWithFormat:@"start date, %@, end date, %@, horizontal accuracy, %lu, batchSize, %lu, boundingBoxLocation, %@", stringFromDate, stringFromDate2, self->_preferredDownsamplingLevel, batchSize, self->_boundingBoxLocation];

  return v9;
}

@end