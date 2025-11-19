@interface IMHandleOffGridStateManager
+ (id)sharedInstance;
- (IMHandleOffGridStateManager)init;
- (NSDictionary)cachedOverrideDatesByHandleID;
- (SKStatusSubscription)personalSubscription;
- (SKStatusSubscriptionService)subscriptionService;
- (id)_cachedStatusSubscriptionForHandle:(id)a3;
- (id)_cachedStatusSubscriptionForIMHandle:(id)a3 fromCache:(id)a4 cacheDescription:(id)a5 cacheMiss:(BOOL *)a6;
- (id)_identifierFromStatusSubscription:(id)a3 handleID:(id)a4;
- (id)_overrideDateForHandleWithID:(id)a3;
- (id)_skHandleForHandle:(id)a3;
- (id)_subscriptionCacheKeyForHandle:(id)a3;
- (id)cachedStatusSubscriptionForHandle:(id)a3;
- (int64_t)_offGridModeFromStatusSubscription:(id)a3 handleID:(id)a4 onlyIfLaterThanDate:(id)a5;
- (int64_t)offGridModeForHandle:(id)a3;
- (int64_t)personalOffGridMode;
- (void)_clearCurrentSubscriptionCache;
- (void)_fetchUpdatedStatusAndUpdateCachesForHandle:(id)a3 lastKnownStatus:(id)a4 completion:(id)a5;
- (void)_fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4;
- (void)_personalSubscriptionWithCompletion:(id)a3;
- (void)_postNotificationForUpdatedStatusWithSubscription:(id)a3;
- (void)_setCachedOverrideDatesByHandleID:(id)a3;
- (void)cachedOffGridModeAndLastPublisherForHandle:(id)a3 completion:(id)a4;
- (void)fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4;
- (void)offGridModeForHandle:(id)a3 completion:(id)a4;
- (void)overrideStatusForHandleWithID:(id)a3 publishedBeforeDate:(id)a4;
- (void)personalOffGridModeWithCompletion:(id)a3;
- (void)subscriptionInvitationReceived:(id)a3;
- (void)subscriptionReceivedStatusUpdate:(id)a3;
- (void)subscriptionServiceDaemonDisconnected:(id)a3;
- (void)subscriptionStateChanged:(id)a3;
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

- (int64_t)offGridModeForHandle:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)offGridModeForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689450;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (id)cachedStatusSubscriptionForHandle:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)cachedOffGridModeAndLastPublisherForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689704;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868989C;
  block[3] = &unk_1E78289A0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)personalOffGridModeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8689A60;
  v7[3] = &unk_1E7828A18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)overrideStatusForHandleWithID:(id)a3 publishedBeforeDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8689C18;
  block[3] = &unk_1E7828A40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
  dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1BA64E8);
}

- (void)_setCachedOverrideDatesByHandleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8689D60;
  v7[3] = &unk_1E78260F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (id)_overrideDateForHandleWithID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMHandleOffGridStateManager *)self overrideDatesByHandleID];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cachedStatusSubscriptionForHandle:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v10 = 0;
  v5 = [(IMHandleOffGridStateManager *)self currentSubscriptionCache];
  v6 = [(IMHandleOffGridStateManager *)self _cachedStatusSubscriptionForIMHandle:v4 fromCache:v5 cacheDescription:@"Current" cacheMiss:&v10];

  if (v10 == 1)
  {
    v7 = [(IMHandleOffGridStateManager *)self lastKnownSubscriptionCache];
    v8 = [(IMHandleOffGridStateManager *)self _cachedStatusSubscriptionForIMHandle:v4 fromCache:v7 cacheDescription:@"LastKnown" cacheMiss:0];

    [(IMHandleOffGridStateManager *)self _fetchUpdatedStatusAndUpdateCachesForHandle:v4 lastKnownStatus:v8 completion:0];
    v6 = v8;
  }

  return v6;
}

- (void)_fetchUpdatedStatusAndUpdateCachesForHandle:(id)a3 lastKnownStatus:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [v9 currentStatus];
  v12 = [v11 statusUniqueIdentifier];

  v13 = [(IMHandleOffGridStateManager *)self _subscriptionCacheKeyForHandle:v8];
  if (([(NSMutableSet *)self->_pendingFetchesForCacheKeys containsObject:v13]& 1) != 0)
  {
    if (!v10)
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
  v16 = [v8 ID];
  v17 = [(IMHandleOffGridStateManager *)self _overrideDateForHandleWithID:v16];
  v18 = [(IMHandleOffGridStateManager *)self currentCacheGeneration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A868A274;
  v21[3] = &unk_1E7828A90;
  v21[4] = self;
  objc_copyWeak(v27, buf);
  v27[1] = v18;
  v26 = v10;
  v22 = v13;
  v19 = v16;
  v23 = v19;
  v24 = v12;
  v20 = v17;
  v25 = v20;
  [(IMHandleOffGridStateManager *)self _fetchUpdatedStatusForHandle:v8 completion:v21];

  objc_destroyWeak(v27);
  objc_destroyWeak(buf);
LABEL_13:
}

- (id)_cachedStatusSubscriptionForIMHandle:(id)a3 fromCache:(id)a4 cacheDescription:(id)a5 cacheMiss:(BOOL *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a5;
  queue = self->_queue;
  v12 = a4;
  v13 = a3;
  dispatch_assert_queue_V2(queue);
  v14 = [(IMHandleOffGridStateManager *)self _subscriptionCacheKeyForHandle:v13];

  v15 = [v12 objectForKey:v14];

  if (v15)
  {
    if (a6)
    {
      *a6 = 0;
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
        v20 = v10;
        v21 = 2112;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        _os_log_fault_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_FAULT, "Subscription cache hit (%@) for key %@, but object in cache is of unknown type: %@", &v19, 0x20u);
      }
    }
  }

  else if (a6)
  {
    v16 = 0;
    *a6 = 1;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)_fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(IMHandleOffGridStateManager *)self subscriptionService];
  v9 = [v6 ID];
  if ([v6 matchesLoginHandleForAnyAccount])
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
    v19 = v7;
    v11 = v7;
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
    v17 = v7;
    v12 = v7;
    v11 = v13;
    [v8 statusSubscriptionForHandle:v11 completion:v15];
  }
}

