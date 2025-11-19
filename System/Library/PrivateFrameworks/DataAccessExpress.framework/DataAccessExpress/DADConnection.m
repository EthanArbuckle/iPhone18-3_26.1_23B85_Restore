@interface DADConnection
+ (id)_dictionarySuitableForLogging:(id)a3;
+ (id)sharedConnection;
+ (unint64_t)_nextStopMonitoringStatusToken;
+ (void)_logRequestID:(id)a3 forRequestAttributes:(id)a4 associatedContext:(id)a5;
- (BOOL)_checkInvalidIdExistsInXPCRely:(id)a3;
- (BOOL)_validateXPCReply:(id)a3;
- (BOOL)performServerContactsSearch:(id)a3 forAccountWithID:(id)a4;
- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4;
- (BOOL)processMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7;
- (BOOL)registerForInterrogationWithBlock:(id)a3;
- (BOOL)requestPolicyUpdateForAccountID:(id)a3;
- (BOOL)resumeWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (BOOL)retrieveOofSettingsRequest:(id)a3 forAccountWithID:(id)a4;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6;
- (BOOL)stopWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (BOOL)suspendWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4;
- (BOOL)updateOofSettingsRequest:(id)a3 forAccountWithID:(id)a4;
- (DADConnection)init;
- (id)_connection;
- (id)_createReplyToRequest:(id)a3 withProperties:(id)a4;
- (id)_init;
- (id)activeSyncDeviceIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 accountID:(id)a4 queue:(id)a5 progressBlock:(id)a6 completionBlock:(id)a7;
- (id)currentPolicyKeyForAccountID:(id)a3;
- (id)decodedErrorFromData:(id)a3;
- (id)downloadSubscribedCalendarWithURL:(id)a3 queue:(id)a4 delegate:(id)a5;
- (id)performCalendarDirectorySearchWithAccountID:(id)a3 terms:(id)a4 recordTypes:(id)a5 resultLimit:(unint64_t)a6 resultsBlock:(id)a7 completionBlock:(id)a8;
- (id)requestCalendarAvailabilityWithAccountID:(id)a3 startDate:(id)a4 endDate:(id)a5 ignoredEventID:(id)a6 addresses:(id)a7 resultsBlock:(id)a8 completionBlock:(id)a9;
- (id)requestGrantedDelegatesListForAccountID:(id)a3 resultsBlock:(id)a4;
- (id)statusReports;
- (id)updateGrantedDelegateForAccountID:(id)a3 grantedDelegate:(id)a4 action:(int64_t)a5 resultsBlock:(id)a6;
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
- (void)_downloadSubscribedCalendarFinished:(id)a3;
- (void)_downloadSubscribedCalendarProgress:(id)a3;
- (void)_downloadSubscribedCalendarRequiresPassword:(id)a3;
- (void)_folderChangeFinished:(id)a3;
- (void)_foldersUpdated:(id)a3;
- (void)_getStatusReportsFromClient:(id)a3;
- (void)_grantedDelegatesListRequestFinished:(id)a3;
- (void)_groupExpansionFinished:(id)a3;
- (void)_holidayCalendarFetchFinished:(id)a3;
- (void)_holidayCalendarFetchReturnedResults:(id)a3;
- (void)_initializeConnection;
- (void)_initializeConnectionWithXPCEndpoint:(id)a3;
- (void)_initializeXPCConnection:(id)a3;
- (void)_officeHoursRequestFinished:(id)a3;
- (void)_oofSettingsRequestsFinished:(id)a3;
- (void)_policyKeyChanged:(id)a3;
- (void)_registerForAppResumedNotification;
- (void)_requestDaemonChangeAgentMonitoringStatus:(BOOL)a3 withToken:(unint64_t)a4 waitForReply:(BOOL)a5;
- (void)_resetCertWarningsForAccountId:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (void)_resetThrottleTimersForAccountId:(id)a3;
- (void)_sendXPCMessageSynchronous:(BOOL)a3 withParameters:(id)a4 handlerBlock:(id)a5;
- (void)_serverContactsSearchQueryFinished:(id)a3;
- (void)_serverDiedWithReason:(id)a3;
- (void)_shareResponseFinished:(id)a3;
- (void)_subscriptionCalendarJunkCheckFinished:(id)a3;
- (void)_tearDownInFlightObjects;
- (void)_updateGrantedDelegatePermissionRequestFinished:(id)a3;
- (void)addExchangeDelegateWithName:(id)a3 emailAddress:(id)a4 toAccountWithID:(id)a5 completion:(id)a6;
- (void)asyncProcessMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7;
- (void)beginCalDAVServerSimulationWithHostname:(id)a3;
- (void)cancelCalendarAvailabilityRequestWithID:(id)a3;
- (void)cancelCalendarDirectorySearchWithID:(id)a3;
- (void)cancelDownloadingAttachmentWithDownloadID:(id)a3 error:(id)a4;
- (void)cancelDownloadingSubscriptionCalendarWithDownloadID:(id)a3;
- (void)cancelGrantedDelegatesListRequestWithID:(id)a3;
- (void)cancelServerContactsSearch:(id)a3;
- (void)checkSubscriptionCalendarIsJunk:(id)a3 queue:(id)a4 completionBlock:(id)a5;
- (void)dealloc;
- (void)endCalDAVServerSimulationWithHostname:(id)a3;
- (void)fetchAvailableHolidayCalendarsWithResultsBlock:(id)a3 completionBlock:(id)a4 queue:(id)a5;
- (void)fetchOfficeHoursForAccountWithID:(id)a3 queue:(id)a4 completionBlock:(id)a5;
- (void)fillOutCurrentEASTimeZoneInfo;
- (void)handleAccountChange:(id)a3 callback:(id)a4;
- (void)handleURL:(id)a3;
- (void)isOofSettingsSupportedForAccountWithID:(id)a3 completionBlock:(id)a4;
- (void)performGroupExpansionWithAccountID:(id)a3 principalPath:(id)a4 completionBlock:(id)a5;
- (void)reallyRegisterForInterrogation;
- (void)removeExchangeDelegateWithSourceID:(id)a3 fromParentAccountWithID:(id)a4 completion:(id)a5;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)reportSubscriptionCalendarAsJunk:(id)a3;
- (void)resetTimersAndWarnings;
- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7;
- (void)setOfficeHours:(id)a3 forAccountWithID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)validateCandidateSubscriptionURLWithICloud:(id)a3 queue:(id)a4 completionBlock:(id)a5;
@end

@implementation DADConnection

