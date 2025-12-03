@interface CKContextXPCProtocolImpl
+ (id)dumpEnvironment;
+ (void)_shutdownServiceWithReply:(id)reply;
+ (void)initialize;
- (CKContextXPCProtocolImpl)initWithAssets:(id)assets;
- (id)_contextEngineInstance;
- (unint64_t)_totalDonationsToWaitForWithDonationState:(id)state;
- (void)_findResultsForRequest:(id)request withReply:(id)reply isServiceInternal:(BOOL)internal transaction:(id)transaction;
- (void)ancestorsForTopics:(id)topics withReply:(id)reply;
- (void)capabilitiesForRequestType:(unint64_t)type withReply:(id)reply;
- (void)dealloc;
- (void)donate:(id)donate;
- (void)findCategorizationsForRequest:(id)request withReply:(id)reply;
- (void)findResultsForRequest:(id)request withReply:(id)reply;
- (void)groupResponses:(id)responses withReply:(id)reply;
- (void)logEngagementForResponseId:(id)id result:(id)result rank:(unint64_t)rank inputLength:(unint64_t)length completionLength:(unint64_t)completionLength requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)logTransactionSuccessfulForResponseId:(id)id inputLength:(unint64_t)length completionLength:(unint64_t)completionLength requestType:(unint64_t)type logType:(unint64_t)logType;
- (void)shutdownServiceWithReply:(id)reply;
- (void)statusWithReply:(id)reply;
- (void)warmUpForRequestType:(unint64_t)type withReply:(id)reply;
@end

@implementation CKContextXPCProtocolImpl

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    pthread_mutex_init(&stru_1005571A8, 0);
    atomic_store(0, &qword_100557198);
    initSemaphoreForXPCService = [[CKContextSemaphore alloc] initSemaphoreForXPCService];
    v3 = qword_1005571A0;
    qword_1005571A0 = initSemaphoreForXPCService;

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

- (CKContextXPCProtocolImpl)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v20.receiver = self;
  v20.super_class = CKContextXPCProtocolImpl;
  v6 = [(CKContextXPCProtocolImpl *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assets, assets);
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

- (void)shutdownServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received shutdown request", v4, 2u);
  }

  [objc_opt_class() _shutdownServiceWithReply:replyCopy];
}

+ (void)_shutdownServiceWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[NSNotificationCenter defaultCenter];
  v4 = objc_retainBlock(replyCopy);

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

- (void)warmUpForRequestType:(unint64_t)type withReply:(id)reply
{
  replyCopy = reply;
  v6 = objc_autoreleasePoolPush();
  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([_contextEngineInstance disabled])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Engine is disabled", buf, 2u);
    }

    warmUpDatPath = +[CKContextResponse serviceDisabledError];
    replyCopy[2](replyCopy, warmUpDatPath);
    goto LABEL_16;
  }

  if ([_contextEngineInstance stillWarmingUp])
  {
    warmUpDatPath = [_contextEngineInstance warmUpDatPath];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1002A4390();
      if (warmUpDatPath)
      {
LABEL_8:
        v22 = 0;
        v9 = +[NSFileManager defaultManager];
        v10 = [v9 fileExistsAtPath:warmUpDatPath isDirectory:&v22];

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
        v11 = [NSData dataWithContentsOfFile:warmUpDatPath options:1 error:&v21];
        v12 = v21;
        if (v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read from warm-up file: %@", buf, 0xCu);
          }

          replyCopy[2](replyCopy, v12);
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
                v20 = replyCopy;
                [(CKContextXPCProtocolImpl *)self findResultsForRequest:v18 isServiceInternal:1 reply:v19];
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read text from warm-up file", buf, 2u);
                }

                replyCopy[2](replyCopy, 0);
              }
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Warm-up file is not in the expected format", buf, 2u);
              }

              replyCopy[2](replyCopy, 0);
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
            replyCopy[2](replyCopy, 0);
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

    else if (warmUpDatPath)
    {
      goto LABEL_8;
    }

LABEL_15:
    replyCopy[2](replyCopy, 0);
