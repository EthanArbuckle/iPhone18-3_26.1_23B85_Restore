@interface IMMessageNotificationTimeManager
+ (id)sharedInstance;
- (BOOL)_shouldSendNotificationForChatIdentifier:(id)identifier;
- (IMMessageNotificationTimeManager)init;
- (int64_t)_getToneTimeWindow;
- (void)acquireAssertionToUnsuspendProcess;
- (void)dealloc;
- (void)sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:(id)identifier;
- (void)setDate:(id)date forChatIdentifier:(id)identifier;
- (void)setLatestNotificationIDSTokenURI:(id)i;
- (void)tearDownSessionForChatIdentifier:(id)identifier;
@end

@implementation IMMessageNotificationTimeManager

+ (id)sharedInstance
{
  if (qword_1ED8CA460 != -1)
  {
    sub_1A88C5AB0();
  }

  return qword_1ED8CA3C8;
}

- (IMMessageNotificationTimeManager)init
{
  v4.receiver = self;
  v4.super_class = IMMessageNotificationTimeManager;
  v2 = [(IMMessageNotificationTimeManager *)&v4 init];
  if (v2)
  {
    v2->_chatsStartTimeDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMMessageNotificationTimeManager;
  [(IMMessageNotificationTimeManager *)&v3 dealloc];
}

- (void)tearDownSessionForChatIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] count]&& [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] objectForKey:identifier])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        identifierCopy = identifier;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Tearing down session for chatIdentifier %@", &v6, 0xCu);
      }
    }

    [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] removeObjectForKey:identifier];
  }
}

- (void)setDate:(id)date forChatIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  if ([identifier length])
  {
    v7 = [[IMMessageNotificationTimer alloc] initWithDate:date];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        identifierCopy2 = v7;
        v12 = 2112;
        identifierCopy = identifier;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Setting current notification object %@ for chatIdentifier %@", &v10, 0x16u);
      }
    }

    [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] setObject:v7 forKey:identifier];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      identifierCopy2 = identifier;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Passed in chatIdentifier is not valid %@", &v10, 0xCu);
    }
  }
}

- (int64_t)_getToneTimeWindow
{
  v8 = *MEMORY[0x1E69E9840];
  _getTimeWindowOverride = [(IMMessageNotificationTimeManager *)self _getTimeWindowOverride];
  if (_getTimeWindowOverride == -1)
  {
    return 180;
  }

  v3 = _getTimeWindowOverride;
  if (![objc_msgSend(MEMORY[0x1E69A60F0] "sharedInstance")])
  {
    return 180;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "On internal install, overriding default time window to be %@", &v6, 0xCu);
    }
  }

  return v3;
}

- (BOOL)_shouldSendNotificationForChatIdentifier:(id)identifier
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] objectForKey:identifier];
  v6 = IMOSLoggingEnabled();
  if (!v5)
  {
    if (!v6)
    {
      return 0;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v36 = 138412290;
    identifierCopy2 = identifier;
    v22 = "Could not find a notification object for chatIdentifier %@, should not send notification";
    v23 = v21;
    v24 = 12;
    goto LABEL_32;
  }

  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v36 = 138412546;
      identifierCopy2 = [v5 date];
      v38 = 2112;
      numberDingsLeft = [v5 numberDingsLeft];
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Looking at notification object with previousDate %@, numberDingsLeft %@", &v36, 0x16u);
    }
  }

  _isToneToggleSwitchOn = [(IMMessageNotificationTimeManager *)self _isToneToggleSwitchOn];
  _getToneTimeWindow = [(IMMessageNotificationTimeManager *)self _getToneTimeWindow];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v11 = v10;
  v12 = _getToneTimeWindow;
  v13 = v10 >= _getToneTimeWindow;
  areDingsRemaining = [v5 areDingsRemaining];
  if (!_isToneToggleSwitchOn || v13 || ((areDingsRemaining ^ 1) & 1) != 0)
  {
    v25 = v11 >= v12 || !_isToneToggleSwitchOn;
    v26 = IMOSLoggingEnabled();
    if (v25)
    {
      if (v11 >= v12)
      {
        if (v26)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
            v29 = [MEMORY[0x1E696AD98] numberWithInteger:_getToneTimeWindow];
            v36 = 138412546;
            identifierCopy2 = v28;
            v38 = 2112;
            numberDingsLeft = v29;
            _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Time interval since then %@ is < than timeWindow %@, should send is NO, removing from dicitonary", &v36, 0x16u);
          }
        }

        [(IMMessageNotificationTimeManager *)self tearDownSessionForChatIdentifier:identifier];
        return 0;
      }

      if (!v26)
      {
        return 0;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:_getToneTimeWindow];
      v36 = 138412546;
      identifierCopy2 = v33;
      v38 = 2112;
      numberDingsLeft = v34;
      v22 = "Time interval since then %@ is NOT < than timeWindow %@, but tone toggle is off so should send is NO, but not removing from dictionary";
    }

    else
    {
      if (!v26)
      {
        return 0;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        return 0;
      }

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:_getToneTimeWindow];
      v36 = 138412546;
      identifierCopy2 = v31;
      v38 = 2112;
      numberDingsLeft = v32;
      v22 = "Time interval since then %@ is NOT < than timeWindow %@, tone toggle is on but no dings left so should send is NO, but not removing from dictionary";
    }

    v23 = v30;
    v24 = 22;
