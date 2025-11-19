uint64_t DepthUnit.hashValue.getter()
{
  v1 = *v0;
  sub_22CEBD328();
  MEMORY[0x2318C21D0](v1);
  return sub_22CEBD348();
}

uint64_t sub_22CE93EFC()
{
  v1 = *v0;
  sub_22CEBD328();
  MEMORY[0x2318C21D0](v1);
  return sub_22CEBD348();
}

uint64_t sub_22CE93F70()
{
  v1 = *v0;
  sub_22CEBD328();
  MEMORY[0x2318C21D0](v1);
  return sub_22CEBD348();
}

unint64_t sub_22CE93FD0()
{
  result = qword_27D9F0778;
  if (!qword_27D9F0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F0778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DepthUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DepthUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CSLPRFEqualAppBacklightPrivacySettingsValues(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v9 = 1;
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [v3 privacyDuringAlwaysOnForApp], v5 == objc_msgSend(v4, "privacyDuringAlwaysOnForApp")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v6 = objc_msgSend(v3, "privacyDuringAlwaysOnForNotification"), v6 == objc_msgSend(v4, "privacyDuringAlwaysOnForNotification")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v7 = objc_msgSend(v3, "privacyDuringAlwaysOnForLiveActivities"), v7 == objc_msgSend(v4, "privacyDuringAlwaysOnForLiveActivities")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v8 = [v3 watchAppSupportsAlwaysOnDisplay];
    v9 = v8 ^ [v4 watchAppSupportsAlwaysOnDisplay] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id CSLPRFCachedAppViewImageURL(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D37B50] sharedInstance];
  v3 = [v2 getActivePairedDeviceExcludingAltAccount];

  v4 = [v3 valueForProperty:*MEMORY[0x277D37BC0]];
  v5 = [v4 stringByAppendingPathComponent:@"com.apple.carousel"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 pairingID];
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> CSLPRFPerDeviceAppViewImageCachePath: cachePath %@, device %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v10 = [v9 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
    v11 = v18;

    if ((v10 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> CSLPRFDeviceAppviewImageCachePath: Error creating cache directory %@ path %@", buf, 0x16u);
    }
  }

  if (a1 == 1)
  {
    v12 = @"AppViewGrid.png";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_14;
    }

    v12 = @"AppViewList.png";
  }

  v13 = [v5 stringByAppendingPathComponent:v12];
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

__CFString *CSLAppSwitcherEditingSourceToNSString(uint64_t a1)
{
  v1 = @"gizmoSettings";
  if (!a1)
  {
    v1 = @"gizmoSwitcher";
  }

  if (a1 == 2)
  {
    return @"companionSettings";
  }

  else
  {
    return v1;
  }
}

__CFString *CSLAppSwitcherEditingActionToNSString(uint64_t a1)
{
  v1 = @"remove";
  if (a1 == 1)
  {
    v1 = @"add";
  }

  if (a1 == 2)
  {
    return @"reorder";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromCSLPRFDepthAutoLaunchBehavior(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringWithFormat:@"<CSLPRFDepthAutoLaunchBehavior unknown: %@>", v3];
  }

  else
  {
    v1 = off_2787444F8[a1];
  }

  return v1;
}

__CFString *NSStringFromCSLPRFDepthAutoLaunchThreshold(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = @"coremotion-deep";
    }

    else
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
      v1 = [v2 stringWithFormat:@"<CSLPRFDepthAutoLaunchThreshold unknown: %@>", v3];
    }
  }

  else
  {
    v1 = @"on-submersion";
  }

  return v1;
}

__CFString *CSLPRFLinkActionTypeToIdentifier(uint64_t a1)
{
  if ((a1 - 1) > 0x29)
  {
    return 0;
  }

  else
  {
    return off_278744510[a1 - 1];
  }
}

uint64_t CSLActionTypeToSettingsActionType(uint64_t a1)
{
  if (a1 > 17)
  {
    if (a1 > 33)
    {
      if (a1 > 39)
      {
        if (a1 != 40)
        {
          if (a1 == 42)
          {
            return 16;
          }

          return 7;
        }

        return 15;
      }

      else
      {
        if (a1 != 34)
        {
          if (a1 == 38)
          {
            return 14;
          }

          return 7;
        }

        return 12;
      }
    }

    else
    {
      if (a1 <= 24)
      {
        if (a1 == 20)
        {
          return 1;
        }

        return 7;
      }

      if (a1 != 25)
      {
        if (a1 == 29)
        {
          return 11;
        }

        return 7;
      }

      return 9;
    }
  }

  else
  {
    if (a1 > 4)
    {
      if (a1 > 8)
      {
        if (a1 != 9)
        {
          if (a1 == 12)
          {
            return 5;
          }

          return 7;
        }
      }

      else
      {
        if (a1 == 5)
        {
          return 4;
        }

        if (a1 != 6)
        {
          return 7;
        }
      }

      return 0;
    }

    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return 2;
        }

        return 7;
      }

      return 6;
    }

    else
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return 3;
        }

        return 7;
      }

      return 8;
    }
  }
}

