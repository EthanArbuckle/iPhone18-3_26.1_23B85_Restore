@interface DTInstrumentServer
+ (void)_tfpPortReceived:(unsigned int)received;
+ (void)takeOwnershipOfSharedAuthorization:(void *)authorization;
- (DTInstrumentServer)initWithTransport:(id)transport;
- (id)_blessSimulatorHub:(int)hub;
- (void)loadServicesAtPath:(id)path;
@end

@implementation DTInstrumentServer

- (DTInstrumentServer)initWithTransport:(id)transport
{
  v37 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  v34.receiver = self;
  v34.super_class = DTInstrumentServer;
  v5 = [(DTInstrumentServer *)&v34 init];
  v6 = v5;
  if (v5)
  {
    if (transportCopy)
    {
      v7 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:transportCopy];
      [v7 setMaximumEnqueueSize:0x800000];
      [v7 setDispatchTarget:v6];
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x3032000000;
      v32[3] = sub_247FB1D94;
      v32[4] = sub_247FB1DA4;
      v33 = os_transaction_create();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_247FB1DAC;
      v31[3] = &unk_278EF1D40;
      v31[4] = v32;
      [v7 registerDisconnectHandler:v31];
      [v7 setChannelHandler:&unk_285A18830];
      v8 = objc_opt_new();
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = v9;
      if (v9 && ([v9 executablePath], v11 = objc_claimAutoreleasedReturnValue(), (v28 = v11) != 0))
      {
        if ([v11 length])
        {
          [v8 addObject:v28];
        }
      }

      else
      {
        v28 = 0;
      }

      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      executablePath = [mainBundle executablePath];

      if (executablePath && [executablePath length])
      {
        [v8 addObject:executablePath];
      }

      if (v10)
      {
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        bundlePath = [mainBundle2 bundlePath];
        bundlePath2 = [v10 bundlePath];
        v17 = [bundlePath isEqualToString:bundlePath2];

        if (v17)
        {
          bundleURL = [v10 bundleURL];
          uRLByDeletingPathExtension = [bundleURL URLByDeletingPathExtension];
          lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

          if (lastPathComponent)
          {
            bundlePath3 = [v10 bundlePath];
            v22 = [bundlePath3 stringByAppendingPathComponent:lastPathComponent];

            if (v22 && [v22 length])
            {
              [v8 addObject:v22];
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v10;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to construct base name for DTInstrumentServer bundle '%@'", buf, 0xCu);
          }
        }
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_247FB1E38;
      v29[3] = &unk_278EF2CC0;
      v23 = v7;
      v30 = v23;
      [v8 enumerateObjectsUsingBlock:v29];
      if (![v8 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "no services to publish - this DTXConnection is likely to be useless", buf, 2u);
      }

      [v23 publishCapability:@"com.apple.dt.Instruments.inlineCapabilities" withVersion:1 forClass:0];
      connection = v6->_connection;
      v6->_connection = v23;
      v25 = v23;

      _Block_object_dispose(v32, 8);
    }

    else
    {

      v6 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)loadServicesAtPath:(id)path
{
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = DVTIUCurrentDylibRootPath();
  v5 = [v4 stringByAppendingPathComponent:pathCopy];

  [MEMORY[0x277CCAA00] defaultManager];
  v26 = v35 = 0;
  v29 = v5;
  v6 = [v26 contentsOfDirectoryAtPath:v5 error:&v35];
  v25 = v35;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        v14 = [pathExtension isEqualToString:@"bundle"];

        if (v14)
        {
          v15 = [v29 stringByAppendingPathComponent:v12];
          v16 = [MEMORY[0x277CCA8D8] bundleWithPath:v15];
          if ([v16 isLoaded])
          {
            v17 = 0;
          }

          else
          {
            v30 = 0;
            v18 = [v16 loadAndReturnError:&v30];
            v17 = v30;
            if ((v18 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              bundlePath = [v16 bundlePath];
              uTF8String = [bundlePath UTF8String];
              localizedDescription = [v17 localizedDescription];
              uTF8String2 = [localizedDescription UTF8String];
              *buf = 136446466;
              v37 = uTF8String;
              v38 = 2082;
              v39 = uTF8String2;
              _os_log_error_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to register services in bundle %{public}s - bundle could not be loaded: %{public}s", buf, 0x16u);
            }
          }

          connection = self->_connection;
          executablePath = [v16 executablePath];
          [(DTXConnection *)connection publishServicesInImagePath:executablePath];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)takeOwnershipOfSharedAuthorization:(void *)authorization
{
  if (authorization)
  {
    obj = self;
    objc_sync_enter(obj);
    qword_27EE84318 = authorization;
    objc_sync_exit(obj);
  }
}

+ (void)_tfpPortReceived:(unsigned int)received
{
  obj = self;
  objc_sync_enter(obj);
  if ((dword_27EE84338 - 1) <= 0xFFFFFFFD)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], dword_27EE84338);
  }

  dword_27EE84338 = received;
  objc_sync_exit(obj);
}

- (id)_blessSimulatorHub:(int)hub
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = @"Simulated hub authorization not available on this platform";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"com.apple.DTInstrumentServer" code:-11 userInfo:v5];
  [v3 invokeCompletionWithReturnValue:0 error:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

@end