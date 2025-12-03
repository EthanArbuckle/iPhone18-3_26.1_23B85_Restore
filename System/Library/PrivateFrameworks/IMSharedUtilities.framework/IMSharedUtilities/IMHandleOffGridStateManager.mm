@interface IMHandleOffGridStateManager
+ (id)sharedInstance;
- (IMHandleOffGridStateManager)init;
- (NSDictionary)cachedOverrideDatesByHandleID;
- (SKStatusSubscription)personalSubscription;
- (SKStatusSubscriptionService)subscriptionService;
- (id)_cachedStatusSubscriptionForHandle:(id)handle;
- (id)_cachedStatusSubscriptionForIMHandle:(id)handle fromCache:(id)cache cacheDescription:(id)description cacheMiss:(BOOL *)miss;
- (id)_identifierFromStatusSubscription:(id)subscription handleID:(id)d;
- (id)_overrideDateForHandleWithID:(id)d;
- (id)_skHandleForHandle:(id)handle;
- (id)_subscriptionCacheKeyForHandle:(id)handle;
- (id)cachedStatusSubscriptionForHandle:(id)handle;
- (int64_t)_offGridModeFromStatusSubscription:(id)subscription handleID:(id)d onlyIfLaterThanDate:(id)date;
- (int64_t)offGridModeForHandle:(id)handle;
- (int64_t)personalOffGridMode;
- (void)_clearCurrentSubscriptionCache;
- (void)_fetchUpdatedStatusAndUpdateCachesForHandle:(id)handle lastKnownStatus:(id)status completion:(id)completion;
- (void)_fetchUpdatedStatusForHandle:(id)handle completion:(id)completion;
- (void)_personalSubscriptionWithCompletion:(id)completion;
- (void)_postNotificationForUpdatedStatusWithSubscription:(id)subscription;
- (void)_setCachedOverrideDatesByHandleID:(id)d;
- (void)cachedOffGridModeAndLastPublisherForHandle:(id)handle completion:(id)completion;
- (void)fetchUpdatedStatusForHandle:(id)handle completion:(id)completion;
- (void)offGridModeForHandle:(id)handle completion:(id)completion;
- (void)overrideStatusForHandleWithID:(id)d publishedBeforeDate:(id)date;
- (void)personalOffGridModeWithCompletion:(id)completion;
- (void)subscriptionInvitationReceived:(id)received;
- (void)subscriptionReceivedStatusUpdate:(id)update;
- (void)subscriptionServiceDaemonDisconnected:(id)disconnected;
- (void)subscriptionStateChanged:(id)changed;
@end

@implementation IMHandleOffGridStateManager

+ (id)sharedInstance
{
  if (qword_1ED8CA2D8 != -1)
  {
    sub_1A85FA6B8();
  }

  v3 = qword_1ED8C9918;

  return v3;
}

- (NSDictionary)cachedOverrideDatesByHandleID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8601F44;
  v10 = sub_1A8602190;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A85F7444;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (IMHandleOffGridStateManager)init
{
  v20.receiver = self;
  v20.super_class = IMHandleOffGridStateManager;
  v2 = [(IMHandleOffGridStateManager *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentSubscriptionCache = v2->_currentSubscriptionCache;
    v2->_currentSubscriptionCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lastKnownSubscriptionCache = v2->_lastKnownSubscriptionCache;
    v2->_lastKnownSubscriptionCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingFetchesForCacheKeys = v2->_pendingFetchesForCacheKeys;
    v2->_pendingFetchesForCacheKeys = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overrideDatesByHandleID = v2->_overrideDatesByHandleID;
    v2->_overrideDatesByHandleID = v9;

    v2->_currentCacheGeneration = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_DEFAULT, 0);
    v13 = dispatch_queue_create("com.apple.Messages.IMHandleOffGridStateManager", v12);
    queue = v2->_queue;
    v2->_queue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_DEFAULT, 0);
    v17 = dispatch_queue_create("com.apple.Messages.IMHandleOffGridStateManagerFetch", v16);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v17;
  }

  return v2;
}

