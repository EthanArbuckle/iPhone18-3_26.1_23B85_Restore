void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_23161C374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_23161C538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23161C71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23161C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23161DEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t CAFPreferencesGetBoolean(const __CFString *a1, unsigned int a2)
{
  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppBooleanValue(a1, @"com.apple.CarAccessoryFramework", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

double CAFPreferencesGetDouble(void *a1, double a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithDouble:a2];
  v6 = CAFPreferencesGetNumber(v4, v5);

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

id CAFPreferencesGetNumber(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

id CAFPreferencesGetArray(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

BOOL CAFDefaultsHasValue(void *a1)
{
  v1 = MEMORY[0x277CBEBD0];
  v2 = a1;
  v3 = [v1 standardUserDefaults];
  v4 = [v3 valueForKey:v2];

  return v4 != 0;
}

uint64_t CAFDefaultsGetBoolean(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a1;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 valueForKey:v4];

  if (v6)
  {
    a2 = [v6 BOOLValue];
  }

  return a2;
}

__CFString *NSStringFromCharacteristicMetadataFormat(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"unknown";
  }

  else
  {
    return off_27890D6E8[a1];
  }
}

void sub_23162689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_5_0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_7_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_8_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_23162A400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23162A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x34u);
}

void sub_23162AF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23162B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23162BCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23162DC24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

id CAFFrameworkBundle()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 0);
  v1 = [v0 objectAtIndex:0];

  v2 = [GSSystemRootDirectory() stringByAppendingPathComponent:v1];
  v3 = [v2 stringByAppendingPathComponent:@"PrivateFrameworks/CarAccessoryFramework.framework"];

  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v3];

  return v4;
}

id CAFAppIdentifier()
{
  if (CAFAppIdentifier_onceToken != -1)
  {
    CAFAppIdentifier_cold_1();
  }

  v1 = CAFAppIdentifier_appIdentifier;

  return v1;
}

void __CAFAppIdentifier_block_invoke()
{
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v6 bundleIdentifier];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    v3 = CAFAppIdentifier_appIdentifier;
    CAFAppIdentifier_appIdentifier = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 processName];
    v5 = CAFAppIdentifier_appIdentifier;
    CAFAppIdentifier_appIdentifier = v4;
  }
}

id CAFAppInfo()
{
  if (CAFAppInfo_onceToken != -1)
  {
    CAFAppInfo_cold_1();
  }

  v1 = CAFAppInfo_appInfo;

  return v1;
}

void __CAFAppInfo_block_invoke()
{
  v16[2] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    [v0 addObject:v5];
  }

  v6 = [MEMORY[0x277CCAC38] processInfo];
  v7 = [v6 processName];
  v16[0] = v7;
  v8 = MEMORY[0x277CCABB0];
  v9 = [MEMORY[0x277CCAC38] processInfo];
  v10 = [v8 numberWithInt:{objc_msgSend(v9, "processIdentifier")}];
  v11 = [v10 description];
  v16[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v0 addObjectsFromArray:v12];

  v13 = [v0 componentsJoinedByString:@"-"];
  v14 = CAFAppInfo_appInfo;
  CAFAppInfo_appInfo = v13;

  v15 = *MEMORY[0x277D85DE8];
}

id NSStringFromDefrostTypes(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:1])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [v2 stringWithFormat:@"blownAir=%@", v3];
  v15[0] = v4;
  v5 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:2])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v5 stringWithFormat:@"filament=%@", v6];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v9 = MEMORY[0x277CCACA8];
  v10 = [CAFBitMaskUtilities description:a1 optionCount:2];
  v11 = [v8 componentsJoinedByString:@" "];
  v12 = [v9 stringWithFormat:@"(%@) %@", v10, v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id NSStringFromSettingProminenceLevel(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:1])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [v2 stringWithFormat:@"appHomeTile=%@", v3];
  v15[0] = v4;
  v5 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:8])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v5 stringWithFormat:@"homescreen=%@", v6];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v9 = MEMORY[0x277CCACA8];
  v10 = [CAFBitMaskUtilities description:a1 optionCount:2];
  v11 = [v8 componentsJoinedByString:@" "];
  v12 = [v9 stringWithFormat:@"(%@) %@", v10, v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id NSStringFromVentTypes(uint64_t a1)
{
  v24[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:1])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = [v2 stringWithFormat:@"window=%@", v3];
  v24[0] = v4;
  v5 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:2])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [v5 stringWithFormat:@"upper=%@", v6];
  v24[1] = v7;
  v8 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:4])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v8 stringWithFormat:@"lower=%@", v9];
  v24[2] = v10;
  v11 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:8])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v11 stringWithFormat:@"neck=%@", v12];
  v24[3] = v13;
  v14 = MEMORY[0x277CCACA8];
  if ([CAFBitMaskUtilities bitmask:a1 hasOption:16])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v14 stringWithFormat:@"middle=%@", v15];
  v24[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];

  v18 = MEMORY[0x277CCACA8];
  v19 = [CAFBitMaskUtilities description:a1 optionCount:5];
  v20 = [v17 componentsJoinedByString:@" "];
  v21 = [v18 stringWithFormat:@"(%@) %@", v19, v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

__CFString *NSStringFromAppearanceMode(int a1)
{
  v1 = @"Dark";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Light";
  }
}

__CFString *NSStringFromAudioContentBadge(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E098[a1];
  }
}

__CFString *NSStringFromAutoModeIntensity(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E0B0[a1];
  }
}

__CFString *NSStringFromBatteryConditioningState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E0D8[a1];
  }
}

__CFString *NSStringFromBatteryLevelState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E0F0[a1];
  }
}

__CFString *NSStringFromButtonAction(int a1)
{
  v1 = @"PerformAction";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Ready";
  }
}

__CFString *NSStringFromCableState(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E108[a1];
  }
}

__CFString *NSStringFromCellularType(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_27890E130[a1];
  }
}

__CFString *NSStringFromChargingState(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_27890E1B0[a1];
  }
}

__CFString *NSStringFromDriverSide(int a1)
{
  v1 = @"RightHandDrive";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"LeftHandDrive";
  }
}

__CFString *NSStringFromEqualizerType(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27890E210[a1];
  }
}

__CFString *NSStringFromFillLevelLabel(int a1)
{
  v1 = @"ZeroToOne";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"EmptyToFull";
  }
}

__CFString *NSStringFromFuelLevelState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E230[a1];
  }
}

__CFString *NSStringFromGeodeticSystem(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E248[a1];
  }
}

__CFString *NSStringFromIcyConditions(int a1)
{
  v1 = @"Warning";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Off";
  }
}

__CFString *NSStringFromImageColor(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_27890E260[a1];
  }
}

__CFString *NSStringFromLockState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E2E0[a1];
  }
}

__CFString *NSStringFromMediaCategory(unsigned int a1)
{
  if (a1 > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_27890E2F8[a1];
  }
}

__CFString *NSStringFromMediaSourceSemanticType(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_27890E458[a1];
  }
}

__CFString *NSStringFromModuleStatus(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_27890E4A0[a1];
  }
}

__CFString *NSStringFromNotificationSeverity(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E4D0[a1];
  }
}

__CFString *NSStringFromPairedDeviceState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E4E8[a1];
  }
}

__CFString *NSStringFromPlaybackState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E500[a1];
  }
}

uint64_t NSStringFromPortSideIndicator(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return *(&off_27890E518 + a1);
  }
}

__CFString *NSStringFromPowerState(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_27890E560[a1];
  }
}

__CFString *NSStringFromPressureState(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_27890E590[a1];
  }
}

__CFString *NSStringFromProximityAlert(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E5C0[a1];
  }
}

__CFString *NSStringFromRotationalSpeedState(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27890E5D8[a1];
  }
}

__CFString *NSStringFromRouteState(char a1)
{
  if ((a1 + 1) > 7u)
  {
    return 0;
  }

  else
  {
    return off_27890E5F8[(a1 + 1)];
  }
}

__CFString *NSStringFromSeatBeltIndicator(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E638[a1];
  }
}

__CFString *NSStringFromSeatOccupancy(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_27890E650[a1];
  }
}

__CFString *NSStringFromSensorState(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E670[a1];
  }
}

__CFString *NSStringFromSettingsCategory(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E698[a1];
  }
}

__CFString *NSStringFromTargetSpeedState(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E6C0[a1];
  }
}

__CFString *NSStringFromTemperatureState(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E6E8[a1];
  }
}

__CFString *NSStringFromTrailingButtonType(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27890E700[a1];
  }
}

__CFString *NSStringFromTransmissionMode(int a1)
{
  v1 = @"R";
  v2 = @"S";
  if (a1 != 83)
  {
    v2 = 0;
  }

  if (a1 != 82)
  {
    v1 = v2;
  }

  v3 = @"P";
  if (a1 != 80)
  {
    v3 = 0;
  }

  if (a1 == 78)
  {
    v3 = @"N";
  }

  if (a1 <= 81)
  {
    v1 = v3;
  }

  v4 = @"L";
  v5 = @"M";
  if (a1 != 77)
  {
    v5 = 0;
  }

  if (a1 != 76)
  {
    v4 = v5;
  }

  v6 = @"D";
  if (a1 != 68)
  {
    v6 = 0;
  }

  if (!a1)
  {
    v6 = @"None";
  }

  if (a1 <= 75)
  {
    v4 = v6;
  }

  if (a1 <= 77)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromTurnSignal(int a1)
{
  v1 = @"On";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Off";
  }
}

__CFString *NSStringFromUIEmphasizedEngineGauge(int a1)
{
  v1 = @"ElectricEnginePower";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"CombustionEngineRPM";
  }
}

__CFString *NSStringFromUIInputDeviceButtonEvent(int a1)
{
  v1 = @"ButtonDown";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"ButtonUp";
  }
}

__CFString *NSStringFromUIInputDevicePurpose(int a1)
{
  v1 = @"Back";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Select";
  }
}

__CFString *NSStringFromUISceneState(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27890E718[a1];
  }
}

