id _DMTLogOperation()
{
  if (_DMTLogOperation_onceToken != -1)
  {
    _DMTLogOperation_cold_1();
  }

  v1 = _DMTLogOperation_logObj;

  return v1;
}

id DMTValidateProfileArray(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFArrayGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t DMTValidateProfileBoolean(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = [a1 objectForKeyedSubscript:v9];
  v11 = v10;
  if (!v10)
  {
    if (a3)
    {
      goto LABEL_12;
    }

    if (a5)
    {
      v20 = @"kDMTInvalidConfigurationProfileValueErrorKey";
      v21[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = 70;
LABEL_10:
      *a5 = DMTErrorWithCodeAndUserInfo(v15, v14);
    }

LABEL_11:
    a4 = 0;
    goto LABEL_12;
  }

  v12 = CFGetTypeID(v10);
  if (v12 != CFNumberGetTypeID())
  {
    v13 = CFGetTypeID(v11);
    if (v13 != CFBooleanGetTypeID())
    {
      if (a5)
      {
        v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
        v19 = v9;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v15 = 71;
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  a4 = BooleanValueForObject(v11);
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
  return a4;
}

id DMTValidateProfileData(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDataGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id DMTValidateProfileDate(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDateGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id DMTValidateProfileDictionary(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id DMTValidateProfileNumber(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id DMTValidateProfileString(void *a1, void *a2, uint64_t a3, void *a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a1 objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
      goto LABEL_11;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v16 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v17 = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 71;
LABEL_9:
    *a4 = DMTErrorWithCodeAndUserInfo(v13, v12);

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
  if (!a3 && a4)
  {
    v18 = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v19[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = 70;
    goto LABEL_9;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id DMTLocalizedOrganizationMarketingNameForOrganizationType(uint64_t a1)
{
  v2 = DMTBundle();
  v3 = v2;
  if ((a1 - 1) > 2)
  {
    v4 = @"Apple School Manager, Apple Business Manager or Apple Business Essentials";
  }

  else
  {
    v4 = off_278F5E2F8[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v5;
}

id DMTFormattedEnrollmentOrganizationNameFrom(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"“%@”", a1];
  }

  else
  {
    v2 = DMTBundle();
    v1 = [v2 localizedStringForKey:@"your organization" value:&stru_285B54748 table:0];
  }

  return v1;
}

id DMTTitleTextAddingDeviceFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Adding iPhone…";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Adding iPad…";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Adding Apple Vision Pro…";
    }

    else
    {
      v4 = @"Adding…";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTCompletionButtonTitleForDeviceClass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Erase iPhone";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Erase iPad";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Erase Apple Vision Pro…";
    }

    else
    {
      v4 = @"Erase Device";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextAddingDeviceBodyFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone will be added to %@ in %@.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad will be added to %@ in %@.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro will be added to %@ in %@.";
    }

    else
    {
      v4 = @"This device will be added to %@ in %@.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTSuccessfulEnrollmentTitleTextForDeviceClass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"iPhone Added";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"iPad Added";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Apple Vision Pro Added";
    }

    else
    {
      v4 = @"Device Added";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextSuccessfulEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone has been added to %@.\n\nAssign this iPhone to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad has been added to %@.\n\nAssign this iPad to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro has been added to %@.\n\nAssign this iPad to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
    }

    else
    {
      v4 = @"This device has been added to %@.\n\nAssign this device to a device management service in %@ to configure its enrollment settings and enable Automated Device Enrollment.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextSuccessfulEnrollmentWithMDMServerFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPhone has been added to %@.\n\nThis iPhone has been assigned to device management service “%@” in %@.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"This iPad has been added to %@.\n\nThis iPad has been assigned to device management service “%@” in %@.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"This Apple Vision Pro has been added to %@.\n\nThis Apple Vision Pro has been assigned to device management service “%@” in %@.";
    }

    else
    {
      v4 = @"This device has been added to %@.\n\nThis device has been assigned to device management service “%@” in %@.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTTitleTextFailureEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Failed to Add iPhone";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"Failed to Add iPad";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"Failed to Add Apple Vision Pro";
    }

    else
    {
      v4 = @"Failed to Add Device";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id DMTDetailTextFailureEnrollmentFor(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"There was a problem adding this iPhone. Tap Erase iPhone to try again.";
  }

  else if ([v1 isEqualToString:@"iPad"])
  {
    v2 = DMTBundle();
    v3 = v2;
    v4 = @"There was a problem adding this iPad. Tap Erase iPad to try again.";
  }

  else
  {
    v5 = [v1 isEqualToString:@"Apple Vision"];
    v2 = DMTBundle();
    v3 = v2;
    if (v5)
    {
      v4 = @"There was a problem adding this Apple Vision Pro. Double-click Digital Crown to erase Apple Vision Pro to try again.";
    }

    else
    {
      v4 = @"There was a problem adding this device. Tap Erase device to try again.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_285B54748 table:0];

  return v6;
}

id _DMTLogGeneral()
{
  if (_DMTLogGeneral_onceToken != -1)
  {
    _DMTLogGeneral_cold_1();
  }

  v1 = _DMTLogGeneral_logObj;

  return v1;
}

void sub_24891FD4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2489202CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892085C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248920C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_0()
{
  if (_DMTLogGeneral_onceToken_0 != -1)
  {
    _DMTLogGeneral_cold_1_0();
  }

  v1 = _DMTLogGeneral_logObj_0;

  return v1;
}

void sub_2489244D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248924DB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_1()
{
  if (_DMTLogGeneral_onceToken_5 != -1)
  {
    _DMTLogGeneral_cold_1_1();
  }

  v1 = _DMTLogGeneral_logObj_5;

  return v1;
}

void sub_2489253BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v10 - 112));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id DMTDescriptionKeyFormattedString(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:a2];

  return v5;
}

id DMTErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v3 = a2;
  if (DMTErrorWithCodeAndUserInfo_onceToken != -1)
  {
    DMTErrorWithCodeAndUserInfo_cold_1();
  }

  v4 = DMTisWAPI();
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"NSDescriptionKey"];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  if (a1 > 89)
  {
    switch(a1)
    {
      case 'Z':
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Task server invalidated.";
        break;
      case '[':
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Client Disconnected";
        break;
      case 'd':
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"The device has already been added to a different organization";
        break;
      default:
LABEL_5:
        v8 = v3;
        goto LABEL_47;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"An unknown error occurred";
        goto LABEL_45;
      case 2:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"A parameter was invalid";
        goto LABEL_45;
      case 3:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"A value was unexpected";
        goto LABEL_45;
      case 4:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"A timeout occurred.";
        goto LABEL_45;
      case 5:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"An internal error occurred";
        goto LABEL_45;
      case 10:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Discovery primitives invalidated";
        goto LABEL_45;
      case 11:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Discovery primitives interrupted";
        goto LABEL_45;
      case 20:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Sharing session invalidated";
        goto LABEL_45;
      case 21:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Sharing session interrupted";
        goto LABEL_45;
      case 30:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Broadcast primitives invalidated";
        goto LABEL_45;
      case 31:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Broadcast primitives interrupted";
        goto LABEL_45;
      case 40:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Broadcast setup invalidated";
        goto LABEL_45;
      case 50:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"No Wi-Fi interface present";
        v12 = @"No WLAN interface present";
        break;
      case 51:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Unable to power on Wi-Fi interface";
        v12 = @"Unable to power on WLAN interface";
        break;
      case 52:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Wi-Fi join cancelled";
        v12 = @"WLAN join cancelled";
        break;
      case 53:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Unable to find Wi-Fi network";
        v12 = @"Unable to find WLAN network";
        break;
      case 54:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Timed out joining Wi-Fi network";
        v12 = @"Timed out joining WLAN network";
        break;
      case 55:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Unable to join Wi-Fi network";
        v12 = @"Unable to join WLAN network";
        break;
      case 56:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Unable to reach the Internet";
        goto LABEL_45;
      case 57:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Unable to reach the Internet with no network configuration shared";
        goto LABEL_45;
      case 58:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v11 = @"Unable to reach the Internet with the Wi-Fi credentials shared";
        v12 = @"Unable to reach the Internet with the WLAN credentials shared";
        break;
      case 59:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Unable to reach the Internet with the Configuration Profile shared";
        goto LABEL_45;
      case 60:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Erase already in progress";
        goto LABEL_45;
      case 70:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile payload value is missing";
        goto LABEL_45;
      case 71:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile payload value is of the wrong type";
        goto LABEL_45;
      case 72:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile payload value is invalid";
        goto LABEL_45;
      case 73:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile payload type is not supported by this software";
        goto LABEL_45;
      case 74:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile failed validation";
        goto LABEL_45;
      case 75:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile payload failed validation";
        goto LABEL_45;
      case 76:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile is missing a required payload";
        goto LABEL_45;
      case 77:
        v9 = DMTErrorWithCodeAndUserInfo_bundle;
        v10 = @"Configuration profile contains a disallowed payload";
        goto LABEL_45;
      default:
        goto LABEL_5;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

LABEL_45:
  v13 = [v9 cat_localizedStringsForKey:v10 value:&stru_285B54748 table:@"DMTErrors"];
  v21 = _DMTErrorDescriptionsForKey(v13, v14, v15, v16, v17, v18, v19, v20, v27);

  v8 = v3;
  if (v21)
  {
    v22 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __DMTErrorWithCodeAndUserInfo_block_invoke_2;
    v28[3] = &unk_278F5E588;
    v29 = v22;
    v23 = v22;
    [v21 enumerateKeysAndObjectsUsingBlock:v28];
    v24 = [v23 copy];

    v8 = v24;
  }

LABEL_47:
  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DeviceManagementTools.error" code:a1 userInfo:v8];

  return v25;
}

uint64_t __DMTErrorWithCodeAndUserInfo_block_invoke()
{
  DMTErrorWithCodeAndUserInfo_bundle = DMTBundle();

  return MEMORY[0x2821F96F8]();
}

id _DMTErrorDescriptionsForKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = objc_opt_new();
  v25 = &a9;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v11 objectForKeyedSubscript:{v16, v21}];
        v18 = DMTDescriptionKeyFormattedString(v17, v25);
        [v10 setObject:v18 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

void __DMTErrorWithCodeAndUserInfo_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

id DMTEnrollmentTimeoutErrorForNetworkConfiguration(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 56;
  }

  else
  {
    v2 = qword_248935F98[a1 - 1];
  }

  v3 = DMTErrorWithCodeAndUserInfo(v2, 0);

  return v3;
}

id _DMTLogGeneral_2()
{
  if (_DMTLogGeneral_onceToken_6 != -1)
  {
    _DMTLogGeneral_cold_1_2();
  }

  v1 = _DMTLogGeneral_logObj_6;

  return v1;
}

id _DMTLogEnrollment()
{
  if (_DMTLogEnrollment_onceToken != -1)
  {
    _DMTLogEnrollment_cold_1();
  }

  v1 = _DMTLogEnrollment_logObj;

  return v1;
}

void sub_2489286E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248928998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248928C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248929018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_248929478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _DMTLogGeneral_3()
{
  if (_DMTLogGeneral_onceToken_7 != -1)
  {
    _DMTLogGeneral_cold_1_3();
  }

  v1 = _DMTLogGeneral_logObj_7;

  return v1;
}

void sub_24892B924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _DMTLogGeneral_4()
{
  if (_DMTLogGeneral_onceToken_8 != -1)
  {
    _DMTLogGeneral_cold_1_4();
  }

  v1 = _DMTLogGeneral_logObj_8;

  return v1;
}

void sub_24892BC98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24892C14C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 88));
  _Unwind_Resume(a1);
}

void sub_24892C69C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24892C910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24892CD70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v3 - 120), 8);
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id _DMTLogOperation_0()
{
  if (_DMTLogOperation_onceToken_0 != -1)
  {
    _DMTLogOperation_cold_1_0();
  }

  v1 = _DMTLogOperation_logObj_0;

  return v1;
}

CFDataRef ExtractSignedData(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  numSignersOut = 0;
  cmsDecoderOut = 0;
  if (CMSDecoderCreate(&cmsDecoderOut))
  {
    v2 = _DMTLogGeneral_5();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ExtractSignedData_cold_1();
    }

    v3 = 0;
    goto LABEL_18;
  }

  if (!CMSDecoderUpdateMessage(cmsDecoderOut, [v1 bytes], objc_msgSend(v1, "length")))
  {
    if (CMSDecoderFinalizeMessage(cmsDecoderOut))
    {
      v4 = _DMTLogGeneral_5();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_3();
      }

      goto LABEL_14;
    }

    if (CMSDecoderGetNumSigners(cmsDecoderOut, &numSignersOut))
    {
      v4 = _DMTLogGeneral_5();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_4();
      }

      goto LABEL_14;
    }

    if (!numSignersOut)
    {
      v13 = _DMTLogGeneral_5();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24891B000, v13, OS_LOG_TYPE_INFO, "Data does not appear to be signed", buf, 2u);
      }

      goto LABEL_15;
    }

    BasicX509 = SecPolicyCreateBasicX509();
    if (numSignersOut < 1)
    {
LABEL_28:
      contentOut = 0;
      if (!CMSDecoderCopyContent(cmsDecoderOut, &contentOut))
      {
        v3 = contentOut;
LABEL_40:
        if (BasicX509)
        {
          CFRelease(BasicX509);
        }

        goto LABEL_16;
      }

      v12 = _DMTLogGeneral_5();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_6();
      }
    }

    else
    {
      v8 = 0;
      while (1)
      {
        signerStatusOut = kCMSSignerInvalidIndex;
        v9 = CMSDecoderCopySignerStatus(cmsDecoderOut, v8, BasicX509, 0, &signerStatusOut, 0, 0);
        v10 = _DMTLogGeneral_5();
        v11 = v10;
        if (v9)
        {
          break;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 136446722;
          v19 = "ExtractSignedData";
          v20 = 2050;
          v21 = v8;
          v22 = 1026;
          v23 = signerStatusOut;
          _os_log_impl(&dword_24891B000, v11, OS_LOG_TYPE_INFO, "%{public}s: signerIndex = %{public}ld, signStatus = %{public}d", buf, 0x1Cu);
        }

        if (++v8 >= numSignersOut)
        {
          goto LABEL_28;
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ExtractSignedData_cold_4();
      }
    }

    v3 = 0;
    goto LABEL_40;
  }

  v4 = _DMTLogGeneral_5();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ExtractSignedData_cold_2();
  }

