@interface ESDConnection
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
- (BOOL)_hasConnectionForExchange;
- (BOOL)_validateXPCReply:(id)a3;
- (BOOL)performServerContactsSearch:(id)a3 forAccountWithID:(id)a4;
- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4;
- (BOOL)processMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7;
- (BOOL)registerForInterrogationWithBlock:(id)a3;
- (BOOL)requestPolicyUpdateForAccountID:(id)a3;
- (BOOL)resumeWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6;
- (BOOL)stopWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (BOOL)suspendWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (ESDConnection)init;
- (id)_connectionForExchange;
- (id)_createReplyToRequest:(id)a3 withProperties:(id)a4;
- (id)_init;
- (id)activeSyncDeviceIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 accountID:(id)a4 queue:(id)a5 progressBlock:(id)a6 completionBlock:(id)a7;
- (id)currentPolicyKeyForAccountID:(id)a3;
- (id)decodedErrorFromData:(id)a3;
- (id)performCalendarDirectorySearchWithAccountID:(id)a3 terms:(id)a4 recordTypes:(id)a5 resultLimit:(unint64_t)a6 resultsBlock:(id)a7 completionBlock:(id)a8;
- (id)requestCalendarAvailabilityWithAccountID:(id)a3 startDate:(id)a4 endDate:(id)a5 ignoredEventID:(id)a6 addresses:(id)a7 resultsBlock:(id)a8 completionBlock:(id)a9;
- (id)statusReports;
- (unint64_t)requestDaemonStopMonitoringAgents;
- (unint64_t)requestDaemonStopMonitoringAgentsSync;
- (void)_calendarAvailabilityRequestFinished:(id)a3;
- (void)_calendarAvailabilityRequestReturnedResults:(id)a3;
- (void)_calendarDirectorySearchFinished:(id)a3;
- (void)_calendarDirectorySearchReturnedResults:(id)a3;
- (void)_cancelDownloadsWithIDs:(id)a3 error:(id)a4;
- (void)_dispatchMessage:(id)a3;
- (void)_downloadFinished:(id)a3;
- (void)_downloadProgress:(id)a3;
- (void)_exchangeServerDiedWithReason:(id)a3;
- (void)_folderChangeFinished:(id)a3;
- (void)_foldersUpdated:(id)a3;
- (void)_getStatusReportsFromClient:(id)a3;
- (void)_initializeConnectionWithXPCEndpoint:(id)a3;
- (void)_initializeExchangeConnection;
- (void)_initializeXPCConnection:(id)a3;
- (void)_initializeXPCConnectionForExchange:(id)a3;
- (void)_oofSettingsRequestsFinished:(id)a3;
- (void)_policyKeyChanged:(id)a3;
- (void)_registerForAppResumedNotification;
- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)a3 withToken:(unint64_t)a4 waitForReply:(BOOL)a5;
- (void)_resetCertWarningsForAccountId:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (void)_resetThrottleTimersForAccountId:(id)a3;
- (void)_sendSynchronousXPCMessageWithParameters:(id)a3 handlerBlock:(id)a4;
- (void)_serverContactsSearchQueryFinished:(id)a3;
- (void)_serverDiedWithReason:(id)a3;
- (void)_shareResponseFinished:(id)a3;
- (void)_tearDownInFlightObjects;
- (void)asyncProcessMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7;
- (void)cancelCalendarAvailabilityRequestWithID:(id)a3;
- (void)cancelCalendarDirectorySearchWithID:(id)a3;
- (void)cancelDownloadingAttachmentWithDownloadID:(id)a3 error:(id)a4;
- (void)cancelServerContactsSearch:(id)a3;
- (void)dealloc;
- (void)externalIdentificationForAccountID:(id)a3 resultsBlock:(id)a4;
- (void)fillOutCurrentEASTimeZoneInfo;
- (void)handleURL:(id)a3;
- (void)isOofSettingsSupportedForAccountWithID:(id)a3 completionBlock:(id)a4;
- (void)reallyRegisterForInterrogation;
- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7;
@end

@implementation ESDConnection

- (void)_tearDownInFlightObjects
{
  v131 = *MEMORY[0x277D85DE8];
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy_;
  v123 = __Block_byref_object_dispose_;
  v124 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_278FCFB68;
  block[5] = &v119;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v120[5];
  v5 = *MEMORY[0x277D038E0];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v6];

  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = __Block_byref_object_copy_;
  v116 = __Block_byref_object_dispose_;
  v117 = 0;
  v7 = self->_muckingWithInFlightCollections;
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_105;
  v111[3] = &unk_278FCFB68;
  v111[5] = &v112;
  v111[4] = self;
  dispatch_sync(v7, v111);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v8 = v113[5];
  v9 = [v8 countByEnumeratingWithState:&v107 objects:v130 count:16];
  if (v9)
  {
    v10 = *v108;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v108 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v107 + 1) + 8 * i);
        v13 = [v12 consumer];
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:0 userInfo:0];
        [v13 folderChange:v12 finishedWithStatus:0 error:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v107 objects:v130 count:16];
    }

    while (v9);
  }

  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy_;
  v105 = __Block_byref_object_dispose_;
  v106 = 0;
  v15 = self->_muckingWithInFlightCollections;
  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_106;
  v100[3] = &unk_278FCFB68;
  v100[5] = &v101;
  v100[4] = self;
  dispatch_sync(v15, v100);
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v16 = v102[5];
  v17 = [v16 countByEnumeratingWithState:&v96 objects:v129 count:16];
  if (v17)
  {
    v18 = *v97;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v97 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v96 + 1) + 8 * j);
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:0 userInfo:0];
        [v20 finishedWithError:v21];
      }

      v17 = [v16 countByEnumeratingWithState:&v96 objects:v129 count:16];
    }

    while (v17);
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy_;
  v94 = __Block_byref_object_dispose_;
  v95 = 0;
  v22 = self->_muckingWithInFlightCollections;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_107;
  v89[3] = &unk_278FCFB68;
  v89[5] = &v90;
  v89[4] = self;
  dispatch_sync(v22, v89);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v23 = v91[5];
  v24 = [v23 countByEnumeratingWithState:&v85 objects:v128 count:16];
  if (v24)
  {
    v25 = *v86;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v86 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v85 + 1) + 8 * k);
        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v27 finishedWithError:v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v85 objects:v128 count:16];
    }

    while (v24);
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy_;
  v83 = __Block_byref_object_dispose_;
  v84 = 0;
  v29 = self->_muckingWithInFlightCollections;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_108;
  v78[3] = &unk_278FCFB68;
  v78[4] = self;
  v78[5] = &v79;
  dispatch_sync(v29, v78);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v30 = v80[5];
  v31 = [v30 countByEnumeratingWithState:&v74 objects:v127 count:16];
  if (v31)
  {
    v32 = *v75;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v75 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v74 + 1) + 8 * m);
        v35 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v34 finishedWithError:v35 exceededResultLimit:0];
      }

      v31 = [v30 countByEnumeratingWithState:&v74 objects:v127 count:16];
    }

    while (v31);
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy_;
  v72 = __Block_byref_object_dispose_;
  v73 = 0;
  v36 = self->_muckingWithInFlightCollections;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_109;
  v67[3] = &unk_278FCFB68;
  v67[4] = self;
  v67[5] = &v68;
  dispatch_sync(v36, v67);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v37 = v69[5];
  v38 = [v37 countByEnumeratingWithState:&v63 objects:v126 count:16];
  if (v38)
  {
    v39 = *v64;
    do
    {
      for (n = 0; n != v38; ++n)
      {
        if (*v64 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v63 + 1) + 8 * n);
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v41 finishedWithError:v42];
      }

      v38 = [v37 countByEnumeratingWithState:&v63 objects:v126 count:16];
    }

    while (v38);
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  v43 = self->_muckingWithInFlightCollections;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __41__ESDConnection__tearDownInFlightObjects__block_invoke_110;
  v56[3] = &unk_278FCFB68;
  v56[4] = self;
  v56[5] = &v57;
  dispatch_sync(v43, v56);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v44 = v58[5];
  v45 = [v44 countByEnumeratingWithState:&v52 objects:v125 count:16];
  if (v45)
  {
    v46 = *v53;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v53 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v52 + 1) + 8 * ii);
        v49 = [v48 consumer];
        v50 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:-1 userInfo:0];
        [v49 oofRequestInfo:v48 finishedWithResult:0 error:v50];
      }

      v45 = [v44 countByEnumeratingWithState:&v52 objects:v125 count:16];
    }

    while (v45);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v90, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v112, 8);

  _Block_object_dispose(&v119, 8);
  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing ALL search queries", v8, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_105(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Failing all folder changes", v8, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_106(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all attachment downloads", v8, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_107(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all calendar availability lookups", v8, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_108(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all calendar search requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_109(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all share requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __41__ESDConnection__tearDownInFlightObjects__block_invoke_110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing all settings requests", v8, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

- (void)_serverDiedWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      v8 = "Daemon died, cleaning up.";
      v9 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v4 == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v11) = 0;
      v8 = "LOOK AT ME!!!! dataaccessd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v9 = &v11;
LABEL_7:
      _os_log_impl(&dword_24A1B8000, v6, v7, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(ESDConnection *)self _tearDownInFlightObjects];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(ESDConnection *)self setRegistered:0];
}