- (void)_tearDownInFlightObjects
{
  v267 = *MEMORY[0x277D85DE8];
  v248 = 0;
  v249 = &v248;
  v250 = 0x3032000000;
  v251 = __Block_byref_object_copy_;
  v252 = __Block_byref_object_dispose_;
  v253 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke;
  block[3] = &unk_27851FF50;
  block[5] = &v248;
  v101 = self;
  block[4] = self;
  dispatch_sync(muckingWithInFlightCollections, block);
  v4 = v249[5];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
  [v4 makeObjectsPerformSelector:sel_sendFinishedToConsumerWithError_ withObject:v5];

  v241 = 0;
  v242 = &v241;
  v243 = 0x3032000000;
  v244 = __Block_byref_object_copy_;
  v245 = __Block_byref_object_dispose_;
  v246 = 0;
  v6 = v101->_muckingWithInFlightCollections;
  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_181;
  v240[3] = &unk_27851FF50;
  v240[5] = &v241;
  v240[4] = v101;
  dispatch_sync(v6, v240);
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v7 = v242[5];
  v8 = [v7 countByEnumeratingWithState:&v236 objects:v266 count:16];
  if (v8)
  {
    v9 = *v237;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v237 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v236 + 1) + 8 * i);
        v12 = [v11 consumer];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [v12 folderChange:v11 finishedWithStatus:0 error:v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v236 objects:v266 count:16];
    }

    while (v8);
  }

  v230 = 0;
  v231 = &v230;
  v232 = 0x3032000000;
  v233 = __Block_byref_object_copy_;
  v234 = __Block_byref_object_dispose_;
  v235 = 0;
  v14 = v101->_muckingWithInFlightCollections;
  v229[0] = MEMORY[0x277D85DD0];
  v229[1] = 3221225472;
  v229[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_182;
  v229[3] = &unk_27851FF50;
  v229[5] = &v230;
  v229[4] = v101;
  dispatch_sync(v14, v229);
  v228 = 0u;
  v227 = 0u;
  v226 = 0u;
  v225 = 0u;
  v15 = v231[5];
  v16 = [v15 countByEnumeratingWithState:&v225 objects:v265 count:16];
  if (v16)
  {
    v17 = *v226;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v226 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v225 + 1) + 8 * j);
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:0 userInfo:0];
        [v19 finishedWithError:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v225 objects:v265 count:16];
    }

    while (v16);
  }

  v219 = 0;
  v220 = &v219;
  v221 = 0x3032000000;
  v222 = __Block_byref_object_copy_;
  v223 = __Block_byref_object_dispose_;
  v224 = 0;
  v21 = v101->_muckingWithInFlightCollections;
  v218[0] = MEMORY[0x277D85DD0];
  v218[1] = 3221225472;
  v218[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_183;
  v218[3] = &unk_27851FF50;
  v218[5] = &v219;
  v218[4] = v101;
  dispatch_sync(v21, v218);
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v22 = v220[5];
  v23 = [v22 countByEnumeratingWithState:&v214 objects:v264 count:16];
  if (v23)
  {
    v24 = *v215;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v215 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v214 + 1) + 8 * k);
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v26 finishedWithError:v27];
      }

      v23 = [v22 countByEnumeratingWithState:&v214 objects:v264 count:16];
    }

    while (v23);
  }

  v208 = 0;
  v209 = &v208;
  v210 = 0x3032000000;
  v211 = __Block_byref_object_copy_;
  v212 = __Block_byref_object_dispose_;
  v213 = 0;
  v28 = v101->_muckingWithInFlightCollections;
  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_184;
  v207[3] = &unk_27851FF50;
  v207[5] = &v208;
  v207[4] = v101;
  dispatch_sync(v28, v207);
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v29 = v209[5];
  v30 = [v29 countByEnumeratingWithState:&v203 objects:v263 count:16];
  if (v30)
  {
    v31 = *v204;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v204 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v203 + 1) + 8 * m);
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v33 finishedWithResults:0 error:v34];
      }

      v30 = [v29 countByEnumeratingWithState:&v203 objects:v263 count:16];
    }

    while (v30);
  }

  v197 = 0;
  v198 = &v197;
  v199 = 0x3032000000;
  v200 = __Block_byref_object_copy_;
  v201 = __Block_byref_object_dispose_;
  v202 = 0;
  v35 = v101->_muckingWithInFlightCollections;
  v196[0] = MEMORY[0x277D85DD0];
  v196[1] = 3221225472;
  v196[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_185;
  v196[3] = &unk_27851FF50;
  v196[5] = &v197;
  v196[4] = v101;
  dispatch_sync(v35, v196);
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v36 = v198[5];
  v37 = [v36 countByEnumeratingWithState:&v192 objects:v262 count:16];
  if (v37)
  {
    v38 = *v193;
    do
    {
      for (n = 0; n != v37; ++n)
      {
        if (*v193 != v38)
        {
          objc_enumerationMutation(v36);
        }

        v40 = *(*(&v192 + 1) + 8 * n);
        v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v40 finishedWithError:v41];
      }

      v37 = [v36 countByEnumeratingWithState:&v192 objects:v262 count:16];
    }

    while (v37);
  }

  v186 = 0;
  v187 = &v186;
  v188 = 0x3032000000;
  v189 = __Block_byref_object_copy_;
  v190 = __Block_byref_object_dispose_;
  v191 = 0;
  v42 = v101->_muckingWithInFlightCollections;
  v185[0] = MEMORY[0x277D85DD0];
  v185[1] = 3221225472;
  v185[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_186;
  v185[3] = &unk_27851FF50;
  v185[5] = &v186;
  v185[4] = v101;
  dispatch_sync(v42, v185);
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v43 = v187[5];
  v44 = [v43 countByEnumeratingWithState:&v181 objects:v261 count:16];
  if (v44)
  {
    v45 = *v182;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v182 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v181 + 1) + 8 * ii);
        v48 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v47 finishedWithError:v48 exceededResultLimit:0];
      }

      v44 = [v43 countByEnumeratingWithState:&v181 objects:v261 count:16];
    }

    while (v44);
  }

  v175 = 0;
  v176 = &v175;
  v177 = 0x3032000000;
  v178 = __Block_byref_object_copy_;
  v179 = __Block_byref_object_dispose_;
  v180 = 0;
  v49 = v101->_muckingWithInFlightCollections;
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_187;
  v174[3] = &unk_27851FF50;
  v174[5] = &v175;
  v174[4] = v101;
  dispatch_sync(v49, v174);
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v50 = v176[5];
  v51 = [v50 countByEnumeratingWithState:&v170 objects:v260 count:16];
  if (v51)
  {
    v52 = *v171;
    do
    {
      for (jj = 0; jj != v51; ++jj)
      {
        if (*v171 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v170 + 1) + 8 * jj);
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v54 finishedWithError:v55];
      }

      v51 = [v50 countByEnumeratingWithState:&v170 objects:v260 count:16];
    }

    while (v51);
  }

  v164 = 0;
  v165 = &v164;
  v166 = 0x3032000000;
  v167 = __Block_byref_object_copy_;
  v168 = __Block_byref_object_dispose_;
  v169 = 0;
  v56 = v101->_muckingWithInFlightCollections;
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_188;
  v163[3] = &unk_27851FF50;
  v163[5] = &v164;
  v163[4] = v101;
  dispatch_sync(v56, v163);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v57 = v165[5];
  v58 = [v57 countByEnumeratingWithState:&v159 objects:v259 count:16];
  if (v58)
  {
    v59 = *v160;
    do
    {
      for (kk = 0; kk != v58; ++kk)
      {
        if (*v160 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v61 = *(*(&v159 + 1) + 8 * kk);
        v62 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v61 finishedWithError:v62];
      }

      v58 = [v57 countByEnumeratingWithState:&v159 objects:v259 count:16];
    }

    while (v58);
  }

  v153 = 0;
  v154 = &v153;
  v155 = 0x3032000000;
  v156 = __Block_byref_object_copy_;
  v157 = __Block_byref_object_dispose_;
  v158 = 0;
  v63 = v101->_muckingWithInFlightCollections;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_189;
  v152[3] = &unk_27851FF50;
  v152[5] = &v153;
  v152[4] = v101;
  dispatch_sync(v63, v152);
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v64 = v154[5];
  v65 = [v64 countByEnumeratingWithState:&v148 objects:v258 count:16];
  if (v65)
  {
    v66 = *v149;
    do
    {
      for (mm = 0; mm != v65; ++mm)
      {
        if (*v149 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v148 + 1) + 8 * mm);
        v69 = [v68 consumer];
        v70 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v69 oofRequestInfo:v68 finishedWithResult:0 error:v70];
      }

      v65 = [v64 countByEnumeratingWithState:&v148 objects:v258 count:16];
    }

    while (v65);
  }

  v142 = 0;
  v143 = &v142;
  v144 = 0x3032000000;
  v145 = __Block_byref_object_copy_;
  v146 = __Block_byref_object_dispose_;
  v147 = 0;
  v71 = v101->_muckingWithInFlightCollections;
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_190;
  v141[3] = &unk_27851FF50;
  v141[5] = &v142;
  v141[4] = v101;
  dispatch_sync(v71, v141);
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v72 = v143[5];
  v73 = [v72 countByEnumeratingWithState:&v137 objects:v257 count:16];
  if (v73)
  {
    v74 = *v138;
    do
    {
      for (nn = 0; nn != v73; ++nn)
      {
        if (*v138 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v137 + 1) + 8 * nn);
        v77 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v76 abortWithError:v77];
      }

      v73 = [v72 countByEnumeratingWithState:&v137 objects:v257 count:16];
    }

    while (v73);
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy_;
  v135 = __Block_byref_object_dispose_;
  v136 = 0;
  v78 = v101->_muckingWithInFlightCollections;
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_191;
  v130[3] = &unk_27851FF50;
  v130[4] = v101;
  v130[5] = &v131;
  dispatch_sync(v78, v130);
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v79 = v132[5];
  v80 = [v79 countByEnumeratingWithState:&v126 objects:v256 count:16];
  if (v80)
  {
    v81 = *v127;
    do
    {
      for (i1 = 0; i1 != v80; ++i1)
      {
        if (*v127 != v81)
        {
          objc_enumerationMutation(v79);
        }

        v83 = *(*(&v126 + 1) + 8 * i1);
        v84 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_192;
        v124[3] = &unk_27851FF78;
        v85 = v84;
        v125 = v85;
        [v83 callOutToDelegate:v124];
      }

      v80 = [v79 countByEnumeratingWithState:&v126 objects:v256 count:16];
    }

    while (v80);
  }

  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy_;
  v122 = __Block_byref_object_dispose_;
  v123 = 0;
  v86 = v101->_muckingWithInFlightCollections;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_2;
  v117[3] = &unk_27851FF50;
  v117[4] = v101;
  v117[5] = &v118;
  dispatch_sync(v86, v117);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v87 = v119[5];
  v88 = [v87 countByEnumeratingWithState:&v113 objects:v255 count:16];
  if (v88)
  {
    v89 = *v114;
    do
    {
      for (i2 = 0; i2 != v88; ++i2)
      {
        if (*v114 != v89)
        {
          objc_enumerationMutation(v87);
        }

        v91 = *(*(&v113 + 1) + 8 * i2);
        v92 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v91 finishedWithError:v92];
      }

      v88 = [v87 countByEnumeratingWithState:&v113 objects:v255 count:16];
    }

    while (v88);
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy_;
  v111 = __Block_byref_object_dispose_;
  v112 = 0;
  v93 = v101->_muckingWithInFlightCollections;
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __41__DADConnection__tearDownInFlightObjects__block_invoke_194;
  v106[3] = &unk_27851FF50;
  v106[4] = v101;
  v106[5] = &v107;
  dispatch_sync(v93, v106);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v94 = v108[5];
  v95 = [v94 countByEnumeratingWithState:&v102 objects:v254 count:16];
  if (v95)
  {
    v96 = *v103;
    do
    {
      for (i3 = 0; i3 != v95; ++i3)
      {
        if (*v103 != v96)
        {
          objc_enumerationMutation(v94);
        }

        v98 = *(*(&v102 + 1) + 8 * i3);
        v99 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
        [v98 finishedWithError:v99];
      }

      v95 = [v94 countByEnumeratingWithState:&v102 objects:v254 count:16];
    }

    while (v95);
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v142, 8);

  _Block_object_dispose(&v153, 8);
  _Block_object_dispose(&v164, 8);

  _Block_object_dispose(&v175, 8);
  _Block_object_dispose(&v186, 8);

  _Block_object_dispose(&v197, 8);
  _Block_object_dispose(&v208, 8);

  _Block_object_dispose(&v219, 8);
  _Block_object_dispose(&v230, 8);

  _Block_object_dispose(&v241, 8);
  _Block_object_dispose(&v248, 8);

  v100 = *MEMORY[0x277D85DE8];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing ALL search queries", v7, 2u);
  }

  return [*(*(a1 + 32) + 56) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_181(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Failing all folder changes", v7, 2u);
  }

  return [*(*(a1 + 32) + 64) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_182(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all attachment downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 72) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_183(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar availability lookups", v7, 2u);
  }

  return [*(*(a1 + 32) + 80) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_184(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all granted delegates list requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 128) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_185(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all update-granted-delegate-permission requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 136) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_186(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all calendar search requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 88) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_187(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all group expansions", v7, 2u);
  }

  return [*(*(a1 + 32) + 96) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_188(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all share requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 104) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_189(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all settings requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 112) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_190(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all office hours requests", v7, 2u);
  }

  return [*(*(a1 + 32) + 120) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_191(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing all subscribed calendar downloads", v7, 2u);
  }

  return [*(*(a1 + 32) + 144) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Remove all subscribed calendar junk checks", v7, 2u);
  }

  return [*(*(a1 + 32) + 152) removeAllObjects];
}

uint64_t __41__DADConnection__tearDownInFlightObjects__block_invoke_194(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Remove all holiday calendar fetches", v7, 2u);
  }

  return [*(*(a1 + 32) + 160) removeAllObjects];
}

- (void)_serverDiedWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == MEMORY[0x277D863F0])
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

  if (v4 == MEMORY[0x277D863F8])
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      v7 = "LOOK AT ME!!!! dataaccessd couldn't be started.  We won't try again.  If you're seeing this, get ready for some pain";
      v8 = &v10;
LABEL_7:
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  [(DADConnection *)self _tearDownInFlightObjects];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"DataAccessMonitoringConnectionFailed" object:0];

  [(DADConnection *)self setRegistered:0];
}

- (id)_connection
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
  v5[2] = __28__DADConnection__connection__block_invoke;
  v5[3] = &unk_27851FFA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(muckingWithConn, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__DADConnection__connection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _initializeConnection];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_initializeConnection
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [@"com.apple.dataaccess.dataaccessd" UTF8String];
  v4 = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service(v3, v4, 0);
  conn = self->_conn;
  self->_conn = mach_service;

  if (self->_conn)
  {
    v7 = *MEMORY[0x277D85DE8];

    [(DADConnection *)self _initializeXPCConnection:?];
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = @"com.apple.dataaccess.dataaccessd";
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "Couldn't create a connection to [%@]", &v10, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeConnectionWithXPCEndpoint:(id)a3
{
  v4 = a3;
  muckingWithConn = self->_muckingWithConn;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__DADConnection__initializeConnectionWithXPCEndpoint___block_invoke;
  v7[3] = &unk_27851FED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(muckingWithConn, v7);
}

void __54__DADConnection__initializeConnectionWithXPCEndpoint___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a connection to endpoint: [%@]", &v10, 0xCu);
    }

    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)_initializeXPCConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__DADConnection__initializeXPCConnection___block_invoke;
  v5[3] = &unk_27851FFC8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(v4, v5);
  xpc_connection_resume(v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__DADConnection__initializeXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x22AA4EF10]();
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

- (id)_createReplyToRequest:(id)a3 withProperties:(id)a4
{
  v5 = a4;
  reply = xpc_dictionary_create_reply(a3);
  v7 = _CFXPCCreateXPCObjectFromCFObject();

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__DADConnection__createReplyToRequest_withProperties___block_invoke;
  applier[3] = &unk_27851FFF0;
  v8 = reply;
  v11 = v8;
  xpc_dictionary_apply(v7, applier);

  return v8;
}

- (id)decodedErrorFromData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v11 = 0;
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v11];
    v5 = v11;
    if (!v4)
    {
      v6 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode error: %@", buf, 0xCu);
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

+ (id)_dictionarySuitableForLogging:(id)a3
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v4 = [v3 objectForKeyedSubscript:@"kDAESubCalPasswordKey"];

  if (v4)
  {
    [v3 setObject:@"<redacted>" forKeyedSubscript:@"kDAESubCalPasswordKey"];
  }

  return v3;
}

+ (void)_logRequestID:(id)a3 forRequestAttributes:(id)a4 associatedContext:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [objc_opt_class() _dictionarySuitableForLogging:v8];
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Received request ID [%@] for request with attributes: [%@].  Associated context: [%@]", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_policyKeyChanged:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__DADConnection__policyKeyChanged___block_invoke;
  block[3] = &unk_27851FF00;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__DADConnection__policyKeyChanged___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Malformed callback message from dataaccess daemon: bad account id (%@)", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_foldersUpdated:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__DADConnection__foldersUpdated___block_invoke;
  block[3] = &unk_27851FF00;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __33__DADConnection__foldersUpdated___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
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

void __38__DADConnection__logDataAccessStatus___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ASClientAccountDumpStatusNotification" object:0];
}

- (void)_serverContactsSearchQueryFinished:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "doServerContactsSearchQueryFinishedWithStatus called back with status %@", &buf, 0xCu);
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
  block[2] = __52__DADConnection__serverContactsSearchQueryFinished___block_invoke;
  block[3] = &unk_278520038;
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
          _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEFAULT, "Unable to read data to decode search results: %@", v27, 0xCu);
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
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v27, 2u);
      }

      v18 = 0;
    }

    v19 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEBUG, "Search results: %@", v27, 0xCu);
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
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "received results for an unknown search query", v27, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __52__DADConnection__serverContactsSearchQueryFinished___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing query %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 56) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_folderChangeFinished:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:@"kDAETaskIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"kDAEStatusKey"];
  v7 = [v4 objectForKeyedSubscript:@"kDAEFolderIDKey"];
  v8 = [v4 objectForKeyedSubscript:@"kDAEFolderNameKey"];
  v9 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v10 = [(DADConnection *)self decodedErrorFromData:v9];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "folderChange finished with status %@, error %@", buf, 0x16u);
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
  block[2] = __39__DADConnection__folderChangeFinished___block_invoke;
  block[3] = &unk_278520038;
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

    v16 = [*(v14 + 40) consumer];
    -[NSObject folderChange:finishedWithStatus:error:](v16, "folderChange:finishedWithStatus:error:", *(*&buf[8] + 40), [v6 intValue], v10);
  }

  else
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_ERROR, "received results for an unknown folderChange", v19, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __39__DADConnection__folderChangeFinished___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing folder change %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 64) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_getStatusReportsFromClient:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__DADConnection__getStatusReportsFromClient___block_invoke;
  v7[3] = &unk_27851FED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__DADConnection__getStatusReportsFromClient___block_invoke(uint64_t a1)
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

- (void)_downloadProgress:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = _CFXPCCreateCFObjectFromXPCObject();
  v4 = [v16 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v16 objectForKeyedSubscript:@"kDAEDownloadedBytesKey"];
  v6 = [v5 longLongValue];

  v7 = [v16 objectForKeyedSubscript:@"kDAETotalBytesKey"];
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
        block[2] = __35__DADConnection__downloadProgress___block_invoke;
        block[3] = &unk_278520038;
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

