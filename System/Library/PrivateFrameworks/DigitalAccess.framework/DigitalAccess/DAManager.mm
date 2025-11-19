@interface DAManager
+ (BOOL)isCarKeySupportedForManufacturer:(id)a3 brand:(id)a4 ppid:(id)a5 error:(id *)a6;
+ (BOOL)isSharingEnabledForManufacturer:(id)a3 brand:(id)a4 ppid:(id)a5 error:(id *)a6;
+ (id)createAliroHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 homeUUID:(id)a7 outError:(id *)a8;
+ (id)createAliroHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 outError:(id *)a6;
+ (id)createHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 outError:(id *)a7;
+ (id)createHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 outError:(id *)a6;
+ (id)sharedManager;
+ (void)handleSharingMessage:(id)a3 forInvitationIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 completionHandler:(id)a6;
+ (void)listKeysWithSession:(id)a3 seid:(id)a4 callback:(id)a5;
+ (void)rejectSharingInvitation:(id)a3 completionHandler:(id)a4;
- (DAManager)init;
- (id)createManagementSessionWithDelegate:(id)a3;
- (id)createPairingSessionWithDelegate:(id)a3;
- (id)createSharingSessionWithDelegate:(id)a3;
- (uint64_t)releaseConnection;
- (void)cleanup;
- (void)establishXpcConnection;
- (void)handleSharingMessage:(void *)a3 forInvitationIdentifier:(void *)a4 fromMailboxIdentifier:;
- (void)invalidateSessions;
- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)a3;
- (void)registerCrossPlatformTestMessageSendHandler:(id)a3;
- (void)registerFriendSideInvitationUnusableHandler:(id)a3;
- (void)registerFriendSidePasscodeRetryRequestTestHandler:(id)a3;
- (void)registerFriendSideSharingTestCompletion:(id)a3;
- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3;
- (void)registerOwnerSideInvitationRequestHandler:(id)a3;
- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4;
- (void)registerSession:(id)a3;
- (void)sendCrossPlatformTestData:(id)a3 toIdsIdentifier:(id)a4;
- (void)setServiceName:(uint64_t)a1;
- (void)unregisterSession:(id)a3;
- (void)unregisterSharingTestHandlers;
@end

@implementation DAManager

