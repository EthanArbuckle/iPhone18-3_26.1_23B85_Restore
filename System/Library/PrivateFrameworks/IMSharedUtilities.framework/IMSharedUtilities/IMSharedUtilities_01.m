uint64_t NSUserDefaults.userSwitchForFocusFilteringIsEnabled.getter()
{
  v1 = sub_1A88C82A8();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1A860169C(v7);
  }

  return 1;
}

uint64_t sub_1A86033B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A86033F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_1A88C82A8();
  [v5 setBool:a3 forKey:v4];
}

BOOL sub_1A86034A4()
{
  v1 = *(v0 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 96);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
LABEL_15:
    v5 = sub_1A88C8D38();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC56F710](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = sub_1A870FD14(v8);

    v6 = v7 + 1;
  }

  while ((v10 & 1) == 0);

  return v5 != v7;
}

uint64_t sub_1A8603820()
{
  v0 = objc_alloc_init(objc_opt_class());
  qword_1ED8CA0E8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t IMBalloonProviderBundleRootDirectory(int a1)
{
  if (a1)
  {
    v1 = [@"/System/iOSSupport" stringByAppendingPathComponent:@"/System/Library/Messages/iMessageBalloons"];
  }

  else
  {
    v1 = @"/System/Library/Messages/iMessageBalloons";
  }

  v2 = IMSystemRootDirectory();

  return [v2 stringByAppendingPathComponent:v1];
}

uint64_t IMSharedHelperAppBlocklisted(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = a2;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Invalid parameters bundleIdentifier: %@ serverBag: %@", &v10, 0x16u);
      }
    }

    return 0;
  }

  v4 = [a2 objectForKey:@"banned-messages-app-bid"];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v5 objectForKey:{a1), "BOOLValue"}])
  {
    return 0;
  }

  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v6 = OSLogHandleForIMFoundationCategory();
  v7 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = a1;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "IMSharedHelperAppBlocklisted: Not showing app as it is blocklisted, bundleID: %@ bannedBundleIDsToBannedState: %@", &v10, 0x16u);
  }

  return v7;
}

uint64_t IMBalloonExtensionIDWithSuffix(uint64_t a1)
{
  v2 = [@"com.apple.messages.MSMessageExtensionBalloonPlugin" stringByAppendingString:@":0000000000:"];

  return [v2 stringByAppendingString:a1];
}

IMMetricsCollector *sub_1A8603F10()
{
  result = objc_alloc_init(IMMetricsCollector);
  qword_1ED8CA3D0 = result;
  return result;
}

void sub_1A8603FE8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 12) = [*(a1 + 40) isCommunicationSafetyAnalyticsEnabled];
  v2 = +[IMDefaults sharedInstance];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 12)];
  [v2 setValue:v3 forDomain:@"com.apple.messages.commsafety" forKey:@"CheckSensitivePhotosAnalytics"];

  *(*(a1 + 32) + 16) = [*(a1 + 32) _fetchEnablementGroup];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 12);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Check sensitive photo analytics: %d", v6, 8u);
    }
  }

  *(*(a1 + 32) + 13) = *(a1 + 48);
  *(*(a1 + 32) + 15) = 1;
}

void *sub_1A8604170()
{
  result = MEMORY[0x1AC570AB0]("ADClientSetValueForScalarKey", @"AggregateDictionary");
  off_1ED8C9958 = result;
  return result;
}

uint64_t sub_1A86041A0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1A85E9718(0, &unk_1EB300278);
    v2 = sub_1A88C85F8();
  }

  v3(v2);
}

size_t sub_1A8604228(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A870CCE0(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t IMIsRunningInMessagesUIProcess()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return (qword_1EB30A9C8 < 0x11) & (0x1A03Cu >> qword_1EB30A9C8);
}

id IMSMSDirectoryURL()
{
  if (qword_1ED8C9A18 != -1)
  {
    sub_1A8604454();
  }

  v1 = qword_1ED8C9A10;

  return v1;
}

void sub_1A86044AC()
{
  v0 = IMServiceNameSMS[0];
  v3 = IMHomeLibraryDirectoryURL();
  v1 = [v3 URLByAppendingPathComponent:v0 isDirectory:1];
  v2 = qword_1ED8C9A10;
  qword_1ED8C9A10 = v1;
}

id IMHomeLibraryDirectoryURL()
{
  if (qword_1ED8C9980 != -1)
  {
    sub_1A8604528();
  }

  v1 = qword_1ED8C9978;

  return v1;
}

uint64_t sub_1A8604580()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/" isDirectory:1];
  qword_1ED8C9978 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A86045F0()
{
  result = sub_1A85FC730(&unk_1F1BAA150);
  qword_1EB3002F8 = result;
  return result;
}

BOOL IMSharedHelperMessageSIMFilteringEnabled()
{
  v7 = *MEMORY[0x1E69E9840];
  HasMultipleActiveSubscriptions = dword_1EB300258;
  if (dword_1EB300258 == -1)
  {
    if (IMGetDomainBoolForKey())
    {
      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          LOWORD(v4[0]) = 0;
          _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "Force enabling Message SIM Filtering", v4, 2u);
        }
      }

      dword_1EB300258 = 1;
    }

    HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
    dword_1EB300258 = HasMultipleActiveSubscriptions;
  }

  if (HasMultipleActiveSubscriptions != dword_1EB300254)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4[0] = 67109376;
        v4[1] = dword_1EB300254;
        v5 = 1024;
        v6 = dword_1EB300258;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Message SIM Filtering Enabled state changed from:(%d) to:(%d)", v4, 0xEu);
      }
    }

    HasMultipleActiveSubscriptions = dword_1EB300258;
    dword_1EB300254 = dword_1EB300258;
  }

  return HasMultipleActiveSubscriptions > 0;
}

uint64_t sub_1A86047B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1A8604818(uint64_t a1, uint64_t a2, char a3)
{
  v4 = MKBGetDeviceLockState();
  if (v4)
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return sub_1A8604858(v6, a3);
}

uint64_t sub_1A8604858(char a1, char a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v3 + OBJC_IVAR___IMUnlockMonitor_state);

  os_unfair_lock_lock((v8 + 20));
  if ((a2 & 1) != 0 || (*(v3 + OBJC_IVAR___IMUnlockMonitor_initializedBeforeFirstUnlock) & 1) != 0 && (*(v8 + 17) & 1) == 0 && MKBDeviceUnlockedSinceBoot() > 0)
  {
    if (qword_1EB3022A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB307250);
    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A85E5000, v10, v11, "We are now past first unlock!", v12, 2u);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    *(v8 + 17) = 1;
    *(v6 + 16) = 1;
  }

  v13 = *(v8 + 18);
  *(v8 + 18) = a1 & 1;
  if (*(v8 + 16) == 1)
  {
    *(v8 + 16) = 1;
    if (v13)
    {
      v14 = a1 ^ 1;
      goto LABEL_15;
    }
  }

  else
  {
    v14 = a1 ^ 1;
    *(v8 + 16) = (a1 ^ 1) & 1;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_15:
  *(v7 + 16) = v14 & 1;
  os_unfair_lock_unlock((v8 + 20));

  v15 = *(v3 + OBJC_IVAR___IMUnlockMonitor_listeners);

  os_unfair_lock_lock(v15 + 6);
  sub_1A8604AB0(&v15[4], v6, v7);
  os_unfair_lock_unlock(v15 + 6);
}

id sub_1A8604AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v29 = sub_1A88C7EC8();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A88C7EF8();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A88C71A8();
  v21 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C8B58();
  sub_1A88C7198();
  if (!v37)
  {
    return (*(v21 + 8))(v8, v22);
  }

  v25 = (v3 + 8);
  v26 = v34;
  v24 = (v5 + 8);
  v9 = &unk_1EB3072C8;
  v23 = v8;
  while (1)
  {
    sub_1A85E99B0(&v36, &aBlock);
    sub_1A870CCE0(v9);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    sub_1A88C7198();
    if (!v37)
    {
      return (*(v21 + 8))(v8, v22);
    }
  }

  v10 = v9;
  v11 = v35;
  result = im_primary_queue();
  if (result)
  {
    v13 = result;
    v14 = swift_allocObject();
    v15 = v32;
    v14[2] = v31;
    v14[3] = v11;
    v14[4] = v15;
    v34[2] = sub_1A8604F88;
    v34[3] = v14;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v34[0] = sub_1A85EB8C0;
    v34[1] = &unk_1F1BB44B0;
    v16 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    v17 = v27;
    _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
    v35 = MEMORY[0x1E69E7CC0];
    sub_1A85EE160(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
    sub_1A870CCE0(&unk_1EB3081F0);
    sub_1A85E8C68(&qword_1ED8C9470, &unk_1EB3081F0);
    v19 = v28;
    v18 = v29;
    sub_1A88C8CE8();
    MEMORY[0x1AC56F330](0, v17, v19, v16);
    _Block_release(v16);
    swift_unknownObjectRelease();

    (*v25)(v19, v18);
    (*v24)(v17, v30);

    v9 = v10;
    v8 = v23;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A8604F3C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8604F94(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1 && ([a2 respondsToSelector_] & 1) != 0)
  {
    [a2 systemDidLeaveFirstDataProtectionLock];
  }

  result = swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    result = [a2 respondsToSelector_];
    if (result)
    {
      return [a2 systemDidUnlock];
    }
  }

  return result;
}

void IMShouldShowKeyboardSuggestionsForCheckIn(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v5 length] || !objc_msgSend(v6, "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Invalid handle ID passed in :%@, %@", buf, 0x16u);
      }
    }

    v7[2](v7, 0);
  }

  v9 = [sub_1A869AFF0() defaultManager];
  if (objc_opt_respondsToSelector())
  {
    v10 = [objc_alloc(sub_1A869C434()) initWithPrimaryHandle:v5 secondaryHandles:MEMORY[0x1E695E0F0]];
    v11 = [objc_alloc(sub_1A869C434()) initWithPrimaryHandle:v6 secondaryHandles:MEMORY[0x1E695E0F0]];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A869C514;
    v13[3] = &unk_1E7828598;
    v14 = v7;
    [v9 shouldShowKeyboardSuggestionsForInitiator:v10 receiver:v11 handler:v13];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Failed to fetch SafetyMonitor KB suggestion policy", buf, 2u);
      }
    }

    v7[2](v7, 0);
  }
}

BOOL IMSharedHelperDeviceHasMultipleSubscriptionsWithAtLeastOneActive()
{
  result = [+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities deviceSupportsMultipleSubscriptions];
  if (result)
  {
    return [+[IMCTSubscriptionUtilities sharedInstance](IMCTSubscriptionUtilities numberOfSubscriptions]!= 0;
  }

  return result;
}

uint64_t IMBalloonBundleIDFromExtensionID(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@":"];
  if ([v1 count] == 3)
  {
    v2 = 2;
  }

  else
  {
    if ([v1 count] != 1)
    {
      return 0;
    }

    v2 = 0;
  }

  return [v1 objectAtIndexedSubscript:v2];
}

void sub_1A8605BF0()
{
  if (_os_feature_enabled_impl())
  {
    byte_1EB30A9E0 = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E69A60F0] sharedInstance];
    v0 = [v1 isInternalInstall];
    if (v0)
    {
      LOBYTE(v0) = IMGetCachedDomainBoolForKeyWithDefaultValue();
    }

    byte_1EB30A9E0 = v0;
  }
}

void IMSetUserRegistrationFailureIntent(void *a1)
{
  if (qword_1ED8C9F50[0] != -1)
  {
    sub_1A8605D6C();
  }

  if (IMGetUserRegistrationFailureIntent() != a1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"UserRegistrationFailureIntent", v2, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.IMSharedUtilities.IMUserRegistrationFailureIntentChangedInternal", 0, 0, 1u);
  }
}

id sub_1A8605E4C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  v16 = type metadata accessor for RBMTelephonyUtilities();
  v17 = &off_1F1BB8CA0;
  v15[0] = swift_initStaticObject();
  type metadata accessor for RBMBrandDataSource();
  v4 = swift_allocObject();
  v5 = sub_1A8606088(v15, v16);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  swift_unknownObjectRetain();
  v10 = sub_1A86060D8(v3, v9, a1, v4);
  swift_unknownObjectRelease();
  sub_1A85F1084(v15);
  v11 = [objc_allocWithZone(MEMORY[0x1E698F6A8]) initWithThing_];

  *&v1[OBJC_IVAR___IMBrandRBMBrandDataSourceObjcShim_opaqueWrapper] = v11;
  v14.receiver = v1;
  v14.super_class = IMBrandRBMBrandDataSourceObjcShim;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_1A8606088(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_1A86060D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[3] = type metadata accessor for RBMTelephonyUtilities();
  v10[4] = &off_1F1BB8CA0;
  v10[0] = a2;
  a4[9] = 0;
  sub_1A870CCE0(&qword_1EB307B80);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x1E69E7CC8];
  a4[10] = v8;
  sub_1A86061B4(v10, (a4 + 4));
  a4[2] = a1;
  a4[3] = &off_1F1BB8C68;
  [a1 setDelegate_];
  sub_1A85F1084(v10);
  a4[9] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_1A86061B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *IMGetUserRegistrationFailureIntent()
{
  if (qword_1ED8C9F50[0] != -1)
  {
    sub_1A8605D6C();
  }

  result = CFPreferencesCopyValue(@"UserRegistrationFailureIntent", @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    result = [result integerValue];
    if (result >= 3)
    {
      return 0;
    }
  }

  return result;
}