uint64_t __35__DADConnection__downloadProgress___block_invoke(void *a1)
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
  v4 = [v14 objectForKeyedSubscript:@"kDAEAttachmentIdsKey"];
  v5 = [v14 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v6 = [(DADConnection *)self decodedErrorFromData:v5];

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
        block[2] = __35__DADConnection__downloadFinished___block_invoke;
        block[3] = &unk_278520038;
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

uint64_t __35__DADConnection__downloadFinished___block_invoke(void *a1)
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
  v6 = [v5 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__DADConnection__shareResponseFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __40__DADConnection__shareResponseFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 104);

  return [v6 removeObjectForKey:v5];
}

- (void)_officeHoursRequestFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DADConnection__officeHoursRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v16 = &v17;
  block[4] = self;
  v10 = v6;
  v15 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  v11 = v18[5];
  if (v11)
  {
    if ([v11 isFetch])
    {
      v12 = [v5 objectForKeyedSubscript:@"kDAEOfficeHoursDataKey"];
      if (v12)
      {
        v13 = [CalDAVOfficeHour officeHoursFromData:v12];
      }

      else
      {
        v13 = 0;
      }

      [v18[5] finishFetchWithOfficeHours:v13 error:v8];
    }

    else
    {
      [v18[5] finishSetWithError:v8];
    }
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __45__DADConnection__officeHoursRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 120);

  return [v6 removeObjectForKey:v5];
}

- (void)_oofSettingsRequestsFinished:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEOofRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "_oofSettingsRequestsFinished called back with status %@", &buf, 0xCu);
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
  block[2] = __46__DADConnection__oofSettingsRequestsFinished___block_invoke;
  block[3] = &unk_278520038;
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
        v12 = v11;
        if (v11 && [v11 BOOLValue])
        {
          v13 = [*(*(&buf + 1) + 40) consumer];
          [v13 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:0 error:0];
        }

        else
        {
          v13 = [v5 objectForKeyedSubscript:@"kDAEOofSettingsResultKey"];
          if (v13)
          {
            v19 = [[DAOofParams alloc] initWithDictionary:v13];
            v20 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *v28 = 138412290;
              v29 = v19;
              _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_DEBUG, "Oof settings request results: %@", v28, 0xCu);
            }

            v21 = [*(*(&buf + 1) + 40) consumer];
            [v21 oofRequestInfo:*(*(&buf + 1) + 40) finishedWithResult:v19 error:0];
          }

          else
          {
            v22 = DALoggingwithCategory(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *v28 = 0;
              _os_log_impl(&dword_2243BD000, v22, OS_LOG_TYPE_INFO, "Could not deserialize search results from the xpc message", v28, 2u);
            }

            v19 = [*(*(&buf + 1) + 40) consumer];
            v23 = *(*(&buf + 1) + 40);
            v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
            [(DAOofParams *)v19 oofRequestInfo:v23 finishedWithResult:0 error:v21];
          }
        }
      }

      else
      {
        v12 = [*(*(&buf + 1) + 40) consumer];
        v17 = *(*(&buf + 1) + 40);
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
        [v12 oofRequestInfo:v17 finishedWithResult:0 error:v18];
      }
    }

    else
    {
      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_INFO, "Status missing from the xpc message", v28, 2u);
      }

      v12 = [*(*(&buf + 1) + 40) consumer];
      v15 = *(*(&buf + 1) + 40);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:62 userInfo:0];
      [v12 oofRequestInfo:v15 finishedWithResult:0 error:v16];
    }
  }

  else
  {
    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_ERROR, "received results for an unknown oof settings request", v28, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __46__DADConnection__oofSettingsRequestsFinished___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 112) objectForKeyedSubscript:a1[5]];
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
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Removing from inflight dictionary: oof settings request %@ for key %@", &v10, 0x16u);
  }

  result = [*(a1[4] + 112) removeObjectForKey:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_subscriptionCalendarJunkCheckFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarIsJunkIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DADConnection__subscriptionCalendarJunkCheckFinished___block_invoke;
  block[3] = &unk_278520038;
  v15 = &v16;
  block[4] = self;
  v10 = v6;
  v14 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v17[5])
  {
    v11 = [v5 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarJunkStatusKey"];
    v12 = [v11 integerValue];
    [v17[5] setJunkStatus:v12];
    [v17[5] finishedWithError:v8];
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __56__DADConnection__subscriptionCalendarJunkCheckFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 152) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 152);

  return [v6 removeObjectForKey:v5];
}

- (void)_holidayCalendarFetchReturnedResults:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DADConnection__holidayCalendarFetchReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  v24 = &v25;
  block[4] = self;
  v8 = v6;
  v23 = v8;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v26[5])
  {
    v9 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsResultsKey"];
    v10 = MEMORY[0x277CCAAC8];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v21 = 0;
    v16 = [v10 unarchivedObjectOfClasses:v15 fromData:v9 error:&v21];
    v17 = v21;

    if (!v16 || v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "unable to unarchive results: %@", buf, 0xCu);
      }
    }

    v19 = [v16 objectForKey:@"kDAEFetchHolidayCalendarsResults_FetchResultsKey"];
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26[5] resultsReturned:v19];
      }
    }
  }

  _Block_object_dispose(&v25, 8);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __54__DADConnection__holidayCalendarFetchReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_holidayCalendarFetchFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DADConnection__holidayCalendarFetchFinished___block_invoke;
  block[3] = &unk_278520038;
  v14 = &v15;
  block[4] = self;
  v10 = v6;
  v13 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  v11 = v16[5];
  if (v11)
  {
    [v11 finishedWithError:v8];
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __47__DADConnection__holidayCalendarFetchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 160) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 160);

  return [v6 removeObjectForKey:v5];
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[DADConnection sharedConnection];
  }

  [sharedConnection_gDADConnection reallyRegisterForInterrogation];
  v2 = sharedConnection_gDADConnection;

  return v2;
}

uint64_t __33__DADConnection_sharedConnection__block_invoke()
{
  sharedConnection_gDADConnection = [[DADConnection alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_checkInvalidIdExistsInXPCRely:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x22AA4EF10]();
  if (v4 == MEMORY[0x277D86468])
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = [v8 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    v7 = v9 != 0;
  }

  else
  {
    v5 = v4;
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)resumeWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_conn)
  {
    [(DADConnection *)self _resetCertWarningsForAccountId:v7 andDataclasses:127 isUserRequested:0];
    v20[0] = @"kDAEMessageNameKey";
    v20[1] = @"kDAEAccountIdKey";
    v21[0] = @"kDAEResumeMonitoringFolders";
    v21[1] = v7;
    v20[2] = @"kDAEFolderIDsKey";
    v21[2] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v9 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[DADConnection resumeWatchingFoldersWithKeys:forAccountID:]";
      _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v18, 0xCu);
    }

    v10 = _CFXPCCreateXPCObjectFromCFObject();
    v11 = [(DADConnection *)self _connection];
    v12 = xpc_connection_send_message_with_reply_sync(v11, v10);

    if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
    {
      if (ExchangeSyncExpressLibraryCore())
      {
        v13 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v18 = 138543362;
          v19 = v7;
          _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry resumeWatchingFoldersWithSyncKeyMap on exchangesyncd for accountID %{public}@", &v18, 0xCu);
        }

        v14 = [getESDConnectionClass() sharedConnection];
        v15 = [v14 resumeWatchingFoldersWithKeys:v6 forAccountID:v7];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = [(DADConnection *)self _validateXPCReply:v12];
    }
  }

  else
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_INFO, "[DADConnection resumeWatchingFoldersWithKeys:forAccountID] called without a connection. Will not resume.", &v18, 2u);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)suspendWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20[0] = @"kDAEMessageNameKey";
  v20[1] = @"kDAEAccountIdKey";
  v21[0] = @"kDAESuspendMonitoringFolders";
  v21[1] = v7;
  v20[2] = @"kDAEFolderIDsKey";
  v21[2] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[DADConnection suspendWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v18, 0xCu);
  }

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  v11 = [(DADConnection *)self _connection];
  v12 = xpc_connection_send_message_with_reply_sync(v11, v10);

  if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
  {
    if (ExchangeSyncExpressLibraryCore())
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138543362;
        v19 = v7;
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry suspendWatchingFoldersWithKeys on exchangesyncd for accountID %{public}@", &v18, 0xCu);
      }

      v14 = [getESDConnectionClass() sharedConnection];
      v15 = [v14 suspendWatchingFoldersWithKeys:v6 forAccountID:v7];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(DADConnection *)self _validateXPCReply:v12];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)stopWatchingFoldersWithKeys:(id)a3 forAccountID:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20[0] = @"kDAEMessageNameKey";
  v20[1] = @"kDAEAccountIdKey";
  v21[0] = @"kDAEStopMonitoringFolders";
  v21[1] = v7;
  v20[2] = @"kDAEFolderIDsKey";
  v21[2] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[DADConnection stopWatchingFoldersWithKeys:forAccountID:]";
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "XPC call performed in: %s", &v18, 0xCu);
  }

  v10 = _CFXPCCreateXPCObjectFromCFObject();
  v11 = [(DADConnection *)self _connection];
  v12 = xpc_connection_send_message_with_reply_sync(v11, v10);

  if ([(DADConnection *)self _checkInvalidIdExistsInXPCRely:v12])
  {
    if (ExchangeSyncExpressLibraryCore())
    {
      v13 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138543362;
        v19 = v7;
        _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Retry stopWatchingFoldersWithKeys on exchangesyncd for accountID %{public}@", &v18, 0xCu);
      }

      v14 = [getESDConnectionClass() sharedConnection];
      v15 = [v14 stopWatchingFoldersWithKeys:v6 forAccountID:v7];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [(DADConnection *)self _validateXPCReply:v12];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_validateXPCReply:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x22AA4EF10]();
  if (v4 == MEMORY[0x277D86468])
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = [v6 objectForKeyedSubscript:@"kDAEStatusKey"];
    v9 = [v8 intValue];
    v7 = v9 == 2;
    if (v9 != 2)
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "XPC Reply Failure. Status Code: %@", &v13, 0xCu);
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
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Unsupported XPC reply type. Reply Type: %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)requestPolicyUpdateForAccountID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (ExchangeSyncExpressLibraryCore())
  {
    v4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_2243BD000, v4, OS_LOG_TYPE_DEBUG, "Send current policy key to exchangesyncd for accountID %{public}@", &v9, 0xCu);
    }

    v5 = [getESDConnectionClass() sharedConnection];
    v6 = [v5 requestPolicyUpdateForAccountID:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)currentPolicyKeyForAccountID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (ExchangeSyncExpressLibraryCore())
  {
    v4 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138543362;
      v10 = v3;
      _os_log_impl(&dword_2243BD000, v4, OS_LOG_TYPE_DEBUG, "Send current policy key to exchangesyncd for accountID %{public}@", &v9, 0xCu);
    }

    v5 = [getESDConnectionClass() sharedConnection];
    v6 = [v5 currentPolicyKeyForAccountID:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
  v26 = *MEMORY[0x277D85DE8];
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"stop";
    if (v7)
    {
      v10 = @"start";
    }

    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_INFO, "Requesting that DataAccess %@ monitoring agents.", &v22, 0xCu);
  }

  v11 = kDAEStopMonitoringAgents;
  if (v7)
  {
    v11 = kDAEStartMonitoringAgents;
  }

  v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:*v11 forKey:@"kDAEMessageNameKey"];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v12 setObject:v13 forKeyedSubscript:@"kDAEAgentMonitoringToken"];

  if (v5)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kDAEAgentMonitoringNeedsReply"];
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    v15 = [(DADConnection *)self _connection];
    v16 = xpc_connection_send_message_with_reply_sync(v15, v14);

    if (MEMORY[0x22AA4EF10](v16) == MEMORY[0x277D86468])
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
          v23 = "[DADConnection _requestDaemonChangeAgentMonitoringStatus:withToken:waitForReply:]";
          v24 = 2112;
          v25 = v19;
          _os_log_impl(&dword_2243BD000, v20, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v22, 0x16u);
        }
      }
    }
  }

  else
  {
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    v16 = [(DADConnection *)self _connection];
    xpc_connection_send_message(v16, v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (unint64_t)requestDaemonStopMonitoringAgents
{
  v3 = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(DADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:v3 waitForReply:0];
  return v3;
}

- (unint64_t)requestDaemonStopMonitoringAgentsSync
{
  v3 = [objc_opt_class() _nextStopMonitoringStatusToken];
  [(DADConnection *)self _requestDaemonChangeAgentMonitoringStatus:0 withToken:v3 waitForReply:1];
  return v3;
}

- (void)handleAccountChange:(id)a3 callback:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEFAULT, "Handling account change: %{public}@", buf, 0xCu);
  }

  if (!v6)
  {
    v16 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "No change info given";
    goto LABEL_11;
  }

  v9 = [v6 accountIdentifier];

  if (v9)
  {
    v22 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v22];
    v11 = v22;
    if (v10)
    {
      v23[0] = @"kDAEMessageNameKey";
      v23[1] = @"kDAEHandleAccountChangeDataKey";
      v24[0] = @"kDAEHandleAccountChange";
      v24[1] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v13 = _CFXPCCreateXPCObjectFromCFObject();
      v14 = [(DADConnection *)self _connection];
      v15 = dispatch_get_global_queue(0, 0);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__DADConnection_handleAccountChange_callback___block_invoke;
      v20[3] = &unk_278520060;
      v21 = v7;
      xpc_connection_send_message_with_reply(v14, v13, v15, v20);
    }

    else
    {
      v18 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "Failed to encode account change info: %@", buf, 0xCu);
      }

      if (v7)
      {
        (*(v7 + 2))(v7, v11);
      }
    }

    goto LABEL_19;
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v17 = "No account identifier given";
LABEL_11:
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
  }

