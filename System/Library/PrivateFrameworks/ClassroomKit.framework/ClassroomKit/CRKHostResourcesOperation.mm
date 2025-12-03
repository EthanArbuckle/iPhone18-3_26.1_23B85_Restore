@interface CRKHostResourcesOperation
- (BOOL)allDownloadsFinished;
- (BOOL)downloadAllowedForFileURL:(id)l;
- (CRKHostResourcesOperation)initWithConfiguration:(id)configuration;
- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates;
- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates maximumAllowedDownloads:(unint64_t)downloads;
- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates maximumAllowedDownloads:(unint64_t)downloads port:(unsigned __int16)port;
- (CRKHostResourcesOperationDelegate)delegate;
- (id)hostingSocketOptions;
- (void)IPAddressDidChange;
- (void)cancel;
- (void)connection:(id)connection didFailToSendDataWithStream:(id)stream userInfo:(id)info error:(id)error;
- (void)connection:(id)connection didInterruptWithError:(id)error;
- (void)connection:(id)connection didReceiveDataRequestWithURL:(id)l;
- (void)connection:(id)connection didSendDataWithStream:(id)stream userInfo:(id)info;
- (void)connectionCloseDidTimeout:(id)timeout;
- (void)connectionDidClose:(id)close;
- (void)delegateDownloadFinished:(id)finished fileURL:(id)l error:(id)error;
- (void)delegateDownloadStarted:(id)started fileURL:(id)l;
- (void)delegateResourcesDidPublish;
- (void)incrementFinishedDownloadCountForFileURL:(id)l;
- (void)incrementStartedDownloadCountForFileURL:(id)l;
- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream;
- (void)netService:(id)service didNotPublish:(id)publish;
- (void)netServiceDidPublish:(id)publish;
- (void)netServiceDidStop:(id)stop;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operationDidFinish;
- (void)run;
- (void)serveItemAtURL:(id)l toConnection:(id)connection forRequestURL:(id)rL originalItemURL:(id)uRL;
- (void)zipDirectoryAtURL:(id)l completion:(id)completion;
- (void)zipOperationDidFail:(id)fail directoryURL:(id)l;
@end

@implementation CRKHostResourcesOperation

- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates
{
  certificatesCopy = certificates;
  identityCopy = identity;
  lsCopy = ls;
  v11 = [[CRKHostResourcesConfiguration alloc] initWithResourceURLs:lsCopy serverIdentity:identityCopy trustedAnchorCertificates:certificatesCopy];

  v12 = [(CRKHostResourcesOperation *)self initWithConfiguration:v11];
  return v12;
}

- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates maximumAllowedDownloads:(unint64_t)downloads
{
  certificatesCopy = certificates;
  identityCopy = identity;
  lsCopy = ls;
  v13 = [[CRKHostResourcesConfiguration alloc] initWithResourceURLs:lsCopy serverIdentity:identityCopy trustedAnchorCertificates:certificatesCopy];

  [(CRKHostResourcesConfiguration *)v13 setMaximumAllowedDownloads:downloads];
  v14 = [(CRKHostResourcesOperation *)self initWithConfiguration:v13];

  return v14;
}

- (CRKHostResourcesOperation)initWithResourceURLs:(id)ls serverIdentity:(id)identity trustedAnchorCertificates:(id)certificates maximumAllowedDownloads:(unint64_t)downloads port:(unsigned __int16)port
{
  portCopy = port;
  certificatesCopy = certificates;
  identityCopy = identity;
  lsCopy = ls;
  v15 = [[CRKHostResourcesConfiguration alloc] initWithResourceURLs:lsCopy serverIdentity:identityCopy trustedAnchorCertificates:certificatesCopy];

  [(CRKHostResourcesConfiguration *)v15 setMaximumAllowedDownloads:downloads];
  [(CRKHostResourcesConfiguration *)v15 setPort:portCopy];
  v16 = [(CRKHostResourcesOperation *)self initWithConfiguration:v15];

  return v16;
}

