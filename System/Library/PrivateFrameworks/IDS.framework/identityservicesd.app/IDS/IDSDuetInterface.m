@interface IDSDuetInterface
+ (id)sharedInstance;
- (BOOL)initialSyncInProgress;
- (BOOL)reunionSyncInProgress;
- (IDSDuetInterface)init;
- (IDSDuetInterfaceDelegate)delegate;
- (_opaque_pthread_mutex_t)allowedBundleIDsLock;
- (_opaque_pthread_mutex_t)initialSyncInProgressLock;
- (_opaque_pthread_mutex_t)reunionSyncInProgressLock;
- (id)_newKeyForValues:(id)a3 priority:(int64_t)a4;
- (void)_checkAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7;
- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3;
- (void)_setupPairedSystemContext;
- (void)checkAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7;
- (void)clearAdmissionCheckCache;
- (void)dealloc;
- (void)forceCheckAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7;
- (void)setAllowedBundleIDsLock:(_opaque_pthread_mutex_t *)a3;
- (void)setInitialSyncInProgress:(BOOL)a3 forClientID:(id)a4;
- (void)setInitialSyncInProgressLock:(_opaque_pthread_mutex_t *)a3;
- (void)setPairedDeviceIdentifier;
- (void)setReunionSyncInProgress:(BOOL)a3 forClientID:(id)a4;
- (void)setReunionSyncInProgressLock:(_opaque_pthread_mutex_t *)a3;
@end

@implementation IDSDuetInterface

- (void)setPairedDeviceIdentifier
{
  v3 = im_primary_base_queue();
  dispatch_assert_queue_V2(v3);

  v4 = +[IDSPairingManager sharedInstance];
  v8 = [v4 pairedDeviceUniqueID];

  if (objc_opt_respondsToSelector())
  {
    v5 = self->_pairedSystemContext;
    v6 = [(_DASPairedSystemContext *)v5 pairedDeviceIdentifier];
    v7 = v6;
    if (!v6 || ([v6 isEqualToString:v8] & 1) == 0)
    {
      [(_DASPairedSystemContext *)v5 setPairedDeviceIdentifier:v8];
    }
  }
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100328BD0;
  block[3] = &unk_100BD75B8;
  block[4] = a1;
  if (qword_100CBCDF8 != -1)
  {
    dispatch_once(&qword_100CBCDF8, block);
  }

  v2 = qword_100CBCDF0;

  return v2;
}

- (void)_setupPairedSystemContext
{
  if (!self->_pairedSystemContext)
  {
    v3 = IMWeakLinkClass();
    objc_initWeak(&location, self);
    v4 = im_primary_queue();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000043A8;
    v9[3] = &unk_100BD75E0;
    objc_copyWeak(&v10, &location);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100328D98;
    v7[3] = &unk_100BD7608;
    objc_copyWeak(&v8, &location);
    v5 = [v3 contextWithClientIdentifier:@"com.apple.ids.trafficAdmissionCheck" callbackQueue:v4 systemConditionChangeCallback:v9 trafficCancelationHandler:v7];
    pairedSystemContext = self->_pairedSystemContext;
    self->_pairedSystemContext = v5;

    [(IDSDuetInterface *)self setPairedDeviceIdentifier];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (IDSDuetInterface)init
{
  v11.receiver = self;
  v11.super_class = IDSDuetInterface;
  v2 = [(IDSDuetInterface *)&v11 init];
  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v13 = v2;
      v14 = 2080;
      v15 = "[IDSDuetInterface init]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p %s", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = v2;
      v10 = "[IDSDuetInterface init]";
      _IDSLogV();
    }

    pthread_mutex_init(&v2->_allowedBundleIDsLock, 0);
    pthread_mutex_init(&v2->_initialSyncInProgressLock, 0);
    pthread_mutex_init(&v2->_reunionSyncInProgressLock, 0);
    if (!v2->_initialSyncClientIDs)
    {
      v4 = objc_alloc_init(NSMutableSet);
      initialSyncClientIDs = v2->_initialSyncClientIDs;
      v2->_initialSyncClientIDs = v4;
    }

    if (!v2->_reunionSyncClientIDs)
    {
      v6 = objc_alloc_init(NSMutableSet);
      reunionSyncClientIDs = v2->_reunionSyncClientIDs;
      v2->_reunionSyncClientIDs = v6;
    }

    [(IDSDuetInterface *)v2 _setupPairedSystemContext:v9];
  }

  return v2;
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v6 = self;
    v7 = 2080;
    v8 = "[IDSDuetInterface dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%p %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  pthread_mutex_destroy(&self->_allowedBundleIDsLock);
  pthread_mutex_destroy(&self->_initialSyncInProgressLock);
  pthread_mutex_destroy(&self->_reunionSyncInProgressLock);
  v4.receiver = self;
  v4.super_class = IDSDuetInterface;
  [(IDSDuetInterface *)&v4 dealloc];
}

- (void)_resourceAvailabilityChangedForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[IDSQuickSwitchHelper sharedInstance];
  v6 = [v5 isQuickSwitchingToAnotherDevice];

  if (v6)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring resource changed during QuickSwitch", v9, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained duetInterface:self resourceAvailabilityChangedForIdentifiers:v4];
  }
}

- (void)setInitialSyncInProgress:(BOOL)a3 forClientID:(id)a4
{
  v4 = a3;
  v6 = a4;
  pthread_mutex_lock(&self->_initialSyncInProgressLock);
  v7 = [(NSMutableSet *)self->_initialSyncClientIDs containsObject:v6];
  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_initialSyncClientIDs addObject:v6];
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412802;
        v16 = @"YES";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting initialSyncInProgress to %@. Callstack %@ clientID %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v13 = +[NSThread callStackSymbols];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v10 = [NSThread callStackSymbols:@"YES"];
            _IDSLogV();
LABEL_16:
          }
        }
      }
    }
  }

  else if (v7)
  {
    [(NSMutableSet *)self->_initialSyncClientIDs removeObject:v6];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[NSThread callStackSymbols];
      *buf = 138412802;
      v16 = @"NO";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting initialSyncInProgress to %@. Callstack %@ for clientID %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = +[NSThread callStackSymbols];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v10 = [NSThread callStackSymbols:@"NO"];
          _IDSLogV();
          goto LABEL_16;
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_initialSyncInProgressLock);
}

- (BOOL)initialSyncInProgress
{
  pthread_mutex_lock(&self->_initialSyncInProgressLock);
  v3 = [(NSMutableSet *)self->_initialSyncClientIDs count]!= 0;
  pthread_mutex_unlock(&self->_initialSyncInProgressLock);
  return v3;
}

- (void)setReunionSyncInProgress:(BOOL)a3 forClientID:(id)a4
{
  v4 = a3;
  v6 = a4;
  pthread_mutex_lock(&self->_reunionSyncInProgressLock);
  v7 = [(NSMutableSet *)self->_reunionSyncClientIDs containsObject:v6];
  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_reunionSyncClientIDs addObject:v6];
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412802;
        v16 = @"YES";
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting reunionSyncInProgress to %@. Callstack %@ clientID %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v13 = +[NSThread callStackSymbols];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v10 = [NSThread callStackSymbols:@"YES"];
            _IDSLogV();
LABEL_16:
          }
        }
      }
    }
  }

  else if (v7)
  {
    [(NSMutableSet *)self->_reunionSyncClientIDs removeObject:v6];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = +[NSThread callStackSymbols];
      *buf = 138412802;
      v16 = @"NO";
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting reunionSyncInProgress to %@. Callstack %@ for clientID %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = +[NSThread callStackSymbols];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v10 = [NSThread callStackSymbols:@"NO"];
          _IDSLogV();
          goto LABEL_16;
        }
      }
    }
  }

  pthread_mutex_unlock(&self->_reunionSyncInProgressLock);
}

- (BOOL)reunionSyncInProgress
{
  pthread_mutex_lock(&self->_reunionSyncInProgressLock);
  v3 = [(NSMutableSet *)self->_reunionSyncClientIDs count]!= 0;
  pthread_mutex_unlock(&self->_reunionSyncInProgressLock);
  return v3;
}