- (SKStatusSubscriptionService)subscriptionService
{
  dispatch_assert_queue_V2(self->_queue);
  subscriptionService = self->_subscriptionService;
  if (!subscriptionService)
  {
    v4 = [objc_alloc(MEMORY[0x1AC570AA0](@"SKStatusSubscriptionService" @"StatusKit"))];
    v5 = self->_subscriptionService;
    self->_subscriptionService = v4;

    [(SKStatusSubscriptionService *)self->_subscriptionService addDelegate:self queue:MEMORY[0x1E69E96A0]];
    subscriptionService = self->_subscriptionService;
  }

  return subscriptionService;
}

- (int64_t)offGridModeForHandle:(id)handle
{
  handleCopy = handle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86892E4;
  block[3] = &unk_1E7828978;
  block[4] = self;
  v10 = handleCopy;
  v11 = &v12;
  v6 = handleCopy;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)offGridModeForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689450;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = handleCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = handleCopy;
  dispatch_sync(queue, block);
}

- (id)cachedStatusSubscriptionForHandle:(id)handle
{
  handleCopy = handle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1A8601F44;
  v16 = sub_1A8602190;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86895F0;
  block[3] = &unk_1E78289C8;
  v10 = handleCopy;
  v11 = &v12;
  block[4] = self;
  v6 = handleCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)cachedOffGridModeAndLastPublisherForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689704;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = handleCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = handleCopy;
  dispatch_sync(queue, block);
}

- (void)fetchUpdatedStatusForHandle:(id)handle completion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868989C;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = handleCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = handleCopy;
  dispatch_sync(queue, block);
}

- (int64_t)personalOffGridMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8689958;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)personalOffGridModeWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8689A60;
  v7[3] = &unk_1E7828A18;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)overrideStatusForHandleWithID:(id)d publishedBeforeDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689C18;
  block[3] = &unk_1E7828A40;
  block[4] = self;
  v12 = dCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
  dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1BA64E8);
}

- (void)_setCachedOverrideDatesByHandleID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8689D60;
  v7[3] = &unk_1E78260F0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(queue, v7);
}