- (CRKHostResourcesOperation)initWithConfiguration:(id)configuration
{
  v45 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [(CRKHostResourcesOperation *)a2 initWithConfiguration:?];
  }

  v42.receiver = self;
  v42.super_class = CRKHostResourcesOperation;
  v6 = [(CRKHostResourcesOperation *)&v42 init];
  if (v6)
  {
    v7 = [configurationCopy copy];
    mConfiguration = v6->mConfiguration;
    v6->mConfiguration = v7;

    v9 = objc_opt_new();
    mStartedDownloadCountByFileURL = v6->mStartedDownloadCountByFileURL;
    v6->mStartedDownloadCountByFileURL = v9;

    v11 = objc_opt_new();
    mFinishedDownloadCountByFileURL = v6->mFinishedDownloadCountByFileURL;
    v6->mFinishedDownloadCountByFileURL = v11;

    v13 = objc_opt_new();
    mConnections = v6->mConnections;
    v34 = v6;
    v6->mConnections = v13;

    v37 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = configurationCopy;
    obj = [configurationCopy resourceURLs];
    v15 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = MEMORY[0x277CBEBC0];
          v43[0] = @"/";
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          v43[1] = uUIDString;
          lastPathComponent = [v19 lastPathComponent];
          v43[2] = lastPathComponent;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
          v25 = [v20 fileURLWithPathComponents:v24];
          crk_escapedPath = [v25 crk_escapedPath];

          [(NSDictionary *)v37 setObject:v19 forKeyedSubscript:crk_escapedPath];
        }

        v16 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v16);
    }

    v6 = v34;
    mFileURLsByFilePath = v34->mFileURLsByFilePath;
    v34->mFileURLsByFilePath = v37;
    v28 = v37;

    v29 = objc_opt_new();
    mConnectionCloseTimers = v34->mConnectionCloseTimers;
    v34->mConnectionCloseTimers = v29;

    v31 = objc_opt_new();
    mZipOperationsByDirectoryURL = v34->mZipOperationsByDirectoryURL;
    v34->mZipOperationsByDirectoryURL = v31;

    configurationCopy = v35;
  }

  return v6;
}

- (void)run
{
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    if ([(CRKHostResourcesOperation *)self isCanceled])
    {
      v7 = CATErrorWithCodeAndUserInfo();
      [(CRKHostResourcesOperation *)self endOperationWithError:v7];
    }

    else if ([(NSDictionary *)self->mFileURLsByFilePath count])
    {
      iPAddressProvider = [(CRKHostResourcesConfiguration *)self->mConfiguration IPAddressProvider];
      [iPAddressProvider addObserver:self forKeyPath:@"IPAddress" options:0 context:@"CRKHostResourcesOperationObservationContext"];

      [(CRKHostResourcesOperation *)self setObservingIPAddress:1];
      v4 = [objc_alloc(MEMORY[0x277CBAB60]) initWithDomain:&stru_285643BE8 type:@"_classroomshare._tcp." name:&stru_285643BE8 port:{-[CRKHostResourcesConfiguration port](self->mConfiguration, "port")}];
      mNetService = self->mNetService;
      self->mNetService = v4;

      [(NSNetService *)self->mNetService setDelegate:self];
      v6 = self->mNetService;

      [(NSNetService *)v6 publishWithOptions:2];
    }

    else
    {

      [(CRKHostResourcesOperation *)self endOperationWithResultObject:0];
    }
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKHostResourcesOperation;
  [(CRKHostResourcesOperation *)&v4 cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__CRKHostResourcesOperation_cancel__block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

- (void)operationDidFinish
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = CRKHostResourcesOperation;
  [(CRKHostResourcesOperation *)&v22 operationDidFinish];
  if ([(CRKHostResourcesOperation *)self isObservingIPAddress])
  {
    iPAddressProvider = [(CRKHostResourcesConfiguration *)self->mConfiguration IPAddressProvider];
    [iPAddressProvider removeObserver:self forKeyPath:@"IPAddress" context:@"CRKHostResourcesOperationObservationContext"];

    [(CRKHostResourcesOperation *)self setObservingIPAddress:0];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSMutableSet *)self->mConnections copy];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v18 + 1) + 8 * v8++) close];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->mConnections removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(NSMutableSet *)self->mConnectionCloseTimers copy];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSMutableSet *)self->mConnectionCloseTimers removeAllObjects];
}

