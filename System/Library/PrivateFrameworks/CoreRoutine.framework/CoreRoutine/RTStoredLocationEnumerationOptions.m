@interface RTStoredLocationEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTStoredLocationEnumerationOptions)init;
- (RTStoredLocationEnumerationOptions)initWithCoder:(id)a3;
- (RTStoredLocationEnumerationOptions)initWithDateInterval:(id)a3 horizontalAccuracy:(double)a4 batchSize:(unint64_t)a5 boundingBoxLocation:(id)a6 type:(int)a7 smoothingRequired:(BOOL)a8 downsampleRequired:(BOOL)a9 smoothingErrorThreshold:(double)a10 ascending:(BOOL)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredLocationEnumerationOptions

- (RTStoredLocationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTStoredLocationEnumerationOptions *)self initWithDateInterval:v6 horizontalAccuracy:0 batchSize:0 boundingBoxLocation:0.0];
  return v7;
}

- (RTStoredLocationEnumerationOptions)initWithDateInterval:(id)a3 horizontalAccuracy:(double)a4 batchSize:(unint64_t)a5 boundingBoxLocation:(id)a6 type:(int)a7 smoothingRequired:(BOOL)a8 downsampleRequired:(BOOL)a9 smoothingErrorThreshold:(double)a10 ascending:(BOOL)a11
{
  v20 = a3;
  v21 = a6;
  v22 = v21;
  if (v21)
  {
    [v21 horizontalAccuracy];
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

      v28 = 0;
      goto LABEL_16;
    }
  }

  if (a7 >= 0xF)
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
    if (v20)
    {
      v25 = [v20 copy];
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x1E696AB80]);
      v30 = [MEMORY[0x1E695DF00] distantPast];
      v31 = [MEMORY[0x1E695DF00] distantFuture];
      v36 = v30;
      v32 = v30;
      v11 = v31;
      v25 = [v29 initWithStartDate:v32 endDate:v31];
    }

    objc_storeStrong(&v24->_dateInterval, v25);
    if (!v20)
    {

      v25 = v36;
    }

    v24->_horizontalAccuracy = a4;
    v24->_batchSize = a5;
    v33 = [v22 copy];
    boundingBoxLocation = v24->_boundingBoxLocation;
    v24->_boundingBoxLocation = v33;

    v24->_type = a7;
    v24->_smoothingRequired = a8;
    v24->_downsampleRequired = a9;
    v24->_smoothingErrorThreshold = a10;
    v24->_ascending = a11;
  }

  self = v24;
  v28 = self;
LABEL_16:

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTStoredLocationEnumerationOptions *)self dateInterval];
  [(RTStoredLocationEnumerationOptions *)self horizontalAccuracy];
  v7 = v6;
  v8 = [(RTStoredLocationEnumerationOptions *)self batchSize];
  v9 = [(RTStoredLocationEnumerationOptions *)self boundingBoxLocation];
  v10 = [(RTStoredLocationEnumerationOptions *)self type];
  v11 = [(RTStoredLocationEnumerationOptions *)self smoothingRequired];
  v12 = [(RTStoredLocationEnumerationOptions *)self downsampleRequired];
  [(RTStoredLocationEnumerationOptions *)self smoothingErrorThreshold];
  v14 = v13;
  LOBYTE(v17) = [(RTStoredLocationEnumerationOptions *)self ascending];
  v15 = [v4 initWithDateInterval:v5 horizontalAccuracy:v8 batchSize:v9 boundingBoxLocation:v10 type:v11 smoothingRequired:v12 downsampleRequired:v7 smoothingErrorThreshold:v14 ascending:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeDouble:@"horizontalAccuracy" forKey:self->_horizontalAccuracy];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeBool:self->_smoothingRequired forKey:@"smoothingRequired"];
  [v5 encodeBool:self->_downsampleRequired forKey:@"downsampleRequired"];
  [v5 encodeDouble:@"smoothingErrorThreshold" forKey:self->_smoothingErrorThreshold];
  [v5 encodeBool:self->_ascending forKey:@"ascending"];
}

- (RTStoredLocationEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  [v4 decodeDoubleForKey:@"horizontalAccuracy"];
  v7 = v6;
  v8 = [v4 decodeIntegerForKey:@"batchSize"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];
  v10 = [v4 decodeIntegerForKey:@"type"];
  v11 = [v4 decodeBoolForKey:@"smoothingRequired"];
  v12 = [v4 decodeBoolForKey:@"downsampleRequired"];
  [v4 decodeDoubleForKey:@"smoothingErrorThreshold"];
  v14 = v13;
  v15 = [v4 decodeBoolForKey:@"ascending"];

  LOBYTE(v18) = v15;
  v16 = [(RTStoredLocationEnumerationOptions *)self initWithDateInterval:v5 horizontalAccuracy:v8 batchSize:v9 boundingBoxLocation:v10 type:v11 smoothingRequired:v12 downsampleRequired:v7 smoothingErrorThreshold:v14 ascending:v18];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredLocationEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  v8 = dateInterval;
  if (dateInterval)
  {
LABEL_4:
    v9 = [v6 dateInterval];
    v32 = [(NSDateInterval *)v8 isEqual:v9];

    if (dateInterval)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v5 dateInterval];
  if (v3)
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
  v14 = [v6 batchSize];
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
    v17 = [v6 boundingBoxLocation];
    v18 = [(CLLocation *)v16 isEqual:v17];

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
  v20 = [v6 smoothingRequired];
  downsampleRequired = self->_downsampleRequired;
  v22 = [v6 downsampleRequired];
  smoothingErrorThreshold = self->_smoothingErrorThreshold;
  [v6 smoothingErrorThreshold];
  v25 = v24;
  ascending = self->_ascending;
  v27 = [v6 ascending];
  v28 = v32;
  if (horizontalAccuracy != v12)
  {
    v28 = 0;
  }

  if (batchSize != v14)
  {
    v28 = 0;
  }

  v29 = v28 & v18;
  if ((v20 & 1) != smoothingRequired)
  {
    v29 = 0;
  }

  if ((v22 & 1) != downsampleRequired)
  {
    v29 = 0;
  }

  if (smoothingErrorThreshold != v25)
  {
    v29 = 0;
  }

  if ((v27 & 1) == ascending)
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
  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [v4 stringFromDate];
  v6 = [(NSDateInterval *)self->_dateInterval endDate];
  v7 = [v6 stringFromDate];
  v8 = v7;
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

  v12 = [v3 stringWithFormat:@"start date, %@, end date, %@, horizontal accuracy, %lf, batchSize, %lu, boundingBoxLocation, %@, type, %lu, smoothingRequired, %@, downsampleRequired, %@, smoothingErrorThreshold, %lf, ascending, %@", v5, v7, *&self->_horizontalAccuracy, self->_batchSize, self->_boundingBoxLocation, self->_type, v10, v11, *&self->_smoothingErrorThreshold, v9];

  return v12;
}

@end