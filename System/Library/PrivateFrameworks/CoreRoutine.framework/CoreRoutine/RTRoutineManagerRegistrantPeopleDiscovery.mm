@interface RTRoutineManagerRegistrantPeopleDiscovery
- (RTRoutineManagerRegistrantPeopleDiscovery)initWithConfigurationIdentifier:(id)identifier;
- (id)startMonitoringForPeopleDiscovery:(id)discovery;
- (id)stopMonitoringForPeopleDiscovery;
- (void)onDensityUpdate:(id)update error:(id)error;
@end

@implementation RTRoutineManagerRegistrantPeopleDiscovery

- (RTRoutineManagerRegistrantPeopleDiscovery)initWithConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = RTRoutineManagerRegistrantPeopleDiscovery;
  v5 = [(RTRoutineManagerRegistrantPeopleDiscovery *)&v11 init];
  v6 = v5;
  if (v5)
  {
    densityHandler = v5->_densityHandler;
    v5->_densityHandler = 0;

    v8 = [identifierCopy copy];
    configurationIdentifier = v6->_configurationIdentifier;
    v6->_configurationIdentifier = v8;
  }

  return v6;
}

- (id)startMonitoringForPeopleDiscovery:(id)discovery
{
  v22[1] = *MEMORY[0x1E69E9840];
  discoveryCopy = discovery;
  v6 = discoveryCopy;
  if (discoveryCopy)
  {
    densityCallbackConfiguration = [discoveryCopy densityCallbackConfiguration];

    if (!densityCallbackConfiguration)
    {
LABEL_5:
      objc_storeStrong(&self->_configuration, discovery);
      v12 = 0;
      self->_registered = 1;
      goto LABEL_8;
    }

    densityCallbackConfiguration2 = [v6 densityCallbackConfiguration];
    densityUpdateHandler = [densityCallbackConfiguration2 densityUpdateHandler];

    if (densityUpdateHandler)
    {
      densityUpdateHandler2 = [densityCallbackConfiguration2 densityUpdateHandler];
      densityHandler = self->_densityHandler;
      self->_densityHandler = densityUpdateHandler2;

      goto LABEL_5;
    }

    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Invalid parameter value for density update handler.  Requires non-nil value.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = [v15 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v16];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Invalid configuration to register for people discovery service.  Requires non-nil value.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v12 = [v13 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v14];
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)stopMonitoringForPeopleDiscovery
{
  self->_registered = 0;
  densityHandler = self->_densityHandler;
  self->_densityHandler = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  return 0;
}

- (void)onDensityUpdate:(id)update error:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  errorCopy = error;
  v9 = self->_configuration;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      if (self->_registered)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = [(RTPeopleDiscoveryServiceConfiguration *)v9 description];
      v16 = 138413314;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      v23 = [updateCopy count];
      v24 = 2112;
      v25 = errorCopy;
      _os_log_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_INFO, "%@, registered, %@, monitoredConfig, %@, densityBundles count, %lu, error, %@", &v16, 0x34u);
    }
  }

  if (self->_registered)
  {
    densityHandler = self->_densityHandler;
    if (densityHandler)
    {
      densityHandler[2](densityHandler, updateCopy, errorCopy);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end