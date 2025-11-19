@interface IMHandleAvailabilityManager
+ (id)sharedInstance;
- (IMHandleAvailabilityManager)init;
- (SKStatusSubscriptionService)subscriptionService;
- (id)_cachedStatusSubscriptionForIMHandle:(id)a3 fromCache:(id)a4 cacheDescription:(id)a5 cacheMiss:(BOOL *)a6;
- (id)_skHandleForIMHandle:(id)a3;
- (id)_skHandleForString:(id)a3;
- (id)_subscriptionCacheKeyForHandle:(id)a3;
- (id)availabilityStatusPublishedDateForHandle:(id)a3;
- (id)statusSubscriptionForHandle:(id)a3;
- (int64_t)_availablityFromStatusSubscription:(id)a3 handleID:(id)a4;
- (int64_t)availabilityForHandle:(id)a3;
- (void)_clearCurrentSubscriptionCache;
- (void)_postNotificationForUpdatedStatusWithSubscription:(id)a3;
- (void)beginObservingAvailabilityForHandle:(id)a3;
- (void)endObservingAvailabilityForHandle:(id)a3;
- (void)fetchPersonalAvailabilityWithCompletion:(id)a3;
- (void)fetchUpdatedStatusAndUpdateCachesForHandle:(id)a3 lastKnownStatus:(id)a4;
- (void)fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4;
- (void)subscriptionInvitationReceived:(id)a3;
- (void)subscriptionReceivedStatusUpdate:(id)a3;
- (void)subscriptionServiceDaemonDisconnected:(id)a3;
- (void)subscriptionStateChanged:(id)a3;
@end

@implementation IMHandleAvailabilityManager

+ (id)sharedInstance
{
  if (qword_1ED7678B0 != -1)
  {
    sub_1A84E4148();
  }

  v3 = qword_1ED767870;

  return v3;
}

- (IMHandleAvailabilityManager)init
{
  v13.receiver = self;
  v13.super_class = IMHandleAvailabilityManager;
  v2 = [(IMHandleAvailabilityManager *)&v13 init];
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

    v2->_currentCacheGeneration = 0;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create("com.apple.Messages.IMHandleAvailabilityManager", v9);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v10;
  }

  return v2;
}

- (id)availabilityStatusPublishedDateForHandle:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_statusSubscriptionForHandle_(self, v5, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_currentStatus(v6, v7, v8);
    v13 = v10;
    if (v10)
    {
      v14 = objc_msgSend_datePublished(v10, v11, v12);
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = v14;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Determined status was published on: %@", &v20, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v20 = 138412290;
          v21 = v9;
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Subscription has no published status, returning nil status creation date. Subscription: %@", &v20, 0xCu);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Subscription cache miss, returning nil for sync call for status creation date", &v20, 2u);
      }
    }

    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)availabilityForHandle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_ID(v4, v5, v6);
  v9 = objc_msgSend_statusSubscriptionForHandle_(self, v8, v4);

  v11 = objc_msgSend__availablityFromStatusSubscription_handleID_(self, v10, v9, v7);
  return v11;
}

- (id)statusSubscriptionForHandle:(id)a3
{
  v4 = a3;
  v17 = 0;
  v7 = objc_msgSend_currentSubscriptionCache(self, v5, v6);
  v9 = objc_msgSend__cachedStatusSubscriptionForIMHandle_fromCache_cacheDescription_cacheMiss_(self, v8, v4, v7, @"Current", &v17);

  if (v17 == 1)
  {
    v12 = objc_msgSend_lastKnownSubscriptionCache(self, v10, v11);
    v14 = objc_msgSend__cachedStatusSubscriptionForIMHandle_fromCache_cacheDescription_cacheMiss_(self, v13, v4, v12, @"LastKnown", 0);

    objc_msgSend_fetchUpdatedStatusAndUpdateCachesForHandle_lastKnownStatus_(self, v15, v4, v14);
    v9 = v14;
  }

  return v9;
}

