@interface IMDAvailabilityVerificationManager
+ (BOOL)deviceSupportsSubscriptionValidationTokens;
+ (id)availabilityStatusTypeIdentifier;
+ (id)sharedInstance;
- (IMDAvailabilityVerificationManager)init;
- (id)cachedAvailabilityVerificationTokensForHandleID:(id)a3;
- (void)_inviteSenderHandleID:(id)a3 fromHandleID:(id)a4;
- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4 fromSender:(id)a5 completion:(id)a6;
- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)a3;
- (void)subscriptionInvitationReceived:(id)a3;
- (void)subscriptionReceivedStatusUpdate:(id)a3;
- (void)subscriptionServiceDaemonDisconnected:(id)a3;
- (void)subscriptionStateChanged:(id)a3;
- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4 receivedByHandleID:(id)a5 fromHandleID:(id)a6 messageDate:(id)a7;
@end

@implementation IMDAvailabilityVerificationManager

+ (id)sharedInstance
{
  if (qword_281421098 != -1)
  {
    sub_22B7D08EC();
  }

  v3 = qword_281420F28;

  return v3;
}

- (IMDAvailabilityVerificationManager)init
{
  v12.receiver = self;
  v12.super_class = IMDAvailabilityVerificationManager;
  v2 = [(IMDAvailabilityVerificationManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.Messages.IMDAvailabilityVerificationManager", v3);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    subscriptionValidationTokenByHandleIDCache = v2->_subscriptionValidationTokenByHandleIDCache;
    v2->_subscriptionValidationTokenByHandleIDCache = v6;

    v8 = [objc_opt_class() availabilityStatusTypeIdentifier];
    v9 = [objc_alloc(MEMORY[0x231897B40](@"SKStatusSubscriptionService" @"StatusKit"))];
    availabilitySubscriptionService = v2->_availabilitySubscriptionService;
    v2->_availabilitySubscriptionService = v9;

    [(SKStatusSubscriptionService *)v2->_availabilitySubscriptionService addDelegate:v2 queue:v2->_privateWorkQueue];
  }

  return v2;
}

+ (id)availabilityStatusTypeIdentifier
{
  v2 = *MEMORY[0x231897B50]("AKAvailabilityStatusTypeIdentifier", @"AvailabilityKit");

  return v2;
}

- (id)cachedAvailabilityVerificationTokensForHandleID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:v4];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v5;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Using cached availability verification tokens %@ for message to handleID %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0900();
    }

    [(IMDAvailabilityVerificationManager *)self populateCacheWithAvailabilityVerificationTokensForHandleID:v4];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:v4];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Subscription validation tokens %@ is already cached for handleID: %@. Not fetching again", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Fetching subscription validation token for handle handleID: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
    availabilitySubscriptionService = self->_availabilitySubscriptionService;
    if (objc_opt_respondsToSelector())
    {
      v11 = self->_availabilitySubscriptionService;
      v12 = v17;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_22B52FE58;
      v17[3] = &unk_278703B18;
      v17[4] = v4;
      v17[5] = self;
      [(SKStatusSubscriptionService *)v11 subscriptionValidationTokensForHandle:v9 completion:v17];
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D093C();
      }

      v14 = self->_availabilitySubscriptionService;
      v12 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_22B52FFFC;
      v16[3] = &unk_278703B40;
      v16[4] = v4;
      v16[5] = self;
      [(SKStatusSubscriptionService *)v14 subscriptionValidationTokenForHandle:v9 completion:v16];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)deviceSupportsSubscriptionValidationTokens
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "This device will validate subscription validation tokens", v4, 2u);
    }
  }

  return 1;
}

- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4 receivedByHandleID:(id)a5 fromHandleID:(id)a6 messageDate:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Received request to validate validation token %@ from senderHandleID %@", buf, 0x16u);
    }
  }

  if ([objc_opt_class() deviceSupportsSubscriptionValidationTokens])
  {
    [v16 timeIntervalSinceNow];
    if (fabs(v18) <= 300.0)
    {
      availabilitySubscriptionService = self->_availabilitySubscriptionService;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0A58();
        }

        goto LABEL_19;
      }

      v21 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
      objc_initWeak(buf, self);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_22B5305A8;
      v23[3] = &unk_278703B68;
      objc_copyWeak(&v27, buf);
      v24 = v12;
      v25 = v15;
      v26 = v14;
      [(IMDAvailabilityVerificationManager *)self _validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:v24 encryptionValidationToken:v13 fromSender:v21 completion:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v29 = v12;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not processing validation token %@ for old message from %@ with date: %@", buf, 0x20u);
      }

LABEL_19:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Skipping validation, this device should not validate tokens", buf, 2u);
    }

    goto LABEL_19;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)a3 encryptionValidationToken:(id)a4 fromSender:(id)a5 completion:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  availabilitySubscriptionService = self->_availabilitySubscriptionService;
  if (objc_opt_respondsToSelector())
  {
    v14 = [objc_alloc(MEMORY[0x231897B40](@"SKSubscriptionValidationTokens" @"StatusKit"))];
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v14 fromSender:v11 completion:v12];
  }

  else
  {
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:v15 fromSender:v11 completion:v12];
  }
}

- (void)_inviteSenderHandleID:(id)a3 fromHandleID:(id)a4
{
  v5 = MEMORY[0x277D1A8C0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  [v8 repairSharedFocusStatusFollowingFailedValidationWithHandleID:v7 fromHandleID:v6 completion:&unk_283F198A8];
}

- (void)subscriptionInvitationReceived:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, clearing cache. Subscription: %@", &v7, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionReceivedStatusUpdate:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Subscription received status update, no verification manager action required. Subscription: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionStateChanged:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription state changed, clearing cache. Subscription: %@", &v7, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionServiceDaemonDisconnected:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription service daemon disconnected, clearing cache, but not reconnecting.", v6, 2u);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];
}

@end