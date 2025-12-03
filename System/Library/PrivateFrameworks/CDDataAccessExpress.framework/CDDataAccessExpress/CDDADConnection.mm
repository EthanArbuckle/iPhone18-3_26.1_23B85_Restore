@interface CDDADConnection
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
- (BOOL)_validateXPCReply:(id)reply;
- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d;
- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d;
- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (BOOL)registerForInterrogationWithBlock:(id)block;
- (BOOL)requestPolicyUpdateForAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)resumeWatchingFoldersWithSyncKeyMap:(id)map forAccountID:(id)d;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d;
- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d;
- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent;
- (CDDADConnection)init;
- (id)_connection;
- (id)_createReplyToRequest:(id)request withProperties:(id)properties;
- (id)_init;
- (id)activeSyncDeviceIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock;
- (id)currentPolicyKeyForAccountID:(id)d;
- (id)decodedErrorFromData:(id)data;
- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock;
- (id)statusReports;
- (unint64_t)requestDaemonStopMonitoringAgents;
- (unint64_t)requestDaemonStopMonitoringAgentsSync;
- (void)_calendarAvailabilityRequestFinished:(id)finished;
- (void)_calendarAvailabilityRequestReturnedResults:(id)results;
- (void)_calendarDirectorySearchFinished:(id)finished;
- (void)_calendarDirectorySearchReturnedResults:(id)results;
- (void)_cancelDownloadsWithIDs:(id)ds error:(id)error;
- (void)_dispatchMessage:(id)message;
- (void)_downloadFinished:(id)finished;
- (void)_downloadProgress:(id)progress;
- (void)_folderChangeFinished:(id)finished;
- (void)_foldersUpdated:(id)updated;
- (void)_getStatusReportsFromClient:(id)client;
- (void)_initializeConnection;
- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint;
- (void)_initializeXPCConnection:(id)connection;
- (void)_oofSettingsRequestsFinished:(id)finished;
- (void)_policyKeyChanged:(id)changed;
- (void)_registerForAppResumedNotification;
- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)status withToken:(unint64_t)token waitForReply:(BOOL)reply;
- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)_resetThrottleTimersForAccountId:(id)id;
- (void)_sendSynchronousXPCMessageWithParameters:(id)parameters handlerBlock:(id)block;
- (void)_serverContactsSearchQueryFinished:(id)finished;
- (void)_serverDiedWithReason:(id)reason;
- (void)_shareResponseFinished:(id)finished;
- (void)_tearDownInFlightObjects;
- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelDownloadingAttachmentWithDownloadID:(id)d error:(id)error;
- (void)cancelServerContactsSearch:(id)search;
- (void)dealloc;
- (void)externalIdentificationForAccountID:(id)d resultsBlock:(id)block;
- (void)fillOutCurrentEASTimeZoneInfo;
- (void)handleURL:(id)l;
- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block;
- (void)reallyRegisterForInterrogation;
- (void)removeStoresForAccountWithID:(id)d;
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
@end

@implementation CDDADConnection

- (void)_tearDownInFlightObjects
{
  v130 = *MEMORY[0x277D85DE8];
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy_;
  v122 = __Block_byref_object_dispose_;
  v123 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_278D54308;
  block[5] = &v118;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v119[5];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v5];

  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy_;
  v115 = __Block_byref_object_dispose_;
  v116 = 0;
  v6 = self->_muckingWithInFlightCollections;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_105;
  v110[3] = &unk_278D54308;
  v110[5] = &v111;
  v110[4] = self;
  dispatch_sync(v6, v110);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v7 = v112[5];
  v8 = [v7 countByEnumeratingWithState:&v106 objects:v129 count:16];
  if (v8)
  {
    v9 = *v107;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v107 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v106 + 1) + 8 * i);
        consumer = [v11 consumer];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [consumer folderChange:v11 finishedWithStatus:0 error:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v106 objects:v129 count:16];
    }

    while (v8);
  }

  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy_;
  v104 = __Block_byref_object_dispose_;
  v105 = 0;
  v14 = self->_muckingWithInFlightCollections;
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_106;
  v99[3] = &unk_278D54308;
  v99[5] = &v100;
  v99[4] = self;
  dispatch_sync(v14, v99);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v15 = v101[5];
  v16 = [v15 countByEnumeratingWithState:&v95 objects:v128 count:16];
  if (v16)
  {
    v17 = *v96;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v96 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v95 + 1) + 8 * j);
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [v19 finishedWithError:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v95 objects:v128 count:16];
    }

    while (v16);
  }

  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy_;
  v93 = __Block_byref_object_dispose_;
  v94 = 0;
  v21 = self->_muckingWithInFlightCollections;
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_107;
  v88[3] = &unk_278D54308;
  v88[5] = &v89;
  v88[4] = self;
  dispatch_sync(v21, v88);
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v22 = v90[5];
  v23 = [v22 countByEnumeratingWithState:&v84 objects:v127 count:16];
  if (v23)
  {
    v24 = *v85;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v85 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v84 + 1) + 8 * k);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v26 finishedWithError:v27];
      }

      v23 = [v22 countByEnumeratingWithState:&v84 objects:v127 count:16];
    }

    while (v23);
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy_;
  v82 = __Block_byref_object_dispose_;
  v83 = 0;
  v28 = self->_muckingWithInFlightCollections;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_108;
  v77[3] = &unk_278D54308;
  v77[4] = self;
  v77[5] = &v78;
  dispatch_sync(v28, v77);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v29 = v79[5];
  v30 = [v29 countByEnumeratingWithState:&v73 objects:v126 count:16];
  if (v30)
  {
    v31 = *v74;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v74 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v73 + 1) + 8 * m);
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v33 finishedWithError:v34 exceededResultLimit:0];
      }

      v30 = [v29 countByEnumeratingWithState:&v73 objects:v126 count:16];
    }

    while (v30);
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy_;
  v71 = __Block_byref_object_dispose_;
  v72 = 0;
  v35 = self->_muckingWithInFlightCollections;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_109;
  v66[3] = &unk_278D54308;
  v66[4] = self;
  v66[5] = &v67;
  dispatch_sync(v35, v66);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v36 = v68[5];
  v37 = [v36 countByEnumeratingWithState:&v62 objects:v125 count:16];
  if (v37)
  {
    v38 = *v63;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v62 + 1) + 8 * n);
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v40 finishedWithError:v41];
      }

      v37 = [v36 countByEnumeratingWithState:&v62 objects:v125 count:16];
    }

    while (v37);
  }

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v42 = self->_muckingWithInFlightCollections;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __43__CDDADConnection__tearDownInFlightObjects__block_invoke_110;
  v55[3] = &unk_278D54308;
  v55[4] = self;
  v55[5] = &v56;
  dispatch_sync(v42, v55);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v43 = v57[5];
  v44 = [v43 countByEnumeratingWithState:&v51 objects:v124 count:16];
  if (v44)
  {
    v45 = *v52;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v51 + 1) + 8 * ii);
        consumer2 = [v47 consumer];
        v49 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [consumer2 oofRequestInfo:v47 finishedWithResult:0 error:v49];
      }

      v44 = [v43 countByEnumeratingWithState:&v51 objects:v124 count:16];
    }

    while (v44);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v111, 8);

  _Block_object_dispose(&v118, 8);
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing ALL search queries", v7, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_105(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Failing all folder changes", v7, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_106(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all attachment downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_107(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar availability lookups", v7, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_108(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar search requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_109(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all share requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __43__CDDADConnection__tearDownInFlightObjects__block_invoke_110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing all settings requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

- (void)_serverDiedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (reasonCopy == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Daemon died, cleaning up.";
      v8 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (reasonCopy == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      v7 = "LOOK AT ME!!!! dataaccessd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v8 = &v10;
LABEL_7:
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(CDDADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(CDDADConnection *)self setRegistered:0];
}

- (id)_connection
{
  conn = self->_conn;
  if (!conn)
  {
    [(CDDADConnection *)self _initializeConnection];
    conn = self->_conn;
  }

  return conn;
}

- (void)_initializeConnection
{
  muckingWithConn = self->_muckingWithConn;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CDDADConnection__initializeConnection__block_invoke;
  block[3] = &unk_278D542E0;
  block[4] = self;
  dispatch_sync(muckingWithConn, block);
}

void __40__CDDADConnection__initializeConnection__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [@"com.apple.remindd.dataaccess" UTF8String];
  v3 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(v2, v3, 0);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = mach_service;

  v7 = *(a1 + 32);
  if (v7[1])
  {
    v8 = *MEMORY[0x277D85DE8];

    [v7 _initializeXPCConnection:?];
  }

  else
  {
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = @"com.apple.remindd.dataaccess";
      _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_ERROR, "Couldn't create a connection to [%@]", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CDDADConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_278D542B8;
  v7[4] = self;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_sync(muckingWithConn, v7);
}

void __56__CDDADConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = xpc_connection_create_from_endpoint(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  if (v5[1])
  {
    v6 = *MEMORY[0x277D85DE8];

    [v5 _initializeXPCConnection:?];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a connection to endpoint: [%@]", &v10, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CDDADConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_278D54330;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(connectionCopy, v5);
  xpc_connection_resume(connectionCopy);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__CDDADConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245D11100]();
  if (v3 == MEMORY[0x277D86480])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _serverDiedWithReason:v5];
  }

  else
  {
    if (v3 != MEMORY[0x277D86468])
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dispatchMessage:v5];
  }

LABEL_6:
}

