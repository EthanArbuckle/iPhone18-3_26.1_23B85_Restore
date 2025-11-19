@interface MDMDeclarativeManagement
+ (id)_createNoInstallationError;
+ (void)downloadDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5;
+ (void)executeRequestForEndpoint:(id)a3 channelType:(unint64_t)a4 requestData:(id)a5 completionHandler:(id)a6;
+ (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMDeclarativeManagement

+ (void)executeRequestForEndpoint:(id)a3 channelType:(unint64_t)a4 requestData:(id)a5 completionHandler:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = a4;
    _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_INFO, "Calling executeRequestForMessageType - channel type: %lu", buf, 0xCu);
  }

  v19 = @"Endpoint";
  v20 = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v14 = [v13 mutableCopy];

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"Data"];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__MDMDeclarativeManagement_executeRequestForEndpoint_channelType_requestData_completionHandler___block_invoke;
  v17[3] = &unk_278857048;
  v18 = v11;
  v15 = v11;
  [MDMCheckInRequest executeRequestForMessageType:@"DeclarativeManagement" channelType:a4 requestDict:v14 completionHandler:v17];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MDMConfiguration sharedConfiguration];
  [v8 refreshDetailsFromDisk];
  v9 = [v8 managingProfileIdentifier];

  if (v9)
  {
    v10 = [v8 copyMemberQueueIdentity];
    v11 = [v8 checkInPinnedSecCertificateRefs];
    v12 = [v8 pinningRevocationCheckRequired];
    v13 = [v8 signMessage];
    v14 = [v8 rmAccountID];
    if (v10)
    {
      v15 = [[MDMHTTPTransaction alloc] initWithURL:v6 identity:v10 pinnedCertificates:v11 pinningRevocationCheckRequired:v12 signMessage:v13 isShortTransaction:0 rmAccountID:v14];
      CFRelease(v10);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__MDMDeclarativeManagement_fetchDataAtURL_completionHandler___block_invoke;
      v17[3] = &unk_278856D40;
      v18 = v15;
      v19 = v7;
      v16 = v15;
      [(DMCHTTPTransaction *)v16 performCompletionBlock:v17];
    }

    else
    {
      v16 = [a1 _createNoInstallationError];
      (*(v7 + 2))(v7, 0, v16);
    }
  }

  else
  {
    v11 = [a1 _createNoInstallationError];
    (*(v7 + 2))(v7, 0, v11);
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

+ (void)downloadDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MDMConfiguration sharedConfiguration];
  [v11 refreshDetailsFromDisk];
  v12 = [v11 managingProfileIdentifier];

  if (v12)
  {
    v13 = [v11 copyMemberQueueIdentity];
    v14 = [v11 checkInPinnedSecCertificateRefs];
    v15 = [v11 pinningRevocationCheckRequired];
    v16 = [v11 signMessage];
    v17 = [v11 rmAccountID];
    if (v13)
    {
      LOBYTE(v20) = 0;
      v18 = [[MDMHTTPTransaction alloc] initWithURL:v8 downloadURL:v9 identity:v13 pinnedCertificates:v14 pinningRevocationCheckRequired:v15 signMessage:v16 isShortTransaction:v20 rmAccountID:v17];
      CFRelease(v13);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __76__MDMDeclarativeManagement_downloadDataAtURL_downloadURL_completionHandler___block_invoke;
      v21[3] = &unk_278857070;
      v22 = v18;
      v24 = v10;
      v23 = v9;
      v19 = v18;
      [(DMCHTTPTransaction *)v19 performCompletionBlock:v21];
    }

    else
    {
      v19 = [a1 _createNoInstallationError];
      (*(v10 + 2))(v10, 0, v19);
    }
  }

  else
  {
    v14 = [a1 _createNoInstallationError];
    (*(v10 + 2))(v10, 0, v14);
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