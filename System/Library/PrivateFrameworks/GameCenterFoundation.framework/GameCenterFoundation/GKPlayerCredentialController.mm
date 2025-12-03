@interface GKPlayerCredentialController
+ (id)accessQueue;
+ (id)sharedController;
+ (void)migrateOldAccountInformation;
- (GKPlayerCredentialController)init;
- (GKPlayerCredentialController)initWithStore:(id)store notificationCenter:(id)center;
- (id)_transactAndWait:(id)wait;
- (id)accessQueue;
- (id)allCredentialsForEnvironment:(int64_t)environment;
- (id)credentialForPlayer:(id)player environment:(int64_t)environment;
- (id)credentialForPlayerID:(id)d environment:(int64_t)environment;
- (id)credentialForUsername:(id)username environment:(int64_t)environment;
- (id)primaryCredentialForEnvironment:(int64_t)environment;
- (id)primaryCredentialForEnvironment:(int64_t)environment accountStore:(id)store;
- (id)suggestedUsername;
- (void)_transact:(id)_transact complete:(id)complete;
- (void)accountStoreDidChange:(id)change;
- (void)accountStoreEmailDidChange:(id)change;
- (void)getAltDSIDFromIDMSForCredential:(id)credential completionHandler:(id)handler;
- (void)invalidateCredentialCaches;
- (void)removeAllCredentialsForEnvironment:(int64_t)environment completionHandler:(id)handler;
- (void)removeCredential:(id)credential completionHandler:(id)handler;
- (void)renewCredentialForUsername:(id)username ttl:(double)ttl completionHandler:(id)handler;
- (void)replaceCredential:(id)credential withCredential:(id)withCredential completionHandler:(id)handler;
- (void)setContactAssociationID:(id)d contactIntegrationConsent:(int)consent serviceLastUpdateTimestamp:(id)timestamp forEnvironment:(int64_t)environment forcefully:(BOOL)forcefully completionHandler:(id)handler;
- (void)setCredential:(id)credential completionHandler:(id)handler;
- (void)setPrimaryCredential:(id)credential completionHandler:(id)handler;
@end

@implementation GKPlayerCredentialController

- (GKPlayerCredentialController)init
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(GKPlayerCredentialController *)self initWithStore:defaultStore notificationCenter:defaultCenter];

  return v5;
}

- (GKPlayerCredentialController)initWithStore:(id)store notificationCenter:(id)center
{
  storeCopy = store;
  centerCopy = center;
  v15.receiver = self;
  v15.super_class = GKPlayerCredentialController;
  v9 = [(GKPlayerCredentialController *)&v15 init];
  if (v9)
  {
    v10 = [[GKThreadsafeDictionary alloc] initWithName:@"primaryCredentialCache"];
    primaryCredentialCache = v9->_primaryCredentialCache;
    v9->_primaryCredentialCache = v10;

    v12 = [[GKThreadsafeDictionary alloc] initWithName:@"allCredentialsCache"];
    allCredentialsCache = v9->_allCredentialsCache;
    v9->_allCredentialsCache = v12;

    objc_storeStrong(&v9->_store, store);
    [centerCopy addObserver:v9 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8B78] object:v9->_store];
    [centerCopy addObserver:v9 selector:sel_accountStoreEmailDidChange_ name:*MEMORY[0x277CEFF50] object:v9->_store];
  }

  return v9;
}

+ (id)accessQueue
{
  if (accessQueue_onceToken != -1)
  {
    +[GKPlayerCredentialController accessQueue];
  }

  v3 = accessQueue_queue;

  return v3;
}

uint64_t __43__GKPlayerCredentialController_accessQueue__block_invoke()
{
  accessQueue_queue = dispatch_queue_create("com.apple.gamed.credentialController", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)accessQueue
{
  v2 = objc_opt_class();

  return [v2 accessQueue];
}

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[GKPlayerCredentialController sharedController];
  }

  v3 = sharedController_controller;

  return v3;
}