- (id)_createReplyToRequest:(id)request withProperties:(id)properties
{
  propertiesCopy = properties;
  reply = xpc_dictionary_create_reply(request);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __56__CDDADConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278D54358;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (id)decodedErrorFromData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v11 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:&v11];
    v5 = v11;
    if (!v4)
    {
      v6 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode error: %@", buf, 0xCu);
      }
    }

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"root"];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_policyKeyChanged:(id)changed
{
  changedCopy = changed;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CDDADConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_278D542E0;
  v6 = changedCopy;
  v4 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__CDDADConnection__policyKeyChanged___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 objectForKeyedSubscript:@"kDAEPolicyKeyKey"];
  v4 = [v2 objectForKeyedSubscript:@"kDAEPolicyErrorCodeKey"];
  v5 = [v2 objectForKeyedSubscript:@"kDAEAccountIdKey"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    if (v4)
    {
      v13 = @"ASPolicyKey";
      v14 = @"ASPolicyErrorCodeKey";
      v15 = v3;
      v16 = v4;
      v7 = MEMORY[0x277CBEAC0];
      v8 = &v15;
      v9 = &v13;
      v10 = 2;
    }

    else
    {
      v17 = @"ASPolicyKey";
      v18 = v3;
      v7 = MEMORY[0x277CBEAC0];
      v8 = &v18;
      v9 = &v17;
      v10 = 1;
    }

    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:{v10, v13, v14, v15, v16, v17, v18}];
    [v6 postNotificationName:@"ASPolicyKeyChangedNotification" object:v5 userInfo:v11];
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v2;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)updated
{
  updatedCopy = updated;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CDDADConnection__foldersUpdated___block_invoke;
  block[3] = &unk_278D542E0;
  v6 = updatedCopy;
  v4 = updatedCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__CDDADConnection__foldersUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 objectForKeyedSubscript:@"kDAEFolderIDsKey"];
  v4 = [v2 objectForKeyedSubscript:@"kDAEAccountIdKey"];
  v5 = v4;
  if (!v3)
  {
    v6 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v13 = v2;
    v8 = "Malformed callback message from dataaccess daemon: no folders (%@)";
LABEL_8:
    _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v4)
  {
    v6 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v13 = v2;
    v8 = "Malformed callback message from dataaccess daemon: bad account id (%@)";
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v10[0] = @"DAChangedFolders";
  v10[1] = @"DAChangedAccountID";
  v11[0] = v3;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v6 postNotificationName:@"DataAccessMonitoredFolderUpdated" object:0 userInfo:v7];

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
}

void __40__CDDADConnection__logDataAccessStatus___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ASClientAccountDumpStatusNotification" object:0];
}

- (void)_serverContactsSearchQueryFinished:(id)finished
{
  v34 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_DEBUG, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CDDADConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v10 = v6;
  v25 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    v11 = [v5 objectForKeyedSubscript:@"kDAESearchResultsKey"];
    if (v11)
    {
      v23 = 0;
      v12 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v11 error:&v23];
      v13 = v23;
      if (!v12)
      {
        v14 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode search results: %@", v27, 0xCu);
        }
      }

      v15 = MEMORY[0x277CBEB98];
      v16 = objc_opt_class();
      v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
      v18 = [v12 decodeObjectOfClasses:v17 forKey:@"root"];
    }

    else
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&dword_242505000, v13, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v27, 2u);
      }

      v18 = 0;
    }

    v19 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_242505000, v19, OS_LOG_TYPE_DEBUG, "Search results: %@", v27, 0xCu);
    }

    [*(*(&buf + 1) + 40) sendResultsToConsumer:v18];
    v20 = *(*(&buf + 1) + 40);
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
    [v20 sendFinishedToConsumerWithError:v21];
  }

  else
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_242505000, v18, OS_LOG_TYPE_ERROR, "received results for an unknown search query", v27, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __54__CDDADConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing query %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 56) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_folderChangeFinished:(id)finished
{
  v27 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:@"kDAETaskIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
  v7 = [v4 objectForKeyedSubscript:@"kDAEFolderIDKey"];
  v8 = [v4 objectForKeyedSubscript:@"kDAEFolderNameKey"];
  v9 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v10 = [(CDDADConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_DEBUG, "folderChange finished with status %@, error %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__CDDADConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v22 = buf;
  block[4] = self;
  v13 = v5;
  v21 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  v14 = *&buf[8];
  v15 = *(*&buf[8] + 40);
  if (v15)
  {
    if (v7)
    {
      [v15 setFolderId:v7];
      v14 = *&buf[8];
    }

    if (v8)
    {
      [*(v14 + 40) setDisplayName:v8];
      v14 = *&buf[8];
    }

    consumer = [*(v14 + 40) consumer];
    -[NSObject folderChange:finishedWithStatus:error:](consumer, "folderChange:finishedWithStatus:error:", *(*&buf[8] + 40), [v6 intValue], v10);
  }

  else
  {
    consumer = DALoggingwithCategory(0);
    if (os_log_type_enabled(consumer, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_242505000, consumer, OS_LOG_TYPE_ERROR, "received results for an unknown folderChange", v19, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __41__CDDADConnection__folderChangeFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing folder change %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 64) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getStatusReportsFromClient:(id)client
{
  clientCopy = client;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CDDADConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_278D542B8;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

void __47__CDDADConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if ([v4 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v16 + 1) + 8 * v9) dictionaryRepresentation];
            [v2 addObject:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
        }

        while (v7);
      }
    }
  }

  v20 = @"kDAEStatusReportsKey";
  v21 = v2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:{1, v16}];
  v12 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v11];
  v13 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v14 = *(*(a1 + 32) + 8);
  if (v14 == v13)
  {
    xpc_connection_send_message(v14, v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_downloadProgress:(id)progress
{
  v30 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v16 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v16 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v16 objectForKeyedSubscript:@"kDAEDownloadedBytesKey"];
  longLongValue = [v5 longLongValue];

  v7 = [v16 objectForKeyedSubscript:@"kDAETotalBytesKey"];
  longLongValue2 = [v7 longLongValue];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v19 = 0;
        v20 = &v19;
        v21 = 0x3032000000;
        v22 = __Block_byref_object_copy_;
        v23 = __Block_byref_object_dispose_;
        v24 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__CDDADConnection__downloadProgress___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v12;
        block[6] = &v19;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v20[5] updateProgressDownloadedByteCount:longLongValue totalByteCount:{longLongValue2, progressCopy}];
        _Block_object_dispose(&v19, 8);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __37__CDDADConnection__downloadProgress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadFinished:(id)finished
{
  v28 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v14 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v14 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v14 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v6 = [(CDDADConnection *)self decodedErrorFromData:v5];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v17 = 0;
        v18 = &v17;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy_;
        v21 = __Block_byref_object_dispose_;
        v22 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__CDDADConnection__downloadFinished___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v10;
        block[6] = &v17;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v18[5] finishedWithError:{v6, finishedCopy}];
        _Block_object_dispose(&v17, 8);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __37__CDDADConnection__downloadFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)_shareResponseFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CDDADConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __42__CDDADConnection__shareResponseFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 96);

  return [v6 removeObjectForKey:v5];
}

