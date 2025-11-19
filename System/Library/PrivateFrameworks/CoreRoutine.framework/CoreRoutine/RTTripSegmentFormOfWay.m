@interface RTTripSegmentFormOfWay
- (BOOL)isEqual:(id)a3;
- (RTTripSegmentFormOfWay)initWithCoder:(id)a3;
- (RTTripSegmentFormOfWay)initWithDateInterval:(id)a3 distanceInterval:(id)a4 geoFormOfWay:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegmentFormOfWay

- (RTTripSegmentFormOfWay)initWithDateInterval:(id)a3 distanceInterval:(id)a4 geoFormOfWay:(int64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      v15 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: dateInterval";
LABEL_15:
    _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_12;
  }

  if (!v10)
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
    objc_storeStrong(&v12->_dateInterval, a3);
    objc_storeStrong(&v13->_distanceInterval, a4);
    v13->_geoFormOfWay = a5;
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
  v15 = self;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_distanceInterval forKey:@"distanceInterval"];
  [v5 encodeInt64:self->_geoFormOfWay forKey:@"geoFormOfWay"];
}

- (RTTripSegmentFormOfWay)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distanceInterval"];
  v7 = [v4 decodeIntForKey:@"geoFormOfWay"];

  v8 = [(RTTripSegmentFormOfWay *)self initWithDateInterval:v5 distanceInterval:v6 geoFormOfWay:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  dateInterval = self->_dateInterval;
  v7 = [v4 dateInterval];
  v8 = [(NSDateInterval *)dateInterval isEqual:v7];

  distanceInterval = self->_distanceInterval;
  v10 = [v4 distanceInterval];
  v11 = [(RTDistanceInterval *)distanceInterval isEqual:v10];

  geoFormOfWay = self->_geoFormOfWay;
  v13 = [v4 geoFormOfWay];

  if (geoFormOfWay == v13)
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