void __48__GKPlayerCredentialController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(GKPlayerCredentialController);
  v1 = sharedController_controller;
  sharedController_controller = v0;

  v2 = [[GKSignInVisibilityManager alloc] initWithPersistence];
  [sharedController_controller setSignInVisibilityManager:v2];
}

+ (void)migrateOldAccountInformation
{
  +[GKAuthenticationMachine migratePreSundanceAccountInformation];

  +[GKAuthenticationMachine migratePreBlacktailAccountInformation];
}

- (id)_transactAndWait:(id)wait
{
  waitCopy = wait;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayerCredentialController.m", 138, "-[GKPlayerCredentialController _transactAndWait:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__GKPlayerCredentialController__transactAndWait___block_invoke;
  v11[3] = &unk_2785DDEA0;
  v12 = v6;
  v13 = waitCopy;
  v11[4] = self;
  v7 = v6;
  v8 = waitCopy;
  [v7 perform:v11];
  [v7 wait];
  v9 = [v7 objectForKeyedSubscript:@"object"];

  return v9;
}

void __49__GKPlayerCredentialController__transactAndWait___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__GKPlayerCredentialController__transactAndWait___block_invoke_2;
  v9[3] = &unk_2785DDE78;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v9[4] = v6;
  v10 = v7;
  v12 = v3;
  v8 = v3;
  dispatch_sync(v4, v9);
}

void __49__GKPlayerCredentialController__transactAndWait___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__GKPlayerCredentialController__transactAndWait___block_invoke_3;
  v4[3] = &unk_2785DDE50;
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  (*(v3 + 16))(v3, v2, v4);
}

uint64_t __49__GKPlayerCredentialController__transactAndWait___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"object"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_transact:(id)_transact complete:(id)complete
{
  _transactCopy = _transact;
  completeCopy = complete;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayerCredentialController.m", 156, "-[GKPlayerCredentialController _transact:complete:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__GKPlayerCredentialController__transact_complete___block_invoke;
  v16[3] = &unk_2785DDEA0;
  v16[4] = self;
  v10 = _transactCopy;
  v18 = v10;
  v11 = v9;
  v17 = v11;
  [v11 perform:v16];
  if (completeCopy)
  {
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GKPlayerCredentialController__transact_complete___block_invoke_4;
    v13[3] = &unk_2785DDC10;
    v15 = completeCopy;
    v14 = v11;
    [v14 notifyOnQueue:v12 block:v13];
  }
}

void __51__GKPlayerCredentialController__transact_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__GKPlayerCredentialController__transact_complete___block_invoke_2;
  v9[3] = &unk_2785DDE78;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v9[4] = v6;
  v10 = v7;
  v12 = v3;
  v8 = v3;
  dispatch_async(v4, v9);
}

void __51__GKPlayerCredentialController__transact_complete___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__GKPlayerCredentialController__transact_complete___block_invoke_3;
  v4[3] = &unk_2785DD8E8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  (*(v3 + 16))(v3, v2, v4);
}

uint64_t __51__GKPlayerCredentialController__transact_complete___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __51__GKPlayerCredentialController__transact_complete___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)invalidateCredentialCaches
{
  primaryCredentialCache = [(GKPlayerCredentialController *)self primaryCredentialCache];
  [primaryCredentialCache removeAllObjects];

  allCredentialsCache = [(GKPlayerCredentialController *)self allCredentialsCache];
  [allCredentialsCache removeAllObjects];

  [(GKPlayerCredentialController *)self setGameBundleId:0];
}

- (void)accountStoreDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = changeCopy;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "the main account store attached to the account has changed.The notification is:%@", &v11, 0xCu);
  }

  userInfo = [changeCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CB8C90]];
  v9 = [v8 isEqual:@"com.apple.account.GameCenter"];

  if (v9)
  {
    [(GKPlayerCredentialController *)self invalidateCredentialCaches];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)accountStoreEmailDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = changeCopy;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "the email address attached to the account has changed.The notification is:%@", &v8, 0xCu);
  }

  [(GKPlayerCredentialController *)self invalidateCredentialCaches];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setCredential:(id)credential completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = credentialCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "CRED: save credential (%@) start", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__GKPlayerCredentialController_setCredential_completionHandler___block_invoke;
  v12[3] = &unk_2785DDEC8;
  v13 = credentialCopy;
  v10 = credentialCopy;
  [(GKPlayerCredentialController *)self _transact:v12 complete:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

void __64__GKPlayerCredentialController_setCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__GKPlayerCredentialController_setCredential_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DD8E8;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a2 _gkSaveCredential:v9 completionHandler:v8];
}