- (void)_exchangeServerDiedWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == MEMORY[0x277D863F0])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 0;
      v8 = "Exchange daemon died, cleaning up.";
      v9 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v4 == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v11) = 0;
      v8 = "LOOK AT ME!!!! exchangesyncd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v9 = &v11;
LABEL_7:
      _os_log_impl(&dword_24A1B8000, v6, v7, v8, v9, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(ESDConnection *)self _tearDownInFlightObjects];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(ESDConnection *)self setRegistered:0];
}

- (id)_connectionForExchange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  muckingWithConn = self->_muckingWithConn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ESDConnection__connectionForExchange__block_invoke;
  v5[3] = &unk_278FCFB90;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__ESDConnection__connectionForExchange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _initializeExchangeConnection];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (BOOL)_hasConnectionForExchange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  muckingWithConn = self->_muckingWithConn;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ESDConnection__hasConnectionForExchange__block_invoke;
  v5[3] = &unk_278FCFB68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_initializeExchangeConnection
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [@"com.apple.exchangesyncd" UTF8String];
  v4 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(v3, v4, 0);
  connExchange = self->_connExchange;
  self->_connExchange = mach_service;

  if (self->_connExchange)
  {
    v7 = *MEMORY[0x277D85DE8];

    [(ESDConnection *)self _initializeXPCConnectionForExchange:?];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 138412290;
      v12 = @"com.apple.exchangesyncd";
      _os_log_impl(&dword_24A1B8000, v8, v9, "Couldn't create a connection to [%@]", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)a3
{
  v4 = a3;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ESDConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_278FCFB18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(muckingWithConn, v7);
}

void __54__ESDConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
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
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(a1 + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_24A1B8000, v7, v8, "Couldn't create a connection to endpoint: [%@]", &v11, 0xCu);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeXPCConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ESDConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_278FCFBB8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(v4, v5);
  xpc_connection_resume(v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__ESDConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x24C212D60]();
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

- (void)_initializeXPCConnectionForExchange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__ESDConnection__initializeXPCConnectionForExchange___block_invoke;
  v5[3] = &unk_278FCFBB8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(v4, v5);
  xpc_connection_resume(v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__ESDConnection__initializeXPCConnectionForExchange___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x24C212D60]();
  if (v3 == MEMORY[0x277D86480])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _exchangeServerDiedWithReason:v5];
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

- (id)_createReplyToRequest:(id)a3 withProperties:(id)a4
{
  v5 = a4;
  reply = xpc_dictionary_create_reply(a3);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__ESDConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_278FCFBE0;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (id)decodedErrorFromData:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v12];
    v5 = v12;
    if (!v4)
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_24A1B8000, v6, v7, "Unable to read data to decode error: %@", buf, 0xCu);
      }
    }

    v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"root"];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_policyKeyChanged:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ESDConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_278FCFB40;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__ESDConnection__policyKeyChanged___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03D20]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03D10]];
  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *MEMORY[0x277D038B8];
    v8 = *MEMORY[0x277D038B0];
    if (v4)
    {
      v9 = *MEMORY[0x277D038A0];
      v17 = *MEMORY[0x277D038B0];
      v18 = v9;
      v19 = v3;
      v20 = v4;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v19;
      v12 = &v17;
      v13 = 2;
    }

    else
    {
      v21 = *MEMORY[0x277D038B0];
      v22 = v3;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v22;
      v12 = &v21;
      v13 = 1;
    }

    v15 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:{v13, v17, v18, v19, v20, v21, v22}];
    [v6 postNotificationName:v7 object:v5 userInfo:v15];
  }

  else
  {
    v6 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v14))
    {
      *buf = 138412290;
      v24 = v2;
      _os_log_impl(&dword_24A1B8000, v6, v14, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ESDConnection__foldersUpdated___block_invoke;
  block[3] = &unk_278FCFB40;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__ESDConnection__foldersUpdated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D03BA8]];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D039D0]];
  v5 = v4;
  if (!v3)
  {
    v6 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v6, v9))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v15 = v2;
    v10 = "Malformed callback message from dataaccess daemon: no folders (%@)";
LABEL_8:
    _os_log_impl(&dword_24A1B8000, v6, v9, v10, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v4)
  {
    v6 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v6, v9))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v15 = v2;
    v10 = "Malformed callback message from dataaccess daemon: bad account id (%@)";
    goto LABEL_8;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277D038C8];
  v12[0] = *MEMORY[0x277D038D0];
  v12[1] = v7;
  v13[0] = v3;
  v13[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v6 postNotificationName:@"DataAccessMonitoredFolderUpdated" object:0 userInfo:v8];

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
}

void __38__ESDConnection__logDataAccessStatus___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D03898] object:0];
}

- (void)_serverContactsSearchQueryFinished:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_24A1B8000, v8, v10, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ESDConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v12 = v6;
  v32 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03DC8]];
    if (v13)
    {
      v30 = 0;
      v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v13 error:&v30];
      v15 = v30;
      if (!v14)
      {
        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v16, v17))
        {
          *v34 = 138412290;
          v35 = v15;
          _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to read data to decode search results: %@", v34, 0xCu);
        }
      }

      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
      v21 = [v14 decodeObjectOfClasses:v20 forKey:@"root"];
    }

    else
    {
      v15 = DALoggingwithCategory();
      v23 = *(v9 + 6);
      if (os_log_type_enabled(v15, v23))
      {
        *v34 = 0;
        _os_log_impl(&dword_24A1B8000, v15, v23, "Could not deserialize search results from the xpc message", v34, 2u);
      }

      v21 = 0;
    }

    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v10))
    {
      *v34 = 138412290;
      v35 = v21;
      _os_log_impl(&dword_24A1B8000, v24, v10, "Search results: %@", v34, 0xCu);
    }

    [*(*(&buf + 1) + 40) sendResultsToConsumer:v21];
    v25 = *(*(&buf + 1) + 40);
    v26 = MEMORY[0x277CCA9B8];
    v27 = [v7 intValue];
    v28 = [v26 errorWithDomain:*MEMORY[0x277D038E0] code:v27 userInfo:0];
    [v25 sendFinishedToConsumerWithError:v28];
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(v9 + 3);
    if (os_log_type_enabled(v21, v22))
    {
      *v34 = 0;
      _os_log_impl(&dword_24A1B8000, v21, v22, "received results for an unknown search query", v34, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __52__ESDConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing query %@ for key %@", &v11, 0x16u);
  }

  result = [*(a1[4] + 56) removeObjectForKey:a1[5]];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_folderChangeFinished:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E88]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BA0]];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03BB0]];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v10 = [(ESDConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v11, v13))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_24A1B8000, v11, v13, "folderChange finished with status %@, error %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ESDConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v25 = buf;
  block[4] = self;
  v15 = v5;
  v24 = v15;
  dispatch_sync(muckingWithInFlightCollections, block);
  v16 = *&buf[8];
  v17 = *(*&buf[8] + 40);
  if (v17)
  {
    if (v7)
    {
      [v17 setFolderId:v7];
      v16 = *&buf[8];
    }

    if (v8)
    {
      [*(v16 + 40) setDisplayName:v8];
      v16 = *&buf[8];
    }

    v18 = [*(v16 + 40) consumer];
    -[NSObject folderChange:finishedWithStatus:error:](v18, "folderChange:finishedWithStatus:error:", *(*&buf[8] + 40), [v6 intValue], v10);
  }

  else
  {
    v18 = DALoggingwithCategory();
    v19 = *(v12 + 3);
    if (os_log_type_enabled(v18, v19))
    {
      *v22 = 0;
      _os_log_impl(&dword_24A1B8000, v18, v19, "received results for an unknown folderChange", v22, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ESDConnection__folderChangeFinished___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing folder change %@ for key %@", &v11, 0x16u);
  }

  result = [*(a1[4] + 64) removeObjectForKey:a1[5]];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getStatusReportsFromClient:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ESDConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_278FCFB18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__ESDConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if ([v4 count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        do
        {
          v9 = 0;
          do
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v17 + 1) + 8 * v9) dictionaryRepresentation];
            [v2 addObject:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
        }

        while (v7);
      }
    }
  }

  v21 = *MEMORY[0x277D03E40];
  v22 = v2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:{1, v17}];
  v12 = [*(a1 + 32) _createReplyToRequest:*(a1 + 40) withProperties:v11];
  v13 = xpc_dictionary_get_remote_connection(*(a1 + 40));
  v14 = [*(a1 + 32) _connectionForExchange];
  v15 = v14;
  if (v14 == v13)
  {
    xpc_connection_send_message(v14, v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_downloadProgress:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03A30]];
  v5 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03B30]];
  v6 = [v5 longLongValue];

  v7 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03E90]];
  v8 = [v7 longLongValue];

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
        block[2] = __35__ESDConnection__downloadProgress___block_invoke;
        block[3] = &unk_278FCFC28;
        block[5] = v12;
        block[6] = &v19;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v20[5] updateProgressDownloadedByteCount:v6 totalByteCount:{v8, v15}];
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