- (id)hostingSocketOptions
{
  v2 = objc_opt_new();
  [v2 setAdaptiveWriteTimeout:&unk_285672808];
  [v2 setKeepAliveEnabled:MEMORY[0x277CBEC38]];
  [v2 setKeepAliveDelay:&unk_285672820];
  [v2 setKeepAliveInterval:&unk_285672838];
  [v2 setKeepAliveCount:&unk_285672838];
  [v2 setNetServiceType:&unk_285672850];

  return v2;
}

- (BOOL)downloadAllowedForFileURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    if ([(CRKHostResourcesConfiguration *)self->mConfiguration maximumAllowedDownloads])
    {
      v5 = [(NSMutableDictionary *)self->mStartedDownloadCountByFileURL objectForKeyedSubscript:lCopy];
      integerValue = [v5 integerValue];
      v7 = integerValue < [(CRKHostResourcesConfiguration *)self->mConfiguration maximumAllowedDownloads];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)incrementStartedDownloadCountForFileURL:(id)l
{
  mStartedDownloadCountByFileURL = self->mStartedDownloadCountByFileURL;
  lCopy = l;
  v6 = [(NSMutableDictionary *)mStartedDownloadCountByFileURL objectForKeyedSubscript:lCopy];
  v7 = v6;
  v8 = &unk_285672868;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = MEMORY[0x277CCABB0];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v12 = [v10 numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->mStartedDownloadCountByFileURL setObject:v12 forKeyedSubscript:lCopy];
}

- (void)incrementFinishedDownloadCountForFileURL:(id)l
{
  mFinishedDownloadCountByFileURL = self->mFinishedDownloadCountByFileURL;
  lCopy = l;
  v6 = [(NSMutableDictionary *)mFinishedDownloadCountByFileURL objectForKeyedSubscript:lCopy];
  v7 = v6;
  v8 = &unk_285672868;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = MEMORY[0x277CCABB0];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v12 = [v10 numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->mFinishedDownloadCountByFileURL setObject:v12 forKeyedSubscript:lCopy];
}

- (BOOL)allDownloadsFinished
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->mStashedError)
  {
    return 1;
  }

  if (![(CRKHostResourcesConfiguration *)self->mConfiguration maximumAllowedDownloads])
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->mFinishedDownloadCountByFileURL count];
  if (v4 != [(NSDictionary *)self->mFileURLsByFilePath count])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->mFinishedDownloadCountByFileURL allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        unsignedIntegerValue = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
        if (unsignedIntegerValue < [(CRKHostResourcesConfiguration *)self->mConfiguration maximumAllowedDownloads])
        {
          v2 = 0;
          goto LABEL_16;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v2 = 1;
LABEL_16:

  return v2;
}

- (void)delegateResourcesDidPublish
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  iPAddressProvider = [(CRKHostResourcesConfiguration *)self->mConfiguration IPAddressProvider];
  iPAddress = [iPAddressProvider IPAddress];
  v7 = [v4 stringWithFormat:@"https://%@:%ld", iPAddress, -[NSNetService port](self->mNetService, "port")];
  v8 = [v3 URLWithString:v7];

  mFileURLsByFilePath = self->mFileURLsByFilePath;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__CRKHostResourcesOperation_delegateResourcesDidPublish__block_invoke;
  v14[3] = &unk_278DC2970;
  v10 = v8;
  v15 = v10;
  v11 = [(NSDictionary *)mFileURLsByFilePath crk_mapUsingBlock:v14];
  delegate = [(CRKHostResourcesOperation *)self delegate];
  LOBYTE(iPAddress) = objc_opt_respondsToSelector();

  if (iPAddress)
  {
    delegate2 = [(CRKHostResourcesOperation *)self delegate];
    [delegate2 hostResourcesOperation:self didPublishResources:v11];
  }
}

CRKResource *__56__CRKHostResourcesOperation_delegateResourcesDidPublish__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CRKResource alloc];
  v8 = [MEMORY[0x277CBEBC0] URLWithString:v6 relativeToURL:*(a1 + 32)];

  v9 = [v5 crk_isBundle];
  v10 = [(CRKResource *)v7 initWithHostedURL:v8 isZippedBundle:v9];

  return v10;
}

- (void)delegateDownloadStarted:(id)started fileURL:(id)l
{
  startedCopy = started;
  lCopy = l;
  delegate = [(CRKHostResourcesOperation *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CRKHostResourcesOperation *)self delegate];
    [delegate2 hostResourcesOperation:self downloadDidStart:startedCopy fileURL:lCopy];
  }
}