LABEL_12:

  if (v7)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(v7 + 2))(v7, v11);
LABEL_19:
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __46__DADConnection_handleAccountChange_callback___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = [v5 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = v6;
    if (v6 && [v6 intValue] == 2)
    {
      v4 = 0;
    }

    else
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "[DADConnection handleAccountChange:callback:]_block_invoke";
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v11, 0x16u);
      }

      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:objc_msgSend(v7 userInfo:{"intValue"), 0}];
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)performServerContactsSearch:(id)a3 forAccountWithID:(id)a4
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(DADConnection *)self _resetCertWarningsForAccountId:v7 andDataclasses:8 isUserRequested:0];
  if (v7)
  {
    v8 = [v6 searchString];

    if (v8)
    {
      v36[0] = @"kDAEMessageNameKey";
      v36[1] = @"kDAEAccountIdKey";
      v37[0] = @"kDAEOpenServerContactsSearch";
      v37[1] = v7;
      v36[2] = @"kDAESearchQueryKey";
      v9 = [v6 dictionaryRepresentation];
      v37[2] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];

      v11 = _CFXPCCreateXPCObjectFromCFObject();
      v12 = [(DADConnection *)self _connection];
      v13 = xpc_connection_send_message_with_reply_sync(v12, v11);

      if (MEMORY[0x22AA4EF10](v13) != MEMORY[0x277D86468])
      {
LABEL_4:
        v14 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v16 = _CFXPCCreateCFObjectFromXPCObject();
      v17 = [v16 objectForKeyedSubscript:@"kDAEStatusKey"];
      v18 = [v17 integerValue];
      if (!v17 || (v19 = v18, v18 == 2))
      {
        v21 = [v16 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
        if (v21)
        {
          v22 = v21;
          v23 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v35 = v22;
            _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
          }

          if (!ExchangeSyncExpressLibraryCore())
          {
            goto LABEL_4;
          }

          v24 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v35 = v7;
            _os_log_impl(&dword_2243BD000, v24, OS_LOG_TYPE_DEBUG, "Perform server contact search on exchangesyncd for accountID %{public}@", buf, 0xCu);
          }

          v16 = [getESDConnectionClass() sharedConnection];
          v14 = [v16 performServerContactsSearch:v6 forAccountWithID:v7];
        }

        else
        {
          v25 = [v16 objectForKeyedSubscript:@"kDAESearchIDKey"];
          [v6 setSearchID:v25];
          muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__DADConnection_performServerContactsSearch_forAccountWithID___block_invoke;
          block[3] = &unk_27851FF28;
          v31 = v6;
          v32 = v25;
          v33 = self;
          v27 = v25;
          dispatch_sync(muckingWithInFlightCollections, block);

          v14 = 1;
        }
      }

      else
      {
        [v6 sendResultsToConsumer:0];
        v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v19 userInfo:0];
        [v6 sendFinishedToConsumerWithError:v20];

        v14 = 0;
      }

      goto LABEL_23;
    }

    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "nil search string passed to performServerContactsSearch. Refusing to attempt search";
      goto LABEL_9;
    }
  }

  else
  {
    v10 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "nil accountID passed to performServerContactsSearch. Refusing to attempt search";
LABEL_9:
      _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    }
  }

  v14 = 0;
LABEL_24:

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __62__DADConnection_performServerContactsSearch_forAccountWithID___block_invoke(void *a1)
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
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Setting search query %@ for key %@", &v7, 0x16u);
  }

  result = [*(a1[6] + 56) setObject:a1[4] forKeyedSubscript:a1[5]];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelServerContactsSearch:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 searchID];
  v6 = [v5 length];

  if (v6)
  {
    [v4 setState:2];
    [v4 setConsumer:0];
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Cancelling search task %p", &buf, 0xCu);
    }

    v8 = [v4 searchID];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DADConnection_cancelServerContactsSearch___block_invoke;
    block[3] = &unk_278520038;
    p_buf = &buf;
    block[4] = self;
    v10 = v8;
    v21 = v10;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(*(&buf + 1) + 40))
    {
      v25[0] = @"kDAEMessageNameKey";
      v25[1] = @"kDAESearchIDKey";
      v26[0] = @"kDAECancelServerContactsSearch";
      v26[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
      v12 = _CFXPCCreateXPCObjectFromCFObject();
      v13 = [(DADConnection *)self _connection];
      xpc_connection_send_message(v13, v12);

      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v23 = 138412290;
        v24 = v10;
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Removing search query for key %@", v23, 0xCu);
      }

      v15 = self->_muckingWithInFlightCollections;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __44__DADConnection_cancelServerContactsSearch___block_invoke_223;
      v18[3] = &unk_27851FED8;
      v18[4] = self;
      v19 = v10;
      dispatch_sync(v15, v18);
      [v4 setSearchID:&stru_2837C8288];
    }

    else
    {
      if (!ExchangeSyncExpressLibraryCore())
      {
LABEL_13:

        _Block_object_dispose(&buf, 8);
        goto LABEL_14;
      }

      v16 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v23 = 138412290;
        v24 = v10;
        _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Cancel server contact search on exchangesyncd for searchID %@", v23, 0xCu);
      }

      v11 = [getESDConnectionClass() sharedConnection];
      [v11 cancelServerContactsSearch:v4];
    }

    goto LABEL_13;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __44__DADConnection_cancelServerContactsSearch___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)processMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (ExchangeSyncExpressLibraryCore())
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Process meeting request on exchangesyncd for accountID %{public}@", &v21, 0xCu);
    }

    v17 = [getESDConnectionClass() sharedConnection];
    v18 = [v17 processMeetingRequests:v11 deliveryIdsToClear:v12 deliveryIdsToSoftClear:v13 inFolderWithId:v14 forAccountWithId:v15];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)asyncProcessMeetingRequests:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 forAccountWithId:(id)a7
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (ExchangeSyncExpressLibraryCore())
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Async process meeting request on exchangesyncd for accountID %{public}@", &v19, 0xCu);
    }

    v17 = [getESDConnectionClass() sharedConnection];
    [v17 asyncProcessMeetingRequests:v11 deliveryIdsToClear:v12 deliveryIdsToSoftClear:v13 inFolderWithId:v14 forAccountWithId:v15];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5 forAccountID:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (ExchangeSyncExpressLibraryCore())
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Set folder IDs that external clients care about on exchangesyncd for accountID %{public}@", &v18, 0xCu);
    }

    v14 = [getESDConnectionClass() sharedConnection];
    v15 = [v14 setFolderIdsThatExternalClientsCareAboutAdded:v9 deleted:v10 foldersTag:v11 forAccountID:v12];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)handleURL:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = [a3 absoluteString];
  v5 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], v4, 0, @"&=", 0x8000100u);
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEURLStringKey";
  v11[0] = @"kDAEHandleURL";
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = [(DADConnection *)self _connection];
  xpc_connection_send_message(v8, v7);

  if (v5)
  {
    CFRelease(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendXPCMessageSynchronous:(BOOL)a3 withParameters:(id)a4 handlerBlock:(id)a5
{
  v5 = a3;
  v7 = a5;
  v8 = _CFXPCCreateXPCObjectFromCFObject();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__DADConnection__sendXPCMessageSynchronous_withParameters_handlerBlock___block_invoke;
  aBlock[3] = &unk_278520060;
  v16 = v7;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = [(DADConnection *)self _connection];
  v12 = v11;
  if (v5)
  {
    v13 = xpc_connection_send_message_with_reply_sync(v11, v8);

    v10[2](v10, v13);
    v12 = v13;
  }

  else
  {
    v14 = dispatch_get_global_queue(0, 0);
    xpc_connection_send_message_with_reply(v12, v8, v14, v10);
  }
}

void __72__DADConnection__sendXPCMessageSynchronous_withParameters_handlerBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v6 = v3;
    v4 = MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468];
    v3 = v6;
    if (v4)
    {
      v5 = _CFXPCCreateCFObjectFromXPCObject();
      (*(*(a1 + 32) + 16))();

      v3 = v6;
    }
  }
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 accountID:(id)a4 queue:(id)a5 progressBlock:(id)a6 completionBlock:(id)a7
{
  v51[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_INFO, "Requesting download of attachment UUID %@ for accountID %{public}@", buf, 0x16u);
  }

  v18 = [[DADownloadContext alloc] initWithAttachmentUUID:v12 accountID:v13 queue:v14 downloadProgressBlock:v15 completionBlock:v16];
  v50[0] = @"kDAEMessageNameKey";
  v50[1] = @"kDAEAttachmentUUIDKey";
  v51[0] = @"kDAEBeginDownloadingAttachment";
  v51[1] = v12;
  v50[2] = @"kDAEAccountIdKey";
  v51[2] = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke;
  v33 = &unk_2785200B0;
  v20 = v18;
  v34 = v20;
  v38 = buf;
  v21 = v12;
  v35 = v21;
  v22 = v13;
  v36 = v22;
  v37 = self;
  v39 = &v40;
  [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v19 handlerBlock:&v30];
  if (*(v41 + 24) == 1 && ExchangeSyncExpressLibraryCore())
  {
    v23 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v44 = 138543362;
      v45 = v22;
      _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEBUG, "Begin download attachment on exchangesyncd for accountID %{public}@", v44, 0xCu);
    }

    v24 = [getESDConnectionClass() sharedConnection];
    v25 = [v24 beginDownloadingAttachmentWithUUID:v21 accountID:v22 queue:v14 progressBlock:v15 completionBlock:v16];
    v26 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v25;
  }

  v27 = *(*&buf[8] + 40);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(buf, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
  if (v4)
  {
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = [v6 integerValue];
    if (v6)
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAEAttachmentDownloadIdKey"];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(*(*(a1 + 64) + 8) + 40);
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        *buf = 138412802;
        v26 = v13;
        v27 = 2114;
        v28 = v14;
        v29 = 2114;
        v30 = v15;
        _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_INFO, "Download context %@ set up for downloading attachment UUID %{public}@ on accountID %{public}@", buf, 0x20u);
      }

      v16 = *(a1 + 56);
      v17 = *(v16 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__DADConnection_beginDownloadingAttachmentWithUUID_accountID_queue_progressBlock_completionBlock___block_invoke_231;
      block[3] = &unk_278520088;
      v18 = *(a1 + 64);
      block[4] = v16;
      v24 = v18;
      v23 = *(a1 + 32);
      dispatch_sync(v17, block);
    }

    else
    {
      v19 = *(a1 + 32);
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v7 userInfo:0];
      [v19 finishedWithError:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadsWithIDs:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v14[0] = 0;
        v14[1] = v14;
        v14[2] = 0x3032000000;
        v14[3] = __Block_byref_object_copy_;
        v14[4] = __Block_byref_object_dispose_;
        v15 = 0;
        muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__DADConnection__cancelDownloadsWithIDs_error___block_invoke;
        block[3] = &unk_278520038;
        block[5] = v9;
        block[6] = v14;
        block[4] = self;
        dispatch_sync(muckingWithInFlightCollections, block);
        _Block_object_dispose(v14, 8);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __47__DADConnection__cancelDownloadsWithIDs_error___block_invoke(void *a1)
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
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20[0] = @"kDAECancelDownloadingAttachment";
  v19[0] = @"kDAEMessageNameKey";
  v19[1] = @"kDAEErrorDataKey";
  v7 = MEMORY[0x277CCAAB0];
  v8 = a4;
  v9 = [v7 archivedDataWithRootObject:v8];
  v19[2] = @"kDAEAttachmentDownloadIdKey";
  v20[1] = v9;
  v20[2] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_INFO, "Cancelling Download of attachment with downloadID %@", buf, 0xCu);
  }

  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v10 handlerBlock:0];
  v16 = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  [(DADConnection *)self _cancelDownloadsWithIDs:v12 error:v8];

  if (ExchangeSyncExpressLibraryCore())
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEBUG, "Canceling downloading attachments on exchangesyncd for downloadIDs %@", buf, 0xCu);
    }

    v14 = [getESDConnectionClass() sharedConnection];
    [v14 cancelDownloadingAttachmentWithDownloadID:v6 error:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v31 = a3;
    v32 = 2112;
    v33 = v12;
    v34 = 2114;
    v35 = v13;
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEBUG, "Requesting share response %ld for calendar %@ for accountID %{public}@", buf, 0x20u);
  }

  if (v12 && v13)
  {
    v17 = [[DASharedCalendarContext alloc] initWithCalendarID:v12 accountID:v13 queue:v14 completionBlock:v15];
    [(DASharedCalendarContext *)v17 setShouldSyncCalendar:a3 == 1];
    v28[0] = @"kDAEMessageNameKey";
    v28[1] = @"kDAEAccountIdKey";
    v29[0] = @"kDAERespondToSharedCalendar";
    v29[1] = v13;
    v28[2] = @"kDAESharedCalendarReponseTypeKey";
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v28[3] = @"kDAESharedCalendarResponseCalendarIDKey";
    v29[2] = v18;
    v29[3] = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke;
    v23[3] = &unk_2785200D8;
    v24 = v17;
    v25 = v12;
    v26 = v13;
    v27 = self;
    v20 = v17;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v19 handlerBlock:v23];
  }

  else
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v21, OS_LOG_TYPE_ERROR, "Not continuing with respondToSharedCalendarInvite. Given calendarId or accountId is nil.", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    v15[2](v15, v12, v13, v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %{public}@", buf, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__DADConnection_respondToSharedCalendarInvite_forCalendarWithID_accountID_queue_completionBlock___block_invoke_234;
    block[3] = &unk_27851FF28;
    block[4] = v11;
    v18 = v7;
    v19 = *(a1 + 32);
    v13 = v7;
    dispatch_sync(v12, block);
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v14 finishedWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Reporting calendar %@ for accountID %{public}@ as junk", buf, 0x16u);
  }

  if (v10 && v11)
  {
    v15 = [[DASharedCalendarContext alloc] initWithCalendarID:v10 accountID:v11 queue:v12 completionBlock:v13];
    [(DASharedCalendarContext *)v15 setShouldSyncCalendar:0];
    v25[0] = @"kDAEMessageNameKey";
    v25[1] = @"kDAEAccountIdKey";
    v26[0] = @"kDAEReportSharedCalendarAsJunk";
    v26[1] = v11;
    v25[2] = @"kDAESharedCalendarResponseCalendarIDKey";
    v26[2] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke;
    v20[3] = &unk_2785200D8;
    v21 = v15;
    v22 = v10;
    v23 = v11;
    v24 = self;
    v17 = v15;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v16 handlerBlock:v20];
  }

  else
  {
    v18 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v18, OS_LOG_TYPE_ERROR, "Not continuing with reportSharedCalendarInviteAsJunkForCalendarWithID. Given calendarId or accountId is nil.", buf, 2u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    v13[2](v13, v10, v11, v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESharedCalendarActionIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Share request %@ set up for sharing calendar id %@ on accountID %@", buf, 0x20u);
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__DADConnection_reportSharedCalendarInviteAsJunkForCalendarWithID_accountID_queue_completionBlock___block_invoke_235;
    block[3] = &unk_27851FF28;
    block[4] = v11;
    v18 = v7;
    v19 = *(a1 + 32);
    v13 = v7;
    dispatch_sync(v12, block);
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v14 finishedWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchOfficeHoursForAccountWithID:(id)a3 queue:(id)a4 completionBlock:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Fetching office hours for accountID %{public}@", buf, 0xCu);
  }

  v12 = objc_opt_new();
  [v12 setAccountID:v8];
  [v12 setQueue:v10];

  [v12 setFetchCompletionBlock:v9];
  v21[0] = @"kDAEMessageNameKey";
  v21[1] = @"kDAEAccountIdKey";
  v22[0] = @"kDAEFetchOfficeHours";
  v22[1] = v8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke;
  v17[3] = &unk_278520100;
  v18 = v12;
  v19 = v8;
  v20 = self;
  v14 = v8;
  v15 = v12;
  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Office hours fetch request %{public}@ set up for accountID %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DADConnection_fetchOfficeHoursForAccountWithID_queue_completionBlock___block_invoke_237;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v17 = v7;
    v18 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 abortWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setOfficeHours:(id)a3 forAccountWithID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Setting office hours for accountID %{public}@", buf, 0xCu);
  }

  if (!v10)
  {
    v16 = 0;
LABEL_8:
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:91 userInfo:0];
    v13[2](v13, v11, v18);
    goto LABEL_9;
  }

  v15 = [CalDAVOfficeHour dataFromOfficeHours:v10];
  v16 = v15;
  if (!v11 || !v15)
  {
    goto LABEL_8;
  }

  v17 = objc_opt_new();
  [v17 setAccountID:v11];
  [v17 setQueue:v12];
  [v17 setSetCompletionBlock:v13];
  v25[0] = @"kDAEMessageNameKey";
  v25[1] = @"kDAEAccountIdKey";
  v26[0] = @"kDAESetOfficeHours";
  v26[1] = v11;
  v25[2] = @"kDAEOfficeHoursDataKey";
  v26[2] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke;
  v21[3] = &unk_278520100;
  v22 = v17;
  v23 = v11;
  v24 = self;
  v19 = v17;
  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v18 handlerBlock:v21];

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
}