uint64_t __35__ESDConnection__downloadProgress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadFinished:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v14 objectForKeyedSubscript:*MEMORY[0x277D03A30]];
  v5 = [v14 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v6 = [(ESDConnection *)self decodedErrorFromData:v5];

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
        block[2] = __35__ESDConnection__downloadFinished___block_invoke;
        block[3] = &unk_278FCFC28;
        block[5] = v10;
        block[6] = &v17;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v18[5] finishedWithError:{v6, v13}];
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

uint64_t __35__ESDConnection__downloadFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)_shareResponseFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ESDConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__ESDConnection__shareResponseFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 96);

  return [v6 removeObjectForKey:v5];
}

- (void)_oofSettingsRequestsFinished:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CC8]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v10))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_24A1B8000, v8, v10, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ESDConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v12 = v6;
  v33 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (*(*(&buf + 1) + 40))
  {
    if (v7)
    {
      if ([v7 intValue] == 2)
      {
        v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CC0]];
        v14 = v13;
        if (v13 && [v13 BOOLValue])
        {
          v15 = [*(*(&buf + 1) + 40) consumer];
          [v15 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:0 error:0];
        }

        else
        {
          v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03CE8]];
          if (v15)
          {
            v25 = [objc_alloc(MEMORY[0x277D03968]) initWithDictionary:v15];
            v26 = DALoggingwithCategory();
            if (os_log_type_enabled(v26, v10))
            {
              *v35 = 138412290;
              v36 = v25;
              _os_log_impl(&dword_24A1B8000, v26, v10, "Oof settings request results: %@", v35, 0xCu);
            }

            v27 = [*(*(&buf + 1) + 40) consumer];
            [v27 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:v25 error:0];
          }

          else
          {
            v28 = DALoggingwithCategory();
            v29 = *(v9 + 6);
            if (os_log_type_enabled(v28, v29))
            {
              *v35 = 0;
              _os_log_impl(&dword_24A1B8000, v28, v29, "Could not deserialize search results from the xpc message", v35, 2u);
            }

            v25 = [*(*(&buf + 1) + 40) consumer];
            v30 = *(*(&buf + 1) + 40);
            v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:62 userInfo:0];
            [v25 oofRequestInfo:v30 finishedWithResult:0 error:v27];
          }
        }
      }

      else
      {
        v14 = [*(*(&buf + 1) + 40) consumer];
        v21 = *(*(&buf + 1) + 40);
        v22 = MEMORY[0x277CCA9B8];
        v23 = [v7 intValue];
        v24 = [v22 errorWithDomain:*MEMORY[0x277D038E0] code:v23 userInfo:0];
        [v14 oofRequestInfo:v21 finishedWithResult:0 error:v24];
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(v9 + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *v35 = 0;
        _os_log_impl(&dword_24A1B8000, v17, v18, "Status missing from the xpc message", v35, 2u);
      }

      v14 = [*(*(&buf + 1) + 40) consumer];
      v19 = *(*(&buf + 1) + 40);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:62 userInfo:0];
      [v14 oofRequestInfo:v19 finishedWithResult:0 error:v20];
    }
  }

  else
  {
    v14 = DALoggingwithCategory();
    v16 = *(v9 + 3);
    if (os_log_type_enabled(v14, v16))
    {
      *v35 = 0;
      _os_log_impl(&dword_24A1B8000, v14, v16, "received results for an unknown oof settings request", v35, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __46__ESDConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = a1[5];
    v8 = *(*(a1[6] + 8) + 40);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Removing from inflight dictionary: oof settings request %@ for key %@", &v11, 0x16u);
  }

  result = [*(a1[4] + 104) removeObjectForKey:a1[5]];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[ESDConnection sharedConnection];
  }

  [sharedConnection_gESDConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gESDConnection;

  return v2;
}

uint64_t __33__ESDConnection_sharedConnection__block_invoke()
{
  sharedConnection_gESDConnection = [[ESDConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(ESDConnection *)self _hasConnectionForExchange])
  {
    [(ESDConnection *)self _resetCertWarningsForAccountId:v7 andDataclasses:127 isUserRequested:0];
    v8 = *MEMORY[0x277D03DB0];
    v9 = *MEMORY[0x277D039D0];
    v22[0] = *MEMORY[0x277D03C88];
    v22[1] = v9;
    v23[0] = v8;
    v23[1] = v7;
    v22[2] = *MEMORY[0x277D03BA8];
    v23[2] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v12))
    {
      v20 = 136315138;
      v21 = "[ESDConnection resumeWatchingFoldersWithKeys:forAccountID:]";
      _os_log_impl(&dword_24A1B8000, v11, v12, "XPC call performed in: %s", &v20, 0xCu);
    }

    v13 = _CFXPCCreateXPCObjectFromCFObject();
    v14 = [(ESDConnection *)self _connectionForExchange];
    v15 = xpc_connection_send_message_with_reply_sync(v14, v13);

    v16 = [(ESDConnection *)self _validateXPCReply:v15];
  }

  else
  {
    v10 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v17))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_24A1B8000, v10, v17, "[ESDConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v20, 2u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D03E80];
  v7 = *MEMORY[0x277D039D0];
  v22[0] = *MEMORY[0x277D03C88];
  v22[1] = v7;
  v23[0] = v6;
  v23[1] = a4;
  v22[2] = *MEMORY[0x277D03BA8];
  v23[2] = a3;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v23 forKeys:v22 count:3];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v20 = 136315138;
    v21 = "[ESDConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v12, v13, "XPC call performed in: %s", &v20, 0xCu);
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = [(ESDConnection *)self _connectionForExchange];
  v16 = xpc_connection_send_message_with_reply_sync(v15, v14);

  v17 = [(ESDConnection *)self _validateXPCReply:v16];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D03E50];
  v7 = *MEMORY[0x277D039D0];
  v22[0] = *MEMORY[0x277D03C88];
  v22[1] = v7;
  v23[0] = v6;
  v23[1] = a4;
  v22[2] = *MEMORY[0x277D03BA8];
  v23[2] = a3;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v23 forKeys:v22 count:3];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v20 = 136315138;
    v21 = "[ESDConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v12, v13, "XPC call performed in: %s", &v20, 0xCu);
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = [(ESDConnection *)self _connectionForExchange];
  v16 = xpc_connection_send_message_with_reply_sync(v15, v14);

  v17 = [(ESDConnection *)self _validateXPCReply:v16];
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_validateXPCReply:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x24C212D60]();
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    v10 = [v9 intValue];
    v8 = v10 == 2;
    if (v10 != 2)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_24A1B8000, v11, v12, "XPC Reply Failure. Status Code: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_24A1B8000, v6, v7, "Unsupported XPC reply type. Reply Type: %@", &v15, 0xCu);
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ESDConnection *)self _resetCertWarningsForAccountId:v4 andDataclasses:127 isUserRequested:0];
  v5 = *MEMORY[0x277D03D88];
  v6 = *MEMORY[0x277D039D0];
  v12[0] = *MEMORY[0x277D03C88];
  v12[1] = v6;
  v13[0] = v5;
  v13[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v8 = _CFXPCCreateXPCObjectFromCFObject();
  v9 = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(v9, v8);

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)currentPolicyKeyForAccountID:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v5 = *MEMORY[0x277D03BD0];
  v6 = *MEMORY[0x277D039D0];
  v25[0] = *MEMORY[0x277D03C88];
  v25[1] = v6;
  v26[0] = v5;
  v26[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v8 = _CFXPCCreateXPCObjectFromCFObject();
  v9 = dispatch_semaphore_create(0);
  v10 = [(ESDConnection *)self _connectionForExchange];
  v11 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__ESDConnection_currentPolicyKeyForAccountID___block_invoke;
  handler[3] = &unk_278FCFC50;
  v18 = &v19;
  v12 = v9;
  v17 = v12;
  xpc_connection_send_message_with_reply(v10, v8, v11, handler);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __46__ESDConnection_currentPolicyKeyForAccountID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03D20]];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v13 = 136315394;
        v14 = "[ESDConnection currentPolicyKeyForAccountID:]_block_invoke";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_24A1B8000, v10, v11, "Server error in %s communicating with daemon: %@", &v13, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v12 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_nextStopMonitoringStatusToken
{
  os_unfair_lock_lock(&_nextStopMonitoringStatusToken_nextTokenLock);
  v2 = ++_nextStopMonitoringStatusToken_nextToken;
  os_unfair_lock_unlock(&_nextStopMonitoringStatusToken_nextTokenLock);
  return v2;
}

- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)a3 withToken:(unint64_t)a4 waitForReply:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277D03988];
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v11))
  {
    v12 = @"stop";
    if (v7)
    {
      v12 = @"start";
    }

    v25 = 138412290;
    v26 = v12;
    _os_log_impl(&dword_24A1B8000, v9, v11, "Requesting that DataAccess %@ monitoring agents.", &v25, 0xCu);
  }

  v13 = MEMORY[0x277D03E48];
  if (v7)
  {
    v13 = MEMORY[0x277D03E30];
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithObject:*v13 forKey:*MEMORY[0x277D03C88]];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D03A08]];

  if (v5)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D03A00]];
    v16 = _CFXPCCreateXPCObjectFromCFObject();
    v17 = [(ESDConnection *)self _connectionForExchange];
    v18 = xpc_connection_send_message_with_reply_sync(v17, v16);

    if (MEMORY[0x24C212D60](v18) == MEMORY[0x277D86468])
    {
      v19 = _CFXPCCreateCFObjectFromXPCObject();
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
      v21 = v20;
      if (!v20 || [v20 intValue] != 2)
      {
        v22 = DALoggingwithCategory();
        v23 = *(v10 + 3);
        if (os_log_type_enabled(v22, v23))
        {
          v25 = 136315394;
          v26 = "[ESDConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v27 = 2112;
          v28 = v21;
          _os_log_impl(&dword_24A1B8000, v22, v23, "Server error in %s communicating with daemon: %@", &v25, 0x16u);
        }
      }
    }
  }

  else
  {
    v16 = _CFXPCCreateXPCObjectFromCFObject();
    v18 = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(v18, v16);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  v3 = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(ESDConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:v3 waitForReply:0];
  return v3;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  v3 = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(ESDConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:v3 waitForReply:1];
  return v3;
}

