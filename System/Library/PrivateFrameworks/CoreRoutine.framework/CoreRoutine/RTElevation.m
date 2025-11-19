@interface RTElevation
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (RTElevation)initWithCoder:(id)a3;
- (RTElevation)initWithElevation:(double)a3 dateInterval:(id)a4 elevationUncertainty:(double)a5 estimationStatus:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTElevation

- (RTElevation)initWithElevation:(double)a3 dateInterval:(id)a4 elevationUncertainty:(double)a5 estimationStatus:(int64_t)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (v10)
  {
    v22.receiver = self;
    v22.super_class = RTElevation;
    v11 = [(RTElevation *)&v22 init];
    v12 = v11;
    if (v11)
    {
      v11->_elevation = a3;
      v13 = [v10 startDate];
      startDate = v12->_startDate;
      v12->_startDate = v13;

      v15 = [v10 endDate];
      endDate = v12->_endDate;
      v12->_endDate = v15;

      v12->_elevationUncertainty = a5;
      v12->_estimationStatus = a6;
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
    v18 = self;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval", buf, 2u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
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

  v6 = [(RTElevation *)self startDate];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604801.0];
  if ([v6 compare:v7] == 1)
  {
    v8 = [(RTElevation *)self startDate];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
    if ([v8 compare:v9] == -1)
    {
      v11 = [(RTElevation *)self startDate];
      v12 = [(RTElevation *)self endDate];
      v10 = [v11 compare:v12] != -1;
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

  v13 = [(RTElevation *)self endDate];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604801.0];
  if ([v13 compare:v14] == 1)
  {
    v15 = [(RTElevation *)self endDate];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
    v17 = [v15 compare:v16] == -1;
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

- (RTElevation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"elevation"];
  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [v4 decodeDoubleForKey:@"elevationUncertainty"];
  v10 = v9;
  v11 = [v4 decodeIntegerForKey:@"estimationStatus"];

  v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:v8];
  v13 = [(RTElevation *)self initWithElevation:v12 dateInterval:v11 elevationUncertainty:v6 estimationStatus:v10];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  elevation = self->_elevation;
  v5 = a3;
  [v5 encodeDouble:@"elevation" forKey:elevation];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeDouble:@"elevationUncertainty" forKey:self->_elevationUncertainty];
  [v5 encodeInteger:self->_estimationStatus forKey:@"estimationStatus"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:self->_startDate endDate:self->_endDate];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithElevation:dateInterval:elevationUncertainty:estimationStatus:", v5, self->_estimationStatus, self->_elevation, self->_elevationUncertainty}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()];
  elevation = self->_elevation;
  [v4 elevation];
  v8 = v7;
  startDate = self->_startDate;
  v10 = [v4 startDate];
  v11 = [(NSDate *)startDate isEqual:v10];

  endDate = self->_endDate;
  v13 = [v4 endDate];
  v14 = [(NSDate *)endDate isEqual:v13];

  elevationUncertainty = self->_elevationUncertainty;
  [v4 elevationUncertainty];
  v17 = v16;
  estimationStatus = self->_estimationStatus;
  v19 = [v4 estimationStatus];

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

  if (estimationStatus == v19)
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
  v5 = [(NSDate *)self->_startDate stringFromDate];
  v6 = [(NSDate *)self->_endDate stringFromDate];
  v7 = [v3 stringWithFormat:@"elevation, %f, startDate, %@, endDate, %@, elevationUncertainty, %f, estimationStatus, %lu", *&elevation, v5, v6, *&self->_elevationUncertainty, self->_estimationStatus];

  return v7;
}

@end