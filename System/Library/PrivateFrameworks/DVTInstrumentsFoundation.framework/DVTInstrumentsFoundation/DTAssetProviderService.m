@interface DTAssetProviderService
+ (BOOL)shouldStartAssetServerForApplication:(id)a3;
+ (id)assetManifestPathForApplication:(id)a3;
+ (void)assetProviderWithConnection:(id)a3 workingDirectory:(id)a4 completion:(id)a5;
+ (void)beginProvidingAssetsForApplication:(id)a3 onChannel:(id)a4 completion:(id)a5;
+ (void)beginProvidingAssetsForLocalApplication:(id)a3 connection:(id)a4 completion:(id)a5;
+ (void)beginProvidingAssetsForRemoteApplication:(id)a3 workingDirectory:(id)a4 connection:(id)a5 completion:(id)a6;
- (BOOL)_requestedPath:(id)a3 belongsToWorkingDirectory:(id)a4;
- (BOOL)_serveData:(id)a3 usingChannel:(id)a4 forRequestIdentifier:(id)a5 checkForCancellation:(BOOL)a6 error:(id *)a7;
- (BOOL)hasCancelledRequestWithIdentifier:(id)a3 onChannel:(id)a4;
- (BOOL)serveDataFromFileHandle:(id)a3 forRequestIdentifier:(id)a4;
- (DTAssetProviderService)initWithChannel:(id)a3;
- (DTXConnection)connection;
- (id)_bestChannelForRequestWithIdentifier:(id)a3;
- (void)_completeResponseOnChannel:(id)a3 withIdentifier:(id)a4;
- (void)messageReceived:(id)a3;
- (void)registerManifestForApplicationAtPath:(id)a3 onPort:(unint64_t)a4;
- (void)serveDataFromFile:(id)a3 forRequestIdentifier:(id)a4;
- (void)startServerOnDeviceWithCompletion:(id)a3;
- (void)startServingAssetsForAppWithPath:(id)a3 withCompletion:(id)a4;
@end

@implementation DTAssetProviderService

- (DTAssetProviderService)initWithChannel:(id)a3
{
  v6.receiver = self;
  v6.super_class = DTAssetProviderService;
  v3 = [(DTXService *)&v6 initWithChannel:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.dt.DTAssetProviderService", MEMORY[0x277D85CD8]);
    [(DTAssetProviderService *)v3 setConcurrentRequestQueue:v4];
  }

  return v3;
}

+ (void)beginProvidingAssetsForRemoteApplication:(id)a3 workingDirectory:(id)a4 connection:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    sub_24802CCA0(a2, a1);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_247F861A4;
  v17[3] = &unk_278EF1D68;
  v18 = v11;
  v19 = v14;
  v15 = v14;
  v16 = v11;
  [a1 assetProviderWithConnection:v13 workingDirectory:v12 completion:v17];
}

