@interface RTLocationsForTripSegmentFetchOptions
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFetchOptions:(id)options;
- (RTLocationsForTripSegmentFetchOptions)initWithCoder:(id)coder;
- (RTLocationsForTripSegmentFetchOptions)initWithDateInterval:(id)interval preferredDownsamplingLevel:(int64_t)level boundingBoxLocation:(id)location batchSize:(unint64_t)size offset:(unint64_t)offset;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level batchSize:(unint64_t)size offset:(unint64_t)offset;
- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level boundingBoxLocation:(id)location batchSize:(unint64_t)size offset:(unint64_t)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocationsForTripSegmentFetchOptions

- (RTLocationsForTripSegmentFetchOptions)initWithDateInterval:(id)interval preferredDownsamplingLevel:(int64_t)level boundingBoxLocation:(id)location batchSize:(unint64_t)size offset:(unint64_t)offset
{
  v38 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  locationCopy = location;
  v25.receiver = self;
  v25.super_class = RTLocationsForTripSegmentFetchOptions;
  v16 = [(RTLocationsForTripSegmentFetchOptions *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_dateInterval, interval);
    v17->_preferredDownsamplingLevel = level;
    objc_storeStrong(&v17->_boundingBoxLocation, location);
    v17->_batchSize = size;
    v17->_offset = offset;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v24 = [intervalCopy description];
        *buf = 138413570;
        v27 = v22;
        v28 = 2112;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        v32 = 2048;
        levelCopy = level;
        v34 = 2048;
        sizeCopy = size;
        v36 = 2048;
        offsetCopy = offset;
        _os_log_debug_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_DEBUG, "%@ %@, dateInterval, %@,preferredDownsamplingLevel,%ld,batchSize,%lu,offset,%lu.", buf, 0x3Eu);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level boundingBoxLocation:(id)location batchSize:(unint64_t)size offset:(unint64_t)offset
{
  locationCopy = location;
  dateInterval = [segment dateInterval];
  v14 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:dateInterval preferredDownsamplingLevel:level boundingBoxLocation:locationCopy batchSize:size offset:offset];

  return v14;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level batchSize:(unint64_t)size offset:(unint64_t)offset
{
  dateInterval = [segment dateInterval];
  v11 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:dateInterval preferredDownsamplingLevel:level boundingBoxLocation:0 batchSize:size offset:offset];

  return v11;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment preferredDownsamplingLevel:(int64_t)level
{
  dateInterval = [segment dateInterval];
  v7 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:dateInterval preferredDownsamplingLevel:level boundingBoxLocation:0 batchSize:0 offset:0];

  return v7;
}

- (RTLocationsForTripSegmentFetchOptions)initWithTripSegment:(id)segment
{
  dateInterval = [segment dateInterval];
  v5 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:dateInterval preferredDownsamplingLevel:0 boundingBoxLocation:0 batchSize:0 offset:0];

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTLocationsForTripSegmentFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)options
{
  optionsCopy = options;
  v6 = optionsCopy;
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    goto LABEL_2;
  }

  dateInterval = [optionsCopy dateInterval];
  if (!dateInterval)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (self->_dateInterval)
  {
LABEL_2:
    dateInterval2 = [v6 dateInterval];
    if (dateInterval2)
    {
      v9 = dateInterval2;
      v10 = self->_dateInterval;
      dateInterval3 = [v6 dateInterval];
      v12 = [(NSDateInterval *)v10 isEqualToDateInterval:dateInterval3];

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

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInteger:self->_preferredDownsamplingLevel forKey:@"downsamplingLevel"];
  [coderCopy encodeObject:self->_boundingBoxLocation forKey:@"boundingBoxLocation"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
  [coderCopy encodeInteger:self->_offset forKey:@"offset"];
}

- (RTLocationsForTripSegmentFetchOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeIntegerForKey:@"downsamplingLevel"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boundingBoxLocation"];
  v8 = [coderCopy decodeIntegerForKey:@"batchSize"];
  v9 = [coderCopy decodeIntegerForKey:@"offset"];

  v10 = [(RTLocationsForTripSegmentFetchOptions *)self initWithDateInterval:v5 preferredDownsamplingLevel:v6 boundingBoxLocation:v7 batchSize:v8 offset:v9];
  return v10;
}

@end