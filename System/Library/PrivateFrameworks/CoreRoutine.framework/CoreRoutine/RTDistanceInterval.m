@interface RTDistanceInterval
- (BOOL)isEqual:(id)a3;
- (RTDistanceInterval)initWithCoder:(id)a3;
- (RTDistanceInterval)initWithStartDistance:(double)a3 endDistance:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTDistanceInterval

- (RTDistanceInterval)initWithStartDistance:(double)a3 endDistance:(double)a4
{
  v11.receiver = self;
  v11.super_class = RTDistanceInterval;
  v6 = [(RTDistanceInterval *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_startDistance = a3;
    if (a3 <= a4)
    {
      v6->_endDistance = a4;
      v6->_intervalLength = a4 - a3;
    }

    else
    {
      v6->_endDistance = a3;
      v6->_intervalLength = 0.0;
      v8 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "RTDistanceInterval: startDistance > endDistance. Negative distances not supported, assigning endDistance = startDistance.", v10, 2u);
      }
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  startDistance = self->_startDistance;
  v5 = a3;
  [v5 encodeDouble:@"startDistance" forKey:startDistance];
  [v5 encodeDouble:@"endDistance" forKey:self->_endDistance];
  [v5 encodeDouble:@"intervalLength" forKey:self->_intervalLength];
}

- (RTDistanceInterval)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"startDistance"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"endDistance"];
  v8 = v7;

  return [(RTDistanceInterval *)self initWithStartDistance:v6 endDistance:v8];
}

- (BOOL)isEqual:(id)a3
{
  startDistance = self->_startDistance;
  v5 = a3;
  [v5 startDistance];
  v7 = startDistance == v6;
  endDistance = self->_endDistance;
  [v5 endDistance];
  v10 = v9;
  intervalLength = self->_intervalLength;
  [v5 intervalLength];
  v13 = v12;

  v14 = endDistance == v10 && v7;
  return intervalLength == v13 && v14;
}

@end