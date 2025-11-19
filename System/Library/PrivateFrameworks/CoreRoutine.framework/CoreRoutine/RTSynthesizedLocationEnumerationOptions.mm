@interface RTSynthesizedLocationEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTSynthesizedLocationEnumerationOptions)init;
- (RTSynthesizedLocationEnumerationOptions)initWithCoder:(id)a3;
- (RTSynthesizedLocationEnumerationOptions)initWithDateInterval:(id)a3 preferredDownsamplingLevel:(int64_t)a4 batchSize:(unint64_t)a5 boundingBoxLocation:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSynthesizedLocationEnumerationOptions

- (RTSynthesizedLocationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTSynthesizedLocationEnumerationOptions *)self initWithDateInterval:v6 preferredDownsamplingLevel:0 batchSize:0 boundingBoxLocation:0];
  return v7;
}

- (RTSynthesizedLocationEnumerationOptions)initWithDateInterval:(id)a3 preferredDownsamplingLevel:(int64_t)a4 batchSize:(unint64_t)a5 boundingBoxLocation:(id)a6
{
  v12 = a3;
  v13 = a6;
  v14 = v13;
  if (v13 && ([v13 horizontalAccuracy], v15 <= 0.0))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: boundingBoxLocation.horizontalAccuracy > 0", buf, 2u);
    }

    v19 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = RTSynthesizedLocationEnumerationOptions;
    v16 = [(RTSynthesizedLocationEnumerationOptions *)&v24 init];
    if (v16)
    {
      if (v12)
      {
        v17 = [v12 copy];
      }

      else
      {
        v20 = objc_alloc(MEMORY[0x1E696AB80]);
        v6 = [MEMORY[0x1E695DF00] distantPast];
        v7 = [MEMORY[0x1E695DF00] distantFuture];
        v17 = [v20 initWithStartDate:v6 endDate:v7];
      }

      objc_storeStrong(&v16->_dateInterval, v17);
      if (!v12)
      {

        v17 = v6;
      }

      v16->_preferredDownsamplingLevel = a4;
      v16->_batchSize = a5;
      v21 = [v14 copy];
      boundingBoxLocation = v16->_boundingBoxLocation;
      v16->_boundingBoxLocation = v21;
    }

    self = v16;
    v19 = self;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTSynthesizedLocationEnumerationOptions *)self dateInterval];
  v6 = [(RTSynthesizedLocationEnumerationOptions *)self preferredDownsamplingLevel];
  v7 = [(RTSynthesizedLocationEnumerationOptions *)self batchSize];
  v8 = [(RTSynthesizedLocationEnumerationOptions *)self boundingBoxLocation];
  v9 = [v4 initWithDateInterval:v5 preferredDownsamplingLevel:v6 batchSize:v7 boundingBoxLocation:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_preferredDownsamplingLevel forKey:@"preferredDownsamplingLevel"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
}

- (RTSynthesizedLocationEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeIntegerForKey:@"preferredDownsamplingLevel"];
  v7 = [v4 decodeIntegerForKey:@"batchSize"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];

  v9 = [(RTSynthesizedLocationEnumerationOptions *)self initWithDateInterval:v5 preferredDownsamplingLevel:v6 batchSize:v7 boundingBoxLocation:v8];
  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTSynthesizedLocationEnumerationOptions *)self isEqualToOptions:v5];
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
    v21 = [(NSDateInterval *)v8 isEqual:v9];

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

  v21 = 1;
LABEL_7:

LABEL_8:
  preferredDownsamplingLevel = self->_preferredDownsamplingLevel;
  v11 = [v6 preferredDownsamplingLevel];
  batchSize = self->_batchSize;
  v13 = [v6 batchSize];
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
    v16 = [v6 boundingBoxLocation];
    v17 = [(CLLocation *)v15 isEqual:v16];

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
  if (preferredDownsamplingLevel != v11)
  {
    v18 = 0;
  }

  if (batchSize == v13)
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
  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [v4 stringFromDate];
  v6 = [(NSDateInterval *)self->_dateInterval endDate];
  v7 = [v6 stringFromDate];
  batchSize = self->_batchSize;
  v9 = [v3 stringWithFormat:@"start date, %@, end date, %@, horizontal accuracy, %lu, batchSize, %lu, boundingBoxLocation, %@", v5, v7, self->_preferredDownsamplingLevel, batchSize, self->_boundingBoxLocation];

  return v9;
}

@end