@interface RTTripSegmentRoadClass
- (BOOL)isEqual:(id)a3;
- (RTTripSegmentRoadClass)initWithCoder:(id)a3;
- (RTTripSegmentRoadClass)initWithDateInterval:(id)a3 distanceInterval:(id)a4 geoRoadClass:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegmentRoadClass

- (RTTripSegmentRoadClass)initWithDateInterval:(id)a3 distanceInterval:(id)a4 geoRoadClass:(int64_t)a5
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
  v20.super_class = RTTripSegmentRoadClass;
  v12 = [(RTTripSegmentRoadClass *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateInterval, a3);
    objc_storeStrong(&v13->_distanceInterval, a4);
    v13->_geoRoadClass = a5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138739971;
        v22 = v13;
        _os_log_debug_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_DEBUG, "tripSegmentRoadClass, %{sensitive}@", buf, 0xCu);
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
  [v5 encodeInt64:self->_geoRoadClass forKey:@"geoRoadClass"];
}

- (RTTripSegmentRoadClass)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distanceInterval"];
  v7 = [v4 decodeIntForKey:@"geoRoadClass"];

  v8 = [(RTTripSegmentRoadClass *)self initWithDateInterval:v5 distanceInterval:v6 geoRoadClass:v7];
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

  geoRoadClass = self->_geoRoadClass;
  v13 = [v4 geoRoadClass];

  v14 = geoRoadClass == v13 && v11;
  if (!v8)
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
  v6 = [v3 stringWithFormat:@"dateInterval, %@, distanceInterval, %@, geoRoadClass, %ld", v4, v5, self->_geoRoadClass];

  return v6;
}

@end