- (void)delegateDownloadFinished:(id)finished fileURL:(id)l error:(id)error
{
  finishedCopy = finished;
  lCopy = l;
  errorCopy = error;
  delegate = [(CRKHostResourcesOperation *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(CRKHostResourcesOperation *)self delegate];
    [delegate2 hostResourcesOperation:self downloadDidFinish:finishedCopy fileURL:lCopy error:errorCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKHostResourcesOperationObservationContext")
  {
    mConfiguration = self->mConfiguration;
    objectCopy = object;
    iPAddressProvider = [(CRKHostResourcesConfiguration *)mConfiguration IPAddressProvider];

    if (iPAddressProvider == objectCopy)
    {

      [(CRKHostResourcesOperation *)self IPAddressDidChange];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRKHostResourcesOperation;
    objectCopy2 = object;
    [(CRKHostResourcesOperation *)&v14 observeValueForKeyPath:path ofObject:objectCopy2 change:change context:context];
  }
}

- (void)IPAddressDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogOperation_1();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    iPAddressProvider = [(CRKHostResourcesConfiguration *)self->mConfiguration IPAddressProvider];
    iPAddress = [iPAddressProvider IPAddress];
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = iPAddress;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: IP address did change to %{public}@", &v6, 0x16u);
  }

  if (self->mPublished)
  {
    [(CRKHostResourcesOperation *)self delegateResourcesDidPublish];
  }
}

- (void)netService:(id)service didAcceptConnectionWithInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v9 = MEMORY[0x277CBEB88];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__CRKHostResourcesOperation_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke;
  v12[3] = &unk_278DC1DF0;
  v12[4] = self;
  v13 = streamCopy;
  v14 = outputStreamCopy;
  v10 = outputStreamCopy;
  v11 = streamCopy;
  [v9 cat_performBlockOnMainRunLoop:v12];
}

void __88__CRKHostResourcesOperation_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isExecuting])
  {
    v2 = _CRKLogOperation_1();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Net service did accept connection", &v9, 0xCu);
    }

    v4 = [objc_alloc(MEMORY[0x277CF9548]) initWithInputStream:*(a1 + 40) outputStream:*(a1 + 48)];
    [v4 setDelegate:*(a1 + 32)];
    v5 = [*(a1 + 32) hostingSocketOptions];
    [v4 setSocketOptions:v5];

    [*(*(a1 + 32) + 416) addObject:v4];
    v6 = [*(*(a1 + 32) + 376) trustedCertificates];
    v7 = [v6 crk_mapUsingBlock:&__block_literal_global_72];

    v8 = [*(*(a1 + 32) + 376) serverIdentity];
    [v4 secureUsingServerIdentity:objc_msgSend(v8 trustedCertificates:{"underlyingIdentity"), v7}];

    [v4 scheduleStreams];
    [v4 open];
  }
}

uint64_t __88__CRKHostResourcesOperation_netService_didAcceptConnectionWithInputStream_outputStream___block_invoke_63(int a1, id a2)
{
  v2 = a2;

  return [v2 underlyingCertificate];
}

- (void)netServiceDidPublish:(id)publish
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__CRKHostResourcesOperation_netServiceDidPublish___block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

uint64_t __50__CRKHostResourcesOperation_netServiceDidPublish___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    v3 = _CRKLogOperation_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Net service did publish", &v5, 0xCu);
    }

    *(*(a1 + 32) + 424) = 1;
    return [*(a1 + 32) delegateResourcesDidPublish];
  }

  return result;
}

- (void)netService:(id)service didNotPublish:(id)publish
{
  publishCopy = publish;
  v6 = MEMORY[0x277CBEB88];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__CRKHostResourcesOperation_netService_didNotPublish___block_invoke;
  v8[3] = &unk_278DC1320;
  v8[4] = self;
  v9 = publishCopy;
  v7 = publishCopy;
  [v6 cat_performBlockOnMainRunLoop:v8];
}

void __54__CRKHostResourcesOperation_netService_didNotPublish___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isExecuting])
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CBAAC0];
    v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CBAAB8]];
    v6 = [v3 errorWithDomain:v4 code:objc_msgSend(v5 userInfo:{"integerValue"), *(a1 + 40)}];

    v7 = _CRKLogOperation_1();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__CRKHostResourcesOperation_netService_didNotPublish___block_invoke_cold_1(v2, v6);
    }

    [*v2 endOperationWithError:v6];
  }
}

