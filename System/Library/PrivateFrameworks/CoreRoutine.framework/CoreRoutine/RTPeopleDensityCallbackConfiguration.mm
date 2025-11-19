@interface RTPeopleDensityCallbackConfiguration
- (BOOL)isEqual:(id)a3;
- (RTPeopleDensityCallbackConfiguration)initWithCoder:(id)a3;
- (RTPeopleDensityCallbackConfiguration)initWithPeriodicReportInterval:(unint64_t)a3 magnitude:(unint64_t)a4 densityUpdateHandler:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDensityCallbackConfiguration

- (RTPeopleDensityCallbackConfiguration)initWithPeriodicReportInterval:(unint64_t)a3 magnitude:(unint64_t)a4 densityUpdateHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v16.receiver = self;
  v16.super_class = RTPeopleDensityCallbackConfiguration;
  v9 = [(RTPeopleDensityCallbackConfiguration *)&v16 init];
  if (v9)
  {
    if (a3 >= 4)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = a3;
        _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "interval %d out of bounds", buf, 8u);
      }

      a3 = 0;
    }

    v9->_periodicReportInterval = a3;
    if (a4 >= 3)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v18 = a4;
        _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "magnitude %d out of bounds", buf, 8u);
      }

      a4 = 0;
    }

    v9->_magnitude = a4;
    v12 = MEMORY[0x1BFB54DD0](v8);
    densityUpdateHandler = v9->_densityUpdateHandler;
    v9->_densityUpdateHandler = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPeopleDensityCallbackConfiguration *)self periodicReportInterval];
      if (v6 == [(RTPeopleDensityCallbackConfiguration *)v5 periodicReportInterval])
      {
        v7 = [(RTPeopleDensityCallbackConfiguration *)self magnitude];
        v8 = v7 == [(RTPeopleDensityCallbackConfiguration *)v5 magnitude];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)descriptionDictionary
{
  v24 = *MEMORY[0x1E69E9840];
  periodicReportInterval = self->_periodicReportInterval;
  if (periodicReportInterval >= 4)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = self->_periodicReportInterval;
      *buf = 138412546;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@ invalid periodicInterval %d", buf, 0x12u);
    }
  }

  magnitude = self->_magnitude;
  if (magnitude >= 3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = self->_magnitude;
      *buf = 138412546;
      v21 = v16;
      v22 = 1024;
      v23 = v17;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "%@ invalid magnitude %d", buf, 0x12u);
    }
  }

  v18[0] = @"interval";
  if (periodicReportInterval > 3)
  {
    v7 = &stru_1F3DD00E8;
  }

  else
  {
    v7 = PeriodicReportIntervalDescriptor[self->_periodicReportInterval];
  }

  v19[0] = v7;
  v18[1] = @"magnitude";
  if (magnitude > 2)
  {
    v8 = &stru_1F3DD00E8;
  }

  else
  {
    v8 = UpdateMagnitudeDescriptor[self->_magnitude];
  }

  v19[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(RTPeopleDensityCallbackConfiguration *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONStringFromNSDictionary:v2 error:&v12];
  v4 = v12;
  if (v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", buf, 0x16u);
    }

    v6 = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(RTPeopleDensityCallbackConfiguration *)self periodicReportInterval];
  v6 = [(RTPeopleDensityCallbackConfiguration *)self magnitude];
  v7 = [(RTPeopleDensityCallbackConfiguration *)self densityUpdateHandler];
  v8 = [v4 initWithPeriodicReportInterval:v5 magnitude:v6 densityUpdateHandler:v7];

  return v8;
}

- (RTPeopleDensityCallbackConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"interval"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"magnitude"];
  v8 = v7;

  return [(RTPeopleDensityCallbackConfiguration *)self initWithPeriodicReportInterval:v6 magnitude:v8 densityUpdateHandler:0];
}

- (void)encodeWithCoder:(id)a3
{
  periodicReportInterval = self->_periodicReportInterval;
  v5 = a3;
  [v5 encodeDouble:@"interval" forKey:periodicReportInterval];
  [v5 encodeDouble:@"magnitude" forKey:self->_magnitude];
}

@end