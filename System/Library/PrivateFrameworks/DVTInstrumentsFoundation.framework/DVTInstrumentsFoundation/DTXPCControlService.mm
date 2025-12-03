@interface DTXPCControlService
- (DTXPCControlService)initWithChannel:(id)channel;
- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options;
- (void)messageReceived:(id)received;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options;
@end

@implementation DTXPCControlService

- (DTXPCControlService)initWithChannel:(id)channel
{
  v13 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  v10.receiver = self;
  v10.super_class = DTXPCControlService;
  v5 = [(DTProcessControlService *)&v10 initWithChannel:channelCopy];
  if (v5)
  {
    if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "XPCControlService %p", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247FD563C;
    v8[3] = &unk_278EF1070;
    v9 = v5;
    [channelCopy registerDisconnectHandler:v8];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)launchSuspendedProcessWithDevicePath:(id)path bundleIdentifier:(id)identifier environment:(id)environment arguments:(id)arguments options:(id)options
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  identifierCopy = identifier;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v31 = pathCopy;
    v32 = 2112;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = environmentCopy;
    v36 = 2112;
    v37 = argumentsCopy;
    v38 = 2112;
    v39 = optionsCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService launchSuspendedProcessWithDevicePath called: path=%@, bundleIdentifier=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  if (![identifierCopy length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid bundle identifier"];
  }

  v17 = [optionsCopy mutableCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OnceOnly"];
  v21 = objc_alloc_init(MEMORY[0x277D03670]);
  v22 = +[DTXPCServiceController sharedInstance];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_247FD596C;
  v28[3] = &unk_278EF3718;
  v28[4] = self;
  v23 = v21;
  v29 = v23;
  [v22 registerClient:self forXPCService:identifierCopy environment:environmentCopy arguments:argumentsCopy options:v20 handler:v28];

  v24 = v29;
  v25 = v23;

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)messageReceived:(id)received
{
  if (*MEMORY[0x277D03698] == received)
  {
    v5 = +[DTXPCServiceController sharedInstance];
    [v5 unregisterClient:self withIdentifier:0 parent:0];
  }
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)specifier programPath:(id)path environment:(id)environment arguments:(id)arguments options:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  pathCopy = path;
  environmentCopy = environment;
  argumentsCopy = arguments;
  optionsCopy = options;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v24 = specifierCopy;
    v25 = 2112;
    v26 = pathCopy;
    v27 = 2112;
    v28 = environmentCopy;
    v29 = 2112;
    v30 = argumentsCopy;
    v31 = 2112;
    v32 = optionsCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService requestDebugLaunchOfDaemonWithSpecifier called: specifier=%@, programPath=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  v17 = +[DTXPCServiceController sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_247FD5FFC;
  v20[3] = &unk_278EF3718;
  v21 = optionsCopy;
  selfCopy = self;
  v18 = optionsCopy;
  [v17 requestDebugLaunchOfDaemonWithSpecifier:specifierCopy programPath:pathCopy environment:environmentCopy arguments:argumentsCopy options:v18 handler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

@end