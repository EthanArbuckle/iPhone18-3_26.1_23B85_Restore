@interface RTStoredLocationEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOptions:(id)options;
- (RTStoredLocationEnumerationOptions)init;
- (RTStoredLocationEnumerationOptions)initWithCoder:(id)coder;
- (RTStoredLocationEnumerationOptions)initWithDateInterval:(id)interval horizontalAccuracy:(double)accuracy batchSize:(unint64_t)size boundingBoxLocation:(id)location type:(int)type smoothingRequired:(BOOL)required downsampleRequired:(BOOL)downsampleRequired smoothingErrorThreshold:(double)self0 ascending:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStoredLocationEnumerationOptions

- (RTStoredLocationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:distantPast endDate:distantFuture];

  v7 = [(RTStoredLocationEnumerationOptions *)self initWithDateInterval:v6 horizontalAccuracy:0 batchSize:0 boundingBoxLocation:0.0];
  return v7;
}

- (RTStoredLocationEnumerationOptions)initWithDateInterval:(id)interval horizontalAccuracy:(double)accuracy batchSize:(unint64_t)size boundingBoxLocation:(id)location type:(int)type smoothingRequired:(BOOL)required downsampleRequired:(BOOL)downsampleRequired smoothingErrorThreshold:(double)self0 ascending:(BOOL)self1
{
  intervalCopy = interval;
  locationCopy = location;
  v22 = locationCopy;
  if (locationCopy)
  {
    [locationCopy horizontalAccuracy];
    if (v23 <= 0.0)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v27 = "Invalid parameter not satisfying: boundingBoxLocation.horizontalAccuracy > 0";
        goto LABEL_18;
      }

LABEL_10:

      selfCopy = 0;
      goto LABEL_16;
    }
  }

  if (type >= 0xF)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: type >= kCLLocationType_Unknown && type <= kCLLocationType_Max";
LABEL_18:
      _os_log_error_impl(&dword_1BF1C4000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v37.receiver = self;
  v37.super_class = RTStoredLocationEnumerationOptions;
  v24 = [(RTStoredLocationEnumerationOptions *)&v37 init];
  if (v24)
  {
    if (intervalCopy)
    {
      v25 = [intervalCopy copy];
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x1E696AB80]);
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      v36 = distantPast;
      v32 = distantPast;
      v11 = distantFuture;
      v25 = [v29 initWithStartDate:v32 endDate:distantFuture];
    }

    objc_storeStrong(&v24->_dateInterval, v25);
    if (!intervalCopy)
    {

      v25 = v36;
    }

    v24->_horizontalAccuracy = accuracy;
    v24->_batchSize = size;
    v33 = [v22 copy];
    boundingBoxLocation = v24->_boundingBoxLocation;
    v24->_boundingBoxLocation = v33;

    v24->_type = type;
    v24->_smoothingRequired = required;
    v24->_downsampleRequired = downsampleRequired;
    v24->_smoothingErrorThreshold = threshold;
    v24->_ascending = ascending;
  }

  self = v24;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dateInterval = [(RTStoredLocationEnumerationOptions *)self dateInterval];
  [(RTStoredLocationEnumerationOptions *)self horizontalAccuracy];
  v7 = v6;
  batchSize = [(RTStoredLocationEnumerationOptions *)self batchSize];
  boundingBoxLocation = [(RTStoredLocationEnumerationOptions *)self boundingBoxLocation];
  type = [(RTStoredLocationEnumerationOptions *)self type];
  smoothingRequired = [(RTStoredLocationEnumerationOptions *)self smoothingRequired];
  downsampleRequired = [(RTStoredLocationEnumerationOptions *)self downsampleRequired];
  [(RTStoredLocationEnumerationOptions *)self smoothingErrorThreshold];
  v14 = v13;
  LOBYTE(v17) = [(RTStoredLocationEnumerationOptions *)self ascending];
  v15 = [v4 initWithDateInterval:dateInterval horizontalAccuracy:batchSize batchSize:boundingBoxLocation boundingBoxLocation:type type:smoothingRequired smoothingRequired:downsampleRequired downsampleRequired:v7 smoothingErrorThreshold:v14 ascending:v17];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
  [coderCopy encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_smoothingRequired forKey:@"smoothingRequired"];
  [coderCopy encodeBool:self->_downsampleRequired forKey:@"downsampleRequired"];
  [coderCopy encodeDouble:@"smoothingErrorThreshold" forKey:self->_smoothingErrorThreshold];
  [coderCopy encodeBool:self->_ascending forKey:@"ascending"];
}