- (void)fetchUpdatedStatusAndUpdateCachesForHandle:(id)a3 lastKnownStatus:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_currentStatus(v7, v8, v9);
  v13 = objc_msgSend_statusUniqueIdentifier(v10, v11, v12);

  v15 = objc_msgSend__subscriptionCacheKeyForHandle_(self, v14, v6);
  v16 = self->_pendingFetchesForCacheKeys;
  objc_sync_enter(v16);
  if (objc_msgSend_containsObject_(self->_pendingFetchesForCacheKeys, v17, v15))
  {
    objc_sync_exit(v16);

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v15;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "We already have a pending subscription fetch for cache key: %@. That fetch will notify if the subscription has changed. Taking no further action.", buf, 0xCu);
      }
    }
  }

  else
  {
    objc_msgSend_addObject_(self->_pendingFetchesForCacheKeys, v18, v15);
    objc_sync_exit(v16);

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v15;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "We do not have any pending fetches for cache key: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    v23 = objc_msgSend_ID(v6, v21, v22);
    v26 = objc_msgSend_currentCacheGeneration(self, v24, v25);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1A83CCB38;
    v30[3] = &unk_1E7814728;
    objc_copyWeak(v34, buf);
    v34[1] = v26;
    v31 = v15;
    v27 = v23;
    v32 = v27;
    v33 = v13;
    objc_msgSend_fetchUpdatedStatusForHandle_completion_(self, v28, v6, v30);

    objc_destroyWeak(v34);
    objc_destroyWeak(buf);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)fetchUpdatedStatusForHandle:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v8, v9))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Not fetching subscription in Apple Store Demo mode.", buf, 2u);
      }
    }

    v7[2](v7, 0);
  }

  else
  {
    v13 = objc_msgSend_subscriptionService(self, v10, v11);
    v16 = objc_msgSend_ID(v6, v14, v15);
    if (objc_msgSend_matchesLoginHandleForAnyAccount(v6, v17, v18))
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v16;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Handle %@ matches login handle. Fetching personal status subscription", buf, 0xCu);
        }
      }

      privateWorkQueue = self->_privateWorkQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A83CD2DC;
      block[3] = &unk_1E7814750;
      v31 = v13;
      v32 = v7;
      dispatch_async(privateWorkQueue, block);

      v22 = v31;
    }

    else
    {
      v23 = objc_msgSend__skHandleForIMHandle_(self, v19, v6);
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v16;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Initiating a subscription fetch for handle: %@", buf, 0xCu);
        }
      }

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1A83CD450;
      v27[3] = &unk_1E7814778;
      v28 = v23;
      v29 = v7;
      v22 = v23;
      objc_msgSend_statusSubscriptionForHandle_completion_(v13, v25, v22, v27);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_postNotificationForUpdatedStatusWithSubscription:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83CD6D0;
  block[3] = &unk_1E780FCB0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)_availablityFromStatusSubscription:(id)a3 handleID:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = objc_msgSend_currentStatus(v5, v6, v7);
    v12 = v9;
    if (!v9)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v33 = 138412290;
          v34 = v8;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Current status not found for handle %@, returning unknown availability", &v33, 0xCu);
        }
      }

      v25 = 0;
      goto LABEL_39;
    }

    v13 = objc_msgSend_statusUniqueIdentifier(v9, v10, v11);
    v14 = objc_alloc(MEMORY[0x1AC56C550](@"AKAvailability", @"AvailabilityKit"));
    v18 = objc_msgSend_initWithPublishedStatus_(v14, v15, v12);
    if (!v18)
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E4214(v8, v27);
      }

      v25 = 0;
      goto LABEL_38;
    }

    if (objc_msgSend_isPersonalStatusSubscription(v5, v16, v17))
    {
      isAvailable = objc_msgSend_isAvailable(v18, v19, v20);
      v22 = IMOSLoggingEnabled();
      if (isAvailable)
      {
        if (v22)
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v33 = 138412546;
            v34 = v8;
            v35 = 2112;
            v36 = v13;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Personal status subscription for handleID %@ says we are AVAILABLE from status %@", &v33, 0x16u);
          }

LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (v22)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v33 = 138412546;
          v34 = v8;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Personal status subscription for handleID %@ says we are UNAVAILABLE from status %@", &v33, 0x16u);
        }

