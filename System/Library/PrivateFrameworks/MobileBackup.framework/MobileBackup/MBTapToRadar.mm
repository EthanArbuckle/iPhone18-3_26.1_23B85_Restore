@interface MBTapToRadar
+ (MBTapToRadar)sharedInstance;
- (int64_t)_presentTTRConsentRequestOnMainThread:(id)thread message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags;
- (int64_t)_presentTTRConsentRequestSync:(id)sync message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags ttrConsentGrantedBlock:(id)block;
- (void)_endPresenting:(SEL)presenting;
- (void)_fileTTR:(id)r description:(id)description keywordID:(id)d attachment:(id)attachment;
- (void)_presentTTRConsentRequestAsync:(id)async message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags ttrConsentGrantedBlock:(id)block;
- (void)_startPresenting:(SEL)presenting;
- (void)reportBackgroundRestoreErrorsIn:(id)in persona:(id)persona;
- (void)reportBackgroundRestoreTimeout:(double)timeout persona:(id)persona;
- (void)reportBackupVerificationFailure:(id)failure persona:(id)persona;
- (void)reportForegroundRestoreFailure:(id)failure persona:(id)persona;
@end

@implementation MBTapToRadar

+ (MBTapToRadar)sharedInstance
{
  if (MBIsInternalInstall())
  {
    if (qword_100421810 != -1)
    {
      dispatch_once(&qword_100421810, &stru_1003BF9B8);
    }

    v2 = qword_100421808;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_startPresenting:(SEL)presenting
{
  v5 = +[MBDaemon sharedDaemon];
  [v5 holdWorkAssertion:presenting];

  [(MBTapToRadar *)self setPresentingSelector:presenting];
}

- (void)_endPresenting:(SEL)presenting
{
  v5 = +[MBDaemon sharedDaemon];
  [v5 releaseWorkAssertion:presenting];

  [(MBTapToRadar *)self setPresentingSelector:0];
}

- (void)_presentTTRConsentRequestAsync:(id)async message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags ttrConsentGrantedBlock:(id)block
{
  asyncCopy = async;
  messageCopy = message;
  personaCopy = persona;
  blockCopy = block;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  if (![asyncCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestAsync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 68, "heading.length");
  }

  if (![messageCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestAsync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 69, "message.length");
  }

  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestAsync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 70, "persona");
  }

  if (!selector)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestAsync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 71, "selector");
  }

  if (!blockCopy)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestAsync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 72, "ttrConsentGrantedBlock");
  }

  presentingSelector = [(MBTapToRadar *)self presentingSelector];
  if (presentingSelector)
  {
    v19 = presentingSelector;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      Name = sel_getName(v19);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ttr= Already presenting a TTR consent request for %s, skipping (async)", buf, 0xCu);
      sel_getName(v19);
      _MBLog();
    }
  }

  else
  {
    [(MBTapToRadar *)self _startPresenting:selector];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013B420;
    block[3] = &unk_1003BF9E0;
    block[4] = self;
    v22 = asyncCopy;
    v23 = messageCopy;
    v24 = personaCopy;
    selectorCopy = selector;
    nagsCopy = nags;
    v25 = blockCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (int64_t)_presentTTRConsentRequestSync:(id)sync message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags ttrConsentGrantedBlock:(id)block
{
  syncCopy = sync;
  messageCopy = message;
  personaCopy = persona;
  blockCopy = block;
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  if (![syncCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestSync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 94, "heading.length");
  }

  if (![messageCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestSync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 95, "message.length");
  }

  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestSync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 96, "persona");
  }

  if (!selector)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestSync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 97, "selector");
  }

  if (!blockCopy)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestSync:message:persona:selector:delayBetweenNags:ttrConsentGrantedBlock:]", "MBTapToRadar.m", 98, "ttrConsentGrantedBlock");
  }

  presentingSelector = [(MBTapToRadar *)self presentingSelector];
  if (presentingSelector)
  {
    v19 = presentingSelector;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sel_getName(v19);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=ttr= Already presenting a TTR consent request for %s, skipping (sync)", &buf, 0xCu);
      sel_getName(v19);
      _MBLog();
    }

    v21 = 2;
  }

  else
  {
    [(MBTapToRadar *)self _startPresenting:selector];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x2020000000;
    v33 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013B7B8;
    block[3] = &unk_1003BFA08;
    p_buf = &buf;
    block[4] = self;
    v24 = syncCopy;
    v25 = messageCopy;
    v26 = personaCopy;
    selectorCopy = selector;
    nagsCopy = nags;
    v27 = blockCopy;
    dispatch_sync(&_dispatch_main_q, block);

    [(MBTapToRadar *)self _endPresenting:selector];
    v21 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  return v21;
}

