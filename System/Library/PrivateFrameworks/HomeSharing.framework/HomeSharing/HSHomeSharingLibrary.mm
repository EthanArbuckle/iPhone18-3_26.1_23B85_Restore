@interface HSHomeSharingLibrary
- (BOOL)isEqual:(id)equal;
- (HSHomeSharingLibrary)initWithName:(id)name uniqueIdentifier:(id)identifier version:(unsigned int)version baseURL:(id)l homeSharingGroupID:(id)d connectionType:(int64_t)type;
- (NSString)deviceGUID;
- (id)securityInfoForURL:(id)l;
- (id)signedRequestFromURLRequest:(id)request;
- (id)urlForRequest:(id)request;
- (int64_t)connectionState;
- (unint64_t)hash;
- (unsigned)basePlaylistContainerID;
- (unsigned)databaseID;
- (void)_onQueue_ensureConnection;
- (void)_sendUpdateRequest;
- (void)connectWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
@end

@implementation HSHomeSharingLibrary

- (void)_sendUpdateRequest
{
  if ([(HSHomeSharingLibrary *)self _hasPendingUpdateRequest])
  {
    v3 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_254418000, v3, OS_LOG_TYPE_ERROR, "Outstanding update request when attempting to send new update request.", buf, 2u);
    }
  }

  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HSHomeSharingLibrary__sendUpdateRequest__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(connectionAccessQueue, block);
}

void __42__HSHomeSharingLibrary__sendUpdateRequest__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _onQueue_ensureConnection];
  if ([*(a1 + 32) isAvailable])
  {
    [*(a1 + 32) set_hasPendingUpdateRequest:1];
    v2 = [*(a1 + 32) connection];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __42__HSHomeSharingLibrary__sendUpdateRequest__block_invoke_2;
    v5[3] = &unk_27977A3A0;
    v5[4] = *(a1 + 32);
    [v2 checkForDatabaseUpdatesWithCompletionHandler:v5];
  }

  else
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = *(a1 + 32);
    v6 = @"HSHomeSharingLibraryKey";
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v2 postNotificationName:@"HSHomeSharingLibraryDidBecomeUnavailableNotification" object:v3 userInfo:v4];
  }
}

uint64_t __42__HSHomeSharingLibrary__sendUpdateRequest__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) set_hasPendingUpdateRequest:0];
  if (!a3)
  {
    if (a2)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = *(a1 + 32);
      v10 = @"HSHomeSharingLibraryKey";
      v11[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v7 postNotificationName:@"HSHomeSharingLibraryDidUpdateRevisionNumberNotification" object:v8 userInfo:v9];
    }

    return [*(a1 + 32) _sendUpdateRequest];
  }

  return result;
}

- (void)_onQueue_ensureConnection
{
  if (self->_available)
  {
    v18 = v2;
    v19 = v3;
    connection = self->_connection;
    if (!connection)
    {
      v6 = [HSConnection alloc];
      baseURL = [(HSHomeSharingLibrary *)self baseURL];
      v8 = [(HSConnection *)v6 initWithBaseURL:baseURL connectionType:[(HSHomeSharingLibrary *)self connectionType]];
      v9 = self->_connection;
      self->_connection = v8;

      homeSharingGroupID = [(HSHomeSharingLibrary *)self homeSharingGroupID];
      [(HSConnection *)self->_connection setHomeSharingGroupID:homeSharingGroupID];

      v11 = objc_alloc_init(HSFairPlayInfo);
      [(HSConnection *)self->_connection setFairPlayInfo:v11];

      connection = self->_connection;
    }

    if ([(HSConnection *)connection connectionState]!= 2)
    {
      v12 = dispatch_semaphore_create(0);
      v13 = self->_connection;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__HSHomeSharingLibrary__onQueue_ensureConnection__block_invoke;
      v16[3] = &unk_27977A378;
      v16[4] = self;
      v14 = v12;
      v17 = v14;
      [(HSConnection *)v13 connectWithCompletionHandler:v16];
      v15 = dispatch_time(0, 3000000000);
      if (dispatch_semaphore_wait(v14, v15))
      {
        self->_available = 0;
      }
    }
  }
}