__CFString *NSStringFromUnitType(int a1)
{
  result = 0;
  if (a1 > 556)
  {
    if (a1 > 785)
    {
      if (a1 <= 980)
      {
        if (a1 <= 886)
        {
          if (a1 > 882)
          {
            v3 = @"watts";
            v31 = @"milliwatts";
            if (a1 != 886)
            {
              v31 = 0;
            }

            if (a1 != 885)
            {
              v3 = v31;
            }

            v5 = @"megawatts";
            v32 = @"kilowatts";
            if (a1 != 884)
            {
              v32 = 0;
            }

            if (a1 != 883)
            {
              v5 = v32;
            }

            v7 = a1 <= 884;
          }

          else
          {
            v3 = @"terawatts";
            v12 = @"gigawatts";
            if (a1 != 882)
            {
              v12 = 0;
            }

            if (a1 != 881)
            {
              v3 = v12;
            }

            v5 = @"metricTons";
            v13 = @"slugs";
            if (a1 != 787)
            {
              v13 = 0;
            }

            if (a1 != 786)
            {
              v5 = v13;
            }

            v7 = a1 <= 880;
          }
        }

        else
        {
          if (a1 > 890)
          {
            if (a1 <= 931)
            {
              v19 = @"horsepower";
              v20 = @"newtonsPerMetersSquared";
              if (a1 != 931)
              {
                v20 = 0;
              }

              v22 = a1 == 891;
              goto LABEL_215;
            }

            switch(a1)
            {
              case 932:
                return @"kilopascals";
              case 933:
                return @"poundsForcePerSquareInch";
              case 934:
                return @"bars";
            }

            return result;
          }

          v3 = @"picowatts";
          v25 = @"femtowatts";
          if (a1 != 890)
          {
            v25 = 0;
          }

          if (a1 != 889)
          {
            v3 = v25;
          }

          v5 = @"microwatts";
          v26 = @"nanowatts";
          if (a1 != 888)
          {
            v26 = 0;
          }

          if (a1 != 887)
          {
            v5 = v26;
          }

          v7 = a1 <= 888;
        }
      }

      else if (a1 > 1130)
      {
        if (a1 > 1134)
        {
          if (a1 <= 1204)
          {
            v19 = @"gallons";
            v20 = @"milliliters";
            if (a1 != 1136)
            {
              v20 = 0;
            }

            v22 = a1 == 1135;
            goto LABEL_215;
          }

          switch(a1)
          {
            case 1205:
              return @"percent";
            case 1251:
              return @"newtonMeter";
            case 1252:
              return @"footPound";
          }

          return result;
        }

        v3 = @"cubicFeet";
        v39 = @"fluidOunces";
        if (a1 != 1134)
        {
          v39 = 0;
        }

        if (a1 != 1133)
        {
          v3 = v39;
        }

        v5 = @"liters";
        v40 = @"cubicMeters";
        if (a1 != 1132)
        {
          v40 = 0;
        }

        if (a1 != 1131)
        {
          v5 = v40;
        }

        v7 = a1 <= 1132;
      }

      else
      {
        if (a1 > 1032)
        {
          if (a1 <= 1080)
          {
            v19 = @"milesPerHour";
            v20 = @"metersPerHour";
            if (a1 != 1034)
            {
              v20 = 0;
            }

            v22 = a1 == 1033;
            goto LABEL_215;
          }

          switch(a1)
          {
            case 1081:
              return @"fahrenheit";
            case 1082:
              return @"celsius";
            case 1083:
              return @"kelvin";
          }

          return result;
        }

        v3 = @"metersPerSecond";
        v35 = @"kilometersPerHour";
        if (a1 != 1032)
        {
          v35 = 0;
        }

        if (a1 != 1031)
        {
          v3 = v35;
        }

        v5 = @"revolutionsPerMinute";
        v36 = @"degreesPerSecond";
        if (a1 != 982)
        {
          v36 = 0;
        }

        if (a1 != 981)
        {
          v5 = v36;
        }

        v7 = a1 <= 1030;
      }
    }

    else
    {
      if (a1 <= 671)
      {
        switch(a1)
        {
          case 601:
            result = @"wattHoursPerKilometer";
            break;
          case 602:
            result = @"milliwattHoursPerKilometer";
            break;
          case 603:
            result = @"wattHoursPerMile";
            break;
          case 604:
            result = @"kilowattHoursPer100Kilometers";
            break;
          case 605:
            result = @"kilowattHoursPer100Miles";
            break;
          case 606:
            result = @"milesPerKilowattHour";
            break;
          case 607:
            result = @"kilometersPerKilowattHour";
            break;
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
            return result;
          case 621:
            result = @"terahertz";
            break;
          case 622:
            result = @"gigahertz";
            break;
          case 623:
            result = @"megahertz";
            break;
          case 624:
            result = @"kilohertz";
            break;
          case 625:
            result = @"hertz";
            break;
          case 626:
            result = @"millihertz";
            break;
          case 627:
            result = @"microhertz";
            break;
          case 628:
            result = @"nanohertz";
            break;
          default:
            v19 = @"milliwattHours";
            v20 = @"litersPer100Kilometers";
            if (a1 != 671)
            {
              v20 = 0;
            }

            v22 = a1 == 557;
            goto LABEL_215;
        }

        return result;
      }

      if (a1 > 744)
      {
        if (a1 > 780)
        {
          if (a1 > 782)
          {
            if (a1 == 783)
            {
              return @"milligrams";
            }

            if (a1 == 784)
            {
              return @"ounces";
            }

            return @"poundsMass";
          }

          v19 = @"kilograms";
          v20 = @"grams";
          if (a1 != 782)
          {
            v20 = 0;
          }

          v22 = a1 == 781;
          goto LABEL_215;
        }

        v3 = @"gigabytes";
        v37 = @"terabytes";
        if (a1 != 748)
        {
          v37 = 0;
        }

        if (a1 != 747)
        {
          v3 = v37;
        }

        v5 = @"kilobytes";
        v38 = @"megabytes";
        if (a1 != 746)
        {
          v38 = 0;
        }

        if (a1 != 745)
        {
          v5 = v38;
        }

        v7 = a1 <= 746;
      }

      else
      {
        if (a1 > 720)
        {
          if (a1 > 741)
          {
            if (a1 == 742)
            {
              return @"megabits";
            }

            if (a1 == 743)
            {
              return @"gigabits";
            }

            return @"terabits";
          }

          v19 = @"lux";
          v20 = @"kilobits";
          if (a1 != 741)
          {
            v20 = 0;
          }

          v22 = a1 == 721;
          goto LABEL_215;
        }

        v3 = @"millilitersPer100Kilometers";
        v33 = @"kilometersPerLiter";
        if (a1 != 675)
        {
          v33 = 0;
        }

        if (a1 != 674)
        {
          v3 = v33;
        }

        v5 = @"milesPerGallon";
        v34 = @"milesPerImperialGallon";
        if (a1 != 673)
        {
          v34 = 0;
        }

        if (a1 != 672)
        {
          v5 = v34;
        }

        v7 = a1 <= 673;
      }
    }

LABEL_191:
    if (v7)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }

  if (a1 > 225)
  {
    if (a1 <= 400)
    {
      if (a1 <= 303)
      {
        v3 = @"megaampereHours";
        v14 = @"kiloampereHours";
        if (a1 != 303)
        {
          v14 = 0;
        }

        if (a1 != 302)
        {
          v3 = v14;
        }

        v15 = @"hours";
        v16 = @"coulombs";
        if (a1 != 301)
        {
          v16 = 0;
        }

        if (a1 != 253)
        {
          v15 = v16;
        }

        if (a1 <= 301)
        {
          v3 = v15;
        }

        v5 = @"partsPerMillion";
        v17 = @"seconds";
        v18 = @"minutes";
        if (a1 != 252)
        {
          v18 = 0;
        }

        if (a1 != 251)
        {
          v17 = v18;
        }

        if (a1 != 226)
        {
          v5 = v17;
        }

        v7 = a1 <= 252;
      }

      else if (a1 > 351)
      {
        v3 = @"milliamperes";
        v23 = @"microamperes";
        if (a1 != 355)
        {
          v23 = 0;
        }

        if (a1 != 354)
        {
          v3 = v23;
        }

        v5 = @"kiloamperes";
        v24 = @"amperes";
        if (a1 != 353)
        {
          v24 = 0;
        }

        if (a1 != 352)
        {
          v5 = v24;
        }

        v7 = a1 <= 353;
      }

      else
      {
        v3 = @"microampereHours";
        v8 = @"megaamperes";
        if (a1 != 351)
        {
          v8 = 0;
        }

        if (a1 != 306)
        {
          v3 = v8;
        }

        v5 = @"ampereHours";
        v9 = @"milliampereHours";
        if (a1 != 305)
        {
          v9 = 0;
        }

        if (a1 != 304)
        {
          v5 = v9;
        }

        v7 = a1 <= 305;
      }
    }

    else if (a1 > 453)
    {
      if (a1 > 552)
      {
        v3 = @"kilowattHours";
        v29 = @"wattHours";
        if (a1 != 556)
        {
          v29 = 0;
        }

        if (a1 != 555)
        {
          v3 = v29;
        }

        v5 = @"kilocalories";
        v30 = @"calories";
        if (a1 != 554)
        {
          v30 = 0;
        }

        if (a1 != 553)
        {
          v5 = v30;
        }

        v7 = a1 <= 554;
      }

      else
      {
        v3 = @"kilojoules";
        v10 = @"joules";
        if (a1 != 552)
        {
          v10 = 0;
        }

        if (a1 != 551)
        {
          v3 = v10;
        }

        v5 = @"milliohms";
        v11 = @"microohms";
        if (a1 != 455)
        {
          v11 = 0;
        }

        if (a1 != 454)
        {
          v5 = v11;
        }

        v7 = a1 <= 550;
      }
    }

    else if (a1 > 404)
    {
      v3 = @"kiloohms";
      v27 = @"ohms";
      if (a1 != 453)
      {
        v27 = 0;
      }

      if (a1 != 452)
      {
        v3 = v27;
      }

      v5 = @"microvolts";
      v28 = @"megaohms";
      if (a1 != 451)
      {
        v28 = 0;
      }

      if (a1 != 405)
      {
        v5 = v28;
      }

      v7 = a1 <= 451;
    }

    else
    {
      v3 = @"volts";
      v4 = @"millivolts";
      if (a1 != 404)
      {
        v4 = 0;
      }

      if (a1 != 403)
      {
        v3 = v4;
      }

      v5 = @"megavolts";
      v6 = @"kilovolts";
      if (a1 != 402)
      {
        v6 = 0;
      }

      if (a1 != 401)
      {
        v5 = v6;
      }

      v7 = a1 <= 402;
    }

    goto LABEL_191;
  }

  if (a1 <= 120)
  {
    if (a1 > 25)
    {
      switch(a1)
      {
        case '.':
          result = @"degrees";
          break;
        case '/':
          result = @"arcMinutes";
          break;
        case '0':
          result = @"arcSeconds";
          break;
        case '1':
          result = @"radians";
          break;
        case '2':
          result = @"gradians";
          break;
        case '3':
          result = @"revolutions";
          break;
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
          return result;
        case 'G':
          result = @"squareKilometers";
          break;
        case 'H':
          result = @"squareMeters";
          break;
        case 'I':
          result = @"squareCentimeters";
          break;
        case 'J':
          result = @"squareMillimeters";
          break;
        case 'K':
          result = @"squareMicrometers";
          break;
        case 'L':
          result = @"squareNanometers";
          break;
        case 'M':
          result = @"squareInches";
          break;
        case 'N':
          result = @"squareFeet";
          break;
        case 'O':
          result = @"squareYards";
          break;
        case 'P':
          result = @"squareMiles";
          break;
        case 'Q':
          result = @"acres";
          break;
        case 'R':
          result = @"ares";
          break;
        case 'S':
          result = @"hectares";
          break;
        default:
          if (a1 == 26)
          {
            result = @"aqi";
          }

          else
          {
            result = 0;
          }

          break;
      }

      return result;
    }

    v19 = @"undefined";
    v20 = @"metersPerSecondSquared";
    v21 = @"gravity";
    if (a1 != 2)
    {
      v21 = 0;
    }

    if (a1 != 1)
    {
      v20 = v21;
    }

    v22 = a1 == 0;
LABEL_215:
    if (v22)
    {
      return v19;
    }

    else
    {
      return v20;
    }
  }

  switch(a1)
  {
    case 151:
      result = @"kilometers";
      break;
    case 152:
      result = @"hectometers";
      break;
    case 153:
      result = @"decameters";
      break;
    case 154:
      result = @"meters";
      break;
    case 155:
      result = @"decimeters";
      break;
    case 156:
      result = @"centimeters";
      break;
    case 157:
      result = @"millimeters";
      break;
    case 158:
      result = @"micrometers";
      break;
    case 159:
      result = @"nanometers";
      break;
    case 160:
      result = @"picometers";
      break;
    case 161:
      result = @"inches";
      break;
    case 162:
      result = @"feet";
      break;
    case 163:
      result = @"yards";
      break;
    case 164:
      result = @"miles";
      break;
    default:
      v19 = @"gramsPerLiter";
      v20 = @"milligramsPerDeciliter";
      if (a1 != 122)
      {
        v20 = 0;
      }

      v22 = a1 == 121;
      goto LABEL_215;
  }

  return result;
}

