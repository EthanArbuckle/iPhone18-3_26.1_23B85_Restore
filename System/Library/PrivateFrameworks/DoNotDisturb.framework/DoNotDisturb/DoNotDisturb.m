void DNDRegisterLogging()
{
  if (DNDRegisterLogging_onceToken != -1)
  {
    DNDRegisterLogging_cold_1();
  }
}

uint64_t __DNDRegisterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.donotdisturb", "AuxiliaryState");
  v1 = DNDLogAuxiliaryState;
  DNDLogAuxiliaryState = v0;

  v2 = os_log_create("com.apple.donotdisturb", "AppConfiguration");
  v3 = DNDLogAppConfiguration;
  DNDLogAppConfiguration = v2;

  v4 = os_log_create("com.apple.donotdisturb", "BehaviorResolution");
  v5 = DNDLogBehaviorResolution;
  DNDLogBehaviorResolution = v4;

  v6 = os_log_create("com.apple.donotdisturb", "GlobalConfiguration");
  v7 = DNDLogGlobalConfiguration;
  DNDLogGlobalConfiguration = v6;

  v8 = os_log_create("com.apple.donotdisturb", "HearingTest");
  v9 = DNDLogHearingTest;
  DNDLogHearingTest = v8;

  v10 = os_log_create("com.apple.donotdisturb", "ModeAssertion");
  v11 = DNDLogModeAssertion;
  DNDLogModeAssertion = v10;

  v12 = os_log_create("com.apple.donotdisturb", "ModeConfiguration");
  v13 = DNDLogModeConfiguration;
  DNDLogModeConfiguration = v12;

  v14 = os_log_create("com.apple.donotdisturb", "ModeSelection");
  v15 = DNDLogModeSelection;
  DNDLogModeSelection = v14;

  v16 = os_log_create("com.apple.donotdisturb", "RemoteConnection");
  v17 = DNDLogRemoteConnection;
  DNDLogRemoteConnection = v16;

  v18 = os_log_create("com.apple.donotdisturb", "Settings");
  v19 = DNDLogSettings;
  DNDLogSettings = v18;

  v20 = os_log_create("com.apple.donotdisturb", "State");
  v21 = DNDLogState;
  DNDLogState = v20;

  v22 = os_log_create("com.apple.donotdisturb", "DNDMeDeviceService.client");
  v23 = DNDLogMeDeviceService;
  DNDLogMeDeviceService = v22;

  v24 = os_log_create("com.apple.donotdisturb", "Utilities");
  v25 = DNDLogUtilities;
  DNDLogUtilities = v24;

  DNDLogXPCEventObserver = os_log_create("com.apple.donotdisturb", "XPCEventObserver");

  return MEMORY[0x2821F96F8]();
}

id DNDRemoteMonitorServerInterface()
{
  if (DNDRemoteMonitorServerInterface_monitorOnceToken != -1)
  {
    DNDRemoteMonitorServerInterface_cold_1();
  }

  v1 = DNDRemoteMonitorServerInterface___monitorInterface;

  return v1;
}

void sub_220031A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DNDRemoteMonitorServerInterface_block_invoke()
{
  v4 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.donotdisturb.monitor"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833E2778];
  [v4 setServer:v0];

  v1 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833E0C98];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:1];
  v2 = [v4 copy];
  v3 = DNDRemoteMonitorServerInterface___monitorInterface;
  DNDRemoteMonitorServerInterface___monitorInterface = v2;
}

void sub_220031D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

id DNDRemoteServiceServerInterface()
{
  if (DNDRemoteServiceServerInterface_serviceOnceToken != -1)
  {
    DNDRemoteServiceServerInterface_cold_1();
  }

  v1 = DNDRemoteServiceServerInterface___serviceInterface;

  return v1;
}

void __DNDRemoteServiceServerInterface_block_invoke()
{
  v6 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.donotdisturb.service"];
  v0 = NSClassFromString(&cfstr_Lnaction.isa);
  v1 = &protocolRef_DNDRemoteServiceServerProtocolLinkUnavailable;
  if (v0)
  {
    v1 = &protocolRef_DNDRemoteServiceServerProtocol;
  }

  v2 = *v1;
  v3 = [MEMORY[0x277CF0C90] protocolForProtocol:v2];
  [v6 setServer:v3];

  v4 = [v6 copy];
  v5 = DNDRemoteServiceServerInterface___serviceInterface;
  DNDRemoteServiceServerInterface___serviceInterface = v4;
}

