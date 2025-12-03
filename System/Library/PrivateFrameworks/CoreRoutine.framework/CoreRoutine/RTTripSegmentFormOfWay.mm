@interface RTTripSegmentFormOfWay
- (BOOL)isEqual:(id)equal;
- (RTTripSegmentFormOfWay)initWithCoder:(id)coder;
- (RTTripSegmentFormOfWay)initWithDateInterval:(id)interval distanceInterval:(id)distanceInterval geoFormOfWay:(int64_t)way;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripSegmentFormOfWay

- (RTTripSegmentFormOfWay)initWithDateInterval:(id)interval distanceInterval:(id)distanceInterval geoFormOfWay:(int64_t)way
{
  v23 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  distanceIntervalCopy = distanceInterval;
  v11 = distanceIntervalCopy;
  if (!intervalCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: dateInterval";
LABEL_15:
    _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_12;
  }

  if (!distanceIntervalCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: distanceInterval";
    goto LABEL_15;
  }

  v20.receiver = self;
  v20.super_class = RTTripSegmentFormOfWay;
  v12 = [(RTTripSegmentFormOfWay *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateInterval, interval);
    objc_storeStrong(&v13->_distanceInterval, distanceInterval);
    v13->_geoFormOfWay = way;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        v22 = v13;
        _os_log_debug_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_DEBUG, "tripSegmentFormOfWay, %{sensitive}@", buf, 0xCu);
      }
    }
  }

  self = v13;
  selfCopy = self;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeObject:self->_distanceInterval forKey:@"distanceInterval"];
  [coderCopy encodeInt64:self->_geoFormOfWay forKey:@"geoFormOfWay"];
}

- (RTTripSegmentFormOfWay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distanceInterval"];
  v7 = [coderCopy decodeIntForKey:@"geoFormOfWay"];

  v8 = [(RTTripSegmentFormOfWay *)self initWithDateInterval:v5 distanceInterval:v6 geoFormOfWay:v7];
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

  geoFormOfWay = self->_geoFormOfWay;
  geoFormOfWay = [equalCopy geoFormOfWay];

  if (geoFormOfWay == geoFormOfWay)
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
  v6 = [v3 stringWithFormat:@"dateInterval, %@, distanceInterval, %@, geoFormOfWay, %lu", v4, v5, self->_geoFormOfWay];

  return v6;
}

@end