void __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEOfficeHoursRequestIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Office hours set request %{public}@ set up for accountID %{public}@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DADConnection_setOfficeHours_forAccountWithID_queue_completionBlock___block_invoke_238;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v17 = v7;
    v18 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 abortWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportSubscriptionCalendarAsJunk:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Marking a subscription calendar as junk", v8, 2u);
  }

  v9[0] = @"kDAEMessageNameKey";
  v9[1] = @"kDAEURLStringKey";
  v10[0] = @"kDAEReportSubscribedCalendarAsJunk";
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:&__block_literal_global_240];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkSubscriptionCalendarIsJunk:(id)a3 queue:(id)a4 completionBlock:(id)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Checking whether a subscription calendar is junk", buf, 2u);
  }

  if (v8)
  {
    v12 = [[DACheckSubscribedCalendarIsJunkContext alloc] initWithURLString:v8 completionBlock:v10];
    [(DACheckSubscribedCalendarIsJunkContext *)v12 setQueue:v9];
    v22[0] = @"kDAEMessageNameKey";
    v22[1] = @"kDAEURLStringKey";
    v23[0] = @"kDAECheckSubscribedCalendarIsJunk";
    v23[1] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke;
    v17[3] = &unk_278520100;
    v18 = v12;
    v19 = v8;
    v20 = self;
    v14 = v12;
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v17];
  }

  else
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_ERROR, "Not continuing with checkSubscriptionCalendarIsJunk. Given urlString is nil.", buf, 2u);
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    v10[2](v10, &stru_2837C8288, 0, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAECheckSubscribedCalendarIsJunkIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Check junk request %@ set up for subscribed calendar URL %@", buf, 0x16u);
    }

    v10 = *(a1 + 48);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__DADConnection_checkSubscriptionCalendarIsJunk_queue_completionBlock___block_invoke_242;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v17 = v7;
    v18 = *(a1 + 32);
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 finishedWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAvailableHolidayCalendarsWithResultsBlock:(id)a3 completionBlock:(id)a4 queue:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Fetching list of available holiday calendars", buf, 2u);
  }

  if (v9)
  {
    if (v8)
    {
      v12 = [[DAHolidayCalendarsFetchContext alloc] initWithResultsBlock:v8 completionBlock:v9];
      [(DAHolidayCalendarsFetchContext *)v12 setQueue:v10];
      v21 = @"kDAEMessageNameKey";
      v22[0] = @"kDAEFetchHolidayCalendars";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke;
      v17[3] = &unk_278520148;
      v18 = v12;
      v19 = self;
      v14 = v12;
      [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v13 handlerBlock:v17];
    }

    else
    {
      v15 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_ERROR, "Not continuing with fetchAvailableHolidayCalendarsWithResultsBlock. resultsBlock is null.", buf, 2u);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
      v9[2](v9, v13);
    }
  }

  else
  {
    v13 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_ERROR, "Not continuing with fetchAvailableHolidayCalendarsWithResultsBlock. completionBlock is null.", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEFetchHolidayCalendarsIdKey"];
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Holiday calendar fetch request set up: %@", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v10 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__DADConnection_fetchAvailableHolidayCalendarsWithResultsBlock_completionBlock_queue___block_invoke_244;
    block[3] = &unk_27851FF28;
    block[4] = v10;
    v17 = v7;
    v18 = v9;
    v12 = v7;
    dispatch_sync(v11, block);
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    [v13 finishedWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)processFolderChange:(id)a3 forAccountWithID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ExchangeSyncExpressLibraryCore())
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Process folder change on exchangesyncd for accountID %{public}@", &v12, 0xCu);
    }

    v8 = [getESDConnectionClass() sharedConnection];
    v9 = [v8 processFolderChange:v5 forAccountWithID:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
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
  v6 = [(DADConnection *)self _connection];
  v7 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __30__DADConnection_statusReports__block_invoke;
  handler[3] = &unk_278520170;
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

void __30__DADConnection_statusReports__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x22AA4EF10]() == MEMORY[0x277D86468])
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
        v13 = "[DADConnection statusReports]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_ERROR, "Server error in %s communicating with daemon: %@", &v12, 0x16u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reallyRegisterForInterrogation
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_statusReportBlock && ![(DADConnection *)self registered])
  {
    [(DADConnection *)self setRegistered:1];
    v3 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_INFO, "Sending message: kDAERegisterForInterrogation", v8, 2u);
    }

    v9 = @"kDAEMessageNameKey";
    v10[0] = @"kDAERegisterForInterrogation";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    v6 = [(DADConnection *)self _connection];
    xpc_connection_send_message(v6, v5);
  }

  v7 = *MEMORY[0x277D85DE8];
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

    v7 = _Block_copy(v6);
    statusReportBlock = self->_statusReportBlock;
    self->_statusReportBlock = v7;
  }

  return 1;
}

- (void)fillOutCurrentEASTimeZoneInfo
{
  if (ExchangeSyncExpressLibraryCore())
  {
    v2 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Fill out current EAS timezone info on exchangesyncd", v4, 2u);
    }

    v3 = [getESDConnectionClass() sharedConnection];
    [v3 fillOutCurrentEASTimeZoneInfo];
  }
}

- (id)activeSyncDeviceIdentifier
{
  if (ExchangeSyncExpressLibraryCore())
  {
    v2 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Get active sync device identifier on exchangesyncd", v6, 2u);
    }

    v3 = [getESDConnectionClass() sharedConnection];
    v4 = [v3 activeSyncDeviceIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __71__DADConnection__performOofSettingsRequest_forAccountWithID_forUpdate___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2243BD000, v2, OS_LOG_TYPE_DEBUG, "Adding to inflight dictionary: oof %@ request %@ for key %@", &v8, 0x20u);
  }

  result = [*(*(a1 + 48) + 112) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 40)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)retrieveOofSettingsRequest:(id)a3 forAccountWithID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ExchangeSyncExpressLibraryCore())
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Retrieve OOF settings on exchangesyncd for accountID %{public}@", &v12, 0xCu);
    }

    v8 = [getESDConnectionClass() sharedConnection];
    v9 = [v8 retrieveOofSettingsRequest:v5 forAccountWithID:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)updateOofSettingsRequest:(id)a3 forAccountWithID:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ExchangeSyncExpressLibraryCore())
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Update OOF settings on exchangesyncd for accountID %{public}@", &v12, 0xCu);
    }

    v8 = [getESDConnectionClass() sharedConnection];
    v9 = [v8 updateOofSettingsRequest:v5 forAccountWithID:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)isOofSettingsSupportedForAccountWithID:(id)a3 completionBlock:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ExchangeSyncExpressLibraryCore())
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Checking OOF supported on exchangesyncd for accountID %{public}@", &v10, 0xCu);
    }

    v8 = [getESDConnectionClass() sharedConnection];
    [v8 isOofSettingsSupportedForAccountWithID:v5 completionBlock:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)requestCalendarAvailabilityWithAccountID:(id)a3 startDate:(id)a4 endDate:(id)a5 ignoredEventID:(id)a6 addresses:(id)a7 resultsBlock:(id)a8 completionBlock:(id)a9
{
  v77 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v50 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy_;
  v65 = __Block_byref_object_dispose_;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  if (!v15)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v68 = 0;
      v22 = "Invalid 'accountID' provided: [%{public}@].";
      v23 = v21;
      v24 = 12;
      goto LABEL_9;
    }