+ (id)createHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 outError:(id *)a6
{
  v6 = SESEndPointCreateForHydraWithSession();
  if (v6)
  {
    v7 = [[DAKeyInformation alloc] initWithEndpoint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DAManager)init
{
  v7.receiver = self;
  v7.super_class = DAManager;
  v2 = [(DAManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSessions = v2->_activeSessions;
    v2->_activeSessions = v3;

    serviceName = v2->_serviceName;
    v2->_serviceName = @"com.apple.seserviced.kmlXpcService";
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[DAManager sharedManager];
  }

  v3 = sharedManager__keyManager;

  return v3;
}

uint64_t __26__DAManager_sharedManager__block_invoke()
{
  sharedManager__keyManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isCarKeySupportedForManufacturer:(id)a3 brand:(id)a4 ppid:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = kmlUtilDataForHexString(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = SESEndPointIsCarKeySupported();
  v15 = 0;
  if (v12)
  {
  }

  if (a6 && v15)
  {
    v16 = sesErrorToKmlError(v15, 0xD6u);

    *a6 = kmlErrorToDAError(v16);
    v15 = v16;
  }

  v17 = [v14 BOOLValue];

  return v17;
}

+ (BOOL)isSharingEnabledForManufacturer:(id)a3 brand:(id)a4 ppid:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = kmlUtilDataForHexString(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = SESEndPointIsSharingEnabled();
  v15 = 0;
  if (v12)
  {
  }

  if (a6 && v15)
  {
    v16 = sesErrorToKmlError(v15, 0xD6u);

    *a6 = kmlErrorToDAError(v16);
    v15 = v16;
  }

  if (v14)
  {
    v17 = [v14 BOOLValue];
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (void)listKeysWithSession:(id)a3 seid:(id)a4 callback:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v44 = "+[DAManager listKeysWithSession:seid:callback:]";
    v45 = 1024;
    v46 = 135;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if (v7 && v8)
  {
    v39 = 0;
    v11 = SESEndPointListWithSession();
    v12 = 0;
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    if (v12)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = [v12 userInfo];
      v16 = [v14 errorWithDomain:@"DigitalAccessError" code:209 userInfo:v15];

      v9[2](v9, 0, v16);
    }

    else
    {
      v32 = v9;
      v33 = v8;
      v34 = v7;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v11;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            v26 = KmlLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v25 publicKeyIdentifier];
              *buf = 136315650;
              v44 = "+[DAManager listKeysWithSession:seid:callback:]";
              v45 = 1024;
              v46 = 148;
              v47 = 2112;
              v48 = v27;
              _os_log_impl(&dword_248BF3000, v26, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
            }

            v28 = [[DAKeyInformation alloc] initWithEndpoint:v25];
            [v13 addObject:v28];
          }

          v22 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v22);
      }

      v11 = v20;

      v29 = KmlLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v13 count];
        *buf = 136315650;
        v44 = "+[DAManager listKeysWithSession:seid:callback:]";
        v45 = 1024;
        v46 = 152;
        v47 = 2048;
        v48 = v30;
        _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_INFO, "%s : %i : key count = %lu", buf, 0x1Cu);
      }

      v9 = v32;
      (v32)[2](v32, v13, 0);
      v8 = v33;
      v7 = v34;
    }
  }

  else
  {
    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v44 = "+[DAManager listKeysWithSession:seid:callback:]";
      v45 = 1024;
      v46 = 137;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided. Session : %@, seid : %@", buf, 0x26u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v42 = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v19 = [v18 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v13];
    v9[2](v9, 0, v19);
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)handleSharingMessage:(id)a3 forInvitationIdentifier:(id)a4 fromMailboxIdentifier:(id)a5 completionHandler:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "+[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:completionHandler:]";
    v19 = 1024;
    v20 = 165;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : This function is deprecated, please use either [DAKeySharingSession handleRecipientMessage] or [DAKeySharingSession handleInititiatorMessage] instead", &v17, 0x12u);
  }

  v14 = +[DAManager sharedManager];
  v15 = [(DAManager *)v14 handleSharingMessage:v12 forInvitationIdentifier:v11 fromMailboxIdentifier:v10];

  v9[2](v9, v15);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleSharingMessage:(void *)a3 forInvitationIdentifier:(void *)a4 fromMailboxIdentifier:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]";
      *&buf[12] = 1024;
      *&buf[14] = 416;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
    }

    [(DAManager *)a1 establishXpcConnection];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = 0;
    v11 = a1[2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke_84;
    v15[3] = &unk_278F6FB00;
    v15[4] = buf;
    [v12 queueCrossPlatformSharingMessage:v7 forInvitationIdentifier:v8 fromMailboxIdentifier:v9 callback:v15];

    a1 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

+ (void)rejectSharingInvitation:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v31 = "+[DAManager rejectSharingInvitation:completionHandler:]";
    v32 = 1024;
    v33 = 174;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  v8 = [v5 genericData];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v5 genericData];
  v11 = [v10 sharingIdentifier];

  if (v11)
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 genericData];
      v14 = [v13 sharingIdentifier];
      *buf = 136315650;
      v31 = "+[DAManager rejectSharingInvitation:completionHandler:]";
      v32 = 1024;
      v33 = 179;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : Cancel invite with id : %@", buf, 0x1Cu);
    }

    v15 = [[KmlCancelMessage alloc] initWithCCCErrorCode:34];
    v16 = [(KmlCancelMessage *)v15 asData];

    v17 = [DACarKeyGenericCrossPlatformSharingData alloc];
    v18 = [v5 genericData];
    v19 = [v18 sharingIdentifier];
    v20 = [(DACarKeyGenericCrossPlatformSharingData *)v17 initWithSharingIdentifier:v19 friendKeyIdentifier:0 sharingMessageType:5 message:v16];

    v21 = [DACarKeySharingMessage alloc];
    v22 = [v5 additionalData];
    v23 = [(DACarKeySharingMessage *)v21 initWithGenericCrossPlatformSharingData:v20 additionalData:v22 privateData:0];

    v24 = 0;
  }

  else
  {
LABEL_8:
    v25 = KmlLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v31 = "+[DAManager rejectSharingInvitation:completionHandler:]";
      v32 = 1024;
      v33 = 198;
      _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : Can't cancel invite missing invitationIdentifier", buf, 0x12u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(109), v28}];
    v29 = v16;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v24 = [v26 errorWithDomain:@"DigitalAccessError" code:109 userInfo:v20];
    v23 = 0;
  }

  v6[2](v6, v23, v24);
  v27 = *MEMORY[0x277D85DE8];
}