id IMCachesDirectoryURL()
{
  if (qword_1ED8C9A28 != -1)
  {
    sub_1A860642C();
  }

  v1 = qword_1ED8C9A20;

  return v1;
}

uint64_t RBMBrandDataSource.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1A85F1084(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL IMIsRunningInMessagesComposeViewService()
{
  if (qword_1ED8CA178 != -1)
  {
    sub_1A85EB3A8();
  }

  return qword_1EB30A9C8 == 3;
}

uint64_t sub_1A8606604()
{
  result = MEMORY[0x1AC570AA0](@"BSBrand", @"BusinessServices");
  qword_1EB30B6E0 = result;
  return result;
}

uint64_t IMSharedHelperTruncatedGroupDisplayName(void *a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  if ([a1 length] > 0x400)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 134217984;
        v5 = 1024;
        _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Trying to set a group display name that's too long. truncating to %tu characters", &v4, 0xCu);
      }
    }

    return [v1 substringToIndex:1024];
  }

  return v1;
}

id IMStringFromChatRepairHistory(uint64_t a1)
{
  v2 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
  sub_1A85EBFE4(1, a1, @"Repaired GUID", v2);
  sub_1A85EBFE4(2, a1, @"Repaired Participant For Chat ID Handle ID Mismatch", v2);
  sub_1A85EBFE4(4, a1, @"Repaired Blank Service Name", v2);
  sub_1A85EBFE4(8, a1, @"Repaired Chat Identifier", v2);
  sub_1A85EBFE4(16, a1, @"Repaired Participant V2", v2);
  sub_1A85EBFE4(32, a1, @"Repaired GUID V2", v2);
  [v2 appendString:@""]);

  return v2;
}

id sub_1A8606868(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [a1 date];
  if ([a1 useCourierTime])
  {
    if (qword_1ED8C9698 != -1)
    {
      sub_1A88C33E4();
    }

    if (qword_1ED8C96A0)
    {
      v3 = [qword_1ED8C96A0 sharedInstance];
      [v3 currentServerTimeInterval];
      v5 = v4;

      if (v5 >= 1009864800.0)
      {
        v9 = [a1 dateWithTimeIntervalSince1970:v5];

        v2 = v9;
      }

      else if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
          v8 = [MEMORY[0x1E696AD98] numberWithDouble:1009864800.0];
          v11 = 138412546;
          v12 = v7;
          v13 = 2112;
          v14 = v8;
          _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "The server time we got back is around epoch time: %@ checked with padding: %@", &v11, 0x16u);
        }
      }
    }
  }

  return v2;
}

uint64_t IMDDatabaseTelemetryLogHandle()
{
  if (qword_1ED8C98E0 != -1)
  {
    sub_1A8606A50();
  }

  return qword_1ED8C98D8;
}

uint64_t sub_1A8606B44()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB304708);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void *sub_1A860717C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A8607208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A88C82E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8607254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C7038();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A86072C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C7038();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8607358()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

uint64_t sub_1A86073C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1A8607440@<X0>(void *a1@<X8>)
{
  result = sub_1A88C6D08();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A8607498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&unk_1EB3052E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8607554(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8607624()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A8607680()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A86076B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8607700@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A860773C()
{
  v1 = 7562345;
  v2 = 0x4E65636976726573;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6C79745374616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A86077BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A872CF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A86077F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A860783C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8607878()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A86078BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8607984(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8607A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&qword_1EB304048);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A8607AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&qword_1EB304048);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8607BAC()
{
  type metadata accessor for VersionedItem();
  sub_1A88C6E98();
  sub_1A88C6E48();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A8741BB8(&qword_1EB3040D0, MEMORY[0x1EEE77B18]);
  sub_1A8741BB8(qword_1EB3040D8, MEMORY[0x1EEE77AE0]);
  sub_1A88C78E8();
  return swift_getWitnessTable();
}

uint64_t sub_1A8607D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A88C7E58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A8607E24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A88C7E58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A8608098@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X8>)
{
  result = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1A86080DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1A86061B4(v3 + 24, a2);
}

uint64_t sub_1A8608174()
{
  v1 = (type metadata accessor for RemoteIntentMirrorFileRepresentation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (sub_1A870CCE0(&qword_1EB304AE8) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v15 = v2 | v6;
  v8 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = sub_1A88C72E8();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = v1[7];
  v13 = sub_1A88C7B88();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);

  v11(v0 + v7, v10);
  v11(v0 + v7 + v5[14], v10);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v15 | 7);
}

unint64_t sub_1A8608388(uint64_t a1)
{
  result = sub_1A87648E8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8608434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A88C7038();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A88C7048();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A8608524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A88C7038();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A88C7048();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8608620@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AttributeScopes.TranslationTextStyleAttributes(0);
  *a1 = result;
  return result;
}

uint64_t sub_1A860864C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8608694()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A86086CC()
{
  v1 = sub_1A870CCE0(&qword_1EB304C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A8608760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1A86087A4()
{
  swift_unknownObjectRelease();
  sub_1A85F1084(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A86087F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A8608864()
{
  swift_unknownObjectRelease();
  sub_1A85F1084(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A86088B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A86088FC()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A8608968()
{

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1A86089E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1A8608A50()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1A8608AB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A8608B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8608C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8608C90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8608CD0@<X0>(void *a1@<X8>)
{
  result = sub_1A88C6D08();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_1A8608D10@<D0>(double *a1@<X8>)
{
  sub_1A88C6D08();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A8608D54()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8608D8C()
{
  v1 = sub_1A870CCE0(&qword_1EB303D00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A8608E5C()
{
  v1 = sub_1A870CCE0(&qword_1EB303D00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A8608EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8608F38()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8608F80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A8608FD0()
{
  v1 = sub_1A870CCE0(&qword_1EB303D00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A86090A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8609128@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB3054D0;
  return result;
}

uint64_t sub_1A8609174(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB3054D0 = v1;
  return result;
}

uint64_t sub_1A8609264()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A86092A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A86092EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1A8609358(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A86093F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8609430()
{
  v1 = sub_1A870CCE0(&qword_1EB305CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A86094DC()
{
  MEMORY[0x1AC571FF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1A8609514@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 conversationListFocusFilterActionEnabled];
  *a2 = result;
  return result;
}

id sub_1A860955C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userSwitchForFocusFilteringIsEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1A86095A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&qword_1EB305E08);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 136);

    return v10(v11, a2, v9);
  }
}

void *sub_1A860966C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&qword_1EB305E08);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 136);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A86097B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&qword_1EB306120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A860986C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&qword_1EB306120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860994C()
{
  v1 = type metadata accessor for TapToRadarDraft();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + v3 + 48))
  {
  }

  v5 = v0 + v3 + *(v1 + 44);

  v6 = *(sub_1A870CCE0(&qword_1EB306120) + 36);
  v7 = sub_1A88C7478();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1A8609C48()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1A8609CA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A8609CE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A8609D54()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1A8609DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1A8609E1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8609E5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8609EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C71A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A8609F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C71A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8609F88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8609FC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860A084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A860A14C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860A1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1A860A33C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPendingReview];
  *a2 = result;
  return result;
}

void sub_1A860A388(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1A88C85E8();
  [v2 setParticipants_];
}

id sub_1A860A4EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isFiltered];
  *a2 = result;
  return result;
}

id sub_1A860A534@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBlackholed];
  *a2 = result;
  return result;
}

uint64_t sub_1A860A57C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A860A608()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860A64C(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1A860A6A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A860A6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A860A720()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A860A7B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A88C7478();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A860A864(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A88C7478();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860A914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8814874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A860A93C()
{
  v1 = 0x55746E756F636361;
  v2 = 0x6C79745374616863;
  if (*v0 != 2)
  {
    v2 = 0x556567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6E65644974616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A860A9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8814EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A860AA08()
{
  v1 = 0x55746E756F636361;
  v2 = 0x6C79745374616863;
  if (*v0 != 2)
  {
    v2 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6E65644974616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A860AAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8815414(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1A860AB44(unint64_t result, char a2)
{
  if (a2 & 1 | (result > 3))
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1A860AB60(uint64_t a1, char a2)
{
  if (a1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!a1)
  {
    v2 = 0;
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A860ACA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A860ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 160);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A860AD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 160);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860AE3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860AE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 104);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1A860AF50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 104);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860B068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&qword_1EB305128);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A860B124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&qword_1EB305128);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860B1D4()
{
  v1 = (type metadata accessor for FileTransferExplicitDownloadSucceeded() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for RemoteIntentMirrorFile(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_1A88C72E8();
    v8 = *(*(v7 - 8) + 8);
    v8(v5, v7);
    v8(v5 + *(v6 + 20), v7);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1A860B37C@<X0>(uint64_t *a1@<X8>)
{
  result = IMLinkedHashMapInMemoryStore.subscript.getter();
  *a1 = result;
  return result;
}

__n128 sub_1A860B3BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A860B3C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1A860B400()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860B438(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A88C8D38();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A85F2008(v3, 0);
  sub_1A8885DFC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A860B5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteIntentItemContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A870CCE0(&qword_1EB307878);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A860B6EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RemoteIntentItemContent(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A870CCE0(&qword_1EB307878);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A860B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 64);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1A870CCE0(&qword_1EB307898);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 156);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1A860B93C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 80) = a2;
  }

  else
  {
    v8 = sub_1A870CCE0(&unk_1EB3052E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A870CCE0(&qword_1EB307898);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 156);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A860BA7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860BACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A860BB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB309060);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A860BBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&unk_1EB309060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A860BC7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB309060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860BD3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A860BD7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A860BDC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A860BE0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860BE48()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A860BE80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860BED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&unk_1EB3052E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1A860BF94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860C044(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A870CCE0(&unk_1EB3052E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1A860C100(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860C1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A860C204()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860C23C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A860C28C()
{
  v1 = sub_1A870CCE0(&qword_1EB307E50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A860C35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307E40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A860C3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB307E40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A860C450()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860C488()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A860C4DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A860C51C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860C694()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860C6D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860C718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A870CCE0(&unk_1EB3052E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1A860C7EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A870CCE0(&unk_1EB3052E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1A860C8B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1A870CCE0(&unk_1EB3052E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1A860C978(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1A870CCE0(&unk_1EB3052E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A860CA98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A860CAD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A860CB2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A860CB6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A860CBA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1A860CCC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A860CCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A88C72E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A860CDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A88C72E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A860CE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A88C72E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1A88C7B88();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1A860CF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A88C72E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1A88C7B88();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1A860D08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1A88C75E8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1A860D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1A88C75E8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1A860D198()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A860D200()
{
  v1 = (type metadata accessor for RemoteIntentMirrorFileRepresentation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1A88C72E8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_1A88C7B88();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A860D340()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1A860D380@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1A860D3EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1A860D458()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A860D490@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v2;
  return result;
}

void sub_1A860D4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a2 + 8) = *a1;
  *(a2 + 16) = v2;
  sub_1A88BB750();
}

uint64_t sub_1A860D56C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_1A860D5A8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1A860D5E0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1A860D628@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A88C79E8();
  *a1 = result;
  return result;
}

unint64_t sub_1A860D70C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A860D5E0(*a1);
  *a2 = result;
  return result;
}

id sub_1A860D73C(void *a1)
{
  v2 = [a1 lastPathComponent];
  v3 = [v2 stringByAppendingString:@"-watchBackground"];

  v4 = [a1 URLByDeletingLastPathComponent];
  v5 = [v4 URLByAppendingPathComponent:v3];

  return v5;
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageP4ReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 4)
      {
        break;
      }

      if (v12 <= 6)
      {
        if (v12 == 5)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v46 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v46 & 0x7F) << v34;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v36;
          }

LABEL_78:
          v42 = 52;
        }

        else
        {
          if (v12 != 6)
          {
            goto LABEL_69;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v45 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v45 & 0x7F) << v16;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

LABEL_82:
          v42 = 48;
        }

        goto LABEL_83;
      }

      if (v12 == 7)
      {
        String = PBReaderReadString();

        v14 = String;
        v15 = 16;
LABEL_68:
        *(a1 + v15) = v14;
        goto LABEL_88;
      }

      if (v12 != 8)
      {
LABEL_69:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        v48 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v48 & 0x7F) << v23;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v10 = v24++ >= 9;
        if (v10)
        {
          v28 = 0;
          goto LABEL_87;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v25;
      }

LABEL_87:
      *(a1 + 8) = v28;
LABEL_88:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        Data = PBReaderReadData();

        v14 = Data;
        v15 = 40;
      }

      else
      {
        if (v12 != 4)
        {
          goto LABEL_69;
        }

        v22 = PBReaderReadString();

        v14 = v22;
        v15 = 24;
      }
    }

    else
    {
      if (v12 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 60) |= 8u;
        while (1)
        {
          v47 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v47 & 0x7F) << v29;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v10 = v30++ >= 9;
          if (v10)
          {
            v21 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v31;
        }

LABEL_74:
        v42 = 56;
LABEL_83:
        *(a1 + v42) = v21;
        goto LABEL_88;
      }

      if (v12 != 2)
      {
        goto LABEL_69;
      }

      v13 = PBReaderReadString();

      v14 = v13;
      v15 = 32;
    }

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

void *sub_1A860EAB4(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = [v1 objectForKeyedSubscript:@"lastMessage"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 objectForKeyedSubscript:@"guid"];
      [v1 setObject:v3 forKeyedSubscript:@"lastMessageGUID"];
    }
  }

  [v1 setObject:0 forKeyedSubscript:@"lastMessage"];

  return v1;
}

uint64_t sub_1A860EEC4()
{
  v0 = objc_alloc_init(IMAvailabilityInvitationManager);
  qword_1ED8C9910 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A860F064(uint64_t a1, char a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ([*(a1 + 32) _isHandleIDEligibleToReceiveAutomaticInvitation:*(a1 + 40)])
    {
      v3 = [*(a1 + 32) _invitationCacheKeyForHandleID:*(a1 + 40) fromHandleID:*(a1 + 48)];
      v4 = [*(*(a1 + 32) + 16) objectForKey:v3];
      v5 = v4;
      if (v4 && ([v4 timeIntervalSinceNow], fabs(v6) < 300.0))
      {
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v28 = v3;
            _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Not attempting to check or share invitation for personal availability, have attempted recently for cache key: %@", buf, 0xCu);
          }
        }

        v21 = *(a1 + 56);
        if (v21)
        {
          (*(v21 + 16))(v21, 0, 0, 0, 0, 0);
        }
      }

      else
      {
        v7 = *(*(a1 + 32) + 16);
        v8 = [MEMORY[0x1E695DF00] date];
        [v7 setObject:v8 forKey:v3];

        v9 = [*(a1 + 32) _skHandleForString:*(a1 + 40)];
        v10 = [*(a1 + 32) _skHandleForString:*(a1 + 48)];
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v9 handleString];
            v13 = [v10 handleString];
            *buf = 138412546;
            v28 = v12;
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Checking if handle is already invited: %@ fromHandle: %@", buf, 0x16u);
          }
        }

        v14 = [*(a1 + 32) publishingService];
        objc_initWeak(buf, *(a1 + 32));
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1A860F528;
        v22[3] = &unk_1E7825E98;
        v25 = *(a1 + 56);
        v15 = v9;
        v23 = v15;
        objc_copyWeak(&v26, buf);
        v16 = v10;
        v24 = v16;
        [v14 isHandleInvited:v15 fromSenderHandle:v16 completion:v22];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }

      return;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Not attempting to share availability, recipient is not eligible (e.g. not a contact)", buf, 2u);
      }
    }

    v18 = *(a1 + 56);
    if (v18)
    {
LABEL_15:
      (*(v18 + 16))(v18, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Not attempting to share availability, Share Across Devices is disabled.", buf, 2u);
      }
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      goto LABEL_15;
    }
  }
}

void sub_1A860F528(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BF9E4();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 1, 0, 0, 0, v5);
    }
  }

  else
  {
    v8 = IMOSLoggingEnabled();
    if (a2)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [*(a1 + 32) handleString];
          *buf = 138412290;
          v20 = v10;
          _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Handle is already invited: %@", buf, 0xCu);
        }
      }

      v11 = *(a1 + 48);
      if (v11)
      {
        (*(v11 + 16))(v11, 1, 1, 0, 0, 0);
      }
    }

    else
    {
      if (v8)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [*(a1 + 32) handleString];
          *buf = 138412290;
          v20 = v13;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Handle is not already invited. Initating invitation flow for handle: %@", buf, 0xCu);
        }
      }

      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1A860F7C8;
      v17[3] = &unk_1E7825E70;
      v18 = *(a1 + 48);
      [WeakRetained _sharePersonalAvailabilityWithSKHandle:v15 fromSKHandle:v16 allowingInvitationOfRemovedUsers:0 completion:v17];
    }
  }
}