- (int64_t)_presentTTRConsentRequestOnMainThread:(id)thread message:(id)message persona:(id)persona selector:(SEL)selector delayBetweenNags:(double)nags
{
  threadCopy = thread;
  messageCopy = message;
  personaCopy = persona;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (![threadCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestOnMainThread:message:persona:selector:delayBetweenNags:]", "MBTapToRadar.m", 123, "heading.length");
  }

  if (![messageCopy length])
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestOnMainThread:message:persona:selector:delayBetweenNags:]", "MBTapToRadar.m", 124, "message.length");
  }

  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestOnMainThread:message:persona:selector:delayBetweenNags:]", "MBTapToRadar.m", 125, "persona");
  }

  if (!selector)
  {
    __assert_rtn("[MBTapToRadar _presentTTRConsentRequestOnMainThread:message:persona:selector:delayBetweenNags:]", "MBTapToRadar.m", 126, "selector");
  }

  v15 = +[MBBehaviorOptions sharedOptions];
  isAutomation = [v15 isAutomation];

  if (isAutomation)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=ttr= Running in automation, skipping collecting TTR", buf, 2u);
      _MBLog();
    }

    v18 = 1;
    goto LABEL_32;
  }

  if ([(MBTapToRadar *)self autoAccept])
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "=ttr= Skipping TTR consent request from a backupctl initiated command", buf, 2u);
      _MBLog();
    }

    v18 = 6;
    goto LABEL_32;
  }

  if (nags != 0.0)
  {
    v17 = NSStringFromSelector(selector);
    v19 = [personaCopy copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];
    v20 = [v19 objectForKeyedSubscript:v17];
    v21 = +[NSDate date];
    v22 = v21;
    if (v20)
    {
      [v21 timeIntervalSinceDate:v20];
      if (v23 < nags)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          [v22 timeIntervalSinceDate:v20];
          v25 = [NSDate _durationDescription:?];
          *buf = 138412546;
          v42 = v17;
          v43 = 2112;
          v44 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ttr= Last presented TTR for %@ too recently (%@)", buf, 0x16u);

          [v22 timeIntervalSinceDate:v20];
          v37 = [NSDate _durationDescription:?];
          _MBLog();
        }

        v18 = 3;
        goto LABEL_32;
      }
    }

    v26 = [v19 mutableCopy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_opt_new();
    }

    v29 = v28;

    [v29 setObject:v22 forKeyedSubscript:v17];
    [personaCopy setPreferencesValue:v29 forKey:@"UserNotificationEvents"];
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v17;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=ttr= Saving last nag date for %@ to now", buf, 0xCu);
      v36 = v17;
      _MBLog();
    }
  }

  v39[0] = kCFUserNotificationAlertHeaderKey;
  v39[1] = kCFUserNotificationAlertMessageKey;
  v40[0] = threadCopy;
  v40[1] = messageCopy;
  v39[2] = kCFUserNotificationDefaultButtonTitleKey;
  v39[3] = kCFUserNotificationAlternateButtonTitleKey;
  v40[2] = @"Open with Tap-to-Radar";
  v40[3] = @"Ignore";
  v17 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4, v36];
  v31 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, 0, v17);
  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v42 = messageCopy;
    v43 = 2048;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "=ttr= Posted internal notification about %@ %p", buf, 0x16u);
    _MBLog();
  }

  responseFlags = 0;
  CFUserNotificationReceiveResponse(v31, 0.0, &responseFlags);
  v33 = responseFlags & 3;
  v34 = MBGetDefaultLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v42 = v33;
    v43 = 2048;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "=ttr= Received response (%lu) from internal notification %p", buf, 0x16u);
    _MBLog();
  }

  CFRelease(v31);
  if (v33)
  {
    v18 = 4;
  }

  else
  {
    v18 = 5;
  }

LABEL_32:

  return v18;
}

