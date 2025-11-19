@interface RTTripSegmentMetadataFetchOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFetchOptions:(id)a3;
- (RTTripSegmentMetadataFetchOptions)initWithCoder:(id)a3;
- (RTTripSegmentMetadataFetchOptions)initWithDateInterval:(id)a3 fetchRoadClass:(BOOL)a4 fetchFormOfWay:(BOOL)a5 fetchLocationType:(BOOL)a6 fetchPreferredNames:(BOOL)a7;
- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripSegmentMetadataFetchOptions

- (RTTripSegmentMetadataFetchOptions)initWithDateInterval:(id)a3 fetchRoadClass:(BOOL)a4 fetchFormOfWay:(BOOL)a5 fetchLocationType:(BOOL)a6 fetchPreferredNames:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v24.receiver = self;
  v24.super_class = RTTripSegmentMetadataFetchOptions;
  v15 = [(RTTripSegmentMetadataFetchOptions *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dateInterval, a3);
    v16->_fetchRoadClass = v10;
    v16->_fetchFormOfWay = v9;
    v16->_fetchLocationType = v8;
    v16->_fetchPreferredNames = v7;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = [v14 description];
        *buf = 138413827;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        v31 = 1029;
        v32 = v10;
        v33 = 1029;
        v34 = v9;
        v35 = 1024;
        v36 = v8;
        v37 = 1029;
        v38 = v7;
        _os_log_debug_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_DEBUG, "%@ %@, dateInterval,%@,fetchRoadClass,%{sensitive}d,fetchFormOfWay,%{sensitive}d,fetchLocationType,%d,fetchPreferredNames,%{sensitive}d", buf, 0x38u);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (RTTripSegmentMetadataFetchOptions)initWithTripSegment:(id)a3
{
  v4 = [a3 dateInterval];
  v5 = [(RTTripSegmentMetadataFetchOptions *)self initWithDateInterval:v4 fetchRoadClass:1 fetchFormOfWay:1 fetchLocationType:1 fetchPreferredNames:1];

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripSegmentMetadataFetchOptions *)self isEqualToFetchOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToFetchOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  if (!dateInterval)
  {
    v3 = [v5 dateInterval];
    if (v3)
    {
      if (self->_dateInterval)
      {
        goto LABEL_2;
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_2:
  v8 = [v6 dateInterval];
  if (v8)
  {
    v9 = v8;
    v10 = self->_dateInterval;
    v11 = [v6 dateInterval];
    v12 = [(NSDateInterval *)v10 isEqualToDateInterval:v11];

    if (!dateInterval)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!dateInterval)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  fetchRoadClass = self->_fetchRoadClass;
  if (fetchRoadClass == [v6 fetchRoadClass] && (fetchFormOfWay = self->_fetchFormOfWay, fetchFormOfWay == objc_msgSend(v6, "fetchFormOfWay")) && (fetchLocationType = self->_fetchLocationType, fetchLocationType == objc_msgSend(v6, "fetchLocationType")))
  {
    fetchPreferredNames = self->_fetchPreferredNames;
    v17 = fetchPreferredNames == [v6 fetchPreferredNames];
  }

  else
  {
    v17 = 0;
  }

  return v12 & v17;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeBool:self->_fetchRoadClass forKey:@"fetchRoadClass"];
  [v5 encodeBool:self->_fetchFormOfWay forKey:@"fetchFormOfWay"];
  [v5 encodeBool:self->_fetchLocationType forKey:@"fetchLocationType"];
  [v5 encodeBool:self->_fetchPreferredNames forKey:@"fetchPreferredNames"];
}

- (RTTripSegmentMetadataFetchOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeBoolForKey:@"fetchRoadClass"];
  v7 = [v4 decodeBoolForKey:@"fetchFormOfWay"];
  v8 = [v4 decodeBoolForKey:@"fetchLocationType"];
  v9 = [v4 decodeBoolForKey:@"fetchPreferredNames"];

  v10 = [(RTTripSegmentMetadataFetchOptions *)self initWithDateInterval:v5 fetchRoadClass:v6 fetchFormOfWay:v7 fetchLocationType:v8 fetchPreferredNames:v9];
  return v10;
}

@end