LABEL_36:
      }
    }

    else
    {
      isAvailableToMe = objc_msgSend_isAvailableToMe(v18, v19, v20);
      v29 = IMOSLoggingEnabled();
      if (isAvailableToMe)
      {
        if (v29)
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v33 = 138412546;
            v34 = v8;
            v35 = 2112;
            v36 = v13;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "StatusKit indicates handle %@ is AVAILABLE from status %@", &v33, 0x16u);
          }

          goto LABEL_27;
        }

LABEL_28:
        v25 = 1;
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v33 = 138412546;
          v34 = v8;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "StatusKit indicates handle %@ is UNAVAILABLE from status %@", &v33, 0x16u);
        }

        goto LABEL_36;
      }
    }

    v25 = 2;
    goto LABEL_38;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v33 = 138412290;
      v34 = v8;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, returning unknown availability", &v33, 0xCu);
    }
  }

  v25 = 0;
LABEL_40:

  v31 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)fetchPersonalAvailabilityWithCompletion:(id)a3
{
  v4 = a3;
  privateWorkQueue = self->_privateWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83CDBF0;
  v7[3] = &unk_1E7814750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(privateWorkQueue, v7);
}

- (void)beginObservingAvailabilityForHandle:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not beginnign observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_msgSend_ID(v4, v7, v8);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v10;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Received request to begin observing availability for: %@", buf, 0xCu);
      }
    }

    v13 = objc_msgSend_statusSubscriptionForHandle_(self, v11, v4);
    v16 = v13;
    if (v13)
    {
      v17 = objc_msgSend_subscriptionIdentifier(v13, v14, v15);
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v30 = v17;
          v31 = 2112;
          v32 = v10;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
        }
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1A83CE000;
      v26[3] = &unk_1E7813450;
      v27 = v17;
      v28 = v10;
      v19 = v17;
      objc_msgSend_retainTransientSubscriptionAssertionWithCompletion_(v16, v20, v26);
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = objc_msgSend_ID(v4, v22, v23);
        *buf = 138412290;
        v30 = v24;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)endObservingAvailabilityForHandle:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Not ending observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = objc_msgSend_ID(v4, v12, v13);
        *buf = 138412290;
        v36 = v14;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Received request to end observing availability for: %@", buf, 0xCu);
      }
    }

    v15 = objc_msgSend_statusSubscriptionForHandle_(self, v9, v4);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_subscriptionIdentifier(v15, v16, v17);
      v22 = objc_msgSend_ID(v4, v20, v21);
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v36 = v19;
          v37 = 2112;
          v38 = v22;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
        }
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1A83CE470;
      v32[3] = &unk_1E7813450;
      v33 = v22;
      v34 = v19;
      v24 = v19;
      v25 = v22;
      objc_msgSend_releaseTransientSubscriptionAssertionWithCompletion_(v18, v26, v32);
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = objc_msgSend_ID(v4, v28, v29);
        *buf = 138412290;
        v36 = v30;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)_subscriptionCacheKeyForHandle:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_normalizedID(v3, v4, v5);
  if (!objc_msgSend_length(v6, v7, v8))
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4394(v3, v9);
    }

    v12 = objc_msgSend_ID(v3, v10, v11);

    v6 = v12;
  }

  return v6;
}

- (SKStatusSubscriptionService)subscriptionService
{
  subscriptionService = self->_subscriptionService;
  if (!subscriptionService)
  {
    v4 = MEMORY[0x1AC56C550](@"SKStatusSubscriptionService", @"StatusKit");
    v5 = *MEMORY[0x1AC56C560]("AKAvailabilityStatusTypeIdentifier", @"AvailabilityKit");
    v6 = [v4 alloc];
    v8 = objc_msgSend_initWithStatusTypeIdentifier_(v6, v7, v5);
    v9 = self->_subscriptionService;
    self->_subscriptionService = v8;

    objc_msgSend_addDelegate_queue_(self->_subscriptionService, v10, self, MEMORY[0x1E69E96A0]);
    subscriptionService = self->_subscriptionService;
  }

  return subscriptionService;
}