- (BOOL)performServerContactsSearch:(id)a3 forAccountWithID:(id)a4
{
  v35[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  [(ESDConnection *)self _resetCertWarningsForAccountId:v7 andDataclasses:8 isUserRequested:0];
  if (!v7)
  {
    v13 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v20))
    {
      *buf = 0;
      v21 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_8:
      _os_log_impl(&dword_24A1B8000, v13, v20, v21, buf, 2u);
    }

LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v8 = [v6 searchString];
  v9 = v8 == 0;

  if (v9)
  {
    v13 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v20))
    {
      *buf = 0;
      v21 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x277D03CF0];
  v11 = *MEMORY[0x277D039D0];
  v34[0] = *MEMORY[0x277D03C88];
  v34[1] = v11;
  v35[0] = v10;
  v35[1] = v7;
  v34[2] = *MEMORY[0x277D03DC0];
  v12 = [v6 dictionaryRepresentation];
  v35[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  v15 = dispatch_semaphore_create(0);
  v16 = [(ESDConnection *)self _connectionForExchange];
  v17 = dispatch_get_global_queue(0, 0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke;
  v24[3] = &unk_278FCFCA0;
  v25 = v6;
  v26 = self;
  v28 = &v30;
  v18 = v15;
  v27 = v18;
  xpc_connection_send_message_with_reply(v16, v14, v17, v24);

  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v19 = *(v31 + 24);

LABEL_10:
  _Block_object_dispose(&v30, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03DB8]];
    [*(a1 + 32) setSearchID:v5];
    v6 = *(*(a1 + 40) + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke_2;
    block[3] = &unk_278FCFC78;
    v9 = *(a1 + 32);
    v10 = v5;
    v11 = *(a1 + 40);
    v7 = v5;
    dispatch_sync(v6, block);
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __62__ESDConnection_performServerContactsSearch_forAccountWithID___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = a1[4];
    v5 = a1[5];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_24A1B8000, v2, v3, "Setting search query %@ for key %@", &v8, 0x16u);
  }

  result = [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelServerContactsSearch:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 searchID];
  v6 = [v5 length];

  if (v6)
  {
    [v4 setState:2];
    [v4 setConsumer:0];
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 134217984;
      v28 = v4;
      _os_log_impl(&dword_24A1B8000, v7, v8, "Cancelling search task %p", buf, 0xCu);
    }

    v9 = [v4 searchID];
    v10 = *MEMORY[0x277D03AE0];
    v11 = *MEMORY[0x277D03DB8];
    v25[0] = *MEMORY[0x277D03C88];
    v25[1] = v11;
    v26[0] = v10;
    v26[1] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v13 = _CFXPCCreateXPCObjectFromCFObject();
    v14 = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(v14, v13);

    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v8))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_24A1B8000, v15, v8, "Removing search query for key %@", buf, 0xCu);
    }

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __44__ESDConnection_cancelServerContactsSearch___block_invoke;
    v22 = &unk_278FCFB18;
    v23 = self;
    v24 = v9;
    v17 = v9;
    dispatch_sync(muckingWithInFlightCollections, &v19);
    [v4 setSearchID:{&stru_285D5C2E8, v19, v20, v21, v22, v23}];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)processMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a6;
  [(ESDConnection *)self _resetCertWarningsForAccountId:v15 andDataclasses:5 isUserRequested:0];
  v17 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03D30], *MEMORY[0x277D03C88], v15, *MEMORY[0x277D039D0], v16, *MEMORY[0x277D03BA0], 0}];

  if (v12)
  {
    [v17 setObject:v12 forKeyedSubscript:*MEMORY[0x277D03C70]];
  }

  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:*MEMORY[0x277D03C78]];
  }

  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:*MEMORY[0x277D03C80]];
  }

  v18 = DALoggingwithCategory();
  v19 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 136315138;
    v27 = "[ESDConnection processMeetingRequests:deliveryIdsToClear:deliveryIdsToSoftClear:inFolderWithId:forAccountWithId:]";
    _os_log_impl(&dword_24A1B8000, v18, v19, "XPC call performed in: %s", buf, 0xCu);
  }

  v20 = _CFXPCCreateXPCObjectFromCFObject();
  v21 = [(ESDConnection *)self _connectionForExchange];
  v22 = xpc_connection_send_message_with_reply_sync(v21, v20);

  v23 = [(ESDConnection *)self _validateXPCReply:v22];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)asyncProcessMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  [(ESDConnection *)self _resetCertWarningsForAccountId:v14 andDataclasses:5 isUserRequested:0];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03A10], *MEMORY[0x277D03C88], v14, *MEMORY[0x277D039D0], v15, *MEMORY[0x277D03BA0], 0}];

  if (v19)
  {
    [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x277D03C70]];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:*MEMORY[0x277D03C78]];
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277D03C80]];
  }

  v17 = _CFXPCCreateXPCObjectFromCFObject();
  v18 = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(v18, v17);
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277CBEB38];
  v14 = a6;
  v15 = [v13 alloc];
  v16 = [v15 initWithObjectsAndKeys:{*MEMORY[0x277D03DF8], *MEMORY[0x277D03C88], v14, *MEMORY[0x277D039D0], 0}];

  if (v10)
  {
    [v16 setObject:v10 forKeyedSubscript:*MEMORY[0x277D03C90]];
  }

  if (v11)
  {
    [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x277D03C98]];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:*MEMORY[0x277D03CA0]];
  }

  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 136315138;
    v26 = "[ESDConnection setFolderIdsThatExternalClientsCareAboutAdded:deleted:foldersTag:forAccountID:]";
    _os_log_impl(&dword_24A1B8000, v17, v18, "XPC call performed in: %s", buf, 0xCu);
  }

  v19 = _CFXPCCreateXPCObjectFromCFObject();
  v20 = [(ESDConnection *)self _connectionForExchange];
  v21 = xpc_connection_send_message_with_reply_sync(v20, v19);

  v22 = [(ESDConnection *)self _validateXPCReply:v21];
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5 andAccountWithID:(id)a6
{
  v24[5] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = *MEMORY[0x277D03C88];
    v24[0] = *MEMORY[0x277D03D40];
    v10 = *MEMORY[0x277D03E38];
    v23[0] = v9;
    v23[1] = v10;
    v11 = MEMORY[0x277CCABB0];
    if (a3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 10;
    }

    v13 = a6;
    v14 = a4;
    v15 = [v11 numberWithInteger:v12];
    v16 = *MEMORY[0x277D03BA0];
    v24[1] = v15;
    v24[2] = v14;
    v17 = *MEMORY[0x277D03BB8];
    v23[2] = v16;
    v23[3] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    v23[4] = *MEMORY[0x277D039D0];
    v24[3] = v18;
    v24[4] = v13;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];

    v20 = _CFXPCCreateXPCObjectFromCFObject();
    v21 = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(v21, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 absoluteString];
  v5 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], v4, 0, @"&=", 0x8000100u);
  v6 = *MEMORY[0x277D03C30];
  v7 = *MEMORY[0x277D03E98];
  v12[0] = *MEMORY[0x277D03C88];
  v12[1] = v7;
  v13[0] = v6;
  v13[1] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = _CFXPCCreateXPCObjectFromCFObject();
  v10 = [(ESDConnection *)self _connectionForExchange];
  xpc_connection_send_message(v10, v9);

  if (v5)
  {
    CFRelease(v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendSynchronousXPCMessageWithParameters:(id)a3 handlerBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  v10 = [(ESDConnection *)self _connectionForExchange];
  v11 = dispatch_get_global_queue(0, 0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__ESDConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke;
  v14[3] = &unk_278FCFCC8;
  v15 = v8;
  v16 = v6;
  v12 = v8;
  v13 = v6;
  xpc_connection_send_message_with_reply(v10, v9, v11, v14);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

void __71__ESDConnection__sendSynchronousXPCMessageWithParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40) && MEMORY[0x24C212D60](v4) == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 accountID:(id)a4 queue:(id)a5 progressBlock:(id)a6 completionBlock:(id)a7
{
  v40[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_24A1B8000, v17, v18, "Requesting download of attachment UUID %@ for accountID %@", buf, 0x16u);
  }

  v19 = [[ESDownloadContext alloc] initWithAttachmentUUID:v12 accountID:v13 queue:v14 downloadProgressBlock:v15 completionBlock:v16];
  v20 = *MEMORY[0x277D03A40];
  v21 = *MEMORY[0x277D03A38];
  v39[0] = *MEMORY[0x277D03C88];
  v39[1] = v21;
  v40[0] = v20;
  v40[1] = v12;
  v39[2] = *MEMORY[0x277D039D0];
  v40[2] = v13;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v29[3] = &unk_278FCFD18;
  v34 = buf;
  v23 = v12;
  v30 = v23;
  v24 = v13;
  v31 = v24;
  v32 = self;
  v25 = v19;
  v33 = v25;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v22 handlerBlock:v29];
  v26 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A20]];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138412802;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_24A1B8000, v6, v7, "Download context %@ set up for downloading attachment UUID %@ on accountID %@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ESDConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_140;
  block[3] = &unk_278FCFCF0;
  block[4] = v11;
  v15 = *(a1 + 56);
  v13 = v15;
  v17 = v15;
  dispatch_sync(v12, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadsWithIDs:(id)a3 error:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
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
        block[2] = __47__ESDConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278FCFC28;
        block[5] = v11;
        block[6] = &v16;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        [v17[5] finishedWithError:v7];
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

uint64_t __47__ESDConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 72);

  return [v6 removeObjectForKey:v5];
}

- (void)cancelDownloadingAttachmentWithDownloadID:(id)a3 error:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277D03C88];
  v21[0] = *MEMORY[0x277D03AD0];
  v8 = *MEMORY[0x277D03B40];
  v20[0] = v7;
  v20[1] = v8;
  v9 = MEMORY[0x277CCAAB0];
  v10 = a4;
  v11 = [v9 archivedDataWithRootObject:v10];
  v20[2] = *MEMORY[0x277D03A20];
  v21[1] = v11;
  v21[2] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_24A1B8000, v13, v14, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v12 handlerBlock:0];
  v17 = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(ESDConnection *)self _cancelDownloadsWithIDs:v15 error:v10];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = DALoggingwithCategory();
  v17 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v16, v17))
  {
    *buf = 134218498;
    v34 = a3;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_24A1B8000, v16, v17, "Requesting share response %ld for calendar %@ for accountID %@", buf, 0x20u);
  }

  v18 = [[ESSharedCalendarContext alloc] initWithCalendarID:v12 accountID:v13 queue:v15 completionBlock:v14];
  [(ESSharedCalendarContext *)v18 setShouldSyncCalendar:a3 == 1];
  v19 = *MEMORY[0x277D039D0];
  v31[0] = *MEMORY[0x277D03C88];
  v31[1] = v19;
  v32[0] = *MEMORY[0x277D03DA8];
  v32[1] = v13;
  v31[2] = *MEMORY[0x277D03E18];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v31[3] = *MEMORY[0x277D03E20];
  v32[2] = v20;
  v32[3] = v12;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v26[3] = &unk_278FCFD40;
  v27 = v12;
  v28 = v13;
  v29 = self;
  v30 = v18;
  v22 = v18;
  v23 = v13;
  v24 = v12;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v21 handlerBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    *buf = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_24A1B8000, v4, v5, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v9 = a1[6];
  v8 = a1[7];
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__ESDConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_144;
  block[3] = &unk_278FCFC78;
  block[4] = v9;
  v14 = v3;
  v15 = v8;
  v11 = v3;
  dispatch_sync(v10, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412546;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    _os_log_impl(&dword_24A1B8000, v14, v15, "Reporting calendar %@ for accountID %@ as junk", buf, 0x16u);
  }

  v16 = [[ESSharedCalendarContext alloc] initWithCalendarID:v10 accountID:v11 queue:v13 completionBlock:v12];
  [(ESSharedCalendarContext *)v16 setShouldSyncCalendar:0];
  v17 = *MEMORY[0x277D03D48];
  v18 = *MEMORY[0x277D039D0];
  v29[0] = *MEMORY[0x277D03C88];
  v29[1] = v18;
  v30[0] = v17;
  v30[1] = v11;
  v29[2] = *MEMORY[0x277D03E20];
  v30[2] = v10;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
  v24[3] = &unk_278FCFD40;
  v25 = v10;
  v26 = v11;
  v27 = self;
  v28 = v16;
  v20 = v16;
  v21 = v11;
  v22 = v10;
  [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v19 handlerBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03E10]];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = a1[4];
    v7 = a1[5];
    *buf = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_24A1B8000, v4, v5, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
  }

  v9 = a1[6];
  v8 = a1[7];
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ESDConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_145;
  block[3] = &unk_278FCFC78;
  block[4] = v9;
  v14 = v3;
  v15 = v8;
  v11 = v3;
  dispatch_sync(v10, block);

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAAB0];
  v8 = a4;
  v9 = [v7 archivedDataWithRootObject:v6];
  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D03D28], *MEMORY[0x277D03C88], v8, *MEMORY[0x277D039D0], v9, *MEMORY[0x277D03B90], 0}];

  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 136315138;
    v27 = "[ESDConnection processFolderChange:forAccountWithID:]";
    _os_log_impl(&dword_24A1B8000, v11, v12, "XPC call performed in: %s", buf, 0xCu);
  }

  v13 = _CFXPCCreateXPCObjectFromCFObject();
  v14 = [(ESDConnection *)self _connectionForExchange];
  v15 = xpc_connection_send_message_with_reply_sync(v14, v13);

  if (MEMORY[0x24C212D60](v15) == MEMORY[0x277D86468])
  {
    v16 = _CFXPCCreateCFObjectFromXPCObject();
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D03E88]];
    v18 = [v17 unsignedIntegerValue];

    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ESDConnection_processFolderChange_forAccountWithID___block_invoke;
    block[3] = &unk_278FCFD68;
    v24 = self;
    v25 = v18;
    v23 = v6;
    dispatch_sync(muckingWithInFlightCollections, block);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

