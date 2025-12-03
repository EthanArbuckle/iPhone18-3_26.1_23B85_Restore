@interface IMDAvailabilityVerificationManager
+ (BOOL)deviceSupportsSubscriptionValidationTokens;
+ (id)availabilityStatusTypeIdentifier;
+ (id)sharedInstance;
- (IMDAvailabilityVerificationManager)init;
- (id)cachedAvailabilityVerificationTokensForHandleID:(id)d;
- (void)_inviteSenderHandleID:(id)d fromHandleID:(id)iD;
- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken fromSender:(id)sender completion:(id)completion;
- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)d;
- (void)subscriptionInvitationReceived:(id)received;
- (void)subscriptionReceivedStatusUpdate:(id)update;
- (void)subscriptionServiceDaemonDisconnected:(id)disconnected;
- (void)subscriptionStateChanged:(id)changed;
- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date;
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

    availabilityStatusTypeIdentifier = [objc_opt_class() availabilityStatusTypeIdentifier];
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

- (id)cachedAvailabilityVerificationTokensForHandleID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:dCopy];
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
        v13 = dCopy;
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

    [(IMDAvailabilityVerificationManager *)self populateCacheWithAvailabilityVerificationTokensForHandleID:dCopy];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:dCopy];
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
        v21 = dCopy;
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
        v19 = dCopy;
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
      v17[4] = dCopy;
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
      v16[4] = dCopy;
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

- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date
{
  v34 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  validationTokenCopy = validationToken;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = tokenCopy;
      v30 = 2112;
      v31 = iDCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Received request to validate validation token %@ from senderHandleID %@", buf, 0x16u);
    }
  }

  if ([objc_opt_class() deviceSupportsSubscriptionValidationTokens])
  {
    [dateCopy timeIntervalSinceNow];
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
      v24 = tokenCopy;
      v25 = iDCopy;
      v26 = dCopy;
      [(IMDAvailabilityVerificationManager *)self _validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:v24 encryptionValidationToken:validationTokenCopy fromSender:v21 completion:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v29 = tokenCopy;
        v30 = 2112;
        v31 = iDCopy;
        v32 = 2112;
        v33 = dateCopy;
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

- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken fromSender:(id)sender completion:(id)completion
{
  tokenCopy = token;
  validationTokenCopy = validationToken;
  senderCopy = sender;
  completionCopy = completion;
  availabilitySubscriptionService = self->_availabilitySubscriptionService;
  if (objc_opt_respondsToSelector())
  {
    v14 = [objc_alloc(MEMORY[0x231897B40](@"SKSubscriptionValidationTokens" @"StatusKit"))];
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v14 fromSender:senderCopy completion:completionCopy];
  }

  else
  {
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:tokenCopy fromSender:senderCopy completion:completionCopy];
  }
}

- (void)_inviteSenderHandleID:(id)d fromHandleID:(id)iD
{
  v5 = MEMORY[0x277D1A8C0];
  iDCopy = iD;
  dCopy = d;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance repairSharedFocusStatusFollowingFailedValidationWithHandleID:dCopy fromHandleID:iDCopy completion:&unk_283F198A8];
}

- (void)subscriptionInvitationReceived:(id)received
{
  v9 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = receivedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, clearing cache. Subscription: %@", &v7, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionReceivedStatusUpdate:(id)update
{
  v8 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = updateCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Subscription received status update, no verification manager action required. Subscription: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionStateChanged:(id)changed
{
  v9 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = changedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription state changed, clearing cache. Subscription: %@", &v7, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionServiceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
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