- (id)_cachedStatusSubscriptionForIMHandle:(id)a3 fromCache:(id)a4 cacheDescription:(id)a5 cacheMiss:(BOOL *)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = objc_msgSend__subscriptionCacheKeyForHandle_(self, v13, v10);
  v15 = v11;
  objc_sync_enter(v15);
  if (v14)
  {
    v17 = objc_msgSend_objectForKey_(v15, v16, v14);
  }

  else
  {
    v17 = 0;
  }

  objc_sync_exit(v15);

  if (!v17)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v30 = 138412546;
        v31 = v12;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Subscription cache miss (%@) for key %@", &v30, 0x16u);
      }
    }

    if (a6)
    {
      v18 = 0;
      *a6 = 1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a6)
  {
    *a6 = 0;
  }

  MEMORY[0x1AC56C550](@"SKStatusSubscription", @"StatusKit");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_27:
        v18 = 0;
        goto LABEL_28;
      }

      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = 138412546;
        v31 = v12;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Subscription cache hit (%@), we do not have a subscription for key: %@", &v30, 0x16u);
      }
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v30 = 138412802;
        v31 = v12;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = v17;
        _os_log_fault_impl(&dword_1A823F000, v27, OS_LOG_TYPE_FAULT, "Subscription cache hit (%@) for key %@, but object in cache is of unknown type: %@", &v30, 0x20u);
      }
    }

    goto LABEL_27;
  }

  v18 = v17;
  v21 = objc_msgSend_currentStatus(v18, v19, v20);
  v24 = objc_msgSend_statusUniqueIdentifier(v21, v22, v23);

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v30 = 138412802;
      v31 = v12;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Subscription cache hit (%@), found subscription for key: %@ Status: %@", &v30, 0x20u);
    }
  }

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_skHandleForIMHandle:(id)a3
{
  v4 = objc_msgSend_normalizedID(a3, a2, a3);
  v6 = objc_msgSend__skHandleForString_(self, v5, v4);

  return v6;
}

- (id)_skHandleForString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1AC56C550](@"SKHandle", @"StatusKit"));
  v6 = objc_msgSend_initWithString_(v4, v5, v3);

  return v6;
}

- (void)_clearCurrentSubscriptionCache
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self->_pendingFetchesForCacheKeys;
  objc_sync_enter(v3);
  v6 = self->_currentCacheGeneration + 1;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v6;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Clearing current subscription cache. New cache generation: %ld", &v12, 0xCu);
    }
  }

  self->_currentCacheGeneration = v6;
  objc_msgSend_removeAllObjects(self->_pendingFetchesForCacheKeys, v4, v5);
  objc_sync_exit(v3);

  v8 = self->_currentSubscriptionCache;
  objc_sync_enter(v8);
  objc_msgSend_removeAllObjects(self->_currentSubscriptionCache, v9, v10);
  objc_sync_exit(v8);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionInvitationReceived:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Subscription invitation received, clearing cache and notifying UI to subscribe, if necessary. %@", &v13, 0xCu);
    }
  }

  objc_msgSend__clearCurrentSubscriptionCache(self, v5, v6);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, IMHandleAvailabilityInvitationReceivedNotification, v4);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionReceivedStatusUpdate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Status update received, clearing cache and notifying UI to display updated status, if necessary. %@", &v13, 0xCu);
    }
  }

  objc_msgSend__clearCurrentSubscriptionCache(self, v5, v6);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, IMHandleAvailabilityChangedNotification, v4);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionStateChanged:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Status state changed, clearing cache and notifying UI to refetch all relevant state. %@", &v13, 0xCu);
    }
  }

  objc_msgSend__clearCurrentSubscriptionCache(self, v5, v6);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, IMHandleAvailabilityStateChangedNotification, v4);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionServiceDaemonDisconnected:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Subscription service daemon was disconnected, (e.g. app is returning from backgrounded) clearing stale cached data and notifying UI to refetch if necessary", v12, 2u);
    }
  }

  objc_msgSend__clearCurrentSubscriptionCache(self, v5, v6);
  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, IMHandleAvailabilityDaemonDisconnectedNotification, 0);
}

@end