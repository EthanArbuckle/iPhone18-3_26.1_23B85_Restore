@interface IMSharedMessageSendingUtilities
+ (id)sharedInstance;
- (BOOL)_canSendText;
- (BOOL)_hasSubscriptionPassingTest:(id)a3;
- (BOOL)_isiMessageSupported;
- (BOOL)canSendPhotos:(int)a3 videos:(int)a4 audioClips:(int)a5;
- (BOOL)canSendText;
- (BOOL)isMMSEnabled;
- (BOOL)isMessagingEnabled;
- (BOOL)isRBMEnabled;
- (BOOL)isRCSEnabled;
- (BOOL)isRichMessagingEnabled;
- (BOOL)isSupportedAttachmentUTI:(id)a3;
- (BOOL)isiMessageEnabled;
- (IMSharedMessageSendingUtilities)init;
- (id)_allSubscriptions;
- (id)_managedConfigAppAllowlist;
- (void)_updateServiceAvailability;
- (void)dealloc;
@end

@implementation IMSharedMessageSendingUtilities

- (IMSharedMessageSendingUtilities)init
{
  v4.receiver = self;
  v4.super_class = IMSharedMessageSendingUtilities;
  v2 = [(IMSharedMessageSendingUtilities *)&v4 init];
  if (v2)
  {
    v2->_serviceAvailabilityMonitor = objc_alloc_init(IMServiceAvailabilityMonitor);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMSharedMessageSendingUtilities;
  [(IMSharedMessageSendingUtilities *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1ED8CA410 != -1)
  {
    sub_1A88C2C80();
  }

  return qword_1ED8CA378;
}

- (BOOL)_canSendText
{
  if ([(IMSharedMessageSendingUtilities *)self _hasSMSCapability]|| [(IMSharedMessageSendingUtilities *)self isiMessageEnabled])
  {
    return 1;
  }

  return [(IMSharedMessageSendingUtilities *)self isRCSEnabled];
}

- (void)_updateServiceAvailability
{
  v3 = [(IMSharedMessageSendingUtilities *)self serviceAvailability];
  v4 = [(IMSharedMessageSendingUtilities *)self _canSendText];
  if ([(IMSharedMessageSendingUtilities *)self serviceAvailability]!= v4)
  {
    [(IMSharedMessageSendingUtilities *)self setServiceAvailability:v4];
    if (v3 != -1)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v4];
      v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"__kMFMessageComposeViewControllerTextMessageAvailabilityKey", 0}];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }
}

- (id)_managedConfigAppAllowlist
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];

  return MEMORY[0x1EEE66B58](v2, sel_effectiveWhitelistedAppBundleIDs);
}

- (BOOL)canSendText
{
  v3 = [(IMSharedMessageSendingUtilities *)self _managedConfigAppAllowlist];
  if (!v3 || (v4 = [v3 containsObject:@"com.apple.MobileSMS"]) != 0)
  {
    [(IMSharedMessageSendingUtilities *)self _updateServiceAvailability];
    LOBYTE(v4) = [(IMSharedMessageSendingUtilities *)self serviceAvailability]> 0;
  }

  return v4;
}

- (id)_allSubscriptions
{
  v2 = +[IMCTSubscriptionUtilities sharedInstance];

  return MEMORY[0x1EEE66B58](v2, sel_ctServiceSubscriptions);
}

- (BOOL)_hasSubscriptionPassingTest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(IMSharedMessageSendingUtilities *)self _allSubscriptions];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ((*(a3 + 2))(a3, *(*(&v13 + 1) + 8 * v9)))
          {
            LOBYTE(v6) = 1;
            return v6;
          }

          ++v9;
        }

        while (v7 != v9);
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v7 = v6;
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v10 = [-[IMSharedMessageSendingUtilities _allSubscriptions](self "_allSubscriptions")];
    v11 = *(a3 + 2);

    LOBYTE(v6) = v11(a3, v10);
  }

  return v6;
}

- (BOOL)isMMSEnabled
{
  v2 = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

  return [(IMServiceAvailabilityMonitoring *)v2 isMMSEnabled];
}

