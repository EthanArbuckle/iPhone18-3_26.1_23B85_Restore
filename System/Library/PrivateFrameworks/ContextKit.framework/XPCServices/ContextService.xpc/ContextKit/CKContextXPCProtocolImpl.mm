@interface CKContextXPCProtocolImpl
+ (id)dumpEnvironment;
+ (void)_shutdownServiceWithReply:(id)a3;
+ (void)initialize;
- (CKContextXPCProtocolImpl)initWithAssets:(id)a3;
- (id)_contextEngineInstance;
- (unint64_t)_totalDonationsToWaitForWithDonationState:(id)a3;
- (void)_findResultsForRequest:(id)a3 withReply:(id)a4 isServiceInternal:(BOOL)a5 transaction:(id)a6;
- (void)ancestorsForTopics:(id)a3 withReply:(id)a4;
- (void)capabilitiesForRequestType:(unint64_t)a3 withReply:(id)a4;
- (void)dealloc;
- (void)donate:(id)a3;
- (void)findCategorizationsForRequest:(id)a3 withReply:(id)a4;
- (void)findResultsForRequest:(id)a3 withReply:(id)a4;
- (void)groupResponses:(id)a3 withReply:(id)a4;
- (void)logEngagementForResponseId:(id)a3 result:(id)a4 rank:(unint64_t)a5 inputLength:(unint64_t)a6 completionLength:(unint64_t)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9;
- (void)logTransactionSuccessfulForResponseId:(id)a3 inputLength:(unint64_t)a4 completionLength:(unint64_t)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7;
- (void)shutdownServiceWithReply:(id)a3;
- (void)statusWithReply:(id)a3;
- (void)warmUpForRequestType:(unint64_t)a3 withReply:(id)a4;
@end

@implementation CKContextXPCProtocolImpl

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    pthread_mutex_init(&stru_1005571A8, 0);
    atomic_store(0, &qword_100557198);
    v2 = [[CKContextSemaphore alloc] initSemaphoreForXPCService];
    v3 = qword_1005571A0;
    qword_1005571A0 = v2;

    [qword_1005571A0 resetPending];
    if (notify_register_plain() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1002A42A0();
    }

    if (notify_set_state(dword_1005571E8, 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1002A4318();
      }
    }
  }
}

- (CKContextXPCProtocolImpl)initWithAssets:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = CKContextXPCProtocolImpl;
  v6 = [(CKContextXPCProtocolImpl *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assets, a3);
    v8 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:5];
    donationExecutorsMap = v7->_donationExecutorsMap;
    v7->_donationExecutorsMap = v8;

    v10 = [[CKContextUniversalRecentsManager alloc] initWithProtocolImpl:v7];
    recentsManager = v7->_recentsManager;
    v7->_recentsManager = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    processNameToScreenTimeRequestInfo = v7->_processNameToScreenTimeRequestInfo;
    v7->_processNameToScreenTimeRequestInfo = v12;

    v14 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v15 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v14];
    layoutMonitor = v7->_layoutMonitor;
    v7->_layoutMonitor = v15;

    v17 = dispatch_queue_create("com.apple.siri.context.service.ScreenTimeSupport", 0);
    screenTimeRequestQueue = v7->_screenTimeRequestQueue;
    v7->_screenTimeRequestQueue = v17;
  }

  return v7;
}

- (void)dealloc
{
  assets = self->_assets;
  self->_assets = 0;

  donationExecutorsMap = self->_donationExecutorsMap;
  self->_donationExecutorsMap = 0;

  processNameToScreenTimeRequestInfo = self->_processNameToScreenTimeRequestInfo;
  self->_processNameToScreenTimeRequestInfo = 0;

  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;

  recentsManager = self->_recentsManager;
  self->_recentsManager = 0;

  v8.receiver = self;
  v8.super_class = CKContextXPCProtocolImpl;
  [(CKContextXPCProtocolImpl *)&v8 dealloc];
}

- (void)shutdownServiceWithReply:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received shutdown request", v4, 2u);
  }

  [objc_opt_class() _shutdownServiceWithReply:v3];
}

+ (void)_shutdownServiceWithReply:(id)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  v4 = objc_retainBlock(v3);

  [v5 postNotificationName:@"shutdownService" object:v4];
}

- (id)_contextEngineInstance
{
  pthread_mutex_lock(&stru_1005571A8);
  if (!self->_contextEngine)
  {
    v3 = [[LuceneContextEngine alloc] initWithAssets:self->_assets];
    contextEngine = self->_contextEngine;
    self->_contextEngine = &v3->super;
  }

  pthread_mutex_unlock(&stru_1005571A8);
  v5 = self->_contextEngine;

  return v5;
}

