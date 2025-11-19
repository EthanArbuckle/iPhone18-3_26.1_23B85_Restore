@interface IMMessageNotificationController
+ (id)sharedInstance;
- (BOOL)_deviceIsAudioAccessory:(id)a3;
- (BOOL)_isCurrentDeviceAudioAccessory;
- (BOOL)audioAccessoryDeviceWithTokenURIExists:(id)a3;
- (IMMessageNotificationController)init;
- (id)_copyIDSIdentifierOrDefault:(id)a3;
- (void)_executeCommandFromMessageRequest:(id)a3;
- (void)_playTone;
- (void)_sendNotificationMessageRequest:(id)a3 toTokenURI:(id)a4;
- (void)dealloc;
- (void)sendNotificationMessageToTokenURI:(id)a3 withCommmand:(int64_t)a4;
- (void)sendNotificationMessageToUniqueID:(id)a3 withCommmand:(int64_t)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation IMMessageNotificationController

+ (id)sharedInstance
{
  if (qword_1ED8CA438 != -1)
  {
    sub_1A88C44A4();
  }

  return qword_1ED8CA3A0;
}

- (IMMessageNotificationController)init
{
  v7.receiver = self;
  v7.super_class = IMMessageNotificationController;
  v2 = [(IMMessageNotificationController *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.messagenotification"];
    v2->_messageNotificationControllerIDSService = v3;
    [(IDSService *)v3 addDelegate:v2 queue:MEMORY[0x1E69E96A0]];
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Instantiated IMMessageNotificationController", v6, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  [self->_messageNotificationControllerIDSService removeDelegate:self];

  v3.receiver = self;
  v3.super_class = IMMessageNotificationController;
  [(IMMessageNotificationController *)&v3 dealloc];
}

- (BOOL)_isCurrentDeviceAudioAccessory
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E699BE70] "sharedInstance")];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2 == 7)
      {
        v4 = @"YES";
      }

      v6 = 134218242;
      v7 = v2;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Current device has deviceType %ld, isAudioAccessory %@", &v6, 0x16u);
    }
  }

  return v2 == 7;
}

- (BOOL)_deviceIsAudioAccessory:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 "modelIdentifier")];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [a3 uniqueID];
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Device with unique id %@ is audio accessory %@", &v9, 0x16u);
    }
  }

  return v4;
}

- (BOOL)audioAccessoryDeviceWithTokenURIExists:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [[(IMMessageNotificationController *)self messageNotificationControllerIDSService] devices];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(IMMessageNotificationController *)self _copyIDForDevice:v9];
        if ([v10 isEqualToString:a3])
        {
          v11 = [(IMMessageNotificationController *)self _deviceIsAudioAccessory:v9];

          if (v11)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v12 = 0;
LABEL_13:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      if (v12)
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      v21 = a3;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Found IDS Audio Accessory device with token URI %@ ? %@", buf, 0x16u);
    }
  }

  return v12;
}

- (id)_copyIDSIdentifierOrDefault:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (![-[IDSService devices](-[IMMessageNotificationController messageNotificationControllerIDSService](self "messageNotificationControllerIDSService")])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v15 = "Service did not have any devices, could not send notification message";
    goto LABEL_28;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [[(IMMessageNotificationController *)self messageNotificationControllerIDSService] devices];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (!v6)
  {
    goto LABEL_36;
  }

  v8 = 0;
  v9 = *v22;
  *&v7 = 138412546;
  v20 = v7;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      if ([objc_msgSend(v11 uniqueID] && -[IMMessageNotificationController _deviceIsAudioAccessory:](self, "_deviceIsAudioAccessory:", v11))
      {

        v8 = [(IMMessageNotificationController *)self _copyIDForDevice:v11];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = [v11 uniqueID];
            *buf = v20;
            v26 = v17;
            v27 = 2112;
            v28 = v8;
            _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Found specified uniqueID %@ formatted to %@", buf, 0x16u);
          }
        }

        goto LABEL_24;
      }

      if (!v8)
      {
        if ([(IMMessageNotificationController *)self _deviceIsAudioAccessory:v11])
        {
          v8 = [(IMMessageNotificationController *)self _copyIDForDevice:v11];
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = [v11 uniqueID];
              *buf = v20;
              v26 = v13;
              v27 = 2112;
              v28 = v8;
              _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Found first default audio accessory uniqueID %@ formatted to %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_24:
  if (!v8)
  {
LABEL_36:
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_29;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v15 = "Could not find audio accessory on service.";
LABEL_28:
    _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, v15, buf, 2u);
LABEL_29:
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = a3;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "From specified audio accessory unique id %@, returning %@", buf, 0x16u);
    }
  }

  return v8;
}

- (void)_playTone
{
  qword_1EB30B418 = MEMORY[0x1AC570AA0](@"TLToneManager", @"ToneLibrary");
  qword_1EB30B420 = MEMORY[0x1AC570AA0](@"TLAlertConfiguration", @"ToneLibrary");
  v2 = MEMORY[0x1AC570AA0](@"TLAlert", @"ToneLibrary");
  qword_1EB30B428 = v2;
  v3 = qword_1EB30B418;
  v4 = qword_1EB30B420;
  v5 = IMOSLoggingEnabled();
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v2 == 0)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Failed to weak link ToneLibrary classes, not playing messages alert tone", buf, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Weak linked ToneLibrary classes, playing messages alert tone", buf, 2u);
      }
    }

    v10 = [objc_msgSend(qword_1EB30B418 "sharedToneManager")];
    v11 = [[qword_1EB30B420 alloc] initWithType:2];
    [v11 setToneIdentifier:v10];
    v12 = [qword_1EB30B428 alertWithConfiguration:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A86C2E88;
    v13[3] = &unk_1E78299E8;
    v13[4] = v11;
    [v12 playWithCompletionHandler:v13];
  }
}