- (void)netServiceDidStop:(id)stop
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CRKHostResourcesOperation_netServiceDidStop___block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

uint64_t __47__CRKHostResourcesOperation_netServiceDidStop___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    v3 = _CRKLogOperation_1();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Net service did stop. Ending operation.", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5[55])
    {
      return [v5 endOperationWithError:?];
    }

    else
    {
      return [v5 endOperationWithResultObject:?];
    }
  }

  return result;
}

- (void)connection:(id)connection didReceiveDataRequestWithURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  lCopy = l;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    v8 = _CRKLogOperation_1();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      absoluteString = [lCopy absoluteString];
      *buf = 138543874;
      selfCopy = self;
      v22 = 2114;
      v23 = connectionCopy;
      v24 = 2114;
      v25 = absoluteString;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ did receive request for URL %{public}@", buf, 0x20u);
    }

    mFileURLsByFilePath = self->mFileURLsByFilePath;
    crk_escapedPath = [lCopy crk_escapedPath];
    v12 = [(NSDictionary *)mFileURLsByFilePath objectForKeyedSubscript:crk_escapedPath];

    if ([(CRKHostResourcesOperation *)self downloadAllowedForFileURL:v12])
    {
      v13 = [connectionCopy description];
      [(CRKHostResourcesOperation *)self delegateDownloadStarted:v13 fileURL:v12];

      [(CRKHostResourcesOperation *)self incrementStartedDownloadCountForFileURL:v12];
      if ([v12 crk_isBundle])
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __69__CRKHostResourcesOperation_connection_didReceiveDataRequestWithURL___block_invoke;
        v15[3] = &unk_278DC2998;
        v16 = connectionCopy;
        v17 = lCopy;
        selfCopy2 = self;
        v19 = v12;
        [(CRKHostResourcesOperation *)self zipDirectoryAtURL:v19 completion:v15];
      }

      else
      {
        [(CRKHostResourcesOperation *)self serveItemAtURL:v12 toConnection:connectionCopy forRequestURL:lCopy originalItemURL:v12];
      }
    }

    else
    {
      v14 = _CRKLogOperation_1();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CRKHostResourcesOperation connection:? didReceiveDataRequestWithURL:?];
      }

      [connectionCopy close];
    }
  }
}

void __69__CRKHostResourcesOperation_connection_didReceiveDataRequestWithURL___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _CRKLogGeneral_9();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__CRKHostResourcesOperation_connection_didReceiveDataRequestWithURL___block_invoke_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (*(v7 + 440))
    {
      v8 = *(v7 + 440);
    }

    else
    {
      v8 = v5;
    }

    objc_storeStrong((v7 + 440), v8);
    [*(a1 + 32) close];
  }

  else
  {
    [*(a1 + 48) serveItemAtURL:a2 toConnection:*(a1 + 32) forRequestURL:*(a1 + 40) originalItemURL:*(a1 + 56)];
  }
}

- (void)zipDirectoryAtURL:(id)l completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v9 = completionCopy;
  if (lCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CRKHostResourcesOperation zipDirectoryAtURL:a2 completion:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CRKHostResourcesOperation zipDirectoryAtURL:a2 completion:self];
LABEL_3:
  v10 = [(NSMutableDictionary *)self->mZipOperationsByDirectoryURL objectForKeyedSubscript:lCopy];
  if (!v10)
  {
    v11 = _CRKLogGeneral_9();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      path = [lCopy path];
      *buf = 138543362;
      v26 = path;
      _os_log_impl(&dword_243550000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing zip operation for %{public}@", buf, 0xCu);
    }

    v10 = [[CRKZipOperation alloc] initWithDirectoryURL:lCopy];
    [(CRKZipOperation *)v10 addTarget:self selector:sel_zipOperationDidFail_directoryURL_ forOperationEvents:4 userInfo:lCopy];
    crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
    [crk_backgroundQueue addOperation:v10];

    [(NSMutableDictionary *)self->mZipOperationsByDirectoryURL setObject:v10 forKeyedSubscript:lCopy];
  }

  v14 = MEMORY[0x277CCA8C8];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __58__CRKHostResourcesOperation_zipDirectoryAtURL_completion___block_invoke;
  v22 = &unk_278DC0FB8;
  v23 = v10;
  v24 = v9;
  v15 = v10;
  v16 = v9;
  v17 = [v14 blockOperationWithBlock:&v19];
  [v17 addDependency:{v15, v19, v20, v21, v22}];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v17];
}