uint64_t CSLSettingsActionTypeToLinkActionType(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return 0;
  }

  else
  {
    return qword_22CEC0E70[a1];
  }
}

uint64_t CSLIdentifierToLinkActionType(void *a1)
{
  v1 = CSLIdentifierToLinkActionType_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&CSLIdentifierToLinkActionType_onceToken, &__block_literal_global_463);
  }

  v3 = [CSLIdentifierToLinkActionType___identifierToActionType objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void __CSLIdentifierToLinkActionType_block_invoke()
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  for (i = -1; i != 42; ++i)
  {
    if (i >= 0x2A || (v1 = off_278744510[i], ((0x500C100004uLL >> i) & 1) != 0))
    {
      v2 = 0;
    }

    else
    {
      v2 = v1;
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i + 1];
      [v6 setObject:v3 forKeyedSubscript:v2];
    }
  }

  v4 = [v6 copy];
  v5 = CSLIdentifierToLinkActionType___identifierToActionType;
  CSLIdentifierToLinkActionType___identifierToActionType = v4;
}

uint64_t CSLChordAction(uint64_t result)
{
  if (result == 12)
  {
    return 13;
  }

  return result;
}

BOOL CSLPRFStingAccessibilityActionTypeIsAvailable(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 == 14;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t CSLPRFStingAccessibilityActionTypeTripleClickOption(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_22CEC0EF8[a1 - 1];
  }
}

__CFString *CSLPRFStingAccessibilityActionTypeName(uint64_t a1)
{
  v2 = &stru_28401BD18;
  if (a1 && a1 != 14)
  {
    AXTripleClickHelpersClass = getAXTripleClickHelpersClass();
    if ((a1 - 1) > 0xB)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_22CEC0EF8[a1 - 1];
    }

    v2 = [AXTripleClickHelpersClass titleForTripleClickOption:v4];
  }

  return v2;
}

id getAXTripleClickHelpersClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXTripleClickHelpersClass_softClass;
  v7 = getAXTripleClickHelpersClass_softClass;
  if (!getAXTripleClickHelpersClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXTripleClickHelpersClass_block_invoke;
    v3[3] = &unk_278744668;
    v3[4] = &v4;
    __getAXTripleClickHelpersClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_22CE9ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXTripleClickHelpersClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278744688;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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
  result = objc_getClass("AXTripleClickHelpers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAXTripleClickHelpersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *CSLPRFStingAccessibilityActionTypeIdentifier(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_2787446A0[a1];
  }
}

uint64_t CSLPRFIdentifierToStingAccessibilityActionType(void *a1)
{
  v1 = CSLPRFIdentifierToStingAccessibilityActionType_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&CSLPRFIdentifierToStingAccessibilityActionType_onceToken, &__block_literal_global_513);
  }

  v3 = [CSLPRFIdentifierToStingAccessibilityActionType___identifierToActionType objectForKeyedSubscript:v2];

  v4 = [v3 integerValue];
  return v4;
}

void __CSLPRFIdentifierToStingAccessibilityActionType_block_invoke()
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 14; ++i)
  {
    if (i >= 0xD)
    {
      v1 = 0;
    }

    else
    {
      v1 = off_2787446A0[i];
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v5 setObject:v2 forKeyedSubscript:v1];
    }
  }

  v3 = [v5 copy];
  v4 = CSLPRFIdentifierToStingAccessibilityActionType___identifierToActionType;
  CSLPRFIdentifierToStingAccessibilityActionType___identifierToActionType = v3;
}

void CSLPRFPerformAccessibilityActionForIdentifier(void *a1)
{
  v1 = CSLPRFIdentifierToStingAccessibilityActionType(a1);
  if (v1 == 9)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"HearingAidPresentAlertNotificationName" object:0];
  }

  else if ((v1 - 1) <= 0xB)
  {
    v2 = dword_22CEC0EF8[v1 - 1];
    AXTripleClickHelpersClass = getAXTripleClickHelpersClass();

    [AXTripleClickHelpersClass toggleTripleClickOption:v2 fromSource:1];
  }
}