- (void)_oofSettingsRequestsFinished:(id)finished
{
  v35 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_DEBUG, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CDDADConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v10 = v6;
  v26 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    if (v7)
    {
      if ([v7 intValue] == 2)
      {
        v11 = [v5 objectForKeyedSubscript:@"kDAEOofIsUpdateKey"];
        consumer4 = v11;
        if (v11 && [v11 BOOLValue])
        {
          consumer = [*(*(&buf + 1) + 40) consumer];
          [consumer oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:0 error:0];
        }

        else
        {
          consumer = [v5 objectForKeyedSubscript:@"kDAEOofSettingsResultKey"];
          if (consumer)
          {
            consumer3 = [[DAOofParams alloc] initWithDictionary:consumer];
            v20 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *v28 = 138412290;
              v29 = consumer3;
              _os_log_impl(&dword_242505000, v20, OS_LOG_TYPE_DEBUG, "Oof settings request results: %@", v28, 0xCu);
            }

            consumer2 = [*(*(&buf + 1) + 40) consumer];
            [consumer2 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:consumer3 error:0];
          }

          else
          {
            v22 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v28 = 0;
              _os_log_impl(&dword_242505000, v22, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v28, 2u);
            }

            consumer3 = [*(*(&buf + 1) + 40) consumer];
            v23 = *(*(&buf + 1) + 40);
            consumer2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
            [(DAOofParams *)consumer3 oofRequestInfo:v23 finishedWithResult:0 error:consumer2];
          }
        }
      }

      else
      {
        consumer4 = [*(*(&buf + 1) + 40) consumer];
        v17 = *(*(&buf + 1) + 40);
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
        [consumer4 oofRequestInfo:v17 finishedWithResult:0 error:v18];
      }
    }

    else
    {
      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_INFO, "Status missing from the xpc message", v28, 2u);
      }

      consumer4 = [*(*(&buf + 1) + 40) consumer];
      v15 = *(*(&buf + 1) + 40);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
      [consumer4 oofRequestInfo:v15 finishedWithResult:0 error:v16];
    }
  }

  else
  {
    consumer4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(consumer4, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_242505000, consumer4, OS_LOG_TYPE_ERROR, "received results for an unknown oof settings request", v28, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CDDADConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[5];
    v7 = *(*(a1[6] + 8) + 40);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_242505000, v5, OS_LOG_TYPE_DEBUG, "Removing from inflight dictionary: oof settings request %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 104) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[CDDADConnection sharedConnection];
  }

  [sharedConnection_gDADConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gDADConnection;

  return v2;
}

uint64_t __35__CDDADConnection_sharedConnection__block_invoke()
{
  sharedConnection_gDADConnection = [[CDDADConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)watchFoldersWithKeys:(id)keys forAccountID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  v26 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v9 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        null = [MEMORY[0x277CBEB68] null];
        [v9 setObject:null forKey:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = [(CDDADConnection *)self watchFoldersWithSyncKeyMap:v9 forAccountID:dCopy persistent:persistentCopy];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v8 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        null = [MEMORY[0x277CBEB68] null];
        [v8 setObject:null forKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [(CDDADConnection *)self resumeWatchingFoldersWithSyncKeyMap:v8 forAccountID:dCopy];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)resumeWatchingFoldersWithSyncKeyMap:(id)map forAccountID:(id)d
{
  v19[3] = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dCopy = d;
  if (self->_conn)
  {
    [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
    v18[0] = @"kDAEMessageNameKey";
    v18[1] = @"kDAEAccountIdKey";
    v19[0] = @"kDAEResumeMonitoringFolders";
    v19[1] = dCopy;
    v18[2] = @"kDAESyncKeyMapKey";
    v19[2] = mapCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[CDDADConnection resumeWatchingFoldersWithSyncKeyMap:forAccountID:]";
      _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v16, 0xCu);
    }

    v10 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    v12 = xpc_connection_send_message_with_reply_sync(_connection, v10);

    v13 = [(CDDADConnection *)self _validateXPCReply:v12];
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_INFO, "[DADConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v16, 2u);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19[0] = @"kDAEMessageNameKey";
  v19[1] = @"kDAEAccountIdKey";
  v20[0] = @"kDAESuspendMonitoringFolders";
  v20[1] = d;
  v19[2] = @"kDAEFolderIDsKey";
  v20[2] = keys;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v9 = [v6 dictionaryWithObjects:v20 forKeys:v19 count:3];

  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[CDDADConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v17, 0xCu);
  }

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v13 = xpc_connection_send_message_with_reply_sync(_connection, v11);

  v14 = [(CDDADConnection *)self _validateXPCReply:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)keys forAccountID:(id)d
{
  v20[3] = *MEMORY[0x277D85DE8];
  v19[0] = @"kDAEMessageNameKey";
  v19[1] = @"kDAEAccountIdKey";
  v20[0] = @"kDAEStopMonitoringFolders";
  v20[1] = d;
  v19[2] = @"kDAEFolderIDsKey";
  v20[2] = keys;
  v6 = MEMORY[0x277CBEAC0];
  dCopy = d;
  keysCopy = keys;
  v9 = [v6 dictionaryWithObjects:v20 forKeys:v19 count:3];

  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[CDDADConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v17, 0xCu);
  }

  v11 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v13 = xpc_connection_send_message_with_reply_sync(_connection, v11);

  v14 = [(CDDADConnection *)self _validateXPCReply:v13];
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_validateXPCReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = MEMORY[0x245D11100]();
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = [v6 objectForKeyedSubscript:@"kDAEStatusKey"];
    intValue = [v8 intValue];
    v7 = intValue == 2;
    if (intValue != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "XPC Reply Failure. Status Code: %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)d
{
  v11[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:127 isUserRequested:0];
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEAccountIdKey";
  v11[0] = @"kDAERequestPolicyUpdate";
  v11[1] = dCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v6);

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)currentPolicyKeyForAccountID:(id)d
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v23[0] = @"kDAEMessageNameKey";
  v23[1] = @"kDAEAccountIdKey";
  v24[0] = @"kDAEGetCurrentPolicyKey";
  v24[1] = dCopy;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v6 = _CFXPCCreateXPCObjectFromCFObject();
  v7 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v9 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__CDDADConnection_currentPolicyKeyForAccountID___block_invoke;
  handler[3] = &unk_278D543C8;
  v16 = &v17;
  v10 = v7;
  v15 = v10;
  xpc_connection_send_message_with_reply(_connection, v6, v9, handler);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __48__CDDADConnection_currentPolicyKeyForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEPolicyKeyKey"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[CDDADConnection currentPolicyKeyForAccountID:]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v12, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_nextStopMonitoringStatusToken
{
  os_unfair_lock_lock(&_nextStopMonitoringStatusToken_nextTokenLock);
  v2 = ++_nextStopMonitoringStatusToken_nextToken;
  os_unfair_lock_unlock(&_nextStopMonitoringStatusToken_nextTokenLock);
  return v2;
}

- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)status withToken:(unint64_t)token waitForReply:(BOOL)reply
{
  replyCopy = reply;
  statusCopy = status;
  v26 = *MEMORY[0x277D85DE8];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"stop";
    if (statusCopy)
    {
      v10 = @"start";
    }

    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_INFO, "Requesting that DataAccess %@ monitoring agents.", &v22, 0xCu);
  }

  v11 = kDAEStopMonitoringAgents;
  if (statusCopy)
  {
    v11 = kDAEStartMonitoringAgents;
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:*v11 forKey:@"kDAEMessageNameKey"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [v12 setObject:v13 forKeyedSubscript:@"kDAEAgentMonitoringToken"];

  if (replyCopy)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kDAEAgentMonitoringNeedsReply"];
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    _connection2 = xpc_connection_send_message_with_reply_sync(_connection, v14);

    if (MEMORY[0x245D11100](_connection2) == MEMORY[0x277D86468])
    {
      v17 = _CFXPCCreateCFObjectFromXPCObject();
      v18 = [v17 objectForKeyedSubscript:@"kDAEStatusKey"];
      v19 = v18;
      if (!v18 || [v18 intValue] != 2)
      {
        v20 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315394;
          v23 = "[CDDADConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v24 = 2112;
          v25 = v19;
          _os_log_impl(&dword_242505000, v20, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v22, 0x16u);
        }
      }
    }
  }

  else
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    _connection2 = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection2, v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(CDDADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:0];
  return _nextStopMonitoringStatusToken;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  _nextStopMonitoringStatusToken = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(CDDADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:_nextStopMonitoringStatusToken waitForReply:1];
  return _nextStopMonitoringStatusToken;
}