id DNDRemoteAppConfigurationServiceServerInterface()
{
  if (DNDRemoteAppConfigurationServiceServerInterface_serviceOnceToken != -1)
  {
    DNDRemoteAppConfigurationServiceServerInterface_cold_1();
  }

  v1 = DNDRemoteAppConfigurationServiceServerInterface___serviceInterface;

  return v1;
}

void __DNDRemoteAppConfigurationServiceServerInterface_block_invoke()
{
  v3 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.donotdisturb.appconfiguration.service"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833E3028];
  [v3 setServer:v0];

  v1 = [v3 copy];
  v2 = DNDRemoteAppConfigurationServiceServerInterface___serviceInterface;
  DNDRemoteAppConfigurationServiceServerInterface___serviceInterface = v1;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

__CFString *NSStringFromDNDPlatform(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"iOS";
  }

  else
  {
    return off_27843A878[a1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *DNDStringFromInterruptionSuppression(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A410[a1];
  }
}

__CFString *DNDIntelligentInterruptionBehaviorToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unused";
  }

  else
  {
    return off_27843B248[a1 - 1];
  }
}

__CFString *DNDResolutionReasonToString(unint64_t a1)
{
  if (a1 > 0x1A)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843B170[a1];
  }
}

__CFString *DNDStringFromModeAssertionScheduleLifetimeBehavior(uint64_t a1)
{
  v1 = @"<invalid>";
  if (a1 == 1)
  {
    v1 = @"schedule end";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"match schedule";
  }
}

__CFString *DNDStringFromSupportedAccountFeatures(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"SilenceLists"];
  }

  if ([v3 count])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 componentsJoinedByString:@" "];;
    v6 = [v4 stringWithFormat:@"{ %@ }", v5];
  }

  else
  {
    v6 = @"<none>";
  }

  return v6;
}

__CFString *DNDStringFromBreakthroughUrgency(uint64_t a1)
{
  v1 = @"essential";
  if (a1 == 1)
  {
    v1 = @"time-sensitive";
  }

  if (a1 == 2)
  {
    return @"all";
  }

  else
  {
    return v1;
  }
}

__CFString *DNDStringFromDeviceClass(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A0C8[a1 - 1];
  }
}

uint64_t DNDDeviceClassFromMGDeviceClass(int a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_22007C4B8[a1 - 1];
  }
}

__CFString *DNDModeAssertionInvalidationReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A0F8[a1 - 1];
  }
}

__CFString *DNDStringFromContactType(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"Favorite";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Contact";
  }
}

__CFString *DNDModeSemanticTypeToString(uint64_t a1)
{
  if ((a1 + 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_27843A258[a1 + 1];
  }
}

__CFString *DNDSystemImageNameForModeSemanticType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"moon.fill";
  }

  else
  {
    return off_27843A2B0[a1 - 1];
  }
}

__CFString *DNDSystemColorNameForModeSemanticType(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"systemIndigoColor";
  }

  else
  {
    return off_27843A2F8[a1 - 1];
  }
}

id DNDSystemColorNamesForModeSemanticType(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a1 == 9)
  {
    v1 = &unk_2833D94C0;
  }

  else
  {
    v2 = DNDSystemColorNameForModeSemanticType(a1);
    v5[0] = v2;
    v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v1;
}

__CFString *DNDModeLocalizedNameKeyForSemanticType(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_27843A340[a1];
  }
}

id DNDModeLocalizedNameForSemanticType(unint64_t a1)
{
  v1 = DNDModeLocalizedNameKeyForSemanticType(a1);
  v2 = [MEMORY[0x277CCA8D8] dnd_doNotDisturbLocalizationBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_2833C9B78 table:0];

  return v3;
}

__CFString *DNDStringFromConfigurationType(uint64_t a1)
{
  v1 = @"Inclusive";
  if (!a1)
  {
    v1 = @"Exclusive";
  }

  if (a1 == 2)
  {
    return @"Unconfigured";
  }

  else
  {
    return v1;
  }
}