+ (void)beginProvidingAssetsForLocalApplication:(id)a3 connection:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    sub_24802CD1C(a2, a1);
  }

  if ([a1 shouldStartAssetServerForApplication:v9])
  {
    v12 = [v9 stringByDeletingLastPathComponent];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F86370;
    v14[3] = &unk_278EF1DB8;
    v16 = v11;
    v15 = v9;
    [a1 assetProviderWithConnection:v10 workingDirectory:v12 completion:v14];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not starting ODR asset provider because there is no manifest template at %@", buf, 0xCu);
    }

    (*(v11 + 2))(v11, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)assetProviderWithConnection:(id)a3 workingDirectory:(id)a4 completion:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if ([v8 remoteCapabilityVersion:@"com.apple.instruments.server.services.assets"] > 2)
    {
      [v8 setMaximumEnqueueSize:40960];
      v14 = [v8 makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets"];
      v15 = [[a1 alloc] initWithChannel:v14];
      [v15 setWorkingDirectory:v9];
      [v15 setConnection:v8];
      v10[2](v10, v15, 0);
    }

    else
    {
      v10[2](v10, 0, 0);
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"no connection provided";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.dt.AssetProviderService" code:1 userInfo:v12];

    (v10)[2](v10, 0, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startServingAssetsForAppWithPath:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_startServerForApplicationWithDevicePath_ objectArguments:{a3, 0}];
  v8 = [(DTXService *)self channel];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F867E8;
  v10[3] = &unk_278EF1DE0;
  v11 = v6;
  v9 = v6;
  [v8 sendControlAsync:v7 replyHandler:v10];
}

- (void)messageReceived:(id)a3
{
  v4 = a3;
  if ([v4 errorStatus] != 2)
  {
    v5 = [(DTAssetProviderService *)self concurrentRequestQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F86904;
    v6[3] = &unk_278EF1550;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (void)serveDataFromFile:(id)a3 forRequestIdentifier:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Serving data for request %@ from file %@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v6];
  [(DTAssetProviderService *)self serveDataFromFileHandle:v8 forRequestIdentifier:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)serveDataFromFileHandle:(id)a3 forRequestIdentifier:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v7 = [(DTXService *)self channel];
  v28 = self;
  v8 = [(DTAssetProviderService *)self connection];
  v9 = [v8 remoteCapabilityVersion:@"com.apple.instruments.server.services.assets.response"];

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v9 < 1)
  {
    if (v10)
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Using existing channel to send response packets for request %@", buf, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Opening new channel to send response packets for request %@", buf, 0xCu);
    }

    v11 = [(DTAssetProviderService *)self connection];
    v12 = [v11 makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets.response"];

    v13 = [MEMORY[0x277D03668] messageWithSelector:sel_prepareForResponse objectArguments:0];
    [v12 sendControlSync:v13 replyHandler:&unk_285A180C8];

    v7 = v12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Starting to send data for request %@.", buf, 0xCu);
  }

  v14 = [v29 availableData];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while ([v14 length])
    {
      if (v9 >= 2 && v15 >= v17)
      {
        if ([(DTAssetProviderService *)v28 hasCancelledRequestWithIdentifier:v6 onChannel:v7])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v6;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Request %@ has been cancelled, stopping sending data.", buf, 0xCu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v34 = v6;
            v35 = 2048;
            v36 = v15;
            v37 = 2048;
            v38 = v16;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Cancelled request %@ after sending %llu bytes from %llu messages.", buf, 0x20u);
          }

          v23 = 0;
          goto LABEL_22;
        }

        v17 += 0x100000;
      }

      v18 = [DTAssetResponse responseWithIdentifier:v6 data:v14];
      v19 = [v18 message];
      [v7 sendMessage:v19 replyHandler:0];

      v15 += [v14 length];
      ++v16;

      v20 = [v29 availableData];

      v14 = v20;
      if (!v20)
      {
        break;
      }
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v21 = [DTAssetResponse completedResponseWithIdentifier:v6];
  v22 = [v21 message];
  [v7 sendMessage:v22 replyHandler:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v34 = v6;
    v35 = 2048;
    v36 = v15;
    v37 = 2048;
    v38 = v16;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Finished sending request %@. Sent bytes: %llu from %llu messages.", buf, 0x20u);
  }

  v23 = 1;
LABEL_22:
  v24 = [(DTXService *)v28 channel];

  if (v7 != v24)
  {
    v25 = *MEMORY[0x277D03688];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_247F871A4;
    v30[3] = &unk_278EF10C0;
    v31 = v6;
    v32 = v7;
    [v32 sendMessageAsync:v25 replyHandler:v30];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)hasCancelledRequestWithIdentifier:(id)a3 onChannel:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_canContinueServingRequestWithIdentifier_ objectArguments:{v5, 0}];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_247F87484;
  v20 = sub_247F87494;
  v21 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247F8749C;
  v15[3] = &unk_278EF1E08;
  v15[4] = &v16;
  [v6 sendMessageSync:v7 replyHandler:v15];
  v8 = [v17[5] error];

  if (v8)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [v17[5] error];
      *buf = 138412546;
      v23 = v5;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ODR: Error checking if request %@ is cancelled: %@", buf, 0x16u);
    }

    LOBYTE(v12) = 1;
  }

  else
  {
    v9 = [v17[5] object];
    v12 = [v9 BOOLValue]^ 1;
  }

  _Block_object_dispose(&v16, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)assetManifestPathForApplication:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:a3];
  v4 = [v3 pathForResource:@"AssetPackManifestTemplate" ofType:@"plist"];

  return v4;
}

+ (BOOL)shouldStartAssetServerForApplication:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [a1 assetManifestPathForApplication:v5];

  LOBYTE(v5) = [v6 fileExistsAtPath:v7];
  return v5;
}

