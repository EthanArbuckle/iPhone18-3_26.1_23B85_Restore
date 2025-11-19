uint64_t sub_1959C5DD8()
{
  result = IMWeakLinkClass();
  qword_1EAED8C10 = result;
  return result;
}

id IMMMSAllowableImageDimensions(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v4 = IMMMSMaxImageDimension();
  if (v4 >= 160)
  {
    v6 = v4;
    do
    {
      v7 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, v6);
      objc_msgSend_addObject_(v3, v8, v7);

      v6 = (v6 * 0.9);
    }

    while (v6 > 159);
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_INFO, "Allowable image dimensions: %@", buf, 0xCu);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"Allowable image dimensions: %@", v10, v11, v12, v13, v14, v3);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t IMMMSMaxImageDimension()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0x7FFFFFFFLL;
  }

  v0 = IMGetDomainValueForKey(@"com.apple.carrier", @"MMS");
  v2 = v0;
  if (v0)
  {
    v3 = objc_msgSend_objectForKey_(v0, v1, @"MaxImageDimension");
    v6 = v3;
    if (v3)
    {
      v7 = objc_msgSend_intValue(v3, v4, v5);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  return v7;
}

uint64_t IMMMSMaxVideoBitrate()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0x7FFFFFFFLL;
  }

  v0 = dword_1EAED860C;
  if (dword_1EAED860C == -1)
  {
    dword_1EAED860C = 0x20000;
    v1 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v1, @"MaxVideoBitrate");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v2);
      v4 = valuePtr;
      if (valuePtr >= 1)
      {
        if (valuePtr <= 0x10000)
        {
          v4 = 0x10000;
        }

        dword_1EAED860C = v4;
      }
    }

    sub_1959C5A40();
    return dword_1EAED860C;
  }

  return v0;
}

BOOL IMMMSSupportsH264Video()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0;
  }

  v0 = dword_1EAED8610;
  if (dword_1EAED8610 == -1)
  {
    dword_1EAED8610 = 0;
    v1 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v1, @"SupportsH264Video");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v2);
      if (valuePtr >= 1)
      {
        dword_1EAED8610 = 1;
      }
    }

    sub_1959C5A40();
    v0 = dword_1EAED8610;
  }

  return v0 != 0;
}

uint64_t IMMMSMaxRecipients()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0x7FFFFFFFLL;
  }

  v0 = dword_1EAED7D04;
  if (dword_1EAED7D04 == -1)
  {
    dword_1EAED7D04 = 0x7FFFFFFF;
    v1 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v1, @"MaxRecipients");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v2);
      v4 = valuePtr;
      if (valuePtr >= 1)
      {
        if (valuePtr <= 0xA)
        {
          v4 = 10;
        }

        dword_1EAED7D04 = v4;
      }
    }

    sub_1959C5A40();
    return dword_1EAED7D04;
  }

  return v0;
}

uint64_t IMSMSMaxRecipients()
{
  v0 = dword_1EAED7CF8;
  if (dword_1EAED7CF8 == -1)
  {
    dword_1EAED7CF8 = 0x7FFFFFFF;
    v1 = CFPreferencesCopyAppValue(@"SMS", @"com.apple.carrier");
    if (v1)
    {
      v2 = v1;
      valuePtr = 0;
      Value = CFDictionaryGetValue(v1, @"MaxRecipients");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      }

      CFRelease(v2);
      v4 = valuePtr;
      if (valuePtr >= 1)
      {
        if (valuePtr <= 0xA)
        {
          v4 = 10;
        }

        dword_1EAED7CF8 = v4;
      }
    }

    sub_1959C5A40();
    return dword_1EAED7CF8;
  }

  return v0;
}

BOOL sub_1959C638C(int a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EAED7D00 == -1 || a1 != 0)
  {
    if ((byte_1EAED8B0A & 1) == 0)
    {
      byte_1EAED8B0A = 1;
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory("Restricted");
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_195988000, v2, OS_LOG_TYPE_INFO, "Now listening for restricted mode changed notifications", buf, 2u);
        }
      }

      IMLogString();
      if (_IMWillLog(@"Restricted"))
      {
        _IMAlwaysLog(0, @"Restricted", @"Now listening for restricted mode changed notifications", v3, v4, v5, v6, v7, v20);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959C945C, @"com.apple.MobileSMS.MMSRestricted.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v9 = IMSharedResourcesDirectory();
    v10 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v9, @"com.apple.MobileSMS");
    v11 = v10;
    if (v10)
    {
      dword_1EAED7D00 = IMGetDomainBoolForKey(v10, @"MMSRestricted");
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory("Restricted");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v22 = dword_1EAED7D00;
          _os_log_impl(&dword_195988000, v12, OS_LOG_TYPE_INFO, "Restricted Mode enabled: %d", buf, 8u);
        }
      }

      IMLogString();
      if (_IMWillLog(@"Restricted"))
      {
        _IMAlwaysLog(0, @"Restricted", @"Restricted Mode enabled: %d", v13, v14, v15, v16, v17, dword_1EAED7D00);
      }

      CFRelease(v11);
    }
  }

  result = dword_1EAED7D00 != 0;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IMMMSPartCanBeSent(void *a1, uint64_t a2, double a3, double a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a1;
  if (sub_1959C638C(0))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory("Restricted");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v60 = *&v7;
        v61 = 2048;
        v62 = a2;
        v63 = 2048;
        v64 = a3;
        v65 = 2048;
        v66 = a4;
        _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_INFO, "will check conformance for %@: %lld bytes, (%.0f,%.0f)", buf, 0x2Au);
      }
    }

    v58 = v7;
    IMLogString();
    if (_IMWillLog(@"Restricted"))
    {
      _IMAlwaysLog(0, @"Restricted", @"will check conformance for %@: %lld bytes, (%.0f,%.0f)", v9, v10, v11, v12, v13, v7);
    }

    v14 = &byte_1E7439AF0;
    v15 = 13;
    while (CFStringCompare(*(v14 - 1), v7, 1uLL))
    {
      v14 += 16;
      if (!--v15)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory("Restricted");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_INFO, "Not found in restricted content class", buf, 2u);
          }
        }

        IMLogString();
        if (_IMWillLog(@"Restricted"))
        {
          _IMAlwaysLog(0, @"Restricted", @"Not found in restricted content class", v17, v18, v19, v20, v21, v58);
        }

        v22 = 0;
        goto LABEL_61;
      }
    }

    v23 = *v14;
    v22 = a2 <= 307200;
    if (a2 > 307200)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory("Restricted");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v60 = *&a2;
          v61 = 1024;
          LODWORD(v62) = 307200;
          _os_log_impl(&dword_195988000, v24, OS_LOG_TYPE_INFO, "exceeds max message size (%lld, max: %d)", buf, 0x12u);
        }
      }

      v58 = a2;
      IMLogString();
      if (_IMWillLog(@"Restricted"))
      {
        _IMAlwaysLog(0, @"Restricted", @"exceeds max message size (%lld, max: %d)", v25, v26, v27, v28, v29, a2);
      }
    }

    if (v23)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory("Restricted");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_195988000, v30, OS_LOG_TYPE_INFO, "will check image conformance", buf, 2u);
        }
      }

      IMLogString();
      if (_IMWillLog(@"Restricted"))
      {
        _IMAlwaysLog(0, @"Restricted", @"will check image conformance", v31, v32, v33, v34, v35, v58);
      }

      if (a3 > 640.0)
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory("Restricted");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v60 = a3;
            v61 = 2048;
            v62 = 0x4084000000000000;
            _os_log_impl(&dword_195988000, v36, OS_LOG_TYPE_INFO, "exceeds dimension width (%.0f, max: %.0f)", buf, 0x16u);
          }
        }

        IMLogString();
        if (_IMWillLog(@"Restricted"))
        {
          _IMAlwaysLog(0, @"Restricted", @"exceeds dimension width (%.0f, max: %.0f)", v37, v38, v39, v40, v41, SLOBYTE(a3));
        }

        v22 = 0;
      }

      if (a4 > 480.0)
      {
        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory("Restricted");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v60 = a4;
            v61 = 2048;
            v62 = 0x407E000000000000;
            _os_log_impl(&dword_195988000, v42, OS_LOG_TYPE_INFO, "exceeds dimension height (%.0f, max: %.0f)", buf, 0x16u);
          }
        }

        IMLogString();
        if (_IMWillLog(@"Restricted"))
        {
          _IMAlwaysLog(0, @"Restricted", @"exceeds dimension height (%.0f, max: %.0f)", v43, v44, v45, v46, v47, SLOBYTE(a4));
        }

        v22 = 0;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory("Restricted");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        if (v22)
        {
          v49 = @"YES";
        }

        else
        {
          v49 = @"NO";
        }

        *buf = 138412290;
        v60 = *&v49;
        _os_log_impl(&dword_195988000, v48, OS_LOG_TYPE_INFO, "Accepted? %@", buf, 0xCu);
      }
    }

    if (v22)
    {
      v50 = @"YES";
    }

    else
    {
      v50 = @"NO";
    }

    IMLogString();
    if (_IMWillLog(@"Restricted"))
    {
      _IMAlwaysLog(0, @"Restricted", @"Accepted? %@", v51, v52, v53, v54, v55, v50);
    }
  }

  else
  {
    v22 = 1;
  }