+ (id)createHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 outError:(id *)a7
{
  v7 = MEMORY[0x24C1E74E0](a3, a4, a5, a6, a7);
  if (v7)
  {
    v8 = [[DAKeyInformation alloc] initWithEndpoint:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerSession:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAManager registerSession:]";
    v10 = 1024;
    v11 = 217;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v8, 0x1Cu);
  }

  v6 = self->_activeSessions;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_activeSessions addObject:v4];
  objc_sync_exit(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSession:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "[DAManager unregisterSession:]";
    v10 = 1024;
    v11 = 225;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v8, 0x1Cu);
  }

  v6 = self->_activeSessions;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_activeSessions removeObject:v4];
  objc_sync_exit(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateSessions
{
  objc_sync_exit(a1);

  [a2 enumerateObjectsUsingBlock:&__block_literal_global_28];
}

void __31__DAManager_invalidateSessions__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v12 = "[DAManager invalidateSessions]_block_invoke";
    v13 = 1024;
    v14 = 242;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v9}];
  v10 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v6];

  [v2 didEnd:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)establishXpcConnection
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    v4 = 285;
    _os_log_impl(&dword_248BF3000, a1, OS_LOG_TYPE_INFO, "%s : %i : DAKeyManager: XPC connection already established", v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __35__DAManager_establishXpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    __35__DAManager_establishXpcConnection__block_invoke_cold_1(WeakRetained);
  }
}

void __35__DAManager_establishXpcConnection__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    __35__DAManager_establishXpcConnection__block_invoke_73_cold_1(WeakRetained);
  }
}