LABEL_10:

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    goto LABEL_11;
  }

  if (!v16 || !v17 || [v16 compare:v17] == 1)
  {
    v21 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v68 = v16;
      v69 = 2112;
      v70 = v17;
      v22 = "Invalid 'startDate' [%@] and/or 'endDate' [%@] provided.";
      v23 = v21;
      v24 = 22;
LABEL_9:
      _os_log_impl(&dword_2243BD000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v18 && [v18 count])
  {
    v39 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544386;
      v68 = v15;
      v69 = 2112;
      v70 = v16;
      v71 = 2112;
      v72 = v17;
      v73 = 2112;
      v74 = v50;
      v75 = 2112;
      v76 = v18;
      _os_log_impl(&dword_2243BD000, v39, OS_LOG_TYPE_DEBUG, "Preparing calendar availability request.  accountID: [%{public}@] startDate: [%@] endDate: [%@] ignoredEventID: [%@] addresses: [%@]", buf, 0x34u);
    }

    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v40 setObject:@"kDAERequestCalendarAvailability" forKey:@"kDAEMessageNameKey"];
    [v40 setObject:v15 forKey:@"kDAEAccountIdKey"];
    [v40 setObject:v16 forKey:@"kDAEStartDateKey"];
    [v40 setObject:v17 forKey:@"kDAEEndDateKey"];
    [v40 setObject:v18 forKey:@"kDAEAddressesKey"];
    if (v50)
    {
      [v40 setObject:v50 forKey:@"kDAEIgnoredEventIDKey"];
    }

    v48 = v20;
    v52 = v48;
    v53[1] = &v61;
    v41 = v19;
    v53[0] = v41;
    v51 = v40;
    v53[2] = &v57;
    v35 = v51;
    [DADConnection _sendXPCMessageSynchronous:"_sendXPCMessageSynchronous:withParameters:handlerBlock:" withParameters:1 handlerBlock:?];
    if (*(v58 + 24) == 1 && ExchangeSyncExpressLibraryCore())
    {
      v42 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v68 = v15;
        _os_log_impl(&dword_2243BD000, v42, OS_LOG_TYPE_DEBUG, "Retry request calendar availability on exchangesyncd for accountID %{public}@", buf, 0xCu);
      }

      v43 = [getESDConnectionClass() sharedConnection];
      v44 = [v43 requestCalendarAvailabilityWithAccountID:v15 startDate:v16 endDate:v17 ignoredEventID:v50 addresses:v18 resultsBlock:v41 completionBlock:v48];
      v45 = v62[5];
      v62[5] = v44;
    }

    v33 = v20;
    v47 = v17;
    *type = v16;
    v28 = v15;
    v29 = v18;
    v30 = v19;
    v25 = 0;
    v32 = &v52;
    v34 = v53;
    goto LABEL_15;
  }

  v46 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v46, OS_LOG_TYPE_DEBUG, "No 'addresses' provided.", buf, 2u);
  }

  v25 = 0;
LABEL_11:
  v26 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v26, OS_LOG_TYPE_DEFAULT, "Will not issue calendar availability request.", buf, 2u);
  }

  if (v20)
  {
    v27 = v20;
    v47 = v17;
    *type = v16;
    v28 = v15;
    v29 = v18;
    v30 = v19;
    v31 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v32 = &v56;
    v33 = v27;
    v56 = v27;
    v34 = &v55;
    v25 = v25;
    v55 = v25;
    v35 = v31;
    dispatch_async(v31, block);
LABEL_15:

    v18 = v29;
    v15 = v28;
    v17 = v47;
    v16 = *type;
    v19 = v30;
    v20 = v33;
  }

  v36 = v62[5];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_251(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
  if (v4)
  {
    v5 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v25 = v4;
      _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
    }

    *(*(a1[9] + 8) + 24) = 1;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
    v7 = [v6 integerValue];
    if (v6)
    {
      v8 = v7 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
      v10 = *(a1[8] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [[DAECalendarAvailabilityContext alloc] initWithResultsBlock:a1[7] completionBlock:a1[6]];
      v13 = a1[4];
      [objc_opt_class() _logRequestID:*(*(a1[8] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v12];
      v14 = a1[4];
      v15 = *(v14 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __130__DADConnection_requestCalendarAvailabilityWithAccountID_startDate_endDate_ignoredEventID_addresses_resultsBlock_completionBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v16 = a1[8];
      v22 = v12;
      v23 = v16;
      block[4] = v14;
      v17 = v12;
      dispatch_sync(v15, block);
    }

    else
    {
      v18 = a1[6];
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v7 userInfo:0];
      (*(v18 + 16))(v18, v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v23[0] = @"kDAEMessageNameKey";
    v23[1] = @"kDAECalendarAvailabilityRequestIDKey";
    v24[0] = @"kDAECancelCalendarAvailabilityRequest";
    v24[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke;
    block[3] = &unk_278520038;
    v14 = buf;
    block[4] = self;
    v8 = v5;
    v13 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v16 + 5))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v16 + 5) finishedWithError:v9];
    }

    else
    {
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v21 = 138412290;
        v22 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Retry canceling calendar availability request on exchangesyncd for requestID %@", v21, 0xCu);
      }

      v9 = [getESDConnectionClass() sharedConnection];
      [v9 cancelCalendarAvailabilityRequestWithID:v8];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DADConnection_cancelCalendarAvailabilityRequestWithID___block_invoke(void *a1)
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
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __61__DADConnection__calendarAvailabilityRequestReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v21 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) resultsReturned:v14];

  _Block_object_dispose(&buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __61__DADConnection__calendarAvailabilityRequestReturnedResults___block_invoke(void *a1)
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
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarAvailabilityRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DADConnection__calendarAvailabilityRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __54__DADConnection__calendarAvailabilityRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 80);

  return [v6 removeObjectForKey:v5];
}

- (id)downloadSubscribedCalendarWithURL:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v11 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "nil delegate given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately";
LABEL_9:
    _os_log_impl(&dword_2243BD000, &v11->super, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_13;
  }

  if (!v9)
  {
    v11 = DALoggingwithCategory(0);
    if (!os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v15 = "nil queue given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately.";
    goto LABEL_9;
  }

  v11 = objc_alloc_init(DAESubscriptionCalendarDownloadContext);
  [(DAESubscriptionCalendarDownloadContext *)v11 setQueue:v9];
  [(DAESubscriptionCalendarDownloadContext *)v11 setDelegate:v10];
  if (v8)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v12 setObject:@"kDAEDownloadSubscribedCalendar" forKey:@"kDAEMessageNameKey"];
    [v12 setObject:v8 forKey:@"kDAESubCalDownloadURLKey"];
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_2;
    v18[3] = &unk_278520230;
    v11 = v11;
    v22 = buf;
    v19 = v11;
    v20 = self;
    v13 = v12;
    v21 = v13;
    [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v13 handlerBlock:v18];
    v14 = *(v24 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_14;
  }

  v16 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_ERROR, "nil subscription URL given to downloadSubscribedCalendarWithURL:queue:delegate:. Failing immediately.", buf, 2u);
  }

  [(DAESubscriptionCalendarDownloadContext *)v11 callOutToDelegate:&__block_literal_global_256];
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

void __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = a2;
  v4 = [v2 errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
  [v3 subscribedCalendarFailedWithError:v4];
}

void __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = a1[5];
    [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[6] associatedContext:a1[4]];
    v11 = a1[4];
    v12 = a1[5];
    v13 = *(v12 + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_4;
    v18[3] = &unk_278520088;
    v14 = a1[7];
    v18[4] = v12;
    v20 = v14;
    v19 = v11;
    dispatch_sync(v13, v18);
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    v16 = a1[4];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__DADConnection_downloadSubscribedCalendarWithURL_queue_delegate___block_invoke_3;
    v21[3] = &unk_27851FF78;
    v22 = v15;
    v17 = v15;
    [v16 callOutToDelegate:v21];
  }
}

- (void)cancelDownloadingSubscriptionCalendarWithDownloadID:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v23[0] = @"kDAEMessageNameKey";
    v23[1] = @"kDAESubCalDownloadRequestIDKey";
    v24[0] = @"kDAECancelDownloadSubscribedCalendar";
    v24[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v18 = buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke;
    block[3] = &unk_278520038;
    v16 = buf;
    block[4] = self;
    v15 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v18 + 5))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      v9 = *(v18 + 5);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke_2;
      v12[3] = &unk_27851FF78;
      v10 = v8;
      v13 = v10;
      [v9 callOutToDelegate:v12];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __69__DADConnection_cancelDownloadingSubscriptionCalendarWithDownloadID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 144);

  return [v6 removeObjectForKey:v5];
}

- (void)_downloadSubscribedCalendarProgress:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEDownloadedBytesKey"];
  v8 = [v7 longLongValue];

  v9 = [v5 objectForKeyedSubscript:@"kDAETotalBytesKey"];
  v10 = [v9 longLongValue];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke;
  block[3] = &unk_278520038;
  v17 = &v18;
  block[4] = self;
  v12 = v6;
  v16 = v12;
  dispatch_sync(muckingWithInFlightCollections, block);
  v13 = v19[5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke_2;
  v14[3] = &__block_descriptor_48_e49_v16__0___DAESubscribedCalendarDownloadDelegate__8l;
  v14[4] = v8;
  v14[5] = v10;
  [v13 callOutToDelegate:v14];

  _Block_object_dispose(&v18, 8);
}

uint64_t __53__DADConnection__downloadSubscribedCalendarProgress___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_downloadSubscribedCalendarFinished:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v20 = [v4 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v5 = [v4 objectForKeyedSubscript:@"kDAESubCalDownloadSummaryDataKey"];
  if (v5)
  {
    v28 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v28];
    v7 = v28;
    if (!v6)
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "Error unarchiving subcal summary data: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  if (v9)
  {
    v27 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v27];
    v11 = v27;
    if (!v10)
    {
      v12 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_ERROR, "Error unarchiving subcal download error: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (!(v5 | v10))
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
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
  block[2] = __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v14 = v20;
  v25 = v14;
  dispatch_sync(muckingWithInFlightCollections, block);
  v15 = *(*(&buf + 1) + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke_2;
  v21[3] = &unk_278520278;
  v16 = v6;
  v22 = v16;
  v17 = v10;
  v23 = v17;
  [v15 callOutToDelegate:v21];

  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 144);

  return [v6 removeObjectForKey:v5];
}

uint64_t __53__DADConnection__downloadSubscribedCalendarFinished___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return [a2 subscribedCalendarDidFinishLoading:?];
  }

  else
  {
    return [a2 subscribedCalendarFailedWithError:*(a1 + 40)];
  }
}

- (void)_downloadSubscribedCalendarRequiresPassword:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAESubCalDownloadURLKey"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke;
  block[3] = &unk_278520038;
  v19 = &v20;
  block[4] = self;
  v9 = v6;
  v18 = v9;
  dispatch_sync(muckingWithInFlightCollections, block);
  v10 = v21[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_2;
  v13[3] = &unk_2785202C8;
  v11 = v7;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  v16 = self;
  [v10 callOutToDelegate:v13];

  _Block_object_dispose(&v20, 8);
}

uint64_t __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_3;
  v7[3] = &unk_2785202A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  [a2 subscribedCalendarRequiresPassword:v4 withContinuation:v7];
}

void __61__DADConnection__downloadSubscribedCalendarRequiresPassword___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14[4] = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v13[0] = @"kDAEMessageNameKey";
    v13[1] = @"kDAESubCalDownloadRequestIDKey";
    v5 = *(a1 + 32);
    v14[0] = @"kDAESetPasswordForSubscribedCalendar";
    v14[1] = v5;
    v13[2] = @"kDAESubCalUsernameKey";
    v13[3] = @"kDAESubCalPasswordKey";
    v14[2] = a2;
    v14[3] = a3;
    v6 = MEMORY[0x277CBEAC0];
    v7 = a3;
    v8 = a2;
    v9 = [v6 dictionaryWithObjects:v14 forKeys:v13 count:4];
    [*(a1 + 40) _sendXPCMessageSynchronous:0 withParameters:v9 handlerBlock:0];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8 = a3;
    v9 = a2;
    [v11 cancelDownloadingSubscriptionCalendarWithDownloadID:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)validateCandidateSubscriptionURLWithICloud:(id)a3 queue:(id)a4 completionBlock:(id)a5
{
  v6 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__DADConnection_validateCandidateSubscriptionURLWithICloud_queue_completionBlock___block_invoke;
  block[3] = &unk_2785202F0;
  v9 = v6;
  v7 = v6;
  dispatch_async(a4, block);
}

- (id)requestGrantedDelegatesListForAccountID:(id)a3 resultsBlock:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (v6)
  {
    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Preparing granted delegates list request for accountID: [%{public}@]", buf, 0xCu);
    }

    v32[0] = @"kDAEMessageNameKey";
    v32[1] = @"kDAEAccountIdKey";
    v33[0] = @"kDAERequestGrantedDelegatesList";
    v33[1] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke;
    v17[3] = &unk_278520318;
    v10 = v7;
    v19 = v10;
    v20 = &v26;
    v17[4] = self;
    v11 = v9;
    v18 = v11;
    v21 = &v22;
    [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v11 handlerBlock:v17];
    if (*(v23 + 24) == 1)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:15 userInfo:0];
      (*(v10 + 2))(v10, 0, v12);
    }

    goto LABEL_11;
  }

  v13 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = 0;
    _os_log_impl(&dword_2243BD000, v13, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(v7 + 2))(v7, 0, v11);
LABEL_11:
  }

  v14 = v27[5];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v9)
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v24 = v9;
        _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      *(*(a1[8] + 8) + 24) = 1;
    }

    else
    {
      v10 = [v3 objectForKeyedSubscript:@"kDAEGrantedDelegatesListRequestIDKey"];
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = [[DAEGrantedDelegatesListContext alloc] initWithResultsBlock:a1[6]];
      v14 = a1[4];
      [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v13];
      v15 = a1[4];
      v16 = *(v15 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__DADConnection_requestGrantedDelegatesListForAccountID_resultsBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v17 = a1[7];
      v21 = v13;
      v22 = v17;
      block[4] = v15;
      v18 = v13;
      dispatch_sync(v16, block);
    }
  }

  else
  {
    v8 = a1[6];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v8 + 16))(v8, 0, v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v19[0] = @"kDAEMessageNameKey";
    v19[1] = @"kDAEGrantedDelegatesListRequestIDKey";
    v20[0] = @"kDAECancelGrantedDelegatesListRequest";
    v20[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DADConnection_cancelGrantedDelegatesListRequestWithID___block_invoke;
    block[3] = &unk_278520038;
    v12 = buf;
    block[4] = self;
    v11 = v5;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v14 + 5))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v14 + 5) finishedWithResults:0 error:v8];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'requestID' provided.  Will not cancel any calendar availability requests.", buf, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DADConnection_cancelGrantedDelegatesListRequestWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 128);

  return [v6 removeObjectForKey:v5];
}