- (void)warmUpForRequestType:(unint64_t)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([v7 disabled])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Engine is disabled", buf, 2u);
    }

    v8 = +[CKContextResponse serviceDisabledError];
    v5[2](v5, v8);
    goto LABEL_16;
  }

  if ([v7 stillWarmingUp])
  {
    v8 = [v7 warmUpDatPath];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A4390();
      if (v8)
      {
LABEL_8:
        v22 = 0;
        v9 = +[NSFileManager defaultManager];
        v10 = [v9 fileExistsAtPath:v8 isDirectory:&v22];

        if ((v10 & 1) == 0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1002A4408();
          }

          goto LABEL_15;
        }

        if (v22 == 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1002A444C();
          }

          goto LABEL_15;
        }

        v21 = 0;
        v11 = [NSData dataWithContentsOfFile:v8 options:1 error:&v21];
        v12 = v21;
        if (v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read from warm-up file: %@", buf, 0xCu);
          }

          v5[2](v5, v12);
          goto LABEL_32;
        }

        if ([v11 length])
        {
          if ([v11 length] <= 0x10000)
          {
            v16 = [_PASCompression decompress:v11 maxLength:0x10000];

            if (v16)
            {
              v17 = [[NSString alloc] initWithData:v16 encoding:4];
              if ([v17 length])
              {
                v18 = [CKContextRequest requestWithText:v17];
                [v18 setType:5];
                v19[0] = _NSConcreteStackBlock;
                v19[1] = 3221225472;
                v19[2] = sub_1002A09FC;
                v19[3] = &unk_100483C98;
                v20 = v5;
                [(CKContextXPCProtocolImpl *)self findResultsForRequest:v18 isServiceInternal:1 reply:v19];
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read text from warm-up file", buf, 2u);
                }

                v5[2](v5, 0);
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Warm-up file is not in the expected format", buf, 2u);
              }

              v5[2](v5, 0);
            }

            goto LABEL_33;
          }

          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_31;
          }

          v13 = [v11 length];
          *buf = 134217984;
          v24 = v13;
          v14 = "Warm-up file is too large: %lu";
          v15 = 12;
        }

        else
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
LABEL_31:
            v5[2](v5, 0);
LABEL_32:

LABEL_33:
            goto LABEL_16;
          }

          *buf = 0;
          v14 = "Could not read from warm-up file, probably empty";
          v15 = 2;
        }

        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
        goto LABEL_31;
      }
    }

    else if (v8)
    {
      goto LABEL_8;
    }

LABEL_15:
    v5[2](v5, 0);
LABEL_16:

    goto LABEL_17;
  }

  v5[2](v5, 0);
LABEL_17:

  objc_autoreleasePoolPop(v6);
}

- (void)findCategorizationsForRequest:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  screenTimeRequestQueue = self->_screenTimeRequestQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A0B48;
  v11[3] = &unk_100483CC0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(screenTimeRequestQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)findResultsForRequest:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 type] == 10 || objc_msgSend(v6, "type") == 20) && objc_msgSend(objc_opt_class(), "_isDeviceLocked"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Immediately returning empty results because the device is locked.", buf, 2u);
    }

    v8 = [[CKContextResponse alloc] initWithResults:&__NSArray0__struct requestType:{objc_msgSend(v6, "type")}];
    v7[2](v7, v8);
    goto LABEL_29;
  }

  if ([v6 type] != 6)
  {
    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing a rate limited request", buf, 2u);
  }

  v25 = +[NSXPCConnection currentConnection];
  v9 = [v25 processIdentifier];
  *__error() = 0;
  v10 = proc_name(v9, buf, 0x400u);
  __error();
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [[NSString alloc] initWithBytes:buf length:v10 encoding:4];
  }

  if (![(__CFString *)v11 length])
  {

    v11 = @"default-process";
  }

  v12 = self->_processNameToScreenTimeRequestInfo;
  objc_sync_enter(v12);
  v13 = +[NSDate date];
  v14 = [(NSMutableDictionary *)self->_processNameToScreenTimeRequestInfo objectForKeyedSubscript:v11];
  if (!v14)
  {
    v14 = objc_alloc_init(ScreenTimeRequestInfo);
    [(ScreenTimeRequestInfo *)v14 setLatestRequest:v13];
    [(ScreenTimeRequestInfo *)v14 setAllowance:500];
  }

  v15 = [(ScreenTimeRequestInfo *)v14 latestRequest];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  [v13 timeIntervalSinceDate:v17];
  v19 = v18;

  [(ScreenTimeRequestInfo *)v14 setLatestRequest:v13];
  [(ScreenTimeRequestInfo *)v14 setAllowance:([(ScreenTimeRequestInfo *)v14 allowance]+ fabs(v19) * 50.0)];
  if ([(ScreenTimeRequestInfo *)v14 allowance]>= 0x1F5)
  {
    [(ScreenTimeRequestInfo *)v14 setAllowance:500];
  }

  v20 = [(ScreenTimeRequestInfo *)v14 allowance];
  if (v20)
  {
    [(ScreenTimeRequestInfo *)v14 setAllowance:([(ScreenTimeRequestInfo *)v14 allowance]+ -1.0)];
    [(NSMutableDictionary *)self->_processNameToScreenTimeRequestInfo setObject:v14 forKeyedSubscript:v11];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1002A44D4();
    }

    v21 = [NSDictionary dictionaryWithObject:@"Too many concurrent requests at this time" forKey:NSLocalizedFailureReasonErrorKey];
    v22 = [NSError errorWithDomain:ContextKitErrorDomain code:6 userInfo:v21];

    v23 = [[CKContextResponse alloc] initWithError:v22 requestType:{objc_msgSend(v6, "type")}];
    v7[2](v7, v23);
  }

  objc_sync_exit(v12);
  if (v20)
  {
LABEL_28:
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1002A1398;
    v26[3] = &unk_100483CE8;
    v26[4] = self;
    v27 = -[RequestTransaction initWithTransactionId:decPending:]([RequestTransaction alloc], "initWithTransactionId:decPending:", @"ContextService.findResults", [v6 incPending]);
    v28 = v7;
    v8 = v27;
    [(CKContextXPCProtocolImpl *)self _findResultsForRequest:v6 withReply:v26 isServiceInternal:0 transaction:v8];
    v24 = objc_opt_self();

LABEL_29:
  }
}