intptr_t __49__HSHomeSharingLibrary__onQueue_ensureConnection__block_invoke(uint64_t a1, int a2)
{
  *(*(a1 + 32) + 17) = a2;
  if (a2)
  {
    [*(a1 + 32) _sendUpdateRequest];
  }

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (NSString)deviceGUID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int64_t)connectionState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__HSHomeSharingLibrary_connectionState__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__HSHomeSharingLibrary_connectionState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 connectionState];
}

- (unsigned)basePlaylistContainerID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HSHomeSharingLibrary_basePlaylistContainerID__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__HSHomeSharingLibrary_basePlaylistContainerID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 basePlaylistContainerID];
}

- (unsigned)databaseID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HSHomeSharingLibrary_databaseID__block_invoke;
  v5[3] = &unk_27977A440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__HSHomeSharingLibrary_databaseID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 databaseID];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HSHomeSharingLibrary *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueIdentifier = [(HSHomeSharingLibrary *)self uniqueIdentifier];
    uniqueIdentifier2 = [v5 uniqueIdentifier];

    v8 = [uniqueIdentifier isEqualToString:uniqueIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)disconnect
{
  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HSHomeSharingLibrary_disconnect__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(connectionAccessQueue, block);
}

uint64_t __34__HSHomeSharingLibrary_disconnect__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) disconnect];
  [*(a1 + 32) setConnection:0];
  v2 = *(a1 + 32);

  return [v2 set_hasPendingUpdateRequest:0];
}

- (id)urlForRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1717;
  v16 = __Block_byref_object_dispose__1718;
  v17 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HSHomeSharingLibrary_urlForRequest___block_invoke;
  block[3] = &unk_27977A328;
  block[4] = self;
  v10 = requestCopy;
  v11 = &v12;
  v6 = requestCopy;
  dispatch_sync(connectionAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__HSHomeSharingLibrary_urlForRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homeSharingGroupID];
  if ([v2 length])
  {
    v3 = [*(a1 + 40) action];
    v4 = [v3 isEqual:@"server-info"];

    if (v4)
    {
      goto LABEL_5;
    }

    v5 = *(a1 + 40);
    v2 = [*(a1 + 32) homeSharingGroupID];
    [v5 setValue:v2 forArgument:@"hsgid"];
  }

LABEL_5:
  v6 = [*(a1 + 32) connection];
  v7 = [v6 connectionType];

  if (!v7)
  {
    v8 = [*(a1 + 40) action];
    v9 = [v8 isEqual:@"logout"];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 40) setValue:@"1" forArgument:@"daap-no-disconnect"];
    }

    [*(a1 + 40) setValue:@"1" forArgument:@"hs-mobile-device-client"];
  }

  v10 = *(a1 + 40);
  v14 = [*(*(a1 + 32) + 72) baseURL];
  v11 = [v10 requestURLForBaseURL:v14 sessionID:{objc_msgSend(*(*(a1 + 32) + 72), "sessionID")}];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (id)signedRequestFromURLRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1717;
  v16 = __Block_byref_object_dispose__1718;
  v17 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HSHomeSharingLibrary_signedRequestFromURLRequest___block_invoke;
  block[3] = &unk_27977A328;
  v10 = requestCopy;
  v11 = &v12;
  block[4] = self;
  v6 = requestCopy;
  dispatch_sync(connectionAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__HSHomeSharingLibrary_signedRequestFromURLRequest___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) connection];
  v2 = [v5 signedRequestFromURLRequest:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)securityInfoForURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1717;
  v16 = __Block_byref_object_dispose__1718;
  v17 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HSHomeSharingLibrary_securityInfoForURL___block_invoke;
  block[3] = &unk_27977A328;
  v10 = lCopy;
  v11 = &v12;
  block[4] = self;
  v6 = lCopy;
  dispatch_sync(connectionAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__HSHomeSharingLibrary_securityInfoForURL___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) connection];
  v2 = [v6 fairPlayInfo];
  v3 = [v2 securityInfoForURL:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  connectionAccessQueue = self->_connectionAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HSHomeSharingLibrary_sendRequest_withResponseHandler___block_invoke;
  block[3] = &unk_27977A300;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(connectionAccessQueue, block);
}

