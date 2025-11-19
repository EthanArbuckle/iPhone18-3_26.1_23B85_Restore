@interface DTXPCControlService
- (DTXPCControlService)initWithChannel:(id)a3;
- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7;
- (void)messageReceived:(id)a3;
- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)a3 programPath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7;
@end

@implementation DTXPCControlService

- (DTXPCControlService)initWithChannel:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DTXPCControlService;
  v5 = [(DTProcessControlService *)&v10 initWithChannel:v4];
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
    [v4 registerDisconnectHandler:v8];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)launchSuspendedProcessWithDevicePath:(id)a3 bundleIdentifier:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService launchSuspendedProcessWithDevicePath called: path=%@, bundleIdentifier=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  if (![v13 length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid bundle identifier"];
  }

  v17 = [v16 mutableCopy];
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
  [v22 registerClient:self forXPCService:v13 environment:v14 arguments:v15 options:v20 handler:v28];

  v24 = v29;
  v25 = v23;

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)messageReceived:(id)a3
{
  if (*MEMORY[0x277D03698] == a3)
  {
    v5 = +[DTXPCServiceController sharedInstance];
    [v5 unregisterClient:self withIdentifier:0 parent:0];
  }
}

- (void)requestDebugLaunchOfDaemonWithSpecifier:(id)a3 programPath:(id)a4 environment:(id)a5 arguments:(id)a6 options:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138413314;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService requestDebugLaunchOfDaemonWithSpecifier called: specifier=%@, programPath=%@, environment=%@, arguments=%@, options=%@", buf, 0x34u);
  }

  v17 = +[DTXPCServiceController sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_247FD5FFC;
  v20[3] = &unk_278EF3718;
  v21 = v16;
  v22 = self;
  v18 = v16;
  [v17 requestDebugLaunchOfDaemonWithSpecifier:v12 programPath:v13 environment:v14 arguments:v15 options:v18 handler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

@end