LABEL_32:
    _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, v22, &v36, v24);
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:_getToneTimeWindow];
      v36 = 138412546;
      identifierCopy2 = v16;
      v38 = 2112;
      numberDingsLeft = v17;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Time interval since then %@ is NOT < than timeWindow %@, tone toggle is on so should send is YES, but not removing from dictionary", &v36, 0x16u);
    }
  }

  [v5 reduceNumberDingsLeft];
  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v18 = OSLogHandleForIMFoundationCategory();
  v19 = 1;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    numberDingsLeft2 = [v5 numberDingsLeft];
    v36 = 138412546;
    identifierCopy2 = identifier;
    v38 = 2112;
    numberDingsLeft = numberDingsLeft2;
    _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Num dings left after sending ding tone for chatIdentifier %@ is %@", &v36, 0x16u);
  }

  return v19;
}

- (void)setLatestNotificationIDSTokenURI:(id)i
{
  v9 = *MEMORY[0x1E69E9840];
  if ([+[IMMessageNotificationController audioAccessoryDeviceWithTokenURIExists:"audioAccessoryDeviceWithTokenURIExists:"]
  {
    [(IMMessageNotificationTimeManager *)self setLatestIDSTokenURI:i];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        latestIDSTokenURI = self->_latestIDSTokenURI;
        v7 = 138412290;
        v8 = latestIDSTokenURI;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Set latetsIDSTokenURI to %@", &v7, 0xCu);
      }
    }
  }
}

- (void)sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_latestIDSTokenURI length]&& [(IMMessageNotificationTimeManager *)self _shouldSendNotificationForChatIdentifier:identifier])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        latestIDSTokenURI = self->_latestIDSTokenURI;
        v7 = 138412290;
        v8 = latestIDSTokenURI;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Sending incoming message notification to IDS token URI %@", &v7, 0xCu);
      }
    }

    [+[IMMessageNotificationController sharedInstance](IMMessageNotificationController sendNotificationMessageToTokenURI:"sendNotificationMessageToTokenURI:withCommmand:" withCommmand:self->_latestIDSTokenURI, 0];
  }
}

- (void)acquireAssertionToUnsuspendProcess
{
  v20[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:@"com.apple.MobileSMS"];
  v3 = [MEMORY[0x1E69C75D0] handleForPredicate:v2 error:&v17];
  if ([v3 pid])
  {
    v4 = [v3 pid];
    v5 = objc_alloc(MEMORY[0x1E69C7548]);
    v6 = [MEMORY[0x1E69C7640] targetWithPid:v4];
    v20[0] = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.MobileSMS" name:@"IncomingMessage"];
    v7 = [v5 initWithExplanation:@"incoming message assertion for MobileSMS" target:v6 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 1)}];
    LOBYTE(v6) = [v7 acquireWithError:&v17];
    v8 = IMOSLoggingEnabled();
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "Acquired unsuspend assertion";
      v11 = v9;
      v12 = 2;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_13;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v19 = v17;
      v10 = "Failed to acquire unsuspend assertion %@";
      v11 = v14;
      v12 = 12;
    }

    _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
LABEL_13:
    v15 = dispatch_time(0, 3000000000);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A86E5920;
    v16[3] = &unk_1E7826DA8;
    v16[4] = v7;
    dispatch_after(v15, MEMORY[0x1E69E96A0], v16);
    return;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Failed to get pid of MobileSMS", buf, 2u);
    }
  }
}

@end