void __54__ESDConnection_processFolderChange_forAccountWithID___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = a1[4];
    v5 = a1[6];
    v10 = 138412546;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_24A1B8000, v2, v3, "Setting folder change %@ for key %lu", &v10, 0x16u);
  }

  v6 = a1[4];
  v7 = *(a1[5] + 64);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v9 = *MEMORY[0x277D85DE8];
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
  v22 = *MEMORY[0x277D03C88];
  v23[0] = *MEMORY[0x277D03BD8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  v6 = [(ESDConnection *)self _connectionForExchange];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__ESDConnection_statusReports__block_invoke;
  handler[3] = &unk_278FCFC50;
  v15 = &v16;
  v8 = v5;
  v14 = v8;
  xpc_connection_send_message_with_reply(v6, v4, v7, handler);

  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __30__ESDConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E40]];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03E38]];
    v9 = v8;
    if (!v8 || [v8 intValue] != 2)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        v13 = 136315394;
        v14 = "[ESDConnection statusReports]_block_invoke";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_24A1B8000, v10, v11, "Server error in %s communicating with daemon: %@", &v13, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reallyRegisterForInterrogation
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(ESDConnection *)self registered])
  {
    [(ESDConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v3, v4))
    {
      *v9 = 0;
      _os_log_impl(&dword_24A1B8000, v3, v4, "Sending message: kDAERegisterForInterrogation", v9, 2u);
    }

    v10 = *MEMORY[0x277D03C88];
    v11[0] = *MEMORY[0x277D03D38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    v7 = [(ESDConnection *)self _connectionForExchange];
    xpc_connection_send_message(v7, v6);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForInterrogationWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_statusReportBlock != v4)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = 0;
    }

    v7 = MEMORY[0x24C212B50](v6);
    statusReportBlock = self->_statusReportBlock;
    self->_statusReportBlock = v7;
  }

  return 1;
}

- (void)fillOutCurrentEASTimeZoneInfo
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D03C88];
  v13[0] = *MEMORY[0x277D03B88];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = dispatch_semaphore_create(0);
  v6 = [(ESDConnection *)self _connectionForExchange];
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ESDConnection_fillOutCurrentEASTimeZoneInfo__block_invoke;
  v10[3] = &unk_278FCFD90;
  v11 = v5;
  v8 = v5;
  xpc_connection_send_message_with_reply(v6, v4, v7, v10);

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)activeSyncDeviceIdentifier
{
  v34[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v3, v5, "Sending get activesync device identifier request", buf, 2u);
  }

  v33 = *MEMORY[0x277D03C88];
  v34[0] = *MEMORY[0x277D03BC8];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = dispatch_semaphore_create(0);
  v9 = [(ESDConnection *)self _connectionForExchange];
  v10 = dispatch_get_global_queue(2, 0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__ESDConnection_activeSyncDeviceIdentifier__block_invoke;
  v22[3] = &unk_278FCFC50;
  v24 = &v25;
  v11 = v8;
  v23 = v11;
  xpc_connection_send_message_with_reply(v9, v7, v10, v22);

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  if (v26[5])
  {
    v12 = DALoggingwithCategory();
    if (!os_log_type_enabled(v12, v5))
    {
      goto LABEL_9;
    }

    v13 = v26[5];
    *buf = 138412290;
    v32 = v13;
    v14 = "Received activesync device identifier: %@";
    v15 = v12;
    v16 = v5;
    v17 = 12;
  }

  else
  {
    v12 = DALoggingwithCategory();
    v18 = *(v4 + 3);
    if (!os_log_type_enabled(v12, v18))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Error getting activesync device identifier";
    v15 = v12;
    v16 = v18;
    v17 = 2;
  }

  _os_log_impl(&dword_24A1B8000, v15, v16, v14, buf, v17);
LABEL_9:

  v19 = v26[5];
  _Block_object_dispose(&v25, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __43__ESDConnection_activeSyncDeviceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D039F0]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03CC8]];
    [*(a1 + 32) setRequestID:v5];
    v6 = *(*(a1 + 40) + 24);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2;
    v8[3] = &unk_278FCFDB8;
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

uint64_t __71__ESDConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v3))
  {
    if (*(a1 + 56))
    {
      v4 = @"update";
    }

    else
    {
      v4 = @"retrieve";
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_24A1B8000, v2, v3, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v9, 0x20u);
  }

  result = [*(*(a1 + 48) + 104) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)isOofSettingsSupportedForAccountWithID:(id)a3 completionBlock:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = *MEMORY[0x277D03C48];
    v9 = *MEMORY[0x277D039D0];
    v20[0] = *MEMORY[0x277D03C88];
    v20[1] = v9;
    v21[0] = v8;
    v21[1] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    v12 = [(ESDConnection *)self _connectionForExchange];
    v13 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __72__ESDConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke;
    handler[3] = &unk_278FCFE08;
    v18 = v7;
    xpc_connection_send_message_with_reply(v12, v11, v13, handler);
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v14, v15, "nil accountID passed to isOofSettingsSupportedForAccountWithID. Cannot continue.", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __72__ESDConnection_isOofSettingsSupportedForAccountWithID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x24C212D60]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D03C50]];
    v6 = v5;
    if (v5)
    {
      [v5 BOOLValue];
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        *v9 = 0;
        _os_log_impl(&dword_24A1B8000, v7, v8, "Error getting activesync device identifier", v9, 2u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (id)requestCalendarAvailabilityWithAccountID:(id)a3 startDate:(id)a4 endDate:(id)a5 ignoredEventID:(id)a6 addresses:(id)a7 resultsBlock:(id)a8 completionBlock:(id)a9
{
  v73 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v48 = a6;
  v18 = a7;
  v47 = a8;
  v19 = a9;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  v20 = v15;
  if (!v15)
  {
    v21 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, *(MEMORY[0x277D03988] + 4)))
    {
      *buf = 138412290;
      v64 = 0;
      v23 = "Invalid 'accountID' provided: [%@].";
      v24 = v21;
      v25 = v27;
      v26 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
    goto LABEL_11;
  }

  if (!v16 || !v17 || [v16 compare:v17] == 1)
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v21, v22))
    {
      *buf = 138412546;
      v64 = v16;
      v65 = 2112;
      v66 = v17;
      v23 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v24 = v21;
      v25 = v22;
      v26 = 22;
LABEL_9:
      _os_log_impl(&dword_24A1B8000, v24, v25, v23, buf, v26);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v18 && [v18 count])
  {
    v41 = DALoggingwithCategory();
    v42 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v41, v42))
    {
      *buf = 138413314;
      v64 = v20;
      v65 = 2112;
      v66 = v16;
      v67 = 2112;
      v68 = v17;
      v69 = 2112;
      v70 = v48;
      v71 = 2112;
      v72 = v18;
      _os_log_impl(&dword_24A1B8000, v41, v42, "Preparing calendar availability request.  accountID: [%@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v43 setObject:*MEMORY[0x277D03D68] forKey:*MEMORY[0x277D03C88]];
    [v43 setObject:v20 forKey:*MEMORY[0x277D039D0]];
    [v43 setObject:v16 forKey:*MEMORY[0x277D03E28]];
    [v43 setObject:v17 forKey:*MEMORY[0x277D03B38]];
    [v43 setObject:v18 forKey:*MEMORY[0x277D039F8]];
    if (v48)
    {
      [v43 setObject:v48 forKey:*MEMORY[0x277D03C38]];
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_152;
    v49[3] = &unk_278FCFE58;
    v53[1] = &v57;
    v52 = v47;
    v53[0] = v19;
    v34 = v43;
    v50 = v34;
    v51 = self;
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v34 handlerBlock:v49];

    v36 = v19;
    v46 = v16;
    v31 = v17;
    v32 = v20;
    v33 = v18;
    v28 = 0;
    v35 = &v52;
    v37 = v53;
    goto LABEL_15;
  }

  v44 = DALoggingwithCategory();
  v45 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v44, v45))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v44, v45, "No 'addresses' provided.", buf, 2u);
  }

  v28 = 0;