- (void)_findResultsForRequest:(id)a3 withReply:(id)a4 isServiceInternal:(BOOL)a5 transaction:(id)a6
{
  v154 = a3;
  v155 = a4;
  v149 = a6;
  context = objc_autoreleasePoolPush();
  v150 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  v153 = +[ContextConfiguration sharedInstance];
  if (!v155)
  {
    v13 = +[MetricsLogging instance];
    goto LABEL_5;
  }

  if (([v150 disabled] & 1) != 0 || (objc_msgSend(v153, "portraitEnabled") & 1) == 0 && objc_msgSend(v154, "type") == 2)
  {
    v10 = [CKContextResponse alloc];
    v11 = +[CKContextResponse serviceDisabledError];
    v12 = [v10 initWithError:v11 requestType:{objc_msgSend(v154, "type")}];
    v155[2](v155, v12);

    v13 = +[MetricsLogging instance];
LABEL_5:
    v14 = v13;
    [v13 recordAssetInfo:self->_assets];

    goto LABEL_6;
  }

  v15 = [v153 debugFakeResults];

  if (!v15)
  {
    v23 = mach_absolute_time();
    v136 = +[NSXPCConnection currentConnection];
    if (a5 || ([v136 valueForEntitlement:@"com.apple.private.contextkit.include-original-request"], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = 1;
      v26 = v154;
    }

    else
    {
      v26 = v154;
      if ([v154 includeRequestInResponse])
      {
        goto LABEL_36;
      }

      v25 = 0;
    }

    v27 = [v26 isRequestingContentFromActiveApplications];
    if (!v27 || a5 || !v136 || ([v136 valueForEntitlement:@"com.apple.private.contextkit.request-external-content"], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      v131 = [v150 stillWarmingUp];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v188 = 0x3032000000;
      v189 = sub_1002A2C78;
      v190 = sub_1002A2C88;
      v191 = [v150 indexId];
      v134 = [v154 text];
      v29 = [v154 type];
      if (v29 != 15 && v29 != 1)
      {
        LOBYTE(v33) = 0;
LABEL_41:
        v169[0] = _NSConcreteStackBlock;
        v169[1] = 3221225472;
        v169[2] = sub_1002A2C90;
        v169[3] = &unk_100483D38;
        v176 = v25;
        v135 = v154;
        v170 = v135;
        v175 = v23;
        p_buf = &buf;
        v173 = v155;
        v171 = self;
        v172 = v149;
        v132 = objc_retainBlock(v169);
        v43 = v135;
        if (v134 && [v134 length] <= 3)
        {
          v44 = [v135 url];
          if (v44)
          {

            v43 = v135;
            goto LABEL_45;
          }

          v58 = [v135 itemIds];
          if (![v58 count])
          {

LABEL_70:
            v61 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A455C(&v179, [v134 length]);
            }

            dsema = [[CKContextResponse alloc] initWithResults:&__NSArray0__struct requestType:{objc_msgSend(v135, "type")}];
            (v132[2])(v132, dsema);
            goto LABEL_171;
          }

          v59 = [v135 maxConstellationTopics] == 0;

          v43 = v135;
          if (v59)
          {
            goto LABEL_70;
          }
        }

LABEL_45:
        dsema = [v153 maxConcurrencySemaphore];
        if (dispatch_semaphore_wait(dsema, [v153 maxConcurrencySemaphoreTimeout]))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1002A45A8();
            v43 = v135;
          }

          v45 = [CKContextResponse alloc];
          v46 = +[CKContextResponse serviceBusyError];
          v47 = [v45 initWithError:v46 requestType:{objc_msgSend(v43, "type")}];
          (v132[2])(v132, v47);

          goto LABEL_171;
        }

        if (v27)
        {
          v48 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            LOWORD(v179) = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Soliciting donations from other apps", &v179, 2u);
          }

          v49 = mach_absolute_time();
          [v135 donationTimeout];
          if (v50 <= 0.0)
          {
            v51 = 0.75;
          }

          else
          {
            v51 = v50;
          }

          v52 = dispatch_time(0, (v51 * 1000000000.0));
          v53 = [[DonationState alloc] initWithLayoutMonitor:self->_layoutMonitor];
          v54 = objc_alloc_init(NSMutableArray);
          [(DonationState *)v53 setDonations:v54];

          if (([v135 type] == 10 || objc_msgSend(v135, "type") == 20) && !-[CKContextXPCProtocolImpl _totalDonationsToWaitForWithDonationState:](self, "_totalDonationsToWaitForWithDonationState:", v53))
          {
            dispatch_semaphore_signal(dsema);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
            {
              LOWORD(v179) = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Immediately returning empty results because no valid applications to extract from.", &v179, 2u);
            }

            v60 = [[CKContextResponse alloc] initWithResults:&__NSArray0__struct requestType:{objc_msgSend(v135, "type")}];
            (v132[2])(v132, v60);

            goto LABEL_171;
          }

          v55 = dispatch_get_global_queue(25, 0);
          v168[0] = _NSConcreteStackBlock;
          v168[1] = 3221225472;
          v168[2] = sub_1002A2FC0;
          v168[3] = &unk_100483D60;
          *&v168[5] = v51;
          v168[4] = self;
          v56 = [[CKContextExecutor alloc] initWithContext:v53 workItemQueue:v55 completionQueue:v55 timeoutAfter:v52 completionHandler:v168];
          [v56 markIncomplete];
          v128 = v55;
          if (v33)
          {
            v57 = 0x10000000000;
          }

          else if ([v135 type] == 20)
          {
            v57 = 0x60000000000;
          }

          else if ([v135 type] == 16)
          {
            if ([v135 includeLeadImage])
            {
              v57 = 0x50000000000;
            }

            else
            {
              v57 = 0x30000000000;
            }
          }

          else if ([v135 includeRequestInResponse])
          {
            v57 = 0x20000000000;
          }

          else if ([v135 includeStructuredExtractionResults])
          {
            v57 = 0x40000000000;
          }

          else
          {
            v57 = 0;
          }

          v130 = v56;
          v62 = v57 | (arc4random() << 48);
          v63 = time(0) & 0xFFFFFFFFFFLL;
          v64 = self->_donationExecutorsMap;
          objc_sync_enter(v64);
          donationExecutorsMap = self->_donationExecutorsMap;
          v66 = [NSNumber numberWithUnsignedLongLong:v63 | v62];
          [(NSMapTable *)donationExecutorsMap setObject:v130 forKey:v66];

          objc_sync_exit(v64);
          if (notify_set_state(dword_1005571E8, v63 | v62))
          {
            v67 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1002A4318();
            }
          }

          if (notify_post("com.apple.contextkit.content-request"))
          {
            v68 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_1002A45EC();
            }
          }

          [v130 markReadyAndAwaitCompletion];
          v69 = v53;
          objc_sync_enter(v69);
          v70 = [(DonationState *)v69 balancedMarkIncomplete];
          [(DonationState *)v69 setBalancedMarkIncomplete:1];
          objc_sync_exit(v69);
          v129 = v69;

          if ((v70 & 1) == 0)
          {
            [v130 markReady];
          }

          v71 = [(DonationState *)v69 donations];
          v72 = self->_donationExecutorsMap;
          objc_sync_enter(v72);
          v73 = self->_donationExecutorsMap;
          v74 = [NSNumber numberWithUnsignedLongLong:v63 | v62];
          [(NSMapTable *)v73 removeObjectForKey:v74];

          objc_sync_exit(v72);
          [Util elapsedMillisSinceMachAbsolute:v49];
          v76 = v75;
          v77 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_1002A4664(v186, [v71 count], -[DonationState numberOfApplicationsToWaitFor](v129, "numberOfApplicationsToWaitFor"), v76);
          }

          v138 = +[NSMutableArray array];
          v78 = objc_alloc_init(NSMutableArray);
          v79 = objc_alloc_init(NSMutableArray);
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          obj = v71;
          v80 = [obj countByEnumeratingWithState:&v164 objects:v185 count:16];
          if (v80)
          {
            v139 = 0;
            v140 = 0;
            v141 = *v165;
            v144 = &stru_100484358;
            v145 = &stru_100484358;
            v146 = &stru_100484358;
            v147 = &stru_100484358;
            v143 = &stru_100484358;
            do
            {
              v142 = v80;
              for (i = 0; i != v142; i = i + 1)
              {
                if (*v165 != v141)
                {
                  objc_enumerationMutation(obj);
                }

                v82 = *(*(&v164 + 1) + 8 * i);
                v156 = [v82 items];
                v83 = [v82 donorBundleIdentifier];
                if ([v83 length])
                {
                  [v138 addObject:v83];
                }

                if ([v156 count])
                {
                  v152 = [v82 concatenatedRequestsText];
                  if ([v152 length])
                  {
                    v84 = [(__CFString *)v147 stringByAppendingString:v152];

                    v147 = [v84 stringByAppendingString:@"\n\n"];
                  }

                  v151 = [v82 concatenatedRequestsDebugText];
                  if ([v151 length])
                  {
                    v85 = [(__CFString *)v146 stringByAppendingString:v151];

                    v146 = [v85 stringByAppendingString:@"\n\n"];
                  }

                  if (![(__CFString *)v145 length])
                  {
                    v86 = [v82 internal_bestDebugUrlString];

                    v145 = v86;
                  }

                  if (![(__CFString *)v144 length])
                  {
                    v87 = [v82 internal_bestTitle];

                    v144 = v87;
                  }

                  if (![(__CFString *)v143 length])
                  {
                    v88 = [v82 internal_bestRawHTML];

                    v143 = v88;
                  }

                  if (!v140)
                  {
                    v140 = [v82 internal_bestLeadImage];
                  }

                  if (!v139)
                  {
                    v139 = [v82 internal_bestSnapshot];
                  }

                  v162 = 0u;
                  v163 = 0u;
                  v160 = 0u;
                  v161 = 0u;
                  v89 = v156;
                  v90 = [v89 countByEnumeratingWithState:&v160 objects:v184 count:16];
                  if (v90)
                  {
                    v91 = *v161;
                    do
                    {
                      for (j = 0; j != v90; j = j + 1)
                      {
                        if (*v161 != v91)
                        {
                          objc_enumerationMutation(v89);
                        }

                        v93 = *(*(&v160 + 1) + 8 * j);
                        v94 = [v93 uiElements];
                        if ([v94 count])
                        {
                          [v78 addObjectsFromArray:v94];
                        }

                        v95 = [v93 extractionItems];
                        if ([v95 count])
                        {
                          [v79 addObjectsFromArray:v95];
                        }
                      }

                      v90 = [v89 countByEnumeratingWithState:&v160 objects:v184 count:16];
                    }

                    while (v90);
                  }
                }
              }

              v80 = [obj countByEnumeratingWithState:&v164 objects:v185 count:16];
            }

            while (v80);
          }

          else
          {
            v139 = 0;
            v140 = 0;
            v144 = &stru_100484358;
            v145 = &stru_100484358;
            v146 = &stru_100484358;
            v147 = &stru_100484358;
            v143 = &stru_100484358;
          }

          v96 = v129;
          objc_sync_enter(v96);
          [(DonationState *)v96 setDonations:0];

          objc_sync_exit(v96);
          if ([v135 debug])
          {
            v97 = 1;
          }

          else
          {
            v97 = [v135 includeRequestInResponse];
          }

          [v135 setText:v147];
          if (v97)
          {
            v98 = v146;
          }

          else
          {
            v98 = 0;
          }

          [v135 setDebugText:v98];
          if (v97)
          {
            v99 = v145;
          }

          else
          {
            v99 = 0;
          }

          [v135 setDebugUrlString:v99];
          if (v97)
          {
            v100 = v143;
          }

          else
          {
            v100 = 0;
          }

          [v135 setRawHTML:v100];
          [v135 setTitle:v144];
          v101 = [v138 copy];
          [v135 setDonorBundleIdentifiers:v101];

          [v78 count];
          if (v78)
          {
            v102 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A46C4();
            }

            [v135 setUiElements:v78];
          }

          if ([v79 count])
          {
            v103 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A473C();
            }

            [v135 setExtractionItems:v79];
          }

          if (v140)
          {
            v104 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A47B4();
            }

            [v135 setLeadImage:v140];
          }

          if (v139)
          {
            v105 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A47F8();
            }

            [v135 setSnapshot:v139];
          }
        }

        *&v179 = 0;
        *(&v179 + 1) = &v179;
        v180 = 0x3032000000;
        v181 = sub_1002A2C78;
        v182 = sub_1002A2C88;
        v183 = 0;
        v106 = dispatch_semaphore_create(0);
        [v153 debugDelaySecs];
        v108 = v107;
        if (v107 > 0.0)
        {
          v109 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *v177 = 134217984;
            v178 = v108;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "debugDelaySecs: Adding artificial delay of %f seconds...", v177, 0xCu);
          }

          v110 = dispatch_semaphore_create(0);
          v111 = dispatch_time(0, (v108 * 1000000000.0));
          dispatch_semaphore_wait(v110, v111);
        }

        v157[0] = _NSConcreteStackBlock;
        v157[1] = 3221225472;
        v157[2] = sub_1002A30C4;
        v157[3] = &unk_100483D88;
        v159 = &v179;
        v112 = v106;
        v158 = v112;
        v113 = objc_retainBlock(v157);
        v114 = mach_absolute_time();
        v115 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v116 = [v150 description];
          sub_1002A483C(v116, &buf + 8, v177);
        }

        [v150 findResultsForRequest:v135 withReply:v113];
        [Util elapsedNanosSinceMachAbsolute:v114];
        *&v117 = v117;
        v118 = dispatch_semaphore_wait(v112, [v153 findResultsTimeoutWithNanosAlreadySpent:v117]) == 0;

        dispatch_semaphore_signal(dsema);
        if (v118 && *(*(&v179 + 1) + 40))
        {
          [Util elapsedMillisSinceMachAbsolute:v114];
          v125 = v124;
          (v132[2])(v132, *(*(&v179 + 1) + 40));
          [v153 findResultsSlowSecs];
          if (v125 <= v126 * 1000.0)
          {
            goto LABEL_170;
          }

          v122 = +[MetricsLogging instance];
          v127 = [v135 type];
          [v122 recordSlowFindResults:0 requestType:v127 indexId:*(*(&buf + 1) + 40) coldEngine:v131];
        }

        else
        {
          v119 = [CKContextResponse alloc];
          v120 = +[CKContextResponse timeoutError];
          v121 = [v119 initWithError:v120 requestType:{objc_msgSend(v135, "type")}];
          (v132[2])(v132, v121);

          v122 = +[MetricsLogging instance];
          v123 = [v135 type];
          [v122 recordSlowFindResults:1 requestType:v123 indexId:*(*(&buf + 1) + 40) coldEngine:v131];
        }