unint64_t DNDResolvedHideApplicationBadgesSetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t DNDResolvedIntelligentManagementSetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t DNDResolvedInterruptionSuppressionMode(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

void sub_22003A95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DNDMeDeviceStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_27843A3E0[a1 - 1];
  }
}

__CFString *DNDEnabledSettingToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A3F8[a1];
  }
}

__CFString *DNDInterruptionSuppressionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A410[a1];
  }
}

unint64_t DNDMostRestrictiveInterruptionSuppression(unint64_t result, unint64_t a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

__CFString *DNDStringFromInterruptionSuppressionMode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"<invalid: %@>", v3];
  }

  else
  {
    v1 = off_27843A428[a1];
  }

  return v1;
}

__CFString *DNDModeAssertionInvalidationReasonOverrideToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A440[a1];
  }
}

uint64_t DNDResolvedModeAssertionInvalidationReason(uint64_t a1, uint64_t a2)
{
  v2 = a2 == 1;
  if (a2 == 2)
  {
    v2 = 2;
  }

  if (a2)
  {
    return v2;
  }

  return result;
}

__CFString *DNDCompatibilityVersionToString(uint64_t a1)
{
  if (a1 <= 10)
  {
    if (a1 == 2)
    {
      v1 = @"Sky";
      goto LABEL_18;
    }

    if (a1 != 3)
    {
      if (a1 == 10)
      {
        v1 = @"Sydney";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v1 = @"SkyF";
  }

  else if (a1 > 19)
  {
    if (a1 != 20)
    {
      if (a1 == 21)
      {
        v1 = @"max";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v1 = @"Crystal";
  }

  else
  {
    if (a1 != 11)
    {
      if (a1 == 15)
      {
        v1 = @"Dawn";
        goto LABEL_18;
      }

LABEL_14:
      v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
      v1 = [v2 stringValue];

      goto LABEL_18;
    }

    v1 = @"SydneyE";
  }

LABEL_18:

  return v1;
}

__CFString *DNDCompatibilityVersionStringify(uint64_t a1)
{
  if (a1 <= 10)
  {
    if (a1 == 2)
    {
      v1 = @"DNDCompatibilityVersionSky";
      goto LABEL_18;
    }

    if (a1 != 3)
    {
      if (a1 == 10)
      {
        v1 = @"DNDCompatibilityVersionSydney";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v1 = @"DNDCompatibilityVersionSkyF";
  }

  else if (a1 > 19)
  {
    if (a1 != 20)
    {
      if (a1 == 21)
      {
        v1 = @"DNDCompatibilityVersionMax";
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v1 = @"DNDCompatibilityVersionCrystal";
  }

  else
  {
    if (a1 != 11)
    {
      if (a1 == 15)
      {
        v1 = @"DNDCompatibilityVersionDawn";
        goto LABEL_18;
      }

LABEL_14:
      v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
      v1 = [v2 stringValue];

      goto LABEL_18;
    }

    v1 = @"DNDCompatibilityVersionSydneyE";
  }

LABEL_18:

  return v1;
}

__CFString *DNDStringFromDeviceCapabilities(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"telephony"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

uint64_t DNDWeekdaysFromDay(uint64_t a1)
{
  if ((a1 + 2) > 9)
  {
    return 0;
  }

  else
  {
    return qword_22007C568[a1 + 2];
  }
}

uint64_t DNDDayForWeekdays(uint64_t result)
{
  if (result > 15)
  {
    if (result <= 63)
    {
      if (result == 16)
      {
        return 6;
      }

      if (result == 32)
      {
        return 7;
      }
    }

    else
    {
      switch(result)
      {
        case 0x40:
          return 1;
        case 0x7FLL:
          return -1;
        case 0xFFFFFFFFLL:
          return -2;
      }
    }
  }

  else if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      return 2;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        return 3;
      case 4:
        return result;
      case 8:
        return 5;
    }
  }

  return 0;
}

uint64_t DNDNextDay(uint64_t a1)
{
  if (a1 == 7)
  {
    return 1;
  }

  else
  {
    return a1 + 1;
  }
}

uint64_t DNDPreviousDay(uint64_t a1)
{
  if (a1 == 1)
  {
    return 7;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t DNDEnumerateDaysOfWeekStartingOnDay(uint64_t a1, uint64_t a2, char a3)
{
  v10 = 0;
  v5 = 7;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 7;
  }

  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if (a3)
  {
    v8 = 7;
  }

  else
  {
    v8 = 1;
  }

  do
  {
    result = (*(a2 + 16))(a2, a1, &v10);
    if (v10)
    {
      break;
    }

    if (a1 == v6)
    {
      a1 = v8;
    }

    else
    {
      a1 += v7;
    }

    --v5;
  }

  while (v5);
  return result;
}

__CFString *NSStringForDNDDay(uint64_t a1)
{
  if ((a1 + 2) > 9)
  {
    return @"M";
  }

  else
  {
    return off_27843A480[a1 + 2];
  }
}

id DNDIdentifierStringForWeekdays(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [v3 firstWeekday];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __DNDIdentifierStringForWeekdays_block_invoke;
  v10 = &unk_27843A460;
  v12 = a1;
  v5 = v2;
  v11 = v5;
  v13 = 0;
  v6 = 7;
  do
  {
    (v9)(v8, v4, &v13);
    if (v13)
    {
      break;
    }

    if (v4 == 7)
    {
      v4 = 1;
    }

    else
    {
      ++v4;
    }

    --v6;
  }

  while (v6);

  return v5;
}

void __DNDIdentifierStringForWeekdays_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if ((DNDWeekdaysFromDay(a2) & v4) != 0)
  {
    v5 = *(a1 + 32);
    v6 = NSStringForDNDDay(a2);
    [v5 appendString:v6];
  }
}

__CFString *NSStringFromDNDWeekdays(uint64_t a1)
{
  if (a1 == 127)
  {
    v2 = @"Every Day";
  }

  else
  {
    v2 = DNDIdentifierStringForWeekdays(a1);
  }

  return v2;
}

__CFString *DNDEventSourceTypeToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A540[a1];
  }
}

void sub_220044D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

__CFString *DNDStringFromModeAssertionLifetimeType(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A570[a1];
  }
}

__CFString *DNDStringFromInterruptionBehaviorSetting(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A5A0[a1];
  }
}

uint64_t DNDResolvedInterruptionBehaviorSettingForDevice(uint64_t result, void *a2)
{
  if (!result)
  {
    if (([a2 deviceClass] - 1) >= 3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

__CFString *DNDInterruptionBehaviorToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_27843A5A0[a1];
  }
}

uint64_t DNDResolvedInterruptionBehaviorSetting(uint64_t a1)
{
  v2 = +[DNDDevice currentDevice];
  v3 = v2;
  if (!a1)
  {
    if (([v2 deviceClass] - 1) >= 3)
    {
      a1 = 1;
    }

    else
    {
      a1 = 2;
    }
  }

  return a1;
}

void sub_220048658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_22004966C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_22004B524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 128));
  _Unwind_Resume(a1);
}

void sub_22004C454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_22004D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 128));
  _Unwind_Resume(a1);
}