LABEL_61:

  v56 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1959C6D30()
{
  im_notify_register_dispatch("com.apple.MobileSMS.MMSCapable", &unk_1ED517098, &qword_1EAED8E00, 1, MEMORY[0x1E69E96A0], &unk_1F09D33E0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959C6E28, @"com.apple.MobileSMS.MMSEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_1959C6DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_1EAED8E00 = a3;
  result = CFPreferencesSynchronize(@"com.apple.carrier", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  dword_1EAED7D04 = -1;
  dword_1EAED7CF8 = -1;
  dword_1EAED860C = -1;
  dword_1EAED8610 = -1;
  dword_1EAED7CF4 = -1;
  dword_1EAED7D08 = -1;
  dword_1EAED7D00 = -1;
  return result;
}

void sub_1959C6E28()
{
  v0 = objc_autoreleasePoolPush();
  v8 = IMSharedResourcesDirectory();
  v1 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@");
  CFRelease(v1);
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory("Enablement");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v2, OS_LOG_TYPE_INFO, "Refresh: User setting for MMS changed", buf, 2u);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Enablement"))
  {
    _IMAlwaysLog(0, @"Enablement", @"Refresh: User setting for MMS changed", v3, v4, v5, v6, v7, v8);
  }

  dispatch_async(MEMORY[0x1E69E96A0], &unk_1F09D3460);
  objc_autoreleasePoolPop(v0);
}

BOOL IMReadMMSUserOverride()
{
  keyExistsAndHasValidFormat = 0;
  v0 = IMSharedResourcesDirectory();
  v1 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v0, @"com.apple.MobileSMS");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MMSEnabled", v1, &keyExistsAndHasValidFormat);
  CFRelease(v1);
  return AppBooleanValue || keyExistsAndHasValidFormat == 0;
}

const __CFBoolean *IMShouldURLifyUnquotedShorts()
{
  result = CFPreferencesCopyAppValue(@"URLifyUnquotedShorts", @"com.apple.carrier");
  if (result)
  {
    v1 = result;
    Value = CFBooleanGetValue(result);
    CFRelease(v1);
    return (Value != 0);
  }

  return result;
}

uint64_t IMMMSGroupTextOnlyMessagesSendAsMMS(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    return 0;
  }

  if (qword_1EAED8C18 != -1)
  {
    sub_1959D6320();
  }

  v3 = objc_msgSend_sharedInstance(qword_1EAED8C20, a2, a3);
  v6 = objc_msgSend_deviceType(v3, v4, v5);

  if (v6 != 2)
  {
    return 1;
  }

  v7 = IMSharedResourcesDirectory();
  v8 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v7, @"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MMSGroupModeOverride", v8, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v10 = AppBooleanValue != 0;
  }

  else
  {
    v11 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
    if (v11)
    {
      v12 = v11;
      Value = CFDictionaryGetValue(v11, @"GroupModeEnabled");
      if (Value)
      {
        v10 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v10 = 1;
      }

      CFRelease(v12);
    }

    else
    {
      v10 = 1;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

uint64_t sub_1959C7190()
{
  result = IMWeakLinkClass();
  qword_1EAED8C20 = result;
  return result;
}

double IMMMSMaximumAudioDuration()
{
  if (qword_1EAED9388 != -1)
  {
    sub_1959D6334();
  }

  v1 = qword_1EAED9390;

  return sub_1959C7254(v1);
}

void sub_1959C7204()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED9390, v1);
}

double sub_1959C7254(void *a1)
{
  v1 = a1;
  if (qword_1EAED93B8 != -1)
  {
    sub_1959D6348();
  }

  if (qword_1EAED93C8 != -1)
  {
    sub_1959D635C();
  }

  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v5 = IMMMSMaximumMessageByteCount(v2, v3, v4);
  v7 = objc_msgSend_initWithLongLong_(v2, v6, v5);
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = objc_msgSend_initWithObjectsAndKeys_(v8, v9, v7, @"fileLengthLimit", 0);
  memset(v16, 170, sizeof(v16));
  if (qword_1EAED93B0)
  {
    objc_msgSend_maximumDurationForPreset_properties_(qword_1EAED93B0, v10, v1, v11);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v14 = *v16;
  v15 = *&v16[16];
  v12 = off_1EAED93C0(&v14);

  return v12;
}

double IMMMSMaximumVideoDuration()
{
  if (qword_1EAED9398 != -1)
  {
    sub_1959D6370();
  }

  v1 = qword_1EAED93A0;

  return sub_1959C7254(v1);
}

void sub_1959C73B4()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED93A0, v1);
}

id IMMMSEmailAddressToMatch()
{
  if (qword_1ED5170A0 != -1)
  {
    sub_1959D62F8();
  }

  if (!qword_1EAED8E00)
  {
    goto LABEL_11;
  }

  v0 = CFPreferencesCopyAppValue(@"MMS", @"com.apple.carrier");
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"ShowMMSEmailAddress");
  if (!Value)
  {
    v5 = 0;
LABEL_13:
    CFRelease(v1);
    goto LABEL_14;
  }

  v3 = CFBooleanGetValue(Value);
  CFRelease(v1);
  if (!v3)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_14;
  }

  v4 = IMSharedResourcesDirectory();
  v1 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v4, @"com.apple.MobileSMS");
  v5 = CFPreferencesCopyAppValue(@"MMSEmailAddress", v1);
  if ((byte_1EAED93A8 & 1) == 0)
  {
    byte_1EAED93A8 = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1959C7538, @"com.apple.MobileSMS.MMSEmailAddress.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  if (v1)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v5;
}

void sub_1959C7538()
{
  v0 = IMSharedResourcesDirectory();
  v1 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v0, @"com.apple.MobileSMS");
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t IMiMessageShouldSendLowResolutionOnly()
{
  if (IMGetCachedDomainBoolForKey(@"com.apple.imessage", @"AlwaysDownloadHighResolutionImages"))
  {
    return 0;
  }

  v3 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v0, v1);
  if (objc_msgSend_isWiFiEnabled(v3, v4, v5))
  {
    v8 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v6, v7);
    if (objc_msgSend_isWiFiUsable(v8, v9, v10))
    {
      v13 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v11, v12);
      isHostingWiFiHotSpot = objc_msgSend_isHostingWiFiHotSpot(v13, v14, v15);
    }

    else
    {
      isHostingWiFiHotSpot = 1;
    }
  }

  else
  {
    isHostingWiFiHotSpot = 1;
  }

  v19 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v17, v18);
  v2 = (objc_msgSend_hasLTEDataConnection(v19, v20, v21) ^ 1) & isHostingWiFiHotSpot;

  return v2;
}

void IMiMessageMaxTransferFileSizeForWifi(unint64_t *a1, unint64_t *a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKey_(v5, v6, @"att-wifi-max-file-size");
  v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(v5, v11, @"att-cellular-max-file-size");

  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = 10485760;
  }

  if (!v15)
  {
    v15 = 0x400000;
  }

  if (a1)
  {
    if (qword_1ED5170A0 != -1)
    {
      sub_1959D62F8();
    }

    if (qword_1EAED8E00)
    {
      v16 = IMMMSMaximumMessageByteCount(v16, v17, v18);
      if (v19 <= v16)
      {
        v19 = v16;
      }
    }

    *a1 = v19;
  }

  if (a2)
  {
    if (qword_1ED5170A0 != -1)
    {
      sub_1959D62F8();
    }

    if (qword_1EAED8E00)
    {
      v20 = IMMMSMaximumMessageByteCount(v16, v17, v18);
      if (v15 <= v20)
      {
        v15 = v20;
      }
    }

    *a2 = v15;
  }
}

uint64_t IMiMessageMaxTransferAudioFileSizeForWifi(uint64_t *a1, unint64_t *a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKey_(v5, v6, @"att-wifi-audio-max-file-size");
  v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(v5, v11, @"att-wifi-audio-cellular-file-size");

  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = 10485760;
  }

  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0x400000;
  }

  if (a1)
  {
    *a1 = v19;
  }

  if (a2)
  {
    if (qword_1ED5170A0 != -1)
    {
      sub_1959D62F8();
    }

    if (qword_1EAED8E00)
    {
      v21 = IMMMSMaximumMessageByteCount(v16, v17, v18);
      if (v20 <= v21)
      {
        v20 = v21;
      }
    }

    *a2 = v20;
  }

  return v19;
}

uint64_t IMiMessageMaxTransferVideoFileSizeForWifi(uint64_t *a1, unint64_t *a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKey_(v5, v6, @"att-wifi-video-max-file-size");
  v10 = objc_msgSend_unsignedIntegerValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(v5, v11, @"att-wifi-video-cellular-file-size");

  v15 = objc_msgSend_unsignedIntegerValue(v12, v13, v14);
  if (v10)
  {
    v19 = v10;
  }

  else
  {
    v19 = 10485760;
  }

  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0x400000;
  }

  if (a1)
  {
    *a1 = v19;
  }

  if (a2)
  {
    if (qword_1ED5170A0 != -1)
    {
      sub_1959D62F8();
    }

    if (qword_1EAED8E00)
    {
      v21 = IMMMSMaximumMessageByteCount(v16, v17, v18);
      if (v20 <= v21)
      {
        v20 = v21;
      }
    }

    *a2 = v20;
  }

  return v19;
}

unint64_t IMiMessageMaxFileSizeForUTI(void *a1, _BYTE *a2)
{
  v144 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v6 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v4, v5);
  if (objc_msgSend_isWiFiEnabled(v6, v7, v8))
  {
    v11 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v9, v10);
    isWiFiUsable = objc_msgSend_isWiFiUsable(v11, v12, v13);

    if (isWiFiUsable)
    {
      hasLTEDataConnection = 0;
      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v15, v16);
  hasLTEDataConnection = objc_msgSend_hasLTEDataConnection(v19, v20, v21);

  v18 = 1;