void __58__CRKHostResourcesOperation_zipDirectoryAtURL_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) resultObject];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)zipOperationDidFail:(id)fail directoryURL:(id)l
{
  failCopy = fail;
  lCopy = l;
  v8 = [(NSMutableDictionary *)self->mZipOperationsByDirectoryURL objectForKeyedSubscript:lCopy];

  if (v8 == failCopy)
  {
    v9 = _CRKLogGeneral_9();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKHostResourcesOperation zipOperationDidFail:lCopy directoryURL:failCopy];
    }

    [(NSMutableDictionary *)self->mZipOperationsByDirectoryURL removeObjectForKey:lCopy];
  }
}

- (void)serveItemAtURL:(id)l toConnection:(id)connection forRequestURL:(id)rL originalItemURL:(id)uRL
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  rLCopy = rL;
  uRLCopy = uRL;
  v13 = MEMORY[0x277CCA9E8];
  lCopy = l;
  v15 = [[v13 alloc] initWithFilePresenter:0];
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__CRKHostResourcesOperation_serveItemAtURL_toConnection_forRequestURL_originalItemURL___block_invoke;
  v22[3] = &unk_278DC29C0;
  v22[4] = self;
  v16 = connectionCopy;
  v23 = v16;
  v17 = rLCopy;
  v24 = v17;
  v18 = uRLCopy;
  v25 = v18;
  [v15 coordinateReadingItemAtURL:lCopy options:8 error:&v26 byAccessor:v22];

  v19 = v26;
  if (v19)
  {
    v20 = _CRKLogOperation_1();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      selfCopy = self;
      v29 = 2114;
      v30 = v16;
      v31 = 2114;
      v32 = v19;
      v33 = 2114;
      v34 = v17;
      _os_log_error_impl(&dword_243550000, v20, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: File coordinator error: %{public}@. Request URL: %{public}@", buf, 0x2Au);
    }

    if (self->mStashedError)
    {
      mStashedError = self->mStashedError;
    }

    else
    {
      mStashedError = v19;
    }

    objc_storeStrong(&self->mStashedError, mStashedError);
    [v16 close];
  }
}

void __87__CRKHostResourcesOperation_serveItemAtURL_toConnection_forRequestURL_originalItemURL___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v3];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v3 path];
  v7 = [v5 attributesOfItemAtPath:v6 error:0];
  v8 = [v7 fileSize];

  v9 = _CRKLogOperation_1();
  v10 = v9;
  if (v4 && v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) absoluteString];
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2048;
      v27 = v8;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Serving file with size %lu bytes for request URL %{public}@", &v22, 0x2Au);
    }

    [*(a1 + 40) sendDataWithStream:v4 length:v8 userInfo:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__CRKHostResourcesOperation_serveItemAtURL_toConnection_forRequestURL_originalItemURL___block_invoke_cold_1(a1, v3);
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 440);
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 440);
      *(v14 + 440) = v16;
    }

    else
    {
      v30 = @"kCRKItemNameErrorKey";
      v17 = [v3 path];
      v31[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v19 = CRKErrorWithCodeAndUserInfo(12, v18);
      v20 = *(a1 + 32);
      v21 = *(v20 + 440);
      *(v20 + 440) = v19;
    }

    [*(a1 + 40) close];
  }
}

- (void)connection:(id)connection didSendDataWithStream:(id)stream userInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  infoCopy = info;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    v9 = _CRKLogOperation_1();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      selfCopy = self;
      v14 = 2114;
      v15 = connectionCopy;
      v16 = 2114;
      v17 = infoCopy;
      _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ did send data with stream. File URL: %{public}@", &v12, 0x20u);
    }

    v10 = [connectionCopy description];
    [(CRKHostResourcesOperation *)self delegateDownloadFinished:v10 fileURL:infoCopy error:0];

    [(CRKHostResourcesOperation *)self incrementFinishedDownloadCountForFileURL:infoCopy];
    v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_connectionCloseDidTimeout_ selector:connectionCopy userInfo:0 repeats:30.0];
    [(NSMutableSet *)self->mConnectionCloseTimers addObject:v11];
  }
}