void sub_1A860F794(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A860F6D8);
  }

  _Unwind_Resume(a1);
}

void sub_1A860F7C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134218498;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Completed _sharePersonalAvailabilityWithSKHandle. canShare: %ld, didShare: %ld, error: %@", &v10, 0x20u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, 1, 1, a2, a3, v7);
  }
}

void sub_1A860F9E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Not attempting to repair focus status from this device, Share Across Devices is disabled on this device.", buf, 2u);
      }
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0, 0);
    }
  }

  v5 = [*(a1 + 32) _skHandleForString:*(a1 + 40)];
  v6 = [*(a1 + 32) _skHandleForString:*(a1 + 48)];
  objc_initWeak(buf, *(a1 + 32));
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A860FBCC;
  v10[3] = &unk_1E7825F10;
  objc_copyWeak(&v15, buf);
  v14 = *(a1 + 56);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  v13 = *(a1 + 40);
  [v7 _invitablityForHandle:v8 fromHandle:v9 completion:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void sub_1A860FBCC(id *a1, char a2, int a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (v7)
  {
    v9 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFA54();
    }

    v10 = a1[7];
    if (v10)
    {
      v11 = *(v10 + 2);
LABEL_19:
      v11();
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!a3)
  {
    if (a2)
    {
      v14 = a1[4];
      v15 = a1[5];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1A860FE2C;
      v22[3] = &unk_1E7825EE8;
      v16 = a1[7];
      v23 = 0;
      v24 = WeakRetained;
      v17 = a1[6];
      v18 = a1[4];
      *&v19 = a1[5];
      *(&v19 + 1) = v16;
      *&v20 = v17;
      *(&v20 + 1) = v18;
      v25 = v20;
      v26 = v19;
      [WeakRetained _isFocusStatusSharedWithHandle:v14 fromHandle:v15 completion:v22];

      goto LABEL_20;
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_17;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v13 = "Handle is not invitable. Not repairing invalid validation token.";
    goto LABEL_15;
  }

  if (!IMOSLoggingEnabled())
  {
    goto LABEL_17;
  }

  v12 = OSLogHandleForIMFoundationCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v13 = "Handle was manually removed by this user from receiving focus status. Not repairing invalid validation token.";
LABEL_15:
    _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
  }

LABEL_16:

LABEL_17:
  v21 = a1[7];
  if (v21)
  {
    v11 = *(v21 + 2);
    goto LABEL_19;
  }

LABEL_20:
}

void sub_1A860FE2C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFAC4();
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_6:
      v8();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "Handle is already invited, we're ok to repair the failed validation token.";
LABEL_15:
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v11 = [*(a1 + 40) _isHandleIDEligibleToReceiveAutomaticInvitation:*(a1 + 48)];
  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "Handle is eligible to receive an automatic invitation, we're ok to repair the failed validation token.";
        goto LABEL_15;
      }

LABEL_16:
    }

LABEL_17:
    v13 = *(a1 + 40);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A86100F8;
    v19[3] = &unk_1E7825E70;
    v20 = *(a1 + 72);
    [v13 _sharePersonalAvailabilityWithSKHandle:v14 fromSKHandle:v15 allowingInvitationOfRemovedUsers:0 completion:v19];

    goto LABEL_18;
  }

  if (v12)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Handle is neither invited nor eligible to receive an automatic invitation, will not repair the failed validation token.", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Not repairing invalid validation token.", buf, 2u);
    }
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    v8 = *(v18 + 16);
    goto LABEL_6;
  }

LABEL_18:
}

void sub_1A86100F8(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFB34();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_17:
      v9();
    }
  }

  else if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Completed sharing focus status following failed validation of token.", v14, 2u);
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v9 = *(v11 + 16);
      goto LABEL_17;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFBA4();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v9 = *(v13 + 16);
      goto LABEL_17;
    }
  }
}

void sub_1A86104A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _skHandleForString:*(a1 + 40)];
    v4 = [*(a1 + 32) _skHandleForString:*(a1 + 48)];
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A861060C;
    v8[3] = &unk_1E7825E70;
    v9 = *(a1 + 56);
    [v5 _sharePersonalAvailabilityWithSKHandle:v3 fromSKHandle:v4 allowingInvitationOfRemovedUsers:1 completion:v8];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Not manually sharing focus status while Share Across Devices is disabled.", buf, 2u);
      }
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0, 0);
    }
  }
}

void sub_1A861060C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFBE0();
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_17:
      v9();
    }
  }

  else if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Completed manually sharing focus status.", v14, 2u);
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v9 = *(v11 + 16);
      goto LABEL_17;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFC50();
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v9 = *(v13 + 16);
      goto LABEL_17;
    }
  }
}

void sub_1A8610B0C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _skHandleForString:*(a1 + 40)];
    v4 = [*(a1 + 32) publishingService];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A8610C58;
    v7[3] = &unk_1E7825F38;
    v8 = *(a1 + 48);
    [v4 removeInvitedHandle:v3 completion:v7];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Not manually removing sharing focus status while Share Across Devices is disabled.", buf, 2u);
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

void sub_1A8610C58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFD04();
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_12:
      v6();
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Completed manually unsharing focus status.", v9, 2u);
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v6 = *(v8 + 16);
      goto LABEL_12;
    }
  }
}

void sub_1A8610EC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1A8610EE0(uint64_t a1, char a2, int a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a2)
  {
    if (!a3 || (*(a1 + 80) & 1) != 0)
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) handleString];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A86111C4;
      v15[3] = &unk_1E7825FB0;
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      objc_copyWeak(&v20, (a1 + 72));
      [v13 _invitationPayloadForHandleID:v14 completion:v15];

      objc_destroyWeak(&v20);
      goto LABEL_17;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) handleString];
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Handle was previously manually uninvited and is not invitable: %@", buf, 0xCu);
      }
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 32) handleString];
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Handle is not invitable: %@", buf, 0xCu);
      }
    }

    v10 = *(a1 + 64);
    if (v10)
    {
LABEL_9:
      (*(v10 + 16))(v10, 0, 0, v7);
    }
  }

LABEL_17:
}

void sub_1A8611168(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8610FA4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A86111C4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) handleString];
      v6 = [*(a1 + 40) handleString];
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Handle is invitable. Attempting invitation to handle %@ from handle %@ with payload %@", buf, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A86113C0;
  v10[3] = &unk_1E7825F88;
  v11 = v9;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  objc_copyWeak(&v14, (a1 + 64));
  [v7 inviteHandle:v11 fromSenderHandle:v8 withInvitationPayload:v3 completion:v10];
  objc_destroyWeak(&v14);
}

void sub_1A8611384(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8611298);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A86113C0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFD74(a1, v3, v4);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, 1, 0, v3);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 32) handleString];
        v8 = [*(a1 + 40) handleString];
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Handle was succesffully invited: %@ from handle %@", &v11, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _republishCurrentAvailabilityStatus];

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, 1, 1, 0);
    }
  }
}

void sub_1A8611738(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88BFE4C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v5 isInvitable];
    v9 = [v5 wasRemoved];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 134218240;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Determined invitability. isInvitable: %ld, wasRemoved %ld", &v11, 0x16u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1A8611B5C(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMOSLoggingEnabled();
  if (!v5)
  {
    if (a2)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(a1 + 32) handleString];
        v12 = [*(a1 + 40) handleString];
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Determined focus status is shared with handle: %@ fromHandle: %@", &v15, 0x16u);
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) handleString];
        v14 = [*(a1 + 40) handleString];
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Determined focus status is NOT shared with handle: %@ fromHandle: %@", &v15, 0x16u);
      }
    }

    goto LABEL_16;
  }

  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) handleString];
      v9 = [*(a1 + 40) handleString];
      v15 = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Error checking if handle is already invited: %@ fromHandle: %@. Error: %@", &v15, 0x20u);
    }
  }

LABEL_16:
  (*(*(a1 + 48) + 16))();
}

