@interface DTAssetProviderService
+ (BOOL)shouldStartAssetServerForApplication:(id)application;
+ (id)assetManifestPathForApplication:(id)application;
+ (void)assetProviderWithConnection:(id)connection workingDirectory:(id)directory completion:(id)completion;
+ (void)beginProvidingAssetsForApplication:(id)application onChannel:(id)channel completion:(id)completion;
+ (void)beginProvidingAssetsForLocalApplication:(id)application connection:(id)connection completion:(id)completion;
+ (void)beginProvidingAssetsForRemoteApplication:(id)application workingDirectory:(id)directory connection:(id)connection completion:(id)completion;
- (BOOL)_requestedPath:(id)path belongsToWorkingDirectory:(id)directory;
- (BOOL)_serveData:(id)data usingChannel:(id)channel forRequestIdentifier:(id)identifier checkForCancellation:(BOOL)cancellation error:(id *)error;
- (BOOL)hasCancelledRequestWithIdentifier:(id)identifier onChannel:(id)channel;
- (BOOL)serveDataFromFileHandle:(id)handle forRequestIdentifier:(id)identifier;
- (DTAssetProviderService)initWithChannel:(id)channel;
- (DTXConnection)connection;
- (id)_bestChannelForRequestWithIdentifier:(id)identifier;
- (void)_completeResponseOnChannel:(id)channel withIdentifier:(id)identifier;
- (void)messageReceived:(id)received;
- (void)registerManifestForApplicationAtPath:(id)path onPort:(unint64_t)port;
- (void)serveDataFromFile:(id)file forRequestIdentifier:(id)identifier;
- (void)startServerOnDeviceWithCompletion:(id)completion;
- (void)startServingAssetsForAppWithPath:(id)path withCompletion:(id)completion;
@end

@implementation DTAssetProviderService

- (DTAssetProviderService)initWithChannel:(id)channel
{
  v6.receiver = self;
  v6.super_class = DTAssetProviderService;
  v3 = [(DTXService *)&v6 initWithChannel:channel];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.dt.DTAssetProviderService", MEMORY[0x277D85CD8]);
    [(DTAssetProviderService *)v3 setConcurrentRequestQueue:v4];
  }

  return v3;
}

+ (void)beginProvidingAssetsForRemoteApplication:(id)application workingDirectory:(id)directory connection:(id)connection completion:(id)completion
{
  applicationCopy = application;
  directoryCopy = directory;
  connectionCopy = connection;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_24802CCA0(a2, self);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_247F861A4;
  v17[3] = &unk_278EF1D68;
  v18 = applicationCopy;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = applicationCopy;
  [self assetProviderWithConnection:connectionCopy workingDirectory:directoryCopy completion:v17];
}