LABEL_170:
        _Block_object_dispose(&v179, 8);

LABEL_171:
        _Block_object_dispose(&buf, 8);

        goto LABEL_172;
      }

      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v31 = [v154 languageTag];
        LODWORD(v179) = 138412290;
        *(&v179 + 4) = v31;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Safari request with language tag: %@", &v179, 0xCu);
      }

      v32 = [v154 text];
      v33 = [v32 length] == 0;

      if (v33)
      {
        v39 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1002A4518();
        }

        v27 = 1;
        goto LABEL_40;
      }

      v34 = [v154 text];
      v35 = [v34 length] < 0x40;

      v36 = &_os_log_default;
      v37 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v35)
      {
        if (v37)
        {
          LOWORD(v179) = 0;
          v38 = "Safari request with little text";
LABEL_39:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v38, &v179, 2u);
        }
      }

      else if (v37)
      {
        LOWORD(v179) = 0;
        v38 = "Safari request with some text";
        goto LABEL_39;
      }

LABEL_40:

      goto LABEL_41;
    }

LABEL_36:
    v40 = [CKContextResponse alloc];
    v41 = +[CKContextResponse missingEntitlementError];
    v42 = [v40 initWithError:v41 requestType:{objc_msgSend(v154, "type")}];
    v155[2](v155, v42);