- (id)_overrideDateForHandleWithID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    overrideDatesByHandleID = [(IMHandleOffGridStateManager *)self overrideDatesByHandleID];
    v6 = [overrideDatesByHandleID objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cachedStatusSubscriptionForHandle:(id)handle
{
  handleCopy = handle;
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0;
  currentSubscriptionCache = [(IMHandleOffGridStateManager *)self currentSubscriptionCache];
  v6 = [(IMHandleOffGridStateManager *)self _cachedStatusSubscriptionForIMHandle:handleCopy fromCache:currentSubscriptionCache cacheDescription:@"Current" cacheMiss:&v10];

  if (v10 == 1)
  {
    lastKnownSubscriptionCache = [(IMHandleOffGridStateManager *)self lastKnownSubscriptionCache];
    v8 = [(IMHandleOffGridStateManager *)self _cachedStatusSubscriptionForIMHandle:handleCopy fromCache:lastKnownSubscriptionCache cacheDescription:@"LastKnown" cacheMiss:0];

    [(IMHandleOffGridStateManager *)self _fetchUpdatedStatusAndUpdateCachesForHandle:handleCopy lastKnownStatus:v8 completion:0];
    v6 = v8;
  }

  return v6;
}

- (void)_fetchUpdatedStatusAndUpdateCachesForHandle:(id)handle lastKnownStatus:(id)status completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  statusCopy = status;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  currentStatus = [statusCopy currentStatus];
  statusUniqueIdentifier = [currentStatus statusUniqueIdentifier];

  v13 = [(IMHandleOffGridStateManager *)self _subscriptionCacheKeyForHandle:handleCopy];
  if (([(NSMutableSet *)self->_pendingFetchesForCacheKeys containsObject:v13]& 1) != 0)
  {
    if (!completionCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v13;
          _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "We already have a pending subscription fetch for cache key: %@. That fetch will notify if the subscription has changed. Taking no further action.", buf, 0xCu);
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
    [(NSMutableSet *)self->_pendingFetchesForCacheKeys addObject:v13];
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "We do not have any pending fetches for cache key: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v16 = [handleCopy ID];
  v17 = [(IMHandleOffGridStateManager *)self _overrideDateForHandleWithID:v16];
  currentCacheGeneration = [(IMHandleOffGridStateManager *)self currentCacheGeneration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A868A274;
  v21[3] = &unk_1E7828A90;
  v21[4] = self;
  objc_copyWeak(v27, buf);
  v27[1] = currentCacheGeneration;
  v26 = completionCopy;
  v22 = v13;
  v19 = v16;
  v23 = v19;
  v24 = statusUniqueIdentifier;
  v20 = v17;
  v25 = v20;
  [(IMHandleOffGridStateManager *)self _fetchUpdatedStatusForHandle:handleCopy completion:v21];

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
LABEL_13:
}

- (id)_cachedStatusSubscriptionForIMHandle:(id)handle fromCache:(id)cache cacheDescription:(id)description cacheMiss:(BOOL *)miss
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  queue = self->_queue;
  cacheCopy = cache;
  handleCopy = handle;
  dispatch_assert_queue_V2(queue);
  v14 = [(IMHandleOffGridStateManager *)self _subscriptionCacheKeyForHandle:handleCopy];

  v15 = [cacheCopy objectForKey:v14];

  if (v15)
  {
    if (miss)
    {
      *miss = 0;
    }

    MEMORY[0x1AC570AA0](@"SKStatusSubscription", @"StatusKit");
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      goto LABEL_13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = IMLogHandleForCategory("IMHandleOffGridStateManager");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = 138412802;
        v20 = descriptionCopy;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        _os_log_fault_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_FAULT, "Subscription cache hit (%@) for key %@, but object in cache is of unknown type: %@", &v19, 0x20u);
      }
    }
  }

  else if (miss)
  {
    v16 = 0;
    *miss = 1;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)_fetchUpdatedStatusForHandle:(id)handle completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  subscriptionService = [(IMHandleOffGridStateManager *)self subscriptionService];
  v9 = [handleCopy ID];
  if ([handleCopy matchesLoginHandleForAnyAccount])
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Handle %@ matches login handle. Fetching personal status subscription", buf, 0xCu);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A868ABF8;
    v18[3] = &unk_1E7828AB8;
    v19 = completionCopy;
    v11 = completionCopy;
    [(IMHandleOffGridStateManager *)self _personalSubscriptionWithCompletion:v18];
    v12 = v19;
  }

  else
  {
    v13 = [(IMHandleOffGridStateManager *)self _skHandleForHandle:v9];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Initiating a subscription fetch for handle: %@", buf, 0xCu);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A868AC08;
    v15[3] = &unk_1E7828AE0;
    v16 = v13;
    v17 = completionCopy;
    v12 = completionCopy;
    v11 = v13;
    [subscriptionService statusSubscriptionForHandle:v11 completion:v15];
  }
}

- (SKStatusSubscription)personalSubscription
{
  personalSubscription = self->_personalSubscription;
  if (!personalSubscription)
  {
    subscriptionService = [(IMHandleOffGridStateManager *)self subscriptionService];
    personalStatusSubscription = [subscriptionService personalStatusSubscription];
    v6 = self->_personalSubscription;
    self->_personalSubscription = personalStatusSubscription;

    personalSubscription = self->_personalSubscription;
  }

  return personalSubscription;
}

- (void)_personalSubscriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  subscriptionService = [(IMHandleOffGridStateManager *)self subscriptionService];
  v6 = subscriptionService;
  personalSubscription = self->_personalSubscription;
  if (personalSubscription)
  {
    completionCopy[2](completionCopy, personalSubscription);
  }

  else
  {
    fetchQueue = self->_fetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A868AF50;
    block[3] = &unk_1E78289A0;
    v11 = subscriptionService;
    selfCopy = self;
    v13 = completionCopy;
    v9 = 0;
    dispatch_async(fetchQueue, block);
  }
}