void sub_22004D760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_22004DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_22004DDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_22004E11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_2200502AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22005087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DNDStringFromExceptionType(uint64_t a1)
{
  v1 = @"None";
  if (a1 == 1)
  {
    v1 = @"Deny";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Allow";
  }
}

void sub_220052690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

__CFString *DNDStateUpdateReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A830[a1 - 1];
  }
}

__CFString *DNDStateUpdateSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A860[a1 - 1];
  }
}

__CFString *DNDStateUpdateOptionsToString(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"ForceStatusUpdate"];
  }

  if ([v3 count])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 componentsJoinedByString:@" "];;
    v6 = [v4 stringWithFormat:@"{ %@ }", v5];
  }

  else
  {
    v6 = @"<none>";
  }

  return v6;
}

uint64_t DNDResolvedImmediateBypassEventSourceType(uint64_t a1)
{
  v2 = +[DNDDevice currentDevice];
  if (!a1)
  {
    a1 = 3;
  }

  return a1;
}

uint64_t DNDResolvedImmediateBypassEventSourceTypeForDevice(uint64_t result)
{
  if (!result)
  {
    return 3;
  }

  return result;
}

uint64_t DNDResolvedRepeatEventSourceBehaviorEnabledSetting(uint64_t a1)
{
  v2 = +[DNDDevice currentDevice];
  if (!a1)
  {
    a1 = 2;
  }

  return a1;
}

