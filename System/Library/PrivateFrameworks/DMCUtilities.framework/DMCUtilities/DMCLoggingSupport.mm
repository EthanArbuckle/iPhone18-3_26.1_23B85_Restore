@interface DMCLoggingSupport
- (void)dealloc;
- (void)enableDebugLoggingForProcesses:(id)a3;
- (void)enableDebugLoggingForSubsystems:(id)a3;
- (void)resetAll;
@end

@implementation DMCLoggingSupport

- (void)enableDebugLoggingForProcesses:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v4;
    obj = v4;
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
        v12 = [(DMCLoggingSupport *)self processes];

        if (!v12)
        {
          v13 = *(v8 + 3984);
          v14 = objc_opt_new();
          [(DMCLoggingSupport *)self setProcesses:v14];
        }

        v15 = [(DMCLoggingSupport *)self processes];
        v16 = [v15 objectForKeyedSubscript:v11];

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

            v26 = [(DMCLoggingSupport *)self processes];
            [v26 setObject:v17 forKeyedSubscript:v11];
LABEL_20:
          }

          else
          {
            v19 = *DMCLogObjects();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              log = v19;
              v20 = v7;
              v21 = [v17 effectiveEnabledLevel];
              v22 = v9;
              v23 = [v17 enabledLevel];
              v24 = [v17 effectivePersistedLevel];
              v25 = [v17 persistedLevel];
              *buf = 138413314;
              v37 = v11;
              v38 = 2048;
              v39 = v21;
              v7 = v20;
              v8 = 0x1E695D000;
              v40 = 2048;
              v41 = v23;
              v9 = v22;
              v42 = 2048;
              v43 = v24;
              v44 = 2048;
              v45 = v25;
              v26 = log;
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

        v4 = v29;
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)enableDebugLoggingForSubsystems:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[DMCFeatureFlags isAppleInternal])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v4;
    obj = v4;
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
        v12 = [(DMCLoggingSupport *)self subsystems];

        if (!v12)
        {
          v13 = *(v8 + 3984);
          v14 = objc_opt_new();
          [(DMCLoggingSupport *)self setSubsystems:v14];
        }

        v15 = [(DMCLoggingSupport *)self subsystems];
        v16 = [v15 objectForKeyedSubscript:v11];

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

            v26 = [(DMCLoggingSupport *)self subsystems];
            [v26 setObject:v17 forKeyedSubscript:v11];
LABEL_20:
          }

          else
          {
            v19 = *DMCLogObjects();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              log = v19;
              v20 = v7;
              v21 = [v17 effectiveEnabledLevel];
              v22 = v9;
              v23 = [v17 enabledLevel];
              v24 = [v17 effectivePersistedLevel];
              v25 = [v17 persistedLevel];
              *buf = 138413314;
              v37 = v11;
              v38 = 2048;
              v39 = v21;
              v7 = v20;
              v8 = 0x1E695D000;
              v40 = 2048;
              v41 = v23;
              v9 = v22;
              v42 = 2048;
              v43 = v24;
              v44 = 2048;
              v45 = v25;
              v26 = log;
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

        v4 = v29;
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
    v3 = [(DMCLoggingSupport *)self processes];

    if (v3)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v4 = [(DMCLoggingSupport *)self processes];
      v5 = [v4 allValues];

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
              objc_enumerationMutation(v5);
            }

            [*(*(&v22 + 1) + 8 * v9++) reset];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v7);
      }

      [(DMCLoggingSupport *)self setProcesses:0];
    }

    v10 = [(DMCLoggingSupport *)self subsystems];

    if (v10)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [(DMCLoggingSupport *)self subsystems];
      v12 = [v11 allValues];

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
              objc_enumerationMutation(v12);
            }

            [*(*(&v18 + 1) + 8 * v16++) reset];
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v14);
      }

      [(DMCLoggingSupport *)self setSubsystems:0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end