- (SKStatusSubscription)personalSubscription
{
  personalSubscription = self->_personalSubscription;
  if (!personalSubscription)
  {
    v4 = [(IMHandleOffGridStateManager *)self subscriptionService];
    v5 = [v4 personalStatusSubscription];
    v6 = self->_personalSubscription;
    self->_personalSubscription = v5;

    personalSubscription = self->_personalSubscription;
  }

  return personalSubscription;
}

- (void)_personalSubscriptionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IMHandleOffGridStateManager *)self subscriptionService];
  v6 = v5;
  personalSubscription = self->_personalSubscription;
  if (personalSubscription)
  {
    v4[2](v4, personalSubscription);
  }

  else
  {
    fetchQueue = self->_fetchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A868AF50;
    block[3] = &unk_1E78289A0;
    v11 = v5;
    v12 = self;
    v13 = v4;
    v9 = 0;
    dispatch_async(fetchQueue, block);
  }
}

- (int64_t)_offGridModeFromStatusSubscription:(id)a3 handleID:(id)a4 onlyIfLaterThanDate:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 currentStatus];
    v11 = v10;
    if (!v10)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v8;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Current status not found for handle %@, returning unknown off grid mode", &v27, 0xCu);
        }
      }

      v18 = 0;
      goto LABEL_38;
    }

    v12 = [v10 statusPayload];
    v13 = [v12 payloadDictionary];
    if (![v13 count])
    {
      v20 = IMLogHandleForCategory("IMHandleOffGridStateManager");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2B34();
      }

      goto LABEL_24;
    }

    v14 = [v13 objectForKeyedSubscript:@"m"];
    v15 = [v14 integerValue];

    if (v15 == 2)
    {
      if (!v9 || ([v11 datePublished], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "laterDate:", v22), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23 != v9))
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v8;
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
        v26 = [v11 datePublished];
        v27 = 138412802;
        v28 = v8;
        v29 = 2112;
        v30 = v26;
        v31 = 2112;
        v32 = v9;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Off grid mode enabled for %@ but newer override date, returning disabled (published: %@ override: %@)", &v27, 0x20u);
      }
    }

    else
    {
      if (v15 != 1)
      {
        if (!v15 && IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v8;
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
        v28 = v8;
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
      v28 = v8;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, returning unknown off grid mode", &v27, 0xCu);
    }
  }

  v18 = 0;
LABEL_39:

  return v18;
}

- (id)_identifierFromStatusSubscription:(id)a3 handleID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 currentStatus];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 statusPayload];
      v10 = [v9 payloadDictionary];
      if ([v10 count] && (objc_msgSend(v10, "objectForKeyedSubscript:", @"id"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
      {
        v12 = [v10 objectForKeyedSubscript:@"id"];
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
          v18 = v6;
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
        v18 = v6;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, no identifier to return", &v17, 0xCu);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (void)subscriptionInvitationReceived:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, notifying UI to subscribe, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 __mainThreadPostNotificationName:IMHandleOffGridInvitationReceivedNotification object:v4];
}

- (void)subscriptionReceivedStatusUpdate:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Status update received, notifying UI to display updated status, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 __mainThreadPostNotificationName:IMHandleOffGridChangedNotification object:v4];
}

- (void)subscriptionStateChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Status state changed, notifying UI to refetch all relevant state. %@", &v7, 0xCu);
    }
  }

  [(IMHandleOffGridStateManager *)self _clearCurrentSubscriptionCache];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 __mainThreadPostNotificationName:IMHandleOffGridStateChangedNotification object:v4];
}

- (void)subscriptionServiceDaemonDisconnected:(id)a3
{
  v4 = a3;
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
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 __mainThreadPostNotificationName:IMHandleOffGridDaemonDisconnectedNotification object:0];
}

- (void)_postNotificationForUpdatedStatusWithSubscription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A868BBBC;
  block[3] = &unk_1E7828050;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_subscriptionCacheKeyForHandle:(id)a3
{
  v3 = a3;
  v4 = [v3 normalizedID];
  if (![v4 length])
  {
    v5 = IMLogHandleForCategory("IMHandleOffGridStateManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2C04();
    }

    v6 = [v3 ID];

    v4 = v6;
  }

  return v4;
}

- (id)_skHandleForHandle:(id)a3
{
  v3 = MEMORY[0x1AC570A80](a3, a2);
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