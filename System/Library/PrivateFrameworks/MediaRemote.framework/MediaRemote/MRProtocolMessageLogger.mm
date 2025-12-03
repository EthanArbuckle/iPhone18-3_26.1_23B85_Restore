@interface MRProtocolMessageLogger
+ (id)sharedLogger;
- (MRProtocolMessageLogger)init;
- (void)logMessage:(id)message client:(id)client protocolMessage:(id)protocolMessage;
- (void)logMessage:(id)message label:(id)label deviceInfo:(id)info protocolMessage:(id)protocolMessage;
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

- (void)logMessage:(id)message client:(id)client protocolMessage:(id)protocolMessage
{
  clientCopy = client;
  protocolMessageCopy = protocolMessage;
  messageCopy = message;
  connection = [clientCopy connection];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [clientCopy label];
  v13 = label;
  if (label)
  {
    v14 = label;
  }

  else
  {
    v14 = &stru_1F1513E38;
  }

  if (connection)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v11 initWithFormat:@"[%@<%@:%p>] ", v14, v16, connection];
  }

  else
  {
    v17 = [v11 initWithFormat:@"[%@<%@:%p>] ", v14, &stru_1F1513E38, 0];
  }

  deviceInfo = [clientCopy deviceInfo];
  [(MRProtocolMessageLogger *)self logMessage:messageCopy label:v17 deviceInfo:deviceInfo protocolMessage:protocolMessageCopy];
}

- (void)logMessage:(id)message label:(id)label deviceInfo:(id)info protocolMessage:(id)protocolMessage
{
  v47[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  labelCopy = label;
  infoCopy = info;
  protocolMessageCopy = protocolMessage;
  if ([(MRProtocolMessageLogger *)self shouldLog])
  {
    v47[0] = protocolMessageCopy;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    objc_opt_class();
    v29 = protocolMessageCopy;
    if (objc_opt_isKindOfClass())
    {
      messages = [protocolMessageCopy messages];

      v13 = messages;
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
      selfCopy = self;
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
            if (labelCopy)
            {
              if (-[MRProtocolMessageLogger shouldVerboselyLog](self, "shouldVerboselyLog") || [v20 shouldVerboselyLog])
              {
                v21 = _MRLogForCategory(1uLL);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
LABEL_20:
                  effectiveIdentifer = [infoCopy effectiveIdentifer];
                  effectiveName = [infoCopy effectiveName];
                  v24 = [v20 description];
                  *buf = 138544386;
                  v37 = labelCopy;
                  v38 = 2114;
                  v39 = messageCopy;
                  v40 = 2114;
                  v41 = effectiveIdentifer;
                  v42 = 2112;
                  v43 = effectiveName;
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

              effectiveIdentifer = [infoCopy effectiveIdentifer];
              effectiveName = [infoCopy effectiveName];
              v24 = [v20 description];
              *buf = 138413058;
              v37 = messageCopy;
              v38 = 2114;
              v39 = effectiveIdentifer;
              v40 = 2112;
              v41 = effectiveName;
              v42 = 2114;
              v43 = v24;
              v25 = v21;
              v26 = "[%@ <%{public}@-%@>]: %{public}@";
              v27 = 42;
LABEL_23:
              _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);

              self = selfCopy;
            }

LABEL_24:

            continue;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v17);
    }

    protocolMessageCopy = v29;
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end