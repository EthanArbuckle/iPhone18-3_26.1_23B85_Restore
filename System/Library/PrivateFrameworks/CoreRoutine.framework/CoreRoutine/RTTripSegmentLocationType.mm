@interface RTTripSegmentLocationType
- (BOOL)isEqual:(id)equal;
- (RTTripSegmentLocationType)initWithCoder:(id)coder;
- (RTTripSegmentLocationType)initWithDateInterval:(id)interval distanceInterval:(id)distanceInterval locationType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripSegmentLocationType

- (RTTripSegmentLocationType)initWithDateInterval:(id)interval distanceInterval:(id)distanceInterval locationType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  distanceIntervalCopy = distanceInterval;
  if (intervalCopy)
  {
    v18.receiver = self;
    v18.super_class = RTTripSegmentLocationType;
    v11 = [(RTTripSegmentLocationType *)&v18 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_dateInterval, interval);
      objc_storeStrong(&v12->_distanceInterval, distanceInterval);
      v12->_locationType = type;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_debug_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_DEBUG, "tripSegmentLocationType, %@", buf, 0xCu);
        }
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_distanceInterval forKey:@"distanceInterval"];
  [coderCopy encodeInt64:self->_locationType forKey:@"locationType"];
}

- (RTTripSegmentLocationType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distanceInterval"];
  v7 = [coderCopy decodeIntForKey:@"locationType"];

  v8 = [(RTTripSegmentLocationType *)self initWithDateInterval:v5 distanceInterval:v6 locationType:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  dateInterval = self->_dateInterval;
  dateInterval = [equalCopy dateInterval];
  v8 = [(NSDateInterval *)dateInterval isEqual:dateInterval];

  distanceInterval = self->_distanceInterval;
  distanceInterval = [equalCopy distanceInterval];
  v11 = [(RTDistanceInterval *)distanceInterval isEqual:distanceInterval];

  locationType = self->_locationType;
  locationType = [equalCopy locationType];

  if (locationType == locationType)
  {
    v14 = v8;
  }

  else
  {
    v14 = 0;
  }

  if (!v11)
  {
    v14 = 0;
  }

  return v5 && v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSDateInterval *)self->_dateInterval description];
  v5 = [(RTDistanceInterval *)self->_distanceInterval description];
  v6 = [v3 stringWithFormat:@"dateInterval, %@, distanceInterval, %@, locationType, %ld", v4, v5, self->_locationType];

  return v6;
}

@end