- (BOOL)isiMessageEnabled
{
  v2 = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

  return [(IMServiceAvailabilityMonitoring *)v2 isiMessageEnabled];
}

- (BOOL)isRCSEnabled
{
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v3 = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

    return [(IMServiceAvailabilityMonitoring *)v3 isRCSEnabled];
  }

  else
  {

    return [(IMSharedMessageSendingUtilities *)self isMMSEnabled];
  }
}

- (BOOL)isRBMEnabled
{
  v3 = [(IMSharedMessageSendingUtilities *)self isRBMSupported];
  if (v3)
  {
    v4 = [objc_msgSend(MEMORY[0x1E695E000] "messagesAppDomain")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      LOBYTE(v3) = [v4 BOOLValue];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Reading isRBMEnabled from Carrier Bundle", v7, 2u);
        }
      }

      LOBYTE(v3) = [(IMSharedMessageSendingUtilities *)self _hasSubscriptionPassingTest:&unk_1F1BA6568];
    }
  }

  return v3;
}

- (BOOL)isMessagingEnabled
{
  if ([(IMSharedMessageSendingUtilities *)self isMMSEnabled]|| [(IMSharedMessageSendingUtilities *)self isiMessageEnabled])
  {
    return 1;
  }

  return [(IMSharedMessageSendingUtilities *)self isRCSEnabled];
}

- (BOOL)isRichMessagingEnabled
{
  if ([(IMSharedMessageSendingUtilities *)self isiMessageEnabled])
  {
    return 1;
  }

  return [(IMSharedMessageSendingUtilities *)self isRCSEnabled];
}

- (BOOL)isSupportedAttachmentUTI:(id)a3
{
  if ([(IMSharedMessageSendingUtilities *)self isiMessageEnabled]|| [(IMSharedMessageSendingUtilities *)self isRCSEnabled])
  {
    return 1;
  }

  if ([(IMSharedMessageSendingUtilities *)self isMMSEnabled])
  {
    v6 = UTTypeConformsTo(a3, *MEMORY[0x1E6963748]);
    v7 = UTTypeConformsTo(a3, *MEMORY[0x1E6963758]) | v6;
    v8 = UTTypeConformsTo(a3, *MEMORY[0x1E69638D8]);
    v9 = (v7 | v8 | UTTypeConformsTo(a3, *MEMORY[0x1E69637F8])) == 0;
  }

  else
  {
    v9 = UTTypeConformsTo(a3, *MEMORY[0x1E69638B0]) == 0;
  }

  return !v9;
}

- (BOOL)_isiMessageSupported
{
  v2 = [MEMORY[0x1E699BEB8] sharedInstance];

  return MEMORY[0x1EEE66B58](v2, sel_iMessageSupported);
}

- (BOOL)canSendPhotos:(int)a3 videos:(int)a4 audioClips:(int)a5
{
  v9 = [(IMSharedMessageSendingUtilities *)self isMessagingEnabled];
  if (v9)
  {
    v10 = [(IMSharedMessageSendingUtilities *)self _isiMessageSupported];
    v11 = [(IMSharedMessageSendingUtilities *)self isiMessageEnabled];
    v12 = [(IMSharedMessageSendingUtilities *)self isMMSEnabled];
    v13 = [(IMSharedMessageSendingUtilities *)self isRCSEnabled];
    LOBYTE(v9) = 1;
    if ((!v10 || !v11) && !v13)
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = [(IMSharedMessageSendingUtilities *)self _maxMMSAttachmentCount];
      if (!v14)
      {
        goto LABEL_13;
      }

      if (v14 < a4 + a3 + a5 || a4 >= 1 && a5 > 0)
      {
        goto LABEL_12;
      }

      v15 = [(IMSharedMessageSendingUtilities *)self _maxMMSMessageByteCount]* 0.95 / 102400.0;
      v16 = floorf(v15);
      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v16 < a3)
      {
LABEL_12:
        LOBYTE(v9) = 0;
      }

      else
      {
LABEL_13:
        LOBYTE(v9) = 1;
      }
    }
  }

  return v9;
}

@end