void __64__GKPlayerCredentialController_setCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: save credential (%@) finished (error:%@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPrimaryCredential:(id)credential completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = credentialCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "CRED: set primary credential (%@) start", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke;
  v12[3] = &unk_2785DDEF0;
  v13 = credentialCopy;
  selfCopy = self;
  v10 = credentialCopy;
  [(GKPlayerCredentialController *)self _transact:v12 complete:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v29 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKPlayerCredentialController.m", 216, "-[GKPlayerCredentialController setPrimaryCredential:completionHandler:]_block_invoke"];
  v7 = [GKDispatchGroup dispatchGroupWithName:v6];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_2;
  v42[3] = &unk_2785DD910;
  v43 = *(a1 + 32);
  v8 = v5;
  v44 = v8;
  v9 = v7;
  v45 = v9;
  [v9 perform:v42];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "environment")}];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) primaryCredentialCache];
  [v12 setObject:v11 forKeyedSubscript:v10];

  v30 = v8;
  v13 = [v8 _gkAllCredentialsForEnvironment:{objc_msgSend(*(a1 + 32), "environment")}];
  if (v13)
  {
    v14 = [*(a1 + 40) allCredentialsCache];
    [v14 setObject:v13 forKeyedSubscript:v10];

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v48 = "[GKPlayerCredentialController setPrimaryCredential:completionHandler:]_block_invoke";
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "%s - cached all credentials: %@", buf, 0x16u);
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        if (([v22 scope] & 4) != 0 && (objc_msgSend(v22, "isEqual:", *(a1 + 32)) & 1) == 0)
        {
          if (!os_log_GKGeneral)
          {
            v23 = GKOSLoggers();
          }

          v24 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v22;
            _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "CRED: clear primary credential on other credential (%@) start", buf, 0xCu);
          }

          [v22 setScope:{objc_msgSend(v22, "scope") & 0xFFFFFFF3}];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_43;
          v34[3] = &unk_2785DD910;
          v35 = v30;
          v36 = v22;
          v37 = v9;
          [v37 perform:v34];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v19);
  }

  v25 = [*(a1 + 40) accessQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_45;
  v31[3] = &unk_2785DDC10;
  v32 = v9;
  v33 = v29;
  v26 = v9;
  v27 = v29;
  [v26 notifyOnQueue:v25 block:v31];

  v28 = *MEMORY[0x277D85DE8];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setScope:{objc_msgSend(*(a1 + 32), "scope") | 0xC}];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_3;
  v7[3] = &unk_2785DDC60;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  [v5 _gkSaveCredential:v8 completionHandler:v7];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: set primary credential (%@) finished (error:%@)", &v8, 0x16u);
  }

  [*(a1 + 40) setError:v3];
  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_2_44;
  v7[3] = &unk_2785DDC60;
  v7[4] = v5;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 _gkSaveCredential:v5 completionHandler:v7];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_2_44(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: clear primary credential on other credential (%@) finished (error:%@)", &v8, 0x16u);
  }

  [*(a1 + 40) setError:v3];
  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __71__GKPlayerCredentialController_setPrimaryCredential_completionHandler___block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)setContactAssociationID:(id)d contactIntegrationConsent:(int)consent serviceLastUpdateTimestamp:(id)timestamp forEnvironment:(int64_t)environment forcefully:(BOOL)forcefully completionHandler:(id)handler
{
  dCopy = d;
  timestampCopy = timestamp;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __153__GKPlayerCredentialController_setContactAssociationID_contactIntegrationConsent_serviceLastUpdateTimestamp_forEnvironment_forcefully_completionHandler___block_invoke;
  v18[3] = &unk_2785DDF18;
  v19 = timestampCopy;
  selfCopy = self;
  forcefullyCopy = forcefully;
  v21 = dCopy;
  environmentCopy = environment;
  consentCopy = consent;
  v16 = dCopy;
  v17 = timestampCopy;
  [(GKPlayerCredentialController *)self _transact:v18 complete:handler];
}