- (void)connectionCloseDidTimeout:(id)timeout
{
  v11 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    [(NSMutableSet *)self->mConnectionCloseTimers removeObject:timeoutCopy];
    userInfo = [timeoutCopy userInfo];
    if ([(NSMutableSet *)self->mConnections containsObject:userInfo])
    {
      v6 = _CRKLogOperation_1();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543618;
        selfCopy = self;
        v9 = 2114;
        v10 = userInfo;
        _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection close timer fired. Closing %{public}@", &v7, 0x16u);
      }

      [userInfo close];
    }
  }
}

- (void)connection:(id)connection didFailToSendDataWithStream:(id)stream userInfo:(id)info error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  infoCopy = info;
  errorCopy = error;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    v12 = _CRKLogOperation_1();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      verboseDescription = [errorCopy verboseDescription];
      v15 = 138544130;
      selfCopy = self;
      v17 = 2114;
      v18 = connectionCopy;
      v19 = 2114;
      v20 = infoCopy;
      v21 = 2114;
      v22 = verboseDescription;
      _os_log_error_impl(&dword_243550000, v12, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ failed to send data with stream. File URL: %{public}@. Error: %{public}@", &v15, 0x2Au);
    }

    v13 = [connectionCopy description];
    [(CRKHostResourcesOperation *)self delegateDownloadFinished:v13 fileURL:infoCopy error:errorCopy];

    [(CRKHostResourcesOperation *)self incrementFinishedDownloadCountForFileURL:infoCopy];
    [connectionCopy close];
  }
}

- (void)connection:(id)connection didInterruptWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  errorCopy = error;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    v8 = _CRKLogOperation_1();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      verboseDescription = [errorCopy verboseDescription];
      v10 = 138543874;
      selfCopy = self;
      v12 = 2114;
      v13 = connectionCopy;
      v14 = 2114;
      v15 = verboseDescription;
      _os_log_error_impl(&dword_243550000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Connection %{public}@ did interrupt with error: %{public}@", &v10, 0x20u);
    }

    [connectionCopy close];
  }
}

- (void)connectionDidClose:(id)close
{
  v11 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  if ([(CRKHostResourcesOperation *)self isExecuting])
  {
    v5 = _CRKLogOperation_1();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy2 = self;
      v9 = 2114;
      v10 = closeCopy;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection %{public}@ did close", &v7, 0x16u);
    }

    [(NSMutableSet *)self->mConnections removeObject:closeCopy];
    if (![(NSMutableSet *)self->mConnections count]&& [(CRKHostResourcesOperation *)self allDownloadsFinished])
    {
      v6 = _CRKLogOperation_1();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: All downloads finished and all connections closed. Stopping net service.", &v7, 0xCu);
      }

      [(NSNetService *)self->mNetService stop];
    }
  }
}

- (CRKHostResourcesOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKHostResourcesOperation.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
}

void __54__CRKHostResourcesOperation_netService_didNotPublish___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 verboseDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)connection:(uint64_t)a1 didReceiveDataRequestWithURL:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  OUTLINED_FUNCTION_1_4();
  v5 = v1;
  _os_log_error_impl(&dword_243550000, v2, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@: download not allowed. Closing connection.", &v3, 0x16u);
}

void __69__CRKHostResourcesOperation_connection_didReceiveDataRequestWithURL___block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6 = 138543874;
  v7 = v1;
  OUTLINED_FUNCTION_1_4();
  v8 = v2;
  v9 = v3;
  v10 = v4;
  _os_log_error_impl(&dword_243550000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Zip error: %{public}@. Request URL: %{public}@", &v6, 0x20u);
}

- (void)zipDirectoryAtURL:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKHostResourcesOperation.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"directoryURL"}];
}

- (void)zipDirectoryAtURL:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKHostResourcesOperation.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)zipOperationDidFail:(void *)a1 directoryURL:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 error];
  v5 = [v4 verboseDescription];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void __87__CRKHostResourcesOperation_serveItemAtURL_toConnection_forRequestURL_originalItemURL___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = [*(a1 + 48) absoluteString];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

@end