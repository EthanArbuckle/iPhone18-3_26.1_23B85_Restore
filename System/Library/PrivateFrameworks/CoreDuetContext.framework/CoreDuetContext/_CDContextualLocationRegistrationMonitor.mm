@interface _CDContextualLocationRegistrationMonitor
- (_CDContextualLocationRegistrationMonitor)init;
- (id)regionInfosForRegistration:(id)a3;
- (void)addRegistration:(id)a3;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)removeRegistration:(id)a3;
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

    v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    effectiveBundleIDs = v2->_effectiveBundleIDs;
    v2->_effectiveBundleIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    effectiveBundleIDRegionInfos = v2->_effectiveBundleIDRegionInfos;
    v2->_effectiveBundleIDRegionInfos = v12;
  }

  return v2;
}

- (void)addRegistration:(id)a3
{
  v4 = a3;
  v5 = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___CDContextualLocationRegistrationMonitor_addRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeRegistration:(id)a3
{
  v4 = a3;
  v5 = [(_CDContextualLocationRegistrationMonitor *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___CDContextualLocationRegistrationMonitor_removeRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v10 = [v9 objectForKey:v7];

  v11 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(_CDContextualLocationRegistrationMonitor *)v6 locationManager:v10 didStartMonitoringForRegion:v11];
  }
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDs];
  v13 = [v12 objectForKey:v10];

  v14 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = [v8 identifier];
    v17 = 138412802;
    v18 = v16;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v9;
    _os_log_error_impl(&dword_1A9611000, v14, OS_LOG_TYPE_ERROR, "Failed monitoring region %@ for %@: %@", &v17, 0x20u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v108 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(_CDContextualLocationRegistrationMonitor *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v9 identifier];
  if (v12)
  {
    v76 = v12;
    v77 = v11;
    v75 = v9;
    v78 = v8;
    v13 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore Region State Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *state = 0;
    *&state[8] = 0;
    os_activity_scope_enter(v13, state);
    os_activity_scope_leave(state);

    v82 = self;
    v83 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v14 = [(_CDContextualLocationRegistrationMonitor *)self registrations];
    v15 = [v14 countByEnumeratingWithState:&v92 objects:v107 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v92 + 1) + 8 * i);
          v20 = [(_CDContextualLocationRegistrationMonitor *)v82 regionInfosForRegistration:v19];
          if ([v20 count])
          {
            v21 = [v19 identifier];
            [v83 setObject:v20 forKeyedSubscript:v21];
          }

          else
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DEC8]);
            v22 = [v19 identifier];
            [v83 setObject:v21 forKeyedSubscript:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v92 objects:v107 count:16];
      }

      while (v16);
    }

    v81 = [v83 copy];
    v23 = [(_CDContextualLocationRegistrationMonitor *)v82 effectiveBundleIDs];
    v24 = [v23 objectForKey:v78];

    v25 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v75 identifier];
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      *state = 138412802;
      *&state[4] = v26;
      *&state[12] = 2112;
      *&state[14] = v27;
      v99 = 2112;
      v100 = v24;
      _os_log_impl(&dword_1A9611000, v25, OS_LOG_TYPE_INFO, "Region state for region %@ changed to %@ on behalf of %@", state, 0x20u);
    }

    v28 = [(_CDContextualLocationRegistrationMonitor *)v82 effectiveBundleIDRegionInfos];
    v29 = [v28 objectForKeyedSubscript:v24];
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
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v106[1] = v33;
    v34 = +[_CDContextQueries changeDateKey];
    v105[2] = v34;
    v106[2] = v77;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];

    v72 = v35;
    [v30 setObject:v35 forKeyedSubscript:v76];
    v36 = [v30 copy];
    v37 = [(_CDContextualLocationRegistrationMonitor *)v82 effectiveBundleIDRegionInfos];
    v71 = v36;
    [v37 setObject:v36 forKeyedSubscript:v24];

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v39 = [(_CDContextualLocationRegistrationMonitor *)v82 registrations];
    v40 = [v39 countByEnumeratingWithState:&v88 objects:v104 count:16];
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
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v88 + 1) + 8 * j);
          v45 = [(_CDContextualLocationRegistrationMonitor *)v82 regionInfosForRegistration:v44];
          if ([v45 count])
          {
            v46 = [v44 identifier];
            [v38 setObject:v45 forKeyedSubscript:v46];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v88 objects:v104 count:16];
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
            v65 = [MEMORY[0x1E6997908] contextChannel];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
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
              _os_log_debug_impl(&dword_1A9611000, v65, OS_LOG_TYPE_DEBUG, "Registration %@ had %@ values change from %@ to %@", state, 0x2Au);
            }

            [v80 addObject:v54];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v84 objects:v103 count:16];
      }

      while (v50);
    }

    v11 = v77;
    if ([v80 count])
    {
      v66 = [v81 dictionaryWithValuesForKeys:v80];
      v67 = [MEMORY[0x1E696AD88] defaultCenter];
      v96[0] = @"previousRegistrationRegionInfos";
      v96[1] = @"regionStateChangeDate";
      v97[0] = v66;
      v97[1] = v77;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:2];
      [v67 postNotificationName:@"_CDCircularRegionsForRegistrationDidChangeNotification" object:v82 userInfo:v68];
    }

    v8 = v78;
    v9 = v75;
    v12 = v76;
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (id)regionInfosForRegistration:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CDContextualLocationRegistrationMonitor *)self effectiveBundleIDRegionInfos];
  v6 = [v5 copy];

  v7 = [v4 locationManagerEffectiveBundleID];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [v4 predicate];
  v11 = [v10 circularLocationRegions];
  v12 = NSStringFromSelector(sel_identifier);
  v13 = [v11 valueForKey:v12];

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