void __153__GKPlayerCredentialController_setContactAssociationID_contactIntegrationConsent_serviceLastUpdateTimestamp_forEnvironment_forcefully_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Updating contacts information on the IDS account and credentials.", buf, 2u);
    }

    v9 = [*(a1 + 40) primaryCredentialForEnvironment:*(a1 + 56) accountStore:v5];
    v10 = [v9 playerInternal];
    v11 = v10;
    if (!v10)
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GKContactsIntegrationErrorDomain" code:6 userInfo:0];
      v6[2](v6, v18);
LABEL_33:

      goto LABEL_34;
    }

    v12 = [v10 serviceLastUpdatedTimestamp];
    if (([*(a1 + 40) lastSaveFailed] & 1) != 0 || (*(a1 + 68) & 1) != 0 || !v12 || objc_msgSend(*(a1 + 32), "compare:", v12) == 1)
    {
      [v11 setContactsAssociationID:*(a1 + 48)];
      [v11 setContactsIntegrationConsent:*(a1 + 64)];
      [v11 setServiceLastUpdatedTimestamp:*(a1 + 32)];
      v13 = [v9 accountName];
      v14 = [v5 _gkAccountForAppleID:v13];

      if (v14)
      {
        [v14 _gkSetPlayerInternal:v11];
        v22 = 0;
        [v5 saveVerifiedAccount:v14 error:&v22];
        v15 = v22;
      }

      else
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GKContactsIntegrationErrorDomain" code:2 userInfo:0];
      }

      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    [*(a1 + 40) setLastSaveFailed:v18 != 0];
    if (![*(a1 + 40) lastSaveFailed])
    {
      goto LABEL_30;
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_ERROR))
    {
      __153__GKPlayerCredentialController_setContactAssociationID_contactIntegrationConsent_serviceLastUpdateTimestamp_forEnvironment_forcefully_completionHandler___block_invoke_cold_1(v20);
    }

    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      __153__GKPlayerCredentialController_setContactAssociationID_contactIntegrationConsent_serviceLastUpdateTimestamp_forEnvironment_forcefully_completionHandler___block_invoke_cold_2();
      if (!v6)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_30:
      if (!v6)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v6[2](v6, v18);
    goto LABEL_32;
  }

  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "Will not update contacts integration information since we are missing a timestamp", v24, 2u);
  }

  v6[2](v6, 0);
LABEL_34:
}

- (void)getAltDSIDFromIDMSForCredential:(id)credential completionHandler:(id)handler
{
  credentialCopy = credential;
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__GKPlayerCredentialController_getAltDSIDFromIDMSForCredential_completionHandler___block_invoke;
  v11[3] = &unk_2785DDF68;
  v12 = credentialCopy;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = credentialCopy;
  v10 = [(GKPlayerCredentialController *)self _transactAndWait:v11];
}

void __82__GKPlayerCredentialController_getAltDSIDFromIDMSForCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__GKPlayerCredentialController_getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DDF40;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v7 = v5;
  [a2 _getAltDSIDFromIDMSForCredential:v6 completionHandler:v8];
}

void __82__GKPlayerCredentialController_getAltDSIDFromIDMSForCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "got missing altDSID from IDMS", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }
}

- (void)removeAllCredentialsForEnvironment:(int64_t)environment completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__GKPlayerCredentialController_removeAllCredentialsForEnvironment_completionHandler___block_invoke;
  v4[3] = &unk_2785DDF90;
  v4[4] = self;
  v4[5] = environment;
  [(GKPlayerCredentialController *)self _transact:v4 complete:handler];
}

