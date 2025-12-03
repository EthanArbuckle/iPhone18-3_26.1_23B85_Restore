@interface RTDistanceInterval
- (BOOL)isEqual:(id)equal;
- (RTDistanceInterval)initWithCoder:(id)coder;
- (RTDistanceInterval)initWithStartDistance:(double)distance endDistance:(double)endDistance;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTDistanceInterval

- (RTDistanceInterval)initWithStartDistance:(double)distance endDistance:(double)endDistance
{
  v11.receiver = self;
  v11.super_class = RTDistanceInterval;
  v6 = [(RTDistanceInterval *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_startDistance = distance;
    if (distance <= endDistance)
    {
      v6->_endDistance = endDistance;
      v6->_intervalLength = endDistance - distance;
    }

    else
    {
      v6->_endDistance = distance;
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

- (void)encodeWithCoder:(id)coder
{
  startDistance = self->_startDistance;
  coderCopy = coder;
  [coderCopy encodeDouble:@"startDistance" forKey:startDistance];
  [coderCopy encodeDouble:@"endDistance" forKey:self->_endDistance];
  [coderCopy encodeDouble:@"intervalLength" forKey:self->_intervalLength];
}

- (RTDistanceInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"startDistance"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"endDistance"];
  v8 = v7;

  return [(RTDistanceInterval *)self initWithStartDistance:v6 endDistance:v8];
}

- (BOOL)isEqual:(id)equal
{
  startDistance = self->_startDistance;
  equalCopy = equal;
  [equalCopy startDistance];
  v7 = startDistance == v6;
  endDistance = self->_endDistance;
  [equalCopy endDistance];
  v10 = v9;
  intervalLength = self->_intervalLength;
  [equalCopy intervalLength];
  v13 = v12;

  v14 = endDistance == v10 && v7;
  return intervalLength == v13 && v14;
}

@end