LABEL_16:

    goto LABEL_17;
  }

  replyCopy[2](replyCopy, 0);
LABEL_17:

  objc_autoreleasePoolPop(v6);
}

- (void)findCategorizationsForRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  objc_initWeak(&location, self);
  screenTimeRequestQueue = self->_screenTimeRequestQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002A0B48;
  v11[3] = &unk_100483CC0;
  objc_copyWeak(&v14, &location);
  v12 = requestCopy;
  v13 = replyCopy;
  v9 = requestCopy;
  v10 = replyCopy;
  dispatch_async(screenTimeRequestQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)findResultsForRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (([requestCopy type] == 10 || objc_msgSend(requestCopy, "type") == 20) && objc_msgSend(objc_opt_class(), "_isDeviceLocked"))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Immediately returning empty results because the device is locked.", buf, 2u);
    }

    v8 = [[CKContextResponse alloc] initWithResults:&__NSArray0__struct requestType:{objc_msgSend(requestCopy, "type")}];
    replyCopy[2](replyCopy, v8);
    goto LABEL_29;
  }

  if ([requestCopy type] != 6)
  {
    goto LABEL_28;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Processing a rate limited request", buf, 2u);
  }

  v25 = +[NSXPCConnection currentConnection];
  processIdentifier = [v25 processIdentifier];
  *__error() = 0;
  v10 = proc_name(processIdentifier, buf, 0x400u);
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

  latestRequest = [(ScreenTimeRequestInfo *)v14 latestRequest];
  v16 = latestRequest;
  if (latestRequest)
  {
    v17 = latestRequest;
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

  allowance = [(ScreenTimeRequestInfo *)v14 allowance];
  if (allowance)
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

    v23 = [[CKContextResponse alloc] initWithError:v22 requestType:{objc_msgSend(requestCopy, "type")}];
    replyCopy[2](replyCopy, v23);
  }

  objc_sync_exit(v12);
  if (allowance)
  {
LABEL_28:
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1002A1398;
    v26[3] = &unk_100483CE8;
    v26[4] = self;
    v27 = -[RequestTransaction initWithTransactionId:decPending:]([RequestTransaction alloc], "initWithTransactionId:decPending:", @"ContextService.findResults", [requestCopy incPending]);
    v28 = replyCopy;
    v8 = v27;
    [(CKContextXPCProtocolImpl *)self _findResultsForRequest:requestCopy withReply:v26 isServiceInternal:0 transaction:v8];
    v24 = objc_opt_self();

LABEL_29:
  }
}