+ (void)beginProvidingAssetsForApplication:(id)a3 onChannel:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([a1 shouldStartAssetServerForApplication:v8] & 1) != 0 && v9)
  {
    v11 = [[a1 alloc] initWithChannel:v9];
    v12 = [v8 stringByDeletingLastPathComponent];
    [v11 setWorkingDirectory:v12];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F876D0;
    v14[3] = &unk_278EF1D90;
    v17 = v10;
    v15 = v11;
    v16 = v8;
    v13 = v11;
    [v13 startServerOnDeviceWithCompletion:v14];
  }

  else
  {
    v10[2](v10);
  }
}

- (void)startServerOnDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D03668] messageWithSelector:sel_startServer objectArguments:0];
  v6 = [(DTXService *)self channel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247F87888;
  v8[3] = &unk_278EF1DE0;
  v9 = v4;
  v7 = v4;
  [v6 sendMessageAsync:v5 replyHandler:v8];
}

- (void)registerManifestForApplicationAtPath:(id)a3 onPort:(unint64_t)a4
{
  v13 = [MEMORY[0x277CCA8D8] bundleWithPath:a3];
  v6 = [v13 pathForResource:@"AssetPackManifestTemplate" ofType:@"plist"];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v8 = [DTAssetService translatedManifest:v7 withAssetServicePort:a4];
  if (v8)
  {
    v9 = MEMORY[0x277D03668];
    v10 = [v13 bundleIdentifier];
    v11 = [v9 messageWithSelector:sel_registerApplicationIdentifier_manifest_ objectArguments:{v10, v8, 0}];

    v12 = [(DTXService *)self channel];
    [v12 sendMessageAsync:v11 replyHandler:&unk_285A180E8];
  }
}

- (BOOL)_requestedPath:(id)a3 belongsToWorkingDirectory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 stringByResolvingSymlinksInPath];
  v8 = [v7 pathComponents];

  v9 = [v6 stringByResolvingSymlinksInPath];
  v10 = [v9 pathComponents];

  v11 = 0;
  if (v8 && v10)
  {
    v12 = [v8 count];
    if (v12 >= [v10 count])
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_247F87BE8;
      v14[3] = &unk_278EF1E30;
      v15 = v8;
      v16 = &v17;
      [v10 enumerateObjectsUsingBlock:v14];
      v11 = *(v18 + 24);

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (id)_bestChannelForRequestWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DTXService *)self channel];
  v6 = [(DTAssetProviderService *)self connection];
  v7 = [v6 remoteCapabilityVersion:@"com.apple.instruments.server.services.assets.response"];

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v7 < 1)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Using existing channel to send response packets for request %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Opening new channel to send response packets for request %@", &v14, 0xCu);
    }

    v9 = [(DTAssetProviderService *)self connection];
    v10 = [v9 makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets.response"];

    v11 = [MEMORY[0x277D03668] messageWithSelector:sel_prepareForResponse objectArguments:0];
    [v10 sendControlSync:v11 replyHandler:&unk_285A18108];

    v5 = v10;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_completeResponseOnChannel:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [DTAssetResponse completedResponseWithIdentifier:v7];
  v9 = [v8 message];
  [v6 sendMessage:v9 replyHandler:0];

  v10 = [(DTXService *)self channel];

  if (v10 != v6)
  {
    v11 = *MEMORY[0x277D03688];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247F87F54;
    v12[3] = &unk_278EF10C0;
    v13 = v7;
    v14 = v6;
    [v14 sendMessageAsync:v11 replyHandler:v12];
  }
}

- (BOOL)_serveData:(id)a3 usingChannel:(id)a4 forRequestIdentifier:(id)a5 checkForCancellation:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Sending data for request %@.", buf, 0xCu);
    }

    if (!v8 || ![(DTAssetProviderService *)self hasCancelledRequestWithIdentifier:v14 onChannel:v13])
    {
      v22 = [DTAssetResponse responseWithIdentifier:v14 data:v12];
      v23 = [v22 message];
      [v13 sendMessage:v23 replyHandler:0];

      v24 = 1;
      goto LABEL_13;
    }

    [v13 cancel];
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA5B8];
    v32 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request %@ has been cancelled, stopping sending data.", v14];
    v33 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = v15;
    v20 = v16;
    v21 = 89;
  }

  else
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA5B8];
    v30 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request %@ can't send data because there is no channel connection.", v14];
    v31 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = v25;
    v20 = v26;
    v21 = 57;
  }

  v22 = [v19 errorWithDomain:v20 code:v21 userInfo:v18];

  if (a7 && v22)
  {
    v27 = v22;
    *a7 = v22;
  }

  v24 = v22 == 0;
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

- (DTXConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end