LABEL_172:
    goto LABEL_6;
  }

  [v153 debugDelaySecs];
  if (v16 > 0.0)
  {
    v17 = v16;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "debugDelaySecs: Adding artificial delay of %f seconds...", &buf, 0xCu);
    }

    v18 = dispatch_semaphore_create(0);
    v19 = dispatch_time(0, (v17 * 1000000000.0));
    dispatch_semaphore_wait(v18, v19);
  }

  v20 = [CKContextResponse alloc];
  v21 = [v153 debugFakeResults];
  v22 = [v20 initWithResults:v21 requestType:{objc_msgSend(v154, "type")}];
  v155[2](v155, v22);

LABEL_6:
  objc_autoreleasePoolPop(context);
}

- (void)capabilitiesForRequestType:(unint64_t)a3 withReply:(id)a4
{
  v5 = a4;
  v12 = +[NSMutableSet set];
  v6 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if (([v6 disabled] & 1) == 0)
  {
    [v12 addObject:&off_1004A9EF0];
    v7 = +[ContextConfiguration sharedInstance];
    if ([v7 portraitEnabled])
    {
      [v12 addObject:&off_1004A9F08];
    }

    if ([v7 highLevelTopicsEnabled])
    {
      [v12 addObject:&off_1004A9F20];
    }

    if ([v7 digitalHealthEnabled])
    {
      [v12 addObject:&off_1004A9F38];
    }

    if ([v7 internalGradingEnabled] && +[_PASDeviceInfo isInternalBuild](_PASDeviceInfo, "isInternalBuild"))
    {
      [v12 addObject:&off_1004A9F50];
    }
  }

  v8 = +[ContextConfiguration sharedInstance];
  v9 = [v8 indexVersionId];
  v10 = [v6 indexId];
  v11 = [NSString stringWithFormat:@"%@-%@", v9, v10];

  v5[2](v5, v12, v11, 0);
}

