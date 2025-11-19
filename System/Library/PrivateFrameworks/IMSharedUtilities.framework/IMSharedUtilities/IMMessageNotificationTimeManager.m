@interface IMMessageNotificationTimeManager
+ (id)sharedInstance;
- (BOOL)_shouldSendNotificationForChatIdentifier:(id)a3;
- (IMMessageNotificationTimeManager)init;
- (int64_t)_getToneTimeWindow;
- (void)acquireAssertionToUnsuspendProcess;
- (void)dealloc;
- (void)sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:(id)a3;
- (void)setDate:(id)a3 forChatIdentifier:(id)a4;
- (void)setLatestNotificationIDSTokenURI:(id)a3;
- (void)tearDownSessionForChatIdentifier:(id)a3;
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

- (void)tearDownSessionForChatIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] count]&& [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] objectForKey:a3])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        v7 = a3;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Tearing down session for chatIdentifier %@", &v6, 0xCu);
      }
    }

    [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] removeObjectForKey:a3];
  }
}

- (void)setDate:(id)a3 forChatIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a4 length])
  {
    v7 = [[IMMessageNotificationTimer alloc] initWithDate:a3];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = a4;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Setting current notification object %@ for chatIdentifier %@", &v10, 0x16u);
      }
    }

    [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] setObject:v7 forKey:a4];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = a4;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Passed in chatIdentifier is not valid %@", &v10, 0xCu);
    }
  }
}

- (int64_t)_getToneTimeWindow
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(IMMessageNotificationTimeManager *)self _getTimeWindowOverride];
  if (v2 == -1)
  {
    return 180;
  }

  v3 = v2;
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

- (BOOL)_shouldSendNotificationForChatIdentifier:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)[(IMMessageNotificationTimeManager *)self chatsStartTimeDictionary] objectForKey:a3];
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
    v37 = a3;
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
      v37 = [v5 date];
      v38 = 2112;
      v39 = [v5 numberDingsLeft];
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Looking at notification object with previousDate %@, numberDingsLeft %@", &v36, 0x16u);
    }
  }

  v8 = [(IMMessageNotificationTimeManager *)self _isToneToggleSwitchOn];
  v9 = [(IMMessageNotificationTimeManager *)self _getToneTimeWindow];
  [objc_msgSend(MEMORY[0x1E695DF00] "date")];
  v11 = v10;
  v12 = v9;
  v13 = v10 >= v9;
  v14 = [v5 areDingsRemaining];
  if (!v8 || v13 || ((v14 ^ 1) & 1) != 0)
  {
    v25 = v11 >= v12 || !v8;
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
            v29 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
            v36 = 138412546;
            v37 = v28;
            v38 = 2112;
            v39 = v29;
            _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Time interval since then %@ is < than timeWindow %@, should send is NO, removing from dicitonary", &v36, 0x16u);
          }
        }

        [(IMMessageNotificationTimeManager *)self tearDownSessionForChatIdentifier:a3];
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
      v34 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v36 = 138412546;
      v37 = v33;
      v38 = 2112;
      v39 = v34;
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
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v36 = 138412546;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
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
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v36 = 138412546;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
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
    v20 = [v5 numberDingsLeft];
    v36 = 138412546;
    v37 = a3;
    v38 = 2112;
    v39 = v20;
    _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Num dings left after sending ding tone for chatIdentifier %@ is %@", &v36, 0x16u);
  }

  return v19;
}

- (void)setLatestNotificationIDSTokenURI:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ([+[IMMessageNotificationController audioAccessoryDeviceWithTokenURIExists:"audioAccessoryDeviceWithTokenURIExists:"]
  {
    [(IMMessageNotificationTimeManager *)self setLatestIDSTokenURI:a3];
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

- (void)sendNotificationMessageIfNeededForIncomingMessageFromChatIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_latestIDSTokenURI length]&& [(IMMessageNotificationTimeManager *)self _shouldSendNotificationForChatIdentifier:a3])
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