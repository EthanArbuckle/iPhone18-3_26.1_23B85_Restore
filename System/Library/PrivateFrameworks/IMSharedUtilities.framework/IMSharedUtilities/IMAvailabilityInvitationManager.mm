@interface IMAvailabilityInvitationManager
+ (id)sharedInstance;
- (BOOL)_isHandleIDEligibleToReceiveAutomaticInvitation:(id)invitation;
- (IMAvailabilityInvitationManager)init;
- (SKStatusPublishingService)publishingService;
- (id)_dndHandleForHandleID:(id)d;
- (id)_invitationCacheKeyForHandleID:(id)d fromHandleID:(id)iD;
- (id)_newDNDModeConfigurationService;
- (id)_skHandleForString:(id)string;
- (id)dndGlobalConfigurationService;
- (void)_invitablityForHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion;
- (void)_invitationPayloadForHandleID:(id)d completion:(id)completion;
- (void)_isFocusStatusSharedWithHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion;
- (void)_republishCurrentAvailabilityStatus;
- (void)_sharePersonalAvailabilityWithSKHandle:(id)handle fromSKHandle:(id)kHandle allowingInvitationOfRemovedUsers:(BOOL)users completion:(id)completion;
- (void)attemptIfNeccessaryToAutomaticallyShareFocusStatusWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion;
- (void)fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:(id)completion;
- (void)isFocusStatusSharedWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion;
- (void)manuallyRemoveSharingOfFocusStatusWithHandleID:(id)d completion:(id)completion;
- (void)manuallyShareFocusStatusWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion;
- (void)repairSharedFocusStatusFollowingFailedValidationWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion;
@end

@implementation IMAvailabilityInvitationManager

+ (id)sharedInstance
{
  if (qword_1ED8CA2C8 != -1)
  {
    sub_1A88BF9D0();
  }

  v3 = qword_1ED8C9910;

  return v3;
}

- (IMAvailabilityInvitationManager)init
{
  v8.receiver = self;
  v8.super_class = IMAvailabilityInvitationManager;
  v2 = [(IMAvailabilityInvitationManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    dateAttemptedInvitationByHandleCache = v2->_dateAttemptedInvitationByHandleCache;
    v2->_dateAttemptedInvitationByHandleCache = v3;

    v5 = dispatch_queue_create("com.apple.messages.IMAvailabilityInvitationManager.DoNotDisturb", 0);
    dndBackgroundQueue = v2->_dndBackgroundQueue;
    v2->_dndBackgroundQueue = v5;
  }

  return v2;
}

- (void)attemptIfNeccessaryToAutomaticallyShareFocusStatusWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A860F064;
  v14[3] = &unk_1E7825EC0;
  v14[4] = self;
  v15 = dCopy;
  v16 = iDCopy;
  v17 = completionCopy;
  v11 = iDCopy;
  v12 = dCopy;
  v13 = completionCopy;
  [(IMAvailabilityInvitationManager *)self fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:v14];
}

- (void)repairSharedFocusStatusFollowingFailedValidationWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A860F9E4;
  v14[3] = &unk_1E7825EC0;
  v14[4] = self;
  v15 = dCopy;
  v16 = iDCopy;
  v17 = completionCopy;
  v11 = iDCopy;
  v12 = dCopy;
  v13 = completionCopy;
  [(IMAvailabilityInvitationManager *)self fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:v14];
}

- (void)manuallyShareFocusStatusWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = dCopy;
      v19 = 2112;
      v20 = iDCopy;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Received request to manually share focus status with handleID: %@ fromHandleID: %@.", buf, 0x16u);
    }
  }

  if (+[IMAppleStoreHelper isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Not manually sharing focus status while in Apple Store Demo mode.", buf, 2u);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A86104A8;
    v13[3] = &unk_1E7825EC0;
    v16 = completionCopy;
    v13[4] = self;
    v14 = dCopy;
    v15 = iDCopy;
    [(IMAvailabilityInvitationManager *)self fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:v13];
  }
}

- (void)fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  dndGlobalConfigurationService = [(IMAvailabilityInvitationManager *)self dndGlobalConfigurationService];
  if (objc_opt_respondsToSelector())
  {
    [dndGlobalConfigurationService isCloudSyncActiveWithCompletionHandler:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, [dndGlobalConfigurationService isCloudSyncActive]);
  }
}