- (id)_newKeyForValues:(id)a3 priority:(int64_t)a4
{
  v5 = a3;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100329B34;
  v14 = &unk_100BD7630;
  v6 = objc_alloc_init(NSMutableString);
  v15 = v6;
  [v5 enumerateObjectsUsingBlock:&v11];

  v7 = [NSString alloc];
  v8 = [v7 initWithFormat:@"%d", a4, v11, v12, v13, v14];
  [v6 appendString:v8];
  v9 = v6;

  return v9;
}

- (void)_checkAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(v14);
  v17 = 50;
  if (a4 == 300)
  {
    v17 = 90;
  }

  if (a4 == 100)
  {
    v18 = 10;
  }

  else
  {
    v18 = v17;
  }

  v19 = [(IDSDuetInterface *)self initialSyncInProgress];
  if (v19)
  {
    v20 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Tagging admission check with InitialSync", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  if ([(IDSDuetInterface *)self reunionSyncInProgress])
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Tagging admission check with ReunionSync", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v19 = 1;
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Performing duet check for values %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v37 = v12;
    _IDSLogV();
  }

  v40 = 900.0;
  v23 = [(_DASPairedSystemContext *)self->_pairedSystemContext allowsSendingTrafficeForServiceIdentifiers:v12 atPriorityLevel:v18 isReunionOrInitialSync:v19 responseValidityDuration:&v40, v37];
  v24 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (v23)
    {
      v25 = @"YES";
    }

    v26 = &stru_100C06028;
    if (v13)
    {
      v26 = v13;
    }

    *buf = 138412546;
    v42 = v25;
    v43 = 2112;
    v44 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received duet response canSend? %@ %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v27 = v23 ? @"YES" : @"NO";
    v28 = v13 ? v13 : &stru_100C06028;
    v38 = v27;
    v39 = v28;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v38 = v27;
      v39 = v28;
      _IDSLogV();
    }
  }

  if (v23)
  {
    v29 = [(IDSDuetInterface *)self _newKeyForValues:v12 priority:a4];
    v30 = [NSDate alloc];
    v31 = [v30 initWithTimeIntervalSinceNow:v40];
    pthread_mutex_lock(&self->_allowedBundleIDsLock);
    allowedBundleIDs = self->_allowedBundleIDs;
    if (!allowedBundleIDs)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v34 = self->_allowedBundleIDs;
      self->_allowedBundleIDs = Mutable;

      allowedBundleIDs = self->_allowedBundleIDs;
    }

    [(NSMutableDictionary *)allowedBundleIDs setObject:v31 forKey:v29, v38, v39];
    pthread_mutex_unlock(&self->_allowedBundleIDsLock);

    goto LABEL_51;
  }

  if (a4 == 300)
  {
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "IDSDuet: Duet refused to send a high priority message, overriding! Please file a bug.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

LABEL_51:
    v36 = 1;
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v36 = 0;
  if (v15)
  {
LABEL_54:
    v15[2](v15, v36);
  }

LABEL_55:
  objc_autoreleasePoolPop(v16);
}

- (void)forceCheckAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (![v12 count])
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No duet values specified, using a default value", v17, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v12 = &off_100C3DAC0;
  }

  [(IDSDuetInterface *)self _checkAvailabilityForValues:v12 priority:a4 logString:v13 fromQueue:v14 withCompletionBlock:v15];
}

- (void)checkAvailabilityForValues:(id)a3 priority:(int64_t)a4 logString:(id)a5 fromQueue:(id)a6 withCompletionBlock:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(IDSDuetInterface *)v12 count])
  {
    if ([(IDSDuetInterface *)v12 count]!= 1)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v16 = [(IDSDuetInterface *)v12 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(IDSDuetInterface *)v16 hasPrefix:@"com.apple.private.alloy"]&& ([(IDSDuetInterface *)v16 isEqualToString:@"com.apple.private.alloy.proxiedcrashcopier"]& 1) == 0)
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Service has not specified DuetIdentifiers! %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v27 = v16;
        _IDSLogV();
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No duet values specified, using a default value", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v17 = 0;
    v16 = v12;
    v12 = &off_100C3DAC0;
  }

