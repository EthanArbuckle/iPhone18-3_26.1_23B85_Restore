@interface DTScreenshotRequestService
+ (void)registerCapabilities:(id)a3;
- (id)_screenshotServiceRequestWithError:(id *)a3;
- (id)takeScreenshot;
@end

@implementation DTScreenshotRequestService

+ (void)registerCapabilities:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 138412290;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Registering service %@", v7, 0xCu);
  }

  [v4 publishCapability:@"com.apple.instruments.server.services.screenshot" withVersion:2 forClass:{a1, *v7}];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)takeScreenshot
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0;
  v4 = [(DTScreenshotRequestService *)self _screenshotWithError:&v18];
  v5 = v18;
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [v4 length];
      *buf = 138412546;
      v20 = v7;
      v21 = 2048;
      v22 = v9;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@: Screenshot succeeded (%lu bytes)", buf, 0x16u);
    }

    v10 = v4;
  }

  else
  {
    if (!v5)
    {
      v11 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      v24[0] = @"Unknown error.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v6 = [v11 errorWithDomain:@"DTScreenshotRequestService" code:1 userInfo:v12];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      v14 = v13;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@: Screenshot failed: %@", buf, 0x16u);
    }

    [v3 invokeCompletionWithReturnValue:v6 error:v6];
    v10 = v3;
  }

  v15 = v10;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_screenshotServiceRequestWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.dt.DTScreenshotService"];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A4DE88];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_247FCE338;
  v25 = sub_247FCE348;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_247FCE338;
  v19 = sub_247FCE348;
  v20 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = [v4 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247FCE350;
  v11[3] = &unk_278EF25C8;
  v13 = &v21;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  [v7 takeScreenshotWithReply:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v16[5];
  }

  [v4 invalidate];
  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

@end