- (id)createPairingSessionWithDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createPairingSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 324;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = [[DAKeyPairingSession alloc] initWithDelegate:v4];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__DAManager_createPairingSessionWithDelegate___block_invoke;
  v13[3] = &unk_278F70900;
  v13[4] = self;
  v13[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v8 = *(*&buf[8] + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DAManager_createPairingSessionWithDelegate___block_invoke_76;
  v12[3] = &unk_278F70928;
  v12[4] = self;
  v12[5] = buf;
  [v7 queueOwnerPairingSession:v8 callback:v12];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __46__DAManager_createPairingSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createPairingSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 333;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __46__DAManager_createPairingSessionWithDelegate___block_invoke_76(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createPairingSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 341;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)createSharingSessionWithDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createSharingSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 354;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = [[DAKeySharingSession alloc] initWithDelegate:v4];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__DAManager_createSharingSessionWithDelegate___block_invoke;
  v13[3] = &unk_278F70900;
  v13[4] = self;
  v13[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v8 = *(*&buf[8] + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DAManager_createSharingSessionWithDelegate___block_invoke_79;
  v12[3] = &unk_278F70950;
  v12[4] = self;
  v12[5] = buf;
  [v7 queueSharingSession:v8 callback:v12];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __46__DAManager_createSharingSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createSharingSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 363;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __46__DAManager_createSharingSessionWithDelegate___block_invoke_79(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createSharingSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 371;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)createManagementSessionWithDelegate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createManagementSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 384;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = [[DAKeyManagementSession alloc] initWithDelegate:v4];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__DAManager_createManagementSessionWithDelegate___block_invoke;
  v13[3] = &unk_278F70900;
  v13[4] = self;
  v13[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v8 = *(*&buf[8] + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__DAManager_createManagementSessionWithDelegate___block_invoke_82;
  v12[3] = &unk_278F70978;
  v12[4] = self;
  v12[5] = buf;
  [v7 queueManagementSession:v8 callback:v12];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __49__DAManager_createManagementSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createManagementSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 393;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__DAManager_createManagementSessionWithDelegate___block_invoke_82(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createManagementSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 401;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]_block_invoke";
      v9 = 1024;
      v10 = 422;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v7, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerOwnerSideSharingTestInvitations:(id)a3 callback:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]";
    v14 = 1024;
    v15 = 436;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v9 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_86];
  [v9 registerOwnerSideSharingTestInvitations:v7 callback:v6];

  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]";
    v14 = 1024;
    v15 = 442;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__DAManager_registerOwnerSideSharingTestInvitations_callback___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]_block_invoke";
    v7 = 1024;
    v8 = 440;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerOwnerSideInvitationRequestHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerOwnerSideInvitationRequestHandler:]";
    v11 = 1024;
    v12 = 447;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_88];
  [v6 registerOwnerSideInvitationRequestHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerOwnerSideInvitationRequestHandler:]";
    v11 = 1024;
    v12 = 453;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __55__DAManager_registerOwnerSideInvitationRequestHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerOwnerSideInvitationRequestHandler:]_block_invoke";
    v7 = 1024;
    v8 = 451;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerFriendSideSharingTestCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestCompletion:]";
    v11 = 1024;
    v12 = 458;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_90];
  [v6 registerFriendSideSharingTestCompletion:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestCompletion:]";
    v11 = 1024;
    v12 = 464;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __53__DAManager_registerFriendSideSharingTestCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerFriendSideSharingTestCompletion:]_block_invoke";
    v7 = 1024;
    v8 = 462;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]";
    v11 = 1024;
    v12 = 469;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_92];
  [v6 registerFriendSideSharingTestInvitationUUIDHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]";
    v11 = 1024;
    v12 = 475;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __64__DAManager_registerFriendSideSharingTestInvitationUUIDHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]_block_invoke";
    v7 = 1024;
    v8 = 473;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerFriendSideInvitationUnusableHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideInvitationUnusableHandler:]";
    v11 = 1024;
    v12 = 480;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  [v6 registerFriendSideInvitationUnusableHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideInvitationUnusableHandler:]";
    v11 = 1024;
    v12 = 486;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__DAManager_registerFriendSideInvitationUnusableHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerFriendSideInvitationUnusableHandler:]_block_invoke";
    v7 = 1024;
    v8 = 484;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]";
    v11 = 1024;
    v12 = 491;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_96];
  [v6 registerCrossPlatformTestMessageOverIDSHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]";
    v11 = 1024;
    v12 = 497;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __60__DAManager_registerCrossPlatformTestMessageOverIDSHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]_block_invoke";
    v7 = 1024;
    v8 = 495;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerCrossPlatformTestMessageSendHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageSendHandler:]";
    v11 = 1024;
    v12 = 502;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  [v6 registerCrossPlatformTestMessageSendHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageSendHandler:]";
    v11 = 1024;
    v12 = 508;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __57__DAManager_registerCrossPlatformTestMessageSendHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerCrossPlatformTestMessageSendHandler:]_block_invoke";
    v7 = 1024;
    v8 = 506;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendCrossPlatformTestData:(id)a3 toIdsIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]";
    v14 = 1024;
    v15 = 513;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v9 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
  [v9 sendCrossPlatformTestData:v7 toIdsIdentifier:v6];

  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]";
    v14 = 1024;
    v15 = 519;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __55__DAManager_sendCrossPlatformTestData_toIdsIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]_block_invoke";
    v7 = 1024;
    v8 = 517;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)registerFriendSidePasscodeRetryRequestTestHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]";
    v11 = 1024;
    v12 = 524;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_102];
  [v6 registerFriendSidePasscodeRetryRequestHandler:v4];

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]";
    v11 = 1024;
    v12 = 530;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __63__DAManager_registerFriendSidePasscodeRetryRequestTestHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]_block_invoke";
    v7 = 1024;
    v8 = 528;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSharingTestHandlers
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[DAManager unregisterSharingTestHandlers]";
    v9 = 1024;
    v10 = 535;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v7, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v4 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_104];
  [v4 unregisterSharingTestHandlers];

  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[DAManager unregisterSharingTestHandlers]";
    v9 = 1024;
    v10 = 541;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __42__DAManager_unregisterSharingTestHandlers__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315650;
    v6 = "[DAManager unregisterSharingTestHandlers]_block_invoke";
    v7 = 1024;
    v8 = 539;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)createAliroHomeKey:(id)a3 seid:(id)a4 readerIdentifier:(id)a5 readerPublicKey:(id)a6 homeUUID:(id)a7 outError:(id *)a8
{
  v12 = MEMORY[0x277CCABB0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 numberWithInt:0];
  v19 = SESEndPointCreateForLyonWithSession();

  if (v19)
  {
    v20 = [[DAKeyInformation alloc] initWithEndpoint:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)createAliroHydraKey:(id)a3 seid:(id)a4 serverParameters:(id)a5 outError:(id *)a6
{
  v6 = SESEndPointCreateForLyonHydraWithSession();
  if (v6)
  {
    v7 = [[DAKeyInformation alloc] initWithEndpoint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setServiceName:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)cleanup
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = KmlLogger();
    if (OUTLINED_FUNCTION_2_2(v3))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9, v13);
    }

    [(DAManager *)a1 invalidateSessions];
    v10 = a1;
    objc_sync_enter(v10);
    v11 = v10[2];
    v10[2] = 0;

    objc_sync_exit(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (uint64_t)releaseConnection
{
  v12 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    v3 = KmlLogger();
    if (OUTLINED_FUNCTION_2_2(v3))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9, v11);
    }

    result = [*(v2 + 16) invalidate];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __35__DAManager_establishXpcConnection__block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger();
  if (OUTLINED_FUNCTION_2_2(v3))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9, v12);
  }

  result = [(DAManager *)a1 releaseConnection];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __35__DAManager_establishXpcConnection__block_invoke_73_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger();
  if (OUTLINED_FUNCTION_2_2(v3))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9, v11);
  }

  [(DAManager *)a1 cleanup];
  v10 = *MEMORY[0x277D85DE8];
}

@end