- (void)_findResultsForRequest:(id)request withReply:(id)reply isServiceInternal:(BOOL)internal transaction:(id)transaction
{
  requestCopy = request;
  replyCopy = reply;
  transactionCopy = transaction;
  context = objc_autoreleasePoolPush();
  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  v153 = +[ContextConfiguration sharedInstance];
  if (!replyCopy)
  {
    v13 = +[MetricsLogging instance];
    goto LABEL_5;
  }

  if (([_contextEngineInstance disabled] & 1) != 0 || (objc_msgSend(v153, "portraitEnabled") & 1) == 0 && objc_msgSend(requestCopy, "type") == 2)
  {
    v10 = [CKContextResponse alloc];
    v11 = +[CKContextResponse serviceDisabledError];
    v12 = [v10 initWithError:v11 requestType:{objc_msgSend(requestCopy, "type")}];
    replyCopy[2](replyCopy, v12);

    v13 = +[MetricsLogging instance];
LABEL_5:
    v14 = v13;
    [v13 recordAssetInfo:self->_assets];

    goto LABEL_6;
  }

  debugFakeResults = [v153 debugFakeResults];

  if (!debugFakeResults)
  {
    v23 = mach_absolute_time();
    v136 = +[NSXPCConnection currentConnection];
    if (internal || ([v136 valueForEntitlement:@"com.apple.private.contextkit.include-original-request"], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
    {
      v25 = 1;
      v26 = requestCopy;
    }

    else
    {
      v26 = requestCopy;
      if ([requestCopy includeRequestInResponse])
      {
        goto LABEL_36;
      }

      v25 = 0;
    }

    isRequestingContentFromActiveApplications = [v26 isRequestingContentFromActiveApplications];
    if (!isRequestingContentFromActiveApplications || internal || !v136 || ([v136 valueForEntitlement:@"com.apple.private.contextkit.request-external-content"], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      stillWarmingUp = [_contextEngineInstance stillWarmingUp];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v188 = 0x3032000000;
      v189 = sub_1002A2C78;
      v190 = sub_1002A2C88;
      indexId = [_contextEngineInstance indexId];
      text = [requestCopy text];
      type = [requestCopy type];
      if (type != 15 && type != 1)
      {
        LOBYTE(v33) = 0;
LABEL_41:
        v169[0] = _NSConcreteStackBlock;
        v169[1] = 3221225472;
        v169[2] = sub_1002A2C90;
        v169[3] = &unk_100483D38;
        v176 = v25;
        v135 = requestCopy;
        v170 = v135;
        v175 = v23;
        p_buf = &buf;
        v173 = replyCopy;
        selfCopy = self;
        v172 = transactionCopy;
        v132 = objc_retainBlock(v169);
        v43 = v135;
        if (text && [text length] <= 3)
        {
          v44 = [v135 url];
          if (v44)
          {

            v43 = v135;
            goto LABEL_45;
          }

          itemIds = [v135 itemIds];
          if (![itemIds count])
          {

LABEL_70:
            v61 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A455C(&v179, [text length]);
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

        if (isRequestingContentFromActiveApplications)
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
          balancedMarkIncomplete = [(DonationState *)v69 balancedMarkIncomplete];
          [(DonationState *)v69 setBalancedMarkIncomplete:1];
          objc_sync_exit(v69);
          v129 = v69;

          if ((balancedMarkIncomplete & 1) == 0)
          {
            [v130 markReady];
          }

          donations = [(DonationState *)v69 donations];
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
            sub_1002A4664(v186, [donations count], -[DonationState numberOfApplicationsToWaitFor](v129, "numberOfApplicationsToWaitFor"), v76);
          }

          v138 = +[NSMutableArray array];
          v78 = objc_alloc_init(NSMutableArray);
          v79 = objc_alloc_init(NSMutableArray);
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          obj = donations;
          v80 = [obj countByEnumeratingWithState:&v164 objects:v185 count:16];
          if (v80)
          {
            internal_bestSnapshot = 0;
            internal_bestLeadImage = 0;
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
                items = [v82 items];
                donorBundleIdentifier = [v82 donorBundleIdentifier];
                if ([donorBundleIdentifier length])
                {
                  [v138 addObject:donorBundleIdentifier];
                }

                if ([items count])
                {
                  concatenatedRequestsText = [v82 concatenatedRequestsText];
                  if ([concatenatedRequestsText length])
                  {
                    v84 = [(__CFString *)v147 stringByAppendingString:concatenatedRequestsText];

                    v147 = [v84 stringByAppendingString:@"\n\n"];
                  }

                  concatenatedRequestsDebugText = [v82 concatenatedRequestsDebugText];
                  if ([concatenatedRequestsDebugText length])
                  {
                    v85 = [(__CFString *)v146 stringByAppendingString:concatenatedRequestsDebugText];

                    v146 = [v85 stringByAppendingString:@"\n\n"];
                  }

                  if (![(__CFString *)v145 length])
                  {
                    internal_bestDebugUrlString = [v82 internal_bestDebugUrlString];

                    v145 = internal_bestDebugUrlString;
                  }

                  if (![(__CFString *)v144 length])
                  {
                    internal_bestTitle = [v82 internal_bestTitle];

                    v144 = internal_bestTitle;
                  }

                  if (![(__CFString *)v143 length])
                  {
                    internal_bestRawHTML = [v82 internal_bestRawHTML];

                    v143 = internal_bestRawHTML;
                  }

                  if (!internal_bestLeadImage)
                  {
                    internal_bestLeadImage = [v82 internal_bestLeadImage];
                  }

                  if (!internal_bestSnapshot)
                  {
                    internal_bestSnapshot = [v82 internal_bestSnapshot];
                  }

                  v162 = 0u;
                  v163 = 0u;
                  v160 = 0u;
                  v161 = 0u;
                  v89 = items;
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
                        uiElements = [v93 uiElements];
                        if ([uiElements count])
                        {
                          [v78 addObjectsFromArray:uiElements];
                        }

                        extractionItems = [v93 extractionItems];
                        if ([extractionItems count])
                        {
                          [v79 addObjectsFromArray:extractionItems];
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
            internal_bestSnapshot = 0;
            internal_bestLeadImage = 0;
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
            includeRequestInResponse = 1;
          }

          else
          {
            includeRequestInResponse = [v135 includeRequestInResponse];
          }

          [v135 setText:v147];
          if (includeRequestInResponse)
          {
            v98 = v146;
          }

          else
          {
            v98 = 0;
          }

          [v135 setDebugText:v98];
          if (includeRequestInResponse)
          {
            v99 = v145;
          }

          else
          {
            v99 = 0;
          }

          [v135 setDebugUrlString:v99];
          if (includeRequestInResponse)
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

          if (internal_bestLeadImage)
          {
            v104 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A47B4();
            }

            [v135 setLeadImage:internal_bestLeadImage];
          }

          if (internal_bestSnapshot)
          {
            v105 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_1002A47F8();
            }

            [v135 setSnapshot:internal_bestSnapshot];
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
          v116 = [_contextEngineInstance description];
          sub_1002A483C(v116, &buf + 8, v177);
        }

        [_contextEngineInstance findResultsForRequest:v135 withReply:v113];
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
          type2 = [v135 type];
          [v122 recordSlowFindResults:0 requestType:type2 indexId:*(*(&buf + 1) + 40) coldEngine:stillWarmingUp];
        }

        else
        {
          v119 = [CKContextResponse alloc];
          v120 = +[CKContextResponse timeoutError];
          v121 = [v119 initWithError:v120 requestType:{objc_msgSend(v135, "type")}];
          (v132[2])(v132, v121);

          v122 = +[MetricsLogging instance];
          type3 = [v135 type];
          [v122 recordSlowFindResults:1 requestType:type3 indexId:*(*(&buf + 1) + 40) coldEngine:stillWarmingUp];
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
        languageTag = [requestCopy languageTag];
        LODWORD(v179) = 138412290;
        *(&v179 + 4) = languageTag;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Safari request with language tag: %@", &v179, 0xCu);
      }

      text2 = [requestCopy text];
      v33 = [text2 length] == 0;

      if (v33)
      {
        v39 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1002A4518();
        }

        isRequestingContentFromActiveApplications = 1;
        goto LABEL_40;
      }

      text3 = [requestCopy text];
      v35 = [text3 length] < 0x40;

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
    v42 = [v40 initWithError:v41 requestType:{objc_msgSend(requestCopy, "type")}];
    replyCopy[2](replyCopy, v42);

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
  debugFakeResults2 = [v153 debugFakeResults];
  v22 = [v20 initWithResults:debugFakeResults2 requestType:{objc_msgSend(requestCopy, "type")}];
  replyCopy[2](replyCopy, v22);

LABEL_6:
  objc_autoreleasePoolPop(context);
}

- (void)capabilitiesForRequestType:(unint64_t)type withReply:(id)reply
{
  replyCopy = reply;
  v12 = +[NSMutableSet set];
  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if (([_contextEngineInstance disabled] & 1) == 0)
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
  indexVersionId = [v8 indexVersionId];
  indexId = [_contextEngineInstance indexId];
  v11 = [NSString stringWithFormat:@"%@-%@", indexVersionId, indexId];

  replyCopy[2](replyCopy, v12, v11, 0);
}

- (void)ancestorsForTopics:(id)topics withReply:(id)reply
{
  topicsCopy = topics;
  replyCopy = reply;
  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([_contextEngineInstance disabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[CKContextResponse serviceDisabledError];
    replyCopy[2](replyCopy, 0, v8);
  }

  else
  {
    v8 = [_contextEngineInstance ancestorsForTopics:topicsCopy];
    if (v8)
    {
      (replyCopy)[2](replyCopy, v8, 0);
    }

    else
    {
      v9 = +[CKContextResponse timeoutError];
      replyCopy[2](replyCopy, 0, v9);
    }
  }
}

- (void)groupResponses:(id)responses withReply:(id)reply
{
  responsesCopy = responses;
  replyCopy = reply;
  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  if ([_contextEngineInstance disabled] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = +[CKContextResponse serviceDisabledError];
    replyCopy[2](replyCopy, 0, v8);
  }

  else
  {
    v8 = [_contextEngineInstance groupResponses:responsesCopy];
    (replyCopy)[2](replyCopy, v8, 0);
  }
}

- (void)statusWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[MetricsLogging instance];
  [v5 recordAssetInfo:self->_assets];

  v33 = objc_opt_new();
  common = [(CTKAssets *)self->_assets common];
  if (common)
  {
    v7 = objc_opt_new();
    assetVersion = [common assetVersion];
    compatibilityVersion = [common compatibilityVersion];
    if (assetVersion != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [NSNumber numberWithUnsignedInteger:assetVersion];
      [v7 setObject:v10 forKeyedSubscript:@"contentVersion"];
    }

    if (compatibilityVersion != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [NSNumber numberWithUnsignedInteger:compatibilityVersion];
      [v7 setObject:v11 forKeyedSubscript:@"compatVersion"];
    }

    [v33 setObject:v7 forKeyedSubscript:@"common"];
  }

  index = [(CTKAssets *)self->_assets index];
  if (index)
  {
    v13 = objc_opt_new();
    first = [index first];
    assetVersion2 = [first assetVersion];

    first2 = [index first];
    compatibilityVersion2 = [first2 compatibilityVersion];

    if (assetVersion2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [NSNumber numberWithUnsignedInteger:assetVersion2];
      [v13 setObject:v18 forKeyedSubscript:@"contentVersion"];
    }

    if (compatibilityVersion2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [NSNumber numberWithUnsignedInteger:compatibilityVersion2];
      [v13 setObject:v19 forKeyedSubscript:@"compatVersion"];
    }

    second = [index second];
    [v13 setObject:second forKeyedSubscript:@"indexIdentifier"];

    [v33 setObject:v13 forKeyedSubscript:@"index"];
  }

  v21 = +[ContextConfiguration sharedInstance];
  debugStatus = [v21 debugStatus];
  [v33 setObject:debugStatus forKeyedSubscript:@"currentConfiguration"];

  _contextEngineInstance = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  debugStatus2 = [_contextEngineInstance debugStatus];
  [v33 setObject:debugStatus2 forKeyedSubscript:@"engineStatus"];

  v25 = +[CTKABHelper refId];
  v26 = [v25 description];
  [v33 setObject:v26 forKeyedSubscript:@"refId"];

  _contextEngineInstance2 = [(CKContextXPCProtocolImpl *)self _contextEngineInstance];
  indexId = [_contextEngineInstance2 indexId];
  [v33 setObject:indexId forKeyedSubscript:@"indexId"];

  v29 = +[MetricsLogging instance];
  debugStatus3 = [v29 debugStatus];
  [v33 setObject:debugStatus3 forKeyedSubscript:@"loggingStatus"];

  v31 = +[_PASDeviceState currentOsBuild];
  [v33 setObject:v31 forKeyedSubscript:@"osBuildNumber"];

  dumpEnvironment = [objc_opt_class() dumpEnvironment];
  [v33 setObject:dumpEnvironment forKeyedSubscript:@"environment"];

  replyCopy[2](replyCopy, v33, 0);
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

- (void)donate:(id)donate
{
  donateCopy = donate;
  v5 = +[NSXPCConnection currentConnection];
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
  nonce = [donateCopy nonce];
  if (nonce || ([donateCopy associatedUserActivity], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    items = [donateCopy items];
    v9 = [items count];

    remoteProcesses = [donateCopy remoteProcesses];
    v11 = self->_donationExecutorsMap;
    objc_sync_enter(v11);
    donationExecutorsMap = self->_donationExecutorsMap;
    v13 = [NSNumber numberWithUnsignedLongLong:nonce];
    v14 = [(NSMapTable *)donationExecutorsMap objectForKey:v13];

    objc_sync_exit(v11);
    if (!v14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        donorBundleIdentifier = [donateCopy donorBundleIdentifier];
        v28 = 134218498;
        v29 = v9;
        v30 = 2112;
        v31 = v6;
        v32 = 2112;
        v33 = donorBundleIdentifier;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Refusing donation of %lu items from PID %@ for %@: unexpected/too late", &v28, 0x20u);
      }

      goto LABEL_18;
    }

    context = [v14 context];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      donorBundleIdentifier2 = [donateCopy donorBundleIdentifier];
      dateCreated = [context dateCreated];
      [dateCreated timeIntervalSinceNow];
      v28 = 134219010;
      v29 = v9;
      v30 = 2048;
      v31 = remoteProcesses;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = donorBundleIdentifier2;
      v36 = 1024;
      v37 = (v18 * -1000.0);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Donation of %lu items / rc:%lu from PID %@ for %@ received after %i ms", &v28, 0x30u);
    }

    if (v9 | remoteProcesses)
    {
      v19 = context;
      objc_sync_enter(v19);
      [v19 setAdditionalDonationsToWaitFor:{objc_msgSend(v19, "additionalDonationsToWaitFor") + remoteProcesses}];
      donations = [v19 donations];
      [donations addObject:donateCopy];

      donations2 = [v19 donations];
      v22 = [donations2 count];
      if (v22 >= [(CKContextXPCProtocolImpl *)self _totalDonationsToWaitForWithDonationState:v19])
      {
        balancedMarkIncomplete = [v19 balancedMarkIncomplete];

        if ((balancedMarkIncomplete & 1) == 0)
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
  -[CKContextUniversalRecentsManager processDonation:retrievingTopics:](recentsManager, "processDonation:retrievingTopics:", donateCopy, [v25 BOOLForKey:@"CKContextUniversalRecentsTopicExtraction"]);

LABEL_19:
}

- (unint64_t)_totalDonationsToWaitForWithDonationState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      additionalDonationsToWaitFor = [stateCopy additionalDonationsToWaitFor];
      v8 = 134217984;
      v9 = &additionalDonationsToWaitFor[[stateCopy numberOfApplicationsToWaitFor]];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Total donations to wait for is %lu", &v8, 0xCu);
    }

    additionalDonationsToWaitFor2 = [stateCopy additionalDonationsToWaitFor];
    v6 = &additionalDonationsToWaitFor2[[stateCopy numberOfApplicationsToWaitFor]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)logEngagementForResponseId:(id)id result:(id)result rank:(unint64_t)rank inputLength:(unint64_t)length completionLength:(unint64_t)completionLength requestType:(unint64_t)type logType:(unint64_t)logType
{
  contextEngine = self->_contextEngine;
  resultCopy = result;
  indexId = [(ContextEngine *)contextEngine indexId];
  v15 = +[MetricsLogging instance];
  [v15 recordQueryEngagementWithUserInputLength:length completionLength:completionLength result:resultCopy rank:rank indexId:indexId requestType:type logType:logType];
}

- (void)logTransactionSuccessfulForResponseId:(id)id inputLength:(unint64_t)length completionLength:(unint64_t)completionLength requestType:(unint64_t)type logType:(unint64_t)logType
{
  indexId = [(ContextEngine *)self->_contextEngine indexId];
  v11 = +[MetricsLogging instance];
  [v11 recordTransactionSuccessfulWithUserInputLength:length completionLength:completionLength indexId:indexId requestType:type logType:logType];
}

@end