LABEL_6:
  v22 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v15, v16);
  v25 = objc_msgSend_isWiFiUsable(v22, v23, v24);

  v26 = IMWeakLinkClass();
  v29 = objc_msgSend_sharedInstance(v26, v27, v28);
  v32 = objc_msgSend_allowAnyNetwork(v29, v30, v31);

  if (v32)
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory("Attachments");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v33, OS_LOG_TYPE_INFO, "Forcing wifi", buf, 2u);
      }
    }

    IMLogString();
    if (_IMWillLog(@"Attachments"))
    {
      _IMAlwaysLog(0, @"Attachments", @"Forcing wifi", v34, v35, v36, v37, v38, v140);
    }

    v25 = 1;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = v3;
      _os_log_impl(&dword_195988000, v39, OS_LOG_TYPE_INFO, "Max File Size For UTI: %@", buf, 0xCu);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"Max File Size For UTI: %@", v40, v41, v42, v43, v44, v3);
  }

  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      if (v18)
      {
        v46 = @"YES";
      }

      else
      {
        v46 = @"NO";
      }

      *buf = 138412290;
      v143 = v46;
      _os_log_impl(&dword_195988000, v45, OS_LOG_TYPE_INFO, "  Low Bandwidth Cell: %@", buf, 0xCu);
    }
  }

  if (v18)
  {
    v47 = @"YES";
  }

  else
  {
    v47 = @"NO";
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"  Low Bandwidth Cell: %@", v48, v49, v50, v51, v52, v47);
  }

  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      if (hasLTEDataConnection)
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      *buf = 138412290;
      v143 = v54;
      _os_log_impl(&dword_195988000, v53, OS_LOG_TYPE_INFO, " High Bandwidth Cell: %@", buf, 0xCu);
    }
  }

  if (hasLTEDataConnection)
  {
    v55 = @"YES";
  }

  else
  {
    v55 = @"NO";
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @" High Bandwidth Cell: %@", v56, v57, v58, v59, v60, v55);
  }

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      if (v25)
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }

      *buf = 138412290;
      v143 = v62;
      _os_log_impl(&dword_195988000, v61, OS_LOG_TYPE_INFO, "      High Bandwidth: %@", buf, 0xCu);
    }
  }

  if (v25)
  {
    v63 = @"YES";
  }

  else
  {
    v63 = @"NO";
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"      High Bandwidth: %@", v64, v65, v66, v67, v68, v63);
  }

  if (IMOSLoggingEnabled())
  {
    v69 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v143 = @"YES";
      _os_log_impl(&dword_195988000, v69, OS_LOG_TYPE_INFO, "    Wants Misc Types: %@", buf, 0xCu);
    }
  }

  v141 = @"YES";
  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"    Wants Misc Types: %@", v70, v71, v72, v73, v74, @"YES");
  }

  if (sub_1959C87CC(v3))
  {
    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory("Attachments");
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v3;
        _os_log_impl(&dword_195988000, v75, OS_LOG_TYPE_INFO, "      ** This is an image type: %@", buf, 0xCu);
      }
    }

    IMLogString();
    if (_IMWillLog(@"Attachments"))
    {
      _IMAlwaysLog(0, @"Attachments", @"      ** This is an image type: %@", v76, v77, v78, v79, v80, v3);
    }

LABEL_71:
    if (!(hasLTEDataConnection & 1 | ((v18 & 1) == 0) | v25 & 1))
    {
      v90 = 0x400000;
      goto LABEL_97;
    }

    v81 = (v25 & 1 | ((hasLTEDataConnection & 1) == 0)) == 0;
    v82 = 6291456;
LABEL_73:
    v83 = 10485760;
LABEL_91:
    if (v81)
    {
      v90 = v82;
    }

    else
    {
      v90 = v83;
    }

    if (a2)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  if (sub_1959C8848(v3))
  {
    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory("Attachments");
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v3;
        _os_log_impl(&dword_195988000, v84, OS_LOG_TYPE_INFO, "      ** This is an audio type: %@", buf, 0xCu);
      }
    }

    IMLogString();
    if (_IMWillLog(@"Attachments"))
    {
      _IMAlwaysLog(0, @"Attachments", @"      ** This is an audio type: %@", v85, v86, v87, v88, v89, v3);
    }

LABEL_89:
    if (!(hasLTEDataConnection & 1 | ((v18 & 1) == 0) | v25 & 1))
    {
      v90 = 5242880;
      goto LABEL_97;
    }

    v81 = (v25 & 1 | ((hasLTEDataConnection & 1) == 0)) == 0;
    v82 = 20971520;
    v83 = 41943040;
    goto LABEL_91;
  }

  if (sub_1959C88C4(v3))
  {
    if (IMOSLoggingEnabled())
    {
      v91 = OSLogHandleForIMFoundationCategory("Attachments");
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v3;
        _os_log_impl(&dword_195988000, v91, OS_LOG_TYPE_INFO, "      ** This is an video type: %@", buf, 0xCu);
      }
    }

    IMLogString();
    if (_IMWillLog(@"Attachments"))
    {
      _IMAlwaysLog(0, @"Attachments", @"      ** This is an video type: %@", v92, v93, v94, v95, v96, v3);
    }

    goto LABEL_89;
  }

  if (sub_1959C8940(v3))
  {
    if (IMOSLoggingEnabled())
    {
      v106 = OSLogHandleForIMFoundationCategory("Attachments");
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v143 = v3;
        _os_log_impl(&dword_195988000, v106, OS_LOG_TYPE_INFO, "      ** This is a vcard type: %@", buf, 0xCu);
      }
    }

    IMLogString();
    if (_IMWillLog(@"Attachments"))
    {
      _IMAlwaysLog(0, @"Attachments", @"      ** This is a vcard type: %@", v107, v108, v109, v110, v111, v3);
    }

    v90 = 0x100000;
    if (!a2)
    {
      goto LABEL_97;
    }
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v3, v105, @"com.apple.pkpass", v141))
    {
      if (IMOSLoggingEnabled())
      {
        v113 = OSLogHandleForIMFoundationCategory("Attachments");
        if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v143 = v3;
          _os_log_impl(&dword_195988000, v113, OS_LOG_TYPE_INFO, "      ** This is a pass type: %@", buf, 0xCu);
        }
      }

      IMLogString();
      if (_IMWillLog(@"Attachments"))
      {
        _IMAlwaysLog(0, @"Attachments", @"      ** This is a pass type: %@", v114, v115, v116, v117, v118, v3);
      }
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v3, v112, @"com.apple.watchface"))
      {
        if (IMOSLoggingEnabled())
        {
          v120 = OSLogHandleForIMFoundationCategory("Attachments");
          if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v143 = v3;
            _os_log_impl(&dword_195988000, v120, OS_LOG_TYPE_INFO, "      ** This is a watchface type: %@", buf, 0xCu);
          }
        }

        IMLogString();
        if (_IMWillLog(@"Attachments"))
        {
          _IMAlwaysLog(0, @"Attachments", @"      ** This is a watchface type: %@", v121, v122, v123, v124, v125, v3);
        }

        goto LABEL_71;
      }

      isEqualToString = objc_msgSend_isEqualToString_(v3, v119, @"com.apple.workout");
      v127 = IMOSLoggingEnabled();
      if (!isEqualToString)
      {
        if (v127)
        {
          v134 = OSLogHandleForIMFoundationCategory("Attachments");
          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v143 = v3;
            _os_log_impl(&dword_195988000, v134, OS_LOG_TYPE_INFO, "      ** This is a misc type: %@", buf, 0xCu);
          }
        }

        IMLogString();
        if (_IMWillLog(@"Attachments"))
        {
          _IMAlwaysLog(0, @"Attachments", @"      ** This is a misc type: %@", v135, v136, v137, v138, v139, v3);
        }

        if (!(hasLTEDataConnection & 1 | ((v18 & 1) == 0) | v25 & 1))
        {
          v90 = 0x100000;
          goto LABEL_97;
        }

        v81 = (v25 & 1 | ((hasLTEDataConnection & 1) == 0)) == 0;
        v82 = 0x100000;
        goto LABEL_73;
      }

      if (v127)
      {
        v128 = OSLogHandleForIMFoundationCategory("Attachments");
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v143 = v3;
          _os_log_impl(&dword_195988000, v128, OS_LOG_TYPE_INFO, "      ** This is a workout type: %@", buf, 0xCu);
        }
      }

      IMLogString();
      if (_IMWillLog(@"Attachments"))
      {
        _IMAlwaysLog(0, @"Attachments", @"      ** This is a workout type: %@", v129, v130, v131, v132, v133, v3);
      }
    }

    v90 = 10485760;
    if (!a2)
    {
      goto LABEL_97;
    }
  }

  if ((v18 ^ 1 | hasLTEDataConnection | v25))
  {
LABEL_95:
    *a2 = 1;
  }

LABEL_97:
  if (IMOSLoggingEnabled())
  {
    v97 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v143 = (v90 >> 10);
      _os_log_impl(&dword_195988000, v97, OS_LOG_TYPE_INFO, "  Max File Size: %lld kb", buf, 0xCu);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"  Max File Size: %lld kb", v98, v99, v100, v101, v102, v90 >> 10);
  }

  v103 = *MEMORY[0x1E69E9840];
  return v90;
}

BOOL sub_1959C87CC(void *a1)
{
  v1 = a1;
  if (qword_1EAED8980 != -1)
  {
    sub_1959D6384();
  }

  if (qword_1EAED8978 != -1)
  {
    sub_1959D6398();
  }

  v2 = off_1EAED8990(v1, qword_1EAED8988) != 0;

  return v2;
}

BOOL sub_1959C8848(void *a1)
{
  v1 = a1;
  if (qword_1EAED89A0 != -1)
  {
    sub_1959D63AC();
  }

  if (qword_1EAED8998 != -1)
  {
    sub_1959D63C0();
  }

  v2 = off_1EAED89B0(v1, qword_1EAED89A8) != 0;

  return v2;
}

BOOL sub_1959C88C4(void *a1)
{
  v1 = a1;
  if (qword_1EAED8960 != -1)
  {
    sub_1959D63D4();
  }

  if (qword_1EAED8958 != -1)
  {
    sub_1959D63E8();
  }

  v2 = off_1EAED8970(v1, qword_1EAED8968) != 0;

  return v2;
}

BOOL sub_1959C8940(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, @"public.vlocation"))
  {
    v3 = 1;
  }

  else
  {
    if (qword_1EAED93D8 != -1)
    {
      sub_1959D63FC();
    }

    if (qword_1EAED93E0 != -1)
    {
      sub_1959D6410();
    }

    v3 = off_1EAED93D0(v1, qword_1EAED93E8) != 0;
  }

  return v3;
}