void sub_1A8611DCC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8611D7CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8611F7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _dndHandleForHandleID:*(a1 + 32)];
  v4 = [WeakRetained _newDNDModeConfigurationService];
  v19 = 0;
  v5 = [v4 allowedModesForContactHandle:v3 error:&v19];
  v6 = v19;
  if (!v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v18 = 0;
      v9 = [v4 silencedModesForContactHandle:v3 error:&v18];
      v10 = v18;
      if (v10)
      {
        v7 = v10;
        v11 = IMLogHandleForCategory("IMDAvailabilityAutoReplier");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1A88BFF6C();
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = [*(a1 + 56) instancesRespondToSelector:sel_initWithAvailableDuringActivityIdentifiers_unavailableDuringActivityIdentifiers_];
    v13 = objc_alloc(*(a1 + 56));
    if (v12)
    {
      v14 = [v13 initWithAvailableDuringActivityIdentifiers:v5 unavailableDuringActivityIdentifiers:v9];
    }

    else
    {
      v14 = [v13 initWithAvailableDuringActivityIdentifiers:v5];
    }

    v15 = v14;
    v16 = [MEMORY[0x1E695DF00] __im_dateWithCurrentServerTime];
    v17 = [v15 statusKitInvitationPayloadWithDateCreated:v16];
    (*(*(a1 + 40) + 16))();

    v7 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v7 = v6;
  v8 = IMLogHandleForCategory("IMDAvailabilityAutoReplier");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1A88BFEF8();
  }

  (*(*(a1 + 40) + 16))();
LABEL_16:
}

void sub_1A8612304(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Republishing current availability status, so the newly invited handle is able to decrypt the published value", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _newDNDModeConfigurationService];

  v8 = 0;
  v5 = [v4 publishCurrentStatusKitAvailabilityReturningError:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMAvailabilityInvitationManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0058();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Republished status following an invitation. StatusIdentifier: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_1A86129E8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_1A8612C20()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1EB3095B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8613344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained timerStart];
    WeakRetained = v4;
    if (v3 == *(a1 + 40))
    {
      [v4 _handleTimeout:0];
      WeakRetained = v4;
    }
  }
}

IMINInteractionUtilities *sub_1A8614724()
{
  result = objc_alloc_init(IMINInteractionUtilities);
  qword_1ED8CA340 = result;
  return result;
}

void sub_1A8614938(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = a2;
        v7 = "Failed deleting INInteractions with chat guids %@ with error %@";
        v8 = v5;
        v9 = 22;
LABEL_8:
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v7, &v12, v9);
      }
    }
  }

  else if (v4)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      v7 = "Successfully deleted INInteractions with chat guids %@";
      v8 = v10;
      v9 = 12;
      goto LABEL_8;
    }
  }
}

void sub_1A8614BE4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = a2;
        v7 = "Failed deleting INInteractions with message guids %@ with error %@";
        v8 = v5;
        v9 = 22;
LABEL_8:
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, v7, &v12, v9);
      }
    }
  }

  else if (v4)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = 138412290;
      v13 = v11;
      v7 = "Successfully deleted INInteractions with message guids %@";
      v8 = v10;
      v9 = 12;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1A8614DD4()
{
  v0 = objc_alloc_init(IMPowerLog);
  qword_1ED8CA348 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void *sub_1A8614E98()
{
  result = MEMORY[0x1AC570AB0]("PLLogRegisteredEvent", @"PowerLog");
  off_1ED8CA470 = result;
  return result;
}

BOOL IMFileSizeForItemAtPath(void *a1, off_t *a2, int a3, void *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if (!a2)
  {
    v17 = IMLogHandleForCategory("IMFileSize");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0288(v17);
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v18 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @"nil fileSize passed to IMFileSizeForItemAtPath";
    v19 = MEMORY[0x1E695DF20];
    v20 = v37;
    v21 = &v36;
LABEL_18:
    v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    *a4 = [v18 errorWithDomain:@"IMSharedUtilitiesFileSizeErrorDomain" code:-50 userInfo:v23];
    goto LABEL_19;
  }

  *a2 = 0;
  a2[1] = 0;
  if (!v7)
  {
    v22 = IMLogHandleForCategory("IMFileSize");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0244(v22);
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v18 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"nil path passed to IMFileSizeForItemAtPath";
    v19 = MEMORY[0x1E695DF20];
    v20 = &v35;
    v21 = &v34;
    goto LABEL_18;
  }

  v9 = [v7 fileSystemRepresentation];
  if (!v9)
  {
    v25 = IMLogHandleForCategory("IMFileSize");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C01CC(v8, v25);
    }

    if (!a4)
    {
      goto LABEL_20;
    }

    v26 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get fileSystemRepresentation for path: %@", v8];
    v33 = v23;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *a4 = [v26 errorWithDomain:@"IMSharedUtilitiesFileSizeErrorDomain" code:-50 userInfo:v27];

LABEL_19:
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  memset(&v29, 0, sizeof(v29));
  v10 = stat(v9, &v29);
  v11 = v10 == 0;
  if (v10)
  {
    v12 = *__error();
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sys/stat returned error %d (%s) while getting info for file at path: %@", v12, strerror(v12), v8];
      v31 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a4 = [v13 errorWithDomain:@"IMSharedUtilitiesFileSizeErrorDomain" code:v12 userInfo:v15];
    }

    v16 = IMLogHandleForCategory("IMFileSize");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0118(v12, v8, v16);
    }
  }

  else if ((v29.st_mode & 0xF000) == 0xA000 && a3)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v28 = v29.st_blocks << 9;
    *a2 = v29.st_size;
    a2[1] = v28;
  }

LABEL_21:

  return v11;
}

uint64_t sub_1A8615C88(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 controlCharacterSet];
  v7 = [a1 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v9 = [v5 stringByTrimmingCharactersInSet:v8];

  if (IMStringIsEmail())
  {
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    if (!MEMORY[0x1AC570A50](v9))
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [v7 isEqualToPhoneNumber:v9];
  }

  v11 = v10;
LABEL_7:

  return v11;
}

IMBlockListPerson *sub_1A8615D60(uint64_t a1)
{
  v2 = +[IMContactStore sharedInstance];
  v3 = [v2 fetchCNContactForHandleWithID:a1];

  v4 = [[IMBlockListPerson alloc] initWithCNContact:v3];

  return v4;
}

id sub_1A8615DD8(void *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x1AC570A50](a1);
    v6 = [v4 cnPerson];
    v7 = v6;
    if (v5)
    {
      [v6 phoneNumbers];
    }

    else
    {
      [v6 emailAddresses];
    }
    v9 = ;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v29 = v4;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v15 label];

          if (v16)
          {
            v17 = [v15 value];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v19 = [v15 value];
            v20 = v19;
            if (isKindOfClass)
            {
              v21 = [v19 stringValue];
              v22 = [a1 isEqualToBlockListAddress:v21];

              if (v22)
              {
                goto LABEL_20;
              }
            }

            else
            {
              objc_opt_class();
              v23 = objc_opt_isKindOfClass();

              if (v23)
              {
                v24 = [v15 value];
                v25 = [a1 isEqualToBlockListAddress:v24];

                if (v25)
                {
LABEL_20:
                  v26 = MEMORY[0x1E695CEE0];
                  v27 = [v15 label];
                  v8 = [v26 localizedStringForLabel:v27];

                  goto LABEL_21;
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v8 = 0;
LABEL_21:
      v4 = v29;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1A861605C(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (MEMORY[0x1AC570A50](v9) && ([v4 isEqualToPhoneNumber:{v9, v11}] & 1) != 0)
        {
          v6 = v9;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

void sub_1A8616754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImBlockItemList:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v4 postNotificationName:@"IMBlockListControllerListDidChangeNotification" object:v3];
}

void sub_1A86169EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImBlockItemList:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v4 postNotificationName:@"IMBlockListControllerListDidChangeNotification" object:v3];
}

void sub_1A8616E30()
{
  v0 = [MEMORY[0x1E696AD48] controlCharacterSet];
  v1 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = qword_1EB30ACF0;
  qword_1EB30ACF0 = v0;
}

BOOL -[IMBlockListController _blockCMFItemRef:](IMBlockListController *self, SEL a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (CMFBlockListIsItemBlocked())
  {
    return 0;
  }

  CMFBlockListAddItemForAllServices();
  imBlockItemList = self->_imBlockItemList;
  self->_imBlockItemList = 0;

  return 1;
}

void IMRegisterSADAwareXPCActivity(const char *a1, void *a2, void *a3)
{
  v5 = a3;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1A8617420;
  handler[3] = &unk_1E7826178;
  v8 = v5;
  v6 = v5;
  xpc_activity_register(a1, a2, handler);
}

void sub_1A8617420(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2 && !+[IMDeviceUtilities isMessagesInstalled])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Not starting activity - Messages is uninstalled", buf, 2u);
      }
    }

    if (!xpc_activity_set_state(v3, 5) && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Failed to start done state.", v6, 2u);
      }
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1A861756C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A8617620;
  v12[3] = &unk_1E78261A0;
  v13 = v8;
  v9 = v8;
  v10 = [a1 registerForTaskWithIdentifier:a3 usingQueue:a4 launchHandler:v12];

  return v10;
}

void sub_1A8617620(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[IMDeviceUtilities isMessagesInstalled])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Not starting task - Messages is uninstalled", v5, 2u);
      }
    }

    [v3 setTaskCompleted];
  }
}

uint64_t sub_1A8617DD0(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a1 stringByDeletingPathExtension];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(a3);
    }

    v9 = [v4 stringByAppendingPathExtension:*(*(&v11 + 1) + 8 * v8)];
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

BOOL sub_1A8617EEC(void *a1)
{
  if (([objc_msgSend(a1 "pathExtension")] & 1) != 0 || objc_msgSend(objc_msgSend(a1, "pathExtension"), "isEqualToString:", @"mov"))
  {
    v2 = &unk_1F1BFAB80;
  }

  else
  {
    v2 = &unk_1F1BFAB98;
  }

  return [a1 _im_filePathWithPossibleAlternateExtensions:v2] != 0;
}

uint64_t sub_1A8617F64(void *a1)
{
  if (([objc_msgSend(a1 "pathExtension")] & 1) == 0 && !objc_msgSend(objc_msgSend(a1, "pathExtension"), "isEqualToString:", @"mov"))
  {
    return 0;
  }

  return [a1 _im_filePathWithPossibleAlternateExtensions:&unk_1F1BFABB0];
}

uint64_t sub_1A8617FDC(void *a1)
{
  if ([objc_msgSend(a1 "pathExtension")] & 1) != 0 || (objc_msgSend(objc_msgSend(a1, "pathExtension"), "isEqualToString:", @"mov"))
  {
    return 0;
  }

  return [a1 _im_filePathWithPossibleAlternateExtensions:&unk_1F1BFABC8];
}

BOOL sub_1A8618054(void *a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 67593;
  if (!a3)
  {
    v3 = 0;
  }

  v19 = v3;
  v4 = [a1 fileSystemRepresentation];
  v5 = open(v4, 0);
  if (v5 < 0)
  {
    v6 = IMFFSCTLLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *__error();
      *buf = 136315394;
      v21 = v4;
      v22 = 1024;
      *v23 = v7;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_DEFAULT, " Can't open %s : %i\n", buf, 0x12u);
    }
  }

  v8 = ffsctl(v5, 0xC0084A44uLL, &v19, 0);
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *__error();
        *buf = 136315906;
        v21 = v4;
        v22 = 1024;
        *v23 = v8;
        *&v23[4] = 1024;
        *&v23[6] = v10;
        LOWORD(v24[0]) = 2048;
        *(v24 + 2) = v19;
        v11 = "Failed to mark %s as purgeable %d (%i) (flags 0x%llx)\n";
        v12 = v9;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 34;
LABEL_12:
        _os_log_impl(&dword_1A85E5000, v12, v13, v11, buf, v14);
      }
    }
  }

  else
  {
    v15 = IMFFSCTLLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v19;
      v17 = *__error();
      *buf = 136315650;
      v21 = v4;
      v22 = 2048;
      *v23 = v16;
      *&v23[8] = 1024;
      v24[0] = v17;
      v11 = "Marked %s purgeable with flags 0x%llx (errno: %i)\n";
      v12 = v15;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 28;
      goto LABEL_12;
    }
  }

  close(v5);
  return v8 == 0;
}

uint64_t sub_1A861827C(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v2 = qword_1ED8C9758;
  v15 = qword_1ED8C9758;
  if (!qword_1ED8C9758)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1A86185E4;
    v17 = &unk_1E78261C8;
    v18 = &v12;
    sub_1A86185E4(buf);
    v2 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v2)
  {
    sub_1A88C02E0();
    __break(1u);
  }

  if (*v2)
  {
    v3 = *v2;
  }

  else
  {
    v3 = @"pvt";
  }

  v4 = [a1 stringByDeletingLastPathComponent];
  v5 = [v4 stringByAppendingPathComponent:{objc_msgSend(v4, "im_lastPathComponent")}];
  v6 = [v5 stringByAppendingPathExtension:v3];
  v7 = IMFileTransferLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "First try: Trying to check existence of live photo bundle at path %@, transfer %@", buf, 0x16u);
  }

  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    goto LABEL_23;
  }

  v6 = [v5 stringByAppendingPathExtension:{-[__CFString uppercaseString](v3, "uppercaseString")}];
  v8 = IMFileTransferLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "Second try: Trying to check existence of live photo bundle at path with uppercase extension.", buf, 2u);
  }

  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