- (id)dndGlobalConfigurationService
{
  p_cachedDNDGlobalConfigurationService = &self->_cachedDNDGlobalConfigurationService;
  cachedDNDGlobalConfigurationService = self->_cachedDNDGlobalConfigurationService;
  if (cachedDNDGlobalConfigurationService)
  {
    v4 = cachedDNDGlobalConfigurationService;
  }

  else
  {
    v5 = MEMORY[0x1AC570AA0](@"DNDGlobalConfigurationService", @"DoNotDisturb");
    if (v5)
    {
      v4 = [v5 serviceForClientIdentifier:@"com.apple.messages"];
      if (v4)
      {
        objc_storeStrong(p_cachedDNDGlobalConfigurationService, v4);
        v6 = v4;
      }

      else
      {
        v8 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A88BFC8C();
        }
      }
    }

    else
    {
      v7 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1A88BFCC8();
      }

      v4 = 0;
    }
  }

  return v4;
}

- (void)manuallyRemoveSharingOfFocusStatusWithHandleID:(id)d completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Received request to manually remove sharing of focus status with handleID: %@", buf, 0xCu);
    }
  }

  if (+[IMAppleStoreHelper isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Not manually removing sharing focus status while in Apple Store Demo mode.", buf, 2u);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A8610B0C;
    v10[3] = &unk_1E7825F60;
    v12 = completionCopy;
    v10[4] = self;
    v11 = dCopy;
    [(IMAvailabilityInvitationManager *)self fetchIsFocusConfigurationShareAcrossDevicesEnabledWithCompletion:v10];
  }
}

- (void)_sharePersonalAvailabilityWithSKHandle:(id)handle fromSKHandle:(id)kHandle allowingInvitationOfRemovedUsers:(BOOL)users completion:(id)completion
{
  handleCopy = handle;
  kHandleCopy = kHandle;
  completionCopy = completion;
  publishingService = [(IMAvailabilityInvitationManager *)self publishingService];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A8610EE0;
  v18[3] = &unk_1E7825FD8;
  v14 = handleCopy;
  v19 = v14;
  v15 = completionCopy;
  usersCopy = users;
  v23 = v15;
  selfCopy = self;
  v16 = kHandleCopy;
  v21 = v16;
  v17 = publishingService;
  v22 = v17;
  objc_copyWeak(&v24, &location);
  [(IMAvailabilityInvitationManager *)self _invitablityForHandle:v14 fromHandle:v16 completion:v18];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

- (void)_invitablityForHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  fromHandleCopy = fromHandle;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      handleString = [handleCopy handleString];
      handleString2 = [fromHandleCopy handleString];
      *buf = 138412546;
      v19 = handleString;
      v20 = 2112;
      v21 = handleString2;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Checking invitability for handle: %@ fromHandle: %@", buf, 0x16u);
    }
  }

  publishingService = [(IMAvailabilityInvitationManager *)self publishingService];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8611738;
  v16[3] = &unk_1E7826000;
  v17 = completionCopy;
  v15 = completionCopy;
  [publishingService fetchHandleInvitability:handleCopy fromSenderHandle:fromHandleCopy completion:v16];
}

- (void)isFocusStatusSharedWithHandleID:(id)d fromHandleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v11 = [(IMAvailabilityInvitationManager *)self _skHandleForString:d];
  v10 = [(IMAvailabilityInvitationManager *)self _skHandleForString:iDCopy];

  [(IMAvailabilityInvitationManager *)self _isFocusStatusSharedWithHandle:v11 fromHandle:v10 completion:completionCopy];
}

- (void)_isFocusStatusSharedWithHandle:(id)handle fromHandle:(id)fromHandle completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  fromHandleCopy = fromHandle;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      handleString = [handleCopy handleString];
      handleString2 = [fromHandleCopy handleString];
      *buf = 138412546;
      v23 = handleString;
      v24 = 2112;
      v25 = handleString2;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Checking (async) if handle is already invited: %@ fromHandle: %@", buf, 0x16u);
    }
  }

  publishingService = [(IMAvailabilityInvitationManager *)self publishingService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A8611B5C;
  v18[3] = &unk_1E7826028;
  v19 = handleCopy;
  v20 = fromHandleCopy;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = fromHandleCopy;
  v17 = handleCopy;
  [publishingService isHandleInvited:v17 fromSenderHandle:v16 completion:v18];
}