LABEL_11:
  v29 = DALoggingwithCategory();
  v30 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v29, v30))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v29, v30, "Will not issue calendar availability request.", buf, 2u);
  }

  if (v19)
  {
    v46 = v16;
    v31 = v17;
    v32 = v20;
    v33 = v18;
    v34 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278FCFE30;
    v35 = &v56;
    v36 = v19;
    v56 = v19;
    v37 = &v55;
    v28 = v28;
    v55 = v28;
    dispatch_async(v34, block);
LABEL_15:

    v18 = v33;
    v16 = v46;
    v20 = v32;
    v17 = v31;
    v19 = v36;
  }

  v38 = v58[5];

  _Block_object_dispose(&v57, 8);
  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

void __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_152(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[ESECalendarAvailabilityContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(*(a1[8] + 8) + 40);
    v10 = a1[4];
    *buf = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_24A1B8000, v7, v8, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v11 = a1[5];
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__ESDConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_154;
  block[3] = &unk_278FCFCF0;
  v13 = a1[8];
  v17 = v6;
  v18 = v13;
  block[4] = v11;
  v14 = v6;
  dispatch_sync(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D03AB8];
    v7 = *MEMORY[0x277D03A58];
    v22[0] = *MEMORY[0x277D03C88];
    v22[1] = v7;
    v23[0] = v6;
    v23[1] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:0];
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ESDConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278FCFC28;
    v15 = buf;
    block[4] = self;
    v14 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [*(v17 + 5) finishedWithError:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v8, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v8, v11, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __57__ESDConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarAvailabilityRequestReturnedResults:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A68]];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v24 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v24];
  v15 = v24;

  if (!v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v16, v17))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to decode results: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ESDConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v19 = v6;
  v22 = v19;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __61__ESDConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_calendarAvailabilityRequestFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A58]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ESDConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __54__ESDConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (id)performCalendarDirectorySearchWithAccountID:(id)a3 terms:(id)a4 recordTypes:(id)a5 resultLimit:(unint64_t)a6 resultsBlock:(id)a7 completionBlock:(id)a8
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  if (v14)
  {
    if (v15 && [v15 count])
    {
      if (v16 && [v16 count])
      {
        v19 = DALoggingwithCategory();
        v20 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138413058;
          v54 = v14;
          v55 = 2112;
          v56 = v16;
          v57 = 2048;
          v58 = a6;
          v59 = 2112;
          v60 = v15;
          _os_log_impl(&dword_24A1B8000, v19, v20, "Preparing calendar directory search.  accountID: [%@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
        }

        v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v21 setObject:*MEMORY[0x277D03CF8] forKey:*MEMORY[0x277D03C88]];
        [v21 setObject:v14 forKey:*MEMORY[0x277D039D0]];
        v22 = [v15 allObjects];
        [v21 setObject:v22 forKey:*MEMORY[0x277D03AA8]];

        v23 = [v16 allObjects];
        [v21 setObject:v23 forKey:*MEMORY[0x277D03A88]];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
        [v21 setObject:v24 forKey:*MEMORY[0x277D03A90]];

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_156;
        v39[3] = &unk_278FCFE58;
        v43[1] = &v47;
        v42 = v17;
        v43[0] = v18;
        v25 = v21;
        v40 = v25;
        v41 = self;
        [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v25 handlerBlock:v39];

        v26 = 0;
        v27 = &v42;
        v28 = v43;
        goto LABEL_22;
      }

      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 7);
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v31 = "No 'recordTypes' provided.";
    }

    else
    {
      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 7);
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_17:

        v26 = 0;
        goto LABEL_18;
      }

      *buf = 0;
      v31 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_24A1B8000, v29, v30, v31, buf, 2u);
    goto LABEL_17;
  }

  v32 = DALoggingwithCategory();
  v33 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v32, v33))
  {
    *buf = 138412290;
    v54 = 0;
    _os_log_impl(&dword_24A1B8000, v32, v33, "Invalid 'accountID' provided: [%@].", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
LABEL_18:
  v34 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v34, v35))
  {
    *buf = 0;
    _os_log_impl(&dword_24A1B8000, v34, v35, "Will not issue calendar directory search.", buf, 2u);
  }

  if (v18)
  {
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_278FCFE30;
    v27 = &v46;
    v46 = v18;
    v28 = &v45;
    v26 = v26;
    v45 = v26;
    dispatch_async(v25, block);
LABEL_22:
  }

  v36 = v48[5];

  _Block_object_dispose(&v47, 8);
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_156(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [[ESECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[6] completionBlock:a1[7]];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(*(a1[8] + 8) + 40);
    v10 = a1[4];
    *buf = 138412802;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_24A1B8000, v7, v8, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
  }

  v11 = a1[5];
  v12 = *(v11 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__ESDConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_158;
  block[3] = &unk_278FCFCF0;
  v13 = a1[8];
  v17 = v6;
  v18 = v13;
  block[4] = v11;
  v14 = v6;
  dispatch_sync(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarDirectorySearchWithID:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D03AC0];
    v7 = *MEMORY[0x277D03A80];
    v27[0] = *MEMORY[0x277D03C88];
    v27[1] = v7;
    v28[0] = v6;
    v28[1] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v8 handlerBlock:0];
    *v19 = 0;
    v20 = v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__ESDConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278FCFC28;
    v18 = v19;
    block[4] = self;
    v10 = v5;
    v17 = v10;
    dispatch_sync(muckingWithInFlightCollections, block);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [*(v20 + 5) finishedWithError:v11 exceededResultLimit:0];
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_24A1B8000, v12, v13, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
    }

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v8 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v8, v14))
    {
      *v19 = 0;
      _os_log_impl(&dword_24A1B8000, v8, v14, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v19, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ESDConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)_calendarDirectorySearchReturnedResults:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A98]];
  v8 = MEMORY[0x277CCAAC8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v29 = 0;
  v14 = [v8 unarchivedObjectOfClasses:v13 fromData:v7 error:&v29];
  v15 = v29;

  if (!v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v16, v17))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_24A1B8000, v16, v17, "Unable to decode results: %@", &buf, 0xCu);
    }
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
  block[2] = __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278FCFC28;
  p_buf = &buf;
  block[4] = self;
  v19 = v6;
  v27 = v19;
  dispatch_sync(muckingWithInFlightCollections, block);
  v20 = [v14 count];
  v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v20];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v24[3] = &unk_278FCFE80;
  v22 = v21;
  v25 = v22;
  [v14 enumerateKeysAndObjectsUsingBlock:v24];
  [*(*(&buf + 1) + 40) resultsReturned:v22];

  _Block_object_dispose(&buf, 8);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __57__ESDConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

