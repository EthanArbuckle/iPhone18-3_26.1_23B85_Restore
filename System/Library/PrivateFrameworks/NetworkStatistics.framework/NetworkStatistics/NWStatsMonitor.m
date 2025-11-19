@interface NWStatsMonitor
- (NWStatsMonitor)initWithQueue:(id)a3;
- (id)extensionNameForUUID:(id)a3;
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
- (id)stateDictionary;
- (void)configure:(id)a3;
- (void)noteFailedLookupFor:(id)a3 processName:(char *)a4 pid:(int)a5;
@end

@implementation NWStatsMonitor

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  v6 = a3;
  if (self->_useStaticMapping)
  {
    v7 = [(NWStatsEntityMapperStaticAssignment *)self->_staticAssignmentUUIDMapper identifierForUUID:v6 derivation:a4];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useLaunchServices)
  {
    v7 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper identifierForUUID:v6 derivation:a4];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useNEHelper)
  {
    v7 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:v6 derivation:a4];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useCoalitionIDs)
  {
    v7 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:v6 derivation:a4];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useProcessNames)
  {
    v7 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:v6 derivation:a4];
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)noteFailedLookupFor:(id)a3 processName:(char *)a4 pid:(int)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
    }

    else
    {
      if (a5)
      {
        pid_to_process_name(a5);
      }

      else
      {
        [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:v8 derivation:0];
      }
      v9 = ;
    }

    v10 = v9;
    if (!v9 || ([(NSSet *)self->_knownDaemonSet member:v9], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = [(NSMutableDictionary *)self->_reportedLookupFailures objectForKeyedSubscript:v8];
      if (v12)
      {
        v13 = v12;
        [v12 timeIntervalSinceNow];
        if (v14 >= -900.0)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      v15 = [MEMORY[0x277CBEAA8] date];
      [(NSMutableDictionary *)self->_reportedLookupFailures setObject:v15 forKeyedSubscript:v8];

      v16 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:v8 derivation:0];
      v17 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:v8 derivation:0];
      v18 = NStatGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138544130;
        v21 = v8;
        v22 = 2114;
        v23 = v10;
        v24 = 2114;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_DEFAULT, "Can't lookup UUID %{public}@ for procname %{public}@, coalition %{public}@ nehelper %{public}@", &v20, 0x2Au);
      }

      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)extensionNameForUUID:(id)a3
{
  if (self->_useLaunchServices)
  {
    v5 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper extensionNameForUUID:a3, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configure:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelper"];

  if (v5)
  {
    self->_useNEHelper = 1;
  }

  v6 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];
      useNEHelperSet = self->_useNEHelperSet;
      self->_useNEHelperSet = v9;
    }

    else
    {
      v11 = NStatGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25BA3A000, v11, OS_LOG_TYPE_ERROR, "Configuration Parameters for UseNEHelperForSet not a set", buf, 2u);
      }
    }
  }

  v12 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];

  if (v12)
  {
    v13 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];
      p_super = &self->_appendProcNameSet->super;
      self->_appendProcNameSet = v15;
    }

    else
    {
      p_super = NStatGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        _os_log_impl(&dword_25BA3A000, p_super, OS_LOG_TYPE_ERROR, "Configuration Parameters for UseProcessPrefixForSet not a set", v40, 2u);
      }
    }
  }

  v17 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseCoalitions"];

  if (v17)
  {
    v18 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingUseCoalitions"];
    v19 = [v18 BOOLValue];
    self->_useCoalitionIDs = v19;
    self->_useProcessNames = v19 ^ 1;
  }

  v20 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingCheckStaticAssignments"];

  if (v20)
  {
    v21 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingCheckStaticAssignments"];
    self->_useStaticMapping = [v21 BOOLValue];
  }

  v22 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidCoalitions"];

  if (v22)
  {
    v23 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidCoalitions"];
    v24 = [v23 BOOLValue];
    self->_useCoalitionIDs = v24 ^ 1;
    self->_useProcessNames = v24;
  }

  v25 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidLaunchServices"];

  if (v25)
  {
    v26 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidLaunchServices"];
    self->_useLaunchServices = [v26 BOOLValue] ^ 1;
  }

  v27 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingDebugMode"];

  if (v27)
  {
    v28 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingDebugMode"];
    self->_debugMode = [v28 BOOLValue];
  }

  v29 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingCanonicalizeProcessNames"];

  if (v29)
  {
    v30 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingCanonicalizeProcessNames"];
    -[NWStatsEntityMapperProcessWatcher setCanonicalizedNames:](self->_processWatcherUUIDMapper, "setCanonicalizedNames:", [v30 BOOLValue]);
  }

  v31 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAppStateMonitoring"];

  if (v31)
  {
    v32 = [v4 objectForKeyedSubscript:@"kNWStatsParameterMappingAppStateMonitoring"];
    if ([v32 BOOLValue])
    {
      if (!self->_appEventListener)
      {
        v33 = [[NWStatsAppEventListener alloc] initWithQueue:self->_queue];
        appEventListener = self->_appEventListener;
        self->_appEventListener = v33;
      }

      if (self->_appStateHandler)
      {
        goto LABEL_37;
      }

      v35 = objc_alloc_init(NWAppStateHandler);
      appStateHandler = self->_appStateHandler;
      self->_appStateHandler = v35;

      v37 = self->_appStateHandler;
      if (!v37)
      {
        goto LABEL_37;
      }

      v38 = self->_appEventListener;
      if (!v38)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v39 = self->_appStateHandler;
      self->_appStateHandler = 0;

      v38 = self->_appEventListener;
      v37 = 0;
    }

    [(NWStatsAppEventListener *)v38 setAppStateDelegate:v37];
LABEL_37:
  }
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper stateDictionary];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"DynLSMapper"];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAC0] dictionary];
    [v3 setObject:v5 forKeyedSubscript:@"DynLSMapper"];
  }

  v6 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper stateDictionary];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"ProcMapper"];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAC0] dictionary];
    [v3 setObject:v7 forKeyedSubscript:@"ProcMapper"];
  }

  return v3;
}