void sub_22CE9EA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CE9F07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__867(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CE9F504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CE9FC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22CEA496C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_22CEA6020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_DWORD *CSLPRFStateDataWithTitleDescriptionAndHints(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 || ![(__CFString *)v3 length])
  {

    v3 = @"<nil title>";
  }

  if (v4 && [v4 length] && objc_msgSend(MEMORY[0x277CCAC58], "propertyList:isValidForFormat:", v4, 200))
  {
    v12 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v4 format:200 options:0 error:&v12];
    v6 = v12;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"no descriptive state data or state data is not in property list format, please file a radar, description = %@", v4];
    v11 = 0;
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v11];
    v6 = v11;
  }

  if (v5)
  {
    v8 = [v5 length];
    v9 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
    *v9 = 1;
    v9[1] = v8;
    [(__CFString *)v3 UTF8String];
    __strlcpy_chk();
    memcpy(v9 + 50, [v5 bytes], v8);
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1000040BEF03554uLL);
  }

  return v9;
}

void sub_22CEA7E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2061(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CEA815C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22CEA8408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22CEA86C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22CEA88B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_22CEA8AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

id cslprf_app_library_log()
{
  if (cslprf_app_library_log_onceToken != -1)
  {
    dispatch_once(&cslprf_app_library_log_onceToken, &__block_literal_global_2203);
  }

  v1 = cslprf_app_library_log___logger;

  return v1;
}

uint64_t __cslprf_app_library_log_block_invoke()
{
  cslprf_app_library_log___logger = os_log_create("com.apple.Carousel", "app_library");

  return MEMORY[0x2821F96F8]();
}

id cslprf_app_switcher_log()
{
  if (cslprf_app_switcher_log_onceToken != -1)
  {
    dispatch_once(&cslprf_app_switcher_log_onceToken, &__block_literal_global_4);
  }

  v1 = cslprf_app_switcher_log___logger;

  return v1;
}

uint64_t __cslprf_app_switcher_log_block_invoke()
{
  cslprf_app_switcher_log___logger = os_log_create("com.apple.Carousel", "app_switcher");

  return MEMORY[0x2821F96F8]();
}

id cslprf_dock_log()
{
  if (cslprf_dock_log_onceToken != -1)
  {
    dispatch_once(&cslprf_dock_log_onceToken, &__block_literal_global_7);
  }

  v1 = cslprf_dock_log___logger;

  return v1;
}

uint64_t __cslprf_dock_log_block_invoke()
{
  cslprf_dock_log___logger = os_log_create("com.apple.Carousel", "dock");

  return MEMORY[0x2821F96F8]();
}

id cslprf_sessions_log()
{
  if (cslprf_sessions_log_onceToken != -1)
  {
    dispatch_once(&cslprf_sessions_log_onceToken, &__block_literal_global_10);
  }

  v1 = cslprf_sessions_log___logger;

  return v1;
}

uint64_t __cslprf_sessions_log_block_invoke()
{
  cslprf_sessions_log___logger = os_log_create("com.apple.Carousel", "sessions");

  return MEMORY[0x2821F96F8]();
}

id cslprf_settings_log()
{
  if (cslprf_settings_log_onceToken != -1)
  {
    dispatch_once(&cslprf_settings_log_onceToken, &__block_literal_global_13);
  }

  v1 = cslprf_settings_log___logger;

  return v1;
}

uint64_t __cslprf_settings_log_block_invoke()
{
  cslprf_settings_log___logger = os_log_create("com.apple.Carousel", "settings");

  return MEMORY[0x2821F96F8]();
}

id cslprf_sting_log()
{
  if (cslprf_sting_log_onceToken != -1)
  {
    dispatch_once(&cslprf_sting_log_onceToken, &__block_literal_global_16);
  }

  v1 = cslprf_sting_log___logger;

  return v1;
}

uint64_t __cslprf_sting_log_block_invoke()
{
  cslprf_sting_log___logger = os_log_create("com.apple.Carousel", "sting");

  return MEMORY[0x2821F96F8]();
}

id cslprf_sting_settings_log()
{
  if (cslprf_sting_settings_log_onceToken != -1)
  {
    dispatch_once(&cslprf_sting_settings_log_onceToken, &__block_literal_global_19);
  }

  v1 = cslprf_sting_settings_log___logger;

  return v1;
}

uint64_t __cslprf_sting_settings_log_block_invoke()
{
  cslprf_sting_settings_log___logger = os_log_create("com.apple.Carousel", "sting_settings");

  return MEMORY[0x2821F96F8]();
}

id cslprf_systemstate_log()
{
  if (cslprf_systemstate_log_onceToken != -1)
  {
    dispatch_once(&cslprf_systemstate_log_onceToken, &__block_literal_global_22);
  }

  v1 = cslprf_systemstate_log___logger;

  return v1;
}

uint64_t __cslprf_systemstate_log_block_invoke()
{
  cslprf_systemstate_log___logger = os_log_create("com.apple.Carousel", "systemstate");

  return MEMORY[0x2821F96F8]();
}

id cslprf_backlight_log()
{
  if (cslprf_backlight_log_onceToken != -1)
  {
    dispatch_once(&cslprf_backlight_log_onceToken, &__block_literal_global_25);
  }

  v1 = cslprf_backlight_log___logger;

  return v1;
}

uint64_t __cslprf_backlight_log_block_invoke()
{
  cslprf_backlight_log___logger = os_log_create("com.apple.Carousel", "backlight");

  return MEMORY[0x2821F96F8]();
}

id cslprf_diagnostics_log()
{
  if (cslprf_diagnostics_log_onceToken != -1)
  {
    dispatch_once(&cslprf_diagnostics_log_onceToken, &__block_literal_global_28);
  }

  v1 = cslprf_diagnostics_log___logger;

  return v1;
}

uint64_t __cslprf_diagnostics_log_block_invoke()
{
  cslprf_diagnostics_log___logger = os_log_create("com.apple.Carousel", "diagnostics");

  return MEMORY[0x2821F96F8]();
}

id cslprf_fluidui_log()
{
  if (cslprf_fluidui_log_onceToken != -1)
  {
    dispatch_once(&cslprf_fluidui_log_onceToken, &__block_literal_global_31);
  }

  v1 = cslprf_fluidui_log___logger;

  return v1;
}

uint64_t __cslprf_fluidui_log_block_invoke()
{
  cslprf_fluidui_log___logger = os_log_create("com.apple.Carousel", "fluidui");

  return MEMORY[0x2821F96F8]();
}

id cslprf_icon_log()
{
  if (cslprf_icon_log_onceToken != -1)
  {
    dispatch_once(&cslprf_icon_log_onceToken, &__block_literal_global_34);
  }

  v1 = cslprf_icon_log___logger;

  return v1;
}

uint64_t __cslprf_icon_log_block_invoke()
{
  cslprf_icon_log___logger = os_log_create("com.apple.Carousel", "icon");

  return MEMORY[0x2821F96F8]();
}

id cslprf_icon_field_log()
{
  if (cslprf_icon_field_log_onceToken != -1)
  {
    dispatch_once(&cslprf_icon_field_log_onceToken, &__block_literal_global_37);
  }

  v1 = cslprf_icon_field_log___logger;

  return v1;
}

uint64_t __cslprf_icon_field_log_block_invoke()
{
  cslprf_icon_field_log___logger = os_log_create("com.apple.Carousel", "icon_field");

  return MEMORY[0x2821F96F8]();
}

id cslprf_startup_log()
{
  if (cslprf_startup_log_onceToken != -1)
  {
    dispatch_once(&cslprf_startup_log_onceToken, &__block_literal_global_40);
  }

  v1 = cslprf_startup_log___logger;

  return v1;
}

uint64_t __cslprf_startup_log_block_invoke()
{
  cslprf_startup_log___logger = os_log_create("com.apple.Carousel", "startup");

  return MEMORY[0x2821F96F8]();
}

id cslprf_ui_log()
{
  if (cslprf_ui_log_onceToken != -1)
  {
    dispatch_once(&cslprf_ui_log_onceToken, &__block_literal_global_43);
  }

  v1 = cslprf_ui_log___logger;

  return v1;
}

uint64_t __cslprf_ui_log_block_invoke()
{
  cslprf_ui_log___logger = os_log_create("com.apple.Carousel", "ui");

  return MEMORY[0x2821F96F8]();
}

double CSLPRFClip(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double CSLPRFPercent(double a1, double a2, double a3)
{
  v4 = a3 - a2;
  result = 1.0;
  if (v4 != 0.0)
  {
    return (a1 - a2) / v4;
  }

  return result;
}

uint64_t _CSLPairingIsTinker()
{
  v0 = [MEMORY[0x277D37B50] sharedInstance];
  v1 = [v0 getDevicesExcluding:5];
  v2 = [v1 firstObject];

  v3 = [v2 isAltAccount];
  return v3;
}

uint64_t CSLPairingIsTinker()
{
  v0 = +[CSLPRFPairing shared];
  v1 = [v0 isTinker];

  return v1;
}

uint64_t CSLSAllowReturnToAppUntilCrownPress()
{
  v8 = *MEMORY[0x277D85DE8];
  if (CSLSAllowReturnToAppUntilCrownPress_onceToken != -1)
  {
    dispatch_once(&CSLSAllowReturnToAppUntilCrownPress_onceToken, &__block_literal_global_3122);
  }

  if (CSLSAllowReturnToAppUntilCrownPress___canControlReturnToAppUntilCrownPress == 1)
  {
    LOBYTE(v5[0]) = 0;
    if (CFPreferencesGetAppBooleanValue(@"AllowReturnToAppUntilCrownPress", @"com.apple.nano", v5))
    {
      v0 = LOBYTE(v5[0]) == 0;
    }

    else
    {
      v0 = 1;
    }

    v1 = !v0;
  }

  else
  {
    v1 = 1;
  }

  if (CSLSAllowReturnToAppUntilCrownPress_log == 1)
  {
    v2 = cslprf_sessions_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109376;
      v5[1] = CSLSAllowReturnToAppUntilCrownPress___canControlReturnToAppUntilCrownPress;
      v6 = 1024;
      v7 = v1;
      _os_log_impl(&dword_22CE92000, v2, OS_LOG_TYPE_DEFAULT, "__canControlReturnToAppUntilCrownPress = %{BOOL}u, allowReturnToAppUntilCrownPress = %{BOOL}u", v5, 0xEu);
    }

    CSLSAllowReturnToAppUntilCrownPress_log = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void __CSLSAllowReturnToAppUntilCrownPress_block_invoke()
{
  v0 = [MEMORY[0x277D37B50] sharedInstance];
  v1 = [v0 getActivePairedDeviceExcludingAltAccount];

  CSLSAllowReturnToAppUntilCrownPress___canControlReturnToAppUntilCrownPress = [v1 supportsCapability:655491368];
  CSLSAllowReturnToAppUntilCrownPress_log = 1;
}

void sub_22CEAFA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEAFBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3175(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3268(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CEB44B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22CEB4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEB52B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CSLPRFConfigurationSourceString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"setup";
  }

  else
  {
    return off_278745030[a1 - 1];
  }
}

void sub_22CEB5F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEB62BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4003(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CEB64D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEB6F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEB7298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22CEB7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CSLAlertServiceIsApplePay(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.nanopassbook.alert"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.nanopassbook.transactioncompletealert"];
  }

  return v2;
}

uint64_t CSLAlertServiceOverControlCenter(void *a1)
{
  v1 = a1;
  if (CSLAlertServiceIsApplePay(v1))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.sharing.auth"];
  }

  return v2;
}

void sub_22CEB878C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4366(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22CEB8930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CSLPRFEqualLiveActivitiesAppSettingsValues(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    v10 = 1;
  }

  else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [v3 globalAllowLiveActivities], v5 == objc_msgSend(v4, "globalAllowLiveActivities")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v6 = objc_msgSend(v3, "globalAutoLaunchLiveActivities"), v6 == objc_msgSend(v4, "globalAutoLaunchLiveActivities")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v7 = objc_msgSend(v3, "allowLiveActivitiesForApp"), v7 == objc_msgSend(v4, "allowLiveActivitiesForApp")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v8 = objc_msgSend(v3, "autoLaunchBehaviorForApp"), v8 == objc_msgSend(v4, "autoLaunchBehaviorForApp")) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v9 = [v3 supportsSmartStack];
    v10 = v9 ^ [v4 supportsSmartStack] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

__CFString *CSLPRFLiveActivitiesAutoLaunchAppSettingToNSString(uint64_t a1)
{
  v1 = @"Off";
  if (a1 == 1)
  {
    v1 = @"Smart Stack";
  }

  if (a1 == 2)
  {
    return @"App";
  }

  else
  {
    return v1;
  }
}

void sub_22CEBC850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CSLAppSwitcherModeToNSString(uint64_t a1)
{
  if (a1)
  {
    return @"mru";
  }

  else
  {
    return @"favorites";
  }
}

void sub_22CEBD1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}