- (void)removeStoresForAccountWithID:(id)d
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEAccountIdKey";
  v11[0] = @"kDAERemoveStoresForAccountWithID";
  v11[1] = d;
  v4 = MEMORY[0x277CBEAC0];
  dCopy = d;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)performServerContactsSearch:(id)search forAccountWithID:(id)d
{
  v32[3] = *MEMORY[0x277D85DE8];
  searchCopy = search;
  dCopy = d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:dCopy andDataclasses:8 isUserRequested:0];
  if (!dCopy)
  {
    v11 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_8:
      _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  searchString = [searchCopy searchString];
  v9 = searchString == 0;

  if (v9)
  {
    v11 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v31[0] = @"kDAEMessageNameKey";
  v31[1] = @"kDAEAccountIdKey";
  v32[0] = @"kDAEOpenServerContactsSearch";
  v32[1] = dCopy;
  v31[2] = @"kDAESearchQueryKey";
  dictionaryRepresentation = [searchCopy dictionaryRepresentation];
  v32[2] = dictionaryRepresentation;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v12 = _CFXPCCreateXPCObjectFromCFObject();
  v13 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v15 = dispatch_get_global_queue(0, 0);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke;
  v21[3] = &unk_278D54418;
  v22 = searchCopy;
  selfCopy = self;
  v25 = &v27;
  v16 = v13;
  v24 = v16;
  xpc_connection_send_message_with_reply(_connection, v12, v15, v21);

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  v17 = *(v28 + 24);

LABEL_10:
  _Block_object_dispose(&v27, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAESearchIDKey"];
    [*(a1 + 32) setSearchID:v5];
    v6 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke_2;
    block[3] = &unk_278D543F0;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, block);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __64__CDDADConnection_performServerContactsSearch_forAccountWithID___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Setting search query %@ for key %@", &v7, 0x16u);
  }

  result = [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelServerContactsSearch:(id)search
{
  v26 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  searchID = [searchCopy searchID];
  v6 = [searchID length];

  if (v6)
  {
    [searchCopy setState:2];
    [searchCopy setConsumer:0];
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v25 = searchCopy;
      _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Cancelling search task %p", buf, 0xCu);
    }

    searchID2 = [searchCopy searchID];
    v22[0] = @"kDAEMessageNameKey";
    v22[1] = @"kDAESearchIDKey";
    v23[0] = @"kDAECancelServerContactsSearch";
    v23[1] = searchID2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v10);

    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = searchID2;
      _os_log_impl(&dword_242505000, v12, OS_LOG_TYPE_DEBUG, "Removing search query for key %@", buf, 0xCu);
    }

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __46__CDDADConnection_cancelServerContactsSearch___block_invoke;
    v19 = &unk_278D542B8;
    selfCopy = self;
    v21 = searchID2;
    v14 = searchID2;
    dispatch_sync(muckingWithInFlightCollections, &v16);
    [searchCopy setSearchID:{&stru_2854C3900, v16, v17, v18, v19, selfCopy}];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)processMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  v27 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEProcessMeetingRequests", @"kDAEMessageNameKey", withIdCopy, @"kDAEAccountIdKey", idCopy, @"kDAEFolderIDKey", 0}];

  if (requestsCopy)
  {
    [v17 setObject:requestsCopy forKeyedSubscript:@"kDAEMeetingRequestDatasKey"];
  }

  if (clearCopy)
  {
    [v17 setObject:clearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToClearKey"];
  }

  if (softClearCopy)
  {
    [v17 setObject:softClearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToSoftClearKey"];
  }

  v18 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDDADConnection processMeetingRequests:deliveryIdsToClear:deliveryIdsToSoftClear:inFolderWithId:forAccountWithId:]";
    _os_log_impl(&dword_242505000, v18, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v21 = xpc_connection_send_message_with_reply_sync(_connection, v19);

  v22 = [(CDDADConnection *)self _validateXPCReply:v21];
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)asyncProcessMeetingRequests:(id)requests deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId
{
  requestsCopy = requests;
  clearCopy = clear;
  softClearCopy = softClear;
  withIdCopy = withId;
  idCopy = id;
  [(CDDADConnection *)self _resetCertWarningsForAccountId:withIdCopy andDataclasses:5 isUserRequested:0];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEAsyncProcessMeetingRequests", @"kDAEMessageNameKey", withIdCopy, @"kDAEAccountIdKey", idCopy, @"kDAEFolderIDKey", 0}];

  if (requestsCopy)
  {
    [v16 setObject:requestsCopy forKeyedSubscript:@"kDAEMeetingRequestDatasKey"];
  }

  if (clearCopy)
  {
    [v16 setObject:clearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToClearKey"];
  }

  if (softClearCopy)
  {
    [v16 setObject:softClearCopy forKeyedSubscript:@"kDAEMeetingRequestIdsToSoftClearKey"];
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v17);
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  v13 = MEMORY[0x277CBEB38];
  dCopy = d;
  v15 = [[v13 alloc] initWithObjectsAndKeys:{@"kDAESetFolderIdsThatExternalClientsCareAbout", @"kDAEMessageNameKey", dCopy, @"kDAEAccountIdKey", 0}];

  if (addedCopy)
  {
    [v15 setObject:addedCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsAddedKey"];
  }

  if (deletedCopy)
  {
    [v15 setObject:deletedCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsDeletedKey"];
  }

  if (tagCopy)
  {
    [v15 setObject:tagCopy forKeyedSubscript:@"kDAEMonitoredFolderIdsTagKey"];
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[CDDADConnection setFolderIdsThatExternalClientsCareAboutAdded:deleted:foldersTag:forAccountID:]";
    _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v19 = xpc_connection_send_message_with_reply_sync(_connection, v17);

  v20 = [(CDDADConnection *)self _validateXPCReply:v19];
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v20[0] = @"kDAEReportFolderItemsSyncResult";
    v19[0] = @"kDAEMessageNameKey";
    v19[1] = @"kDAEStatusKey";
    v9 = MEMORY[0x277CCABB0];
    if (success)
    {
      v10 = 2;
    }

    else
    {
      v10 = 10;
    }

    iDCopy = iD;
    dCopy = d;
    v13 = [v9 numberWithInteger:v10];
    v20[1] = v13;
    v20[2] = dCopy;
    v19[2] = @"kDAEFolderIDKey";
    v19[3] = @"kDAEFolderSyncItemsCountKey";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    v19[4] = @"kDAEAccountIdKey";
    v20[3] = v14;
    v20[4] = iDCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

    v16 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:(id)l
{
  v11[2] = *MEMORY[0x277D85DE8];
  absoluteString = [l absoluteString];
  v5 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], absoluteString, 0, @"&=", 0x8000100u);
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEURLStringKey";
  v11[0] = @"kDAEHandleURL";
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  xpc_connection_send_message(_connection, v7);

  if (v5)
  {
    CFRelease(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendSynchronousXPCMessageWithParameters:(id)parameters handlerBlock:(id)block
{
  blockCopy = block;
  parametersCopy = parameters;
  v8 = dispatch_semaphore_create(0);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  _connection = [(CDDADConnection *)self _connection];
  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__CDDADConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke;
  v14[3] = &unk_278D54440;
  v15 = v8;
  v16 = blockCopy;
  v12 = v8;
  v13 = blockCopy;
  xpc_connection_send_message_with_reply(_connection, v9, v11, v14);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void __73__CDDADConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) && MEMORY[0x245D11100](v4) == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)beginDownloadingAttachmentWithUUID:(id)d accountID:(id)iD queue:(id)queue progressBlock:(id)block completionBlock:(id)completionBlock
{
  v37[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v17 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = iDCopy;
    _os_log_impl(&dword_242505000, v17, OS_LOG_TYPE_INFO, "Requesting download of attachment UUID %@ for accountID %@", buf, 0x16u);
  }

  v18 = [[DADownloadContext alloc] initWithAttachmentUUID:dCopy accountID:iDCopy queue:queueCopy downloadProgressBlock:blockCopy completionBlock:completionBlockCopy];
  v36[0] = @"kDAEMessageNameKey";
  v36[1] = @"kDAEAttachmentUUIDKey";
  v37[0] = @"kDAEBeginDownloadingAttachment";
  v37[1] = dCopy;
  v36[2] = @"kDAEAccountIdKey";
  v37[2] = iDCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v26[3] = &unk_278D54490;
  v31 = buf;
  v20 = dCopy;
  v27 = v20;
  v21 = iDCopy;
  v28 = v21;
  selfCopy = self;
  v22 = v18;
  v30 = v22;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v26];
  v23 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAEAttachmentDownloadIdKey"];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_INFO, "Download context %@ set up for downloading attachment UUID %@ on accountID %@", buf, 0x20u);
  }

  v10 = *(a1 + 48);
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__CDDADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_141;
  block[3] = &unk_278D54468;
  block[4] = v10;
  v14 = *(a1 + 56);
  v12 = v14;
  v16 = v14;
  dispatch_sync(v11, block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadsWithIDs:(id)ds error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  errorCopy = error;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dsCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v16 = 0;
        v17 = &v16;
        v18 = 0x3032000000;
        v19 = __Block_byref_object_copy_;
        v20 = __Block_byref_object_dispose_;
        v21 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__CDDADConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278D543A0;
        block[5] = v11;
        block[6] = &v16;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v17[5] finishedWithError:errorCopy];
        _Block_object_dispose(&v16, 8);

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __49__CDDADConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)cancelDownloadingAttachmentWithDownloadID:(id)d error:(id)error
{
  v18[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v18[0] = @"kDAECancelDownloadingAttachment";
  v17[0] = @"kDAEMessageNameKey";
  v17[1] = @"kDAEErrorDataKey";
  v7 = MEMORY[0x277CCAAB0];
  errorCopy = error;
  v9 = [v7 archivedDataWithRootObject:errorCopy];
  v17[2] = @"kDAEAttachmentDownloadIdKey";
  v18[1] = v9;
  v18[2] = dCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = dCopy;
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v10 handlerBlock:0];
  v14 = dCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [(CDDADConnection *)self _cancelDownloadsWithIDs:v12 error:errorCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    inviteCopy = invite;
    v33 = 2112;
    v34 = dCopy;
    v35 = 2112;
    v36 = iDCopy;
    _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEBUG, "Requesting share response %ld for calendar %@ for accountID %@", buf, 0x20u);
  }

  v17 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(DASharedCalendarContext *)v17 setShouldSyncCalendar:invite == 1];
  v29[0] = @"kDAEMessageNameKey";
  v29[1] = @"kDAEAccountIdKey";
  v30[0] = @"kDAERespondToSharedCalendar";
  v30[1] = iDCopy;
  v29[2] = @"kDAESharedCalendarReponseTypeKey";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:invite];
  v29[3] = @"kDAESharedCalendarResponseCalendarIDKey";
  v30[2] = v18;
  v30[3] = dCopy;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v24[3] = &unk_278D544B8;
  v25 = dCopy;
  v26 = iDCopy;
  selfCopy = self;
  v28 = v17;
  v20 = v17;
  v21 = iDCopy;
  v22 = dCopy;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v4 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v8 = a1[6];
  v7 = a1[7];
  v9 = *(v8 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CDDADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_145;
  block[3] = &unk_278D543F0;
  block[4] = v8;
  v13 = v3;
  v14 = v7;
  v10 = v3;
  dispatch_sync(v9, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  blockCopy = block;
  queueCopy = queue;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v29 = dCopy;
    v30 = 2112;
    v31 = iDCopy;
    _os_log_impl(&dword_242505000, v14, OS_LOG_TYPE_DEBUG, "Reporting calendar %@ for accountID %@ as junk", buf, 0x16u);
  }

  v15 = [[DASharedCalendarContext alloc] initWithCalendarID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
  [(DASharedCalendarContext *)v15 setShouldSyncCalendar:0];
  v26[0] = @"kDAEMessageNameKey";
  v26[1] = @"kDAEAccountIdKey";
  v27[0] = @"kDAEReportSharedCalendarAsJunk";
  v27[1] = iDCopy;
  v26[2] = @"kDAESharedCalendarResponseCalendarIDKey";
  v27[2] = dCopy;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v21[3] = &unk_278D544B8;
  v22 = dCopy;
  v23 = iDCopy;
  selfCopy = self;
  v25 = v15;
  v17 = v15;
  v18 = iDCopy;
  v19 = dCopy;
  [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v16 handlerBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v4 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v6 = a1[5];
    *buf = 138412802;
    v16 = v3;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_242505000, v4, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v8 = a1[6];
  v7 = a1[7];
  v9 = *(v8 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__CDDADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_146;
  block[3] = &unk_278D543F0;
  block[4] = v8;
  v13 = v3;
  v14 = v7;
  v10 = v3;
  dispatch_sync(v9, block);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = MEMORY[0x277CCAAB0];
  dCopy = d;
  v9 = [v7 archivedDataWithRootObject:changeCopy];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"kDAEProcessFolderChange", @"kDAEMessageNameKey", dCopy, @"kDAEAccountIdKey", v9, @"kDAEFolderChangeDataKey", 0}];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[CDDADConnection processFolderChange:forAccountWithID:]";
    _os_log_impl(&dword_242505000, v11, OS_LOG_TYPE_INFO, "XPC call performed in: %s", buf, 0xCu);
  }

  v12 = _CFXPCCreateXPCObjectFromCFObject();
  _connection = [(CDDADConnection *)self _connection];
  v14 = xpc_connection_send_message_with_reply_sync(_connection, v12);

  if (MEMORY[0x245D11100](v14) == MEMORY[0x277D86468])
  {
    v15 = _CFXPCCreateCFObjectFromXPCObject();
    v16 = [v15 objectForKeyedSubscript:@"kDAETaskIDKey"];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CDDADConnection_processFolderChange_forAccountWithID___block_invoke;
    block[3] = &unk_278D544E0;
    selfCopy = self;
    v24 = unsignedIntegerValue;
    v22 = changeCopy;
    dispatch_sync(muckingWithInFlightCollections, block);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

void __56__CDDADConnection_processFolderChange_forAccountWithID___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[6];
    v9 = 138412546;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Setting folder change %@ for key %lu", &v9, 0x16u);
  }

  v5 = a1[4];
  v6 = *(a1[5] + 64);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)statusReports
{
  v23[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v22 = @"kDAEMessageNameKey";
  v23[0] = @"kDAEGetStatusReports";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__CDDADConnection_statusReports__block_invoke;
  handler[3] = &unk_278D543C8;
  v15 = &v16;
  v8 = v5;
  v14 = v8;
  xpc_connection_send_message_with_reply(_connection, v4, v7, handler);

  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __32__CDDADConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEStatusReportsKey"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[CDDADConnection statusReports]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v12, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reallyRegisterForInterrogation
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(CDDADConnection *)self registered])
  {
    [(CDDADConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_INFO, "Sending message: kDAERegisterForInterrogation", v8, 2u);
    }

    v9 = @"kDAEMessageNameKey";
    v10[0] = @"kDAERegisterForInterrogation";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    xpc_connection_send_message(_connection, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForInterrogationWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_statusReportBlock != blockCopy)
  {
    if (blockCopy)
    {
      v6 = [blockCopy copy];
    }

    else
    {
      v6 = 0;
    }

    v7 = _Block_copy(v6);
    statusReportBlock = self->_statusReportBlock;
    self->_statusReportBlock = v7;
  }

  return 1;
}

- (void)fillOutCurrentEASTimeZoneInfo
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"kDAEMessageNameKey";
  v13[0] = @"kDAEFillOutEASTimeZoneInfo";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  _connection = [(CDDADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CDDADConnection_fillOutCurrentEASTimeZoneInfo__block_invoke;
  v10[3] = &unk_278D54508;
  v11 = v5;
  v8 = v5;
  xpc_connection_send_message_with_reply(_connection, v4, v7, v10);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)activeSyncDeviceIdentifier
{
  v25[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v24 = @"kDAEMessageNameKey";
  v25[0] = @"kDAEGetActiveSyncDeviceIdentifier";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v4 = 3;
  while (1)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    v6 = dispatch_semaphore_create(0);
    _connection = [(CDDADConnection *)self _connection];
    v8 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__CDDADConnection_activeSyncDeviceIdentifier__block_invoke;
    handler[3] = &unk_278D543C8;
    v17 = &v18;
    v9 = v6;
    v16 = v9;
    xpc_connection_send_message_with_reply(_connection, v5, v8, handler);

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (v19[5])
    {
      break;
    }

    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_ERROR, "Error getting activesync device identifier, will try again", v14, 2u);
    }

    if (!--v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __45__CDDADConnection_activeSyncDeviceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:@"kDAEActiveSyncDeviceIdentifierKey"];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
    [*(a1 + 32) setRequestID:v5];
    v6 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2;
    v8[3] = &unk_278D54530;
    v12 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, v8);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __73__CDDADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 56))
    {
      v3 = @"update";
    }

    else
    {
      v3 = @"retrieve";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_242505000, v2, OS_LOG_TYPE_DEBUG, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v8, 0x20u);
  }

  result = [*(*(a1 + 48) + 104) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)isOofSettingsSupportedForAccountWithID:(id)d completionBlock:(id)block
{
  v17[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    v16[0] = @"kDAEMessageNameKey";
    v16[1] = @"kDAEAccountIdKey";
    v17[0] = @"kDAEIsOofSettingsSupported";
    v17[1] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)self _connection];
    v11 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__CDDADConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke;
    handler[3] = &unk_278D54580;
    v14 = blockCopy;
    xpc_connection_send_message_with_reply(_connection, v9, v11, handler);
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_ERROR, "nil accountID passed to isOofSettingsSupportedForAccountWithID. Cannot continue.", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __74__CDDADConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x245D11100]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:@"kDAEIsOofSupportedKey"];
    v6 = v5;
    if (v5)
    {
      [v5 BOOLValue];
    }

    else
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_ERROR, "Error getting activesync device identifier", v8, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)requestCalendarAvailabilityWithAccountID:(id)d startDate:(id)date endDate:(id)endDate ignoredEventID:(id)iD addresses:(id)addresses resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v67 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  addressesCopy = addresses;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = 0;
  v20 = dCopy;
  if (!dCopy)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = 0;
      v22 = "Invalid 'accountID' provided: [%@].";
      v23 = v21;
      v24 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
    goto LABEL_11;
  }

  if (!dateCopy || !endDateCopy || [dateCopy compare:endDateCopy] == 1)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = dateCopy;
      v59 = 2112;
      v60 = endDateCopy;
      v22 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v23 = v21;
      v24 = 22;