id NSUnitFromCAFUnitType(int a1)
{
  v2 = 0;
  if (a1 > 600)
  {
    if (a1 <= 785)
    {
      if (a1 > 672)
      {
        if (a1 <= 744)
        {
          if (a1 > 740)
          {
            if (a1 > 742)
            {
              if (a1 == 743)
              {
                [MEMORY[0x277CCAE18] gigabits];
              }

              else
              {
                [MEMORY[0x277CCAE18] terabits];
              }
            }

            else if (a1 == 741)
            {
              [MEMORY[0x277CCAE18] kilobits];
            }

            else
            {
              [MEMORY[0x277CCAE18] megabits];
            }

            goto LABEL_161;
          }

          if (a1 <= 674)
          {
            if (a1 == 673)
            {
              [MEMORY[0x277CCAE08] milesPerImperialGallon];
            }

            else
            {
              [MEMORY[0x277CCAE08] millilitersPer100Kilometers];
            }

            goto LABEL_161;
          }

          if (a1 == 675)
          {
            v2 = [MEMORY[0x277CCAE08] kilometersPerLiter];
          }

          else if (a1 == 721)
          {
            v2 = [MEMORY[0x277CCAE10] lux];
          }
        }

        else
        {
          if (a1 > 780)
          {
            if (a1 <= 782)
            {
              if (a1 == 781)
              {
                [MEMORY[0x277CCAE28] kilograms];
              }

              else
              {
                [MEMORY[0x277CCAE28] grams];
              }
            }

            else
            {
              if (a1 == 783)
              {
                v2 = [MEMORY[0x277CCAE28] milligrams];
                goto LABEL_255;
              }

              if (a1 == 784)
              {
                [MEMORY[0x277CCAE28] ounces];
              }

              else
              {
                [MEMORY[0x277CCAE28] poundsMass];
              }
            }

            goto LABEL_161;
          }

          if (a1 <= 746)
          {
            if (a1 == 745)
            {
              [MEMORY[0x277CCAE18] kilobytes];
            }

            else
            {
              [MEMORY[0x277CCAE18] megabytes];
            }

            goto LABEL_161;
          }

          if (a1 == 747)
          {
            v2 = [MEMORY[0x277CCAE18] gigabytes];
          }

          else if (a1 == 748)
          {
            v2 = [MEMORY[0x277CCAE18] terabytes];
          }
        }
      }

      else
      {
        switch(a1)
        {
          case 601:
            v2 = +[CAFUnitEnergyEfficiency wattHoursPerKilometer];
            break;
          case 602:
            v2 = +[CAFUnitEnergyEfficiency milliwattHoursPerKilometer];
            break;
          case 603:
            v2 = +[CAFUnitEnergyEfficiency wattHoursPerMile];
            break;
          case 604:
            v2 = +[CAFUnitEnergyEfficiency kilowattHoursPer100Kilometers];
            break;
          case 605:
            v2 = +[CAFUnitEnergyEfficiency kilowattHoursPer100Miles];
            break;
          case 606:
            v2 = +[CAFUnitEnergyEfficiency milesPerKilowattHour];
            break;
          case 607:
            v2 = +[CAFUnitEnergyEfficiency kilometersPerKilowattHour];
            break;
          case 608:
          case 609:
          case 610:
          case 611:
          case 612:
          case 613:
          case 614:
          case 615:
          case 616:
          case 617:
          case 618:
          case 619:
          case 620:
            break;
          case 621:
            v2 = [MEMORY[0x277CCAE00] terahertz];
            break;
          case 622:
            v2 = [MEMORY[0x277CCAE00] gigahertz];
            break;
          case 623:
            v2 = [MEMORY[0x277CCAE00] megahertz];
            break;
          case 624:
            v2 = [MEMORY[0x277CCAE00] kilohertz];
            break;
          case 625:
            v2 = [MEMORY[0x277CCAE00] hertz];
            break;
          case 626:
            v2 = [MEMORY[0x277CCAE00] millihertz];
            break;
          case 627:
            v2 = [MEMORY[0x277CCAE00] microhertz];
            break;
          case 628:
            v2 = [MEMORY[0x277CCAE00] nanohertz];
            break;
          default:
            if (a1 == 671)
            {
              v2 = [MEMORY[0x277CCAE08] litersPer100Kilometers];
            }

            else if (a1 == 672)
            {
              v2 = [MEMORY[0x277CCAE08] milesPerGallon];
            }

            break;
        }
      }
    }

    else if (a1 <= 980)
    {
      if (a1 <= 886)
      {
        if (a1 > 882)
        {
          if (a1 > 884)
          {
            if (a1 == 885)
            {
              [MEMORY[0x277CCAE30] watts];
            }

            else
            {
              [MEMORY[0x277CCAE30] milliwatts];
            }
          }

          else if (a1 == 883)
          {
            [MEMORY[0x277CCAE30] megawatts];
          }

          else
          {
            [MEMORY[0x277CCAE30] kilowatts];
          }

          goto LABEL_161;
        }

        if (a1 > 880)
        {
          if (a1 == 881)
          {
            [MEMORY[0x277CCAE30] terawatts];
          }

          else
          {
            [MEMORY[0x277CCAE30] gigawatts];
          }

          goto LABEL_161;
        }

        if (a1 == 786)
        {
          v2 = [MEMORY[0x277CCAE28] metricTons];
        }

        else if (a1 == 787)
        {
          v2 = [MEMORY[0x277CCAE28] slugs];
        }
      }

      else
      {
        if (a1 <= 890)
        {
          if (a1 > 888)
          {
            if (a1 == 889)
            {
              [MEMORY[0x277CCAE30] picowatts];
            }

            else
            {
              [MEMORY[0x277CCAE30] femtowatts];
            }
          }

          else if (a1 == 887)
          {
            [MEMORY[0x277CCAE30] microwatts];
          }

          else
          {
            [MEMORY[0x277CCAE30] nanowatts];
          }

          goto LABEL_161;
        }

        if (a1 <= 931)
        {
          if (a1 == 891)
          {
            v2 = [MEMORY[0x277CCAE30] horsepower];
          }

          else if (a1 == 931)
          {
            v2 = [MEMORY[0x277CCAE38] newtonsPerMetersSquared];
          }
        }

        else
        {
          switch(a1)
          {
            case 932:
              v2 = [MEMORY[0x277CCAE38] kilopascals];
              break;
            case 933:
              v2 = [MEMORY[0x277CCAE38] poundsForcePerSquareInch];
              break;
            case 934:
              v2 = [MEMORY[0x277CCAE38] bars];
              break;
          }
        }
      }
    }

    else if (a1 > 1130)
    {
      if (a1 <= 1134)
      {
        if (a1 > 1132)
        {
          if (a1 == 1133)
          {
            [MEMORY[0x277CCAE50] cubicFeet];
          }

          else
          {
            [MEMORY[0x277CCAE50] fluidOunces];
          }
        }

        else if (a1 == 1131)
        {
          [MEMORY[0x277CCAE50] liters];
        }

        else
        {
          [MEMORY[0x277CCAE50] cubicMeters];
        }

        goto LABEL_161;
      }

      if (a1 <= 1204)
      {
        if (a1 == 1135)
        {
          v2 = [MEMORY[0x277CCAE50] gallons];
        }

        else if (a1 == 1136)
        {
          v2 = [MEMORY[0x277CCAE50] milliliters];
        }
      }

      else
      {
        switch(a1)
        {
          case 1205:
            v2 = +[CAFUnitPercent percent];
            break;
          case 1251:
            v2 = +[CAFUnitTorque newtonMeter];
            break;
          case 1252:
            v2 = +[CAFUnitTorque footPound];
            break;
        }
      }
    }

    else if (a1 <= 1032)
    {
      if (a1 > 1030)
      {
        if (a1 == 1031)
        {
          [MEMORY[0x277CCAE40] metersPerSecond];
        }

        else
        {
          [MEMORY[0x277CCAE40] kilometersPerHour];
        }

        goto LABEL_161;
      }

      if (a1 == 981)
      {
        v2 = +[CAFUnitRotationalSpeed revolutionsPerMinute];
      }

      else if (a1 == 982)
      {
        v2 = +[CAFUnitRotationalSpeed degreesPerSecond];
      }
    }

    else if (a1 <= 1080)
    {
      if (a1 == 1033)
      {
        v2 = [MEMORY[0x277CCAE40] milesPerHour];
      }

      else if (a1 == 1034)
      {
        v2 = [MEMORY[0x277CCAE40] metersPerHour];
      }
    }

    else
    {
      switch(a1)
      {
        case 1081:
          v2 = [MEMORY[0x277CCAE48] fahrenheit];
          break;
        case 1082:
          v2 = [MEMORY[0x277CCAE48] celsius];
          break;
        case 1083:
          v2 = [MEMORY[0x277CCAE48] kelvin];
          break;
      }
    }
  }

  else
  {
    if (a1 <= 225)
    {
      if (a1 > 120)
      {
        switch(a1)
        {
          case 151:
            v2 = [MEMORY[0x277CCAE20] kilometers];
            break;
          case 152:
            v2 = [MEMORY[0x277CCAE20] hectometers];
            break;
          case 153:
            v2 = [MEMORY[0x277CCAE20] decameters];
            break;
          case 154:
            v2 = [MEMORY[0x277CCAE20] meters];
            break;
          case 155:
            v2 = [MEMORY[0x277CCAE20] decimeters];
            break;
          case 156:
            v2 = [MEMORY[0x277CCAE20] centimeters];
            break;
          case 157:
            v2 = [MEMORY[0x277CCAE20] millimeters];
            break;
          case 158:
            v2 = [MEMORY[0x277CCAE20] micrometers];
            break;
          case 159:
            v2 = [MEMORY[0x277CCAE20] nanometers];
            break;
          case 160:
            v2 = [MEMORY[0x277CCAE20] picometers];
            break;
          case 161:
            v2 = [MEMORY[0x277CCAE20] inches];
            break;
          case 162:
            v2 = [MEMORY[0x277CCAE20] feet];
            break;
          case 163:
            v2 = [MEMORY[0x277CCAE20] yards];
            break;
          case 164:
            v2 = [MEMORY[0x277CCAE20] miles];
            break;
          default:
            if (a1 == 121)
            {
              v2 = [MEMORY[0x277CCADB8] gramsPerLiter];
            }

            else if (a1 == 122)
            {
              v2 = [MEMORY[0x277CCADB8] milligramsPerDeciliter];
            }

            break;
        }
      }

      else if (a1 <= 45)
      {
        switch(a1)
        {
          case 1:
            v2 = [MEMORY[0x277CCADA0] metersPerSecondSquared];
            break;
          case 2:
            v2 = [MEMORY[0x277CCADA0] gravity];
            break;
          case 26:
            v2 = +[CAFUnitAirQuality aqi];
            break;
        }
      }

      else
      {
        switch(a1)
        {
          case '.':
            v2 = [MEMORY[0x277CCADA8] degrees];
            break;
          case '/':
            v2 = [MEMORY[0x277CCADA8] arcMinutes];
            break;
          case '0':
            v2 = [MEMORY[0x277CCADA8] arcSeconds];
            break;
          case '1':
            v2 = [MEMORY[0x277CCADA8] radians];
            break;
          case '2':
            v2 = [MEMORY[0x277CCADA8] gradians];
            break;
          case '3':
            v2 = [MEMORY[0x277CCADA8] revolutions];
            break;
          case 'G':
            v2 = [MEMORY[0x277CCADB0] squareKilometers];
            break;
          case 'H':
            v2 = [MEMORY[0x277CCADB0] squareMeters];
            break;
          case 'I':
            v2 = [MEMORY[0x277CCADB0] squareCentimeters];
            break;
          case 'J':
            v2 = [MEMORY[0x277CCADB0] squareMillimeters];
            break;
          case 'K':
            v2 = [MEMORY[0x277CCADB0] squareMicrometers];
            break;
          case 'L':
            v2 = [MEMORY[0x277CCADB0] squareNanometers];
            break;
          case 'M':
            v2 = [MEMORY[0x277CCADB0] squareInches];
            break;
          case 'N':
            v2 = [MEMORY[0x277CCADB0] squareFeet];
            break;
          case 'O':
            v2 = [MEMORY[0x277CCADB0] squareYards];
            break;
          case 'P':
            v2 = [MEMORY[0x277CCADB0] squareMiles];
            break;
          case 'Q':
            v2 = [MEMORY[0x277CCADB0] acres];
            break;
          case 'R':
            v2 = [MEMORY[0x277CCADB0] ares];
            break;
          case 'S':
            v2 = [MEMORY[0x277CCADB0] hectares];
            break;
          default:
            goto LABEL_255;
        }
      }

      goto LABEL_255;
    }

    if (a1 > 401)
    {
      if (a1 > 454)
      {
        if (a1 > 553)
        {
          if (a1 <= 555)
          {
            if (a1 == 554)
            {
              [MEMORY[0x277CCADF8] calories];
            }

            else
            {
              [MEMORY[0x277CCADF8] kilowattHours];
            }

            goto LABEL_161;
          }

          if (a1 == 556)
          {
            v2 = [MEMORY[0x277CCADF8] wattHours];
          }

          else if (a1 == 557)
          {
            v2 = [MEMORY[0x277CCADF8] milliwattHours];
          }
        }

        else
        {
          if (a1 > 551)
          {
            if (a1 == 552)
            {
              [MEMORY[0x277CCADF8] joules];
            }

            else
            {
              [MEMORY[0x277CCADF8] kilocalories];
            }

            goto LABEL_161;
          }

          if (a1 == 455)
          {
            v2 = [MEMORY[0x277CCADF0] microohms];
          }

          else if (a1 == 551)
          {
            v2 = [MEMORY[0x277CCADF8] kilojoules];
          }
        }
      }

      else
      {
        if (a1 > 450)
        {
          if (a1 > 452)
          {
            if (a1 == 453)
            {
              [MEMORY[0x277CCADF0] ohms];
            }

            else
            {
              [MEMORY[0x277CCADF0] milliohms];
            }
          }

          else if (a1 == 451)
          {
            [MEMORY[0x277CCADF0] megaohms];
          }

          else
          {
            [MEMORY[0x277CCADF0] kiloohms];
          }

          goto LABEL_161;
        }

        if (a1 <= 403)
        {
          if (a1 == 402)
          {
            [MEMORY[0x277CCADE8] kilovolts];
          }

          else
          {
            [MEMORY[0x277CCADE8] volts];
          }

          goto LABEL_161;
        }

        if (a1 == 404)
        {
          v2 = [MEMORY[0x277CCADE8] millivolts];
        }

        else if (a1 == 405)
        {
          v2 = [MEMORY[0x277CCADE8] microvolts];
        }
      }
    }

    else
    {
      if (a1 <= 304)
      {
        if (a1 <= 300)
        {
          if (a1 > 251)
          {
            if (a1 == 252)
            {
              v2 = [MEMORY[0x277CCADD0] minutes];
            }

            else if (a1 == 253)
            {
              v2 = [MEMORY[0x277CCADD0] hours];
            }
          }

          else if (a1 == 226)
          {
            v2 = [MEMORY[0x277CCADC8] partsPerMillion];
          }

          else if (a1 == 251)
          {
            v2 = [MEMORY[0x277CCADD0] seconds];
          }

          goto LABEL_255;
        }

        if (a1 > 302)
        {
          if (a1 == 303)
          {
            [MEMORY[0x277CCADD8] kiloampereHours];
          }

          else
          {
            [MEMORY[0x277CCADD8] ampereHours];
          }
        }

        else if (a1 == 301)
        {
          [MEMORY[0x277CCADD8] coulombs];
        }

        else
        {
          [MEMORY[0x277CCADD8] megaampereHours];
        }

        v2 = LABEL_161:;
        goto LABEL_255;
      }

      if (a1 > 352)
      {
        if (a1 <= 354)
        {
          if (a1 == 353)
          {
            [MEMORY[0x277CCADE0] amperes];
          }

          else
          {
            [MEMORY[0x277CCADE0] milliamperes];
          }

          goto LABEL_161;
        }

        if (a1 == 355)
        {
          v2 = [MEMORY[0x277CCADE0] microamperes];
        }

        else if (a1 == 401)
        {
          v2 = [MEMORY[0x277CCADE8] megavolts];
        }
      }

      else
      {
        if (a1 > 350)
        {
          if (a1 == 351)
          {
            [MEMORY[0x277CCADE0] megaamperes];
          }

          else
          {
            [MEMORY[0x277CCADE0] kiloamperes];
          }

          goto LABEL_161;
        }

        if (a1 == 305)
        {
          v2 = [MEMORY[0x277CCADD8] milliampereHours];
        }

        else if (a1 == 306)
        {
          v2 = [MEMORY[0x277CCADD8] microampereHours];
        }
      }
    }
  }

LABEL_255:

  return v2;
}