LABEL_23:
    if (v6)
    {
      v9 = IMFileTransferLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_DEFAULT, "Found live photo bundle", buf, 2u);
      }
    }
  }

  else
  {
    v10 = IMFileTransferLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find live photo bundle for transfer", buf, 2u);
    }

    return 0;
  }

  return v6;
}

void *sub_1A86185E4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED8C9788)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1A8618724;
    v5[4] = &unk_1E7826200;
    v5[5] = v5;
    v6 = xmmword_1E78261E8;
    v7 = 0;
    qword_1ED8C9788 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1ED8C9788;
    if (qword_1ED8C9788)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1ED8C9788;
LABEL_5:
  result = dlsym(v2, "PFLivePhotoBundleExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED8C9758 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A8618724()
{
  result = _sl_dlopen();
  qword_1ED8C9788 = result;
  return result;
}

void sub_1A861938C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8618F84);
  }

  _Unwind_Resume(a1);
}

void sub_1A86193C0(id *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([a1[4] isAcceptedCNID:v10])
        {
          [a1[5] removeObject:v10];
          [a1[6] addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1A861A6CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A861A5F4);
  }

  _Unwind_Resume(a1);
}

void sub_1A861AA08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) connection];
  [v1 authorizeForPID:{objc_msgSend(v2, "processIdentifier")}];
}

void sub_1A861B1C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A861B13CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A861C398(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[IMNicknameEncryptionPlainRecordField alloc] initWithFieldName:v6 plainData:v5];

  [*(a1 + 32) addObject:v7];
}

uint64_t sub_1A861D168(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 fieldName];
  v6 = [v4 fieldName];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t IMCloudKitSetEligibleToToggleMiCSwitch(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = @"NO";
      if (a1)
      {
        v3 = @"YES";
      }

      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Setting isEligibleToToggleMiCSwitch to toggle MiC switch to %@", &v5, 0xCu);
    }
  }

  IMSetDomainBoolForKey();
  return IMSetDomainBoolForKey();
}

uint64_t IMCloudKitIsEligibleToToggleMiCSwitch()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = IMGetCachedDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = @"NO";
      if (v0)
      {
        v2 = @"YES";
      }

      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_INFO, "isEligible to toggle MiC switch returning = %@", &v4, 0xCu);
    }
  }

  return v0;
}

void sub_1A8620350()
{
  v2[23] = *MEMORY[0x1E69E9840];
  v2[0] = @"CloudKitSyncingEnabled";
  v2[1] = @"CloudKitIsSyncing";
  v2[2] = @"CloudKitIsEligibleForTruthZone";
  v2[3] = @"CloudKitIsInExitState";
  v2[4] = @"CloudKitExitDate";
  v2[5] = @"CloudKitIsRemovedFromBackup";
  v2[6] = @"CloudKitSyncDate";
  v2[7] = @"IMCloudKitStartingPeriodicSync";
  v2[8] = @"IMCloudKitStartingInitialSync";
  v2[9] = @"IMCloudKitStartingEnabledSettingChange";
  v2[10] = @"IMCloudKitStartingDisableDevices";
  v2[11] = @"IMCloudKitSyncControllerSyncStateKey";
  v2[12] = @"IMCloudKitSyncControllerSyncTypeKey";
  v2[13] = @"IMCloudKitSyncControllerSyncRecordTypeKey";
  v2[14] = @"IMCloudKitSyncErrors";
  v2[15] = @"IMCloudKitSyncPaused";
  v2[16] = @"IMCloudKitAccountStatusKey";
  v2[17] = @"IMCloudKitSyncTypeKey";
  v2[18] = @"IMCloudKitSyncStatusKey";
  v2[19] = @"IMCloudKitSyncJobStateKey";
  v2[20] = @"IMCloudKitAnalyticSyncDatesDictionary";
  v2[21] = @"CloudKitHasAvailableRecordsToDownload";
  v2[22] = @"CloudKitLastDownloadProgress";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:23];
  v1 = qword_1ED8C96E0;
  qword_1ED8C96E0 = v0;
}

void sub_1A8620504()
{
  v0 = qword_1ED8C96D8;
  qword_1ED8C96D8 = &unk_1F1BA5868;
}

__CFString *IMStringFromCloudKitSyncStep(unint64_t a1)
{
  if (a1 > 6)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7826320[a1];
  }
}

__CFString *IMStringFromCloudKitChangingSettingState(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7826358[a1];
  }
}

__CFString *IMStringFromIMCloudKitSyncErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return @"IMCloudKitSyncErrorCodeNone";
  }

  else
  {
    return off_1E7826370[a1 - 1];
  }
}

__CFString *IMStringFromIMCloudKitSyncControllerSyncRecordType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"IMCloudKitSyncControllerSyncRecordTypeNone";
  }

  else
  {
    return off_1E78263C0[a1 - 1];
  }
}

__CFString *IMStringFromIMCloudKitSyncControllerSyncState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"IMCloudKitSyncControllerSyncStateIdle";
  }

  else
  {
    return off_1E78263E0[a1 - 1];
  }
}

__CFString *IMStringFromIMCloudKitSyncControllerSyncType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F1BB91F0;
  }

  else
  {
    return off_1E7826400[a1];
  }
}

__CFString *IMStringFromIMCloudKitAccountStatus(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"IMCloudKitAccountStatusUnknown";
  }

  else
  {
    return off_1E7826418[a1 - 1];
  }
}

__CFString *IMStringFromIMCloudKitSyncType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"IMCloudKitSyncTypeInitial";
  }

  else
  {
    return off_1E7826438[a1 - 1];
  }
}

__CFString *IMStringFromIMCloudKitSyncStatus(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"IMCloudKitSyncStatusStarted";
  }

  else
  {
    return @"IMCloudKitSyncStatusStopped";
  }
}

__CFString *IMStringFromIMCloudKitSyncJobState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"IMCloudKitSyncJobStateIdle";
  }

  else
  {
    return off_1E7826478[a1 - 1];
  }
}

id IMCreateSerializedItemsFromArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 dictionaryRepresentation];
          if ([v10 count])
          {
            [v2 addObject:v10];
          }

          objc_autoreleasePoolPop(v9);
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id IMCreateItemsFromSerializedArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          if ([v8 count])
          {
            v9 = objc_autoreleasePoolPush();
            v10 = [objc_alloc(+[IMItem classForMessageItemDictionary:](IMItem classForMessageItemDictionary:{v8)), "initWithDictionary:", v8}];
            if (v10)
            {
              [v2 addObject:v10];
            }

            objc_autoreleasePoolPop(v9);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IMCanonicalFormOfIDWithSensitivity(void *a1, char a2, char a3)
{
  v6 = a1;
  if ((a2 & 2) != 0)
  {
    v6 = [a1 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F1BB91F0];
  }

  if ((a2 & 1) == 0)
  {
    v7 = MEMORY[0x1AC570A50](a1);
    if ((a3 & 2) != 0 && v7)
    {
      v6 = [a1 lowercaseString];
    }

    IsEmail = IMStringIsEmail();
    if ((a3 & 1) != 0 && IsEmail)
    {
      v6 = [a1 lowercaseString];
    }

    if (MEMORY[0x1AC570A50](a1))
    {
      return v6;
    }

    v10 = IMStringIsEmail();
    if (a3 & 4) == 0 || (v10)
    {
      return v6;
    }
  }

  return [a1 lowercaseString];
}

void sub_1A8625AB4(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Received movie preview from BlastDoor for GUID: %@", buf, 0xCu);
    }
  }

  if (!a2 || a3)
  {
    if (a3)
    {
      v42 = [a3 copy];
    }

    else
    {
      v42 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
    }

    *(*(*(a1 + 80) + 8) + 40) = v42;
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = *(*(*(a1 + 80) + 8) + 40);
        v45 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = v45;
        v26 = "Result is nil or there's an error: %@ for GUID: %@";
        v27 = v43;
        v28 = 22;
        goto LABEL_62;
      }
    }
  }

  else
  {
    MEMORY[0x1AC570AA0](@"BlastDoorVideoPreview", @"BlastDoor");
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    v46 = 0;
    if (isKindOfClass)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = [a2 videoFormat];
      v12 = [a2 audioFormat];
      [v10 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(*(a1 + 40), "isFromMe")), @"is_from_me"}];
      [v10 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(*(a1 + 40), "isTrustedSender")), @"is_trusted_sender"}];
      [v10 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", objc_msgSend(a2, "trackCount")), @"track_count"}];
      if ([v11 formatName] && objc_msgSend(objc_msgSend(v11, "formatName"), "length") && objc_msgSend(v11, "codec") && objc_msgSend(objc_msgSend(v11, "codec"), "length"))
      {
        [v10 setValue:objc_msgSend(v11 forKey:{"formatName"), @"video_format"}];
        [v10 setValue:objc_msgSend(v11 forKey:{"codec"), @"video_codec"}];
      }

      if ([v12 formatName] && objc_msgSend(objc_msgSend(v12, "formatName"), "length") && objc_msgSend(v12, "codec") && objc_msgSend(objc_msgSend(v12, "codec"), "length"))
      {
        [v10 setValue:objc_msgSend(v12 forKey:{"formatName"), @"audio_format"}];
        [v10 setValue:objc_msgSend(v12 forKey:{"codec"), @"audio_codec"}];
      }

      [+[IMMetricsCollector sharedInstance](IMMetricsCollector trackEvent:"trackEvent:withDictionary:" withDictionary:@"com.apple.Messages.IMMetricsCollectorEventMoviePreviewGenerationSuccess", v10];
    }

    if ([objc_msgSend(v9 "image")] && (v13 = CFRetain(objc_msgSend(objc_msgSend(v9, "image"), "cgImage"))) != 0)
    {
      [IMImageUtilities imageRefPxSize:v13];
      v14 = *(*(a1 + 72) + 8);
      *(v14 + 32) = v15;
      *(v14 + 40) = v16;
      v17 = *(a1 + 48);
      v18 = *(*(a1 + 72) + 8);
      v49 = *(a1 + 120);
      v19 = *(a1 + 104);
      *buf = *(a1 + 88);
      *&buf[16] = v19;
      v20 = [v17 newCroppedAndRescaledImageFromImage:v13 constraints:buf targetPxSize:{*(v18 + 32), *(v18 + 40)}];
      if ([v9 isAutoloop])
      {
        v21 = v20;
      }

      else
      {
        v21 = [*(a1 + 48) newImageWithPlayButtonOverlay:v13 scale:*(a1 + 32) transferGUID:*(*(a1 + 80) + 8) + 40 error:*(a1 + 112)];
        if (v20)
        {
          CFRelease(v20);
        }
      }

      CFRelease(v13);
      if (v21)
      {
        if ([IMImageUtilities persistPreviewToDiskCache:v21 previewURL:*(a1 + 56) error:&v46])
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          v29 = [objc_msgSend(*(a1 + 56) "URLByDeletingPathExtension")];
          v30 = [MEMORY[0x1E695DF90] dictionary];
          [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v9, "videoIsMonoskiAsset")), @"IMIsMonoskiAssetKey"}];
          if (![v30 count])
          {
LABEL_55:
            CGImageRelease(v21);
            return;
          }

          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "Writing preview metadata", buf, 2u);
            }
          }

          *v47 = 0;
          v32 = [MEMORY[0x1E696AE40] dataWithPropertyList:v30 format:200 options:0 error:v47];
          if (v32)
          {
            if ([v32 writeToURL:v29 atomically:1])
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_55;
              }

              v33 = OSLogHandleForIMFoundationCategory();
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                goto LABEL_55;
              }

              *buf = 138412290;
              *&buf[4] = v29;
              v34 = "Wrote down preview metadata plist to %@";
            }

            else
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_55;
              }

              v33 = OSLogHandleForIMFoundationCategory();
              if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                goto LABEL_55;
              }

              *buf = 138412290;
              *&buf[4] = v29;
              v34 = "Couldn't write down preview metadata plist to %@";
            }
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_55;
            }

            v33 = OSLogHandleForIMFoundationCategory();
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              goto LABEL_55;
            }

            *buf = 138412290;
            *&buf[4] = *v47;
            v34 = "Failed making preview metadata plist %@";
          }

          v40 = v33;
          v41 = 12;
        }

        else
        {
          *(*(*(a1 + 80) + 8) + 40) = [v46 copy];
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_55;
          }

          v37 = OSLogHandleForIMFoundationCategory();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            goto LABEL_55;
          }

          v38 = *(a1 + 32);
          v39 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412546;
          *&buf[4] = v38;
          *&buf[12] = 2112;
          *&buf[14] = v39;
          v34 = "IMMoviePreviewGenerator: Error persisting movie preview for GUID: %@ to disk: %@";
          v40 = v37;
          v41 = 22;
        }

        _os_log_impl(&dword_1A85E5000, v40, OS_LOG_TYPE_INFO, v34, buf, v41);
        goto LABEL_55;
      }

      *(*(*(a1 + 80) + 8) + 40) = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = *(a1 + 32);
          *buf = 138412290;
          *&buf[4] = v36;
          v26 = "IMMoviePreviewGenerator: final image ref is nil for GUID: %@";
          v27 = v35;
          v28 = 12;
          goto LABEL_62;
        }
      }
    }

    else
    {
      *(*(*(a1 + 80) + 8) + 40) = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
      [+[IMMetricsCollector sharedInstance](IMMetricsCollector trackEvent:"trackEvent:", @"com.apple.Messages.IMMetricsCollectorEventMoviePreviewGenerationFailure"];
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 56);
          v24 = *(a1 + 32);
          v25 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412802;
          *&buf[4] = v23;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 2112;
          *&buf[24] = v25;
          v26 = "IMMoviePreviewGenerator: unable to generate image ref for URL: %@ transferGUID: %@ with error: %@";
          v27 = v22;
          v28 = 32;
LABEL_62:
          _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, v26, buf, v28);
        }
      }
    }
  }
}

