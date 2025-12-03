@interface RTPeopleDensityCallbackConfiguration
- (BOOL)isEqual:(id)equal;
- (RTPeopleDensityCallbackConfiguration)initWithCoder:(id)coder;
- (RTPeopleDensityCallbackConfiguration)initWithPeriodicReportInterval:(unint64_t)interval magnitude:(unint64_t)magnitude densityUpdateHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPeopleDensityCallbackConfiguration

- (RTPeopleDensityCallbackConfiguration)initWithPeriodicReportInterval:(unint64_t)interval magnitude:(unint64_t)magnitude densityUpdateHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = RTPeopleDensityCallbackConfiguration;
  v9 = [(RTPeopleDensityCallbackConfiguration *)&v16 init];
  if (v9)
  {
    if (interval >= 4)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        magnitudeCopy = interval;
        _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "interval %d out of bounds", buf, 8u);
      }

      interval = 0;
    }

    v9->_periodicReportInterval = interval;
    if (magnitude >= 3)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        magnitudeCopy = magnitude;
        _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "magnitude %d out of bounds", buf, 8u);
      }

      magnitude = 0;
    }

    v9->_magnitude = magnitude;
    v12 = MEMORY[0x1BFB54DD0](handlerCopy);
    densityUpdateHandler = v9->_densityUpdateHandler;
    v9->_densityUpdateHandler = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      periodicReportInterval = [(RTPeopleDensityCallbackConfiguration *)self periodicReportInterval];
      if (periodicReportInterval == [(RTPeopleDensityCallbackConfiguration *)v5 periodicReportInterval])
      {
        magnitude = [(RTPeopleDensityCallbackConfiguration *)self magnitude];
        v8 = magnitude == [(RTPeopleDensityCallbackConfiguration *)v5 magnitude];
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
  descriptionDictionary = [(RTPeopleDensityCallbackConfiguration *)self descriptionDictionary];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONStringFromNSDictionary:descriptionDictionary error:&v12];
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

    string = [MEMORY[0x1E696AEC0] string];
  }

  else
  {
    string = v3;
  }

  v7 = string;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  periodicReportInterval = [(RTPeopleDensityCallbackConfiguration *)self periodicReportInterval];
  magnitude = [(RTPeopleDensityCallbackConfiguration *)self magnitude];
  densityUpdateHandler = [(RTPeopleDensityCallbackConfiguration *)self densityUpdateHandler];
  v8 = [v4 initWithPeriodicReportInterval:periodicReportInterval magnitude:magnitude densityUpdateHandler:densityUpdateHandler];

  return v8;
}

- (RTPeopleDensityCallbackConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"interval"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"magnitude"];
  v8 = v7;

  return [(RTPeopleDensityCallbackConfiguration *)self initWithPeriodicReportInterval:v6 magnitude:v8 densityUpdateHandler:0];
}

- (void)encodeWithCoder:(id)coder
{
  periodicReportInterval = self->_periodicReportInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"interval" forKey:periodicReportInterval];
  [coderCopy encodeDouble:@"magnitude" forKey:self->_magnitude];
}

@end