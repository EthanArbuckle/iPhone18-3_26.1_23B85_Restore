@interface DMCLoggingSupport
- (void)dealloc;
- (void)enableDebugLoggingForProcesses:(id)processes;
- (void)enableDebugLoggingForSubsystems:(id)subsystems;
- (void)resetAll;
@end

@implementation DMCLoggingSupport

- (void)enableDebugLoggingForProcesses:(id)processes
{
  v47 = *MEMORY[0x1E69E9840];
  processesCopy = processes;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = processesCopy;
    obj = processesCopy;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = *v33;
    v8 = 0x1E695D000uLL;
    v9 = 0x1E69AD000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        processes = [(DMCLoggingSupport *)self processes];

        if (!processes)
        {
          v13 = *(v8 + 3984);
          v14 = objc_opt_new();
          [(DMCLoggingSupport *)self setProcesses:v14];
        }

        processes2 = [(DMCLoggingSupport *)self processes];
        v16 = [processes2 objectForKeyedSubscript:v11];

        if (!v16)
        {
          v17 = [objc_alloc(*(v9 + 992)) initWithBundleID:v11];
          if ([v17 enabledLevel] == 1 && objc_msgSend(v17, "persistedLevel") == 1)
          {
            if ([v17 effectivePersistedLevel] == 4)
            {
              v18 = *DMCLogObjects();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v37 = v11;
                _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEBUG, "Log level for process %@ is debug already", buf, 0xCu);
              }

              goto LABEL_21;
            }

            [v17 setPersistedLevel:4];
            v27 = *DMCLogObjects();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v11;
              _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEBUG, "Enabled debug log for process %@", buf, 0xCu);
            }

            processes3 = [(DMCLoggingSupport *)self processes];
            [processes3 setObject:v17 forKeyedSubscript:v11];
LABEL_20:
          }

          else
          {
            v19 = *DMCLogObjects();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              log = v19;
              v20 = v7;
              effectiveEnabledLevel = [v17 effectiveEnabledLevel];
              v22 = v9;
              enabledLevel = [v17 enabledLevel];
              effectivePersistedLevel = [v17 effectivePersistedLevel];
              persistedLevel = [v17 persistedLevel];
              *buf = 138413314;
              v37 = v11;
              v38 = 2048;
              v39 = effectiveEnabledLevel;
              v7 = v20;
              v8 = 0x1E695D000;
              v40 = 2048;
              v41 = enabledLevel;
              v9 = v22;
              v42 = 2048;
              v43 = effectivePersistedLevel;
              v44 = 2048;
              v45 = persistedLevel;
              processes3 = log;
              _os_log_impl(&dword_1B1630000, log, OS_LOG_TYPE_DEBUG, "Log level for process %@ has been configured (effectiveEnabledLevel: %ld, enabledLevel: %ld, effectivePersistedLevel: %ld, persistedLevel: %ld, ", buf, 0x34u);
              goto LABEL_20;
            }
          }

LABEL_21:

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (!v6)
      {
LABEL_24:

        processesCopy = v29;
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)enableDebugLoggingForSubsystems:(id)subsystems
{
  v47 = *MEMORY[0x1E69E9840];
  subsystemsCopy = subsystems;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = subsystemsCopy;
    obj = subsystemsCopy;
    v5 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (!v5)
    {
      goto LABEL_24;
    }

    v6 = v5;
    v7 = *v33;
    v8 = 0x1E695D000uLL;
    v9 = 0x1E69AD000uLL;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        subsystems = [(DMCLoggingSupport *)self subsystems];

        if (!subsystems)
        {
          v13 = *(v8 + 3984);
          v14 = objc_opt_new();
          [(DMCLoggingSupport *)self setSubsystems:v14];
        }

        subsystems2 = [(DMCLoggingSupport *)self subsystems];
        v16 = [subsystems2 objectForKeyedSubscript:v11];

        if (!v16)
        {
          v17 = [objc_alloc(*(v9 + 1000)) initWithName:v11];
          if ([v17 enabledLevel] == 1 && objc_msgSend(v17, "persistedLevel") == 1)
          {
            if ([v17 effectivePersistedLevel] == 4)
            {
              v18 = *DMCLogObjects();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v37 = v11;
                _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_DEBUG, "Log level for subsystem %@ is debug already", buf, 0xCu);
              }

              goto LABEL_21;
            }

            [v17 setPersistedLevel:4];
            v27 = *DMCLogObjects();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v37 = v11;
              _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_DEBUG, "Enabled debug log for subsystem %@", buf, 0xCu);
            }

            subsystems3 = [(DMCLoggingSupport *)self subsystems];
            [subsystems3 setObject:v17 forKeyedSubscript:v11];
LABEL_20:
          }

          else
          {
            v19 = *DMCLogObjects();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              log = v19;
              v20 = v7;
              effectiveEnabledLevel = [v17 effectiveEnabledLevel];
              v22 = v9;
              enabledLevel = [v17 enabledLevel];
              effectivePersistedLevel = [v17 effectivePersistedLevel];
              persistedLevel = [v17 persistedLevel];
              *buf = 138413314;
              v37 = v11;
              v38 = 2048;
              v39 = effectiveEnabledLevel;
              v7 = v20;
              v8 = 0x1E695D000;
              v40 = 2048;
              v41 = enabledLevel;
              v9 = v22;
              v42 = 2048;
              v43 = effectivePersistedLevel;
              v44 = 2048;
              v45 = persistedLevel;
              subsystems3 = log;
              _os_log_impl(&dword_1B1630000, log, OS_LOG_TYPE_DEBUG, "Log level for subsystem %@ has been configured (effectiveEnabledLevel: %ld, enabledLevel: %ld, effectivePersistedLevel: %ld, persistedLevel: %ld, ", buf, 0x34u);
              goto LABEL_20;
            }
          }

LABEL_21:

          continue;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      if (!v6)
      {
LABEL_24:

        subsystemsCopy = v29;
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(DMCLoggingSupport *)self resetAll];
  v3.receiver = self;
  v3.super_class = DMCLoggingSupport;
  [(DMCLoggingSupport *)&v3 dealloc];
}

- (void)resetAll
{
  v28 = *MEMORY[0x1E69E9840];
  if (+[DMCFeatureFlags isAppleInternal])
  {
    processes = [(DMCLoggingSupport *)self processes];

    if (processes)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      processes2 = [(DMCLoggingSupport *)self processes];
      allValues = [processes2 allValues];

      v6 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v23;
        do
        {
          v9 = 0;
          do
          {
            if (*v23 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v22 + 1) + 8 * v9++) reset];
          }

          while (v7 != v9);
          v7 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v7);
      }

      [(DMCLoggingSupport *)self setProcesses:0];
    }

    subsystems = [(DMCLoggingSupport *)self subsystems];

    if (subsystems)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      subsystems2 = [(DMCLoggingSupport *)self subsystems];
      allValues2 = [subsystems2 allValues];

      v13 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(allValues2);
            }

            [*(*(&v18 + 1) + 8 * v16++) reset];
          }

          while (v14 != v16);
          v14 = [allValues2 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v14);
      }

      [(DMCLoggingSupport *)self setSubsystems:0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end