- (RTStoredLocationEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  [coderCopy decodeDoubleForKey:@"horizontalAccuracy"];
  v7 = v6;
  v8 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];
  v10 = [coderCopy decodeIntegerForKey:@"type"];
  v11 = [coderCopy decodeBoolForKey:@"smoothingRequired"];
  v12 = [coderCopy decodeBoolForKey:@"downsampleRequired"];
  [coderCopy decodeDoubleForKey:@"smoothingErrorThreshold"];
  v14 = v13;
  v15 = [coderCopy decodeBoolForKey:@"ascending"];

  LOBYTE(v18) = v15;
  v16 = [(RTStoredLocationEnumerationOptions *)self initWithDateInterval:v5 horizontalAccuracy:v8 batchSize:v9 boundingBoxLocation:v10 type:v11 smoothingRequired:v12 downsampleRequired:v7 smoothingErrorThreshold:v14 ascending:v18];

  return v16;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredLocationEnumerationOptions *)self isEqualToOptions:v5];
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
    v32 = [(NSDateInterval *)v8 isEqual:dateInterval];

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

  v32 = 1;
LABEL_7:

LABEL_8:
  horizontalAccuracy = self->_horizontalAccuracy;
  [v6 horizontalAccuracy];
  v12 = v11;
  batchSize = self->_batchSize;
  batchSize = [v6 batchSize];
  boundingBoxLocation = self->_boundingBoxLocation;
  v16 = boundingBoxLocation;
  if (boundingBoxLocation)
  {
    goto LABEL_11;
  }

  dateInterval = [v6 boundingBoxLocation];
  if (dateInterval)
  {
    v16 = self->_boundingBoxLocation;
LABEL_11:
    boundingBoxLocation = [v6 boundingBoxLocation];
    v18 = [(CLLocation *)v16 isEqual:boundingBoxLocation];

    if (boundingBoxLocation)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = 1;
LABEL_14:

LABEL_15:
  smoothingRequired = self->_smoothingRequired;
  smoothingRequired = [v6 smoothingRequired];
  downsampleRequired = self->_downsampleRequired;
  downsampleRequired = [v6 downsampleRequired];
  smoothingErrorThreshold = self->_smoothingErrorThreshold;
  [v6 smoothingErrorThreshold];
  v25 = v24;
  ascending = self->_ascending;
  ascending = [v6 ascending];
  v28 = v32;
  if (horizontalAccuracy != v12)
  {
    v28 = 0;
  }

  if (batchSize != batchSize)
  {
    v28 = 0;
  }

  v29 = v28 & v18;
  if ((smoothingRequired & 1) != smoothingRequired)
  {
    v29 = 0;
  }

  if ((downsampleRequired & 1) != downsampleRequired)
  {
    v29 = 0;
  }

  if (smoothingErrorThreshold != v25)
  {
    v29 = 0;
  }

  if ((ascending & 1) == ascending)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_dateInterval hash];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_horizontalAccuracy];
  v4 = [v19 hash] ^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v6 = [v5 hash];
  v7 = v4 ^ v6 ^ [(CLLocation *)self->_boundingBoxLocation hash];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
  v9 = [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_smoothingRequired];
  v11 = v9 ^ [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_downsampleRequired];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smoothingErrorThreshold];
  v15 = [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v8 = stringFromDate2;
  v9 = @"NO";
  if (self->_smoothingRequired)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_downsampleRequired)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_ascending)
  {
    v9 = @"YES";
  }

  v12 = [v3 stringWithFormat:@"start date, %@, end date, %@, horizontal accuracy, %lf, batchSize, %lu, boundingBoxLocation, %@, type, %lu, smoothingRequired, %@, downsampleRequired, %@, smoothingErrorThreshold, %lf, ascending, %@", stringFromDate, stringFromDate2, *&self->_horizontalAccuracy, self->_batchSize, self->_boundingBoxLocation, self->_type, v10, v11, *&self->_smoothingErrorThreshold, v9];

  return v12;
}

@end