void sub_1959C8A00(void *a1, unint64_t *a2, void *a3, void *a4, int a5, _BYTE *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_1959C8848(v11))
  {
    IMiMessageMaxTransferAudioFileSizeForWifi(&v35, &v34, v12);
  }

  else if (sub_1959C88C4(v11))
  {
    IMiMessageMaxTransferVideoFileSizeForWifi(&v35, &v34, v12);
  }

  else
  {
    IMiMessageMaxTransferFileSizeForWifi(&v35, &v34, v12);
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v37 = v11;
      v38 = 2048;
      v39 = v35 >> 10;
      v40 = 2048;
      v41 = v34 >> 10;
      _os_log_impl(&dword_195988000, v13, OS_LOG_TYPE_INFO, "Server bag File Size Limits for type: %@   big: %lld kb  small: %lld kb", buf, 0x20u);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    _IMAlwaysLog(0, @"Attachments", @"Server bag File Size Limits for type: %@   big: %lld kb  small: %lld kb", v14, v15, v16, v17, v18, v11);
  }

  v19 = IMiMessageMaxFileSizeForUTI(v11, a6);
  if (a3)
  {
    *a3 = v34;
  }

  if (a2)
  {
    if (a5 && IMiMessageShouldSendLowResolutionOnly())
    {
      v20 = v34;
    }

    else
    {
      v20 = v35;
      if (v35 <= v19)
      {
        v20 = v19;
      }
    }

    *a2 = v20;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory("Attachments");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *a2 >> 10;
      v23 = *a3 >> 10;
      *buf = 138412802;
      v37 = v11;
      v38 = 2048;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&dword_195988000, v21, OS_LOG_TYPE_INFO, "Max File Size Limits for type: %@   big: %lld kb  small: %lld kb", buf, 0x20u);
    }
  }

  v30 = *a2 >> 10;
  v32 = *a3 >> 10;
  IMLogString();
  if (_IMWillLog(@"Attachments"))
  {
    v31 = *a2 >> 10;
    v33 = *a3 >> 10;
    _IMAlwaysLog(0, @"Attachments", @"Max File Size Limits for type: %@   big: %lld kb  small: %lld kb", v24, v25, v26, v27, v28, v11);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t IMMMSPartCombinationCanBeSent(void *a1, uint64_t *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v58 = v3;
  if (objc_msgSend_count(v3, v4, v5))
  {
    v56 = a2;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v3;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v60, v65, 16);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *v61;
LABEL_4:
      v12 = 0;
      v57 = v8 + v7;
      while (1)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v60 + 1) + 8 * v12);
        if (sub_1959C87CC(v13))
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory("MMSValidation");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_195988000, v14, OS_LOG_TYPE_INFO, "Located an Image", buf, 2u);
            }
          }

          IMLogString();
          v15 = _IMWillLog(@"MMSValidation");
          v22 = @"Located an Image";
          if (!v15)
          {
            goto LABEL_35;
          }
        }

        else if (sub_1959C8848(v13))
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory("MMSValidation");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_195988000, v23, OS_LOG_TYPE_INFO, "Located an Audio File", buf, 2u);
            }
          }

          IMLogString();
          v24 = _IMWillLog(@"MMSValidation");
          ++v9;
          v22 = @"Located an Audio File";
          if (!v24)
          {
            goto LABEL_35;
          }
        }

        else if (sub_1959C88C4(v13))
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory("MMSValidation");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_195988000, v25, OS_LOG_TYPE_INFO, "Located an Video File", buf, 2u);
            }
          }

          IMLogString();
          v26 = _IMWillLog(@"MMSValidation");
          ++v10;
          v22 = @"Located an Video File";
          if (!v26)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v27 = sub_1959C8940(v13);
          v28 = IMOSLoggingEnabled();
          if (!v27)
          {
            if (v28)
            {
              v47 = OSLogHandleForIMFoundationCategory("MMSValidation");
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_195988000, v47, OS_LOG_TYPE_INFO, "Found an invalid attachment for MMS in this message, failing message", buf, 2u);
              }
            }

            IMLogString();
            if (_IMWillLog(@"MMSValidation"))
            {
              _IMAlwaysLog(0, @"MMSValidation", @"Found an invalid attachment for MMS in this message, failing message", v48, v49, v50, v51, v52, v56);
            }

            v45 = v56;
            if (v56)
            {
              v46 = 1001;
              goto LABEL_58;
            }

            goto LABEL_67;
          }

          if (v28)
          {
            v29 = OSLogHandleForIMFoundationCategory("MMSValidation");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_INFO, "Located an vCard File", buf, 2u);
            }
          }

          IMLogString();
          v30 = _IMWillLog(@"MMSValidation");
          v22 = @"Located an vCard File";
          if (!v30)
          {
            goto LABEL_35;
          }
        }

        _IMAlwaysLog(0, @"MMSValidation", v22, v17, v18, v19, v20, v21, v56);
LABEL_35:
        v31 = v10 <= 0 && v9 <= 0;
        if (!v31 && v8 >= 1)
        {
          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory("MMSValidation");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_195988000, v39, OS_LOG_TYPE_INFO, "Attempeted to send Mixed Type MMS, Not allowing to send", buf, 2u);
            }
          }

          IMLogString();
          if (_IMWillLog(@"MMSValidation"))
          {
            _IMAlwaysLog(0, @"MMSValidation", @"Attempeted to send Mixed Type MMS, Not allowing to send", v40, v41, v42, v43, v44, v56);
          }

          v45 = v56;
          if (v56)
          {
            v46 = 2004;
LABEL_58:
            v32 = 0;
            *v45 = v46;
            goto LABEL_68;
          }

LABEL_67:
          v32 = 0;
          goto LABEL_68;
        }

        ++v8;
        if (v7 == ++v12)
        {
          v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v60, v65, 16);
          v8 = v57;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v32 = 1;
LABEL_68:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory("MMSValidation");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v33, OS_LOG_TYPE_INFO, "This message has no types, fine to send", buf, 2u);
      }
    }

    IMLogString();
    if (_IMWillLog(@"MMSValidation"))
    {
      _IMAlwaysLog(0, @"MMSValidation", @"This message has no types, fine to send", v34, v35, v36, v37, v38, v55);
    }

    v32 = 1;
  }

  v53 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1959C93F0()
{
  result = CFPreferencesSynchronize(@"com.apple.carrier", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  dword_1EAED7D04 = -1;
  dword_1EAED7CF8 = -1;
  dword_1EAED860C = -1;
  dword_1EAED8610 = -1;
  dword_1EAED7CF4 = -1;
  dword_1EAED7D08 = -1;
  return result;
}

uint64_t sub_1959C945C()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory("Restricted");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_195988000, v0, OS_LOG_TYPE_INFO, "Restricted Mode changed, reloading", buf, 2u);
    }
  }

  IMLogString();
  if (_IMWillLog(@"Restricted"))
  {
    _IMAlwaysLog(0, @"Restricted", @"Restricted Mode changed, reloading", v1, v2, v3, v4, v5, v9);
  }

  v6 = IMSharedResourcesDirectory();
  v7 = CFStringCreateWithFormat(0, 0, @"%@/Library/Preferences/%@", v6, @"com.apple.MobileSMS");
  if (v7)
  {
    CFRelease(v7);
  }

  return sub_1959C638C(1);
}

BOOL sub_1959C9570()
{
  CFPreferencesSynchronize(@"com.apple.carrier", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  dword_1EAED7D04 = -1;
  dword_1EAED7CF8 = -1;
  dword_1EAED860C = -1;
  dword_1EAED8610 = -1;
  dword_1EAED7CF4 = -1;
  dword_1EAED7D08 = -1;
  dword_1EAED7D00 = -1;
  result = IMReadMMSUserOverride();
  qword_1EAED8E00 = result;
  return result;
}

uint64_t sub_1959C95F4()
{
  result = IMWeakLinkClass();
  qword_1EAED93B0 = result;
  return result;
}

double (*sub_1959C9624())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED93C0 = result;
  return result;
}

uint64_t (*sub_1959C9654())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8990 = result;
  return result;
}

void sub_1959C9684()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8988, v1);
}

uint64_t (*sub_1959C96D4())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED89B0 = result;
  return result;
}

void sub_1959C9704()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED89A8, v1);
}

uint64_t (*sub_1959C9754())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8970 = result;
  return result;
}

void sub_1959C9784()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED8968, v1);
}

uint64_t (*sub_1959C97D4())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED93D0 = result;
  return result;
}

void sub_1959C9804()
{
  v0 = IMWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED93E8, v1);
}

void sub_1959C9D0C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_URLLoading(IMIDSLog, v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 40);
    *buf = 138412290;
    v65 = v17;
    _os_log_impl(&dword_195988000, v16, OS_LOG_TYPE_DEFAULT, "Finished loading direct request: %@", buf, 0xCu);
  }

  v20 = objc_msgSend_URLLoading(IMIDSLog, v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_msgSend_bundleIdentifierForDataUsage(*(a1 + 32), v21, v22);
    *buf = 138412290;
    v65 = v23;
    _os_log_impl(&dword_195988000, v20, OS_LOG_TYPE_DEFAULT, " Data Usage identifier: %@", buf, 0xCu);
  }

  v26 = objc_msgSend_URLLoading(IMIDSLog, v24, v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v10;
    _os_log_impl(&dword_195988000, v26, OS_LOG_TYPE_DEFAULT, "              Response: %@", buf, 0xCu);
  }

  v29 = objc_msgSend_URLLoading(IMIDSLog, v27, v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_msgSend_length(v11, v30, v31);
    *buf = 67109120;
    LODWORD(v65) = v32;
    _os_log_impl(&dword_195988000, v29, OS_LOG_TYPE_DEFAULT, "     ResultData Length: %d", buf, 8u);
  }

  v35 = objc_msgSend_URLLoading(IMIDSLog, v33, v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v65) = a3;
    _os_log_impl(&dword_195988000, v35, OS_LOG_TYPE_DEFAULT, "            StatusCode: %d", buf, 8u);
  }

  v38 = objc_msgSend_URLLoading(IMIDSLog, v36, v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v12;
    _os_log_impl(&dword_195988000, v38, OS_LOG_TYPE_DEFAULT, "                 Error: %@", buf, 0xCu);
  }

  v41 = objc_msgSend_URLLoading(IMIDSLog, v39, v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_msgSend_boundInterfaceIdentifier(*(*(a1 + 32) + 40), v42, v43);
    *buf = 138412290;
    v65 = v44;
    _os_log_impl(&dword_195988000, v41, OS_LOG_TYPE_DEFAULT, "       Bound interface: %@", buf, 0xCu);
  }

  v47 = objc_msgSend_URLLoading(IMIDSLog, v45, v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v50 = objc_msgSend_sharedInstance(NetworkChangeNotifier, v48, v49);
    v52 = objc_msgSend_linkQualityValueForInterfaceType_(v50, v51, 3);
    *buf = 67109120;
    LODWORD(v65) = v52;
    _os_log_impl(&dword_195988000, v47, OS_LOG_TYPE_DEFAULT, "     Cell Link Quality: %d", buf, 8u);
  }

  v55 = objc_msgSend_URLLoading(IMIDSLog, v53, v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v58 = objc_msgSend_sharedInstance(NetworkChangeNotifier, v56, v57);
    v60 = objc_msgSend_linkQualityValueForInterfaceType_(v58, v59, 2);
    *buf = 67109120;
    LODWORD(v65) = v60;
    _os_log_impl(&dword_195988000, v55, OS_LOG_TYPE_DEFAULT, "     WiFi Link Quality: %d", buf, 8u);
  }

  v61 = *(*(a1 + 32) + 48);
  if (v61)
  {
    (*(v61 + 16))(v61, v10, a3, v11, v12, v13);
  }

  v62 = *MEMORY[0x1E69E9840];
}