- (void)_invitationPayloadForHandleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = MEMORY[0x1AC570AA0](@"SKInvitationPayload", @"StatusKit");
  v9 = MEMORY[0x1AC570AA0](@"AKAvailabilityInvitation", @"AvailabilityKit");
  if (v8 && (v10 = v9) != 0)
  {
    objc_initWeak(&location, self);
    dndBackgroundQueue = self->_dndBackgroundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8611F7C;
    block[3] = &unk_1E7826050;
    objc_copyWeak(v16, &location);
    v14 = dCopy;
    v15 = completionCopy;
    v16[1] = v10;
    dispatch_async(dndBackgroundQueue, block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFEBC();
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)_newDNDModeConfigurationService
{
  v2 = MEMORY[0x1AC570AA0](@"DNDModeConfigurationService", @"DoNotDisturb");
  if (v2)
  {
    v3 = [v2 serviceForClientIdentifier:@"com.apple.messages"];
    v4 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v4;
    }

    else
    {
      v6 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88BFFE0();
      }

      v5 = 0;
    }
  }

  else
  {
    v4 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C001C();
    }

    v5 = 0;
  }

  return v5;
}

- (void)_republishCurrentAvailabilityStatus
{
  objc_initWeak(&location, self);
  dndBackgroundQueue = self->_dndBackgroundQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8612304;
  v4[3] = &unk_1E7826078;
  objc_copyWeak(&v5, &location);
  dispatch_async(dndBackgroundQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_dndHandleForHandleID:(id)d
{
  dCopy = d;
  if (IMStringIsEmail())
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = objc_alloc_init(MEMORY[0x1AC570AA0](@"DNDMutableContactHandle", @"DoNotDisturb"));
  [v5 setType:v4];
  [v5 setValue:dCopy];

  v6 = [v5 copy];

  return v6;
}

- (id)_invitationCacheKeyForHandleID:(id)d fromHandleID:(id)iD
{
  iDCopy = &stru_1F1BB91F0;
  if (d)
  {
    dCopy = d;
  }

  else
  {
    dCopy = &stru_1F1BB91F0;
  }

  if (iD)
  {
    iDCopy = iD;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", dCopy, iDCopy];
}

- (SKStatusPublishingService)publishingService
{
  publishingService = self->_publishingService;
  if (!publishingService)
  {
    v4 = MEMORY[0x1AC570AA0](@"SKStatusPublishingService", @"StatusKit");
    v5 = *MEMORY[0x1AC570AB0]("AKAvailabilityStatusTypeIdentifier", @"AvailabilityKit");
    v6 = [[v4 alloc] initWithStatusTypeIdentifier:v5];
    v7 = self->_publishingService;
    self->_publishingService = v6;

    publishingService = self->_publishingService;
  }

  return publishingService;
}

- (id)_skHandleForString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x1AC570AA0](@"SKHandle" @"StatusKit"))];

  return v4;
}

- (BOOL)_isHandleIDEligibleToReceiveAutomaticInvitation:(id)invitation
{
  v13 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  if (+[IMAppleStoreHelper isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Not automatically sharing focus status while in Apple Store Demo mode.", &v11, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (MEMORY[0x1AC570A30](invitationCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = invitationCopy;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Handle %@ is a business ID, not eligible to receive availability subscription invitation.", &v11, 0xCu);
      }

      goto LABEL_15;
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (MEMORY[0x1AC570A60](invitationCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = invitationCopy;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Handle %@ is a stewie ID, not eligible to receive availability subscription invitation.", &v11, 0xCu);
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v7 = [IMContactStore validateAndCleanupID:invitationCopy];
  v8 = +[IMContactStore sharedInstance];
  v9 = [v8 fetchCNContactForHandleWithID:v7];

  v5 = [IMContactStore isCNContactAKnownContact:v9];
  if (!v5 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = invitationCopy;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Handle %@ is not in the users contacts, not eligible to receive availability subscription invitation.", &v11, 0xCu);
    }
  }

LABEL_17:
  return v5;
}

@end