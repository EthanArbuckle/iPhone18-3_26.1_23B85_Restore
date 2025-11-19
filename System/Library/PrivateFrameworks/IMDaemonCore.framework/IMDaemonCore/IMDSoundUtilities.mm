@interface IMDSoundUtilities
+ (BOOL)_isSMSMessage:(id)a3;
+ (BOOL)_isSuppressedForGUID:(id)a3;
+ (int64_t)_soundTypeForMessage:(id)a3;
+ (unsigned)_installSystemSound:(id)a3;
+ (void)_playSentScheduledMessageSound;
+ (void)_playSoundType:(int64_t)a3;
+ (void)playMessageSentSoundIfNeeded:(id)a3;
@end

@implementation IMDSoundUtilities

+ (void)playMessageSentSoundIfNeeded:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() _soundTypeForMessage:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [a3 guid];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"Acknowledgment";
        if (v5 == 1)
        {
          v8 = @"SMS";
        }

        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Play message sent sound type: %@, for message: %@", &v10, 0x16u);
      }
    }

    [objc_opt_class() _playSoundType:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_soundTypeForMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 guid];
  result = [objc_opt_class() _smsSoundsToPlay];
  if (result)
  {
    v6 = result;
    if ([objc_opt_class() _isUserScheduledMessage:a3])
    {
      v7 = [a3 dateEdited];
      v8 = IMOSLoggingEnabled();
      if (v7)
      {
        if (!v8)
        {
          goto LABEL_29;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v14 = 138412290;
        v15 = v4;
        v10 = "Suppressing play sound for edited scheduled message[%@]";
        goto LABEL_28;
      }

      if (v8)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v4;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Using IMDSoundTypeSentScheduledMessage for message[%@]", &v14, 0xCu);
        }
      }

      v6 = 3;
    }

    if ([objc_opt_class() _isSMSMessage:a3] && objc_msgSend(objc_opt_class(), "_wasDowngraded:", a3))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v14 = 138412290;
      v15 = v4;
      v10 = "Suppressing play sound for downgraded message[%@]";
      goto LABEL_28;
    }

    if ([objc_opt_class() _isSuppressedForGUID:v4])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v4;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Suppressing play sound because it was already played [%@]", &v14, 0xCu);
        }
      }

      [objc_opt_class() _stopSuppressingForGUID:v4];
      goto LABEL_29;
    }

    if ([objc_opt_class() _isAssociatedMessage:a3])
    {
      if (![objc_opt_class() _isAcknowledgmentMessage:a3])
      {
LABEL_29:
        result = 0;
        goto LABEL_30;
      }

      v6 = 2;
    }

    if ([objc_opt_class() _isAutoPlay:a3])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v14 = 138412290;
      v15 = v4;
      v10 = "Suppressing play sound for auto-reply message [%@]";
LABEL_28:
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, v10, &v14, 0xCu);
      goto LABEL_29;
    }

    if ([a3 isBeingRetried])
    {
      result = 0;
    }

    else
    {
      result = v6;
    }
  }

LABEL_30:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_playSoundType:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v5 = objc_opt_class();

      MEMORY[0x2821F9670](v5, sel__playSentScheduledMessageSound);
      break;
    case 2:
      v4 = objc_opt_class();

      MEMORY[0x2821F9670](v4, sel__playAcknowledgmentSentSound);
      break;
    case 1:
      v3 = objc_opt_class();

      MEMORY[0x2821F9670](v3, sel__playSMSSound);
      break;
  }
}

+ (unsigned)_installSystemSound:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", a3, 0}];
  outSystemSoundID = 0;
  v5 = AudioServicesCreateSystemSoundID(v4, &outSystemSoundID);
  if (v5)
  {
    result = IMOSLoggingEnabled();
    if (result)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 138412546;
        v14 = a3;
        v15 = 1024;
        v16 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Unable to find a sound action ID for %@  errorResult: %d", buf, 0x12u);
LABEL_11:
        result = 0;
      }
    }
  }

  else
  {
    inPropertyData = 0;
    v8 = AudioServicesSetProperty(0x69737569u, 4u, &outSystemSoundID, 4u, &inPropertyData);
    if (!v8)
    {
      result = outSystemSoundID;
      goto LABEL_13;
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v14) = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Unable to set property on sound ID   errorResult: %d", buf, 8u);
      }
    }

    result = outSystemSoundID;
    if (outSystemSoundID)
    {
      AudioServicesDisposeSystemSoundID(outSystemSoundID);
      goto LABEL_11;
    }
  }

LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_playSentScheduledMessageSound
{
  if (qword_27D8CFDC0 != -1)
  {
    sub_22B7CFFD0();
  }

  v3 = dword_27D8CFDC8;
  if (dword_27D8CFDC8)
  {

    AudioServicesPlaySystemSound(v3);
  }
}

+ (BOOL)_isSMSMessage:(id)a3
{
  v3 = [a3 service];
  v4 = *MEMORY[0x277D1A610];

  return [v3 isEqualToString:v4];
}

+ (BOOL)_isSuppressedForGUID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = IMGetCachedDomainValueForKey();
  if (!v4)
  {
    return 0;
  }

  return [v4 containsObject:a3];
}

@end