uint64_t DNDResolvedRepeatEventSourceBehaviorEnabledSettingForDevice(uint64_t result)
{
  if (!result)
  {
    return 2;
  }

  return result;
}

__CFString *DNDStringFromInterruptionSuppressionState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A8A8[a1];
  }
}

__CFString *DNDStringFromClientEventType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A928[a1];
  }
}

__CFString *DNDStringFromClientEventUrgency(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843A950[a1];
  }
}

__CFString *DNDStringFromResolutionBehavior(uint64_t a1)
{
  v1 = @"<unknown>";
  if (a1 == 1)
  {
    v1 = @"Legacy";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Default";
  }
}

id DNDRemoteAvailabilityServiceServerInterface()
{
  if (DNDRemoteAvailabilityServiceServerInterface_serviceOnceToken != -1)
  {
    DNDRemoteAvailabilityServiceServerInterface_cold_1();
  }

  v1 = DNDRemoteAvailabilityServiceServerInterface___serviceInterface;

  return v1;
}

void __DNDRemoteAvailabilityServiceServerInterface_block_invoke()
{
  v3 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.donotdisturb.availability.service"];
  v0 = [MEMORY[0x277CF0C90] protocolForProtocol:&unk_2833DF3D0];
  [v3 setServer:v0];

  v1 = [v3 copy];
  v2 = DNDRemoteAvailabilityServiceServerInterface___serviceInterface;
  DNDRemoteAvailabilityServiceServerInterface___serviceInterface = v1;
}

uint64_t DNDResolvedImpactsAvailabilitySetting(uint64_t result)
{
  if (!result)
  {
    return 2;
  }

  return result;
}

unint64_t DNDResolvedDimsLockScreenSetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

uint64_t DNDOperatingSystemVersionCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

void DNDOperatingSystemVersionFromString(void *a1@<X0>, void *a2@<X8>)
{
  v6 = [a1 componentsSeparatedByString:@"."];
  if ([v6 count])
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if ([v6 count])
    {
      v3 = [v6 objectAtIndexedSubscript:0];
      *a2 = [v3 integerValue];
    }

    if ([v6 count] >= 2)
    {
      v4 = [v6 objectAtIndexedSubscript:1];
      a2[1] = [v4 integerValue];
    }

    if ([v6 count] >= 3)
    {
      v5 = [v6 objectAtIndexedSubscript:2];
      a2[2] = [v5 integerValue];
    }
  }

  else
  {
    a2[1] = -1;
    a2[2] = -1;
    *a2 = -1;
  }
}

id DNDStringFromOperatingSystemVersion(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*a1];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[1]];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1[2]];
  v6 = [v2 stringWithFormat:@"%@.%@.%@", v3, v4, v5];

  return v6;
}

unint64_t DNDResolvedScheduleEnabledSetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t DNDResolvedBedtimeBehaviorEnabledSetting(unint64_t result)
{
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

void sub_220061F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_220062308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22006269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_220062A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_220062D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_220063104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

__CFString *DNDStringFromContactHandleType(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 2)
  {
    v1 = @"phone";
  }

  if (a1 == 1)
  {
    return @"email";
  }

  else
  {
    return v1;
  }
}

void sub_220064F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v9 - 128));
  _Unwind_Resume(a1);
}

void sub_2200656DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2200667D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *DNDModeAssertionReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_27843ABC0[a1 - 1];
  }
}

void sub_220067E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_2200681A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a21, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_220068740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 96));
  _Unwind_Resume(a1);
}

void sub_220068A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  os_activity_scope_leave((v7 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_2200752E8()
{
  v0 = sub_220077774();
  __swift_allocate_value_buffer(v0, qword_27CF22840);
  __swift_project_value_buffer(v0, qword_27CF22840);
  return sub_220077764();
}

uint64_t sub_220075358()
{
  if (qword_27CF22838 != -1)
  {
    swift_once();
  }

  v0 = sub_220077774();

  return __swift_project_value_buffer(v0, qword_27CF22840);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2200753F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF22838 != -1)
  {
    swift_once();
  }

  v2 = sub_220077774();
  v3 = __swift_project_value_buffer(v2, qword_27CF22840);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}