void *sub_1959CA240()
{
  result = IMWeakLinkSymbol();
  off_1EAED93F0 = result;
  return result;
}

uint64_t (*sub_1959CA2F4())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9400 = result;
  return result;
}

void sub_1959CA454(int a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory("NetworkAvailability");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a1 & 0x40000) != 0)
    {
      v5 = 87;
    }

    else
    {
      v5 = 45;
    }

    v15[0] = 67111426;
    v15[1] = v5;
    if ((a1 & 2) != 0)
    {
      v6 = 82;
    }

    else
    {
      v6 = 45;
    }

    v16 = 1024;
    v17 = v6;
    if (a1)
    {
      v7 = 116;
    }

    else
    {
      v7 = 45;
    }

    v18 = 1024;
    v19 = v7;
    if ((a1 & 4) != 0)
    {
      v8 = 99;
    }

    else
    {
      v8 = 45;
    }

    v20 = 1024;
    v21 = v8;
    if ((a1 & 8) != 0)
    {
      v9 = 67;
    }

    else
    {
      v9 = 45;
    }

    v22 = 1024;
    if ((a1 & 0x10) != 0)
    {
      v10 = 105;
    }

    else
    {
      v10 = 45;
    }

    v23 = v9;
    v24 = 1024;
    if ((a1 & 0x20) != 0)
    {
      v11 = 68;
    }

    else
    {
      v11 = 45;
    }

    v25 = v10;
    if ((a1 & 0x10000) != 0)
    {
      v12 = 108;
    }

    else
    {
      v12 = 45;
    }

    v26 = 1024;
    v27 = v11;
    if ((a1 & 0x20000) != 0)
    {
      v13 = 100;
    }

    else
    {
      v13 = 45;
    }

    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 2080;
    v33 = a2;
    _os_log_impl(&dword_195988000, v4, OS_LOG_TYPE_DEFAULT, "Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n", v15, 0x42u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t (*sub_1959CA71C())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8858 = result;
  return result;
}

void sub_1959CD3B4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959CD53C;
  block[3] = &unk_1E7439A00;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v15 = v2;
  v16 = *(a1 + 48);
  v3 = dispatch_block_create(0, block);
  v4 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
  dispatch_after(v4, *(*(a1 + 32) + 16), v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1959CD54C;
  v10[3] = &unk_1E7439C18;
  v5 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = v3;
  v11 = v5;
  v12 = *(a1 + 48);
  v6 = v3;
  v9 = objc_msgSend_copy(v10, v7, v8);
  (*(*(a1 + 56) + 16))();
}

void sub_1959CD54C(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  dispatch_block_cancel(*(a1 + 56));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959CD608;
  block[3] = &unk_1E7439A00;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_1959CD764(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1959CD820;
  v6[3] = &unk_1E7439A00;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = *(a1 + 48);
  v5 = objc_msgSend_copy(v6, v3, v4);
  (*(*(a1 + 56) + 16))();
}

void sub_1959CD820(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959CD8D4;
  block[3] = &unk_1E7439A00;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t im_set_primary_queue(void *a1)
{
  v1 = a1;
  v2 = atomic_load(byte_1ED5174A0);
  if (v2)
  {
    abort();
  }

  qword_1EAED8A20 = v1;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t im_set_primary_base_queue(void *a1)
{
  v1 = a1;
  v2 = atomic_load(byte_1EAED8688);
  if (v2)
  {
    abort();
  }

  qword_1EAED8A28 = v1;

  return MEMORY[0x1EEE66BB8]();
}

void im_assert_primary_queue()
{
  v0 = im_primary_queue();
  dispatch_assert_queue_V2(v0);
}

uint64_t sub_1959CDEE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1EAED9410 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959CE188(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  return (*(*(v1 + 24) + 16))();
}

uint64_t sub_1959CE1A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  return (*(*(v1 + 24) + 16))();
}

uint64_t sub_1959CE390()
{
  v0 = objc_alloc(MEMORY[0x1E696AD18]);
  v2 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v0, v1, 1282, 0, 100);
  v3 = qword_1EAED8BF0;
  qword_1EAED8BF0 = v2;

  v4 = objc_alloc(MEMORY[0x1E696AD18]);
  qword_1EAED8BF8 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v4, v5, 1282, 0, 100);

  return MEMORY[0x1EEE66BB8]();
}

BOOL IMShouldLogCategory(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
  {
    sub_1959D6544();
  }

  if (dword_1ED517078 >= 1)
  {
    if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
    {
      sub_1959D6544();
    }

    pthread_mutex_lock(&stru_1ED517038);
    v8 = objc_msgSend_objectForKey_(qword_1ED517450, v7, v5);

    if (v6 && v8)
    {
      v10 = objc_msgSend_objectForKey_(qword_1EAED9428, v9, v5);
      v13 = objc_msgSend_BOOLValue(v10, v11, v12);

      if ((v13 & 1) == 0)
      {
        v14 = __IMCopyCachedStringKey(v5, v6, @".");
        v16 = objc_msgSend_objectForKey_(qword_1ED517450, v15, v14);

        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }

    else if (!v8)
    {
LABEL_12:
      v17 = 0;
LABEL_16:
      pthread_mutex_unlock(&stru_1ED517038);
      goto LABEL_17;
    }

    v17 = sub_195997964(v5) >= a3;
    goto LABEL_16;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

BOOL IMShouldLogEvent(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
  {
    sub_1959D6544();
  }

  if (dword_1ED517078 < 1)
  {
    v7 = 0;
  }

  else
  {
    if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
    {
      sub_1959D6544();
    }

    pthread_mutex_lock(&stru_1ED517038);
    v5 = objc_msgSend_objectForKey_(qword_1ED517440, v4, v3);

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = objc_msgSend_objectForKey_(qword_1ED517450, v6, v3);

      if (v8)
      {
        v7 = sub_195997964(v3) >= a2;
      }

      else
      {
        v7 = 0;
      }
    }

    pthread_mutex_unlock(&stru_1ED517038);
  }

  return v7;
}

uint64_t IMLogLevelForType(void *a1)
{
  v1 = a1;
  if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
  {
    sub_1959D6544();
  }

  if (dword_1ED517078 >= 1 && byte_1ED517430 == 1)
  {
    if ((byte_1ED517431 & 1) == 0 && qword_1ED517438 != -1)
    {
      sub_1959D6544();
    }

    pthread_mutex_lock(&stru_1ED517038);
    v2 = sub_195997964(v1);
    pthread_mutex_unlock(&stru_1ED517038);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IMSyncLoggingsPreferences()
{
  v115 = *MEMORY[0x1E69E9840];
  byte_1ED517431 = 1;
  pthread_mutex_lock(&stru_1ED517038);
  v2 = objc_msgSend_sharedInstance(IMLockdownManager, v0, v1);
  isCarrierInstall = objc_msgSend_isCarrierInstall(v2, v3, v4);

  if (dword_1ED517078 != -1)
  {
    CFPreferencesAppSynchronize(@"com.apple.logging");
  }

  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v110.st_blksize = v6;
  *v110.st_qspare = v6;
  v110.st_birthtimespec = v6;
  *&v110.st_size = v6;
  v110.st_mtimespec = v6;
  v110.st_ctimespec = v6;
  *&v110.st_uid = v6;
  v110.st_atimespec = v6;
  *&v110.st_dev = v6;
  dword_1ED517078 = 0;
  v7 = &unk_1ED517000;
  if (byte_1ED517430 != 1 || lstat("/var/mobile/Library/PPTDevice", &v110) && lstat("/var/db/disableAppleInternal", &v110))
  {
    v8 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v5, @"Registration", @"RegistrationLogging", @"RegistrationLogLevel", @"RegistrationLoggingLevel", @"LocalPreview", @"LocalPreviewLogging", @"Phone", @"PhoneLogging", @"VisualVoicemail", @"VisualVoicemailLogging", @"FaceTime", @"CallLogging", @"MessagesEvent", @"MadridEventLogging", @"Messages", @"MadridLogging", @"MessagesLogLevel", @"MadridLoggingLevel", @"IDS", @"IDSLogging", @"IDSLogLevel", @"IDSLoggingLevel", @"Transport", @"TransportLogging", 0);
    v9 = CFPreferencesCopyKeyList(@"com.apple.logging", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v9;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v106, v114, 16);
    if (!v11)
    {
      goto LABEL_37;
    }

    v12 = v11;
    v13 = *v107;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v107 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v106 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKey_(v8, v16, v15);
        v19 = v17;
        v20 = v15;
        if (v17)
        {
          v20 = v17;
        }

        if (objc_msgSend_hasSuffix_(v20, v18, @"LogLevel"))
        {
          if (byte_1ED517430 == 1)
          {
            if (!qword_1EAED9420)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v23 = qword_1EAED9420;
              qword_1EAED9420 = Mutable;
            }

            AppIntegerValue = CFPreferencesGetAppIntegerValue(v15, @"com.apple.logging", 0);
            if (AppIntegerValue >= 1)
            {
              v25 = qword_1EAED9420;
              v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, AppIntegerValue);
              goto LABEL_28;
            }
          }
        }

        else if (objc_msgSend_hasSuffix_(v20, v21, @".AllCategories"))
        {
          if (byte_1ED517430 == 1)
          {
            if (!qword_1EAED9428)
            {
              v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v29 = qword_1EAED9428;
              qword_1EAED9428 = v28;
            }

            v30 = objc_msgSend_rangeOfString_(v20, v21, @".AllCategories");
            v31 = qword_1EAED9428;
            v33 = objc_msgSend_substringToIndex_(v20, v32, v30);
            objc_msgSend_setObject_forKey_(v31, v34, MEMORY[0x1E695E118], v33);
            goto LABEL_29;
          }
        }

        else
        {
          if (!*(v7 + 138))
          {
            v35 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v36 = *(v7 + 138);
            *(v7 + 138) = v35;
          }

          AppBooleanValue = CFPreferencesGetAppBooleanValue(v15, @"com.apple.logging", 0);
          dword_1ED517078 |= AppBooleanValue != 0;
          if (AppBooleanValue)
          {
            v25 = *(v7 + 138);
            v26 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v21, 1);
LABEL_28:
            v33 = v26;
            objc_msgSend_setObject_forKey_(v25, v27, v26, v20);
LABEL_29:

            v7 = &unk_1ED517000;
          }
        }

        if ((objc_msgSend_isEqualToString_(v20, v21, @"Messages") & 1) != 0 || objc_msgSend_isEqualToString_(v20, v38, @"FaceTime"))
        {
          v39 = qword_1EAED9428;
          if (!qword_1EAED9428)
          {
            v40 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v41 = qword_1EAED9428;
            qword_1EAED9428 = v40;

            v39 = qword_1EAED9428;
          }

          objc_msgSend_setObject_forKey_(v39, v38, MEMORY[0x1E695E118], v20);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v106, v114, 16);
      if (!v12)
      {
LABEL_37:

        v43 = 0;
        goto LABEL_39;
      }
    }
  }

  dword_1ED517078 = 0;
  v43 = 1;
