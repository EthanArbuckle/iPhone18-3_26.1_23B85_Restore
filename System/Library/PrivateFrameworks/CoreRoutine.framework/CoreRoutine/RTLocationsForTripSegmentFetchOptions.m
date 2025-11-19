@interface RTLocationsForTripSegmentFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTLocationsForTripSegmentFetchOptions)initWithCoder:(id)a3;
- (RTLocationsForTripSegmentFetchOptions)initWithDateInterval:(id)a3 preferredDownsamplingLevel:(int64_t)a4 boundingBoxLocation:(id)a5 batchSize:(unint64_t)a6 offset:(unint64_t)a7;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4 batchSize:(unint64_t)a5 offset:(unint64_t)a6;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4 boundingBoxLocation:(id)a5 batchSize:(unint64_t)a6 offset:(unint64_t)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocationsForTripSegmentFetchOptions

- (RTLocationsForTripSegmentFetchOptions)initWithDateInterval:(id)a3 preferredDownsamplingLevel:(int64_t)a4 boundingBoxLocation:(id)a5 batchSize:(unint64_t)a6 offset:(unint64_t)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v25.receiver = self;
  v25.super_class = RTLocationsForTripSegmentFetchOptions;
  v16 = [(RTLocationsForTripSegmentFetchOptions *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dateInterval, a3);
    v17->_preferredDownsamplingLevel = a4;
    objc_storeStrong(&v17->_boundingBoxLocation, a5);
    v17->_batchSize = a6;
    v17->_offset = a7;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v24 = [v14 description];
        *buf = 138413570;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        v32 = 2048;
        v33 = a4;
        v34 = 2048;
        v35 = a6;
        v36 = 2048;
        v37 = a7;
        _os_log_debug_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_DEBUG, "%@ %@, dateInterval, %@,preferredDownsamplingLevel,%ld,batchSize,%lu,offset,%lu.", buf, 0x3Eu);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4 boundingBoxLocation:(id)a5 batchSize:(unint64_t)a6 offset:(unint64_t)a7
{
  v12 = a5;
  v13 = [a3 dateInterval];
  v14 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v13 preferredDownsamplingLevel:a4 boundingBoxLocation:v12 batchSize:a6 offset:a7];

  return v14;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4 batchSize:(unint64_t)a5 offset:(unint64_t)a6
{
  v10 = [a3 dateInterval];
  v11 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v10 preferredDownsamplingLevel:a4 boundingBoxLocation:0 batchSize:a5 offset:a6];

  return v11;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3 preferredDownsamplingLevel:(int64_t)a4
{
  v6 = [a3 dateInterval];
  v7 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v6 preferredDownsamplingLevel:a4 boundingBoxLocation:0 batchSize:0 offset:0];

  return v7;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)a3
{
  v4 = [a3 dateInterval];
  v5 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v4 preferredDownsamplingLevel:0 boundingBoxLocation:0 batchSize:0 offset:0];

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocationsForTripSegmentFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  v3 = [v5 dateInterval];
  if (!v3)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    v8 = [v6 dateInterval];
    if (v8)
    {
      v9 = v8;
      v10 = self->_dateInterval;
      v11 = [v6 dateInterval];
      v12 = [(NSDateInterval *)v10 isEqualToDateInterval:v11];

      if (dateInterval)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
      if (dateInterval)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  if (!self->_batchSize)
  {
    if (![v6 batchSize])
    {
      v14 = 1;
      goto LABEL_19;
    }

    if (!self->_batchSize)
    {
      goto LABEL_17;
    }
  }

LABEL_12:
  if ([v6 batchSize])
  {
    batchSize = self->_batchSize;
    v14 = batchSize == [v6 batchSize];
  }

  else
  {
LABEL_17:
    v14 = 0;
  }

LABEL_19:
  if (!self->_offset)
  {
    if (![v6 offset])
    {
      LOBYTE(offset) = 1;
      if (v12)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    offset = self->_offset;
    if (!offset)
    {
LABEL_27:
      if (v12)
      {
        goto LABEL_28;
      }

LABEL_30:
      v17 = 0;
      goto LABEL_31;
    }
  }

  if (![v6 offset])
  {
    LOBYTE(offset) = 0;
    goto LABEL_27;
  }

  v15 = self->_offset;
  LOBYTE(offset) = v15 == [v6 offset];
  if (!v12)
  {
    goto LABEL_30;
  }

LABEL_28:
  v17 = v14 & offset;
LABEL_31:

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_preferredDownsamplingLevel forKey:@"downsamplingLevel"];
  [v5 encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
  [v5 encodeInteger:self->_offset forKey:@"offset"];
}

- (RTLocationsForTripSegmentFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeIntegerForKey:@"downsamplingLevel"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];
  v8 = [v4 decodeIntegerForKey:@"batchSize"];
  v9 = [v4 decodeIntegerForKey:@"offset"];

  v10 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v5 preferredDownsamplingLevel:v6 boundingBoxLocation:v7 batchSize:v8 offset:v9];
  return v10;
}

@end