LABEL_9:
      _os_log_impl(&dword_242505000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (addressesCopy && [addressesCopy count])
  {
    v37 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v58 = v20;
      v59 = 2112;
      v60 = dateCopy;
      v61 = 2112;
      v62 = endDateCopy;
      v63 = 2112;
      v64 = iDCopy;
      v65 = 2112;
      v66 = addressesCopy;
      _os_log_impl(&dword_242505000, v37, OS_LOG_TYPE_DEBUG, "Preparing calendar availability request.  accountID: [%@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v38 setObject:@"kDAERequestCalendarAvailability" forKey:@"kDAEMessageNameKey"];
    [v38 setObject:v20 forKey:@"kDAEAccountIdKey"];
    [v38 setObject:dateCopy forKey:@"kDAEStartDateKey"];
    [v38 setObject:endDateCopy forKey:@"kDAEEndDateKey"];
    [v38 setObject:addressesCopy forKey:@"kDAEAddressesKey"];
    if (iDCopy)
    {
      [v38 setObject:iDCopy forKey:@"kDAEIgnoredEventIDKey"];
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_153;
    v43[3] = &unk_278D545D0;
    v47[1] = &v51;
    v46 = blockCopy;
    v47[0] = completionBlockCopy;
    v30 = v38;
    v44 = v30;
    selfCopy = self;
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v30 handlerBlock:v43];

    v32 = completionBlockCopy;
    v40 = dateCopy;
    v27 = endDateCopy;
    v28 = v20;
    v29 = addressesCopy;
    v25 = 0;
    v31 = &v46;
    v33 = v47;
    goto LABEL_15;
  }

  v39 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v39, OS_LOG_TYPE_DEBUG, "No 'addresses' provided.", buf, 2u);
  }

  v25 = 0;