- (void)ancestorsForTopics:(id)a3 withReply:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([v7 disabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[CKContextResponse serviceDisabledError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [v7 ancestorsForTopics:v10];
    if (v8)
    {
      (v6)[2](v6, v8, 0);
    }

    else
    {
      v9 = +[CKContextResponse timeoutError];
      v6[2](v6, 0, v9);
    }
  }
}

- (void)groupResponses:(id)a3 withReply:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([v7 disabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[CKContextResponse serviceDisabledError];
    v6[2](v6, 0, v8);
  }

  else
  {
    v8 = [v7 groupResponses:v9];
    (v6)[2](v6, v8, 0);
  }
}

- (void)statusWithReply:(id)a3
{
  v4 = a3;
  v5 = +[MetricsLogging instance];
  [v5 recordAssetInfo:self->_assets];

  v33 = objc_opt_new();
  v6 = [(CTKAssets *)self->_assets common];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [v6 assetVersion];
    v9 = [v6 compatibilityVersion];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [NSNumber numberWithUnsignedInteger:v8];
      [v7 setObject:v10 forKeyedSubscript:@"contentVersion"];
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [NSNumber numberWithUnsignedInteger:v9];
      [v7 setObject:v11 forKeyedSubscript:@"compatVersion"];
    }

    [v33 setObject:v7 forKeyedSubscript:@"common"];
  }

  v12 = [(CTKAssets *)self->_assets index];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = [v12 first];
    v15 = [v14 assetVersion];

    v16 = [v12 first];
    v17 = [v16 compatibilityVersion];

    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [NSNumber numberWithUnsignedInteger:v15];
      [v13 setObject:v18 forKeyedSubscript:@"contentVersion"];
    }

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [NSNumber numberWithUnsignedInteger:v17];
      [v13 setObject:v19 forKeyedSubscript:@"compatVersion"];
    }

    v20 = [v12 second];
    [v13 setObject:v20 forKeyedSubscript:@"indexIdentifier"];

    [v33 setObject:v13 forKeyedSubscript:@"index"];
  }

  v21 = +[ContextConfiguration sharedInstance];
  v22 = [v21 debugStatus];
  [v33 setObject:v22 forKeyedSubscript:@"currentConfiguration"];

  v23 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  v24 = [v23 debugStatus];
  [v33 setObject:v24 forKeyedSubscript:@"engineStatus"];

  v25 = +[CTKABHelper refId];
  v26 = [v25 description];
  [v33 setObject:v26 forKeyedSubscript:@"refId"];

  v27 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  v28 = [v27 indexId];
  [v33 setObject:v28 forKeyedSubscript:@"indexId"];

  v29 = +[MetricsLogging instance];
  v30 = [v29 debugStatus];
  [v33 setObject:v30 forKeyedSubscript:@"loggingStatus"];

  v31 = +[_PASDeviceState currentOsBuild];
  [v33 setObject:v31 forKeyedSubscript:@"osBuildNumber"];

  v32 = [objc_opt_class() dumpEnvironment];
  [v33 setObject:v32 forKeyedSubscript:@"environment"];

  v4[2](v4, v33, 0);
}