- (void)_calendarDirectorySearchFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A80]];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03B40]];
  v8 = [(ESDConnection *)self decodedErrorFromData:v7];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03A70]];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 BOOLValue];
  }

  else
  {
    v11 = 0;
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
  block[2] = __50__ESDConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278FCFC28;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:v11];

  _Block_object_dispose(&v17, 8);
}

uint64_t __50__ESDConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)externalIdentificationForAccountID:(id)a3 resultsBlock:(id)a4
{
  v42[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (v7)
  {
    if (v6)
    {
      v8 = *MEMORY[0x277D03D58];
      v9 = *MEMORY[0x277D039D0];
      v41[0] = *MEMORY[0x277D03C88];
      v41[1] = v9;
      v42[0] = v8;
      v42[1] = v6;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __65__ESDConnection_externalIdentificationForAccountID_resultsBlock___block_invoke;
      v17[3] = &unk_278FCFEA8;
      v17[4] = &v35;
      v17[5] = &v29;
      v17[6] = &v25;
      v17[7] = &v19;
      [(ESDConnection *)self _sendSynchronousXPCMessageWithParameters:v10 handlerBlock:v17];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_24A1B8000, v13, v14, "No accountID provided.", buf, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:93 userInfo:0];
      v10 = v36[5];
      v36[5] = v15;
    }

    v7[2](v7, v36[5], v30[5], v26[3], v20[5]);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 0;
      _os_log_impl(&dword_24A1B8000, v11, v12, "No results block provided.", buf, 2u);
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __65__ESDConnection_externalIdentificationForAccountID_resultsBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 count])
  {
    v3 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039E0]];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039E8]];
    *(*(*(a1 + 48) + 8) + 24) = [v6 integerValue];

    v7 = [v11 objectForKeyedSubscript:*MEMORY[0x277D039D8]];
    v8 = 56;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:28 userInfo:0];
    v8 = 32;
  }

  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

- (ESDConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v26.receiver = self;
  v26.super_class = ESDConnection;
  v2 = [(ESDConnection *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.muckingWithConn", 0);
    muckingWithConn = v2->_muckingWithConn;
    v2->_muckingWithConn = v3;

    v5 = dispatch_queue_create("com.apple.dataaccess.muckingWithInFlightCollections", 0);
    muckingWithInFlightCollections = v2->_muckingWithInFlightCollections;
    v2->_muckingWithInFlightCollections = v5;

    v7 = objc_opt_new();
    accountIdsWithAlreadyResetCerts = v2->_accountIdsWithAlreadyResetCerts;
    v2->_accountIdsWithAlreadyResetCerts = v7;

    v9 = objc_opt_new();
    accountIdsWithAlreadyResetThrottleTimers = v2->_accountIdsWithAlreadyResetThrottleTimers;
    v2->_accountIdsWithAlreadyResetThrottleTimers = v9;

    v11 = objc_opt_new();
    inFlightSearchQueries = v2->_inFlightSearchQueries;
    v2->_inFlightSearchQueries = v11;

    v13 = objc_opt_new();
    inFlightFolderChanges = v2->_inFlightFolderChanges;
    v2->_inFlightFolderChanges = v13;

    v15 = objc_opt_new();
    inFlightAttachmentDownloads = v2->_inFlightAttachmentDownloads;
    v2->_inFlightAttachmentDownloads = v15;

    v17 = objc_opt_new();
    inFlightCalendarAvailabilityRequests = v2->_inFlightCalendarAvailabilityRequests;
    v2->_inFlightCalendarAvailabilityRequests = v17;

    v19 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v19;

    v21 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v21;

    v23 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v23;

    [(ESDConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(ESDConnection *)self _tearDownInFlightObjects];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ESDConnection;
  [(ESDConnection *)&v4 dealloc];
}

- (void)_resetCertWarningsForAccountId:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v19[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  if (v8)
  {
    v10 = [(NSMutableSet *)v9->_accountIdsWithAlreadyResetCerts containsObject:v8]^ 1;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v9);

  if (v8 && v10 | v5)
  {
    v11 = *MEMORY[0x277D039D0];
    v18[0] = *MEMORY[0x277D03C88];
    v18[1] = v11;
    v19[0] = *MEMORY[0x277D03D98];
    v19[1] = v8;
    v18[2] = *MEMORY[0x277D03B08];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    v14 = _CFXPCCreateXPCObjectFromCFObject();
    v15 = [(ESDConnection *)v9 _connectionForExchange];
    xpc_connection_send_message(v15, v14);

    v16 = v9;
    objc_sync_enter(v16);
    [v16[4] addObject:v8];
    objc_sync_exit(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_resetThrottleTimersForAccountId:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    Name = sel_getName(a2);
    accountIdsWithAlreadyResetThrottleTimers = self->_accountIdsWithAlreadyResetThrottleTimers;
    *buf = 136315394;
    v22 = Name;
    v23 = 2112;
    v24 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_24A1B8000, v6, v7, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %@", buf, 0x16u);
  }

  v10 = self;
  objc_sync_enter(v10);
  if (!v5)
  {
    objc_sync_exit(v10);
    v14 = v10;
    goto LABEL_7;
  }

  v11 = [(NSMutableSet *)v10->_accountIdsWithAlreadyResetThrottleTimers containsObject:v5];
  objc_sync_exit(v10);

  if ((v11 & 1) == 0)
  {
    v12 = *MEMORY[0x277D03DA0];
    v13 = *MEMORY[0x277D039D0];
    v19[0] = *MEMORY[0x277D03C88];
    v19[1] = v13;
    v20[0] = v12;
    v20[1] = v5;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v15 = _CFXPCCreateXPCObjectFromCFObject();
    v16 = [(ESDConnection *)v10 _connectionForExchange];
    xpc_connection_send_message(v16, v15);

    v17 = v10;
    objc_sync_enter(v17);
    [(NSMutableSet *)v10->_accountIdsWithAlreadyResetThrottleTimers addObject:v5];
    objc_sync_exit(v17);

LABEL_7:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)resetTimersAndWarnings
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A1B8000, v3, v4, "Resetting shouldResetCertWarnings and throttle timers", v6, 2u);
  }

  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_accountIdsWithAlreadyResetCerts removeAllObjects];
  [(NSMutableSet *)v5->_accountIdsWithAlreadyResetThrottleTimers removeAllObjects];
  objc_sync_exit(v5);
}

- (void)_registerForAppResumedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_resetTimersAndWarnings name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_dispatchMessage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D03C88]];
  if ([v6 isEqualToString:*MEMORY[0x277D03BC0]])
  {
    [(ESDConnection *)self _foldersUpdated:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03D18]])
  {
    [(ESDConnection *)self _policyKeyChanged:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03C60]])
  {
    [(ESDConnection *)self _logDataAccessStatus:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03DD0]])
  {
    [(ESDConnection *)self _serverContactsSearchQueryFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03B98]])
  {
    [(ESDConnection *)self _folderChangeFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03BE0]])
  {
    [(ESDConnection *)self _getStatusReportsFromClient:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A28]])
  {
    [(ESDConnection *)self _downloadProgress:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A18]])
  {
    [(ESDConnection *)self _downloadFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03AB0]])
  {
    [(ESDConnection *)self _shareResponseFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03CD8]])
  {
    [(ESDConnection *)self _oofSettingsRequestsFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A60]])
  {
    [(ESDConnection *)self _calendarAvailabilityRequestReturnedResults:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A50]])
  {
    [(ESDConnection *)self _calendarAvailabilityRequestFinished:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03AA0]])
  {
    [(ESDConnection *)self _calendarDirectorySearchReturnedResults:v4];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277D03A78]])
  {
    [(ESDConnection *)self _calendarDirectorySearchFinished:v4];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_24A1B8000, v7, v8, "unknown request sent to connection.", &v11, 2u);
    }

    v9 = DALoggingwithCategory();
    if (os_log_type_enabled(v9, v8))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_24A1B8000, v9, v8, "request: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end