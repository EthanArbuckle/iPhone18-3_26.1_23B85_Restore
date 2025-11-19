@interface MRProtocolMessageLogger
+ (id)sharedLogger;
- (MRProtocolMessageLogger)init;
- (void)logMessage:(id)a3 client:(id)a4 protocolMessage:(id)a5;
- (void)logMessage:(id)a3 label:(id)a4 deviceInfo:(id)a5 protocolMessage:(id)a6;
@end

@implementation MRProtocolMessageLogger

+ (id)sharedLogger
{
  if (sharedLogger___once != -1)
  {
    +[MRProtocolMessageLogger sharedLogger];
  }

  v3 = sharedLogger___sharedContext;

  return v3;
}

- (MRProtocolMessageLogger)init
{
  v6.receiver = self;
  v6.super_class = MRProtocolMessageLogger;
  v2 = [(MRProtocolMessageLogger *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MRProtocolMessageLogger *)v2 setShouldLog:1];
    v4 = +[MRUserSettings currentSettings];
    -[MRProtocolMessageLogger setShouldVerboselyLog:](v3, "setShouldVerboselyLog:", [v4 verboseProtocolMessageLogging]);
  }

  return v3;
}

void __39__MRProtocolMessageLogger_sharedLogger__block_invoke()
{
  v0 = objc_alloc_init(MRProtocolMessageLogger);
  v1 = sharedLogger___sharedContext;
  sharedLogger___sharedContext = v0;
}

- (void)logMessage:(id)a3 client:(id)a4 protocolMessage:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v19 connection];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v19 label];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F1513E38;
  }

  if (v10)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v11 initWithFormat:@"[%@<%@:%p>] ", v14, v16, v10];
  }

  else
  {
    v17 = [v11 initWithFormat:@"[%@<%@:%p>] ", v14, &stru_1F1513E38, 0];
  }

  v18 = [v19 deviceInfo];
  [(MRProtocolMessageLogger *)self logMessage:v9 label:v17 deviceInfo:v18 protocolMessage:v8];
}

- (void)logMessage:(id)a3 label:(id)a4 deviceInfo:(id)a5 protocolMessage:(id)a6
{
  v47[1] = *MEMORY[0x1E69E9840];
  v31 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(MRProtocolMessageLogger *)self shouldLog])
  {
    v47[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    objc_opt_class();
    v29 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 messages];

      v13 = v14;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      v30 = self;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          if ([v20 shouldLog])
          {
            if (v10)
            {
              if (-[MRProtocolMessageLogger shouldVerboselyLog](self, "shouldVerboselyLog") || [v20 shouldVerboselyLog])
              {
                v21 = _MRLogForCategory(1uLL);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
LABEL_20:
                  v22 = [v11 effectiveIdentifer];
                  v23 = [v11 effectiveName];
                  v24 = [v20 description];
                  *buf = 138544386;
                  v37 = v10;
                  v38 = 2114;
                  v39 = v31;
                  v40 = 2114;
                  v41 = v22;
                  v42 = 2112;
                  v43 = v23;
                  v44 = 2114;
                  v45 = v24;
                  v25 = v21;
                  v26 = "%{public}@[%{public}@ <%{public}@-%@>]: %{public}@";
                  v27 = 52;
                  goto LABEL_23;
                }
              }

              else
              {
                v21 = _MRLogForCategory(0);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              if (self->_shouldVerboselyLog || [v20 shouldVerboselyLog])
              {
                v21 = _MRLogForCategory(1uLL);
                if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }
              }

              else
              {
                v21 = _MRLogForCategory(0);
                if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_24;
                }
              }

              v22 = [v11 effectiveIdentifer];
              v23 = [v11 effectiveName];
              v24 = [v20 description];
              *buf = 138413058;
              v37 = v31;
              v38 = 2114;
              v39 = v22;
              v40 = 2112;
              v41 = v23;
              v42 = 2114;
              v43 = v24;
              v25 = v21;
              v26 = "[%@ <%{public}@-%@>]: %{public}@";
              v27 = 42;
LABEL_23:
              _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);

              self = v30;
            }

LABEL_24:

            continue;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v17);
    }

    v12 = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end