void __85__GKPlayerCredentialController_removeAllCredentialsForEnvironment_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v7 _gkAllCredentialsForEnvironment:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__GKPlayerCredentialController_removeAllCredentialsForEnvironment_completionHandler___block_invoke_2;
  v12[3] = &unk_2785DDC60;
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v15 = v5;
  v10 = v5;
  v11 = v8;
  [v7 _gkDeleteCredentials:v11 completionHandler:v12];
}

void __85__GKPlayerCredentialController_removeAllCredentialsForEnvironment_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: delete credentials (%@) finished (error:%@)", &v8, 0x16u);
  }

  [*(a1 + 40) invalidateCredentialCaches];
  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeCredential:(id)credential completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = credentialCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "CRED: delete credential (%@) start", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__GKPlayerCredentialController_removeCredential_completionHandler___block_invoke;
  v12[3] = &unk_2785DDEF0;
  v13 = credentialCopy;
  selfCopy = self;
  v10 = credentialCopy;
  [(GKPlayerCredentialController *)self _transact:v12 complete:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

void __67__GKPlayerCredentialController_removeCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__GKPlayerCredentialController_removeCredential_completionHandler___block_invoke_2;
  v10[3] = &unk_2785DDC60;
  v7 = v6;
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v9 = v5;
  [a2 _gkDeleteCredential:v7 completionHandler:v10];
}

void __67__GKPlayerCredentialController_removeCredential_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: delete credential (%@) finished (error:%@)", &v8, 0x16u);
  }

  [*(a1 + 40) invalidateCredentialCaches];
  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)replaceCredential:(id)credential withCredential:(id)withCredential completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  withCredentialCopy = withCredential;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = credentialCopy;
    v22 = 2112;
    v23 = withCredentialCopy;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "CRED: replace credential old:(%@) new:(%@) start", buf, 0x16u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke;
  v16[3] = &unk_2785DDFE0;
  v17 = credentialCopy;
  v18 = withCredentialCopy;
  selfCopy = self;
  v13 = withCredentialCopy;
  v14 = credentialCopy;
  [(GKPlayerCredentialController *)self _transact:v16 complete:handlerCopy];

  v15 = *MEMORY[0x277D85DE8];
}

void __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke_2;
  v12[3] = &unk_2785DDFB8;
  v13 = v7;
  v14 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v8;
  v16 = v9;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  [v11 _gkDeleteCredential:v13 completionHandler:v12];
}

void __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = a1[4];
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: replace credential (%@) delete finished (error:%@)", buf, 0x16u);
  }

  v8 = a1[5];
  v7 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke_48;
  v13[3] = &unk_2785DDC60;
  v9 = v7;
  v10 = a1[7];
  v11 = a1[8];
  v14 = v9;
  v15 = v10;
  v16 = v11;
  [v8 _gkSaveCredential:v9 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __83__GKPlayerCredentialController_replaceCredential_withCredential_completionHandler___block_invoke_48(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "CRED: replace credential (%@) save finished (error:%@)", &v8, 0x16u);
  }

  [*(a1 + 40) invalidateCredentialCaches];
  (*(*(a1 + 48) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialForUsername:(id)username ttl:(double)ttl completionHandler:(id)handler
{
  usernameCopy = username;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__GKPlayerCredentialController_renewCredentialForUsername_ttl_completionHandler___block_invoke;
  v10[3] = &unk_2785DE030;
  ttlCopy = ttl;
  v10[4] = self;
  v11 = usernameCopy;
  v9 = usernameCopy;
  [(GKPlayerCredentialController *)self _transact:v10 complete:handler];
}

void __81__GKPlayerCredentialController_renewCredentialForUsername_ttl_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [*(a1 + 32) lastRenewalAttempt];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [*(a1 + 32) lastRenewalAttempt];
  [v7 timeIntervalSinceDate:v10];
  v12 = v11;
  v13 = *(a1 + 48);

  if (v12 < v13)
  {
    v6[2](v6, 0);
  }

  else
  {
LABEL_4:
    [*(a1 + 32) setLastRenewalAttempt:v7];
    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__GKPlayerCredentialController_renewCredentialForUsername_ttl_completionHandler___block_invoke_2;
    v15[3] = &unk_2785DE008;
    v16 = v6;
    [v5 _gkRenewCredentialForUsername:v14 completionHandler:v15];
  }
}

- (id)credentialForPlayer:(id)player environment:(int64_t)environment
{
  playerID = [player playerID];
  v7 = [(GKPlayerCredentialController *)self credentialForPlayerID:playerID environment:environment];

  return v7;
}

- (id)credentialForPlayerID:(id)d environment:(int64_t)environment
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(GKPlayerCredentialController *)self allCredentialsForEnvironment:environment];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        playerInternal = [v11 playerInternal];
        playerID = [playerInternal playerID];
        v14 = [playerID isEqualToString:dCopy];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)credentialForUsername:(id)username environment:(int64_t)environment
{
  usernameCopy = username;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__GKPlayerCredentialController_credentialForUsername_environment___block_invoke;
  v10[3] = &unk_2785DE058;
  v11 = usernameCopy;
  environmentCopy = environment;
  v7 = usernameCopy;
  v8 = [(GKPlayerCredentialController *)self _transactAndWait:v10];

  return v8;
}

