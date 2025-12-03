@interface _CDContextualLocationRegistrationMonitor
- (_CDContextualLocationRegistrationMonitor)init;
- (id)regionInfosForRegistration:(id)registration;
- (void)addRegistration:(id)registration;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)removeRegistration:(id)registration;
@end

@implementation _CDContextualLocationRegistrationMonitor

- (_CDContextualLocationRegistrationMonitor)init
{
  v15.receiver = self;
  v15.super_class = _CDContextualLocationRegistrationMonitor;
  v2 = [(_CDContextualLocationRegistrationMonitor *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ContextStore.location-monitor-queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registrations = v2->_registrations;
    v2->_registrations = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    managers = v2->_managers;
    v2->_managers = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    effectiveBundleIDs = v2->_effectiveBundleIDs;
    v2->_effectiveBundleIDs = weakToStrongObjectsMapTable;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    effectiveBundleIDRegionInfos = v2->_effectiveBundleIDRegionInfos;
    v2->_effectiveBundleIDRegionInfos = v12;
  }

  return v2;
}

- (void)addRegistration:(id)registration
{
  registrationCopy = registration;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = registrationCopy;
  selfCopy = self;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)removeRegistration:(id)registration
{
  registrationCopy = registration;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___CDContextualLocationRegistrationMonitor_removeRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = registrationCopy;
  v6 = registrationCopy;
  dispatch_sync(queue, v7);
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  regionCopy = region;
  managerCopy = manager;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v10 = [effectiveBundleIDs objectForKey:managerCopy];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
  {
    [(_CDContextualLocationRegistrationMonitor *)regionCopy locationManager:v10 didStartMonitoringForRegion:contextChannel];
  }
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  errorCopy = error;
  managerCopy = manager;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v13 = [effectiveBundleIDs objectForKey:managerCopy];

  contextChannel = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
  {
    identifier = [regionCopy identifier];
    v17 = 138412802;
    v18 = identifier;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_error_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_ERROR, "Failed monitoring region %@ for %@: %@", &v17, 0x20u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v108 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  regionCopy = region;
  queue = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  date = [MEMORY[0x1E695DF00] date];
  identifier = [regionCopy identifier];
  if (identifier)
  {
    v76 = identifier;
    v77 = date;
    v75 = regionCopy;
    v78 = managerCopy;
    v13 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Region State Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v13, state);
    os_activity_scope_leave(state);

    selfCopy = self;
    v83 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    registrations = [(_CDContextualLocationRegistrationMonitor *)self registrations];
    v15 = [registrations countByEnumeratingWithState:&v92 objects:v107 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v93;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v93 != v17)
          {
            objc_enumerationMutation(registrations);
          }

          v19 = *(*(&v92 + 1) + 8 * i);
          v20 = [(_CDContextualLocationRegistrationMonitor *)selfCopy regionInfosForRegistration:v19];
          if ([v20 count])
          {
            identifier2 = [v19 identifier];
            [v83 setObject:v20 forKeyedSubscript:identifier2];
          }

          else
          {
            identifier2 = objc_alloc_init(MEMORY[0x1E695DEC8]);
            identifier3 = [v19 identifier];
            [v83 setObject:identifier2 forKeyedSubscript:identifier3];
          }
        }

        v16 = [registrations countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v16);
    }

    v81 = [v83 copy];
    effectiveBundleIDs = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDs];
    v24 = [effectiveBundleIDs objectForKey:v78];

    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
    {
      identifier4 = [v75 identifier];
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      *state = 138412802;
      *&state[4] = identifier4;
      *&state[12] = 2112;
      *&state[14] = v27;
      v99 = 2112;
      v100 = v24;
      _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_INFO, "Region state for region %@ changed to %@ on behalf of %@", state, 0x20u);
    }

    effectiveBundleIDRegionInfos = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDRegionInfos];
    v29 = [effectiveBundleIDRegionInfos objectForKeyedSubscript:v24];
    v30 = [v29 mutableCopy];

    if (!v30)
    {
      v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v31 = +[_CDContextQueries regionIdentifierKey];
    v105[0] = v31;
    v106[0] = v76;
    v32 = +[_CDContextQueries regionStateKey];
    v105[1] = v32;
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v106[1] = v33;
    v34 = +[_CDContextQueries changeDateKey];
    v105[2] = v34;
    v106[2] = v77;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];

    v72 = v35;
    [v30 setObject:v35 forKeyedSubscript:v76];
    v36 = [v30 copy];
    effectiveBundleIDRegionInfos2 = [(_CDContextualLocationRegistrationMonitor *)selfCopy effectiveBundleIDRegionInfos];
    v71 = v36;
    [effectiveBundleIDRegionInfos2 setObject:v36 forKeyedSubscript:v24];

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    registrations2 = [(_CDContextualLocationRegistrationMonitor *)selfCopy registrations];
    v40 = [registrations2 countByEnumeratingWithState:&v88 objects:v104 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v89;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v89 != v42)
          {
            objc_enumerationMutation(registrations2);
          }

          v44 = *(*(&v88 + 1) + 8 * j);
          v45 = [(_CDContextualLocationRegistrationMonitor *)selfCopy regionInfosForRegistration:v44];
          if ([v45 count])
          {
            identifier5 = [v44 identifier];
            [v38 setObject:v45 forKeyedSubscript:identifier5];
          }
        }

        v41 = [registrations2 countByEnumeratingWithState:&v88 objects:v104 count:16];
      }

      while (v41);
    }

    v73 = v30;
    v74 = v24;

    v70 = v38;
    v47 = [v38 copy];
    v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v84 objects:v103 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v85;
      v52 = MEMORY[0x1E695E0F0];
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v85 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v54 = *(*(&v84 + 1) + 8 * k);
          v55 = objc_alloc(MEMORY[0x1E695DFD8]);
          v56 = [v81 objectForKeyedSubscript:v54];
          v57 = v56;
          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = v52;
          }

          v59 = [v55 initWithArray:v58];

          v60 = objc_alloc(MEMORY[0x1E695DFD8]);
          v61 = [v48 objectForKeyedSubscript:v54];
          v62 = v61;
          if (v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = v52;
          }

          v64 = [v60 initWithArray:v63];

          if (([v59 isEqualToSet:v64] & 1) == 0)
          {
            contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
            if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_DEBUG))
            {
              v79 = +[_CDContextQueries keyPathForCircularLocationRegions];
              *state = 138413058;
              *&state[4] = v54;
              *&state[12] = 2112;
              *&state[14] = v79;
              v99 = 2112;
              v100 = v59;
              v101 = 2112;
              v102 = v64;
              _os_log_debug_impl(&dword_1A9611000, contextChannel2, OS_LOG_TYPE_DEBUG, "Registration %@ had %@ values change from %@ to %@", state, 0x2Au);
            }

            [v80 addObject:v54];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v84 objects:v103 count:16];
      }

      while (v50);
    }

    date = v77;
    if ([v80 count])
    {
      v66 = [v81 dictionaryWithValuesForKeys:v80];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v96[0] = @"previousRegistrationRegionInfos";
      v96[1] = @"regionStateChangeDate";
      v97[0] = v66;
      v97[1] = v77;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
      [defaultCenter postNotificationName:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:selfCopy userInfo:v68];
    }

    managerCopy = v78;
    regionCopy = v75;
    identifier = v76;
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (id)regionInfosForRegistration:(id)registration
{
  v28 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  effectiveBundleIDRegionInfos = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDRegionInfos];
  v6 = [effectiveBundleIDRegionInfos copy];

  locationManagerEffectiveBundleID = [registrationCopy locationManagerEffectiveBundleID];
  v8 = [v6 objectForKeyedSubscript:locationManagerEffectiveBundleID];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  predicate = [registrationCopy predicate];
  circularLocationRegions = [predicate circularLocationRegions];
  v12 = NSStringFromSelector(sel_identifier);
  v13 = [circularLocationRegions valueForKey:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [v8 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v23}];
        if (v19)
        {
          [v9 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [v9 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)locationManager:(NSObject *)a3 didStartMonitoringForRegion:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1A9611000, a3, OS_LOG_TYPE_DEBUG, "Start monitoring for region %@ on behalf of %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end