LABEL_11:
  v26 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v26, OS_LOG_TYPE_DEFAULT, "Will not issue calendar availability request.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v40 = dateCopy;
    v27 = endDateCopy;
    v28 = v20;
    v29 = addressesCopy;
    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278D545A8;
    v31 = &v50;
    v32 = completionBlockCopy;
    v50 = completionBlockCopy;
    v33 = &v49;
    v25 = v25;
    v49 = v25;
    dispatch_async(v30, block);
LABEL_15:

    addressesCopy = v29;
    dateCopy = v40;
    v20 = v28;
    endDateCopy = v27;
    completionBlockCopy = v32;
  }

  v34 = v52[5];

  _Block_object_dispose(&v51, 8);
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

void __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_153(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[DAECalendarAvailabilityContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1[8] + 8) + 40);
    v9 = a1[4];
    *buf = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v10 = a1[5];
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__CDDADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_155;
  block[3] = &unk_278D54468;
  v12 = a1[8];
  v16 = v6;
  v17 = v12;
  block[4] = v10;
  v13 = v6;
  dispatch_sync(v11, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  v20[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v19[0] = @"kDAEMessageNameKey";
    v19[1] = @"kDAECalendarAvailabilityRequestIDKey";
    v20[0] = @"kDAECancelCalendarAvailabilityRequest";
    v20[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v6 handlerBlock:0];
    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CDDADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278D543A0;
    v12 = buf;
    block[4] = self;
    v11 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
    [*(v14 + 5) finishedWithError:v8];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CDDADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarAvailabilityRequestReturnedResults:(id)results
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityResultsKey"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v23 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v23];
  v15 = v23;

  if (!v14)
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CDDADConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v21 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__CDDADConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_calendarAvailabilityRequestFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CDDADConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __56__CDDADConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (id)performCalendarDirectorySearchWithAccountID:(id)d terms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit resultsBlock:(id)block completionBlock:(id)completionBlock
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  termsCopy = terms;
  typesCopy = types;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  if (dCopy)
  {
    if (termsCopy && [termsCopy count])
    {
      if (typesCopy && [typesCopy count])
      {
        v19 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v50 = dCopy;
          v51 = 2112;
          v52 = typesCopy;
          v53 = 2048;
          limitCopy = limit;
          v55 = 2112;
          v56 = termsCopy;
          _os_log_impl(&dword_242505000, v19, OS_LOG_TYPE_DEBUG, "Preparing calendar directory search.  accountID: [%@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
        }

        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v20 setObject:@"kDAEPerformCalendarDirectorySearch" forKey:@"kDAEMessageNameKey"];
        [v20 setObject:dCopy forKey:@"kDAEAccountIdKey"];
        allObjects = [termsCopy allObjects];
        [v20 setObject:allObjects forKey:@"kDAECalendarDirectorySearchTermsKey"];

        allObjects2 = [typesCopy allObjects];
        [v20 setObject:allObjects2 forKey:@"kDAECalendarDirectorySearchRecordTypesKey"];

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
        [v20 setObject:v23 forKey:@"kDAECalendarDirectorySearchResultLimitKey"];

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_157;
        v35[3] = &unk_278D545D0;
        v39[1] = &v43;
        v38 = blockCopy;
        v39[0] = completionBlockCopy;
        v24 = v20;
        v36 = v24;
        selfCopy = self;
        [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v24 handlerBlock:v35];

        v25 = 0;
        v26 = &v38;
        v27 = v39;
        goto LABEL_22;
      }

      v28 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v29 = "No 'recordTypes' provided.";
    }

    else
    {
      v28 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
LABEL_17:

        v25 = 0;
        goto LABEL_18;
      }

      *buf = 0;
      v29 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_242505000, v28, OS_LOG_TYPE_DEBUG, v29, buf, 2u);
    goto LABEL_17;
  }

  v30 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = 0;
    _os_log_impl(&dword_242505000, v30, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%@].", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