void __66__GKPlayerCredentialController_credentialForUsername_environment___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [a2 _gkCredentialForUsername:v5 environment:v6];
  (a3)[2](v7, v8);
}

- (id)allCredentialsForEnvironment:(int64_t)environment
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  allCredentialsCache = [(GKPlayerCredentialController *)self allCredentialsCache];
  v7 = [allCredentialsCache objectForKeyedSubscript:v5];

  if (!v7)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__GKPlayerCredentialController_allCredentialsForEnvironment___block_invoke;
    v13[3] = &__block_descriptor_40_e34_v24__0__ACAccountStore_8___v____16l;
    v13[4] = environment;
    v7 = [(GKPlayerCredentialController *)self _transactAndWait:v13];
    if (v7)
    {
      allCredentialsCache2 = [(GKPlayerCredentialController *)self allCredentialsCache];
      [allCredentialsCache2 setObject:v7 forKeyedSubscript:v5];

      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v15 = "[GKPlayerCredentialController allCredentialsForEnvironment:]";
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "%s - cached all credentials: %@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __61__GKPlayerCredentialController_allCredentialsForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 _gkAllCredentialsForEnvironment:v4];
  v5[2](v5, v6);
}

- (id)primaryCredentialForEnvironment:(int64_t)environment
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  primaryCredentialCache = [(GKPlayerCredentialController *)self primaryCredentialCache];
  v7 = [primaryCredentialCache objectForKeyedSubscript:v5];

  if (!v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__GKPlayerCredentialController_primaryCredentialForEnvironment___block_invoke;
    v9[3] = &unk_2785DE058;
    v9[4] = self;
    v9[5] = environment;
    v7 = [(GKPlayerCredentialController *)self _transactAndWait:v9];
  }

  return v7;
}

void __64__GKPlayerCredentialController_primaryCredentialForEnvironment___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v4 primaryCredentialForEnvironment:v5 accountStore:a2];
  v6[2](v6, v7);
}

- (id)primaryCredentialForEnvironment:(int64_t)environment accountStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:environment];
  primaryCredentialCache = [(GKPlayerCredentialController *)self primaryCredentialCache];
  v9 = [primaryCredentialCache objectForKeyedSubscript:v7];

  if (!v9)
  {
    v9 = [storeCopy _gkPrimaryCredentialForEnvironment:environment];
    if (v9)
    {
      primaryCredentialCache2 = [(GKPlayerCredentialController *)self primaryCredentialCache];
      [primaryCredentialCache2 setObject:v9 forKeyedSubscript:v7];

      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[GKPlayerCredentialController primaryCredentialForEnvironment:accountStore:]";
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "%s - cached primary credential: %@", &v15, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)suggestedUsername
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [defaultStore aa_recommendedAppleIDForAccountSignInWithTypeIdentifier:0];

  return v3;
}

void __153__GKPlayerCredentialController_setContactAssociationID_contactIntegrationConsent_serviceLastUpdateTimestamp_forEnvironment_forcefully_completionHandler___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "Failed to save account after contacts integration update: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end