LABEL_15:
  v19 = [(IDSDuetInterface *)self _newKeyForValues:v12 priority:a4, v27];
  pthread_mutex_lock(&self->_allowedBundleIDsLock);
  v20 = [(NSMutableDictionary *)self->_allowedBundleIDs objectForKey:v19];
  v21 = v20;
  if ((v17 & 1) != 0 || ([v20 timeIntervalSinceNow], v22 > 0.0))
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v31 = self;
      v32 = 2080;
      v33 = "[IDSDuetInterface checkAvailabilityForValues:priority:logString:fromQueue:withCompletionBlock:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%p %s Sending IDS message, already allowed by CoreDuet", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    pthread_mutex_unlock(&self->_allowedBundleIDsLock);
    if (v15)
    {
      v15[2](v15, 1);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_allowedBundleIDs removeObjectForKey:v19];
    if (![(NSMutableDictionary *)self->_allowedBundleIDs count])
    {
      allowedBundleIDs = self->_allowedBundleIDs;
      self->_allowedBundleIDs = 0;
    }

    pthread_mutex_unlock(&self->_allowedBundleIDsLock);
    v25 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v31 = self;
      v32 = 2080;
      v33 = "[IDSDuetInterface checkAvailabilityForValues:priority:logString:fromQueue:withCompletionBlock:]";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%p %s Sending IDS message, asking CoreDuet", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v28 = self;
      v29 = "[IDSDuetInterface checkAvailabilityForValues:priority:logString:fromQueue:withCompletionBlock:]";
      _IDSLogV();
    }

    [(IDSDuetInterface *)self _checkAvailabilityForValues:v12 priority:a4 logString:v13 fromQueue:v14 withCompletionBlock:v15, v28, v29];
  }
}

- (void)clearAdmissionCheckCache
{
  _IMLog();
  pthread_mutex_lock(&self->_allowedBundleIDsLock);
  [(NSMutableDictionary *)self->_allowedBundleIDs removeAllObjects];
  if (![(NSMutableDictionary *)self->_allowedBundleIDs count])
  {
    allowedBundleIDs = self->_allowedBundleIDs;
    self->_allowedBundleIDs = 0;
  }

  pthread_mutex_unlock(&self->_allowedBundleIDsLock);
}

- (IDSDuetInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_opaque_pthread_mutex_t)allowedBundleIDsLock
{
  v3 = *&self[1].__sig;
  *&retstr->__sig = *&self->__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[24];
  *&retstr->__opaque[24] = *&self[1].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setAllowedBundleIDsLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[40];
  *&self->_allowedBundleIDsLock.__opaque[24] = *&a3->__opaque[24];
  *&self->_allowedBundleIDsLock.__opaque[40] = v5;
  *&self->_allowedBundleIDsLock.__sig = v3;
  *&self->_allowedBundleIDsLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)initialSyncInProgressLock
{
  v3 = *&self[2].__sig;
  *&retstr->__sig = *&self[1].__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[2].__opaque[24];
  *&retstr->__opaque[24] = *&self[2].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setInitialSyncInProgressLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[40];
  *&self->_initialSyncInProgressLock.__opaque[24] = *&a3->__opaque[24];
  *&self->_initialSyncInProgressLock.__opaque[40] = v5;
  *&self->_initialSyncInProgressLock.__sig = v3;
  *&self->_initialSyncInProgressLock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)reunionSyncInProgressLock
{
  v3 = *&self[3].__sig;
  *&retstr->__sig = *&self[2].__opaque[40];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[3].__opaque[24];
  *&retstr->__opaque[24] = *&self[3].__opaque[8];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setReunionSyncInProgressLock:(_opaque_pthread_mutex_t *)a3
{
  v3 = *&a3->__sig;
  v4 = *&a3->__opaque[8];
  v5 = *&a3->__opaque[40];
  *&self->_reunionSyncInProgressLock.__opaque[24] = *&a3->__opaque[24];
  *&self->_reunionSyncInProgressLock.__opaque[40] = v5;
  *&self->_reunionSyncInProgressLock.__sig = v3;
  *&self->_reunionSyncInProgressLock.__opaque[8] = v4;
}

@end