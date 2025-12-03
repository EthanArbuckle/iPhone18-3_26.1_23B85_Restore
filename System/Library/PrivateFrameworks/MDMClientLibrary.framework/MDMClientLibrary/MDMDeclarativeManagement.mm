@interface MDMDeclarativeManagement
+ (id)_createNoInstallationError;
+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler;
+ (void)executeRequestForEndpoint:(id)endpoint channelType:(unint64_t)type requestData:(id)data completionHandler:(id)handler;
+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler;
@end

@implementation MDMDeclarativeManagement

+ (void)executeRequestForEndpoint:(id)endpoint channelType:(unint64_t)type requestData:(id)data completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  dataCopy = data;
  handlerCopy = handler;
  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_INFO, "Calling executeRequestForMessageType - channel type: %lu", buf, 0xCu);
  }

  v19 = @"Endpoint";
  v20 = endpointCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v14 = [v13 mutableCopy];

  if (dataCopy)
  {
    [v14 setObject:dataCopy forKeyedSubscript:@"Data"];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__MDMDeclarativeManagement_executeRequestForEndpoint_channelType_requestData_completionHandler___block_invoke;
  v17[3] = &unk_278857048;
  v18 = handlerCopy;
  v15 = handlerCopy;
  [MDMCheckInRequest executeRequestForMessageType:@"DeclarativeManagement" channelType:type requestDict:v14 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)fetchDataAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = +[MDMConfiguration sharedConfiguration];
  [v8 refreshDetailsFromDisk];
  managingProfileIdentifier = [v8 managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    copyMemberQueueIdentity = [v8 copyMemberQueueIdentity];
    checkInPinnedSecCertificateRefs = [v8 checkInPinnedSecCertificateRefs];
    pinningRevocationCheckRequired = [v8 pinningRevocationCheckRequired];
    signMessage = [v8 signMessage];
    rmAccountID = [v8 rmAccountID];
    if (copyMemberQueueIdentity)
    {
      v15 = [[MDMHTTPTransaction alloc] initWithURL:lCopy identity:copyMemberQueueIdentity pinnedCertificates:checkInPinnedSecCertificateRefs pinningRevocationCheckRequired:pinningRevocationCheckRequired signMessage:signMessage isShortTransaction:0 rmAccountID:rmAccountID];
      CFRelease(copyMemberQueueIdentity);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__MDMDeclarativeManagement_fetchDataAtURL_completionHandler___block_invoke;
      v17[3] = &unk_278856D40;
      v18 = v15;
      v19 = handlerCopy;
      _createNoInstallationError = v15;
      [(DMCHTTPTransaction *)_createNoInstallationError performCompletionBlock:v17];
    }

    else
    {
      _createNoInstallationError = [self _createNoInstallationError];
      (*(handlerCopy + 2))(handlerCopy, 0, _createNoInstallationError);
    }
  }

  else
  {
    checkInPinnedSecCertificateRefs = [self _createNoInstallationError];
    (*(handlerCopy + 2))(handlerCopy, 0, checkInPinnedSecCertificateRefs);
  }
}

void __61__MDMDeclarativeManagement_fetchDataAtURL_completionHandler___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = @"ResponseStatusCode";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "statusCode")}];
    v12[0] = v3;
    v11[1] = @"ResponseHeaders";
    v4 = [*(a1 + 32) responseHeaders];
    v12[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v6 = [v5 mutableCopy];

    v7 = [*(a1 + 32) responseData];
    [v6 setObject:v7 forKeyedSubscript:@"ResponseBody"];

    v8 = *(a1 + 40);
    v9 = [v6 copy];
    (*(v8 + 16))(v8, v9, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)downloadDataAtURL:(id)l downloadURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  v11 = +[MDMConfiguration sharedConfiguration];
  [v11 refreshDetailsFromDisk];
  managingProfileIdentifier = [v11 managingProfileIdentifier];

  if (managingProfileIdentifier)
  {
    copyMemberQueueIdentity = [v11 copyMemberQueueIdentity];
    checkInPinnedSecCertificateRefs = [v11 checkInPinnedSecCertificateRefs];
    pinningRevocationCheckRequired = [v11 pinningRevocationCheckRequired];
    signMessage = [v11 signMessage];
    rmAccountID = [v11 rmAccountID];
    if (copyMemberQueueIdentity)
    {
      LOBYTE(v20) = 0;
      v18 = [[MDMHTTPTransaction alloc] initWithURL:lCopy downloadURL:rLCopy identity:copyMemberQueueIdentity pinnedCertificates:checkInPinnedSecCertificateRefs pinningRevocationCheckRequired:pinningRevocationCheckRequired signMessage:signMessage isShortTransaction:v20 rmAccountID:rmAccountID];
      CFRelease(copyMemberQueueIdentity);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __76__MDMDeclarativeManagement_downloadDataAtURL_downloadURL_completionHandler___block_invoke;
      v21[3] = &unk_278857070;
      v22 = v18;
      v24 = handlerCopy;
      v23 = rLCopy;
      _createNoInstallationError = v18;
      [(DMCHTTPTransaction *)_createNoInstallationError performCompletionBlock:v21];
    }

    else
    {
      _createNoInstallationError = [self _createNoInstallationError];
      (*(handlerCopy + 2))(handlerCopy, 0, _createNoInstallationError);
    }
  }

  else
  {
    checkInPinnedSecCertificateRefs = [self _createNoInstallationError];
    (*(handlerCopy + 2))(handlerCopy, 0, checkInPinnedSecCertificateRefs);
  }
}

void __76__MDMDeclarativeManagement_downloadDataAtURL_downloadURL_completionHandler___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8[0] = @"ResponseStatusCode";
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "statusCode")}];
    v9[0] = v3;
    v8[1] = @"ResponseHeaders";
    v4 = [*(a1 + 32) responseHeaders];
    v8[2] = @"ResponseDownloadURL";
    v5 = *(a1 + 40);
    v9[1] = v4;
    v9[2] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_createNoInstallationError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D03480];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:12079 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

@end