void sub_1A86263B4(void *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(a1);
    *(*(v2[10] + 8) + 40) = v8;
    if (IMOSLoggingEnabled(v3))
    {
      v4 = OSLogHandleForIMFoundationCategory("Warning");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = v2[7];
        v6 = v2[4];
        v7 = *(*(v2[10] + 8) + 40);
        v9 = 138412802;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "IMMoviePreviewGenerator: failed to write image preview for URL %@ GUID: %@ error %@", &v9, 0x20u);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1A8626360);
  }

  JUMPOUT(0x1A8626494);
}

void sub_1A862649C(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  dispatch_group_leave(v5);
}

id sub_1A8627C74(id a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"IMSerializedErrorDomainKey"];
  v6 = [v4 objectForKeyedSubscript:@"IMSerializedErrorCodeKey"];
  v7 = [v4 objectForKeyedSubscript:@"IMSerializedErrorUserInfoKey"];

  v8 = 0;
  if (v5 && v6)
  {
    a1 = [a1 initWithDomain:v5 code:objc_msgSend(v6 userInfo:{"integerValue"), v7}];
    v8 = a1;
  }

  return v8;
}

id sub_1A8627D40(void *a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 userInfo];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    v4 = *MEMORY[0x1E696AA08];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 serializedError_im];
      [v3 setObject:v7 forKeyedSubscript:v4];
    }

    v14[0] = @"IMSerializedErrorDomainKey";
    v8 = [a1 domain];
    v15[0] = v8;
    v14[1] = @"IMSerializedErrorCodeKey";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
    v14[2] = @"IMSerializedErrorUserInfoKey";
    v15[1] = v9;
    v15[2] = v3;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v12[0] = @"IMSerializedErrorDomainKey";
    v6 = [a1 domain];
    v12[1] = @"IMSerializedErrorCodeKey";
    v13[0] = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
    v13[1] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  return v10;
}

id sub_1A8627F20(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 code];
  v4 = [a1 domain];
  v5 = [v2 stringWithFormat:@"%ld: %@", v3, v4];

  return v5;
}

id sub_1A8627FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = [v11 initWithSerializedError_im:{v10, v14}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

id sub_1A8628100(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) serializedError_im];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

id sub_1A8628DF4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB30AD00;
  v7 = qword_1EB30AD00;
  if (!qword_1EB30AD00)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A8629090;
    v3[3] = &unk_1E78261C8;
    v3[4] = &v4;
    sub_1A8629090(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8628EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A8629090(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB30AD08)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A86291D4;
    v4[4] = &unk_1E7826200;
    v4[5] = v4;
    v5 = xmmword_1E7826690;
    v6 = 0;
    qword_1EB30AD08 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1EB30AD08)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IMDPersistentTaskUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A88C0890();
  }

  qword_1EB30AD00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A86291D4()
{
  result = _sl_dlopen();
  qword_1EB30AD08 = result;
  return result;
}

__CFString *NSStringFromIMPersistentTaskLane(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Slow";
  }

  else
  {
    return off_1E78266A8[a1 - 1];
  }
}

__CFString *NSStringFromIMPersistentTaskRunResult(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Pending";
  }

  else
  {
    return off_1E78266C0[a1 - 1];
  }
}

__CFString *NSStringFromIMPersistentTaskExecutorStatus(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E78266F0[a1 - 1];
  }
}

void sub_1A862972C(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [a1 targets];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {

    goto LABEL_16;
  }

  v6 = v5;
  v18 = 0;
  v7 = *v20;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      [v3 selector];
      if (objc_opt_respondsToSelector())
      {
        v10 = [a1 filterBlock];
        if (!v10 || (v11 = v10, [a1 filterBlock], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12[2](v12, v9, objc_msgSend(v3, "selector")), v12, v11, v13))
        {
          [v3 invokeWithTarget:v9];
          v18 = 1;
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);

  if ((v18 & 1) == 0)
  {
LABEL_16:
    v14 = MEMORY[0x1E696AEC0];
    v15 = NSStringFromSelector([v3 selector]);
    v16 = [v14 stringWithFormat:@"No responder for %@", v15];

    v17 = [MEMORY[0x1E695DF30] exceptionWithName:@"IMDistributingProxyException" reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

LABEL_14:
}

id sub_1A86299B4()
{
  if (qword_1EB309328 != -1)
  {
    sub_1A88C08B8();
  }

  v1 = qword_1EB309330;

  return v1;
}

uint64_t sub_1A86299F8()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Messages"];
  qword_1EB309330 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t IMSharedUtilitiesProtoCloudKitEncryptedMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v74 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v74 & 0x7F) << v5;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          *(a1 + 140) |= 0x100u;
          while (1)
          {
            v77 = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v77 & 0x7F) << v12;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_130:
              v71 = 136;
              goto LABEL_135;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_130;
        case 2u:
          String = PBReaderReadString();

          v30 = String;
          v31 = 104;
          goto LABEL_90;
        case 3u:
          v43 = PBReaderReadString();

          v30 = v43;
          v31 = 88;
          goto LABEL_90;
        case 4u:
          Data = PBReaderReadData();

          v30 = Data;
          v31 = 96;
          goto LABEL_90;
        case 5u:
          v32 = PBReaderReadString();

          v30 = v32;
          v31 = 72;
          goto LABEL_90;
        case 6u:
          v53 = PBReaderReadData();

          v30 = v53;
          v31 = 128;
          goto LABEL_90;
        case 7u:
          v59 = PBReaderReadData();

          v30 = v59;
          v31 = 112;
          goto LABEL_90;
        case 8u:
          v46 = PBReaderReadString();

          v30 = v46;
          v31 = 80;
          goto LABEL_90;
        case 9u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          *(a1 + 140) |= 0x20u;
          while (1)
          {
            v82 = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v82 & 0x7F) << v66;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_147;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v68;
          }

LABEL_147:
          v72 = 48;
          goto LABEL_148;
        case 0xAu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 140) |= 0x10u;
          while (1)
          {
            v81 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v81 & 0x7F) << v38;
            if ((v81 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v10 = v39++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_126;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v40;
          }

LABEL_126:
          v72 = 40;
          goto LABEL_148;
        case 0xBu:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 140) |= 8u;
          while (1)
          {
            v80 = 0;
            v64 = [a2 position] + 1;
            if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v63 |= (v80 & 0x7F) << v61;
            if ((v80 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v10 = v62++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_143;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v63;
          }

LABEL_143:
          v72 = 32;
          goto LABEL_148;
        case 0xCu:
          v29 = PBReaderReadData();

          v30 = v29;
          v31 = 120;
          goto LABEL_90;
        case 0xDu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 140) |= 4u;
          while (1)
          {
            v79 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v79 & 0x7F) << v33;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v10 = v34++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_122;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v35;
          }

LABEL_122:
          v72 = 24;
          goto LABEL_148;
        case 0xEu:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 140) |= 2u;
          while (1)
          {
            v78 = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v78 & 0x7F) << v54;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v10 = v55++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_139;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v56;
          }

LABEL_139:
          v72 = 16;
          goto LABEL_148;
        case 0xFu:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 140) |= 1u;
          while (1)
          {
            v83 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v83 & 0x7F) << v23;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v10 = v24++ >= 9;
            if (v10)
            {
              v28 = 0;
              goto LABEL_118;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v25;
          }

LABEL_118:
          v72 = 8;
LABEL_148:
          *(a1 + v72) = v28;
          goto LABEL_149;
        case 0x10u:
          v44 = PBReaderReadString();

          v30 = v44;
          v31 = 56;
LABEL_90:
          *(a1 + v31) = v30;
          goto LABEL_149;
        case 0x11u:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 140) |= 0x80u;
          while (1)
          {
            v76 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v76 & 0x7F) << v18;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_114;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v20;
          }

LABEL_114:
          v71 = 68;
          goto LABEL_135;
        case 0x12u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 140) |= 0x40u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_149;
      }

      while (1)
      {
        v75 = 0;
        v51 = [a2 position] + 1;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v50 |= (v75 & 0x7F) << v48;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v10 = v49++ >= 9;
        if (v10)
        {
          v17 = 0;
          goto LABEL_134;
        }
      }

      v17 = [a2 hasError] ? 0 : v50;
LABEL_134:
      v71 = 64;
LABEL_135:
      *(a1 + v71) = v17;
LABEL_149:
      v73 = [a2 position];
    }

    while (v73 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1A862BF64()
{
  if (qword_1EB309628 != -1)
  {
    sub_1A88C08CC();
  }

  v1 = qword_1ED8C9830;

  return v1;
}

void sub_1A862BFA8()
{
  v0 = MEMORY[0x1AC570AB0]("DDResultAttributeName", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED8C9830, v1);
}

id sub_1A862BFF8(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = *MEMORY[0x1E69A5FD8];
  v4 = [a1 length];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A862C0E8;
  v8[3] = &unk_1E7826748;
  v9 = v2;
  v5 = v2;
  [a1 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0, v8}];
  v6 = [v5 copy];

  return v6;
}

void sub_1A862C0E8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v3, "unsignedIntegerValue")}];
  }
}

id sub_1A862C15C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A862BF64();
  v8 = [a1 attribute:v7 existsInRange:{a3, a4}];

  if (v8)
  {
    [a1 dd_attributedSubstringFromRange:{a3, a4}];
  }

  else
  {
    [a1 attributedSubstringFromRange:{a3, a4}];
  }
  v9 = ;

  return v9;
}

id sub_1A862C1F0(void *a1)
{
  if (a1 && [a1 length])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1A8601E58;
    v11 = sub_1A8602120;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2 = [a1 length];
    v3 = *MEMORY[0x1E69A5FB0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A862C340;
    v6[3] = &unk_1E7826770;
    v6[4] = a1;
    v6[5] = &v7;
    [a1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
    v4 = [v8[5] copy];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void sub_1A862C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A862C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v16 = [*(a1 + 32) __im_attributedSubstringFromRange:?];
    v7 = *(a1 + 32);
    v8 = sub_1A862BF64();
    LOBYTE(v7) = [v7 attribute:v8 existsInRange:{a3, a4}];

    if (v7)
    {
      v9 = v16;
    }

    else
    {
      v10 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
      v11 = [v10 trimmedString];

      [v11 string];
      v9 = v11;
    }

    v17 = v9;
    v12 = [v9 string];
    v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v14 = [v12 stringByTrimmingCharactersInSet:v13];

    v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
    if (v15)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v15];
    }
  }
}

void sub_1A862C4A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 length];
  if (v4)
  {
    if (v5)
    {
      v6 = [a1 __im_countMessageParts];
      if (v6)
      {
        v7 = v6;
        v8 = *MEMORY[0x1E69A5FD8];
        v9 = [a1 length];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1A862C594;
        v10[3] = &unk_1E7826798;
        v10[4] = a1;
        v12 = v7;
        v11 = v4;
        [a1 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v10}];
      }
    }
  }
}

void sub_1A862C594(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) __im_partDescriptorWithIndex:v7 range:a3 totalPartCount:{a4, *(a1 + 48)}];
  (*(*(a1 + 40) + 16))();
}

IMMessagePartDescriptor *sub_1A862C654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == 1)
  {
    v9 = a1;
  }

  else
  {
    v9 = [a1 __im_attributedSubstringFromRange:{a4, a5}];
  }

  v10 = v9;
  v11 = [[IMMessagePartDescriptor alloc] initWithMessagePartBody:v9 messagePartIndex:a3 messagePartRange:a4, a5];

  return v11;
}

uint64_t sub_1A862C6E4(void *a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      v9 = [a1 length];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A862C8C0;
      v12[3] = &unk_1E78267C0;
      v12[4] = &v17;
      [a1 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];
      if (v18[3])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v10 & 1;
}