LABEL_39:
  v44 = objc_msgSend_objectForKey_(*(v7 + 138), v5, @"Messages");
  v47 = objc_msgSend_intValue(v44, v45, v46);

  if (v47 >= 1)
  {
    v49 = *(v7 + 138);
    if (!v49)
    {
      v50 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v51 = *(v7 + 138);
      *(v7 + 138) = v50;

      v49 = *(v7 + 138);
    }

    v52 = MEMORY[0x1E695E118];
    objc_msgSend_setObject_forKey_(v49, v48, MEMORY[0x1E695E118], @"MessagesEvent");
    objc_msgSend_setObject_forKey_(*(v7 + 138), v53, v52, @"IDS");
    objc_msgSend_setObject_forKey_(*(v7 + 138), v54, v52, @"IDSIDQuery");
    objc_msgSend_setObject_forKey_(*(v7 + 138), v55, v52, @"Transport");
    dword_1ED517078 = 1;
  }

  if (!(v43 & 1 | ((byte_1ED517430 & 1) == 0)))
  {
    v56 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v48, @"Registration", @"Transport", @"LocalPreview", @"IDSIDQuery", @"CallFilter", 0);
    v58 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v57, @"Messages", 0);
    if (!*(v7 + 138))
    {
      v59 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v60 = *(v7 + 138);
      *(v7 + 138) = v59;
    }

    if (!qword_1ED517440)
    {
      v61 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v62 = qword_1ED517440;
      qword_1ED517440 = v61;
    }

    dword_1ED517078 = 1;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v63 = v56;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v102, v113, 16);
    if (v65)
    {
      v67 = v65;
      v68 = *v103;
      v69 = MEMORY[0x1E695E118];
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v103 != v68)
          {
            objc_enumerationMutation(v63);
          }

          objc_msgSend_setObject_forKey_(*(v7 + 138), v66, v69, *(*(&v102 + 1) + 8 * j));
        }

        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v102, v113, 16);
      }

      while (v67);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v71 = v58;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v98, v112, 16);
    if (v73)
    {
      v75 = v73;
      v76 = *v99;
      v77 = MEMORY[0x1E695E118];
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v99 != v76)
          {
            objc_enumerationMutation(v71);
          }

          objc_msgSend_setObject_forKey_(qword_1ED517440, v74, v77, *(*(&v98 + 1) + 8 * k));
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v74, &v98, v112, 16);
      }

      while (v75);
    }
  }

  if (((v43 | isCarrierInstall ^ 1) & 1) == 0)
  {
    v79 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v48, @"Registration", @"Transport", 0);
    if (!*(v7 + 138))
    {
      v80 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v81 = *(v7 + 138);
      *(v7 + 138) = v80;
    }

    dword_1ED517078 = 1;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v82 = v79;
    v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v94, v111, 16);
    if (v84)
    {
      v86 = v84;
      v87 = *v95;
      v88 = MEMORY[0x1E695E118];
      do
      {
        for (m = 0; m != v86; ++m)
        {
          if (*v95 != v87)
          {
            objc_enumerationMutation(v82);
          }

          objc_msgSend_setObject_forKey_(*(v7 + 138), v85, v88, *(*(&v94 + 1) + 8 * m));
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v85, &v94, v111, 16);
      }

      while (v86);
    }
  }

  if (qword_1ED517448 != -1)
  {
    sub_1959D6558();
  }

  result = pthread_mutex_unlock(&stru_1ED517038);
  v91 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1959CF0A4()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, j__IMSyncLoggingsPreferences, @"kMarcoSyncLoggingPrefs", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

__CFString *IMLoggingStringForMessageData(void *a1)
{
  v1 = a1;
  if (byte_1ED517430 == 1 && (byte_1EAED86D0 & 1) != 0 || IMShouldLog(@"Messages", 1))
  {
    v2 = v1;
  }

  else
  {
    v2 = @"<< Message Not Loggable >>";
  }

  return v2;
}

uint64_t sub_1959CF214(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(IMLockdownManager, a2, a3);
  byte_1ED517430 = objc_msgSend_isInternalInstall(v3, v4, v5);

  return IMSyncLoggingsPreferences();
}

void sub_1959CF264(void *a1, void *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (connection)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    v18 = v17;
    if (v17)
    {
      xpc_dictionary_set_int64(v17, "__xpc__event_code__", 0);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v18, "sessionType", v19, v20, v21, v22, v23, v24, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v18, "sender", v19, v20, v21, v22, v23, v24, v16);
      }

      xpc_dictionary_set_int64(v18, "beginSessionFlags", a6);
      xpc_dictionary_set_int64(v18, "endSessionFlags", a7);
      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v25 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v18, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v18);
      }
    }
  }
}

void sub_1959CF3CC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  connection = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (connection)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (v13)
    {
      xpc_dictionary_set_int64(v13, "__xpc__event_code__", 1);
      if (v11)
      {
        IMInsertNSStringsToXPCDictionary(v14, "sessionType", v15, v16, v17, v18, v19, v20, v11);
      }

      if (v12)
      {
        IMInsertNSStringsToXPCDictionary(v14, "sender", v15, v16, v17, v18, v19, v20, v12);
      }

      if (v10)
      {
        if (!v9)
        {
          v9 = MEMORY[0x1E69E96A0];
          v21 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v14, v9, v10);
      }

      else
      {
        xpc_connection_send_message(connection, v14);
      }
    }
  }
}

void sub_1959CF4FC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, double a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (connection)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    v19 = v18;
    if (v18)
    {
      xpc_dictionary_set_int64(v18, "__xpc__event_code__", 2);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v19, "checkpoint", v20, v21, v22, v23, v24, v25, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v19, "session", v20, v21, v22, v23, v24, v25, v16);
      }

      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v19, "sender", v20, v21, v22, v23, v24, v25, v17);
      }

      xpc_dictionary_set_double(v19, "time", a7);
      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v26 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v19, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v19);
      }
    }
  }
}

void sub_1959CF674(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, double a8)
{
  connection = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (connection)
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    v22 = v21;
    if (v21)
    {
      xpc_dictionary_set_int64(v21, "__xpc__event_code__", 3);
      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v22, "description", v23, v24, v25, v26, v27, v28, v17);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v22, "logString", v23, v24, v25, v26, v27, v28, v18);
      }

      if (v19)
      {
        IMInsertNSStringsToXPCDictionary(v22, "sessionType", v23, v24, v25, v26, v27, v28, v19);
      }

      if (v20)
      {
        IMInsertNSStringsToXPCDictionary(v22, "sender", v23, v24, v25, v26, v27, v28, v20);
      }

      xpc_dictionary_set_double(v22, "time", a8);
      if (v16)
      {
        if (!v15)
        {
          v15 = MEMORY[0x1E69E96A0];
          v29 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v22, v15, v16);
      }

      else
      {
        xpc_connection_send_message(connection, v22);
      }
    }
  }
}

void sub_1959CF81C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (connection)
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      xpc_dictionary_set_int64(v19, "__xpc__event_code__", 4);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v20, "category", v21, v22, v23, v24, v25, v26, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v20, "callInfo", v21, v22, v23, v24, v25, v26, v16);
      }

      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v20, "session", v21, v22, v23, v24, v25, v26, v17);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v20, "sender", v21, v22, v23, v24, v25, v26, v18);
      }

      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v27 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v20, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v20);
      }
    }
  }
}

void sub_1959CF9A4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (connection)
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      xpc_dictionary_set_int64(v19, "__xpc__event_code__", 5);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v20, "description", v21, v22, v23, v24, v25, v26, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v20, "logString", v21, v22, v23, v24, v25, v26, v16);
      }

      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v20, "session", v21, v22, v23, v24, v25, v26, v17);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v20, "sender", v21, v22, v23, v24, v25, v26, v18);
      }

      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v27 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v20, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v20);
      }
    }
  }
}