LABEL_18:
  v31 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242505000, v31, OS_LOG_TYPE_DEFAULT, "Will not issue calendar directory search.", buf, 2u);
  }

  if (completionBlockCopy)
  {
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278D545A8;
    v26 = &v42;
    v42 = completionBlockCopy;
    v27 = &v41;
    v25 = v25;
    v41 = v25;
    dispatch_async(v24, block);
LABEL_22:
  }

  v32 = v44[5];

  _Block_object_dispose(&v43, 8);
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

void __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_157(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[DAECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1[8] + 8) + 40);
    v9 = a1[4];
    *buf = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_DEBUG, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v10 = a1[5];
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__CDDADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_159;
  block[3] = &unk_278D54468;
  v12 = a1[8];
  v16 = v6;
  v17 = v12;
  block[4] = v10;
  v13 = v6;
  dispatch_sync(v11, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  v24[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v23[0] = @"kDAEMessageNameKey";
    v23[1] = @"kDAECalendarDirectorySearchIDKey";
    v24[0] = @"kDAECancelCalendarDirectorySearch";
    v24[1] = dCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v6 handlerBlock:0];
    *v15 = 0;
    v16 = v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CDDADConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278D543A0;
    v14 = v15;
    block[4] = self;
    v8 = v5;
    v13 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
    [*(v16 + 5) finishedWithError:v9 exceededResultLimit:0];
    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_DEBUG, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
    }

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v15, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __55__CDDADConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarDirectorySearchReturnedResults:(id)results
{
  v34 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchResultsKey"];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v28 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_242505000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278D543A0;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v26 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  v19 = [v14 count];
  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v19];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v23[3] = &unk_278D545F8;
  v21 = v20;
  v24 = v21;
  [v14 enumerateKeysAndObjectsUsingBlock:v23];
  [*(*(&buf + 1) + 40) resultsReturned:v21];

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __59__CDDADConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

- (void)_calendarDirectorySearchFinished:(id)finished
{
  finishedCopy = finished;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(CDDADConnection *)self decodedErrorFromData:v7];
  v9 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchExceededResultLimitKey"];
  v10 = v9;
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CDDADConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278D543A0;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:bOOLValue];

  _Block_object_dispose(&v17, 8);
}