void sub_1A862C898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A862C8C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1A862C8DC(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E69A5FD8];
    v7 = [v4 attribute:*MEMORY[0x1E69A5FD8] atIndex:0 effectiveRange:0];
    v8 = [v7 integerValue];

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = [a1 length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A862CAD8;
    v14[3] = &unk_1E78267E8;
    v14[4] = &v15;
    v14[5] = v8;
    [a1 enumerateAttribute:v6 inRange:0 options:v9 usingBlock:{2, v14}];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v16[3];
        *buf = 134218240;
        v20 = v11;
        v21 = 2048;
        v22 = v8;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Target index %ld for part name %ld", buf, 0x16u);
      }
    }

    v12 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

void sub_1A862CAD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = [v9 integerValue];
  v11 = *(a1 + 40);
  if (v10 >= v11)
  {
    if (v10 <= v11)
    {
      if (v10 != v11)
      {
        goto LABEL_11;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
          v14 = 138412290;
          v15 = v13;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Found stored part number %@ when trying to restore it", &v14, 0xCu);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }

    *a5 = 1;
    goto LABEL_11;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3 + a4;
LABEL_11:
}

id sub_1A862CC34(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8601E58;
  v17 = sub_1A8602120;
  v18 = 0;
  v5 = [a1 __im_countMessageParts];
  if (v5)
  {
    v6 = [a1 length];
    v7 = *MEMORY[0x1E69A5FD8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A862CDC0;
    v12[3] = &unk_1E7826810;
    v12[6] = a3;
    v12[7] = v5;
    v12[4] = a1;
    v12[5] = &v13;
    [a1 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v12}];
  }

  v8 = v14[5];
  if (!v8)
  {
    v9 = IMLogHandleForCategory("MessagePartUtilities");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C08E0();
    }

    v8 = v14[5];
  }

  v10 = v8;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void sub_1A862CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A862CDC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  if (v10 == *(a1 + 48))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 48);
        v13 = [*(a1 + 32) length];
        v14 = *(a1 + 56);
        v18 = 134219008;
        v19 = a3;
        v20 = 2048;
        v21 = a4;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Found message part with range (%ld, %ld) matching message part index: %ld in message with length %ld and totalPartCount %ld", &v18, 0x34u);
      }
    }

    v15 = [*(a1 + 32) __im_partDescriptorWithIndex:v10 range:a3 totalPartCount:{a4, *(a1 + 56)}];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a5 = 1;
  }
}

id sub_1A862CF68(void *a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A8601E58;
  v20 = sub_1A8602120;
  v21 = 0;
  v7 = [a1 __im_countMessageParts];
  if (v7)
  {
    v8 = [a1 length];
    v9 = *MEMORY[0x1E69A5FD8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A862D140;
    v15[3] = &unk_1E7826838;
    v15[6] = a3;
    v15[7] = a4;
    v15[8] = v7;
    v15[4] = a1;
    v15[5] = &v16;
    [a1 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v15}];
  }

  v10 = v17[5];
  if (!v10)
  {
    v11 = IMLogHandleForCategory("MessagePartUtilities");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25.location = a3;
      v25.length = a4;
      v12 = NSStringFromRange(v25);
      sub_1A88C0948(v12, buf, v11);
    }

    v10 = v17[5];
  }

  v13 = v10;
  _Block_object_dispose(&v16, 8);

  return v13;
}

void sub_1A862D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A862D140(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 48) == a3 && *(a1 + 56) == a4)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) length];
        v14 = *(a1 + 64);
        v18 = 134219008;
        v19 = a3;
        v20 = 2048;
        v21 = a4;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Found message part with range (%ld, %ld) matching message part index: %ld in message with length %ld and totalPartCount %ld", &v18, 0x34u);
      }
    }

    v15 = [*(a1 + 32) __im_partDescriptorWithIndex:v10 range:*(a1 + 48) totalPartCount:{*(a1 + 56), *(a1 + 64)}];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a5 = 1;
  }
}

id sub_1A862D2E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if (!a4)
  {
    goto LABEL_4;
  }

  v7 = [a1 __im_messagePartMatchingPartIndex:a4 - 1];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 messagePartRange];
    a4 = v9 + v10;

LABEL_4:
    v11 = [a1 mutableCopy];
    [v11 insertAttributedString:v6 atIndex:a4];
    v12 = [v11 copy];

    goto LABEL_8;
  }

  v13 = IMLogHandleForCategory("MessagePartUtilities");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C09A0();
  }

  v12 = a1;
LABEL_8:

  return v12;
}

id sub_1A862D3C4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69A5FD8];
  [v9 removeAttribute:*MEMORY[0x1E69A5FD8] range:{0, objc_msgSend(v9, "length")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v9 addAttribute:v10 value:v11 range:{0, objc_msgSend(v9, "length")}];

  v12 = v9;
  v13 = [a1 __im_messagePartMatchingPartIndex:a3];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 messagePartRange];
    v17 = v16;
    v18 = [a1 mutableCopy];
    [v18 replaceCharactersInRange:v15 withAttributedString:{v17, v12}];
    v19 = [v18 copy];
  }

  else
  {
    v20 = IMLogHandleForCategory("MessagePartUtilities");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0A08();
    }

    v19 = a1;
  }

  return v19;
}

id sub_1A862D544(void *a1)
{
  v2 = [a1 __im_messagePartMatchingPartIndex:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 messagePartRange];
    v6 = v5;
    v7 = [a1 mutableCopy];
    [v7 deleteCharactersInRange:{v4, v6}];
    v8 = [v7 copy];
  }

  else
  {
    v9 = IMLogHandleForCategory("MessagePartUtilities");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0A70();
    }

    v8 = a1;
  }

  return v8;
}

void sub_1A862D618(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13 = [v9 __im_messagePartIndexes];
  v14 = [v10 __im_messagePartIndexes];
  v15 = [v13 mutableCopy];
  [v15 addIndexes:v14];
  v16 = [v15 copy];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = sub_1A862D7B8;
  v24 = &unk_1E7826860;
  v25 = v10;
  v26 = v9;
  v17 = v11;
  v27 = v17;
  v18 = v12;
  v28 = v18;
  v19 = v9;
  v20 = v10;
  [v16 enumerateIndexesUsingBlock:&v21];
  if (a5)
  {
    *a5 = [v17 copy];
  }

  if (a6)
  {
    *a6 = [v18 copy];
  }
}

void sub_1A862D7B8(id *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a1[4] __im_messagePartMatchingPartIndex:a2];
  v5 = [a1[5] __im_messagePartMatchingPartIndex:a2];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = a2;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Message part index %ld was in the previous message, but is not in the edited message", &v16, 0xCu);
        }
      }

      [a1[7] addIndex:a2];
    }

    else
    {
      v13 = v5 != 0;
      v14 = IMLogHandleForCategory("MessagePartUtilities");
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C0B4C();
        }

        [a1[6] addIndex:a2];
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1A88C0AD8();
        }
      }
    }
  }

  else
  {
    v9 = [v5 isEqualToMessagePart:v4 ignoringRange:1];
    v10 = IMOSLoggingEnabled();
    if (v9)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = a2;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Message part index %ld has the same contents, is not edited", &v16, 0xCu);
        }
      }
    }

    else
    {
      if (v10)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v16 = 134217984;
          v17 = a2;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Message part index %ld has different contents, was edited", &v16, 0xCu);
        }
      }

      [a1[6] addIndex:a2];
    }
  }
}

id sub_1A862DA60(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A862DB1C;
  v6[3] = &unk_1E7826888;
  v7 = v2;
  v3 = v2;
  [a1 __im_visitMessageParts:v6];
  v4 = [v3 copy];

  return v4;
}

void sub_1A862DB1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 messagePartRange];
  v6 = v5;
  v7 = [v3 messagePartIndex];

  v9 = [MEMORY[0x1E696B098] valueWithRange:{v4, v6}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

id sub_1A862DBD4(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A862DC90;
  v6[3] = &unk_1E7826888;
  v7 = v2;
  v3 = v2;
  [a1 __im_visitMessageParts:v6];
  v4 = [v3 copy];

  return v4;
}

void sub_1A862DC90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 messagePartRange];
  v6 = v5;
  v7 = [v3 messagePartIndex];

  v9 = [MEMORY[0x1E696B098] valueWithRange:{v4, v6}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
}

id sub_1A862DD48(void *a1)
{
  v2 = [a1 length];
  if (!v2 || (v3 = v2, v4 = *MEMORY[0x1E69A5FD8], [a1 attribute:*MEMORY[0x1E69A5FD8] existsInRange:{0, v2}]))
  {
    v5 = [a1 copy];
    goto LABEL_26;
  }

  v6 = [a1 mutableCopy];
  [v6 removeAttribute:v4 range:{0, v3}];
  v7 = [v6 string];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v20 = *MEMORY[0x1E69A5F50];
  v11 = 1;
  do
  {
    v21 = 0;
    v22 = 0;
    v12 = [v6 attributesAtIndex:v8 longestEffectiveRange:&v21 inRange:{v8, v3 - v8}];
    v13 = [v7 characterAtIndex:v21];
    if (v13 == 65532)
    {
      v14 = [v12 objectForKey:@"CTAdaptiveImageProvider"];
      if (v14 || ([v12 objectForKey:@"CTEmojiImageProvider"], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_9:
        if (v11)
        {
          LOBYTE(v15) = 0;
          goto LABEL_21;
        }

LABEL_20:
        LOBYTE(v15) = 0;
        v9 = v9 + v10;
        goto LABEL_21;
      }

      v18 = [v12 objectForKey:v20];

      if (v18)
      {
        goto LABEL_9;
      }

      v15 = 1;
      if ((v11 & 1) == 0)
      {
LABEL_18:
        if (v15)
        {
          v9 = (v9 + 1);
          LOBYTE(v15) = 1;
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v15 = v13 > 0xFFFD || (v13 & 0xFFFE) == 65532;
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_21:
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    [v6 addAttribute:v4 value:v17 range:{v21, v22}];

    v8 = v22 + v21;
    v11 = 0;
    v10 = v15;
  }

  while (v8 < v3);
  v5 = [v6 copy];

LABEL_26:

  return v5;
}

id sub_1A862DF84(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = *MEMORY[0x1E69A5F68];
    v10 = *MEMORY[0x1E69A5F00];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v22 = v9;
        v23 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v13];
        [v5 appendAttributedString:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = [v5 copy];

  return v15;
}

id sub_1A862E128(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AAB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:&stru_1F1BB91F0];
  v6 = [v5 __im_attributedStringByAppendingFileTransfers:v4];

  return v6;
}

uint64_t sub_1A862E1A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [a1 length];
  v6 = *MEMORY[0x1E69A5F68];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A862E2B8;
  v10[3] = &unk_1E78268B0;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [a1 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v10}];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1A862E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A862E2B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqualToString:*(a1 + 32)])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 0;
  }
}

id sub_1A862E340(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 length];
  v9 = [a1 mutableCopy];
  v10 = *MEMORY[0x1E69A5F68];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A862E474;
  v16[3] = &unk_1E78268D8;
  v17 = v6;
  v18 = v9;
  v19 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v6;
  [a1 enumerateAttribute:v10 inRange:0 options:v8 usingBlock:{0, v16}];
  v14 = [v12 copy];

  return v14;
}

void sub_1A862E474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqualToString:*(a1 + 32)])
  {
    [*(a1 + 40) addAttribute:*MEMORY[0x1E69A5F68] value:*(a1 + 48) range:{a3, a4}];
  }
}