- (void)_executeCommandFromMessageRequest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(a3 objectForKey:{@"c", "integerValue"}];
  v5 = [(IMMessageNotificationController *)self _isCurrentDeviceAudioAccessory];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v8 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Looking at command to execute %@, isAudioAccessory %@", &v12, 0x16u);
    }
  }

  if (v5)
  {
    v9 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Got unrecognized command, not doing anything", &v12, 2u);
        }
      }
    }

    else
    {
      if (v9)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Got IMMessageNotificationControllerCommandIncomingMessage command, calling playTone method", &v12, 2u);
        }
      }

      [(IMMessageNotificationController *)self _playTone];
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v27 = 138413314;
      *v28 = a3;
      *&v28[8] = 2112;
      *&v28[10] = a4;
      *&v28[18] = 2112;
      *&v28[20] = a5;
      *&v28[28] = 2112;
      *&v28[30] = a6;
      *&v28[38] = 2112;
      *&v28[40] = a7;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "service %@, account %@, incomingMessage %@ fromID %@ context %@", &v27, 0x34u);
    }
  }

  v14 = [IMIDSUtilities verifyFromID:a6 comesFromAccount:a4];
  v15 = IMOSLoggingEnabled();
  if (v14)
  {
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [a4 vettedAliases];
        v18 = [a4 devices];
        v27 = 67110402;
        *v28 = v14;
        *&v28[4] = 2112;
        *&v28[6] = a4;
        *&v28[14] = 2112;
        *&v28[16] = a6;
        *&v28[24] = 2112;
        *&v28[26] = a7;
        *&v28[34] = 2112;
        *&v28[36] = v17;
        *&v28[44] = 2112;
        *&v28[46] = v18;
        v19 = "Incoming message is not from ourself. Dropping! (matchStatus: 0x%X account %@ fromID %@ context %@ vettedAliases %@ devices %@)";
        v20 = v16;
        v21 = 58;
LABEL_19:
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, v19, &v27, v21);
      }
    }
  }

  else
  {
    if (v15)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Incoming message verified as coming from ourself. Processing!", &v27, 2u);
      }
    }

    v23 = [(IMMessageNotificationController *)self _isCurrentDeviceAudioAccessory];
    v24 = IMOSLoggingEnabled();
    if (v23)
    {
      if (v24)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Current device is an audio accessory, executing command action", &v27, 2u);
        }
      }

      [(IMMessageNotificationController *)self _executeCommandFromMessageRequest:a5];
    }

    else if (v24)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        v19 = "Current device is not an audio accessory, not executing command actions";
        v20 = v26;
        v21 = 2;
        goto LABEL_19;
      }
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v7 = a6;
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      v13 = 138413058;
      v14 = a3;
      v15 = 2112;
      if (v7)
      {
        v12 = @"YES";
      }

      v16 = a4;
      v17 = 2112;
      v18 = a5;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "message sent with service %@, account %@, and identifier %@ with success %@", &v13, 0x2Au);
    }
  }
}

- (void)sendNotificationMessageToUniqueID:(id)a3 withCommmand:(int64_t)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"c";
  v19[0] = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v8 = [(IMMessageNotificationController *)self _copyIDSIdentifierOrDefault:a3];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138413058;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v12 = 2112;
      v13 = a3;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Request to send command %@ to uniqueID %@ tokenURI %@ so constructed requestDicitonary to send to IDS: %@", &v10, 0x2Au);
    }
  }

  [(IMMessageNotificationController *)self _sendNotificationMessageRequest:v7 toTokenURI:v8];
}

- (void)sendNotificationMessageToTokenURI:(id)a3 withCommmand:(int64_t)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = @"c";
  v16[0] = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412802;
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v11 = 2112;
      v12 = a3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Request to send command %@ to tokenURI %@ so constructed requestDicitonary to send to IDS: %@", &v9, 0x20u);
    }
  }

  [(IMMessageNotificationController *)self _sendNotificationMessageRequest:v7 toTokenURI:a3];
}

- (void)_sendNotificationMessageRequest:(id)a3 toTokenURI:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = a3;
      v22 = 2112;
      v23 = a4;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Trying to send request %@ to tokenURI %@", buf, 0x16u);
    }
  }

  if ([a4 length])
  {
    v18 = 0;
    v19 = 0;
    v8 = [MEMORY[0x1E695DFD8] setWithObject:a4];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = a3;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Sending notification message to local account (toDests %@) (request %@)", buf, 0x16u);
      }
    }

    v10 = [(IMMessageNotificationController *)self messageNotificationControllerIDSService];
    v28 = *MEMORY[0x1E69A47A0];
    v29[0] = MEMORY[0x1E695E118];
    v11 = -[IDSService sendMessage:toDestinations:priority:options:identifier:error:](v10, "sendMessage:toDestinations:priority:options:identifier:error:", a3, v8, 300, [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1], &v19, &v18);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (v11)
        {
          v13 = @"YES";
        }

        *buf = 138413058;
        v21 = v19;
        v22 = 2112;
        v23 = v18;
        v24 = 2112;
        v25 = a3;
        v26 = 2112;
        v27 = v13;
        v14 = "Sent notification message to local account (identifier %@)  (error %@)  (request %@) success: %@";
        v15 = v12;
        v16 = 42;
        goto LABEL_16;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Could not send message because could not find valid identifier";
      v15 = v17;
      v16 = 2;
LABEL_16:
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    }
  }
}

@end