+ (id)dumpEnvironment
{
  v2 = objc_alloc_init(NSMutableString);
  if (*environ)
  {
    v3 = 8;
    do
    {
      v4 = [NSString stringWithCString:"stringWithCString:encoding:" encoding:?];
      [v2 appendString:v4];

      [v2 appendString:@"\n"];
      v5 = *(environ + v3);
      v3 += 8;
    }

    while (v5);
  }

  return v2;
}

- (void)donate:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
  v7 = [v4 nonce];
  if (v7 || ([v4 associatedUserActivity], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v8 = [v4 items];
    v9 = [v8 count];

    v10 = [v4 remoteProcesses];
    v11 = self->_donationExecutorsMap;
    objc_sync_enter(v11);
    donationExecutorsMap = self->_donationExecutorsMap;
    v13 = [NSNumber numberWithUnsignedLongLong:v7];
    v14 = [(NSMapTable *)donationExecutorsMap objectForKey:v13];

    objc_sync_exit(v11);
    if (!v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v26 = [v4 donorBundleIdentifier];
        v28 = 134218498;
        v29 = v9;
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Refusing donation of %lu items from PID %@ for %@: unexpected/too late", &v28, 0x20u);
      }

      goto LABEL_18;
    }

    v15 = [v14 context];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v16 = [v4 donorBundleIdentifier];
      v17 = [v15 dateCreated];
      [v17 timeIntervalSinceNow];
      v28 = 134219010;
      v29 = v9;
      v30 = 2048;
      v31 = v10;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v16;
      v36 = 1024;
      v37 = (v18 * -1000.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Donation of %lu items / rc:%lu from PID %@ for %@ received after %i ms", &v28, 0x30u);
    }

    if (v9 | v10)
    {
      v19 = v15;
      objc_sync_enter(v19);
      [v19 setAdditionalDonationsToWaitFor:{objc_msgSend(v19, "additionalDonationsToWaitFor") + v10}];
      v20 = [v19 donations];
      [v20 addObject:v4];

      v21 = [v19 donations];
      v22 = [v21 count];
      if (v22 >= [(CKContextXPCProtocolImpl *)self _totalDonationsToWaitForWithDonationState:v19])
      {
        v27 = [v19 balancedMarkIncomplete];

        if ((v27 & 1) == 0)
        {
          [v19 setBalancedMarkIncomplete:1];
          objc_sync_exit(v19);

          [v14 markReady];
          goto LABEL_17;
        }
      }

      else
      {
      }

      objc_sync_exit(v19);
    }

LABEL_17:

LABEL_18:
    [v5 invalidate];
    goto LABEL_19;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Handling a user activity donation", &v28, 2u);
  }

  v14 = os_transaction_create();
  recentsManager = self->_recentsManager;
  v25 = +[NSUserDefaults standardUserDefaults];
  -[CKContextUniversalRecentsManager processDonation:retrievingTopics:](recentsManager, "processDonation:retrievingTopics:", v4, [v25 BOOLForKey:@"CKContextUniversalRecentsTopicExtraction"]);