id sub_1A862E510(void *a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 __im_isRichCard])
  {
    v8 = [a1 attributesAtIndex:0 effectiveRange:0];
    v9 = [v8 _dictionaryForKey:@"__kIMUrlToTransferMapAttributeName"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v22 = @"__kIMUrlToTransferMapAttributeName";
    v23 = v8;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v9 objectForKeyedSubscript:{v15, v22, v23}];
        if ([v16 isEqualToString:v6])
        {
          v17 = v15;

          v12 = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
    v8 = v23;
    if (v12)
    {
      v18 = [v9 mutableCopy];
      [v18 setObject:v7 forKeyedSubscript:v12];
      v19 = [a1 mutableCopy];
      [v19 addAttribute:v22 value:v18 range:{0, objc_msgSend(a1, "length")}];
      v20 = [v19 copy];
    }

    else
    {
LABEL_14:
      v20 = a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_1A862E76C()
{
  v0 = os_log_create("com.apple.Messages", "BlastDoorAttachment");
  qword_1ED8C9A78 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A862EDA4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    MEMORY[0x1AC570AA0](@"BlastDoorEmojiImageMetadata", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1A862EE38(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (v16 && !a3)
  {
    MEMORY[0x1AC570AA0](@"BlastDoorPreviewImage", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 image];
    v8 = [v7 cgImage];
    [v6 alignmentInset];
    v10 = v9;
    v12 = v11;

    LODWORD(v6) = [MEMORY[0x1E69DB7A8] instancesRespondToSelector:sel_initWithImage_alignmentInset_provenanceInfo_];
    v13 = objc_alloc(MEMORY[0x1E69DB7A8]);
    if (v6)
    {
      v14 = [v13 initWithImage:v8 alignmentInset:*(a1 + 32) provenanceInfo:{v10, v12}];
    }

    else
    {
      v14 = [v13 initWithImage:v8 alignmentInset:{v10, v12}];
    }

    v15 = v14;
    if (v14)
    {
      [*(a1 + 40) addObject:v14];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_1A862F09C()
{
  result = MEMORY[0x1AC570AA0](@"NTKGreenfieldUtilities", @"NanoTimeKitCompanion");
  qword_1EB30AD10 = result;
  return result;
}

void sub_1A862F994(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = [objc_opt_class() decorateWatchfacePreview:v5 andWriteToURL:*(a1 + 32) imagePxSize:*(*(a1 + 56) + 8) + 32];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      goto LABEL_9;
    }

    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
    goto LABEL_8;
  }

  v10 = v6;
  if (!v6)
  {
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
  if (!v7)
  {
LABEL_8:
  }

LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v13 = IMStringFromCGSize(*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40));
      v14 = *(*(*(a1 + 64) + 8) + 40);
      v15[0] = 67109634;
      v15[1] = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Blastdoor validation completed, result: %d, imagePxSize: %@, err: %@", v15, 0x1Cu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t ckDefaultTextSizeForFontPointSize(double a1)
{
  if (a1 <= 10.0)
  {
    return 1;
  }

  if (a1 <= 11.0)
  {
    return 2;
  }

  if (a1 <= 12.0)
  {
    return 3;
  }

  v1 = 5;
  v2 = 6;
  if (a1 > 15.0)
  {
    v2 = 7;
  }

  if (a1 > 14.0)
  {
    v1 = v2;
  }

  if (a1 > 13.0)
  {
    return v1;
  }

  else
  {
    return 4;
  }
}

void IMPreviewConstraintsFromDictionary(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  v3 = a1;
  v4 = [v3 objectForKey:@"mpw"];
  [v4 floatValue];
  *a2 = v5;

  v6 = [v3 objectForKey:@"mtw"];
  [v6 floatValue];
  v8 = v7;

  v9 = [v3 objectForKey:@"mth"];
  [v9 floatValue];
  v11 = v10;

  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  v12 = [v3 objectForKey:@"s"];
  [v12 floatValue];
  *(a2 + 24) = v13;

  v14 = [v3 objectForKey:@"st"];
  *(a2 + 32) = [v14 BOOLValue];

  v15 = [v3 objectForKey:@"iaig"];
  *(a2 + 34) = [v15 BOOLValue];

  v16 = [v3 objectForKey:@"gm"];

  *(a2 + 33) = [v16 BOOLValue];
}

id IMPreviewConstraintsDictionaryFromConstraint(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *a1];
  [v2 setObject:v3 forKey:@"mpw"];

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *(a1 + 8)];
  [v2 setObject:v4 forKey:@"mtw"];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *(a1 + 16)];
  [v2 setObject:v5 forKey:@"mth"];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *(a1 + 24)];
  [v2 setObject:v6 forKey:@"s"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  [v2 setObject:v7 forKey:@"st"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 34)];
  [v2 setObject:v8 forKey:@"iaig"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33)];
  [v2 setObject:v9 forKey:@"gm"];

  return v2;
}

BOOL IMPreviewConstraintsEqualToConstraints(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 34) == *(a2 + 34) && *(a1 + 33) == *(a2 + 33) && vabdd_f64(*a1, *a2) < 0.00000999999975 && (v2 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EE4F8B580000000uLL), vabdq_f64(*(a1 + 8), *(a2 + 8)))), (v2.i32[0] & v2.i32[1] & 1) != 0))
  {
    return vabdd_f64(*(a1 + 24), *(a2 + 24)) < 0.00000999999975;
  }

  else
  {
    return 0;
  }
}

double IMPreviewConstraintsZero@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A8630188(uint64_t result, _WORD *a2, void *a3, __CFString *a4, __CFString *a5, __CFString *a6, __CFString *a7)
{
  *a3 = 0;
  if (result != a2)
  {
    v40 = v16;
    v41 = v15;
    v42 = v14;
    v43 = v13;
    v44 = v12;
    v45 = v11;
    v46 = v10;
    v47 = v9;
    v48 = v8;
    v49 = v7;
    v50 = v17;
    v51 = v18;
    v24 = result;
    while (1)
    {
      while (1)
      {
        v25 = v24;
        v26 = a2;
        v27 = *v24;
        if (v27 > 0x25)
        {
          break;
        }

        if (v27 > 0xC)
        {
          if (v27 > 0x20)
          {
            if (v27 != 34)
            {
              goto LABEL_49;
            }

            ++v24;
            if (a7)
            {
              result = [(__CFString *)a7 length];
              a2 = 0;
              *a3 += result;
              if (v26)
              {
                v28 = result;
                v29 = a7;
                goto LABEL_65;
              }
            }

            else
            {
              result = [@"" length];
              a2 = 0;
              *a3 += result;
              if (v26)
              {
                v28 = result;
                v29 = @"";
                goto LABEL_65;
              }
            }
          }

          else
          {
            if (v27 == 13)
            {
              goto LABEL_53;
            }

            if (v27 != 32)
            {
              goto LABEL_56;
            }

            ++v24;
            if (v25[1] == 32)
            {
              do
              {
                v30 = v24[1];
                ++v24;
              }

              while (v30 == 32);
              if (!a4)
              {
                goto LABEL_57;
              }

              if (v25 < v24)
              {
                v37 = a6;
                v38 = (v25 - 1);
                do
                {
                  result = [(__CFString *)a4 length:v40];
                  *a3 += result;
                  if (v26)
                  {
                    v39 = result;
                    result = [(__CFString *)a4 getCharacters:v26];
                    v26 += v39;
                  }

                  v38 += 2;
                }

                while (v38 < (v24 - 1));
                a2 = v26;
                a6 = v37;
              }
            }

            else
            {
LABEL_50:
              a2 = 0;
              ++*a3;
              if (v26)
              {
                *v26 = v27;
                a2 = v26 + 1;
              }
            }
          }
        }

        else if (v27 > 8)
        {
          if (v27 == 9)
          {
            ++v24;
            if (a4)
            {
              v31 = [(__CFString *)a4 length];
              *a3 += v31;
              if (v26)
              {
                v32 = v31;
                [(__CFString *)a4 getCharacters:v26];
                v26 += v32;
              }

              v33 = [(__CFString *)a4 length:v40];
              *a3 += v33;
              if (v26)
              {
                v34 = v33;
                [(__CFString *)a4 getCharacters:v26];
                v26 += v34;
              }

              v35 = [(__CFString *)a4 length];
              *a3 += v35;
              if (v26)
              {
                v36 = v35;
                [(__CFString *)a4 getCharacters:v26];
                v26 += v36;
              }

              result = [(__CFString *)a4 length];
              a2 = 0;
              *a3 += result;
              if (v26)
              {
                v28 = result;
                v29 = a4;
                goto LABEL_65;
              }
            }

            else
            {
LABEL_57:
              result = [@" " length];
              a2 = 0;
              *a3 += result;
              if (v26)
              {
                v28 = result;
                v29 = @" ";
                goto LABEL_65;
              }
            }
          }

          else
          {
            if (v27 >= 0xB)
            {
              goto LABEL_56;
            }

LABEL_53:
            ++v24;
            if (!a5)
            {
              goto LABEL_57;
            }

            result = [(__CFString *)a5 length];
            a2 = 0;
            *a3 += result;
            if (v26)
            {
              v28 = result;
              v29 = a5;
              goto LABEL_65;
            }
          }
        }

        else
        {
          if (!*v24)
          {
            return result;
          }

LABEL_56:
          ++v24;
        }
      }

      if (v27 > 0x3E)
      {
        if (v27 >> 3 > 0x404)
        {
          if (v27 < 0x202A)
          {
            goto LABEL_53;
          }

          if (v27 >= 0xFFFE)
          {
            goto LABEL_56;
          }
        }

        else if (v27 == 133)
        {
          goto LABEL_53;
        }

LABEL_49:
        ++v24;
        goto LABEL_50;
      }

      if (v27 > 0x3B)
      {
        if (v27 == 60)
        {
          ++v24;
          result = [@"&lt;" length];
          a2 = 0;
          *a3 += result;
          if (v26)
          {
            v28 = result;
            v29 = @"&lt;";
            goto LABEL_65;
          }
        }

        else
        {
          if (v27 != 62)
          {
            goto LABEL_49;
          }

          ++v24;
          result = [@"&gt;" length];
          a2 = 0;
          *a3 += result;
          if (v26)
          {
            v28 = result;
            v29 = @"&gt;";
            goto LABEL_65;
          }
        }
      }

      else if (v27 == 38)
      {
        ++v24;
        result = [@"&amp;" length];
        a2 = 0;
        *a3 += result;
        if (v26)
        {
          v28 = result;
          v29 = @"&amp;";
          goto LABEL_65;
        }
      }

      else
      {
        if (v27 >= 0x28)
        {
          goto LABEL_49;
        }

        ++v24;
        if (a6)
        {
          result = [(__CFString *)a6 length];
          a2 = 0;
          *a3 += result;
          if (v26)
          {
            v28 = result;
            v29 = a6;
            goto LABEL_65;
          }
        }

        else
        {
          result = [@"'" length];
          a2 = 0;
          *a3 += result;
          if (v26)
          {
            v28 = result;
            v29 = @"'";
LABEL_65:
            result = [(__CFString *)v29 getCharacters:v26, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49];
            a2 = &v26[v28];
          }
        }
      }
    }
  }

  return result;
}

__CFString *sub_1A86305D8(void *a1)
{
  v1 = [a1 lastPathComponent];
  if ([v1 isEqualToString:@".."])
  {
    v2 = &stru_1F1BB91F0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id sub_1A863063C(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [*(*(&v13 + 1) + 8 * v9) im_lastPathComponent];
        v5 = [v10 URLByAppendingPathComponent:v11];

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

id IMNicknameUnarchivingClasses()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];

  return v2;
}

id sub_1A8633C7C(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v9 = [v8 __im_propertyListSafeCopy];
          [v2 addObject:v9];
LABEL_9:

          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 allObjects];
          v10 = [v9 __im_propertyListSafeCopy];
          [v2 addObject:v10];

          goto LABEL_9;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v2 addObject:{v8, v13}];
        }

LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v11;
    }

    while (v11);
  }

  return v2;
}

id sub_1A8633EC0(void *a1)
{
  if (!qword_1EB30AD20)
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [v2 objectForKey:*MEMORY[0x1E695D978]];
    v4 = [v3 lowercaseString];
    v5 = qword_1EB30AD20;
    qword_1EB30AD20 = v4;
  }

  v6 = CFPhoneNumberCreate();
  if (v6)
  {
    v7 = v6;
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
    }

    CFRelease(v7);
    if (String)
    {
      v9 = String;
    }

    else
    {
      v9 = a1;
    }

    v10 = v9;
  }

  else
  {
    v10 = a1;
  }

  return v10;
}

id sub_1A8633FC8(void *a1)
{
  if ([a1 length] && objc_msgSend(a1, "_appearsToBePhoneNumber"))
  {
    v2 = [a1 formattedPhoneNumber];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

uint64_t sub_1A8634020(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AB08];
  v5 = a3;
  v6 = [v4 controlCharacterSet];
  v7 = [a1 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v9 = [v5 stringByTrimmingCharactersInSet:v8];

  if (!qword_1EB30AD20)
  {
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    v11 = [v10 objectForKey:*MEMORY[0x1E695D978]];
    v12 = [v11 lowercaseString];
    v13 = qword_1EB30AD20;
    qword_1EB30AD20 = v12;
  }

  v14 = PNPhoneNumbersEqual();

  return v14;
}

uint64_t sub_1A8634134()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:&unk_1F1BFAC10];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = [&unk_1F1BFAC28 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v14;
    do
    {
      v4 = 0;
      do
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(&unk_1F1BFAC28);
        }

        [v0 addObject:{objc_msgSend(@"smsfp", "stringByAppendingString:", *(*(&v13 + 1) + 8 * v4++))}];
      }

      while (v2 != v4);
      v2 = [&unk_1F1BFAC28 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v2);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  result = [&unk_1F1BFAC40 countByEnumeratingWithState:&v9 objects:v17 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&unk_1F1BFAC40);
        }

        [v0 addObject:{objc_msgSend(@"smsft", "stringByAppendingString:", *(*(&v9 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      result = [&unk_1F1BFAC40 countByEnumeratingWithState:&v9 objects:v17 count:16];
      v6 = result;
    }

    while (result);
  }

  qword_1EB30AD30 = v0;
  return result;
}

uint64_t sub_1A8634774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 objectForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}