void __56__HSHomeSharingLibrary_sendRequest_withResponseHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_ensureConnection];
  if ([*(a1 + 32) isAvailable])
  {
    v3 = [*(a1 + 32) connection];
    [v3 sendRequest:*(a1 + 40) withResponseHandler:*(a1 + 48)];
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionAccessQueue = self->_connectionAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HSHomeSharingLibrary_connectWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A2D8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(connectionAccessQueue, v7);
}

void __53__HSHomeSharingLibrary_connectWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    v3 = [HSConnection alloc];
    v4 = [*(a1 + 32) baseURL];
    v5 = -[HSConnection initWithBaseURL:connectionType:](v3, "initWithBaseURL:connectionType:", v4, [*(a1 + 32) connectionType]);
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;

    v8 = [*(a1 + 32) homeSharingGroupID];
    [*(*(a1 + 32) + 72) setHomeSharingGroupID:v8];

    v9 = objc_alloc_init(HSFairPlayInfo);
    [*(*(a1 + 32) + 72) setFairPlayInfo:v9];

    v2 = *(a1 + 32);
  }

  v10 = [v2 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HSHomeSharingLibrary_connectWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_27977A2B0;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v10 connectWithCompletionHandler:v12];
}

void __53__HSHomeSharingLibrary_connectWithCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _sendUpdateRequest];
  }

  (*(*(a1 + 40) + 16))();
}

- (HSHomeSharingLibrary)initWithName:(id)name uniqueIdentifier:(id)identifier version:(unsigned int)version baseURL:(id)l homeSharingGroupID:(id)d connectionType:(int64_t)type
{
  nameCopy = name;
  identifierCopy = identifier;
  lCopy = l;
  dCopy = d;
  v35.receiver = self;
  v35.super_class = HSHomeSharingLibrary;
  v18 = [(HSHomeSharingLibrary *)&v35 init];
  v19 = v18;
  if (v18)
  {
    v18->_available = 1;
    v20 = dispatch_queue_create("com.apple.homesharing.HSHomeSharingLibrary.connectionAccessQueue", 0);
    connectionAccessQueue = v19->_connectionAccessQueue;
    v19->_connectionAccessQueue = v20;

    v22 = [[HSConnection alloc] initWithBaseURL:lCopy connectionType:type];
    connection = v19->_connection;
    v19->_connection = v22;

    [(HSConnection *)v19->_connection setHomeSharingGroupID:dCopy];
    v24 = objc_alloc_init(HSFairPlayInfo);
    [(HSConnection *)v19->_connection setFairPlayInfo:v24];

    if ([nameCopy hasSuffix:@"_PW"])
    {
      v25 = [nameCopy substringWithRange:{0, objc_msgSend(nameCopy, "length") - 3}];

      v19->_requiresPassword = 1;
    }

    else
    {
      if ([nameCopy rangeOfString:@"_"] == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_7:
        v26 = [nameCopy copy];
        name = v19->_name;
        v19->_name = v26;

        v28 = [identifierCopy copy];
        uniqueIdentifier = v19->_uniqueIdentifier;
        v19->_uniqueIdentifier = v28;

        v19->_version = version;
        v30 = [lCopy copy];
        baseURL = v19->_baseURL;
        v19->_baseURL = v30;

        v32 = [dCopy copy];
        homeSharingGroupID = v19->_homeSharingGroupID;
        v19->_homeSharingGroupID = v32;

        v19->_connectionType = type;
        goto LABEL_8;
      }

      v25 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "rangeOfString:", @"_"}];
    }

    nameCopy = v25;
    goto LABEL_7;
  }

LABEL_8:

  return v19;
}

@end