LABEL_19:
}

- (unint64_t)_totalDonationsToWaitForWithDonationState:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v4 = [v3 additionalDonationsToWaitFor];
      v8 = 134217984;
      v9 = &v4[[v3 numberOfApplicationsToWaitFor]];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Total donations to wait for is %lu", &v8, 0xCu);
    }

    v5 = [v3 additionalDonationsToWaitFor];
    v6 = &v5[[v3 numberOfApplicationsToWaitFor]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)logEngagementForResponseId:(id)a3 result:(id)a4 rank:(unint64_t)a5 inputLength:(unint64_t)a6 completionLength:(unint64_t)a7 requestType:(unint64_t)a8 logType:(unint64_t)a9
{
  contextEngine = self->_contextEngine;
  v14 = a4;
  v16 = [(ContextEngine *)contextEngine indexId];
  v15 = +[MetricsLogging instance];
  [v15 recordQueryEngagementWithUserInputLength:a6 completionLength:a7 result:v14 rank:a5 indexId:v16 requestType:a8 logType:a9];
}

- (void)logTransactionSuccessfulForResponseId:(id)a3 inputLength:(unint64_t)a4 completionLength:(unint64_t)a5 requestType:(unint64_t)a6 logType:(unint64_t)a7
{
  v12 = [(ContextEngine *)self->_contextEngine indexId];
  v11 = +[MetricsLogging instance];
  [v11 recordTransactionSuccessfulWithUserInputLength:a4 completionLength:a5 indexId:v12 requestType:a6 logType:a7];
}

@end