LABEL_14:

LABEL_15:
  v3 = 0;
LABEL_16:
  if (cmsDecoderOut)
  {
    CFRelease(cmsDecoderOut);
  }

LABEL_18:

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

id _DMTLogGeneral_5()
{
  if (_DMTLogGeneral_onceToken_9 != -1)
  {
    _DMTLogGeneral_cold_1_5();
  }

  v1 = _DMTLogGeneral_logObj_9;

  return v1;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id _DMTLogGeneral_6()
{
  if (_DMTLogGeneral_onceToken_10 != -1)
  {
    _DMTLogGeneral_cold_1_6();
  }

  v1 = _DMTLogGeneral_logObj_10;

  return v1;
}

void sub_24892EFF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t DMTisWAPI()
{
  if (DMTisWAPI_onceToken != -1)
  {
    DMTisWAPI_cold_1();
  }

  return DMTisWAPI_wapi;
}

uint64_t __DMTisWAPI_block_invoke()
{
  result = MGGetBoolAnswer();
  DMTisWAPI_wapi = result;
  return result;
}

uint64_t BooleanValueForObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    TypeID = CFBooleanGetTypeID();

    if (v3 == TypeID)
    {
      Value = CFBooleanGetValue(v2);
LABEL_18:
      v11 = Value != 0;
      goto LABEL_20;
    }

    v6 = CFGetTypeID(v2);
    if (v6 == CFStringGetTypeID())
    {
      v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v8 = [v2 stringByTrimmingCharactersInSet:v7];

      if (![v8 length] || (v9 = objc_msgSend(v8, "characterAtIndex:", 0), v10 = ((v9 - 70) >> 3) | ((v9 - 70) << 13), v10 < 6u) && ((0x33u >> v10) & 1) != 0)
      {
        v11 = 0;
LABEL_9:

        goto LABEL_20;
      }

      if (v9 - 84) < 0x26 && ((0x2100000021uLL >> (v9 - 84)))
      {
        v11 = 1;
        goto LABEL_9;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_20;
    }

    Value = [v2 intValue];
    goto LABEL_18;
  }

  v11 = [v2 BOOLValue];
LABEL_20:

  return v11;
}

id _DMTLogGeneral_7()
{
  if (_DMTLogGeneral_onceToken_12 != -1)
  {
    _DMTLogGeneral_cold_1_7();
  }

  v1 = _DMTLogGeneral_logObj_12;

  return v1;
}

void ExtractSignedData_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_24891B000, v0, v1, "Failed to create decoder (%{public}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ExtractSignedData_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_24891B000, v0, v1, "Failed to set decoder message (%{public}d). Is this signed data?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ExtractSignedData_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_24891B000, v0, v1, "Failed to finalize decoder message (%{public}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ExtractSignedData_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_24891B000, v0, v1, "Failed to determine number of signers (%{public}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ExtractSignedData_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_24891B000, v0, v1, "Failed to extract content from signed data (%{public}d)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}