+ (void)beginProvidingAssetsForLocalApplication:(id)application connection:(id)connection completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  connectionCopy = connection;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_24802CD1C(a2, self);
  }

  if ([self shouldStartAssetServerForApplication:applicationCopy])
  {
    stringByDeletingLastPathComponent = [applicationCopy stringByDeletingLastPathComponent];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F86370;
    v14[3] = &unk_278EF1DB8;
    v16 = completionCopy;
    v15 = applicationCopy;
    [self assetProviderWithConnection:connectionCopy workingDirectory:stringByDeletingLastPathComponent completion:v14];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = applicationCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Not starting ODR asset provider because there is no manifest template at %@", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)assetProviderWithConnection:(id)connection workingDirectory:(id)directory completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  directoryCopy = directory;
  completionCopy = completion;
  if (connectionCopy)
  {
    if ([connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.assets"] > 2)
    {
      [connectionCopy setMaximumEnqueueSize:40960];
      v14 = [connectionCopy makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets"];
      v15 = [[self alloc] initWithChannel:v14];
      [v15 setWorkingDirectory:directoryCopy];
      [v15 setConnection:connectionCopy];
      completionCopy[2](completionCopy, v15, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"no connection provided";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.dt.AssetProviderService" code:1 userInfo:v12];

    (completionCopy)[2](completionCopy, 0, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startServingAssetsForAppWithPath:(id)path withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_startServerForApplicationWithDevicePath_ objectArguments:{path, 0}];
  channel = [(DTXService *)self channel];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F867E8;
  v10[3] = &unk_278EF1DE0;
  v11 = completionCopy;
  v9 = completionCopy;
  [channel sendControlAsync:v7 replyHandler:v10];
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  if ([receivedCopy errorStatus] != 2)
  {
    concurrentRequestQueue = [(DTAssetProviderService *)self concurrentRequestQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F86904;
    v6[3] = &unk_278EF1550;
    v7 = receivedCopy;
    selfCopy = self;
    dispatch_async(concurrentRequestQueue, v6);
  }
}

- (void)serveDataFromFile:(id)file forRequestIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = identifierCopy;
    v12 = 2112;
    v13 = fileCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Serving data for request %@ from file %@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:fileCopy];
  [(DTAssetProviderService *)self serveDataFromFileHandle:v8 forRequestIdentifier:identifierCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)serveDataFromFileHandle:(id)handle forRequestIdentifier:(id)identifier
{
  v39 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  identifierCopy = identifier;
  channel = [(DTXService *)self channel];
  selfCopy = self;
  connection = [(DTAssetProviderService *)self connection];
  v9 = [connection remoteCapabilityVersion:@"com.apple.instruments.server.services.assets.response"];

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v9 < 1)
  {
    if (v10)
    {
      *buf = 138412290;
      v34 = identifierCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Using existing channel to send response packets for request %@", buf, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v34 = identifierCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Opening new channel to send response packets for request %@", buf, 0xCu);
    }

    connection2 = [(DTAssetProviderService *)self connection];
    v12 = [connection2 makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets.response"];

    v13 = [MEMORY[0x277D03668] messageWithSelector:sel_prepareForResponse objectArguments:0];
    [v12 sendControlSync:v13 replyHandler:&unk_285A180C8];

    channel = v12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v34 = identifierCopy;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Starting to send data for request %@.", buf, 0xCu);
  }

  availableData = [handleCopy availableData];
  if (availableData)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while ([availableData length])
    {
      if (v9 >= 2 && v15 >= v17)
      {
        if ([(DTAssetProviderService *)selfCopy hasCancelledRequestWithIdentifier:identifierCopy onChannel:channel])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = identifierCopy;
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Request %@ has been cancelled, stopping sending data.", buf, 0xCu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v34 = identifierCopy;
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

      v18 = [DTAssetResponse responseWithIdentifier:identifierCopy data:availableData];
      message = [v18 message];
      [channel sendMessage:message replyHandler:0];

      v15 += [availableData length];
      ++v16;

      availableData2 = [handleCopy availableData];

      availableData = availableData2;
      if (!availableData2)
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

  v21 = [DTAssetResponse completedResponseWithIdentifier:identifierCopy];
  message2 = [v21 message];
  [channel sendMessage:message2 replyHandler:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v34 = identifierCopy;
    v35 = 2048;
    v36 = v15;
    v37 = 2048;
    v38 = v16;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "ODR: Finished sending request %@. Sent bytes: %llu from %llu messages.", buf, 0x20u);
  }

  v23 = 1;
LABEL_22:
  channel2 = [(DTXService *)selfCopy channel];

  if (channel != channel2)
  {
    v25 = *MEMORY[0x277D03688];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_247F871A4;
    v30[3] = &unk_278EF10C0;
    v31 = identifierCopy;
    v32 = channel;
    [v32 sendMessageAsync:v25 replyHandler:v30];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)hasCancelledRequestWithIdentifier:(id)identifier onChannel:(id)channel
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  channelCopy = channel;
  v7 = [MEMORY[0x277D03668] messageWithSelector:sel_canContinueServingRequestWithIdentifier_ objectArguments:{identifierCopy, 0}];
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
  [channelCopy sendMessageSync:v7 replyHandler:v15];
  error = [v17[5] error];

  if (error)
  {
    object = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(object, OS_LOG_TYPE_ERROR))
    {
      error2 = [v17[5] error];
      *buf = 138412546;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = error2;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ODR: Error checking if request %@ is cancelled: %@", buf, 0x16u);
    }

    LOBYTE(v12) = 1;
  }

  else
  {
    object = [v17[5] object];
    v12 = [object BOOLValue]^ 1;
  }

  _Block_object_dispose(&v16, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)assetManifestPathForApplication:(id)application
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:application];
  v4 = [v3 pathForResource:@"AssetPackManifestTemplate" ofType:@"plist"];

  return v4;
}

+ (BOOL)shouldStartAssetServerForApplication:(id)application
{
  v4 = MEMORY[0x277CCAA00];
  applicationCopy = application;
  defaultManager = [v4 defaultManager];
  v7 = [self assetManifestPathForApplication:applicationCopy];

  LOBYTE(applicationCopy) = [defaultManager fileExistsAtPath:v7];
  return applicationCopy;
}

+ (void)beginProvidingAssetsForApplication:(id)application onChannel:(id)channel completion:(id)completion
{
  applicationCopy = application;
  channelCopy = channel;
  completionCopy = completion;
  if (([self shouldStartAssetServerForApplication:applicationCopy] & 1) != 0 && channelCopy)
  {
    v11 = [[self alloc] initWithChannel:channelCopy];
    stringByDeletingLastPathComponent = [applicationCopy stringByDeletingLastPathComponent];
    [v11 setWorkingDirectory:stringByDeletingLastPathComponent];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_247F876D0;
    v14[3] = &unk_278EF1D90;
    v17 = completionCopy;
    v15 = v11;
    v16 = applicationCopy;
    v13 = v11;
    [v13 startServerOnDeviceWithCompletion:v14];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

- (void)startServerOnDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277D03668] messageWithSelector:sel_startServer objectArguments:0];
  channel = [(DTXService *)self channel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247F87888;
  v8[3] = &unk_278EF1DE0;
  v9 = completionCopy;
  v7 = completionCopy;
  [channel sendMessageAsync:v5 replyHandler:v8];
}

- (void)registerManifestForApplicationAtPath:(id)path onPort:(unint64_t)port
{
  v13 = [MEMORY[0x277CCA8D8] bundleWithPath:path];
  v6 = [v13 pathForResource:@"AssetPackManifestTemplate" ofType:@"plist"];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
  v8 = [DTAssetService translatedManifest:v7 withAssetServicePort:port];
  if (v8)
  {
    v9 = MEMORY[0x277D03668];
    bundleIdentifier = [v13 bundleIdentifier];
    v11 = [v9 messageWithSelector:sel_registerApplicationIdentifier_manifest_ objectArguments:{bundleIdentifier, v8, 0}];

    channel = [(DTXService *)self channel];
    [channel sendMessageAsync:v11 replyHandler:&unk_285A180E8];
  }
}

- (BOOL)_requestedPath:(id)path belongsToWorkingDirectory:(id)directory
{
  pathCopy = path;
  directoryCopy = directory;
  stringByResolvingSymlinksInPath = [pathCopy stringByResolvingSymlinksInPath];
  pathComponents = [stringByResolvingSymlinksInPath pathComponents];

  stringByResolvingSymlinksInPath2 = [directoryCopy stringByResolvingSymlinksInPath];
  pathComponents2 = [stringByResolvingSymlinksInPath2 pathComponents];

  v11 = 0;
  if (pathComponents && pathComponents2)
  {
    v12 = [pathComponents count];
    if (v12 >= [pathComponents2 count])
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_247F87BE8;
      v14[3] = &unk_278EF1E30;
      v15 = pathComponents;
      v16 = &v17;
      [pathComponents2 enumerateObjectsUsingBlock:v14];
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

- (id)_bestChannelForRequestWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  channel = [(DTXService *)self channel];
  connection = [(DTAssetProviderService *)self connection];
  v7 = [connection remoteCapabilityVersion:@"com.apple.instruments.server.services.assets.response"];

  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v7 < 1)
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Using existing channel to send response packets for request %@", &v14, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Opening new channel to send response packets for request %@", &v14, 0xCu);
    }

    connection2 = [(DTAssetProviderService *)self connection];
    v10 = [connection2 makeChannelWithIdentifier:@"com.apple.instruments.server.services.assets.response"];

    v11 = [MEMORY[0x277D03668] messageWithSelector:sel_prepareForResponse objectArguments:0];
    [v10 sendControlSync:v11 replyHandler:&unk_285A18108];

    channel = v10;
  }

  v12 = *MEMORY[0x277D85DE8];

  return channel;
}

- (void)_completeResponseOnChannel:(id)channel withIdentifier:(id)identifier
{
  channelCopy = channel;
  identifierCopy = identifier;
  v8 = [DTAssetResponse completedResponseWithIdentifier:identifierCopy];
  message = [v8 message];
  [channelCopy sendMessage:message replyHandler:0];

  channel = [(DTXService *)self channel];

  if (channel != channelCopy)
  {
    v11 = *MEMORY[0x277D03688];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247F87F54;
    v12[3] = &unk_278EF10C0;
    v13 = identifierCopy;
    v14 = channelCopy;
    [v14 sendMessageAsync:v11 replyHandler:v12];
  }
}

- (BOOL)_serveData:(id)data usingChannel:(id)channel forRequestIdentifier:(id)identifier checkForCancellation:(BOOL)cancellation error:(id *)error
{
  cancellationCopy = cancellation;
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  channelCopy = channel;
  identifierCopy = identifier;
  if (channelCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = identifierCopy;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ODR: Sending data for request %@.", buf, 0xCu);
    }

    if (!cancellationCopy || ![(DTAssetProviderService *)self hasCancelledRequestWithIdentifier:identifierCopy onChannel:channelCopy])
    {
      v22 = [DTAssetResponse responseWithIdentifier:identifierCopy data:dataCopy];
      message = [v22 message];
      [channelCopy sendMessage:message replyHandler:0];

      v24 = 1;
      goto LABEL_13;
    }

    [channelCopy cancel];
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA5B8];
    v32 = *MEMORY[0x277CCA450];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Request %@ has been cancelled, stopping sending data.", identifierCopy];
    v33 = identifierCopy;
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
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Request %@ can't send data because there is no channel connection.", identifierCopy];
    v31 = identifierCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = v25;
    v20 = v26;
    v21 = 57;
  }

  v22 = [v19 errorWithDomain:v20 code:v21 userInfo:v18];

  if (error && v22)
  {
    v27 = v22;
    *error = v22;
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