@interface RTElevation
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (RTElevation)initWithCoder:(id)coder;
- (RTElevation)initWithElevation:(double)elevation dateInterval:(id)interval elevationUncertainty:(double)uncertainty estimationStatus:(int64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTElevation

- (RTElevation)initWithElevation:(double)elevation dateInterval:(id)interval elevationUncertainty:(double)uncertainty estimationStatus:(int64_t)status
{
  v25 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  if (intervalCopy)
  {
    v22.receiver = self;
    v22.super_class = RTElevation;
    v11 = [(RTElevation *)&v22 init];
    v12 = v11;
    if (v11)
    {
      v11->_elevation = elevation;
      startDate = [intervalCopy startDate];
      startDate = v12->_startDate;
      v12->_startDate = startDate;

      endDate = [intervalCopy endDate];
      endDate = v12->_endDate;
      v12->_endDate = endDate;

      v12->_elevationUncertainty = uncertainty;
      v12->_estimationStatus = status;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_debug_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_DEBUG, "elevation, %@", buf, 0xCu);
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    selfCopy = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isValid
{
  [(RTElevation *)self elevation];
  if (v3 <= -1000.0)
  {
    v5 = 1;
  }

  else
  {
    [(RTElevation *)self elevation];
    v5 = v4 >= 10000.0;
  }

  startDate = [(RTElevation *)self startDate];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604801.0];
  if ([startDate compare:v7] == 1)
  {
    startDate2 = [(RTElevation *)self startDate];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
    if ([startDate2 compare:v9] == -1)
    {
      startDate3 = [(RTElevation *)self startDate];
      endDate = [(RTElevation *)self endDate];
      v10 = [startDate3 compare:endDate] != -1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  endDate2 = [(RTElevation *)self endDate];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604801.0];
  if ([endDate2 compare:v14] == 1)
  {
    endDate3 = [(RTElevation *)self endDate];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
    v17 = [endDate3 compare:v16] == -1;
  }

  else
  {
    v17 = 0;
  }

  [(RTElevation *)self elevationUncertainty];
  if (v18 >= 0.0)
  {
    [(RTElevation *)self elevationUncertainty];
    v19 = v20 <= 50.0;
  }

  else
  {
    v19 = 0;
  }

  return !v5 && !v10 && v17 && v19;
}

- (RTElevation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"elevation"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [coderCopy decodeDoubleForKey:@"elevationUncertainty"];
  v10 = v9;
  v11 = [coderCopy decodeIntegerForKey:@"estimationStatus"];

  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];
  v13 = [(RTElevation *)self initWithElevation:v12 dateInterval:v11 elevationUncertainty:v6 estimationStatus:v10];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  elevation = self->_elevation;
  coderCopy = coder;
  [coderCopy encodeDouble:@"elevation" forKey:elevation];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeDouble:@"elevationUncertainty" forKey:self->_elevationUncertainty];
  [coderCopy encodeInteger:self->_estimationStatus forKey:@"estimationStatus"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:self->_startDate endDate:self->_endDate];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithElevation:dateInterval:elevationUncertainty:estimationStatus:", v5, self->_estimationStatus, self->_elevation, self->_elevationUncertainty}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()];
  elevation = self->_elevation;
  [equalCopy elevation];
  v8 = v7;
  startDate = self->_startDate;
  startDate = [equalCopy startDate];
  v11 = [(NSDate *)startDate isEqual:startDate];

  endDate = self->_endDate;
  endDate = [equalCopy endDate];
  v14 = [(NSDate *)endDate isEqual:endDate];

  elevationUncertainty = self->_elevationUncertainty;
  [equalCopy elevationUncertainty];
  v17 = v16;
  estimationStatus = self->_estimationStatus;
  estimationStatus = [equalCopy estimationStatus];

  if (elevation == v8)
  {
    v20 = v5;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 & v11 & v14;
  if (elevationUncertainty != v17)
  {
    v21 = 0;
  }

  if (estimationStatus == estimationStatus)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  elevation = self->_elevation;
  stringFromDate = [(NSDate *)self->_startDate stringFromDate];
  stringFromDate2 = [(NSDate *)self->_endDate stringFromDate];
  v7 = [v3 stringWithFormat:@"elevation, %f, startDate, %@, endDate, %@, elevationUncertainty, %f, estimationStatus, %lu", *&elevation, stringFromDate, stringFromDate2, *&self->_elevationUncertainty, self->_estimationStatus];

  return v7;
}

@end