- (void)_fileTTR:(id)r description:(id)description keywordID:(id)d attachment:(id)attachment
{
  rCopy = r;
  descriptionCopy = description;
  dCopy = d;
  attachmentCopy = attachment;
  if (!rCopy)
  {
    __assert_rtn("[MBTapToRadar _fileTTR:description:keywordID:attachment:]", "MBTapToRadar.m", 177, "title");
  }

  v13 = attachmentCopy;
  v17 = 0;
  v14 = [_TtC7backupd16MBTapToRadarCore fileTapToRadarWithTitle:rCopy description:descriptionCopy keywordID:dCopy attachment:attachmentCopy error:&v17];
  v15 = v17;
  if ((v14 & 1) == 0)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ttr= Failed to open TTR URL: %@", buf, 0xCu);
      _MBLog();
    }
  }
}

- (void)reportBackupVerificationFailure:(id)failure persona:(id)persona
{
  failureCopy = failure;
  personaCopy = persona;
  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar reportBackupVerificationFailure:persona:]", "MBTapToRadar.m", 186, "persona");
  }

  v9 = personaCopy;
  v10 = [failureCopy _summaryWithLength:200];
  v11 = v10;
  v12 = @"Unknown error";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013C0E0;
  v15[3] = &unk_1003BC060;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(MBTapToRadar *)self _presentTTRConsentRequestAsync:@"iCloud Backup Verification Failure" message:@"Could not verify the last backup" persona:v9 selector:a2 delayBetweenNags:v15 ttrConsentGrantedBlock:0.0];
}

- (void)reportForegroundRestoreFailure:(id)failure persona:(id)persona
{
  failureCopy = failure;
  personaCopy = persona;
  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar reportForegroundRestoreFailure:persona:]", "MBTapToRadar.m", 204, "persona");
  }

  v9 = personaCopy;
  v10 = [failureCopy _summaryWithLength:200];
  v11 = v10;
  v12 = @"Unknown error";
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10013C22C;
  v15[3] = &unk_1003BC060;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(MBTapToRadar *)self _presentTTRConsentRequestAsync:@"iCloud Restore Failure" message:@"Foreground restore failure" persona:v9 selector:a2 delayBetweenNags:v15 ttrConsentGrantedBlock:0.0];
}

- (void)reportBackgroundRestoreTimeout:(double)timeout persona:(id)persona
{
  personaCopy = persona;
  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar reportBackgroundRestoreTimeout:persona:]", "MBTapToRadar.m", 222, "persona");
  }

  v8 = personaCopy;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013C330;
  v9[3] = &unk_1003BDAE8;
  *&v9[5] = timeout;
  v9[4] = self;
  [(MBTapToRadar *)self _presentTTRConsentRequestSync:@"iCloud Restore is taking too long" message:@"iCloud Restore is taking more than 48h" persona:personaCopy selector:a2 delayBetweenNags:v9 ttrConsentGrantedBlock:86400.0];
}

- (void)reportBackgroundRestoreErrorsIn:(id)in persona:(id)persona
{
  inCopy = in;
  personaCopy = persona;
  if (!personaCopy)
  {
    __assert_rtn("[MBTapToRadar reportBackgroundRestoreErrorsIn:persona:]", "MBTapToRadar.m", 241, "persona");
  }

  v9 = personaCopy;
  if (inCopy)
  {
    v24 = 0;
    v10 = [inCopy fatalErrorCount:&v24];
    v11 = v24;
    v12 = MBGetDefaultLog();
    v13 = v12;
    if (v10)
    {
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=ttr= Found %lu fatal errors", buf, 0xCu);
          _MBLog();
        }

        v22 = 0;
        v23 = 0;
        v21 = v11;
        v15 = [inCopy _writeRestoreFailuresTo:&v23 sortedNewLineSeparatedDomainNamesOut:&v22 error:&v21];
        v16 = v23;
        v13 = v22;
        v14 = v21;

        if (v15)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10013C77C;
          v18[3] = &unk_1003BC2E0;
          v18[4] = self;
          v19 = v13;
          v20 = v16;
          [(MBTapToRadar *)self _presentTTRConsentRequestSync:@"iCloud Restore Failure" message:@"Errors detected while background restoring" persona:v9 selector:a2 delayBetweenNags:v18 ttrConsentGrantedBlock:86400.0];
        }

        else
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=ttr= Failed to write out errors from restore plan: %@", buf, 0xCu);
            _MBLog();
          }
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=ttr= Failed to get fatal error count: %@", buf, 0xCu);
LABEL_11:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=ttr= No fatal errors found", buf, 2u);
      goto LABEL_11;
    }

    v14 = v11;
LABEL_21:

    goto LABEL_22;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ttr= No restore plan to inspect for errors", buf, 2u);
    _MBLog();
  }

LABEL_22:
}

@end