void sub_1959CFB2C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (connection)
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      xpc_dictionary_set_int64(v19, "__xpc__event_code__", 6);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v20, "description", v21, v22, v23, v24, v25, v26, v15);
      }

      if (v16)
      {
        IMInsertCodableObjectsToXPCDictionary(v20, "number", v21, v22, v23, v24, v25, v26, v16);
      }

      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v20, "session", v21, v22, v23, v24, v25, v26, v17);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v20, "sender", v21, v22, v23, v24, v25, v26, v18);
      }

      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v27 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v20, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v20);
      }
    }
  }
}

void sub_1959CFCB4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  connection = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (connection)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = v13;
    if (v13)
    {
      xpc_dictionary_set_int64(v13, "__xpc__event_code__", 7);
      if (v11)
      {
        IMInsertNSStringsToXPCDictionary(v14, "session", v15, v16, v17, v18, v19, v20, v11);
      }

      if (v12)
      {
        IMInsertNSStringsToXPCDictionary(v14, "sender", v15, v16, v17, v18, v19, v20, v12);
      }

      if (v10)
      {
        if (!v9)
        {
          v9 = MEMORY[0x1E69E96A0];
          v21 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v14, v9, v10);
      }

      else
      {
        xpc_connection_send_message(connection, v14);
      }
    }
  }
}

void sub_1959CFDE4(void *a1, void *a2, void *a3, int64_t a4, void *a5, void *a6)
{
  connection = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (connection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    if (v15)
    {
      xpc_dictionary_set_int64(v15, "__xpc__event_code__", 8);
      if (a4)
      {
        xpc_dictionary_set_int64(v16, "action", a4);
      }

      if (v13)
      {
        IMInsertNSStringsToXPCDictionary(v16, "session", v17, v18, v19, v20, v21, v22, v13);
      }

      if (v14)
      {
        IMInsertNSStringsToXPCDictionary(v16, "sender", v17, v18, v19, v20, v21, v22, v14);
      }

      if (v12)
      {
        if (!v11)
        {
          v11 = MEMORY[0x1E69E96A0];
          v23 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v16, v11, v12);
      }

      else
      {
        xpc_connection_send_message(connection, v16);
      }
    }
  }
}

void sub_1959CFF30(void *a1, void *a2, void *a3, int64_t a4, void *a5, void *a6, void *a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (connection)
  {
    v18 = xpc_dictionary_create(0, 0, 0);
    v19 = v18;
    if (v18)
    {
      xpc_dictionary_set_int64(v18, "__xpc__event_code__", 9);
      if (a4)
      {
        xpc_dictionary_set_int64(v19, "action", a4);
      }

      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v19, "session", v20, v21, v22, v23, v24, v25, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v19, "sender", v20, v21, v22, v23, v24, v25, v16);
      }

      if (v17)
      {
        IMInsertDictionariesToXPCDictionary(v19, "userInfo", v20, v21, v22, v23, v24, v25, v17);
      }

      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v26 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v19, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v19);
      }
    }
  }
}

void sub_1959D00AC(void *a1, void *a2, void *a3, int64_t a4, void *a5, void *a6)
{
  connection = a1;
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (connection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    v16 = v15;
    if (v15)
    {
      xpc_dictionary_set_int64(v15, "__xpc__event_code__", 10);
      if (a4)
      {
        xpc_dictionary_set_int64(v16, "event", a4);
      }

      if (v13)
      {
        IMInsertNSStringsToXPCDictionary(v16, "session", v17, v18, v19, v20, v21, v22, v13);
      }

      if (v14)
      {
        IMInsertNSStringsToXPCDictionary(v16, "sender", v17, v18, v19, v20, v21, v22, v14);
      }

      if (v12)
      {
        if (!v11)
        {
          v11 = MEMORY[0x1E69E96A0];
          v23 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v16, v11, v12);
      }

      else
      {
        xpc_connection_send_message(connection, v16);
      }
    }
  }
}

void sub_1959D01F8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  connection = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (connection)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      xpc_dictionary_set_int64(v16, "__xpc__event_code__", 13);
      if (v13)
      {
        IMInsertNSStringsToXPCDictionary(v17, "failureReason", v18, v19, v20, v21, v22, v23, v13);
      }

      if (v14)
      {
        IMInsertNSStringsToXPCDictionary(v17, "session", v18, v19, v20, v21, v22, v23, v14);
      }

      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v17, "sender", v18, v19, v20, v21, v22, v23, v15);
      }

      if (v12)
      {
        if (!v11)
        {
          v11 = MEMORY[0x1E69E96A0];
          v24 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v17, v11, v12);
      }

      else
      {
        xpc_connection_send_message(connection, v17);
      }
    }
  }
}

void sub_1959D0350(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  connection = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (connection)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      xpc_dictionary_set_int64(v16, "__xpc__event_code__", 11);
      if (v13)
      {
        IMInsertNSStringsToXPCDictionary(v17, "initiator", v18, v19, v20, v21, v22, v23, v13);
      }

      if (v14)
      {
        IMInsertNSStringsToXPCDictionary(v17, "session", v18, v19, v20, v21, v22, v23, v14);
      }

      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v17, "sender", v18, v19, v20, v21, v22, v23, v15);
      }

      if (v12)
      {
        if (!v11)
        {
          v11 = MEMORY[0x1E69E96A0];
          v24 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v17, v11, v12);
      }

      else
      {
        xpc_connection_send_message(connection, v17);
      }
    }
  }
}

void sub_1959D04A8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  connection = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (connection)
  {
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      xpc_dictionary_set_int64(v16, "__xpc__event_code__", 12);
      if (v13)
      {
        IMInsertNSStringsToXPCDictionary(v17, "receiver", v18, v19, v20, v21, v22, v23, v13);
      }

      if (v14)
      {
        IMInsertNSStringsToXPCDictionary(v17, "session", v18, v19, v20, v21, v22, v23, v14);
      }

      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v17, "sender", v18, v19, v20, v21, v22, v23, v15);
      }

      if (v12)
      {
        if (!v11)
        {
          v11 = MEMORY[0x1E69E96A0];
          v24 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v17, v11, v12);
      }

      else
      {
        xpc_connection_send_message(connection, v17);
      }
    }
  }
}

void sub_1959D0600(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  connection = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (connection)
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      xpc_dictionary_set_int64(v19, "__xpc__event_code__", 14);
      if (v15)
      {
        IMInsertNSStringsToXPCDictionary(v20, "session", v21, v22, v23, v24, v25, v26, v15);
      }

      if (v16)
      {
        IMInsertNSStringsToXPCDictionary(v20, "sender", v21, v22, v23, v24, v25, v26, v16);
      }

      if (v17)
      {
        IMInsertNSStringsToXPCDictionary(v20, "category", v21, v22, v23, v24, v25, v26, v17);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v20, "path", v21, v22, v23, v24, v25, v26, v18);
      }

      if (v14)
      {
        if (!v13)
        {
          v13 = MEMORY[0x1E69E96A0];
          v27 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v20, v13, v14);
      }

      else
      {
        xpc_connection_send_message(connection, v20);
      }
    }
  }
}

void sub_1959D0788(void *a1, void *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, void *a8, void *a9)
{
  connection = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  if (connection)
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    v23 = v22;
    if (v22)
    {
      xpc_dictionary_set_int64(v22, "__xpc__event_code__", 15);
      if (a7)
      {
        xpc_dictionary_set_uint64(v23, "time", a7);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v23, "type", v24, v25, v26, v27, v28, v29, v18);
      }

      if (v19)
      {
        IMInsertNSStringsToXPCDictionary(v23, "logString", v24, v25, v26, v27, v28, v29, v19);
      }

      if (a6)
      {
        xpc_dictionary_set_int64(v23, "level", a6);
      }

      if (v20)
      {
        IMInsertNSStringsToXPCDictionary(v23, "category", v24, v25, v26, v27, v28, v29, v20);
      }

      if (v21)
      {
        IMInsertNSStringsToXPCDictionary(v23, "sender", v24, v25, v26, v27, v28, v29, v21);
      }

      if (v17)
      {
        if (!v16)
        {
          v16 = MEMORY[0x1E69E96A0];
          v30 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v23, v16, v17);
      }

      else
      {
        xpc_connection_send_notification();
      }
    }
  }
}

void sub_1959D0950(void *a1, void *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, void *a8, void *a9)
{
  connection = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  if (connection)
  {
    v22 = xpc_dictionary_create(0, 0, 0);
    v23 = v22;
    if (v22)
    {
      xpc_dictionary_set_int64(v22, "__xpc__event_code__", 16);
      if (a7)
      {
        xpc_dictionary_set_uint64(v23, "time", a7);
      }

      if (v18)
      {
        IMInsertNSStringsToXPCDictionary(v23, "type", v24, v25, v26, v27, v28, v29, v18);
      }

      if (v19)
      {
        IMInsertNSStringsToXPCDictionary(v23, "eventString", v24, v25, v26, v27, v28, v29, v19);
      }

      if (a6)
      {
        xpc_dictionary_set_int64(v23, "level", a6);
      }

      if (v20)
      {
        IMInsertNSStringsToXPCDictionary(v23, "category", v24, v25, v26, v27, v28, v29, v20);
      }

      if (v21)
      {
        IMInsertNSStringsToXPCDictionary(v23, "sender", v24, v25, v26, v27, v28, v29, v21);
      }

      if (v17)
      {
        if (!v16)
        {
          v16 = MEMORY[0x1E69E96A0];
          v30 = MEMORY[0x1E69E96A0];
        }

        xpc_connection_send_message_with_reply(connection, v23, v16, v17);
      }

      else
      {
        xpc_connection_send_message(connection, v23);
      }
    }
  }
}

double sub_1959D0C70(uint64_t a1)
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  v2 = *(a1 + 8);
  v4 = v7.tv_usec - v2;
  v3 = v7.tv_usec < v2;
  v5 = v7.tv_usec - v2 + 1000000;
  if (!v3)
  {
    v5 = v4;
  }

  return v5 / 1000000.0 + (v7.tv_sec - *a1 + (v4 >> 31));
}