- (void)_grantedDelegatesListRequestFinished:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  v5 = [v4 objectForKeyedSubscript:@"kDAEGrantedDelegatesListRequestIDKey"];
  v6 = [v4 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v7 = [(DADConnection *)self decodedErrorFromData:v6];
  v8 = [v4 objectForKeyedSubscript:@"kDAEGrantedDelegatesListResultsKey"];
  v9 = MEMORY[0x277CCAAC8];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v23 = 0;
  v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v23];
  v14 = v23;

  if (!v13)
  {
    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __54__DADConnection__grantedDelegatesListRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v17 = v5;
  v21 = v17;
  dispatch_sync(muckingWithInFlightCollections, block);
  [*(*(&buf + 1) + 40) finishedWithResults:v13 error:v7];

  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __54__DADConnection__grantedDelegatesListRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 128);

  return [v6 removeObjectForKey:v5];
}

- (id)updateGrantedDelegateForAccountID:(id)a3 grantedDelegate:(id)a4 action:(int64_t)a5 resultsBlock:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  if (v9)
  {
    v12 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v10 uri];
      v14 = [v10 permission];
      *buf = 138543874;
      v41 = v9;
      v42 = 2112;
      v43 = v13;
      v44 = 2048;
      v45 = v14;
      _os_log_impl(&dword_2243BD000, v12, OS_LOG_TYPE_DEBUG, "Preparing update granted delegate permission for accountID: [%{public}@], delegate uri: %@, permission: %ld", buf, 0x20u);
    }

    v29 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v29];
    v16 = v29;
    if (v16)
    {
      v17 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v10 uri];
        *buf = 138412290;
        v41 = v18;
        _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_DEFAULT, "Unable to encode granted delegate with URI: %@", buf, 0xCu);
      }
    }

    else
    {
      v38[0] = @"kDAEMessageNameKey";
      v38[1] = @"kDAEAccountIdKey";
      v39[0] = @"kDAEUpdateGrantedDelegatePermissionRequest";
      v39[1] = v9;
      v38[2] = @"kDAEGrantedDelegateKey";
      v39[2] = v15;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke;
      v24[3] = &unk_278520318;
      v26 = v11;
      v27 = &v32;
      v24[4] = self;
      v17 = v20;
      v25 = v17;
      v28 = v30;
      [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v17 handlerBlock:v24];
    }

    goto LABEL_13;
  }

  v19 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = 0;
    _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  if (v11)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
    (*(v11 + 2))(v11, v16);
LABEL_13:
  }

  v21 = v33[5];
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v8)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }

    else
    {
      v9 = [v3 objectForKeyedSubscript:@"kDAEUpdateGrantedDelegatePermissionRequestIDKey"];
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [[DAEUpdateGrantedDelegatePermissionContext alloc] initWithResultsBlock:a1[6]];
      v13 = a1[4];
      [objc_opt_class() _logRequestID:*(*(a1[7] + 8) + 40) forRequestAttributes:a1[5] associatedContext:v12];
      v14 = a1[4];
      v15 = *(v14 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__DADConnection_updateGrantedDelegateForAccountID_grantedDelegate_action_resultsBlock___block_invoke_2;
      block[3] = &unk_278520088;
      v16 = a1[7];
      v19 = v12;
      v20 = v16;
      block[4] = v14;
      v17 = v12;
      dispatch_sync(v15, block);
    }
  }

  else
  {
    v7 = a1[6];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)addExchangeDelegateWithName:(id)a3 emailAddress:(id)a4 toAccountWithID:(id)a5 completion:(id)a6
{
  v6 = a6;
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "Exchange delegates are not supported on this platform", v9, 2u);
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  v6[2](v6, 0, -1, v8);
}

- (void)removeExchangeDelegateWithSourceID:(id)a3 fromParentAccountWithID:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_ERROR, "Exchange delegates are not supported on this platform", v8, 2u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:10 userInfo:0];
  v5[2](v5, 0, v7);
}

- (void)_updateGrantedDelegatePermissionRequestFinished:(id)a3
{
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEUpdateGrantedDelegatePermissionRequestIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DADConnection__updateGrantedDelegatePermissionRequestFinished___block_invoke;
  block[3] = &unk_278520038;
  v13 = &v14;
  block[4] = self;
  v10 = v6;
  v12 = v10;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v15[5] finishedWithError:v8];

  _Block_object_dispose(&v14, 8);
}

uint64_t __65__DADConnection__updateGrantedDelegatePermissionRequestFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 136) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 136);

  return [v6 removeObjectForKey:v5];
}

- (id)performCalendarDirectorySearchWithAccountID:(id)a3 terms:(id)a4 recordTypes:(id)a5 resultLimit:(unint64_t)a6 resultsBlock:(id)a7 completionBlock:(id)a8
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (v14)
  {
    if (v15 && [v15 count])
    {
      if (v16 && [v16 count])
      {
        v19 = DALoggingwithCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138544130;
          v60 = v14;
          v61 = 2112;
          v62 = v16;
          v63 = 2048;
          v64 = a6;
          v65 = 2112;
          v66 = v15;
          _os_log_impl(&dword_2243BD000, v19, OS_LOG_TYPE_DEBUG, "Preparing calendar directory search.  accountID: [%{public}@] recordTypes:[%@] resultLimit: [%lu] terms: [%@]", buf, 0x2Au);
        }

        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v20 setObject:@"kDAEPerformCalendarDirectorySearch" forKey:@"kDAEMessageNameKey"];
        [v20 setObject:v14 forKey:@"kDAEAccountIdKey"];
        v21 = [v15 allObjects];
        [v20 setObject:v21 forKey:@"kDAECalendarDirectorySearchTermsKey"];

        v22 = [v16 allObjects];
        [v20 setObject:v22 forKey:@"kDAECalendarDirectorySearchRecordTypesKey"];

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
        [v20 setObject:v23 forKey:@"kDAECalendarDirectorySearchResultLimitKey"];

        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_263;
        v41[3] = &unk_2785201E8;
        v40 = v18;
        v44 = v40;
        v45[1] = &v53;
        v39 = v17;
        v45[0] = v39;
        v24 = v20;
        v42 = v24;
        v43 = self;
        v45[2] = &v49;
        [(DADConnection *)self _sendXPCMessageSynchronous:1 withParameters:v24 handlerBlock:v41];
        if (*(v50 + 24) == 1 && ExchangeSyncExpressLibraryCore())
        {
          v25 = DALoggingwithCategory(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v60 = v14;
            _os_log_impl(&dword_2243BD000, v25, OS_LOG_TYPE_DEBUG, "Retry calendar directory search on exchangesyncd for accountID %{public}@", buf, 0xCu);
          }

          v26 = [getESDConnectionClass() sharedConnection];
          v27 = [v26 performCalendarDirectorySearchWithAccountID:v14 terms:v15 recordTypes:v16 resultLimit:a6 resultsBlock:v39 completionBlock:v40];
          v28 = v54[5];
          v54[5] = v27;
        }

        v29 = 0;
        v30 = &v44;
        v31 = v45;
        goto LABEL_27;
      }

      v32 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v33 = "No 'recordTypes' provided.";
    }

    else
    {
      v32 = DALoggingwithCategory(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

        v29 = 0;
        goto LABEL_23;
      }

      *buf = 0;
      v33 = "No 'terms' provided.";
    }

    _os_log_impl(&dword_2243BD000, v32, OS_LOG_TYPE_DEBUG, v33, buf, 2u);
    goto LABEL_22;
  }

  v34 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = 0;
    _os_log_impl(&dword_2243BD000, v34, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
  }

  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
LABEL_23:
  v35 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v35, OS_LOG_TYPE_DEFAULT, "Will not issue calendar directory search.", buf, 2u);
  }

  if (v18)
  {
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v30 = &v48;
    v48 = v18;
    v31 = &v47;
    v29 = v29;
    v47 = v29;
    dispatch_async(v24, block);
LABEL_27:
  }

  v36 = v54[5];

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_263(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v9)
    {
      v7 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v26 = v9;
        _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      *(*(a1[9] + 8) + 24) = 1;
    }

    else
    {
      v10 = [v3 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
      v11 = *(a1[8] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = [[DAECalendarDirectorySearchContext alloc] initWithResultsBlock:a1[7] completionBlock:a1[6]];
      v14 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1[8] + 8) + 40);
        v16 = a1[4];
        *buf = 138412802;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_2243BD000, v14, OS_LOG_TYPE_DEBUG, "Received search ID [%@] for search with attributes: [%@].  Associated context: [%@]", buf, 0x20u);
      }

      v17 = a1[5];
      v18 = *(v17 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __120__DADConnection_performCalendarDirectorySearchWithAccountID_terms_recordTypes_resultLimit_resultsBlock_completionBlock___block_invoke_265;
      block[3] = &unk_278520088;
      v19 = a1[8];
      v23 = v13;
      v24 = v19;
      block[4] = v17;
      v20 = v13;
      dispatch_sync(v18, block);
    }
  }

  else
  {
    v8 = a1[6];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v8 + 16))(v8, v9, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)cancelCalendarDirectorySearchWithID:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v24[0] = @"kDAEMessageNameKey";
    v24[1] = @"kDAECalendarDirectorySearchIDKey";
    v25[0] = @"kDAECancelCalendarDirectorySearch";
    v25[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v6 handlerBlock:0];
    *v16 = 0;
    v17 = v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    muckingWithInFlightCollections = self->_muckingWithInFlightCollections;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__DADConnection_cancelCalendarDirectorySearchWithID___block_invoke;
    block[3] = &unk_278520038;
    v15 = v16;
    block[4] = self;
    v8 = v5;
    v14 = v8;
    dispatch_sync(muckingWithInFlightCollections, block);
    if (*(v17 + 5))
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:-1 userInfo:0];
      [*(v17 + 5) finishedWithError:v9 exceededResultLimit:0];
      v10 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_2243BD000, v10, OS_LOG_TYPE_DEBUG, "Cancelled calendar directory search with ID: [%@].", buf, 0xCu);
      }
    }

    else
    {
      if (!ExchangeSyncExpressLibraryCore())
      {
LABEL_13:

        _Block_object_dispose(v16, 8);
        goto LABEL_14;
      }

      v11 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Retry canceling calendar directory search on exchangesyncd for searchID %@", buf, 0xCu);
      }

      v9 = [getESDConnectionClass() sharedConnection];
      [v9 cancelCalendarDirectorySearchWithID:v8];
    }

    goto LABEL_13;
  }

  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v16 = 0;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "nil 'searchID' provided.  Will not cancel any calendar directory searches.", v16, 2u);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __53__DADConnection_cancelCalendarDirectorySearchWithID___block_invoke(void *a1)
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
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v26 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  v19 = [v14 count];
  v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v19];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke_2;
  v23[3] = &unk_278520340;
  v21 = v20;
  v24 = v21;
  [v14 enumerateKeysAndObjectsUsingBlock:v23];
  [*(*(&buf + 1) + 40) resultsReturned:v21];

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __57__DADConnection__calendarDirectorySearchReturnedResults___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v6 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAEErrorDataKey"];
  v8 = [(DADConnection *)self decodedErrorFromData:v7];
  v9 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchExceededResultLimitKey"];
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
  block[2] = __50__DADConnection__calendarDirectorySearchFinished___block_invoke;
  block[3] = &unk_278520038;
  v16 = &v17;
  block[4] = self;
  v13 = v6;
  v15 = v13;
  dispatch_sync(muckingWithInFlightCollections, block);
  [v18[5] finishedWithError:v8 exceededResultLimit:v11];

  _Block_object_dispose(&v17, 8);
}

uint64_t __50__DADConnection__calendarDirectorySearchFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 88);

  return [v6 removeObjectForKey:v5];
}

- (void)performGroupExpansionWithAccountID:(id)a3 principalPath:(id)a4 completionBlock:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9 && [v9 length])
    {
      v11 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_2243BD000, v11, OS_LOG_TYPE_DEBUG, "Preparing group expansion.  accountID: [%{public}@]  principalPath: [%@]", buf, 0x16u);
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v12 setObject:@"kDAEPerformGroupExpansion" forKey:@"kDAEMessageNameKey"];
      [v12 setObject:v8 forKey:@"kDAEAccountIdKey"];
      [v12 setObject:v9 forKey:@"kDAEGroupExpansionPrincipalPathKey"];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_268;
      v19[3] = &unk_278520368;
      v13 = &v20;
      v19[4] = self;
      v20 = v10;
      [(DADConnection *)self _sendXPCMessageSynchronous:0 withParameters:v12 handlerBlock:v19];
      v14 = 0;
      goto LABEL_17;
    }

    v15 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2243BD000, v15, OS_LOG_TYPE_DEBUG, "No 'principalPath' provided.", buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = 0;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Invalid 'accountID' provided: [%{public}@].", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:93 userInfo:0];
  }

  v17 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2243BD000, v17, OS_LOG_TYPE_DEFAULT, "Will not do group expansion.", buf, 2u);
  }

  if (v10)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke;
    block[3] = &unk_2785201C0;
    v13 = &v23;
    v23 = v10;
    v14 = v14;
    v22 = v14;
    dispatch_async(v12, block);

