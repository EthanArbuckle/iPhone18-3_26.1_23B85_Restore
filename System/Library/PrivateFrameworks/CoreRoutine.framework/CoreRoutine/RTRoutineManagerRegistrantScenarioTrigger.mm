@interface RTRoutineManagerRegistrantScenarioTrigger
- (RTRoutineManagerRegistrantScenarioTrigger)init;
- (id)startMonitoringForScenarioTriggerTypes:(unint64_t)a3 handler:(id)a4;
- (id)stopMonitoringForScenarioTriggerTypes:(unint64_t)a3;
- (void)onScenarioTriggers:(id)a3 error:(id)a4;
@end

@implementation RTRoutineManagerRegistrantScenarioTrigger

- (RTRoutineManagerRegistrantScenarioTrigger)init
{
  v6.receiver = self;
  v6.super_class = RTRoutineManagerRegistrantScenarioTrigger;
  v2 = [(RTRoutineManagerRegistrantScenarioTrigger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scenarioTriggerHandlers = v2->__scenarioTriggerHandlers;
    v2->__scenarioTriggerHandlers = v3;
  }

  return v2;
}

- (id)startMonitoringForScenarioTriggerTypes:(unint64_t)a3 handler:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    while (a3)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 & -a3];
      scenarioTriggerHandlers = self->__scenarioTriggerHandlers;
      v9 = MEMORY[0x1BFB54DD0](v6);
      [(NSMutableDictionary *)scenarioTriggerHandlers setObject:v9 forKey:v7];

      self->_monitoredScenarioTriggerTypes |= a3 & -a3;
      a3 &= a3 - 1;
    }

    v12 = 0;
    self->_registered = self->_monitoredScenarioTriggerTypes != 0;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Invalid parameter value for handler.  Requires non-nil value.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v11];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)stopMonitoringForScenarioTriggerTypes:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4 & -v4];
      [(NSMutableDictionary *)self->__scenarioTriggerHandlers removeObjectForKey:v5];
      self->_monitoredScenarioTriggerTypes &= ~(v4 & -v4);
      v4 &= v4 - 1;
    }

    while (v4);
  }

  self->_registered = self->_monitoredScenarioTriggerTypes != 0;
  return 0;
}

- (void)onScenarioTriggers:(id)a3 error:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v29 = a4;
  monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
  v9 = objc_opt_new();
  while (monitoredScenarioTriggerTypes)
  {
    v10 = [RTScenarioTrigger scenarioTriggerTypeToString:monitoredScenarioTriggerTypes & -monitoredScenarioTriggerTypes];
    if (v10)
    {
      [v9 addObject:v10];
    }

    monitoredScenarioTriggerTypes &= monitoredScenarioTriggerTypes - 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      if (self->_registered)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      [v9 componentsJoinedByString:{@", "}];
      v15 = v14 = v9;
      *buf = 138413314;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v15;
      v41 = 2112;
      v42 = v7;
      v43 = 2112;
      v44 = v29;
      _os_log_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_INFO, "%@, registered, %@, monitoredScenarioTriggerTypes, %@, scenarioTriggers, %@, error, %@", buf, 0x34u);

      v9 = v14;
    }
  }

  if (self->_registered)
  {
    v27 = v9;
    v28 = v7;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = self->_monitoredScenarioTriggerTypes;
          if (([v21 type] & v22) != 0)
          {
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "type")}];
            v24 = [(NSMutableDictionary *)self->__scenarioTriggerHandlers objectForKey:v23];
            v25 = v24;
            if (v24)
            {
              (*(v24 + 16))(v24, v21, v29);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v9 = v27;
    v7 = v28;
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end