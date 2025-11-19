@interface RTPeopleDiscoveryServiceConfiguration
+ (double)secondsForStorageDuration:(unint64_t)a3;
+ (unint64_t)aggregateObservationInterval:(unint64_t)a3 with:(unint64_t)a4;
+ (unint64_t)aggregateServiceLevel:(unint64_t)a3 with:(unint64_t)a4;
+ (unint64_t)aggregateStorageDuration:(unint64_t)a3 with:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RTPeopleDiscoveryServiceConfiguration)initWithAdvertisingCapability:(unint64_t)a3 serviceLevel:(unint64_t)a4 observationInterval:(unint64_t)a5 storageDuration:(unint64_t)a6 densityCallbackConfiguration:(id)a7;
- (RTPeopleDiscoveryServiceConfiguration)initWithAggregation:(id)a3;
- (RTPeopleDiscoveryServiceConfiguration)initWithCoder:(id)a3;
- (RTPeopleDiscoveryServiceConfiguration)initWithServiceLevel:(unint64_t)a3 storageDuration:(unint64_t)a4 observationInterval:(unint64_t)a5 densityCallbackConfiguration:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPeopleDiscoveryServiceConfiguration

- (RTPeopleDiscoveryServiceConfiguration)initWithServiceLevel:(unint64_t)a3 storageDuration:(unint64_t)a4 observationInterval:(unint64_t)a5 densityCallbackConfiguration:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v19.receiver = self;
  v19.super_class = RTPeopleDiscoveryServiceConfiguration;
  v12 = [(RTPeopleDiscoveryServiceConfiguration *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_advertisingCapability = 0;
    if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = a3;
        _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "serviceLevel %d out of bounds", buf, 8u);
      }

      a3 = 1;
    }

    v13->_serviceLevel = a3;
    if (a4 - 4 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = a4;
        _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "storageDuration %d out of bounds", buf, 8u);
      }

      a4 = 1;
    }

    v13->_storageDuration = a4;
    if (a5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = a5;
        _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, "observationInterval %d out of bounds", buf, 8u);
      }

      a5 = 1;
    }

    v13->_observationInterval = a5;
    objc_storeStrong(&v13->_densityCallbackConfiguration, a6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (RTPeopleDiscoveryServiceConfiguration)initWithAdvertisingCapability:(unint64_t)a3 serviceLevel:(unint64_t)a4 observationInterval:(unint64_t)a5 storageDuration:(unint64_t)a6 densityCallbackConfiguration:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v21.receiver = self;
  v21.super_class = RTPeopleDiscoveryServiceConfiguration;
  v14 = [(RTPeopleDiscoveryServiceConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_advertisingCapability = a3;
    if (a4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = a4;
        _os_log_error_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_ERROR, "serviceLevel %d out of bounds", buf, 8u);
      }

      a4 = 1;
    }

    v15->_serviceLevel = a4;
    if (a5 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = a5;
        _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "observationInterval %d out of bounds", buf, 8u);
      }

      a5 = 1;
    }

    v15->_observationInterval = a5;
    if (a6 - 4 <= 0xFFFFFFFFFFFFFFFCLL)
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = a6;
        _os_log_error_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_ERROR, "storageDuration %d out of bounds", buf, 8u);
      }

      a6 = 1;
    }

    v15->_storageDuration = a6;
    objc_storeStrong(&v15->_densityCallbackConfiguration, a7);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (unint64_t)aggregateServiceLevel:(unint64_t)a3 with:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if (a3 - 3 >= 0xFFFFFFFFFFFFFFFELL && a4 - 3 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (dword_1BF231920[a3] <= dword_1BF231920[a4])
    {
      result = a4;
    }

    else
    {
      result = a3;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v7, OS_LOG_TYPE_ERROR, "service level %d or %d out of bounds", v10, 0xEu);
    }

    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)aggregateObservationInterval:(unint64_t)a3 with:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if (a3 - 3 >= 0xFFFFFFFFFFFFFFFELL && a4 - 3 > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (dword_1BF23192C[a3] <= dword_1BF23192C[a4])
    {
      result = a4;
    }

    else
    {
      result = a3;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v7, OS_LOG_TYPE_ERROR, "observation interval %d or %d out of bounds", v10, 0xEu);
    }

    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)aggregateStorageDuration:(unint64_t)a3 with:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if (a3 - 4 >= 0xFFFFFFFFFFFFFFFDLL && a4 - 4 > 0xFFFFFFFFFFFFFFFCLL)
  {
    if (dword_1BF231910[a3] <= dword_1BF231910[a4])
    {
      result = a4;
    }

    else
    {
      result = a3;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 1024;
      v12 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v7, OS_LOG_TYPE_ERROR, "storage duration %d or %d out of bounds", v10, 0xEu);
    }

    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (double)secondsForStorageDuration:(unint64_t)a3
{
  result = 86400.0;
  if (a3 != 2)
  {
    result = 0.0;
  }

  if (a3 == 3)
  {
    return 2419200.0;
  }

  return result;
}