uint64_t IMPerformPingTest(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a1;
  v11 = dispatch_semaphore_create(0);
  v12 = [IMPingTest alloc];
  v14 = objc_msgSend_initWithAddress_wifi_(v12, v13, v10, a3);

  v15 = a2;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1959D0EEC;
  v23[3] = &unk_1E7439C98;
  v24 = v11;
  v25 = v14;
  v26 = v9;
  v16 = v9;
  v17 = v14;
  v18 = v11;
  objc_msgSend_startWithTimeout_queue_completionHandler_(v17, v19, 0, v23, v15);
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  *a5 = objc_msgSend_pingStats(v17, v20, v21);

  return 1;
}

uint64_t sub_1959D0EEC(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return MEMORY[0x1EEE66B58](v2, sel_writeResultsToFile_error_, v3);
}

uint64_t sub_1959D1A4C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_rtt(a2, v5, v6);
  v8 = v7;
  objc_msgSend_rtt(v4, v9, v10);
  v12 = v11;

  if (v8 <= v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1959D1EC4(uint64_t a1, const char *a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = *(a1 + 32);
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v8 = objc_msgSend__setupAndPerformPing_queue_completionHandler_(v4, v7, *(v5 - 1), v6, v5[1]);
    objc_sync_exit(v3);

    if (!v8)
    {
      return;
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v9, IMPingTestErrorDomain, 2, 0);
  }

  else
  {
    v5 = (a1 + 48);
    if (!*(a1 + 48))
    {
      return;
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, IMPingTestErrorDomain, 1, 0);
  }
  v10 = ;
  (*(*v5 + 16))();
}

void sub_1959D2530(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (IMTimeOfDay() - *(a1 + 56) < *(a1 + 64))
  {
    if (*(*(a1 + 32) + 32) != 1)
    {
LABEL_13:
      v17 = *MEMORY[0x1E69E9840];
      return;
    }

    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(a1 + 96);
    v6 = *(a1 + 100);
    v22 = *(a1 + 80);
    v19 = 0u;
    v20 = 0u;
    v18 = 0uLL;
    gettimeofday(&v18, 0);
    v19.i16[0] = 8;
    v19.i16[3] = bswap32(v4) >> 16;
    v19.i16[2] = bswap32(v6) >> 16;
    v21 = v18;
    if (gettimeofday(&v21, 0) || (v7 = vaddvq_s32(vaddq_s32(vaddw_u16(vaddl_u16(*v19.i8, *v20.i8), *v21.i8), vaddw_high_u16(vaddl_high_u16(v19, v20), v21))), v19.i16[1] = ~(HIWORD(v7) + v7 + ((HIWORD(v7) + v7) >> 16)), v8 = sendto(v5, &v19, 0x30uLL, 0, &v22, 0x10u), v10 = 0, v8 != 48))
    {
      if (*__error())
      {
        v11 = *__error();
        objc_msgSend_addEchoPacket_packetTimestamp_error_(*(a1 + 40), v12, *(*(*(a1 + 48) + 8) + 24), v18, v11);
LABEL_12:
        objc_msgSend_timeoutOldSequenceNumbers_(*(a1 + 40), v13, v14, *(a1 + 72));
        ++*(*(*(a1 + 48) + 8) + 24);
        goto LABEL_13;
      }

      v10 = 1;
    }

    objc_msgSend_addEchoPacket_packetTimestamp_error_(*(a1 + 40), v9, *(*(*(a1 + 48) + 8) + 24), v18, v10);
    goto LABEL_12;
  }

  v15 = *(a1 + 32);
  v16 = *MEMORY[0x1E69E9840];

  objc_msgSend_stop(v15, v2, v3);
}

void sub_1959D2890(uint64_t a1)
{
  close(*(a1 + 48));
  v9 = objc_msgSend_pingStats(*(*(a1 + 32) + 24), v2, v3);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = objc_msgSend_packetsSuccessfullySent(v9, v4, v5) > 0;
    (*(v6 + 16))(v6, v9, v7, 0);
  }

  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  *(*(a1 + 32) + 32) = 0;
  objc_sync_exit(v8);
}

void sub_1959D293C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 60);
    v4 = *(v1 + 24);
    v5 = bswap32(v3) >> 16;
    while (1)
    {
      memset(__b, 170, sizeof(__b));
      *&v13.sa_len = 0xAAAAAAAAAAAAAAAALL;
      *&v13.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
      v12 = 16;
      v6 = recvfrom(v2, __b, 0x800uLL, 0, &v13, &v12);
      v8 = v6;
      if (v6 < 0)
      {
        if (*__error())
        {
          break;
        }
      }

      v9 = 4 * (__b[0] & 0xF);
      if (((v8 - v9) & 0xFFFFFFF0) >= 0x30uLL)
      {
        v10 = &__b[v9];
        if (!*v10 && *(v10 + 2) == v5)
        {
          objc_msgSend_addEchoReplyPacket_(v4, v7, bswap32(*(v10 + 3)) >> 16);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959D2B24()
{
  qword_1ED517608 = objc_alloc_init(OSLogHandleManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1959D3210(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        (*(*(a1 + 32) + 16))();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1959D33F4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (objc_msgSend_count(a3, v5, v6))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v8);
  }
}

uint64_t (*sub_1959D35C0())(void, void, void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED9480 = result;
  return result;
}

uint64_t (*sub_1959D35F0())(void, void, void, void, void, void, void, double)
{
  result = IMWeakLinkSymbol();
  off_1EAED9490 = result;
  return result;
}

uint64_t (*sub_1959D38D0())(void, void)
{
  result = IMWeakLinkSymbol();
  off_1EAED94A0 = result;
  return result;
}

uint64_t (*sub_1959D3900())(void)
{
  result = IMWeakLinkSymbol();
  off_1EAED8A48 = result;
  return result;
}

void sub_1959D3AC0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "Auto Bug Capture failed to take snapshot for signature %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1959D3B74(uint64_t a1, const char *a2, uint64_t *a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a1, a2, @"IMFoundationUtil.m", 1596, @"Invalid parameter not satisfying: %@", @"map");

  result = objc_opt_new();
  *a3 = result;
  return result;
}

void sub_1959D3C28(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sub_1959A5D9C();
  sub_1959A5DA8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D3C9C(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *a2;
  sub_1959A5D9C();
  sub_1959A5D30();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1959D3DC0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D3E3C()
{
  sub_1959A5D90();
  sub_1959A5D5C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D3E78()
{
  sub_1959A5D90();
  sub_1959A5DA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D3EB4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5DA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D3F40()
{
  sub_1959A5D90();
  sub_1959A5D5C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D3FB4()
{
  sub_1959A5D90();
  sub_1959A5D5C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D3FF0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D74();
  sub_1959A5D30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D4154()
{
  sub_1959A5D90();
  sub_1959A5D5C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D4190()
{
  sub_1959A5D90();
  sub_1959A5D5C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D41F4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "       DDScannerResults: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D425C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "    PhoneScannerResults: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D42C4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "    Final DD Results: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D43A4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, " => Results: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D440C(_BYTE *a1, _BYTE *a2)
{
  sub_1959A5D20(a1, a2);
  sub_1959A5D84();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1959D4468(_BYTE *a1, _BYTE *a2)
{
  sub_1959A5D20(a1, a2);
  sub_1959A5D84();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1959D449C(_BYTE *a1, _BYTE *a2)
{
  sub_1959A5D20(a1, a2);
  sub_1959A5D84();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1959D4520(_BYTE *a1, _BYTE *a2)
{
  sub_1959A5D20(a1, a2);
  sub_1959A5D84();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1959D45A4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "    Adding Photo Sharing Results: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D460C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  sub_1959A5D9C();
  sub_1959A5D74();
  sub_1959A5D30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D4684(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  sub_1959A5D9C();
  sub_1959A5D40(&dword_195988000, v2, v3, " => Out attributed string: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1959D46F0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  sub_1959A5D9C();
  sub_1959A5D74();
  sub_1959A5D30();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D477C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "Found an address category %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D480C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D74();
  sub_1959A5D30();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D4880()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D490C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D49DC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "Appended link attribute (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D4A80()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D74();
  sub_1959A5D84();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D4B0C()
{
  sub_1959A5D90();
  sub_1959A5DA8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1959D4C60()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "CoreRecents metadata:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D4CF0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "Adding Events to core recent (event %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D4D58()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A5D40(&dword_195988000, v0, v1, "recordContactEvents:recentsDomain:sendingAddress:completion: error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D4E4C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1959A77B0(&dword_195988000, a2, a3, "ASSERTION FAILED: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1959D4FE4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959AC0FC();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D5058()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1959AC0FC();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1959D50CC(unsigned int *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1959AC114(a1);
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D513C(unsigned int *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1959AC114(a1);
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D51AC(unsigned int *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1959AC114(a1);
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D521C(unsigned int *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1959AC114(a1);
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D528C(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1[8] + 8) + 24);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x26u);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1959D532C(unsigned int *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  sub_1959AC114(a1);
  sub_1959AC108();
  sub_1959AC0FC();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1959D546C(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = sub_1959AF938();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_error_impl(&dword_195988000, v2, OS_LOG_TYPE_ERROR, "Exception raised during sleep callback: %@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1959D552C(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "IOAllowPowerChange failed!  Error: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D56F8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "Fatal Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D5D00(void *a1, uint64_t a2, void *a3)
{
  objc_begin_catch(a1);
  if (qword_1ED517140 != -1)
  {
    dispatch_once(&qword_1ED517140, &unk_1F09D2CA0);
  }

  v4 = qword_1ED517138;
  *a3 = qword_1ED517138;
  v5 = v4;
  objc_end_catch();
}

void sub_1959D5D60(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "IMRemoteObjectXPC Error - Exception caught unarchiving: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D5DEC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "IMRemoteObjectXPC Error - Error caught unarchiving: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D5E8C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "Error calling into MAEGetActivationStateWithError {error: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D5F04(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_195988000, a2, OS_LOG_TYPE_ERROR, "Called into MAEGetActivationStateWithError {value: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1959D61F0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1959A5D68();
  sub_1959A77B0(&dword_195988000, v0, v1, "ASSERTION FAILED: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959D644C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"IMNetworkAvailability.m", 195, @"currentNetworkStatus called with NULL reachabilityRef");
}

void sub_1959D64D4(void *a1)
{

  objc_end_catch();
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}