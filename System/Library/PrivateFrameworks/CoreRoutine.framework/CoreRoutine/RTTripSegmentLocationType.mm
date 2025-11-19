@interface RTTripSegmentLocationType
- (BOOL)isEqual:(id)a3;
- (RTTripSegmentLocationType)initWithCoder:(id)a3;
- (RTTripSegmentLocationType)initWithDateInterval:(id)a3 distanceInterval:(id)a4 locationType:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegmentLocationType

- (RTTripSegmentLocationType)initWithDateInterval:(id)a3 distanceInterval:(id)a4 locationType:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v18.receiver = self;
    v18.super_class = RTTripSegmentLocationType;
    v11 = [(RTTripSegmentLocationType *)&v18 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_dateInterval, a3);
      objc_storeStrong(&v12->_distanceInterval, a4);
      v12->_locationType = a5;
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
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_distanceInterval forKey:@"distanceInterval"];
  [v5 encodeInt64:self->_locationType forKey:@"locationType"];
}

- (RTTripSegmentLocationType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distanceInterval"];
  v7 = [v4 decodeIntForKey:@"locationType"];

  v8 = [(RTTripSegmentLocationType *)self initWithDateInterval:v5 distanceInterval:v6 locationType:v7];
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

  locationType = self->_locationType;
  v13 = [v4 locationType];

  if (locationType == v13)
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