LABEL_17:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_268(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"kDAEStatusKey"];
  v5 = [v4 integerValue];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kDAEInvalidAccountIDKey"];
    if (v7)
    {
      v8 = DALoggingwithCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "The accountID %{public}@ is invalid for dataaccessd", buf, 0xCu);
      }

      v9 = *(a1 + 40);
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:15 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      v13 = [v3 objectForKeyedSubscript:@"kDAEGroupExpansionIDKey"];
      v14 = [[DAEGroupExpansionContext alloc] initWithCompletionBlock:*(a1 + 40)];
      v15 = *(a1 + 32);
      v16 = *(v15 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__DADConnection_performGroupExpansionWithAccountID_principalPath_completionBlock___block_invoke_2;
      block[3] = &unk_27851FF28;
      block[4] = v15;
      v20 = v13;
      v21 = v14;
      v17 = v14;
      v10 = v13;
      dispatch_sync(v16, block);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DAErrorDomain" code:v5 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_groupExpansionFinished:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEGroupExpansionIDKey"];
  v7 = [v5 objectForKeyedSubscript:@"kDAECalendarDirectorySearchResultsKey"];
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
    v16 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_2243BD000, v16, OS_LOG_TYPE_DEFAULT, "Unable to decode results: %@", &buf, 0xCu);
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
  block[2] = __41__DADConnection__groupExpansionFinished___block_invoke;
  block[3] = &unk_278520038;
  p_buf = &buf;
  block[4] = self;
  v18 = v6;
  v27 = v18;
  dispatch_sync(muckingWithInFlightCollections, block);
  if (v15 || ([v5 objectForKeyedSubscript:@"kDAEErrorDataKey"], v19 = objc_claimAutoreleasedReturnValue(), -[DADConnection decodedErrorFromData:](self, "decodedErrorFromData:", v19), v15 = objc_claimAutoreleasedReturnValue(), v19, v15))
  {
    [*(*(&buf + 1) + 40) finishedWithError:v15];
  }

  else
  {
    v21 = [v14 count];
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v21];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __41__DADConnection__groupExpansionFinished___block_invoke_2;
    v24[3] = &unk_278520340;
    v23 = v22;
    v25 = v23;
    [v14 enumerateKeysAndObjectsUsingBlock:v24];
    [*(*(&buf + 1) + 40) setResults:v23];
    [*(*(&buf + 1) + 40) finishedWithError:0];

    v15 = 0;
  }

  _Block_object_dispose(&buf, 8);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __41__DADConnection__groupExpansionFinished___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 96) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 96);

  return [v6 removeObjectForKey:v5];
}

void __41__DADConnection__groupExpansionFinished___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithArray:v6];

  [*(a1 + 32) setObject:v8 forKey:v7];
}

- (DADConnection)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Should never call -init on DADConnection.  Use +sharedConnection... instead." userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_init
{
  v40.receiver = self;
  v40.super_class = DADConnection;
  v2 = [(DADConnection *)&v40 init];
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
    inFlightGrantedDelegatesListRequests = v2->_inFlightGrantedDelegatesListRequests;
    v2->_inFlightGrantedDelegatesListRequests = v19;

    v21 = objc_opt_new();
    inFlightUpdateGrantedDelegatePermissionRequests = v2->_inFlightUpdateGrantedDelegatePermissionRequests;
    v2->_inFlightUpdateGrantedDelegatePermissionRequests = v21;

    v23 = objc_opt_new();
    inFlightCalendarDirectorySearches = v2->_inFlightCalendarDirectorySearches;
    v2->_inFlightCalendarDirectorySearches = v23;

    v25 = objc_opt_new();
    inFlightGroupExpansions = v2->_inFlightGroupExpansions;
    v2->_inFlightGroupExpansions = v25;

    v27 = objc_opt_new();
    inFlightShareRequests = v2->_inFlightShareRequests;
    v2->_inFlightShareRequests = v27;

    v29 = objc_opt_new();
    inFlightOofSettingsRequests = v2->_inFlightOofSettingsRequests;
    v2->_inFlightOofSettingsRequests = v29;

    v31 = objc_opt_new();
    inFlightOfficeHoursRequests = v2->_inFlightOfficeHoursRequests;
    v2->_inFlightOfficeHoursRequests = v31;

    v33 = objc_opt_new();
    inFlightSubscribedCalendarDownloads = v2->_inFlightSubscribedCalendarDownloads;
    v2->_inFlightSubscribedCalendarDownloads = v33;

    v35 = objc_opt_new();
    inFlightSubscribedCalendarJunkChecks = v2->_inFlightSubscribedCalendarJunkChecks;
    v2->_inFlightSubscribedCalendarJunkChecks = v35;

    v37 = objc_opt_new();
    inFlightHolidayCalendarFetches = v2->_inFlightHolidayCalendarFetches;
    v2->_inFlightHolidayCalendarFetches = v37;

    [(DADConnection *)v2 _registerForAppResumedNotification];
  }

  return v2;
}

- (void)dealloc
{
  [(DADConnection *)self _tearDownInFlightObjects];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DADConnection;
  [(DADConnection *)&v4 dealloc];
}

- (void)_resetCertWarningsForAccountId:(id)a3 andDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    accountIdsWithAlreadyResetCerts = self->_accountIdsWithAlreadyResetCerts;
    *buf = 138543362;
    v22 = accountIdsWithAlreadyResetCerts;
    _os_log_impl(&dword_2243BD000, v9, OS_LOG_TYPE_DEBUG, "in _resetCertWarningsForAccount, _accountIdsWithAlreadyResetCerts is %{public}@", buf, 0xCu);
  }

  v11 = self;
  objc_sync_enter(v11);
  if (v8)
  {
    v12 = [(NSMutableSet *)v11->_accountIdsWithAlreadyResetCerts containsObject:v8]^ 1;
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v11);

  if (((v8 != 0) & (v12 | v5)) == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, @"kDAEMessageNameKey", @"kDAEAccountIdKey", @"kDAEDataclassesBitmaskKey", @"kDAEResetCertWarnings", v8}];
    v20[2] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:3];

    v15 = _CFXPCCreateXPCObjectFromCFObject();
    v16 = [(DADConnection *)v11 _connection];
    xpc_connection_send_message(v16, v15);

    v17 = v11;
    objc_sync_enter(v17);
    [v17[4] addObject:v8];
    objc_sync_exit(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_resetThrottleTimersForAccountId:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    Name = sel_getName(a2);
    accountIdsWithAlreadyResetThrottleTimers = self->_accountIdsWithAlreadyResetThrottleTimers;
    *buf = 136315394;
    v19 = Name;
    v20 = 2114;
    v21 = accountIdsWithAlreadyResetThrottleTimers;
    _os_log_impl(&dword_2243BD000, v6, OS_LOG_TYPE_DEBUG, "in %s, _accountIdsWithAlreadyResetThrottleTimers is %{public}@", buf, 0x16u);
  }

  v9 = self;
  objc_sync_enter(v9);
  if (!v5)
  {
    objc_sync_exit(v9);
    v11 = v9;
    goto LABEL_7;
  }

  v10 = [(NSMutableSet *)v9->_accountIdsWithAlreadyResetThrottleTimers containsObject:v5];
  objc_sync_exit(v9);

  if ((v10 & 1) == 0)
  {
    v16[0] = @"kDAEMessageNameKey";
    v16[1] = @"kDAEAccountIdKey";
    v17[0] = @"kDAEResetThrottleTimers";
    v17[1] = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    v13 = [(DADConnection *)v9 _connection];
    xpc_connection_send_message(v13, v12);

    v14 = v9;
    objc_sync_enter(v14);
    [(NSMutableSet *)v9->_accountIdsWithAlreadyResetThrottleTimers addObject:v5];
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
    _os_log_impl(&dword_2243BD000, v3, OS_LOG_TYPE_DEBUG, "Resetting shouldResetCertWarnings and throttle timers", v5, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_accountIdsWithAlreadyResetCerts removeAllObjects];
  [(NSMutableSet *)v4->_accountIdsWithAlreadyResetThrottleTimers removeAllObjects];
  objc_sync_exit(v4);
}

- (void)_registerForAppResumedNotification
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_resetTimersAndWarnings name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)_dispatchMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CFXPCCreateCFObjectFromXPCObject();
  v6 = [v5 objectForKeyedSubscript:@"kDAEMessageNameKey"];
  if ([v6 isEqualToString:@"kDAEFoldersUpdated"])
  {
    [(DADConnection *)self _foldersUpdated:v4];
  }

  else if ([v6 isEqualToString:@"kDAEPolicyKeyChanged"])
  {
    [(DADConnection *)self _policyKeyChanged:v4];
  }

  else if ([v6 isEqualToString:@"kDAELogDataAccessStatus"])
  {
    [(DADConnection *)self _logDataAccessStatus:v4];
  }

  else if ([v6 isEqualToString:@"kDAEServerContactsSearchQueryFinished"])
  {
    [(DADConnection *)self _serverContactsSearchQueryFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEFolderChangeFinished"])
  {
    [(DADConnection *)self _folderChangeFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEGetStatusReportsFromClient"])
  {
    [(DADConnection *)self _getStatusReportsFromClient:v4];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadProgress"])
  {
    [(DADConnection *)self _downloadProgress:v4];
  }

  else if ([v6 isEqualToString:@"kDAEAttachmentDownloadFinished"])
  {
    [(DADConnection *)self _downloadFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAECalendarShareResponseFinished"])
  {
    [(DADConnection *)self _shareResponseFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEOfficeHoursRequestFinished"])
  {
    [(DADConnection *)self _officeHoursRequestFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEOofSettingsFinished"])
  {
    [(DADConnection *)self _oofSettingsRequestsFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestReturnedResults"])
  {
    [(DADConnection *)self _calendarAvailabilityRequestReturnedResults:v4];
  }

  else if ([v6 isEqualToString:@"kDAECalendarAvailabilityRequestFinished"])
  {
    [(DADConnection *)self _calendarAvailabilityRequestFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEGrantedDelegatesListRequestFinished"])
  {
    [(DADConnection *)self _grantedDelegatesListRequestFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEUpdateGrantedDelegatePermissionRequestFinished"])
  {
    [(DADConnection *)self _updateGrantedDelegatePermissionRequestFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchReturnedResults"])
  {
    [(DADConnection *)self _calendarDirectorySearchReturnedResults:v4];
  }

  else if ([v6 isEqualToString:@"kDAECalendarDirectorySearchFinished"])
  {
    [(DADConnection *)self _calendarDirectorySearchFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEGroupExpansionFinished"])
  {
    [(DADConnection *)self _groupExpansionFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarProgress"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarProgress:v4];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarFinished"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEDownloadSubscribedCalendarPasswordRequired"])
  {
    [(DADConnection *)self _downloadSubscribedCalendarRequiresPassword:v4];
  }

  else if ([v6 isEqualToString:@"kDAECheckSubscribedCalendarIsJunkFinished"])
  {
    [(DADConnection *)self _subscriptionCalendarJunkCheckFinished:v4];
  }

  else if ([v6 isEqualToString:@"kDAEFetchHolidayCalendarsReturnedResults"])
  {
    [(DADConnection *)self _holidayCalendarFetchReturnedResults:v4];
  }

  else if ([v6 isEqualToString:@"kDAEFetchHolidayCalendarsFinished"])
  {
    [(DADConnection *)self _holidayCalendarFetchFinished:v4];
  }

  else
  {
    v7 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_ERROR, "unknown request sent to connection.", &v10, 2u);
    }

    v8 = DALoggingwithCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_ERROR, "request: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginCalDAVServerSimulationWithHostname:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEServerSimulatorHostnameKey";
  v11[0] = @"kDAEManageCalDAVServerSimulator";
  v11[1] = a3;
  v10[2] = @"kDAEServerSimulatorActionKey";
  v11[2] = @"kDAEServerSimulatorActionBegin";
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:3];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = [(DADConnection *)self _connection];
  xpc_connection_send_message(v8, v7);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endCalDAVServerSimulationWithHostname:(id)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"kDAEMessageNameKey";
  v10[1] = @"kDAEServerSimulatorHostnameKey";
  v11[0] = @"kDAEManageCalDAVServerSimulator";
  v11[1] = a3;
  v10[2] = @"kDAEServerSimulatorActionKey";
  v11[2] = @"kDAEServerSimulatorActionEnd";
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:3];

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = [(DADConnection *)self _connection];
  xpc_connection_send_message(v8, v7);

  v9 = *MEMORY[0x277D85DE8];
}

@end