uint64_t __52__CDDADConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)externalIdentificationForAccountID:(id)d resultsBlock:(id)block
{
  v38[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  if (blockCopy)
  {
    if (dCopy)
    {
      v37[0] = @"kDAEMessageNameKey";
      v37[1] = @"kDAEAccountIdKey";
      v38[0] = @"kDAERequestCalendarExternalIdentification";
      v38[1] = dCopy;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__CDDADConnection_externalIdentificationForAccountID_resultsBlock___block_invoke;
      v13[3] = &unk_278D54620;
      v13[4] = &v31;
      v13[5] = &v25;
      v13[6] = &v21;
      v13[7] = &v15;
      [(CDDADConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:v13];
    }

    else
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_242505000, v10, OS_LOG_TYPE_DEFAULT, "No accountID provided.", buf, 2u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:86 userInfo:0];
      v8 = v32[5];
      v32[5] = v11;
    }

    blockCopy[2](blockCopy, v32[5], v26[5], v22[3], v16[5]);
  }

  else
  {
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_DEFAULT, "No results block provided.", buf, 2u);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __67__CDDADConnection_externalIdentificationForAccountID_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 count])
  {
    v3 = [v11 objectForKeyedSubscript:@"kDAEAccountServerHostKey"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [v11 objectForKeyedSubscript:@"kDAEAccountServerPortKey"];
    *(*(*(a1 + 48) + 8) + 24) = [v6 integerValue];

    v7 = [v11 objectForKeyedSubscript:@"kDAEAccountOwnerAddressesKey"];
    v8 = 56;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:28 userInfo:0];
    v8 = 32;
  }

  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (CDDADConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v28.receiver = self;
  v28.super_class = CDDADConnection;
  v2 = [(CDDADConnection *)&v28 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dataaccess.muckingWithConn", v3);
    muckingWithConn = v2->_muckingWithConn;
    v2->_muckingWithConn = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.dataaccess.muckingWithInFlightCollections", v6);
    muckingWithInFlightCollections = v2->_muckingWithInFlightCollections;
    v2->_muckingWithInFlightCollections = v7;

    v9 = objc_opt_new();
    accountIdsWithAlreadyResetCerts = v2->_accountIdsWithAlreadyResetCerts;
    v2->_accountIdsWithAlreadyResetCerts = v9;

    v11 = objc_opt_new();
    accountIdsWithAlreadyResetThrottleTimers = v2->_accountIdsWithAlreadyResetThrottleTimers;
    v2->_accountIdsWithAlreadyResetThrottleTimers = v11;

    v13 = objc_opt_new();
    inFlightSearchQueries = v2->_inFlightSearchQueries;
    v2->_inFlightSearchQueries = v13;

    v15 = objc_opt_new();
    inFlightFolderChanges = v2->_inFlightFolderChanges;
    v2->_inFlightFolderChanges = v15;

    v17 = objc_opt_new();
    inFlightAttachmentDownloads = v2->_inFlightAttachmentDownloads;
    v2->_inFlightAttachmentDownloads = v17;

    v19 = objc_opt_new();
    inFlightCalendarAvailabilityRequests = v2->_inFlightCalendarAvailabilityRequests;
    v2->_inFlightCalendarAvailabilityRequests = v19;

    v21 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v21;

    v23 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v23;

    v25 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v25;

    [(CDDADConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(CDDADConnection *)self _tearDownInFlightObjects];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CDDADConnection;
  [(CDDADConnection *)&v4 dealloc];
}

- (void)_resetCertWarningsForAccountId:(id)id andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    accountIdsWithAlreadyResetCerts = self->_accountIdsWithAlreadyResetCerts;
    *buf = 138412290;
    v22 = accountIdsWithAlreadyResetCerts;
    _os_log_impl(&dword_242505000, v9, OS_LOG_TYPE_DEBUG, "in _resetCertWarningsForAccount, _accountIdsWithAlreadyResetCerts is %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (idCopy)
  {
    v12 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetCerts containsObject:idCopy]^ 1;
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  if (((idCopy != 0) & (v12 | requestedCopy)) == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{dataclasses, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey", @"kDAEResetCertWarnings", idCopy}];
    v20[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:3];

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)selfCopy _connection];
    xpc_connection_send_message(_connection, v15);

    v17 = selfCopy;
    objc_sync_enter(v17);
    [v17[4] addObject:idCopy];
    objc_sync_exit(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_resetThrottleTimersForAccountId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Name = sel_getName(a2);
    accountIdsWithAlreadyResetThrottleTimers = self->_accountIdsWithAlreadyResetThrottleTimers;
    *buf = 136315394;
    v19 = Name;
    v20 = 2112;
    v21 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_242505000, v6, OS_LOG_TYPE_DEBUG, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!idCopy)
  {
    objc_sync_exit(selfCopy);
    v11 = selfCopy;
    goto LABEL_7;
  }

  v10 = [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers containsObject:idCopy];
  objc_sync_exit(selfCopy);

  if ((v10 & 1) == 0)
  {
    v16[0] = @"kDAEMessageNameKey";
    v16[1] = @"kDAEAccountIdKey";
    v17[0] = @"kDAEResetThrottleTimers";
    v17[1] = idCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    _connection = [(CDDADConnection *)selfCopy _connection];
    xpc_connection_send_message(_connection, v12);

    v14 = selfCopy;
    objc_sync_enter(v14);
    [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers addObject:idCopy];
    objc_sync_exit(v14);

LABEL_7:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)resetTimersAndWarnings
{
  v3 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_242505000, v3, OS_LOG_TYPE_DEBUG, "Resetting shouldResetCertWarnings and throttle timers", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetCerts removeAllObjects];
  [(NSMutableSet *)selfCopy->_accountIdsWithAlreadyResetThrottleTimers removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)_registerForAppResumedNotification
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_resetTimersAndWarnings name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_dispatchMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEMessageNameKey"];
  if ([v6 isEqualToString:@"kDAEFoldersUpdated"])
  {
    [(CDDADConnection *)self _foldersUpdated:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEPolicyKeyChanged"])
  {
    [(CDDADConnection *)self _policyKeyChanged:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAELogDataAccessStatus"])
  {
    [(CDDADConnection *)self _logDataAccessStatus:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEServerContactsSearchQueryFinished"])
  {
    [(CDDADConnection *)self _serverContactsSearchQueryFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEFolderChangeFinished"])
  {
    [(CDDADConnection *)self _folderChangeFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEGetStatusReportsFromClient"])
  {
    [(CDDADConnection *)self _getStatusReportsFromClient:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadProgress"])
  {
    [(CDDADConnection *)self _downloadProgress:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadFinished"])
  {
    [(CDDADConnection *)self _downloadFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarShareResponseFinished"])
  {
    [(CDDADConnection *)self _shareResponseFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAEOofSettingsFinished"])
  {
    [(CDDADConnection *)self _oofSettingsRequestsFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestReturnedResults"])
  {
    [(CDDADConnection *)self _calendarAvailabilityRequestReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestFinished"])
  {
    [(CDDADConnection *)self _calendarAvailabilityRequestFinished:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchReturnedResults"])
  {
    [(CDDADConnection *)self _calendarDirectorySearchReturnedResults:messageCopy];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchFinished"])
  {
    [(CDDADConnection *)self _calendarDirectorySearchFinished:messageCopy];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_242505000, v7, OS_LOG_TYPE_ERROR, "unknown request sent to connection.", &v10, 2u);
    }

    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_242505000, v8, OS_LOG_TYPE_ERROR, "request: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end