- (int64_t)_offGridModeFromStatusSubscription:(id)subscription handleID:(id)d onlyIfLaterThanDate:(id)date
{
  v33 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  dCopy = d;
  dateCopy = date;
  if (subscriptionCopy)
  {
    currentStatus = [subscriptionCopy currentStatus];
    v11 = currentStatus;
    if (!currentStatus)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = dCopy;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Current status not found for handle %@, returning unknown off grid mode", &v27, 0xCu);
        }
      }

      v18 = 0;
      goto LABEL_38;
    }

    statusPayload = [currentStatus statusPayload];
    payloadDictionary = [statusPayload payloadDictionary];
    if (![payloadDictionary count])
    {
      v20 = IMLogHandleForCategory("IMHandleOffGridStateManager");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2B34();
      }

      goto LABEL_24;
    }

    v14 = [payloadDictionary objectForKeyedSubscript:@"m"];
    integerValue = [v14 integerValue];

    if (integerValue == 2)
    {
      if (!dateCopy || ([v11 datePublished], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dateCopy, "laterDate:", v22), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23 != dateCopy))
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = dCopy;
            _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Off grid mode enabled for %@", &v27, 0xCu);
          }
        }

        v18 = 2;
        goto LABEL_37;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        datePublished = [v11 datePublished];
        v27 = 138412802;
        v28 = dCopy;
        v29 = 2112;
        v30 = datePublished;
        v31 = 2112;
        v32 = dateCopy;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Off grid mode enabled for %@ but newer override date, returning disabled (published: %@ override: %@)", &v27, 0x20u);
      }
    }

    else
    {
      if (integerValue != 1)
      {
        if (!integerValue && IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = dCopy;
            _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Off grid mode unknown for %@", &v27, 0xCu);
          }
        }

LABEL_24:
        v18 = 0;
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_29:
        v18 = 1;
        goto LABEL_37;
      }

      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = dCopy;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Off grid mode disabled for %@", &v27, 0xCu);
      }
    }

    goto LABEL_29;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, returning unknown off grid mode", &v27, 0xCu);
    }
  }

  v18 = 0;
LABEL_39:

  return v18;
}

- (id)_identifierFromStatusSubscription:(id)subscription handleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  dCopy = d;
  if (subscriptionCopy)
  {
    currentStatus = [subscriptionCopy currentStatus];
    v8 = currentStatus;
    if (currentStatus)
    {
      statusPayload = [currentStatus statusPayload];
      payloadDictionary = [statusPayload payloadDictionary];
      if ([payloadDictionary count] && (objc_msgSend(payloadDictionary, "objectForKeyedSubscript:", @"id"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = [payloadDictionary objectForKeyedSubscript:@"id"];
      }

      else
      {
        v14 = IMLogHandleForCategory("IMHandleOffGridStateManager");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C2B9C();
        }

        v12 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = dCopy;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Current status not found for handle %@, returning unknown identifier", &v17, 0xCu);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = dCopy;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, no identifier to return", &v17, 0xCu);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (void)subscriptionInvitationReceived:(id)received
{
  v9 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = receivedCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, notifying UI to subscribe, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleOffGridInvitationReceivedNotification object:receivedCopy];
}

- (void)subscriptionReceivedStatusUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = updateCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Status update received, notifying UI to display updated status, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleOffGridChangedNotification object:updateCopy];
}

- (void)subscriptionStateChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = changedCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Status state changed, notifying UI to refetch all relevant state. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleOffGridStateChangedNotification object:changedCopy];
}

- (void)subscriptionServiceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Subscription service daemon was disconnected, (e.g. app is returning from backgrounded) notifying UI to refetch if necessary", v7, 2u);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleOffGridDaemonDisconnectedNotification object:0];
}

- (void)_postNotificationForUpdatedStatusWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868BBBC;
  block[3] = &unk_1E7828050;
  v6 = subscriptionCopy;
  v4 = subscriptionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_subscriptionCacheKeyForHandle:(id)handle
{
  handleCopy = handle;
  normalizedID = [handleCopy normalizedID];
  if (![normalizedID length])
  {
    v5 = IMLogHandleForCategory("IMHandleOffGridStateManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2C04();
    }

    v6 = [handleCopy ID];

    normalizedID = v6;
  }

  return normalizedID;
}

- (id)_skHandleForHandle:(id)handle
{
  v3 = MEMORY[0x1AC570A80](handle, a2);
  v4 = [objc_alloc(MEMORY[0x1AC570AA0](@"SKHandle" @"StatusKit"))];

  return v4;
}

- (void)_clearCurrentSubscriptionCache
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868BD9C;
  block[3] = &unk_1E7828050;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end