- (RTPeopleDiscoveryServiceConfiguration)initWithAggregation:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = RTPeopleDiscoveryServiceConfiguration;
  v5 = [(RTPeopleDiscoveryServiceConfiguration *)&v19 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_1BF231900;
    *(v5 + 24) = vdupq_n_s64(1uLL);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v6->_advertisingCapability = [objc_opt_class() aggregateAdvertisingCapability:v6->_advertisingCapability with:{objc_msgSend(v12, "advertisingCapability", v15)}];
          v6->_serviceLevel = [objc_opt_class() aggregateServiceLevel:v6->_serviceLevel with:{objc_msgSend(v12, "serviceLevel")}];
          v6->_observationInterval = [objc_opt_class() aggregateObservationInterval:v6->_observationInterval with:{objc_msgSend(v12, "observationInterval")}];
          v6->_storageDuration = [objc_opt_class() aggregateStorageDuration:v6->_storageDuration with:{objc_msgSend(v12, "storageDuration")}];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
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
      v6 = [(RTPeopleDiscoveryServiceConfiguration *)self densityCallbackConfiguration];
      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v9 = [(RTPeopleDiscoveryServiceConfiguration *)v5 densityCallbackConfiguration];
        v7 = v9 == 0;
      }

      v10 = [(RTPeopleDiscoveryServiceConfiguration *)self advertisingCapability];
      if (v10 == [(RTPeopleDiscoveryServiceConfiguration *)v5 advertisingCapability]&& (v11 = [(RTPeopleDiscoveryServiceConfiguration *)self serviceLevel], v11 == [(RTPeopleDiscoveryServiceConfiguration *)v5 serviceLevel]) && (v12 = [(RTPeopleDiscoveryServiceConfiguration *)self observationInterval], v12 == [(RTPeopleDiscoveryServiceConfiguration *)v5 observationInterval]))
      {
        v13 = [(RTPeopleDiscoveryServiceConfiguration *)self storageDuration];
        v8 = v13 == [(RTPeopleDiscoveryServiceConfiguration *)v5 storageDuration];
        if (v8)
        {
          v14 = 0;
        }

        else
        {
          v14 = 1;
        }

        if (((v14 | v7) & 1) == 0)
        {
          v15 = [(RTPeopleDiscoveryServiceConfiguration *)self densityCallbackConfiguration];
          v16 = [(RTPeopleDiscoveryServiceConfiguration *)v5 densityCallbackConfiguration];
          v8 = [v15 isEqual:v16];
        }
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
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_advertisingCapability)
  {
    v5 = @"Enabled";
  }

  else
  {
    v5 = @"Disabled";
  }

  [v3 appendString:v5];
  v6 = self->_serviceLevel - 1;
  if (v6 >= 2)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      serviceLevel = self->_serviceLevel;
      *buf = 138412546;
      v40 = v21;
      v41 = 1024;
      v42 = serviceLevel;
      _os_log_error_impl(&dword_1BF1C4000, v7, OS_LOG_TYPE_ERROR, "%@ invalid serviceLevel %d", buf, 0x12u);
    }
  }

  v8 = self->_observationInterval - 1;
  if (v8 >= 2)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      observationInterval = self->_observationInterval;
      *buf = 138412546;
      v40 = v24;
      v41 = 1024;
      v42 = observationInterval;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "%@ invalid observationInterval %d", buf, 0x12u);
    }
  }

  v10 = self->_storageDuration - 1;
  if (v10 >= 3)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      storageDuration = self->_storageDuration;
      *buf = 138412546;
      v40 = v27;
      v41 = 1024;
      v42 = storageDuration;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "%@ invalid storageDuration %d", buf, 0x12u);
    }
  }

  v34 = v4;
  v29 = @"AdvertisingCapability";
  v30 = @"ServiceLevel";
  if (v6 > 1)
  {
    v12 = &stru_1F3DD00E8;
  }

  else
  {
    v12 = ServiceLevelDescriptor[self->_serviceLevel];
  }

  v35 = v12;
  v31 = @"ObservationInterval";
  if (v8 > 1)
  {
    v13 = &stru_1F3DD00E8;
  }

  else
  {
    v13 = ObservationIntervalDescriptor[self->_observationInterval];
  }

  v36 = v13;
  v32 = @"StorageDuration";
  if (v10 > 2)
  {
    v14 = &stru_1F3DD00E8;
  }

  else
  {
    v14 = StorageDurationDescriptor[self->_storageDuration];
  }

  v37 = v14;
  v33 = @"DensityCallbackConfig";
  densityCallbackConfiguration = self->_densityCallbackConfiguration;
  if (densityCallbackConfiguration)
  {
    v16 = [(RTPeopleDensityCallbackConfiguration *)densityCallbackConfiguration description:v29];
  }

  else
  {
    v16 = &stru_1F3DD00E8;
  }

  v38 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v29 count:5];
  if (densityCallbackConfiguration)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)description
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(RTPeopleDiscoveryServiceConfiguration *)self descriptionDictionary];
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
  advertisingCapability = self->_advertisingCapability;
  serviceLevel = self->_serviceLevel;
  observationInterval = self->_observationInterval;
  storageDuration = self->_storageDuration;
  densityCallbackConfiguration = self->_densityCallbackConfiguration;

  return [v4 initWithAdvertisingCapability:advertisingCapability serviceLevel:serviceLevel observationInterval:observationInterval storageDuration:storageDuration densityCallbackConfiguration:densityCallbackConfiguration];
}

- (RTPeopleDiscoveryServiceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"AdvertisingCapability"];
  v6 = [v4 decodeIntegerForKey:@"ServiceLevel"];
  v7 = [v4 decodeIntegerForKey:@"ObservationInterval"];
  v8 = [v4 decodeIntegerForKey:@"StorageDuration"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DensityCallbackConfig"];

  v10 = [(RTPeopleDiscoveryServiceConfiguration *)self initWithAdvertisingCapability:v5 serviceLevel:v6 observationInterval:v7 storageDuration:v8 densityCallbackConfiguration:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  advertisingCapability = self->_advertisingCapability;
  v5 = a3;
  [v5 encodeInteger:advertisingCapability forKey:@"AdvertisingCapability"];
  [v5 encodeInteger:self->_serviceLevel forKey:@"ServiceLevel"];
  [v5 encodeInteger:self->_observationInterval forKey:@"ObservationInterval"];
  [v5 encodeInteger:self->_storageDuration forKey:@"StorageDuration"];
  [v5 encodeObject:self->_densityCallbackConfiguration forKey:@"DensityCallbackConfig"];
}

@end