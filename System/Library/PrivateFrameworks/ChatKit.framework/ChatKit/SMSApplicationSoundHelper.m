@interface SMSApplicationSoundHelper
- (BOOL)_shouldPlayTextTone;
- (BOOL)allowedByScreenTimeToPlayReceiveSoundForChat:(id)a3;
- (BOOL)playTapbackReceivedSoundForMessageInCurrentTranscript:(id)a3;
- (void)_playIncomingMessageSoundAndHapticForMessage:(id)a3 messageIsForCurrentTranscript:(BOOL)a4;
- (void)playIncomingMessageSoundAndHapticForMessage:(id)a3 messageIsForCurrentTranscript:(BOOL)a4;
- (void)stopPlayingAlert;
@end

@implementation SMSApplicationSoundHelper

- (void)stopPlayingAlert
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SMSApplicationSoundHelper *)self alert];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Requesting stop-alert: %@", &v6, 0xCu);
    }
  }

  v5 = [(SMSApplicationSoundHelper *)self alert];
  [v5 stop];

  [(SMSApplicationSoundHelper *)self setAlert:0];
}

- (BOOL)playTapbackReceivedSoundForMessageInCurrentTranscript:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 guid];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Requesting play-tapback-receive-alert for messageGUID: %@", &v10, 0xCu);
    }
  }

  if (![(SMSApplicationSoundHelper *)self _shouldPlayTextTone])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "User has disabled text tones, via sound preferences", &v10, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (![(SMSApplicationSoundHelper *)self _isPlaySoundEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "User has disabled text tones, via messages settings", &v10, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  [v4 associatedMessageType];
  v7 = IMMessageSoundPlayReceivedAckSound();
LABEL_17:

  return v7;
}

- (BOOL)_shouldPlayTextTone
{
  v2 = [MEMORY[0x193AF5EC0](@"TLToneManager" @"ToneLibrary")];
  v3 = [v2 currentToneIdentifierForAlertType:2];
  if (v3)
  {
    v4 = getTLToneIdentifierNone();
    v5 = [v3 isEqualToString:v4];

    if (v5 && IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "User has selected text tone of None in sound settings, not playing sound", v9, 2u);
      }
    }

    v7 = v5 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)allowedByScreenTimeToPlayReceiveSoundForChat:(id)a3
{
  if (a3)
  {
    return [a3 allowedToShowConversationSync];
  }

  else
  {
    return 1;
  }
}

- (void)playIncomingMessageSoundAndHapticForMessage:(id)a3 messageIsForCurrentTranscript:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SMSApplicationSoundHelper *)self _isPlaySoundEnabled])
  {
    [(SMSApplicationSoundHelper *)self _playIncomingMessageSoundAndHapticForMessage:v6 messageIsForCurrentTranscript:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "User has disabled text tones, via messages settings", v8, 2u);
    }
  }
}

- (void)_playIncomingMessageSoundAndHapticForMessage:(id)a3 messageIsForCurrentTranscript:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = [v6 guid];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Requesting play-incoming-alert for message.guid: %@", &buf, 0xCu);
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v8 = getTLAlertClass_softClass;
  v33 = getTLAlertClass_softClass;
  if (!getTLAlertClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v35 = __getTLAlertClass_block_invoke;
    v36 = &unk_1E72EB968;
    v37 = &v30;
    __getTLAlertClass_block_invoke(&buf);
    v8 = v31[3];
  }

  v9 = v8;
  _Block_object_dispose(&v30, 8);
  if (v8)
  {
    v10 = [CKEntity alloc];
    v11 = [v6 sender];
    v12 = [(CKEntity *)v10 initWithIMHandle:v11];

    v13 = [(CKEntity *)v12 textToneIdentifier];
    v14 = [(CKEntity *)v12 textVibrationIdentifier];
    if (v4)
    {
      v15 = getTLToneIdentifierNone();
      if ([v13 isEqualToString:v15])
      {
        v16 = getTLToneIdentifierNone();
      }

      else
      {
        v16 = 0;
      }

      v19 = getTLVibrationIdentifierNone();
      if ([v14 isEqualToString:v19])
      {
        v20 = getTLVibrationIdentifierNone();
      }

      else
      {
        v20 = 0;
      }

      v18 = 3;
      v13 = v16;
      v14 = v20;
    }

    else
    {
      v18 = 2;
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = @"text message";
        if (v4)
        {
          v22 = @"message in conversation";
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "In app play tone and vibration of type: %@", &buf, 0xCu);
      }
    }

    v23 = [objc_alloc(MEMORY[0x1E69DA8E8]) initWithType:v18];
    [v23 setToneIdentifier:v13];
    [v23 setVibrationIdentifier:v14];
    v24 = [v8 alertWithConfiguration:v23];
    [(SMSApplicationSoundHelper *)self setAlert:v24];

    objc_initWeak(&buf, self);
    v25 = [(SMSApplicationSoundHelper *)self alert];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __104__SMSApplicationSoundHelper__playIncomingMessageSoundAndHapticForMessage_messageIsForCurrentTranscript___block_invoke;
    v27[3] = &unk_1E72EB940;
    v28 = v26;
    objc_copyWeak(&v29, &buf);
    [v25 playWithCompletionHandler:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&buf);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Could not get alert class. No alert played.", &buf, 2u);
    }
  }
}

void __104__SMSApplicationSoundHelper__playIncomingMessageSoundAndHapticForMessage_messageIsForCurrentTranscript___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Completed play-alert for message.guid: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__SMSApplicationSoundHelper__playIncomingMessageSoundAndHapticForMessage_messageIsForCurrentTranscript___block_invoke_195;
  v9[3] = &unk_1E72EB918;
  objc_copyWeak(v12, (a1 + 40));
  v12[1] = a2;
  v10 = *(a1 + 32);
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(v12);
}

void __104__SMSApplicationSoundHelper__playIncomingMessageSoundAndHapticForMessage_messageIsForCurrentTranscript___block_invoke_195(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setAlert:0];

  if (*(a1 + 56) == 5 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      if (v4)
      {
        v6 = [v4 userInfo];
      }

      else
      {
        v6 = &stru_1F04268F8;
      }

      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Error playing alert for guid [%@]: [%@]", &v7, 0x16u);
      if (v4)
      {
      }
    }
  }
}

@end