uint64_t CAFUnitTypeFromNSUnit(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCADA0] metersPerSecondSquared];
  v3 = [v1 isEqual:v2];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CCADA0] gravity];
    v6 = [v1 isEqual:v5];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v7 = +[CAFUnitAirQuality aqi];
      v8 = [v1 isEqual:v7];

      if (v8)
      {
        v4 = 26;
      }

      else
      {
        v9 = [MEMORY[0x277CCADA8] degrees];
        v10 = [v1 isEqual:v9];

        if (v10)
        {
          v4 = 46;
        }

        else
        {
          v11 = [MEMORY[0x277CCADA8] arcMinutes];
          v12 = [v1 isEqual:v11];

          if (v12)
          {
            v4 = 47;
          }

          else
          {
            v13 = [MEMORY[0x277CCADA8] arcSeconds];
            v14 = [v1 isEqual:v13];

            if (v14)
            {
              v4 = 48;
            }

            else
            {
              v15 = [MEMORY[0x277CCADA8] radians];
              v16 = [v1 isEqual:v15];

              if (v16)
              {
                v4 = 49;
              }

              else
              {
                v17 = [MEMORY[0x277CCADA8] gradians];
                v18 = [v1 isEqual:v17];

                if (v18)
                {
                  v4 = 50;
                }

                else
                {
                  v19 = [MEMORY[0x277CCADA8] revolutions];
                  v20 = [v1 isEqual:v19];

                  if (v20)
                  {
                    v4 = 51;
                  }

                  else
                  {
                    v21 = [MEMORY[0x277CCADB0] squareKilometers];
                    v22 = [v1 isEqual:v21];

                    if (v22)
                    {
                      v4 = 71;
                    }

                    else
                    {
                      v23 = [MEMORY[0x277CCADB0] squareMeters];
                      v24 = [v1 isEqual:v23];

                      if (v24)
                      {
                        v4 = 72;
                      }

                      else
                      {
                        v25 = [MEMORY[0x277CCADB0] squareCentimeters];
                        v26 = [v1 isEqual:v25];

                        if (v26)
                        {
                          v4 = 73;
                        }

                        else
                        {
                          v27 = [MEMORY[0x277CCADB0] squareMillimeters];
                          v28 = [v1 isEqual:v27];

                          if (v28)
                          {
                            v4 = 74;
                          }

                          else
                          {
                            v29 = [MEMORY[0x277CCADB0] squareMicrometers];
                            v30 = [v1 isEqual:v29];

                            if (v30)
                            {
                              v4 = 75;
                            }

                            else
                            {
                              v31 = [MEMORY[0x277CCADB0] squareNanometers];
                              v32 = [v1 isEqual:v31];

                              if (v32)
                              {
                                v4 = 76;
                              }

                              else
                              {
                                v33 = [MEMORY[0x277CCADB0] squareInches];
                                v34 = [v1 isEqual:v33];

                                if (v34)
                                {
                                  v4 = 77;
                                }

                                else
                                {
                                  v35 = [MEMORY[0x277CCADB0] squareFeet];
                                  v36 = [v1 isEqual:v35];

                                  if (v36)
                                  {
                                    v4 = 78;
                                  }

                                  else
                                  {
                                    v37 = [MEMORY[0x277CCADB0] squareYards];
                                    v38 = [v1 isEqual:v37];

                                    if (v38)
                                    {
                                      v4 = 79;
                                    }

                                    else
                                    {
                                      v39 = [MEMORY[0x277CCADB0] squareMiles];
                                      v40 = [v1 isEqual:v39];

                                      if (v40)
                                      {
                                        v4 = 80;
                                      }

                                      else
                                      {
                                        v41 = [MEMORY[0x277CCADB0] acres];
                                        v42 = [v1 isEqual:v41];

                                        if (v42)
                                        {
                                          v4 = 81;
                                        }

                                        else
                                        {
                                          v43 = [MEMORY[0x277CCADB0] ares];
                                          v44 = [v1 isEqual:v43];

                                          if (v44)
                                          {
                                            v4 = 82;
                                          }

                                          else
                                          {
                                            v45 = [MEMORY[0x277CCADB0] hectares];
                                            v46 = [v1 isEqual:v45];

                                            if (v46)
                                            {
                                              v4 = 83;
                                            }

                                            else
                                            {
                                              v47 = [MEMORY[0x277CCADB8] gramsPerLiter];
                                              v48 = [v1 isEqual:v47];

                                              if (v48)
                                              {
                                                v4 = 121;
                                              }

                                              else
                                              {
                                                v49 = [MEMORY[0x277CCADB8] milligramsPerDeciliter];
                                                v50 = [v1 isEqual:v49];

                                                if (v50)
                                                {
                                                  v4 = 122;
                                                }

                                                else
                                                {
                                                  v51 = [MEMORY[0x277CCAE20] kilometers];
                                                  v52 = [v1 isEqual:v51];

                                                  if (v52)
                                                  {
                                                    v4 = 151;
                                                  }

                                                  else
                                                  {
                                                    v53 = [MEMORY[0x277CCAE20] hectometers];
                                                    v54 = [v1 isEqual:v53];

                                                    if (v54)
                                                    {
                                                      v4 = 152;
                                                    }

                                                    else
                                                    {
                                                      v55 = [MEMORY[0x277CCAE20] decameters];
                                                      v56 = [v1 isEqual:v55];

                                                      if (v56)
                                                      {
                                                        v4 = 153;
                                                      }

                                                      else
                                                      {
                                                        v57 = [MEMORY[0x277CCAE20] meters];
                                                        v58 = [v1 isEqual:v57];

                                                        if (v58)
                                                        {
                                                          v4 = 154;
                                                        }

                                                        else
                                                        {
                                                          v59 = [MEMORY[0x277CCAE20] decimeters];
                                                          v60 = [v1 isEqual:v59];

                                                          if (v60)
                                                          {
                                                            v4 = 155;
                                                          }

                                                          else
                                                          {
                                                            v61 = [MEMORY[0x277CCAE20] centimeters];
                                                            v62 = [v1 isEqual:v61];

                                                            if (v62)
                                                            {
                                                              v4 = 156;
                                                            }

                                                            else
                                                            {
                                                              v63 = [MEMORY[0x277CCAE20] millimeters];
                                                              v64 = [v1 isEqual:v63];

                                                              if (v64)
                                                              {
                                                                v4 = 157;
                                                              }

                                                              else
                                                              {
                                                                v65 = [MEMORY[0x277CCAE20] micrometers];
                                                                v66 = [v1 isEqual:v65];

                                                                if (v66)
                                                                {
                                                                  v4 = 158;
                                                                }

                                                                else
                                                                {
                                                                  v67 = [MEMORY[0x277CCAE20] nanometers];
                                                                  v68 = [v1 isEqual:v67];

                                                                  if (v68)
                                                                  {
                                                                    v4 = 159;
                                                                  }

                                                                  else
                                                                  {
                                                                    v69 = [MEMORY[0x277CCAE20] picometers];
                                                                    v70 = [v1 isEqual:v69];

                                                                    if (v70)
                                                                    {
                                                                      v4 = 160;
                                                                    }

                                                                    else
                                                                    {
                                                                      v71 = [MEMORY[0x277CCAE20] inches];
                                                                      v72 = [v1 isEqual:v71];

                                                                      if (v72)
                                                                      {
                                                                        v4 = 161;
                                                                      }

                                                                      else
                                                                      {
                                                                        v73 = [MEMORY[0x277CCAE20] feet];
                                                                        v74 = [v1 isEqual:v73];

                                                                        if (v74)
                                                                        {
                                                                          v4 = 162;
                                                                        }

                                                                        else
                                                                        {
                                                                          v75 = [MEMORY[0x277CCAE20] yards];
                                                                          v76 = [v1 isEqual:v75];

                                                                          if (v76)
                                                                          {
                                                                            v4 = 163;
                                                                          }

                                                                          else
                                                                          {
                                                                            v77 = [MEMORY[0x277CCAE20] miles];
                                                                            v78 = [v1 isEqual:v77];

                                                                            if (v78)
                                                                            {
                                                                              v4 = 164;
                                                                            }

                                                                            else
                                                                            {
                                                                              v79 = [MEMORY[0x277CCADC8] partsPerMillion];
                                                                              v80 = [v1 isEqual:v79];

                                                                              if (v80)
                                                                              {
                                                                                v4 = 226;
                                                                              }

                                                                              else
                                                                              {
                                                                                v81 = [MEMORY[0x277CCADD0] seconds];
                                                                                v82 = [v1 isEqual:v81];

                                                                                if (v82)
                                                                                {
                                                                                  v4 = 251;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v83 = [MEMORY[0x277CCADD0] minutes];
                                                                                  v84 = [v1 isEqual:v83];

                                                                                  if (v84)
                                                                                  {
                                                                                    v4 = 252;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v85 = [MEMORY[0x277CCADD0] hours];
                                                                                    v86 = [v1 isEqual:v85];

                                                                                    if (v86)
                                                                                    {
                                                                                      v4 = 253;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v87 = [MEMORY[0x277CCADD8] coulombs];
                                                                                      v88 = [v1 isEqual:v87];

                                                                                      if (v88)
                                                                                      {
                                                                                        v4 = 301;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v89 = [MEMORY[0x277CCADD8] megaampereHours];
                                                                                        v90 = [v1 isEqual:v89];

                                                                                        if (v90)
                                                                                        {
                                                                                          v4 = 302;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v91 = [MEMORY[0x277CCADD8] kiloampereHours];
                                                                                          v92 = [v1 isEqual:v91];

                                                                                          if (v92)
                                                                                          {
                                                                                            v4 = 303;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v93 = [MEMORY[0x277CCADD8] ampereHours];
                                                                                            v94 = [v1 isEqual:v93];

                                                                                            if (v94)
                                                                                            {
                                                                                              v4 = 304;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v95 = [MEMORY[0x277CCADD8] milliampereHours];
                                                                                              v96 = [v1 isEqual:v95];

                                                                                              if (v96)
                                                                                              {
                                                                                                v4 = 305;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v97 = [MEMORY[0x277CCADD8] microampereHours];
                                                                                                v98 = [v1 isEqual:v97];

                                                                                                if (v98)
                                                                                                {
                                                                                                  v4 = 306;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v99 = [MEMORY[0x277CCADE0] megaamperes];
                                                                                                  v100 = [v1 isEqual:v99];

                                                                                                  if (v100)
                                                                                                  {
                                                                                                    v4 = 351;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v101 = [MEMORY[0x277CCADE0] kiloamperes];
                                                                                                    v102 = [v1 isEqual:v101];

                                                                                                    if (v102)
                                                                                                    {
                                                                                                      v4 = 352;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v103 = [MEMORY[0x277CCADE0] amperes];
                                                                                                      v104 = [v1 isEqual:v103];

                                                                                                      if (v104)
                                                                                                      {
                                                                                                        v4 = 353;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v105 = [MEMORY[0x277CCADE0] milliamperes];
                                                                                                        v106 = [v1 isEqual:v105];

                                                                                                        if (v106)
                                                                                                        {
                                                                                                          v4 = 354;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v107 = [MEMORY[0x277CCADE0] microamperes];
                                                                                                          v108 = [v1 isEqual:v107];

                                                                                                          if (v108)
                                                                                                          {
                                                                                                            v4 = 355;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v109 = [MEMORY[0x277CCADE8] megavolts];
                                                                                                            v110 = [v1 isEqual:v109];

                                                                                                            if (v110)
                                                                                                            {
                                                                                                              v4 = 401;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v111 = [MEMORY[0x277CCADE8] kilovolts];
                                                                                                              v112 = [v1 isEqual:v111];

                                                                                                              if (v112)
                                                                                                              {
                                                                                                                v4 = 402;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v113 = [MEMORY[0x277CCADE8] volts];
                                                                                                                v114 = [v1 isEqual:v113];

                                                                                                                if (v114)
                                                                                                                {
                                                                                                                  v4 = 403;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v115 = [MEMORY[0x277CCADE8] millivolts];
                                                                                                                  v116 = [v1 isEqual:v115];

                                                                                                                  if (v116)
                                                                                                                  {
                                                                                                                    v4 = 404;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v117 = [MEMORY[0x277CCADE8] microvolts];
                                                                                                                    v118 = [v1 isEqual:v117];

                                                                                                                    if (v118)
                                                                                                                    {
                                                                                                                      v4 = 405;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v119 = [MEMORY[0x277CCADF0] megaohms];
                                                                                                                      v120 = [v1 isEqual:v119];

                                                                                                                      if (v120)
                                                                                                                      {
                                                                                                                        v4 = 451;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v121 = [MEMORY[0x277CCADF0] kiloohms];
                                                                                                                        v122 = [v1 isEqual:v121];

                                                                                                                        if (v122)
                                                                                                                        {
                                                                                                                          v4 = 452;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v123 = [MEMORY[0x277CCADF0] ohms];
                                                                                                                          v124 = [v1 isEqual:v123];

                                                                                                                          if (v124)
                                                                                                                          {
                                                                                                                            v4 = 453;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v125 = [MEMORY[0x277CCADF0] milliohms];
                                                                                                                            v126 = [v1 isEqual:v125];

                                                                                                                            if (v126)
                                                                                                                            {
                                                                                                                              v4 = 454;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v127 = [MEMORY[0x277CCADF0] microohms];
                                                                                                                              v128 = [v1 isEqual:v127];

                                                                                                                              if (v128)
                                                                                                                              {
                                                                                                                                v4 = 455;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v129 = [MEMORY[0x277CCADF8] kilojoules];
                                                                                                                                v130 = [v1 isEqual:v129];

                                                                                                                                if (v130)
                                                                                                                                {
                                                                                                                                  v4 = 551;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v131 = [MEMORY[0x277CCADF8] joules];
                                                                                                                                  v132 = [v1 isEqual:v131];

                                                                                                                                  if (v132)
                                                                                                                                  {
                                                                                                                                    v4 = 552;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v133 = [MEMORY[0x277CCADF8] kilocalories];
                                                                                                                                    v134 = [v1 isEqual:v133];

                                                                                                                                    if (v134)
                                                                                                                                    {
                                                                                                                                      v4 = 553;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v135 = [MEMORY[0x277CCADF8] calories];
                                                                                                                                      v136 = [v1 isEqual:v135];

                                                                                                                                      if (v136)
                                                                                                                                      {
                                                                                                                                        v4 = 554;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v137 = [MEMORY[0x277CCADF8] kilowattHours];
                                                                                                                                        v138 = [v1 isEqual:v137];

                                                                                                                                        if (v138)
                                                                                                                                        {
                                                                                                                                          v4 = 555;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v139 = [MEMORY[0x277CCADF8] wattHours];
                                                                                                                                          v140 = [v1 isEqual:v139];

                                                                                                                                          if (v140)
                                                                                                                                          {
                                                                                                                                            v4 = 556;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v141 = [MEMORY[0x277CCADF8] milliwattHours];
                                                                                                                                            v142 = [v1 isEqual:v141];

                                                                                                                                            if (v142)
                                                                                                                                            {
                                                                                                                                              v4 = 557;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v143 = +[CAFUnitEnergyEfficiency wattHoursPerKilometer];
                                                                                                                                              v144 = [v1 isEqual:v143];

                                                                                                                                              if (v144)
                                                                                                                                              {
                                                                                                                                                v4 = 601;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v145 = +[CAFUnitEnergyEfficiency milliwattHoursPerKilometer];
                                                                                                                                                v146 = [v1 isEqual:v145];

                                                                                                                                                if (v146)
                                                                                                                                                {
                                                                                                                                                  v4 = 602;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v147 = +[CAFUnitEnergyEfficiency wattHoursPerMile];
                                                                                                                                                  v148 = [v1 isEqual:v147];

                                                                                                                                                  if (v148)
                                                                                                                                                  {
                                                                                                                                                    v4 = 603;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v149 = +[CAFUnitEnergyEfficiency kilowattHoursPer100Kilometers];
                                                                                                                                                    v150 = [v1 isEqual:v149];

                                                                                                                                                    if (v150)
                                                                                                                                                    {
                                                                                                                                                      v4 = 604;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v151 = +[CAFUnitEnergyEfficiency kilowattHoursPer100Miles];
                                                                                                                                                      v152 = [v1 isEqual:v151];

                                                                                                                                                      if (v152)
                                                                                                                                                      {
                                                                                                                                                        v4 = 605;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v153 = +[CAFUnitEnergyEfficiency milesPerKilowattHour];
                                                                                                                                                        v154 = [v1 isEqual:v153];

                                                                                                                                                        if (v154)
                                                                                                                                                        {
                                                                                                                                                          v4 = 606;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v155 = +[CAFUnitEnergyEfficiency kilometersPerKilowattHour];
                                                                                                                                                          v156 = [v1 isEqual:v155];

                                                                                                                                                          if (v156)
                                                                                                                                                          {
                                                                                                                                                            v4 = 607;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v157 = [MEMORY[0x277CCAE00] terahertz];
                                                                                                                                                            v158 = [v1 isEqual:v157];

                                                                                                                                                            if (v158)
                                                                                                                                                            {
                                                                                                                                                              v4 = 621;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v159 = [MEMORY[0x277CCAE00] gigahertz];
                                                                                                                                                              v160 = [v1 isEqual:v159];

                                                                                                                                                              if (v160)
                                                                                                                                                              {
                                                                                                                                                                v4 = 622;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v161 = [MEMORY[0x277CCAE00] megahertz];
                                                                                                                                                                v162 = [v1 isEqual:v161];

                                                                                                                                                                if (v162)
                                                                                                                                                                {
                                                                                                                                                                  v4 = 623;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v163 = [MEMORY[0x277CCAE00] kilohertz];
                                                                                                                                                                  v164 = [v1 isEqual:v163];

                                                                                                                                                                  if (v164)
                                                                                                                                                                  {
                                                                                                                                                                    v4 = 624;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v165 = [MEMORY[0x277CCAE00] hertz];
                                                                                                                                                                    v166 = [v1 isEqual:v165];

                                                                                                                                                                    if (v166)
                                                                                                                                                                    {
                                                                                                                                                                      v4 = 625;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v167 = [MEMORY[0x277CCAE00] millihertz];
                                                                                                                                                                      v168 = [v1 isEqual:v167];

                                                                                                                                                                      if (v168)
                                                                                                                                                                      {
                                                                                                                                                                        v4 = 626;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v169 = [MEMORY[0x277CCAE00] microhertz];
                                                                                                                                                                        v170 = [v1 isEqual:v169];

                                                                                                                                                                        if (v170)
                                                                                                                                                                        {
                                                                                                                                                                          v4 = 627;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v171 = [MEMORY[0x277CCAE00] nanohertz];
                                                                                                                                                                          v172 = [v1 isEqual:v171];

                                                                                                                                                                          if (v172)
                                                                                                                                                                          {
                                                                                                                                                                            v4 = 628;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v173 = [MEMORY[0x277CCAE08] litersPer100Kilometers];
                                                                                                                                                                            v174 = [v1 isEqual:v173];

                                                                                                                                                                            if (v174)
                                                                                                                                                                            {
                                                                                                                                                                              v4 = 671;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v175 = [MEMORY[0x277CCAE08] milesPerGallon];
                                                                                                                                                                              v176 = [v1 isEqual:v175];

                                                                                                                                                                              if (v176)
                                                                                                                                                                              {
                                                                                                                                                                                v4 = 672;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v177 = [MEMORY[0x277CCAE08] milesPerImperialGallon];
                                                                                                                                                                                v178 = [v1 isEqual:v177];

                                                                                                                                                                                if (v178)
                                                                                                                                                                                {
                                                                                                                                                                                  v4 = 673;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v179 = [MEMORY[0x277CCAE08] millilitersPer100Kilometers];
                                                                                                                                                                                  v180 = [v1 isEqual:v179];

                                                                                                                                                                                  if (v180)
                                                                                                                                                                                  {
                                                                                                                                                                                    v4 = 674;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v181 = [MEMORY[0x277CCAE08] kilometersPerLiter];
                                                                                                                                                                                    v182 = [v1 isEqual:v181];

                                                                                                                                                                                    if (v182)
                                                                                                                                                                                    {
                                                                                                                                                                                      v4 = 675;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v183 = [MEMORY[0x277CCAE10] lux];
                                                                                                                                                                                      v184 = [v1 isEqual:v183];

                                                                                                                                                                                      if (v184)
                                                                                                                                                                                      {
                                                                                                                                                                                        v4 = 721;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v185 = [MEMORY[0x277CCAE18] kilobits];
                                                                                                                                                                                        v186 = [v1 isEqual:v185];

                                                                                                                                                                                        if (v186)
                                                                                                                                                                                        {
                                                                                                                                                                                          v4 = 741;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v187 = [MEMORY[0x277CCAE18] megabits];
                                                                                                                                                                                          v188 = [v1 isEqual:v187];

                                                                                                                                                                                          if (v188)
                                                                                                                                                                                          {
                                                                                                                                                                                            v4 = 742;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v189 = [MEMORY[0x277CCAE18] gigabits];
                                                                                                                                                                                            v190 = [v1 isEqual:v189];

                                                                                                                                                                                            if (v190)
                                                                                                                                                                                            {
                                                                                                                                                                                              v4 = 743;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v191 = [MEMORY[0x277CCAE18] terabits];
                                                                                                                                                                                              v192 = [v1 isEqual:v191];

                                                                                                                                                                                              if (v192)
                                                                                                                                                                                              {
                                                                                                                                                                                                v4 = 744;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v193 = [MEMORY[0x277CCAE18] kilobytes];
                                                                                                                                                                                                v194 = [v1 isEqual:v193];

                                                                                                                                                                                                if (v194)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v4 = 745;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v195 = [MEMORY[0x277CCAE18] megabytes];
                                                                                                                                                                                                  v196 = [v1 isEqual:v195];

                                                                                                                                                                                                  if (v196)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v4 = 746;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v197 = [MEMORY[0x277CCAE18] gigabytes];
                                                                                                                                                                                                    v198 = [v1 isEqual:v197];

                                                                                                                                                                                                    if (v198)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v4 = 747;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v199 = [MEMORY[0x277CCAE18] terabytes];
                                                                                                                                                                                                      v200 = [v1 isEqual:v199];

                                                                                                                                                                                                      if (v200)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v4 = 748;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v201 = [MEMORY[0x277CCAE28] kilograms];
                                                                                                                                                                                                        v202 = [v1 isEqual:v201];

                                                                                                                                                                                                        if (v202)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v4 = 781;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v203 = [MEMORY[0x277CCAE28] grams];
                                                                                                                                                                                                          v204 = [v1 isEqual:v203];

                                                                                                                                                                                                          if (v204)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v4 = 782;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v205 = [MEMORY[0x277CCAE28] milligrams];
                                                                                                                                                                                                            v206 = [v1 isEqual:v205];

                                                                                                                                                                                                            if (v206)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v4 = 783;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v207 = [MEMORY[0x277CCAE28] ounces];
                                                                                                                                                                                                              v208 = [v1 isEqual:v207];

                                                                                                                                                                                                              if (v208)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v4 = 784;
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v209 = [MEMORY[0x277CCAE28] poundsMass];
                                                                                                                                                                                                                v210 = [v1 isEqual:v209];

                                                                                                                                                                                                                if (v210)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v4 = 785;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v211 = [MEMORY[0x277CCAE28] metricTons];
                                                                                                                                                                                                                  v212 = [v1 isEqual:v211];

                                                                                                                                                                                                                  if (v212)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v4 = 786;
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v213 = [MEMORY[0x277CCAE28] slugs];
                                                                                                                                                                                                                    v214 = [v1 isEqual:v213];

                                                                                                                                                                                                                    if (v214)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v4 = 787;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v215 = [MEMORY[0x277CCAE30] terawatts];
                                                                                                                                                                                                                      v216 = [v1 isEqual:v215];

                                                                                                                                                                                                                      if (v216)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v4 = 881;
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v217 = [MEMORY[0x277CCAE30] gigawatts];
                                                                                                                                                                                                                        v218 = [v1 isEqual:v217];

                                                                                                                                                                                                                        if (v218)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v4 = 882;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v219 = [MEMORY[0x277CCAE30] megawatts];
                                                                                                                                                                                                                          v220 = [v1 isEqual:v219];

                                                                                                                                                                                                                          if (v220)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v4 = 883;
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v221 = [MEMORY[0x277CCAE30] kilowatts];
                                                                                                                                                                                                                            v222 = [v1 isEqual:v221];

                                                                                                                                                                                                                            if (v222)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v4 = 884;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v223 = [MEMORY[0x277CCAE30] watts];
                                                                                                                                                                                                                              v224 = [v1 isEqual:v223];

                                                                                                                                                                                                                              if (v224)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v4 = 885;
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v225 = [MEMORY[0x277CCAE30] milliwatts];
                                                                                                                                                                                                                                v226 = [v1 isEqual:v225];

                                                                                                                                                                                                                                if (v226)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v4 = 886;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v227 = [MEMORY[0x277CCAE30] microwatts];
                                                                                                                                                                                                                                  v228 = [v1 isEqual:v227];

                                                                                                                                                                                                                                  if (v228)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v4 = 887;
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v229 = [MEMORY[0x277CCAE30] nanowatts];
                                                                                                                                                                                                                                    v230 = [v1 isEqual:v229];

                                                                                                                                                                                                                                    if (v230)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v4 = 888;
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v231 = [MEMORY[0x277CCAE30] picowatts];
                                                                                                                                                                                                                                      v232 = [v1 isEqual:v231];

                                                                                                                                                                                                                                      if (v232)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v4 = 889;
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v233 = [MEMORY[0x277CCAE30] femtowatts];
                                                                                                                                                                                                                                        v234 = [v1 isEqual:v233];

                                                                                                                                                                                                                                        if (v234)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v4 = 890;
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v235 = [MEMORY[0x277CCAE30] horsepower];
                                                                                                                                                                                                                                          v236 = [v1 isEqual:v235];

                                                                                                                                                                                                                                          if (v236)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v4 = 891;
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v237 = [MEMORY[0x277CCAE38] newtonsPerMetersSquared];
                                                                                                                                                                                                                                            v238 = [v1 isEqual:v237];

                                                                                                                                                                                                                                            if (v238)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v4 = 931;
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v239 = [MEMORY[0x277CCAE38] kilopascals];
                                                                                                                                                                                                                                              v240 = [v1 isEqual:v239];

                                                                                                                                                                                                                                              if (v240)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v4 = 932;
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v241 = [MEMORY[0x277CCAE38] poundsForcePerSquareInch];
                                                                                                                                                                                                                                                v242 = [v1 isEqual:v241];

                                                                                                                                                                                                                                                if (v242)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v4 = 933;
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v243 = [MEMORY[0x277CCAE38] bars];
                                                                                                                                                                                                                                                  v244 = [v1 isEqual:v243];

                                                                                                                                                                                                                                                  if (v244)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v4 = 934;
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v245 = +[CAFUnitRotationalSpeed revolutionsPerMinute];
                                                                                                                                                                                                                                                    v246 = [v1 isEqual:v245];

                                                                                                                                                                                                                                                    if (v246)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v4 = 981;
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v247 = +[CAFUnitRotationalSpeed degreesPerSecond];
                                                                                                                                                                                                                                                      v248 = [v1 isEqual:v247];

                                                                                                                                                                                                                                                      if (v248)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v4 = 982;
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v249 = [MEMORY[0x277CCAE40] metersPerSecond];
                                                                                                                                                                                                                                                        v250 = [v1 isEqual:v249];

                                                                                                                                                                                                                                                        if (v250)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v4 = 1031;
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v251 = [MEMORY[0x277CCAE40] kilometersPerHour];
                                                                                                                                                                                                                                                          v252 = [v1 isEqual:v251];

                                                                                                                                                                                                                                                          if (v252)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v4 = 1032;
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v253 = [MEMORY[0x277CCAE40] milesPerHour];
                                                                                                                                                                                                                                                            v254 = [v1 isEqual:v253];

                                                                                                                                                                                                                                                            if (v254)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v4 = 1033;
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v255 = [MEMORY[0x277CCAE40] metersPerHour];
                                                                                                                                                                                                                                                              v256 = [v1 isEqual:v255];

                                                                                                                                                                                                                                                              if (v256)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v4 = 1034;
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v257 = [MEMORY[0x277CCAE48] fahrenheit];
                                                                                                                                                                                                                                                                v258 = [v1 isEqual:v257];

                                                                                                                                                                                                                                                                if (v258)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v4 = 1081;
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v259 = [MEMORY[0x277CCAE48] celsius];
                                                                                                                                                                                                                                                                  v260 = [v1 isEqual:v259];

                                                                                                                                                                                                                                                                  if (v260)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v4 = 1082;
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v261 = [MEMORY[0x277CCAE48] kelvin];
                                                                                                                                                                                                                                                                    v262 = [v1 isEqual:v261];

                                                                                                                                                                                                                                                                    if (v262)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v4 = 1083;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v263 = [MEMORY[0x277CCAE50] liters];
                                                                                                                                                                                                                                                                      v264 = [v1 isEqual:v263];

                                                                                                                                                                                                                                                                      if (v264)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v4 = 1131;
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v265 = [MEMORY[0x277CCAE50] cubicMeters];
                                                                                                                                                                                                                                                                        v266 = [v1 isEqual:v265];

                                                                                                                                                                                                                                                                        if (v266)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v4 = 1132;
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v267 = [MEMORY[0x277CCAE50] cubicFeet];
                                                                                                                                                                                                                                                                          v268 = [v1 isEqual:v267];

                                                                                                                                                                                                                                                                          if (v268)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v4 = 1133;
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v269 = [MEMORY[0x277CCAE50] fluidOunces];
                                                                                                                                                                                                                                                                            v270 = [v1 isEqual:v269];

                                                                                                                                                                                                                                                                            if (v270)
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v4 = 1134;
                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v271 = [MEMORY[0x277CCAE50] gallons];
                                                                                                                                                                                                                                                                              v272 = [v1 isEqual:v271];

                                                                                                                                                                                                                                                                              if (v272)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v4 = 1135;
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v273 = [MEMORY[0x277CCAE50] milliliters];
                                                                                                                                                                                                                                                                                v274 = [v1 isEqual:v273];

                                                                                                                                                                                                                                                                                if (v274)
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v4 = 1136;
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v275 = +[CAFUnitPercent percent];
                                                                                                                                                                                                                                                                                  v276 = [v1 isEqual:v275];

                                                                                                                                                                                                                                                                                  if (v276)
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    v4 = 1205;
                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    v277 = +[CAFUnitTorque newtonMeter];
                                                                                                                                                                                                                                                                                    v278 = [v1 isEqual:v277];

                                                                                                                                                                                                                                                                                    if (v278)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v4 = 1251;
                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v279 = +[CAFUnitTorque footPound];
                                                                                                                                                                                                                                                                                      v280 = [v1 isEqual:v279];

                                                                                                                                                                                                                                                                                      if (v280)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        v4 = 1252;
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        v4 = 0;
                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

__CFString *NSStringFromVolumeType(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_27890E740[a1];
  }
}

void CAFSignpostEmit_Launched()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v0))
  {
    v1 = CAFAppInfo();
    v5 = 138543362;
    v6 = v1;
    _os_signpost_emit_with_name_impl(&dword_231618000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Launched", "%{public}@", &v5, 0xCu);
  }

  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = CAFAppLaunchedDate;
  CAFAppLaunchedDate = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void CAFSignpostEmit_Scene()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v0))
  {
    v1 = CAFAppInfo();
    v3 = 138543362;
    v4 = v1;
    _os_signpost_emit_with_name_impl(&dword_231618000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Scene", "%{public}@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void CAFSignpostEmit_SceneWillEnterForeground(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v2))
  {
    v3 = CAFAppInfo();
    v7 = 138543618;
    v8 = v1;
    v9 = 2114;
    v10 = v3;
    _os_signpost_emit_with_name_impl(&dword_231618000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SceneWillEnterForground", "%{public}@ %{public}@", &v7, 0x16u);
  }

  if (([v1 isEqualToString:@"Center"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"UIWindowSceneSessionRoleCarPlay"))
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = CAFAppSceneDate;
    CAFAppSceneDate = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void CAFSignpostEmit_InstantOn()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v0))
  {
    v1 = CAFAppInfo();
    v3 = 138543362;
    v4 = v1;
    _os_signpost_emit_with_name_impl(&dword_231618000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InstantOn", "%{public}@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void CAFSignpostEmit_Rendered()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v0))
  {
    v1 = CAFAppInfo();
    v3 = 138543362;
    v4 = v1;
    _os_signpost_emit_with_name_impl(&dword_231618000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Rendered", "%{public}@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void CAFSignpostEmit_Finalized(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = CARSignpostLogForCategory();
  if (os_signpost_enabled(v2))
  {
    v3 = CAFAppInfo();
    LODWORD(v30) = 138543362;
    *(&v30 + 4) = v3;
    _os_signpost_emit_with_name_impl(&dword_231618000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Finalized", "%{public}@", &v30, 0xCu);
  }

  if (v1)
  {
    v4 = [v1 car];
    v5 = [v4 sessionAnalytics];

    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 name];
    [v6 setObject:v7 forKeyedSubscript:@"name"];

    v8 = [v5 ppid];
    [v6 setObject:v8 forKeyedSubscript:@"ppid"];

    v9 = [v5 firmwareVersion];
    [v6 setObject:v9 forKeyedSubscript:@"vehicleFirmwareVersion"];

    v10 = [v5 hardwareVersion];
    [v6 setObject:v10 forKeyedSubscript:@"vehicleHardwareVersion"];

    v11 = [v5 manufacturer];
    [v6 setObject:v11 forKeyedSubscript:@"vehicleManufacturer"];

    v12 = [v5 model];
    [v6 setObject:v12 forKeyedSubscript:@"vehicleModel"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "supportsBluetoothLE")}];
    [v6 setObject:v13 forKeyedSubscript:@"supportsBluetoothLE"];

    if (!CAFAppLaunchedDate)
    {
      goto LABEL_6;
    }

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 bundleIdentifier];

    *&v30 = @"com.apple.CarClimate";
    *(&v30 + 1) = @"com.apple.CarRadio";
    v31 = @"com.apple.AutoSettings";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:3];
    v17 = [v16 containsObject:v15];

    if (!v17)
    {
      v19 = 1;
      v18 = &CAFAppLaunchedDate;
    }

    else
    {
LABEL_6:
      v18 = &CAFAppSceneDate;
      if (!CAFAppSceneDate)
      {
LABEL_11:
        AnalyticsSendEvent();

        goto LABEL_12;
      }

      v19 = 0;
    }

    v20 = [MEMORY[0x277CBEAA8] date];
    [v20 timeIntervalSinceDate:*v18];
    v22 = v21;

    v23 = *v18;
    *v18 = 0;

    if (v22 > 0.0)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
      v25 = [v24 stringValue];
      [v6 setObject:v25 forKeyedSubscript:@"launchTime"];

      v26 = [MEMORY[0x277CCA8D8] mainBundle];
      v27 = [v26 bundleIdentifier];
      [v6 setObject:v27 forKeyedSubscript:@"bundleIdentifier"];

      v28 = [MEMORY[0x277CCABB0] numberWithBool:v19];
      [v6 setObject:v28 forKeyedSubscript:@"isColdLaunch"];
    }

    goto LABEL_11;
  }

LABEL_12:

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2316E9B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2316F11EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2316F347C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2316F3628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_2316F3EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2316F4064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

id CAFGeneralLogging()
{
  if (CAFGeneralLogging_onceToken != -1)
  {
    CAFGeneralLogging_cold_1();
  }

  v1 = CAFGeneralLogging_facility;

  return v1;
}

uint64_t __CAFGeneralLogging_block_invoke()
{
  CAFGeneralLogging_facility = os_log_create("com.apple.caraccessoryframework", "General");

  return MEMORY[0x2821F96F8]();
}

id CAFCarManagerLogging()
{
  if (CAFCarManagerLogging_onceToken != -1)
  {
    CAFCarManagerLogging_cold_1();
  }

  v1 = CAFCarManagerLogging_facility;

  return v1;
}

uint64_t __CAFCarManagerLogging_block_invoke()
{
  CAFCarManagerLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFCarManager");

  return MEMORY[0x2821F96F8]();
}

id CAFDataClientLogging()
{
  if (CAFDataClientLogging_onceToken != -1)
  {
    CAFDataClientLogging_cold_1();
  }

  v1 = CAFDataClientLogging_facility;

  return v1;
}

uint64_t __CAFDataClientLogging_block_invoke()
{
  CAFDataClientLogging_facility = os_log_create("com.apple.caraccessoryframework", "caf-dataclient");

  return MEMORY[0x2821F96F8]();
}

id CAFRequestResponseLogging()
{
  if (CAFRequestResponseLogging_onceToken != -1)
  {
    CAFRequestResponseLogging_cold_1();
  }

  v1 = CAFRequestResponseLogging_facility;

  return v1;
}

uint64_t __CAFRequestResponseLogging_block_invoke()
{
  CAFRequestResponseLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFRequestResponse");

  return MEMORY[0x2821F96F8]();
}

id CAFRegistrationLogging()
{
  if (CAFRegistrationLogging_onceToken != -1)
  {
    CAFRegistrationLogging_cold_1();
  }

  v1 = CAFRegistrationLogging_facility;

  return v1;
}

uint64_t __CAFRegistrationLogging_block_invoke()
{
  CAFRegistrationLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFRegistration");

  return MEMORY[0x2821F96F8]();
}

id CAFCarLogging()
{
  if (CAFCarLogging_onceToken != -1)
  {
    CAFCarLogging_cold_1();
  }

  v1 = CAFCarLogging_facility;

  return v1;
}

uint64_t __CAFCarLogging_block_invoke()
{
  CAFCarLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFCar");

  return MEMORY[0x2821F96F8]();
}

id CAFPositionManagerLogging()
{
  if (CAFPositionManagerLogging_onceToken != -1)
  {
    CAFPositionManagerLogging_cold_1();
  }

  v1 = CAFPositionManagerLogging_facility;

  return v1;
}

uint64_t __CAFPositionManagerLogging_block_invoke()
{
  CAFPositionManagerLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFPositionManager");

  return MEMORY[0x2821F96F8]();
}

id CAFAccessoryLogging()
{
  if (CAFAccessoryLogging_onceToken != -1)
  {
    CAFAccessoryLogging_cold_1();
  }

  v1 = CAFAccessoryLogging_facility;

  return v1;
}

uint64_t __CAFAccessoryLogging_block_invoke()
{
  CAFAccessoryLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFAccessory");

  return MEMORY[0x2821F96F8]();
}

id CAFServiceLogging()
{
  if (CAFServiceLogging_onceToken != -1)
  {
    CAFServiceLogging_cold_1();
  }

  v1 = CAFServiceLogging_facility;

  return v1;
}

uint64_t __CAFServiceLogging_block_invoke()
{
  CAFServiceLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFService");

  return MEMORY[0x2821F96F8]();
}

id CAFCharacteristicLogging()
{
  if (CAFCharacteristicLogging_onceToken != -1)
  {
    CAFCharacteristicLogging_cold_1();
  }

  v1 = CAFCharacteristicLogging_facility;

  return v1;
}

uint64_t __CAFCharacteristicLogging_block_invoke()
{
  CAFCharacteristicLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFCharacteristic");

  return MEMORY[0x2821F96F8]();
}

id CAFControlLogging()
{
  if (CAFControlLogging_onceToken != -1)
  {
    CAFControlLogging_cold_1();
  }

  v1 = CAFControlLogging_facility;

  return v1;
}

uint64_t __CAFControlLogging_block_invoke()
{
  CAFControlLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFControl");

  return MEMORY[0x2821F96F8]();
}

id CAFCachedDescriptionLogging()
{
  if (CAFCachedDescriptionLogging_onceToken != -1)
  {
    CAFCachedDescriptionLogging_cold_1();
  }

  v1 = CAFCachedDescriptionLogging_facility;

  return v1;
}

uint64_t __CAFCachedDescriptionLogging_block_invoke()
{
  CAFCachedDescriptionLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFCachedDescription");

  return MEMORY[0x2821F96F8]();
}

id CAFGroupRequestLogging()
{
  if (CAFGroupRequestLogging_onceToken != -1)
  {
    CAFGroupRequestLogging_cold_1();
  }

  v1 = CAFGroupRequestLogging_facility;

  return v1;
}

uint64_t __CAFGroupRequestLogging_block_invoke()
{
  CAFGroupRequestLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFGroupRequest");

  return MEMORY[0x2821F96F8]();
}

id CAFValueMonitorLogging()
{
  if (CAFValueMonitorLogging_onceToken != -1)
  {
    CAFValueMonitorLogging_cold_1();
  }

  v1 = CAFValueMonitorLogging_facility;

  return v1;
}

uint64_t __CAFValueMonitorLogging_block_invoke()
{
  CAFValueMonitorLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFValueMonitor");

  return MEMORY[0x2821F96F8]();
}

id CAFAssetVariantsLogging()
{
  if (CAFAssetVariantsLogging_onceToken != -1)
  {
    CAFAssetVariantsLogging_cold_1();
  }

  v1 = CAFAssetVariantsLogging_facility;

  return v1;
}

uint64_t __CAFAssetVariantsLogging_block_invoke()
{
  CAFAssetVariantsLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFAssetVariants");

  return MEMORY[0x2821F96F8]();
}

id CAFAppLinksLogging()
{
  if (CAFAppLinksLogging_onceToken != -1)
  {
    CAFAppLinksLogging_cold_1();
  }

  v1 = CAFAppLinksLogging_facility;

  return v1;
}

uint64_t __CAFAppLinksLogging_block_invoke()
{
  CAFAppLinksLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFAppLinks");

  return MEMORY[0x2821F96F8]();
}

id CAFDLogging()
{
  if (CAFDLogging_onceToken != -1)
  {
    CAFDLogging_cold_1();
  }

  v1 = CAFDLogging_facility;

  return v1;
}

uint64_t __CAFDLogging_block_invoke()
{
  CAFDLogging_facility = os_log_create("com.apple.caraccessoryframework", "cafd");

  return MEMORY[0x2821F96F8]();
}

id CAFDDataLogging()
{
  if (CAFDDataLogging_onceToken != -1)
  {
    CAFDDataLogging_cold_1();
  }

  v1 = CAFDDataLogging_facility;

  return v1;
}

uint64_t __CAFDDataLogging_block_invoke()
{
  CAFDDataLogging_facility = os_log_create("com.apple.caraccessoryframework", "cafd-dataAgent");

  return MEMORY[0x2821F96F8]();
}

id CAFDAssertionLogging()
{
  if (CAFDAssertionLogging_onceToken != -1)
  {
    CAFDAssertionLogging_cold_1();
  }

  v1 = CAFDAssertionLogging_facility;

  return v1;
}

uint64_t __CAFDAssertionLogging_block_invoke()
{
  CAFDAssertionLogging_facility = os_log_create("com.apple.caraccessoryframework", "cafd-assertion");

  return MEMORY[0x2821F96F8]();
}

id CAFDChannelLogging()
{
  if (CAFDChannelLogging_onceToken != -1)
  {
    CAFDChannelLogging_cold_1();
  }

  v1 = CAFDChannelLogging_facility;

  return v1;
}

uint64_t __CAFDChannelLogging_block_invoke()
{
  CAFDChannelLogging_facility = os_log_create("com.apple.caraccessoryframework", "cafd-datachannel");

  return MEMORY[0x2821F96F8]();
}

id CAFDClientLogging()
{
  if (CAFDClientLogging_onceToken != -1)
  {
    CAFDClientLogging_cold_1();
  }

  v1 = CAFDClientLogging_facility;

  return v1;
}

uint64_t __CAFDClientLogging_block_invoke()
{
  CAFDClientLogging_facility = os_log_create("com.apple.caraccessoryframework", "cafd-dataclient");

  return MEMORY[0x2821F96F8]();
}

id CAFToolLogging()
{
  if (CAFToolLogging_onceToken != -1)
  {
    CAFToolLogging_cold_1();
  }

  v1 = CAFToolLogging_facility;

  return v1;
}

uint64_t __CAFToolLogging_block_invoke()
{
  CAFToolLogging_facility = os_log_create("com.apple.caraccessoryframework", "CAFTool");

  return MEMORY[0x2821F96F8]();
}

id CAFNowPlayingLogging()
{
  if (CAFNowPlayingLogging_onceToken != -1)
  {
    CAFNowPlayingLogging_cold_1();
  }

  v1 = CAFNowPlayingLogging_facility;

  return v1;
}

uint64_t __CAFNowPlayingLogging_block_invoke()
{
  CAFNowPlayingLogging_facility = os_log_create("com.apple.caraccessoryframework", "NowPlaying");

  return MEMORY[0x2821F96F8]();
}

id CAFStateCaptureLogging()
{
  if (CAFStateCaptureLogging_onceToken != -1)
  {
    CAFStateCaptureLogging_cold_1();
  }

  v1 = CAFStateCaptureLogging_facility;

  return v1;
}

uint64_t __CAFStateCaptureLogging_block_invoke()
{
  CAFStateCaptureLogging_facility = os_log_create("com.apple.caraccessoryframework", "StateCapture");

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromCharacteristicState(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Initialization";
  }

  else
  {
    return off_27890F3E0[a1 - 1];
  }
}

uint64_t CAFCharacteristicStateFromString(void *a1)
{
  v1 = a1;
  for (i = 0; i != 7; ++i)
  {
    v3 = NSStringFromCharacteristicState(i);
    v4 = [v1 caseInsensitiveCompare:v3];

    if (!v4)
    {
      break;
    }
  }

  return i;
}

uint64_t CAFCompareObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 && a2)
  {
    return [a1 compare:a2];
  }

  if (a1)
  {
    return a2 == 0;
  }

  return -1;
}

uint64_t CAFEntityCompare(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 conformsToProtocol:&unk_28468A948])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  if ([v5 conformsToProtocol:&unk_28468A948])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
  if (v4 && v6)
  {
    v8 = [v4 baseCAFClass];
    if (v8 == [v6 baseCAFClass])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v4 comparisonKeys];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v7 = 0;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (!v7)
            {
              v14 = *(*(&v21 + 1) + 8 * i);
              v15 = [v4 valueForKeyPath:v14];
              v16 = [v6 valueForKeyPath:v14];
              v17 = v16;
              if (v15 == v16)
              {
                v7 = 0;
              }

              else
              {
                if (v15)
                {
                  v18 = v16 == 0;
                }

                else
                {
                  v18 = 1;
                }

                if (v18)
                {
                  if (v15)
                  {
                    v7 = v16 == 0;
                  }

                  else
                  {
                    v7 = -1;
                  }
                }

                else
                {
                  v7 = [v15 compare:v16];
                }
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CAFCharacteristicStateIsCurrent(uint64_t a1)
{
  if ((a1 - 4) < 3 || a1 == 0)
  {
    return 0;
  }

  if (a1 == 7)
  {
    CAFCharacteristicStateIsCurrent_cold_1();
  }

  return 1;
}

uint64_t CAFCharacteristicStateIsInitializing(uint64_t a1)
{
  if ((a1 - 1) < 5)
  {
    return 0;
  }

  if (a1 == 7)
  {
    CAFCharacteristicStateIsInitializing_cold_1();
  }

  return 1;
}

void sub_2316F7ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2316F9B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2316FA53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CAFCarDataServiceInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2846AD690];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_fetchCurrentCarConfigWithReply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_addRegistrationToPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_addRegistrationToPluginID_instanceIDs_priority_withResponse_ argumentIndex:1 ofReply:0];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_addRegistrationToPluginID_instanceIDs_priority_withResponse_ argumentIndex:2 ofReply:0];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v0 setClasses:v16 forSelector:sel_addRegistrationToPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:1];

  v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v17 forSelector:sel_removeRegistrationFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:0];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_removeRegistrationFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:1 ofReply:0];

  v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v21 forSelector:sel_removeRegistrationFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:2 ofReply:0];

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v0 setClasses:v24 forSelector:sel_removeRegistrationFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:1];

  v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_readFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:0];

  v26 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v0 setClasses:v28 forSelector:sel_readFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:1 ofReply:0];

  v29 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v29 forSelector:sel_readFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:2 ofReply:0];

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v0 setClasses:v32 forSelector:sel_readFromPluginID_instanceIDs_priority_withResponse_ argumentIndex:0 ofReply:1];

  v33 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v33 forSelector:sel_writeToPluginID_values_priority_withResponse_ argumentIndex:0 ofReply:0];

  v34 = MEMORY[0x277CBEB98];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v34 setWithObjects:{v35, v36, v37, v38, v39, objc_opt_class(), 0}];
  [v0 setClasses:v40 forSelector:sel_writeToPluginID_values_priority_withResponse_ argumentIndex:1 ofReply:0];

  v41 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v41 forSelector:sel_writeToPluginID_values_priority_withResponse_ argumentIndex:2 ofReply:0];

  v42 = MEMORY[0x277CBEB98];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel_writeToPluginID_values_priority_withResponse_ argumentIndex:0 ofReply:1];

  v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v45 forSelector:sel_requestPluginID_instanceID_value_priority_withResponse_ argumentIndex:0 ofReply:0];

  v46 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v46 forSelector:sel_requestPluginID_instanceID_value_priority_withResponse_ argumentIndex:1 ofReply:0];

  v47 = MEMORY[0x277CBEB98];
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = [v47 setWithObjects:{v48, v49, v50, v51, v52, objc_opt_class(), 0}];
  [v0 setClasses:v53 forSelector:sel_requestPluginID_instanceID_value_priority_withResponse_ argumentIndex:2 ofReply:0];

  v54 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v54 forSelector:sel_requestPluginID_instanceID_value_priority_withResponse_ argumentIndex:3 ofReply:0];

  v55 = MEMORY[0x277CBEB98];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v61 = objc_opt_class();
  v62 = [v55 setWithObjects:{v56, v57, v58, v59, v60, v61, objc_opt_class(), 0}];
  [v0 setClasses:v62 forSelector:sel_requestPluginID_instanceID_value_priority_withResponse_ argumentIndex:0 ofReply:1];

  v63 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v63 forSelector:sel_notifyPluginID_instanceID_value_priority_ argumentIndex:0 ofReply:0];

  v64 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v64 forSelector:sel_notifyPluginID_instanceID_value_priority_ argumentIndex:1 ofReply:0];

  v65 = MEMORY[0x277CBEB98];
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = objc_opt_class();
  v69 = objc_opt_class();
  v70 = objc_opt_class();
  v71 = [v65 setWithObjects:{v66, v67, v68, v69, v70, objc_opt_class(), 0}];
  [v0 setClasses:v71 forSelector:sel_notifyPluginID_instanceID_value_priority_ argumentIndex:2 ofReply:0];

  v72 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v72 forSelector:sel_notifyPluginID_instanceID_value_priority_ argumentIndex:3 ofReply:0];

  return v0;
}

id CAFCarDataClientInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28468E548];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_didUpdateCurrentCarConfig_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_didUpdateConfig_ argumentIndex:0 ofReply:0];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_didUpdatePluginID_values_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v12 setWithObjects:{v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  [v0 setClasses:v18 forSelector:sel_didUpdatePluginID_values_ argumentIndex:1 ofReply:0];

  v19 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel_didNotifyPluginID_instanceID_value_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_didNotifyPluginID_instanceID_value_ argumentIndex:1 ofReply:0];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [v21 setWithObjects:{v22, v23, v24, v25, v26, objc_opt_class(), 0}];
  [v0 setClasses:v27 forSelector:sel_didNotifyPluginID_instanceID_value_ argumentIndex:2 ofReply:0];

  v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v28 forSelector:sel_didRequestPluginID_instanceID_value_withResponse_ argumentIndex:0 ofReply:0];

  v29 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v29 forSelector:sel_didRequestPluginID_instanceID_value_withResponse_ argumentIndex:1 ofReply:0];

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = [v30 setWithObjects:{v31, v32, v33, v34, v35, objc_opt_class(), 0}];
  [v0 setClasses:v36 forSelector:sel_didRequestPluginID_instanceID_value_withResponse_ argumentIndex:2 ofReply:0];

  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v37 setWithObjects:{v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  [v0 setClasses:v44 forSelector:sel_didRequestPluginID_instanceID_value_withResponse_ argumentIndex:0 ofReply:1];

  return v0;
}

__CFString *NSStringFromControlSender(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"accessory";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"device";
  }
}