- (NWStatsMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = NWStatsMonitor;
  v6 = [(NWStatsMonitor *)&v28 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = objc_alloc_init(NWStatsEntityMapperStaticAssignment);
  staticAssignmentUUIDMapper = v6->_staticAssignmentUUIDMapper;
  v6->_staticAssignmentUUIDMapper = v7;

  v9 = objc_alloc_init(NWStatsEntityMapperNEHelper);
  neHelperUUIDMapper = v6->_neHelperUUIDMapper;
  v6->_neHelperUUIDMapper = v9;

  v11 = objc_alloc_init(NWStatsEntityMapperDynamicLaunchServices);
  dynamicLaunchServicesUUIDMapper = v6->_dynamicLaunchServicesUUIDMapper;
  v6->_dynamicLaunchServicesUUIDMapper = v11;

  v13 = objc_alloc_init(NWStatsEntityMapperProcessWatcher);
  processWatcherUUIDMapper = v6->_processWatcherUUIDMapper;
  v6->_processWatcherUUIDMapper = v13;

  if (v6->_staticAssignmentUUIDMapper && v6->_neHelperUUIDMapper && v6->_dynamicLaunchServicesUUIDMapper && v6->_processWatcherUUIDMapper)
  {
    *&v6->_useCoalitionIDs = 256;
    objc_storeStrong(&v6->_queue, a3);
    v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_286D3E5A0];
    knownDaemonSet = v6->_knownDaemonSet;
    v6->_knownDaemonSet = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportedLookupFailures = v6->_reportedLookupFailures;
    v6->_reportedLookupFailures = v17;

    v19 = objc_alloc_init(NWStatsEntityMapperCoalitionWatcher);
    coalitionUUIDMapper = v6->_coalitionUUIDMapper;
    v6->_coalitionUUIDMapper = v19;

    v6->_useStaticMapping = 1;
    *&v6->_useNEHelper = 256;
    v21 = [MEMORY[0x277CBEB98] setWithObjects:{@"nsurlsessiond", 0}];
    useNEHelperSet = v6->_useNEHelperSet;
    v6->_useNEHelperSet = v21;

    appendProcNameSet = v6->_appendProcNameSet;
    v6->_appendProcNameSet = 0;

    v6->_debugMode = 0;
LABEL_7:
    v24 = v6;
    goto LABEL_11;
  }

  v25 = NStatGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25BA3A000, v25, OS_LOG_TYPE_ERROR, "Cannot initialize all UUID mappers", buf, 2u);
  }

  v24 = 0;
LABEL_11:

  return v24;
}

@end