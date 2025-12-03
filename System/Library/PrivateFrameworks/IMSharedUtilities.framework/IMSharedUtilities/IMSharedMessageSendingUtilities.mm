@interface IMSharedMessageSendingUtilities
+ (id)sharedInstance;
- (BOOL)_canSendText;
- (BOOL)_hasSubscriptionPassingTest:(id)test;
- (BOOL)_isiMessageSupported;
- (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips;
- (BOOL)canSendText;
- (BOOL)isMMSEnabled;
- (BOOL)isMessagingEnabled;
- (BOOL)isRBMEnabled;
- (BOOL)isRCSEnabled;
- (BOOL)isRichMessagingEnabled;
- (BOOL)isSupportedAttachmentUTI:(id)i;
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
  serviceAvailability = [(IMSharedMessageSendingUtilities *)self serviceAvailability];
  _canSendText = [(IMSharedMessageSendingUtilities *)self _canSendText];
  if ([(IMSharedMessageSendingUtilities *)self serviceAvailability]!= _canSendText)
  {
    [(IMSharedMessageSendingUtilities *)self setServiceAvailability:_canSendText];
    if (serviceAvailability != -1)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:_canSendText];
      v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"__kMFMessageComposeViewControllerTextMessageAvailabilityKey", 0}];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }
  }
}

- (id)_managedConfigAppAllowlist
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];

  return MEMORY[0x1EEE66B58](mEMORY[0x1E69ADFB8], sel_effectiveWhitelistedAppBundleIDs);
}

- (BOOL)canSendText
{
  _managedConfigAppAllowlist = [(IMSharedMessageSendingUtilities *)self _managedConfigAppAllowlist];
  if (!_managedConfigAppAllowlist || (v4 = [_managedConfigAppAllowlist containsObject:@"com.apple.MobileSMS"]) != 0)
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

- (BOOL)_hasSubscriptionPassingTest:(id)test
{
  v18 = *MEMORY[0x1E69E9840];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    _allSubscriptions = [(IMSharedMessageSendingUtilities *)self _allSubscriptions];
    v6 = [_allSubscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(_allSubscriptions);
          }

          if ((*(test + 2))(test, *(*(&v13 + 1) + 8 * v9)))
          {
            LOBYTE(v6) = 1;
            return v6;
          }

          ++v9;
        }

        while (v7 != v9);
        v6 = [_allSubscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v11 = *(test + 2);

    LOBYTE(v6) = v11(test, v10);
  }

  return v6;
}

- (BOOL)isMMSEnabled
{
  serviceAvailabilityMonitor = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

  return [(IMServiceAvailabilityMonitoring *)serviceAvailabilityMonitor isMMSEnabled];
}

- (BOOL)isiMessageEnabled
{
  serviceAvailabilityMonitor = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

  return [(IMServiceAvailabilityMonitoring *)serviceAvailabilityMonitor isiMessageEnabled];
}

- (BOOL)isRCSEnabled
{
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    serviceAvailabilityMonitor = [(IMSharedMessageSendingUtilities *)self serviceAvailabilityMonitor];

    return [(IMServiceAvailabilityMonitoring *)serviceAvailabilityMonitor isRCSEnabled];
  }

  else
  {

    return [(IMSharedMessageSendingUtilities *)self isMMSEnabled];
  }
}

- (BOOL)isRBMEnabled
{
  isRBMSupported = [(IMSharedMessageSendingUtilities *)self isRBMSupported];
  if (isRBMSupported)
  {
    v4 = [objc_msgSend(MEMORY[0x1E695E000] "messagesAppDomain")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      LOBYTE(isRBMSupported) = [v4 BOOLValue];
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

      LOBYTE(isRBMSupported) = [(IMSharedMessageSendingUtilities *)self _hasSubscriptionPassingTest:&unk_1F1BA6568];
    }
  }

  return isRBMSupported;
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

- (BOOL)isSupportedAttachmentUTI:(id)i
{
  if ([(IMSharedMessageSendingUtilities *)self isiMessageEnabled]|| [(IMSharedMessageSendingUtilities *)self isRCSEnabled])
  {
    return 1;
  }

  if ([(IMSharedMessageSendingUtilities *)self isMMSEnabled])
  {
    v6 = UTTypeConformsTo(i, *MEMORY[0x1E6963748]);
    v7 = UTTypeConformsTo(i, *MEMORY[0x1E6963758]) | v6;
    v8 = UTTypeConformsTo(i, *MEMORY[0x1E69638D8]);
    v9 = (v7 | v8 | UTTypeConformsTo(i, *MEMORY[0x1E69637F8])) == 0;
  }

  else
  {
    v9 = UTTypeConformsTo(i, *MEMORY[0x1E69638B0]) == 0;
  }

  return !v9;
}

- (BOOL)_isiMessageSupported
{
  mEMORY[0x1E699BEB8] = [MEMORY[0x1E699BEB8] sharedInstance];

  return MEMORY[0x1EEE66B58](mEMORY[0x1E699BEB8], sel_iMessageSupported);
}

- (BOOL)canSendPhotos:(int)photos videos:(int)videos audioClips:(int)clips
{
  isMessagingEnabled = [(IMSharedMessageSendingUtilities *)self isMessagingEnabled];
  if (isMessagingEnabled)
  {
    _isiMessageSupported = [(IMSharedMessageSendingUtilities *)self _isiMessageSupported];
    isiMessageEnabled = [(IMSharedMessageSendingUtilities *)self isiMessageEnabled];
    isMMSEnabled = [(IMSharedMessageSendingUtilities *)self isMMSEnabled];
    isRCSEnabled = [(IMSharedMessageSendingUtilities *)self isRCSEnabled];
    LOBYTE(isMessagingEnabled) = 1;
    if ((!_isiMessageSupported || !isiMessageEnabled) && !isRCSEnabled)
    {
      if (!isMMSEnabled)
      {
        goto LABEL_13;
      }

      _maxMMSAttachmentCount = [(IMSharedMessageSendingUtilities *)self _maxMMSAttachmentCount];
      if (!_maxMMSAttachmentCount)
      {
        goto LABEL_13;
      }

      if (_maxMMSAttachmentCount < videos + photos + clips || videos >= 1 && clips > 0)
      {
        goto LABEL_12;
      }

      v15 = [(IMSharedMessageSendingUtilities *)self _maxMMSMessageByteCount]* 0.95 / 102400.0;
      v16 = floorf(v15);
      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v16 < photos)
      {
LABEL_12:
        LOBYTE(isMessagingEnabled) = 0;
      }

      else
      {
LABEL_13:
        LOBYTE(isMessagingEnabled) = 1;
      }
    }
  }

  return isMessagingEnabled;
}

@end