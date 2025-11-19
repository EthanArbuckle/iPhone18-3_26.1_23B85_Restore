void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const char *UARPAccessoryPropertyToString(unint64_t a1)
{
  if (a1 > 0x2B)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1408[a1];
  }
}

const char *UARPFirmwareStagingCompletionStatusToString(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1568[a1];
  }
}

const char *UARPFirmwareApplicationStatusToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1698[a1];
  }
}

const char *UARPAssetLocationTypeToString(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC16C8[a1];
  }
}

id UARPAssetLocationTypeToURL(uint64_t a1)
{
  v1 = 0;
  if (a1 > 12)
  {
    if (a1 == 13)
    {
      v5 = MEMORY[0x277CBEBC0];
      v6 = kUARPAssetLocationTypeMobileAssetServerMesuMacOSStr;
    }

    else
    {
      if (a1 != 14)
      {
        goto LABEL_12;
      }

      v5 = MEMORY[0x277CBEBC0];
      v6 = kUARPAssetLocationTypeMobileAssetServerMesuStagingStr;
    }

    goto LABEL_11;
  }

  if (a1 == 11)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = kUARPAssetLocationTypeMobileAssetServerBasejumperStr;
LABEL_11:
    v1 = [v5 URLWithString:*v6];
    goto LABEL_12;
  }

  if (a1 == 12)
  {
    v1 = currentTrainName();

    if (v1)
    {
      v2 = MEMORY[0x277CBEBC0];
      v3 = currentTrainName();
      v4 = [@"https://basejumper.apple.com/livability/" stringByAppendingString:v3];
      v1 = [v2 URLWithString:v4];
    }
  }

LABEL_12:

  return v1;
}

const char *UARPAssetDownloadStatusToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1758[a1];
  }
}

const char *UARPAssetValidationStatusToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1770[a1];
  }
}

const char *UARPFirmwareUpdateAvailabilityStatusToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1788[a1];
  }
}

const char *UARPAccessoryTransportToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC17D8[a1];
  }
}

unint64_t UARPAccessoryTransportStringToType(void *a1)
{
  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:UARPAccessoryTransportToString(v2)];
    v4 = [v1 isEqualToString:v3];

    if (v4)
    {
      break;
    }

    if (++v2 == 11)
    {
      v2 = 0;
      break;
    }
  }

  return v2;
}

const char *UARPAccessoryCapabilityToString(uint64_t a1)
{
  v1 = "CHIP";
  v2 = "unrecognized";
  if (a1 == 1)
  {
    v2 = "power source";
  }

  if (a1 != 16)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "none";
  }
}

const char *UARPAccessoryHardwareFusingToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1830[a1];
  }
}

const char *UARPAccessoryVendorIDSourceToString(uint64_t a1)
{
  v1 = "unrecognized";
  if (a1 == 2)
  {
    v1 = "USB-IF";
  }

  if (a1 == 1)
  {
    return "Bluetooth-SIG";
  }

  else
  {
    return v1;
  }
}

const char *UARPControllerCapabilityToString(uint64_t a1)
{
  v1 = "unrecognized";
  if (a1 == 1)
  {
    v1 = "CHIP";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "UARP";
  }
}

const char *UARPAssetCheckOptionsToString(int a1)
{
  if (a1 == 1)
  {
    return "download asset";
  }

  else
  {
    return "unrecognized";
  }
}

const char *UARPUSBPDDeviceClassToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1848[a1];
  }
}

const char *UARPAccessoryUSBPDLocationTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1860[a1];
  }
}

const char *UARPHashAlgorithmToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC1878[a1];
  }
}

uint64_t *OUTLINED_FUNCTION_0_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id UARPPersonalizationTSSRequestWithSigningServer(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v17, 2u);
    }

    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v17 = 138543618;
    v18 = v5;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&dword_247AA7000, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v17, 0x16u);
  }

  v8 = String(v3, v5, 0);
  v9 = String();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_1();
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_2();
    }

    v12 = MGCopyAnswer();
    v13 = [v12 BOOLValue];
    v14 = 0;
    if (v13)
    {
      v14 = UARPPersonalizationTSSRequestWithSigningServerSSO(v3, v5);
    }

    v11 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

id String()
{
  if (TSSRequestLogToken_onceToken != -1)
  {
    TSSRequestLogToken_cold_1();
  }

  v1 = TSSRequestLogToken_logToken;

  return v1;
}

id String(void *a1, void *a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_247AA7000, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler();
  v8 = *MEMORY[0x277CBECE8];
  v9 = AMAuthInstallCreate();
  if (v9)
  {
    v10 = v9;
    if (AMAuthInstallSetSigningServerURL())
    {
      v11 = String();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        TSSRequestWithSigningServer_cold_1();
      }

LABEL_7:

      CFRelease(v10);
      goto LABEL_11;
    }

    if (a3)
    {
      v15 = String();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247AA7000, v15, OS_LOG_TYPE_INFO, "UARP: TSS request is using SSO", buf, 2u);
      }

      if (AMAuthInstallSsoInitialize())
      {
        v11 = String();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          TSSRequestWithSigningServer_cold_2();
        }

        goto LABEL_7;
      }

      if (AMAuthInstallSsoEnable())
      {
        v11 = String();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          TSSRequestWithSigningServer_cold_3();
        }

        goto LABEL_7;
      }
    }

    v16 = String();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v17 = @" <AppleConnect>";
      }

      else
      {
        v17 = @" ";
      }

      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_247AA7000, v16, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
    }

    v18 = String();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = v6;
      _os_log_impl(&dword_247AA7000, v18, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
    }

    PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
    v20 = String();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v21 = @" <AppleConnect>";
      }

      else
      {
        v21 = @" ";
      }

      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
    }

    v22 = String();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v25 = 0;
      _os_log_impl(&dword_247AA7000, v22, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
    }

    if (PersonalizedResponse)
    {
      v23 = String();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        TSSRequestWithSigningServer_cold_4(PersonalizedResponse, v23);
      }
    }

    CFRelease(v10);
  }

  else
  {
    v12 = String();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      TSSRequestWithSigningServer_cold_5();
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return 0;
}

id UARPPersonalizationTSSRequestWithSigningServerSSO(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = String();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v12, 2u);
    }

    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = String();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_247AA7000, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v12, 0x16u);
  }

  v8 = String(v3, v5, 1);
  if (!v8)
  {
    v9 = String();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      UARPPersonalizationTSSRequestWithSigningServerSSO_cold_1();
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

id UARPPersonalizationTSSRequestWithSigningServerAuthListed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = String();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    UARPPersonalizationTSSRequestWithSigningServerAuthListed_cold_1(v4, v3, v5);
  }

  v6 = String(v3, v4, 0);
  v7 = String();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_1();
    }

    v9 = v6;
  }

  else
  {
    if (v8)
    {
      UARPPersonalizationTSSRequestWithSigningServer_cold_2();
    }
  }

  return v6;
}

id UARPPersonalizationTSSResponseLazyManifest(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __UARPPersonalizationTSSResponseLazyManifest_block_invoke;
  v4[3] = &unk_278EC18C0;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_247AB9D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void __UARPPersonalizationTSSResponseLazyManifest_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 containsString:@"Ticket"])
  {
    v6 = [v5 copy];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

uint64_t __TSSRequestLogToken_block_invoke()
{
  TSSRequestLogToken_logToken = os_log_create("com.apple.accessoryupdater.uarp", "personalization");

  return MEMORY[0x2821F96F8]();
}

void String(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = String();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136446210;
    v6 = a2;
    _os_log_impl(&dword_247AA7000, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id UARPStringDynamicAssetsFilepath()
{
  if (UARPStringDynamicAssetsFilepath_onceToken != -1)
  {
    UARPStringDynamicAssetsFilepath_cold_1();
  }

  v1 = UARPStringDynamicAssetsFilepath_path;

  return v1;
}

void __UARPStringDynamicAssetsFilepath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"dynamicassets"];
  v2 = UARPStringDynamicAssetsFilepath_path;
  UARPStringDynamicAssetsFilepath_path = v1;
}

id UARPStringSupplementalAssetsFilepath()
{
  if (UARPStringSupplementalAssetsFilepath_onceToken != -1)
  {
    UARPStringSupplementalAssetsFilepath_cold_1();
  }

  v1 = UARPStringSupplementalAssetsFilepath_path;

  return v1;
}

void __UARPStringSupplementalAssetsFilepath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"supplementalassets"];
  v2 = UARPStringSupplementalAssetsFilepath_path;
  UARPStringSupplementalAssetsFilepath_path = v1;
}

id UARPStringTempFilesFilepath()
{
  if (UARPStringTempFilesFilepath_onceToken != -1)
  {
    UARPStringTempFilesFilepath_cold_1();
  }

  v1 = UARPStringTempFilesFilepath_path;

  return v1;
}

void __UARPStringTempFilesFilepath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"tmpfiles"];
  v2 = UARPStringTempFilesFilepath_path;
  UARPStringTempFilesFilepath_path = v1;
}

id UARPStringPcapFilesFilepath()
{
  if (UARPStringPcapFilesFilepath_onceToken != -1)
  {
    UARPStringPcapFilesFilepath_cold_1();
  }

  v1 = UARPStringPcapFilesFilepath_path;

  return v1;
}

void __UARPStringPcapFilesFilepath_block_invoke()
{
  v0 = MEMORY[0x277CBEA60];
  v1 = InternalStorageDirectoryPath();
  v4 = [v0 arrayWithObjects:{v1, @"pcapfiles", 0}];

  v2 = [MEMORY[0x277CCACA8] pathWithComponents:v4];
  v3 = UARPStringPcapFilesFilepath_path;
  UARPStringPcapFilesFilepath_path = v2;
}

id UARPPayloadHashAlgorithmStringToValue(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"SHA-256"])
  {
    if ([v1 caseInsensitiveCompare:@"SHA-384"])
    {
      v2 = [v1 caseInsensitiveCompare:@"SHA-512"];
      v3 = MEMORY[0x277CCABB0];
      if (v2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v3 = MEMORY[0x277CCABB0];
      v4 = 2;
    }
  }

  else
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = 1;
  }

  v5 = [v3 numberWithUnsignedShort:v4];

  return v5;
}

id UARPStringTmapDirectoryPath()
{
  if (UARPStringTmapDirectoryPath_onceToken != -1)
  {
    UARPStringTmapDirectoryPath_cold_1();
  }

  v1 = UARPStringTmapDirectoryPath_path;

  return v1;
}

void __UARPStringTmapDirectoryPath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"tmap"];
  v2 = UARPStringTmapDirectoryPath_path;
  UARPStringTmapDirectoryPath_path = v1;
}

id UARPStringTmapDatabaseFilePath()
{
  if (UARPStringTmapDatabaseFilePath_onceToken != -1)
  {
    UARPStringTmapDatabaseFilePath_cold_1();
  }

  v1 = UARPStringTmapDatabaseFilePath_path;

  return v1;
}

void __UARPStringTmapDatabaseFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = UARPStringTmapDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"tmapdatabase"];
  v2 = UARPStringTmapDatabaseFilePath_path;
  UARPStringTmapDatabaseFilePath_path = v1;
}

id UARPStringTapToRadarFilePath()
{
  if (UARPStringTapToRadarFilePath_onceToken != -1)
  {
    UARPStringTapToRadarFilePath_cold_1();
  }

  v1 = UARPStringTapToRadarFilePath_path;

  return v1;
}

void __UARPStringTapToRadarFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"taptoradar"];
  v2 = UARPStringTapToRadarFilePath_path;
  UARPStringTapToRadarFilePath_path = v1;
}

id UARPStringLogsDirectoryFilePath()
{
  if (UARPStringLogsDirectoryFilePath_onceToken != -1)
  {
    UARPStringLogsDirectoryFilePath_cold_1();
  }

  v1 = UARPStringLogsDirectoryFilePath_path;

  return v1;
}

void __UARPStringLogsDirectoryFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = UARPStringTapToRadarFilePath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"logs"];
  v2 = UARPStringLogsDirectoryFilePath_path;
  UARPStringLogsDirectoryFilePath_path = v1;
}

id UARPStringCrashAnalyticsDirectoryFilePath()
{
  if (UARPStringCrashAnalyticsDirectoryFilePath_onceToken != -1)
  {
    UARPStringCrashAnalyticsDirectoryFilePath_cold_1();
  }

  v1 = UARPStringCrashAnalyticsDirectoryFilePath_path;

  return v1;
}

void __UARPStringCrashAnalyticsDirectoryFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = UARPStringTapToRadarFilePath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"crsh"];
  v2 = UARPStringCrashAnalyticsDirectoryFilePath_path;
  UARPStringCrashAnalyticsDirectoryFilePath_path = v1;
}

id UARPStringCmapDirectoryPath()
{
  if (UARPStringCmapDirectoryPath_onceToken != -1)
  {
    UARPStringCmapDirectoryPath_cold_1();
  }

  v1 = UARPStringCmapDirectoryPath_path;

  return v1;
}

void __UARPStringCmapDirectoryPath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"cmap"];
  v2 = UARPStringCmapDirectoryPath_path;
  UARPStringCmapDirectoryPath_path = v1;
}

id UARPStringCmapDatabaseFilePath()
{
  if (UARPStringCmapDatabaseFilePath_onceToken != -1)
  {
    UARPStringCmapDatabaseFilePath_cold_1();
  }

  v1 = UARPStringCmapDatabaseFilePath_path;

  return v1;
}

void __UARPStringCmapDatabaseFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = UARPStringCmapDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"cmapdatabase"];
  v2 = UARPStringCmapDatabaseFilePath_path;
  UARPStringCmapDatabaseFilePath_path = v1;
}

id UARPStringSysdiagnoseDirectoryFilePath()
{
  if (UARPStringSysdiagnoseDirectoryFilePath_onceToken != -1)
  {
    UARPStringSysdiagnoseDirectoryFilePath_cold_1();
  }

  v1 = UARPStringSysdiagnoseDirectoryFilePath_path;

  return v1;
}

void __UARPStringSysdiagnoseDirectoryFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = InternalStorageDirectoryPath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"sysdiagnose"];
  v2 = UARPStringSysdiagnoseDirectoryFilePath_path;
  UARPStringSysdiagnoseDirectoryFilePath_path = v1;
}

id UARPStringPifMetricsFilePath()
{
  if (UARPStringPifMetricsFilePath_onceToken != -1)
  {
    UARPStringPifMetricsFilePath_cold_1();
  }

  v1 = UARPStringPifMetricsFilePath_path;

  return v1;
}

void __UARPStringPifMetricsFilePath_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = UARPStringSysdiagnoseDirectoryFilePath();
  v1 = [v0 stringWithFormat:@"%@/%@", v3, @"com.apple.Bluetooth.AccessoryCase.pif_daily"];
  v2 = UARPStringPifMetricsFilePath_path;
  UARPStringPifMetricsFilePath_path = v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 48);
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_247AC319C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_247AC6584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

id getCSVoiceTriggerRTModelClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSVoiceTriggerRTModelClass_softClass;
  v7 = getCSVoiceTriggerRTModelClass_softClass;
  if (!getCSVoiceTriggerRTModelClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCSVoiceTriggerRTModelClass_block_invoke;
    v3[3] = &unk_278EC24A8;
    v3[4] = &v4;
    __getCSVoiceTriggerRTModelClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247AC7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSVoiceTriggerRTModelClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreSpeechLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278EC24C8;
    v7 = 0;
    CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreSpeechLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CSVoiceTriggerRTModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSVoiceTriggerRTModelClass_block_invoke_cold_1();
  }

  getCSVoiceTriggerRTModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id UARPArrayOfExpiredFiles(void *a1, void *a2, double a3)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v32 = objc_opt_new();
    v7 = [MEMORY[0x277CCAB68] stringWithString:v5];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 stringByAppendingPathComponent:v6];

      v8 = v9;
    }

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v35 = [v10 enumeratorAtPath:v8];

    v34 = [MEMORY[0x277CBEAA8] now];
    v11 = 0;
    v33 = *MEMORY[0x277CCA150];
    v12 = 100;
    v13 = MEMORY[0x277D86220];
    do
    {
      v14 = v11;
      v11 = [v35 nextObject];

      if (!v11)
      {
        break;
      }

      v15 = MEMORY[0x277CCACA8];
      v40[0] = v8;
      v40[1] = v11;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
      v17 = [v15 pathWithComponents:v16];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        UARPArrayOfExpiredFiles_cold_1(v38, v17, &v39);
      }

      v18 = v34;
      v19 = MEMORY[0x277CCAA00];
      v20 = v17;
      v21 = [v19 defaultManager];
      v22 = [v21 attributesOfItemAtPath:v20 error:0];

      if (v22)
      {
        v23 = [v22 objectForKeyedSubscript:v33];
        [v23 dateByAddingTimeInterval:a3];
        v25 = v24 = v8;
        v26 = [v18 compare:v25];

        v8 = v24;
        if (v26 == 1)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v20;
            _os_log_impl(&dword_247AA7000, v13, OS_LOG_TYPE_DEFAULT, "Expired temp file %@ ", buf, 0xCu);
          }

          [v32 addObject:v20];
        }
      }

      else
      {
      }

      --v12;
    }

    while (v12);
    v27 = [MEMORY[0x277CBEA60] arrayWithArray:v32];

    v6 = v30;
    v5 = v31;
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_4_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id generateHashForDataAtLocationAsData(void *a1, int a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v5 error:a3];
  v7 = v6;
  v8 = 0;
  if (a2 && v6)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    CCDigestInit();
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v7 uarpReadDataUpToLength:0x4000 error:{a3, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45}];
      [v10 bytes];
      [v10 length];
      CCDigestUpdate();
      v11 = [v10 length];

      objc_autoreleasePoolPop(v9);
    }

    while (v11 >> 14);
    OutputSize = CCDigestGetOutputSize();
    v13 = &v16 - ((MEMORY[0x28223BE20]() + 15) & 0xFFFFFFFFFFFFFFF0);
    CCDigestFinal();
    if ([v7 uarpCloseAndReturnError:a3])
    {
      v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v13 length:OutputSize];
    }

    else
    {
      v8 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

id generateHashForDataAtLocation(void *a1, int a2, uint64_t a3)
{
  v3 = generateHashForDataAtLocationAsData(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if ([v4 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:@"%02x", *(v5 + v7++)];
      }

      while (v7 < [v4 length]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id generateBase64HashForDataAtLocation(void *a1, int a2, uint64_t a3)
{
  v3 = generateHashForDataAtLocationAsData(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_247AD46A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247AD5CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_247AD6C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247AD6F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247AD718C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247AD7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD783C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_247AD7A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD7CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_247AD7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD801C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD81C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD8508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AD8740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v6 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

const char *UARPAnalyticsAssetChannelTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC2740[a1];
  }
}

const char *UARPAnalyticsAssetDownloadStatusToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC2778[a1];
  }
}

const char *UARPAnalyticsStagingStatusToString(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC27A0[a1];
  }
}

const char *UARPAnalyticsApplyStatusToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC2808[a1];
  }
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247AED0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AF3AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247AF3E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247AF46B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247AF4D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247AF52A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247AF57FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247AF5CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void UARPPowerLogAccessoryReachable(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _getEventDictionaryForState(0, a1);
  [v7 setObject:v6 forKeyedSubscript:@"activeFWVers"];

  [v7 setObject:v5 forKeyedSubscript:@"fwVersion"];
  PLLogRegisteredEvent();
}

id _getEventDictionaryForState(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v11[0] = @"state";
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInt:a1];
  v11[1] = @"model";
  v12[0] = v6;
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 dictionaryWithDictionary:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void UARPPowerLogAccessoryUnreachable(void *a1)
{
  v1 = _getEventDictionaryForState(1, a1);
  PLLogRegisteredEvent();
}

void UARPPowerLogAssetOffered(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _getEventDictionaryForState(2, a1);
  [v7 setObject:v6 forKeyedSubscript:@"activeFWVers"];

  [v7 setObject:v5 forKeyedSubscript:@"fwVersion"];
  PLLogRegisteredEvent();
}

void UARPPowerLogStagingStatus(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a2;
  v13 = _getEventDictionaryForState(3, a1);
  [v13 setObject:v10 forKeyedSubscript:@"activeFWVers"];

  [v13 setObject:v9 forKeyedSubscript:@"fwVersion"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  [v13 setObject:v11 forKeyedSubscript:@"requestOffset"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a5];
  [v13 setObject:v12 forKeyedSubscript:@"bytesTransferred"];

  PLLogRegisteredEvent();
}

void UARPPowerLogStagingComplete(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v10 = _getEventDictionaryForState(4, a1);
  [v10 setObject:v8 forKeyedSubscript:@"activeFWVers"];

  [v10 setObject:v7 forKeyedSubscript:@"fwVersion"];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  [v10 setObject:v9 forKeyedSubscript:@"error"];

  PLLogRegisteredEvent();
}

uint64_t UARPPlatformEndpointRequestAppleInfoProperty(void *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v6 = a1;
  v11 = uarpHtonl(a3);
  v7 = [v6 uarpEndpoint];

  v8 = [v5 uarpEndpoint];
  v9 = uarpOuiAppleGenericFeatures();
  if (uarpPlatformEndpointSendVendorSpecific(v7, v8, v9, 0x20u, &v11, 4u))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t UARPPlatformControllerInit(void *a1)
{
  v1 = a1;
  bzero([v1 uarpEndpoint], 0x2C8uLL);
  v54 = 0u;
  v55 = 0;
  v56 = 0;
  v52 = 0x800000008000;
  v53 = 0x8000;
  LOWORD(v54) = 7;
  bzero(v4, 0x230uLL);
  v5 = fCoreUARPLayer3SendMessage;
  v6 = fCoreUARPLayer3DataTransferPause;
  v7 = fCoreUARPLayer3DataTransferPauseAck;
  v8 = fCoreUARPLayer3DataTransferResume;
  v9 = fCoreUARPLayer3DataTransferResumeAck;
  v10 = fCoreUARPLayer3SuperBinaryOffered;
  v11 = fCoreUARPLayer3DynamicAssetOffered;
  v12 = fCoreUARPLayer3ApplyStagedAssets;
  v13 = fCoreUARPLayer3ApplyStagedAssetsResponse;
  v14 = fCoreUARPLayer3ManufacturerName;
  v15 = fCoreUARPLayer3ManufacturerNameResponse;
  v16 = fCoreUARPLayer3ModelName;
  v17 = fCoreUARPLayer3ModelNameResponse;
  v18 = fCoreUARPLayer3SerialNumber;
  v19 = fCoreUARPLayer3SerialNumberResponse;
  v20 = fCoreUARPLayer3HardwareVersion;
  v21 = fCoreUARPLayer3HardwareVersionResponse;
  v36 = fCoreUARPLayer3FriendlyNameResponse;
  v22 = fCoreUARPLayer3ActiveFirmwareVersion2;
  v23 = fCoreUARPLayer3ActiveFirmwareVersionResponse;
  v24 = fCoreUARPLayer3StagedFirmwareVersion2;
  v25 = fCoreUARPLayer3StagedFirmwareVersionResponse;
  v26 = fCoreUARPLayer3LastError;
  v27 = fCoreUARPLayer3LastErrorResponse;
  v28 = fCoreUARPLayer3StatisticsResponse;
  v29 = fCoreUARPLayer3AssetSolicitation;
  v30 = fCoreUARPLayer3RescindAllAssets;
  v31 = fCoreUARPLayer3RescindAllAssetsAck;
  v32 = fCoreUARPLayer3WatchdogSet;
  v33 = fCoreUARPLayer3WatchdogCancel;
  v34 = fCoreUARPLayer3MonotonicClockTime;
  v35 = fCoreUARPLayer3ProtocolVersion;
  v37 = uarpPlatformDarwinHashInfo;
  v38 = uarpPlatformDarwinHashInit;
  v39 = uarpPlatformDarwinHashUpdate;
  v40 = uarpPlatformDarwinHashFinal;
  v41 = uarpPlatformDarwinHashLog;
  v42 = fCoreUARPLayer3AUDLogError;
  v43 = fCoreUARPLayer3AUDLogInfo;
  v44 = fCoreUARPLayer3AUDLogDebug;
  v45 = fCoreUARPLayer3AUDLogFault;
  v46 = fUarpLayer3DownstreamReachable2;
  v47 = fUarpLayer3DownstreamUnreachable2;
  v48 = fCoreUARPLayer3VendorSpecificRecvMsg;
  v49 = fCoreUARPLayer3VendorSpecificCheckExpectedResponse;
  v50 = fCoreUARPLayer3VendorSpecificCheckValidToSend;
  v51 = fCoreUARPLayer3VendorSpecificExceededRetries;
  bzero([v1 uarpVendorExtension], 0x218uLL);
  *([v1 uarpVendorExtension] + 16) = fCoreUARPLayer3AppleModelNumberResponse;
  *([v1 uarpVendorExtension] + 32) = fCoreUARPLayer3HardwareFusingTypeResponse;
  *([v1 uarpVendorExtension] + 48) = fCoreUARPLayer3ManifestPrefixResponse;
  *([v1 uarpVendorExtension] + 64) = fCoreUARPLayer3BoardIDResponse;
  *([v1 uarpVendorExtension] + 80) = fCoreUARPLayer3ChipIDResponse;
  *([v1 uarpVendorExtension] + 96) = fCoreUARPLayer3ChipRevisionResponse;
  *([v1 uarpVendorExtension] + 112) = fCoreUARPLayer3ECIDResponse;
  *([v1 uarpVendorExtension] + 144) = fCoreUARPLayer3SecurityDomainResponse;
  *([v1 uarpVendorExtension] + 160) = fCoreUARPLayer3SecurityModeResponse;
  *([v1 uarpVendorExtension] + 176) = fCoreUARPLayer3ProductionModeResponse;
  *([v1 uarpVendorExtension] + 192) = fCoreUARPLayer3ChipEpochResponse;
  *([v1 uarpVendorExtension] + 208) = fCoreUARPLayer3EnableMixMatchResponse;
  *([v1 uarpVendorExtension] + 224) = fCoreUARPLayer3SocLiveNonceResponse;
  *([v1 uarpVendorExtension] + 240) = fCoreUARPLayer3PrefixNeedsLogicalUnitNumberResponse;
  *([v1 uarpVendorExtension] + 256) = fCoreUARPLayer3SuffixNeedsLogicalUnitNumberResponse;
  *([v1 uarpVendorExtension] + 304) = fCoreUARPLayer3RequiresPersonalizationResponse;
  *([v1 uarpVendorExtension] + 480) = fCoreUARPLayer3NonceSeedResponse;
  *([v1 uarpVendorExtension] + 496) = fCoreUARPLayer3NonceHashResponse;
  v2 = uarpPlatformEndpointInit2([v1 uarpEndpoint], v1, 2u, &v52, v4, objc_msgSend(v1, "uarpVendorExtension"));

  return v2;
}

uint64_t fCoreUARPLayer3SendMessage(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v8 = MEMORY[0x277CBEA90];
      v9 = a2;
      v10 = a1;
      v11 = [[v8 alloc] initWithBytes:a3 length:a4];
      [v10 sendMessageToAccessory:v9 uarpMsg:v11];

      return 0;
    }
  }

  return result;
}

uint64_t fCoreUARPLayer3DataTransferPauseAck(void *a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      [a1 transferPauseAck:a2];
      return 0;
    }
  }

  return result;
}

uint64_t fCoreUARPLayer3DataTransferResumeAck(void *a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      [a1 transferResumeAck:a2];
      return 0;
    }
  }

  return result;
}

void fCoreUARPLayer3DynamicAssetOffered(void *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = *(a3 + 704);
  v8 = [[UARPAssetTag alloc] initWithChar1:*(a3 + 48) char2:*(a3 + 49) char3:*(a3 + 50) char4:*(a3 + 51)];
  if (v7)
  {
    [(UARPUploaderAsset *)v7 setUarpPlatformAsset:a3];
    goto LABEL_10;
  }

  v9 = getOSLogToken();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(v18) = 138412290;
    *(&v18 + 4) = v8;
    _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "Unsolicited dynamic asset %@", &v18, 0xCu);
  }

  v10 = uarpDynamicAssetURL(v8);
  if (!v10)
  {
    v11 = getOSLogToken();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      fCoreUARPLayer3DynamicAssetOffered_cold_1();
    }
  }

  v12 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v8 url:v10];
  v13 = [[UARPAsset alloc] initWithID:v12];
  v27 = 0;
  v35 = 0;
  v38 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  *&v18 = fCoreUARPLayer3AssetReady;
  *(&v18 + 1) = fCoreUARPLayer3AssetMetaDataTLV;
  v19 = fCoreUARPLayer3AssetMetaDataComplete;
  v20 = fCoreUARPLayer3AssetMetaDataProcessingError;
  v21 = fCoreUARPLayer3PayloadReady;
  v22 = fCoreUARPLayer3PayloadMetaDataTLV;
  v23 = fCoreUARPLayer3PayloadMetaDataComplete;
  v24 = fCoreUARPLayer3PayloadMetaDataProcessingError;
  v25 = fCoreUARPLayer3PayloadData;
  v26 = fCoreUARPLayer3PayloadDataComplete;
  v28 = fCoreUARPLayer3AssetGetBytesAtOffset;
  v29 = fCoreUARPLayer3AssetSetBytesAtOffset;
  v30 = fCoreUARPLayer3AssetRescinded;
  v31 = fCoreUARPLayer3AssetRescindedAck;
  v32 = fCoreUARPLayer3AssetCorrupt;
  v33 = fCoreUARPLayer3AssetOrphan;
  v34 = fCoreUARPLayer3AssetRelease;
  v36 = fCoreUARPLayer3AssetProcessingNotificationAck;
  v37 = fCoreUARPLayer3AssetPreProcessingNotification;
  v39 = fCoreUARPLayer3AssetAllHeadersAndMetaDataComplete;
  v7 = [[UARPUploaderAsset alloc] initWithUARPAsset:v13 remoteEndpoint:v6 callbacks:&v18 internalSolicit:1];
  [v6 addRxDynamicAsset:v7];

  [(UARPUploaderAsset *)v7 setUarpPlatformAsset:a3];
  if (v10)
  {
LABEL_10:
    v14 = getOSLogToken();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(v18) = 138412290;
      *(&v18 + 4) = v8;
      _os_log_impl(&dword_247AA7000, v14, OS_LOG_TYPE_INFO, "Accept dynamic asset %@", &v18, 0xCu);
    }

    if (uarpPlatformEndpointAssetAccept([v5 uarpEndpoint], objc_msgSend(v6, "uarpEndpoint"), -[UARPUploaderAsset uarpAsset](v7, "uarpAsset"), v7, -[UARPUploaderAsset uarpCallbacks](v7, "uarpCallbacks")))
    {
      v15 = getOSLogToken();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        fCoreUARPLayer3DynamicAssetOffered_cold_2();
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v17 = getOSLogToken();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LODWORD(v18) = 138412290;
    *(&v18 + 4) = v8;
    _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "Deny dynamic asset %@", &v18, 0xCu);
  }

  if (uarpPlatformEndpointAssetDeny([v5 uarpEndpoint], objc_msgSend(v6, "uarpEndpoint"), -[UARPUploaderAsset uarpAsset](v7, "uarpAsset"), 2560, v7, -[UARPUploaderAsset uarpCallbacks](v7, "uarpCallbacks")))
  {
    v15 = getOSLogToken();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      fCoreUARPLayer3DynamicAssetOffered_cold_3();
    }

    goto LABEL_15;
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t fCoreUARPLayer3ApplyStagedAssetsResponse(void *a1, uint64_t a2, int a3)
{
  v3 = 30;
  if (a1 && a2)
  {
    v4 = a3 - 1;
    if ((a3 - 1) >= 6)
    {
      v4 = 1;
    }

    [a1 applyStagedAssetStatus:a2 status:v4];
    return 0;
  }

  return v3;
}

void fCoreUARPLayer3ManufacturerNameResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = a1;
    v10 = [[v7 alloc] initWithBytes:a3 length:a4 encoding:4];
    [v8 setManufacturerName:v10];
    [v9 updateManufacturerName:v10 remoteEndpoint:v8];
  }
}

void fCoreUARPLayer3ModelNameResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = a1;
    v10 = [[v7 alloc] initWithBytes:a3 length:a4 encoding:4];
    [v8 setModelName:v10];
    [v9 updateModelName:v10 remoteEndpoint:v8];
  }
}

void fCoreUARPLayer3SerialNumberResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = a1;
    v10 = [[v7 alloc] initWithBytes:a3 length:a4 encoding:4];
    [v8 setSerialNumber:v10];
    [v9 updateSerialNumber:v10 remoteEndpoint:v8];
  }
}

void fCoreUARPLayer3HardwareVersionResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = a1;
    v10 = [[v7 alloc] initWithBytes:a3 length:a4 encoding:4];
    [v8 setHardwareVersion:v10];
    [v9 updateHardwareVersion:v10 remoteEndpoint:v8];
  }
}

void fCoreUARPLayer3FriendlyNameResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v10 = a1;
  v7 = a2;
  if (v10 && v7)
  {
    if (a3 && a4)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    }

    else
    {
      v8 = @"Unknown";
    }

    v9 = v8;
    [v7 setFriendlyName:v8];
    [v10 updateFriendlyName:v9 remoteEndpoint:v7];
  }
}

void fCoreUARPLayer3ActiveFirmwareVersionResponse(void *a1, void *a2, unsigned int *a3)
{
  if (a1 && a2)
  {
    v5 = MEMORY[0x277CCAB68];
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a2;
    v10 = a1;
    v12 = [v5 stringWithFormat:@"%u.%u.%u", v6, v7, v8];
    if (a3[3])
    {
      [v12 appendFormat:@".%u", a3[3]];
    }

    v11 = [[UARPAssetVersion alloc] initWithVersionString:v12];
    [v9 setFirmwareVersion:v11];

    [v10 updateActiveFirmwareVersion:v12 remoteEndpoint:v9];
  }
}

void fCoreUARPLayer3StagedFirmwareVersionResponse(void *a1, void *a2, unsigned int *a3)
{
  if (a1 && a2)
  {
    v5 = MEMORY[0x277CCAB68];
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a2;
    v10 = a1;
    v12 = [v5 stringWithFormat:@"%u.%u.%u", v6, v7, v8];
    if (a3[3])
    {
      [v12 appendFormat:@".%u", a3[3]];
    }

    v11 = [[UARPAssetVersion alloc] initWithVersionString:v12];
    [v9 setStagedFirmwareVersion:v11];

    [v10 updateStagedFirmwareVersion:v12 remoteEndpoint:v9];
  }
}

void *fCoreUARPLayer3LastErrorResponse(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 updateLastError:*(a3 + 4) remoteEndpoint:a2];
    }
  }

  return a1;
}

void fCoreUARPLayer3StatisticsResponse(void *a1, void *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = [[UARPStats alloc] initWithStatistics:a3];
    [v6 updateStatistics:v7 remoteEndpoint:v5];
  }
}

uint64_t fCoreUARPLayer3WatchdogSet(uint64_t a1, void *a2, unsigned int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      [a2 setLayer2WatchdogTimer:a1 timeoutMS:a3];
      return 0;
    }
  }

  return result;
}

uint64_t fCoreUARPLayer3WatchdogCancel(uint64_t a1, void *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      [a2 cancelLayer2WatchdogTimer];
      return 0;
    }
  }

  return result;
}

__darwin_time_t fCoreUARPLayer3MonotonicClockTime()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    return 0;
  }

  else
  {
    return v1.tv_sec;
  }
}

void *fCoreUARPLayer3ProtocolVersion(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 protocolVersionSelected:a2 protocolVersion:a3];
    }
  }

  return a1;
}

void fCoreUARPLayer3AUDLogError(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v11 = a1;
    vsnprintf(fCoreUARPLayer3AUDLogError_logBuffer, 0x200uLL, a3, &a9);
    v12 = [v11 logTokenForCategory:a2];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      fCoreUARPLayer3AUDLogError_cold_1();
    }
  }
}

void fCoreUARPLayer3AUDLogInfo(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v11 = a1;
    vsnprintf(fCoreUARPLayer3AUDLogInfo_logBuffer, 0x200uLL, a3, &a9);
    v12 = [v11 logTokenForCategory:a2];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v15 = getpid();
      v16 = 2080;
      v17 = fCoreUARPLayer3AUDLogInfo_logBuffer;
      _os_log_impl(&dword_247AA7000, v12, OS_LOG_TYPE_INFO, "[pid=%d] %s", buf, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AUDLogDebug(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v11 = a1;
    vsnprintf(fCoreUARPLayer3AUDLogDebug_logBuffer, 0x200uLL, a3, &a9);
    v12 = [v11 logTokenForCategory:a2];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      fCoreUARPLayer3AUDLogDebug_cold_1();
    }
  }
}

void fCoreUARPLayer3AUDLogFault(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v11 = a1;
    vsnprintf(fCoreUARPLayer3AUDLogFault_logBuffer, 0x200uLL, a3, &a9);
    v12 = [v11 logTokenForCategory:a2];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      fCoreUARPLayer3AUDLogFault_cold_1(v12);
    }
  }
}

uint64_t fUarpLayer3DownstreamReachable2(void *a1, void *a2, uint64_t a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v6 = a2;
      v7 = a1;
      v8 = [[UARPUploaderEndpoint alloc] initDownstreamWithDirectEndpoint:v6 endpointID:a3 uploader:v7];
      [v6 addDownstreamEndpoint:v8];
      v9 = [v6 accessory];

      [v7 accessoryReachable:v9 remoteEndpoint:v8 error:0];
      return 0;
    }
  }

  return result;
}

uint64_t fUarpLayer3DownstreamUnreachable2(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 30;
  if (v5 && v6)
  {
    v9 = [v6 downstreamEndpoint:a3];
    if (v9)
    {
      v10 = [v7 accessory];
      [v5 accessoryUnreachable:v10 remoteEndpoint:v9 error:0];

      [v7 removeDownstreamEndpoint:v9];
      v8 = 0;
    }
  }

  return v8;
}

uint64_t fCoreUARPLayer3VendorSpecificRecvMsg(void *a1, void *a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  if (!a1 || !a2)
  {
    return 30;
  }

  v11 = a2;
  v12 = [a1 uarpEndpoint];
  v13 = [v11 uarpEndpoint];

  return uarpApplePlatformEndpointRecvMessage(v12, v13, a3, a4, a5, a6);
}

BOOL fCoreUARPLayer3VendorSpecificCheckExpectedResponse(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v11 = a2;
  v12 = [a1 uarpEndpoint];
  v13 = [v11 uarpEndpoint];

  return uarpApplePlatformMessageCheckExpectedResponse(v12, v13, a3, a4, a5, a6);
}

uint64_t fCoreUARPLayer3VendorSpecificCheckValidToSend(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v7 = a2;
  v8 = [a1 uarpEndpoint];
  v9 = [v7 uarpEndpoint];

  return uarpApplePlatformMessageCheckValidToSend(v8, v9, a3, a4);
}

uint64_t fCoreUARPLayer3VendorSpecificExceededRetries(uint64_t result, void *a2, uint64_t a3, unsigned int a4)
{
  if (result && a2)
  {
    v6 = result;
    v7 = a2;
    v8 = [v6 uarpEndpoint];
    v9 = [v7 uarpEndpoint];

    return uarpApplePlatformMessageExceededRetries(v8, v9, a3, a4);
  }

  return result;
}

void fCoreUARPLayer3AppleModelNumberResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v11 = a1;
  v7 = a2;
  if (v11 && v7)
  {
    if (a3 && a4)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    }

    else
    {
      if (*([v7 uarpOptions] + 24))
      {
        goto LABEL_9;
      }

      v9 = [v7 accessory];
      v10 = [v9 getID];
      v8 = [v10 modelIdentifier];
    }

    [v7 setAppleModelNumber:v8];
    [v11 updateAppleModelNumber:v8 remoteEndpoint:v7];
  }

LABEL_9:
}

void fCoreUARPLayer3HardwareFusingTypeResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v10 = a1;
  v7 = a2;
  if (v10 && v7)
  {
    if (a3 && a4)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
    }

    else
    {
      if (*([v7 uarpOptions] + 24))
      {
        goto LABEL_9;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", UARPAccessoryHardwareFusingToString(2uLL)];
    }

    v9 = v8;
    [v7 setHwFusingType:v8];
    [v10 updateHardwareFusingType:v9 remoteEndpoint:v7];
  }

LABEL_9:
}

void fCoreUARPLayer3ManifestPrefixResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = a1;
    v10 = [[v7 alloc] initWithBytes:a3 length:a4 encoding:4];
    [v9 updateManifestPrefix:v10 remoteEndpoint:v8];
  }
}

void *fCoreUARPLayer3BoardIDResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 8)
    {
      v4 = *a3;
    }

    else if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateBoardID:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3ChipIDResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateChipID:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3ChipRevisionResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateChipRevision:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3ECIDResponse(void *a1, const char *a2, uint64_t *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 8)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateECID:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3SecurityDomainResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateSecurityDomain:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3SecurityModeResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateSecurityMode:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3ProductionModeResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateProductionMode:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3ChipEpochResponse(void *a1, const char *a2, unsigned int *a3, int a4)
{
  if (a1 && a2)
  {
    if (a4 == 4)
    {
      v4 = *a3;
    }

    else
    {
      v4 = 0;
    }

    return [a1 updateChipEpoch:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3EnableMixMatchResponse(void *a1, const char *a2, _BYTE *a3, int a4)
{
  if (a1 && a2)
  {
    v4 = a4 == 1 && *a3 != 0;
    return [a1 updateEnableMixMatch:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3SocLiveNonceResponse(void *a1, const char *a2, _BYTE *a3, int a4)
{
  if (a1 && a2)
  {
    v4 = a4 == 1 && *a3 != 0;
    return [a1 updateSocLiveNonce:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3PrefixNeedsLogicalUnitNumberResponse(void *a1, const char *a2, _BYTE *a3, int a4)
{
  if (a1 && a2)
  {
    v4 = a4 == 1 && *a3 != 0;
    return [a1 updatePrefixNeedsLogicalUnitNumber:v4 remoteEndpoint:a2];
  }

  return a1;
}

void *fCoreUARPLayer3SuffixNeedsLogicalUnitNumberResponse(void *a1, const char *a2, _BYTE *a3, int a4)
{
  if (a1 && a2)
  {
    v4 = a4 == 1 && *a3 != 0;
    return [a1 updateSuffixNeedsLogicalUnitNumber:v4 remoteEndpoint:a2];
  }

  return a1;
}

void fCoreUARPLayer3NonceSeedResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = a4;
    v8 = a2;
    v9 = a1;
    v10 = [v6 dataWithBytes:a3 length:v7];
    [v9 updateNonceSeed:v10 remoteEndpoint:v8];
  }
}

void fCoreUARPLayer3NonceHashResponse(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = a4;
    v8 = a2;
    v9 = a1;
    v10 = [v6 dataWithBytes:a3 length:v7];
    [v9 updateNonceHash:v10 remoteEndpoint:v8];
  }
}

uint64_t UARPPlatformControllerAddAccessory(void *a1, void *a2)
{
  v3 = a2;
  v4 = uarpPlatformRemoteEndpointAdd([a1 uarpEndpoint], objc_msgSend(v3, "uarpEndpoint"), objc_msgSend(v3, "uarpOptions"), v3);

  return v4;
}

uint64_t UARPPlatformControllerRemoveAccessory(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformRemoteEndpointRemove(v4, v5);
}

uint64_t UARPPlatformControllerRecvMessage(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = getOSLogToken();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    UARPPlatformControllerRecvMessage_cold_1();
  }

  v9 = [v7 uarpEndpoint];
  v10 = uarpPlatformEndpointRecvMessage(v9, [v5 uarpEndpoint], objc_msgSend(v6, "mutableBytes"), objc_msgSend(v6, "length"));

  return v10;
}

id getOSLogToken()
{
  v0 = getOSLogToken__log;
  if (!getOSLogToken__log)
  {
    v1 = os_log_create("com.apple.accessoryupdater.uarp", "uploader");
    v2 = getOSLogToken__log;
    getOSLogToken__log = v1;

    v0 = getOSLogToken__log;
  }

  return v0;
}

uint64_t UARPPlatformControllerLayer3WatchDogExpired(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformEndpointWatchDogExpired(v4, v5);
}

uint64_t UARPPlatformControllerQueryProperty(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 3;
  switch(a3)
  {
    case 0:
      v9 = 1;
      goto LABEL_34;
    case 1:
      v9 = 2;
      goto LABEL_34;
    case 2:
      v9 = 3;
      goto LABEL_34;
    case 3:
      v9 = 4;
      goto LABEL_34;
    case 4:
      v9 = 5;
      goto LABEL_34;
    case 5:
      v9 = 6;
      goto LABEL_34;
    case 6:
      v9 = 7;
      goto LABEL_34;
    case 11:
      v10 = 1;
      goto LABEL_42;
    case 12:
      v10 = 2;
      goto LABEL_42;
    case 13:
      v9 = 9;
LABEL_34:
      [v6 queueInfoProperty:v9];
      goto LABEL_43;
    case 14:
      v10 = 3;
      goto LABEL_42;
    case 15:
      v10 = 4;
      goto LABEL_42;
    case 16:
      v10 = 5;
      goto LABEL_42;
    case 17:
      v10 = 6;
      goto LABEL_42;
    case 18:
      v10 = 7;
      goto LABEL_42;
    case 19:
      v10 = 8;
      goto LABEL_42;
    case 20:
      v10 = 9;
      goto LABEL_42;
    case 21:
      v10 = 10;
      goto LABEL_42;
    case 22:
      v10 = 11;
      goto LABEL_42;
    case 23:
      v10 = 12;
      goto LABEL_42;
    case 24:
      v10 = 13;
      goto LABEL_42;
    case 25:
      v10 = 14;
      goto LABEL_42;
    case 26:
      v10 = 15;
      goto LABEL_42;
    case 27:
      v10 = 16;
      goto LABEL_42;
    case 28:
      v10 = 17;
      goto LABEL_42;
    case 29:
      v10 = 18;
      goto LABEL_42;
    case 30:
      v10 = 19;
      goto LABEL_42;
    case 31:
      v10 = 20;
      goto LABEL_42;
    case 32:
      v10 = 21;
      goto LABEL_42;
    case 33:
      v10 = 22;
      goto LABEL_42;
    case 34:
      v10 = 23;
      goto LABEL_42;
    case 36:
      v10 = 24;
      goto LABEL_42;
    case 37:
      v10 = 25;
      goto LABEL_42;
    case 38:
      v10 = 26;
      goto LABEL_42;
    case 39:
      v10 = 27;
      goto LABEL_42;
    case 40:
      v10 = 28;
      goto LABEL_42;
    case 41:
      v10 = 29;
      goto LABEL_42;
    case 42:
      v10 = 30;
      goto LABEL_42;
    case 43:
      v10 = 31;
LABEL_42:
      [v6 queueAppleProperty:v10];
LABEL_43:
      v8 = 0;
      break;
    default:
      break;
  }

  return v8;
}

uint64_t UARPPlatformControllerOfferFirmwareAsset(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 txFirmwareAssets];
  v9 = [v8 count];

  if (v9)
  {
    p_super = getOSLogToken();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "UARPPlatformControllerOfferFirmwareAsset";
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_247AA7000, p_super, OS_LOG_TYPE_INFO, "%s: Firmware already in flight. Do not offet asset %@ to endpoint %@", buf, 0x20u);
    }

    v11 = 16;
  }

  else
  {
    v14 = [[UARPUploaderAsset alloc] initWithUARPAsset:v7 remoteEndpoint:v6 callbacks:&v23 internalSolicit:0];
    p_super = &v14->super;
    if (v14)
    {
      [(UARPUploaderAsset *)v14 processHostTLVs];
      v15 = [p_super invalidHwRevision];
      v16 = getOSLogToken();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          UARPPlatformControllerOfferFirmwareAsset_cold_2();
        }

        v11 = 57;
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v19 = [p_super minimumHostBatteryLevel];
          *buf = 136315650;
          v25 = "UARPPlatformControllerOfferFirmwareAsset";
          v26 = 2112;
          v27 = p_super;
          v28 = 2048;
          v29 = v19;
          _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "%s: Minimum Host Battery Level for asset <%@> is %lu", buf, 0x20u);
        }

        v20 = getOSLogToken();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [p_super triggerHostBatteryLevel];
          *buf = 136315650;
          v25 = "UARPPlatformControllerOfferFirmwareAsset";
          v26 = 2112;
          v27 = p_super;
          v28 = 2048;
          v29 = v21;
          _os_log_impl(&dword_247AA7000, v20, OS_LOG_TYPE_INFO, "%s: Trigger Host Battery Level for asset <%@> is %lu", buf, 0x20u);
        }

        v11 = uarpPlatformEndpointPrepareSuperBinary([v5 uarpEndpoint], objc_msgSend(v6, "uarpEndpoint"), p_super, -[NSObject uarpCallbacks](p_super, "uarpCallbacks"));
        if (v11)
        {
          v22 = getOSLogToken();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            UARPPlatformControllerOfferFirmwareAsset_cold_1(v11);
          }
        }

        else
        {
          [v6 addTxFirmwareAsset:p_super];
          UARPPlatformControllerReofferFirmwareAsset(v5, v6);
        }
      }
    }

    else
    {
      v18 = getOSLogToken();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        UARPPlatformControllerOfferFirmwareAsset_cold_3();
      }

      v11 = 11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void UARPPlatformControllerReofferFirmwareAsset(void *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 uarpVersion])
  {
    v5 = [v4 idealTxFirmwareAsset];
    v6 = v5;
    if (!v5)
    {
      v13 = getOSLogToken();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = [v4 accessory];
        v44 = 136315394;
        v45 = "UARPPlatformControllerReofferFirmwareAsset";
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&dword_247AA7000, v13, OS_LOG_TYPE_INFO, "%s: Do NOT offer NIL firmware to %@", &v44, 0x16u);
      }

      goto LABEL_20;
    }

    v7 = [v5 assetVersion];
    v8 = [v4 firmwareVersion];
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      v10 = getOSLogToken();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v6 assetVersion];
        v12 = [v4 firmwareVersion];
        v44 = 136315650;
        v45 = "UARPPlatformControllerReofferFirmwareAsset";
        v46 = 2112;
        v47 = v11;
        v48 = 2112;
        v49 = v12;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "%s: Do not offer firmware (active == asset) %@ to %@", &v44, 0x20u);
      }

      v13 = [v6 asset];
      v14 = v3;
      v15 = v4;
      v16 = v13;
      v17 = 12;
LABEL_19:
      [v14 assetStagingComplete:v15 asset:v16 status:v17];
LABEL_20:

      goto LABEL_21;
    }

    v19 = [v6 assetVersion];
    v20 = [v4 firmwareVersion];
    v21 = [v19 isGreaterThan:v20];

    if ((v21 & 1) == 0)
    {
      v28 = getOSLogToken();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v6 assetVersion];
        v30 = [v4 firmwareVersion];
        v44 = 136315650;
        v45 = "UARPPlatformControllerReofferFirmwareAsset";
        v46 = 2112;
        v47 = v29;
        v48 = 2112;
        v49 = v30;
        _os_log_impl(&dword_247AA7000, v28, OS_LOG_TYPE_INFO, "%s: Do not offer firmware (active > asset) %@ to %@", &v44, 0x20u);
      }

      v13 = [v6 asset];
      v14 = v3;
      v15 = v4;
      v16 = v13;
      v17 = 14;
      goto LABEL_19;
    }

    v22 = [v6 assetVersion];
    v23 = [v4 stagedFirmwareVersion];
    v24 = [v22 isEqual:v23];

    if (v24)
    {
      v25 = getOSLogToken();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v6 assetVersion];
        v27 = [v4 stagedFirmwareVersion];
        v44 = 136315650;
        v45 = "UARPPlatformControllerReofferFirmwareAsset";
        v46 = 2112;
        v47 = v26;
        v48 = 2112;
        v49 = v27;
        _os_log_impl(&dword_247AA7000, v25, OS_LOG_TYPE_INFO, "%s: Do not offer firmware (staged == asset) %@ to %@", &v44, 0x20u);
      }

      v13 = [v6 asset];
      v14 = v3;
      v15 = v4;
      v16 = v13;
      v17 = 11;
      goto LABEL_19;
    }

    v32 = [v6 assetVersion];
    v33 = [v4 stagedFirmwareVersion];
    v34 = [v32 isGreaterThan:v33];

    v35 = getOSLogToken();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
    if ((v34 & 1) == 0)
    {
      if (v36)
      {
        v42 = [v6 assetVersion];
        v43 = [v4 stagedFirmwareVersion];
        v44 = 136315650;
        v45 = "UARPPlatformControllerReofferFirmwareAsset";
        v46 = 2112;
        v47 = v42;
        v48 = 2112;
        v49 = v43;
        _os_log_impl(&dword_247AA7000, v35, OS_LOG_TYPE_INFO, "%s: Do not offer firmware (staged > asset) %@ to %@", &v44, 0x20u);
      }

      v13 = [v6 asset];
      v14 = v3;
      v15 = v4;
      v16 = v13;
      v17 = 13;
      goto LABEL_19;
    }

    if (v36)
    {
      v37 = [v6 assetVersion];
      v38 = [v4 firmwareVersion];
      v39 = [v4 stagedFirmwareVersion];
      v44 = 136315906;
      v45 = "UARPPlatformControllerReofferFirmwareAsset";
      v46 = 2112;
      v47 = v37;
      v48 = 2112;
      v49 = v38;
      v50 = 2112;
      v51 = v39;
      _os_log_impl(&dword_247AA7000, v35, OS_LOG_TYPE_INFO, "%s: [Re-]Offer firmware %@ to %@ (staged %@)", &v44, 0x2Au);
    }

    v40 = uarpPlatformEndpointOfferAsset([v3 uarpEndpoint], objc_msgSend(v4, "uarpEndpoint"), v6);
    v41 = getOSLogToken();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      UARPPlatformControllerReofferFirmwareAsset_cold_1(v40);
    }

    if (!v40)
    {
      -[NSObject setUarpPlatformAsset:](v6, "setUarpPlatformAsset:", uarpPlatformAssetFindByAssetContext([v3 uarpEndpoint], v6));
    }
  }

  else
  {
    v6 = getOSLogToken();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v44 = 136315394;
      v45 = "UARPPlatformControllerReofferFirmwareAsset";
      v46 = 2112;
      v47 = v4;
      _os_log_impl(&dword_247AA7000, v6, OS_LOG_TYPE_INFO, "%s: Wait until Protocol Version to [Re-]Offer firmware to %@", &v44, 0x16u);
    }
  }

LABEL_21:

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t UARPPlatformControllerNoFirmwareAssetAvailable(void *a1, void *a2)
{
  v3 = a2;
  updated = uarpPlatformNoFirmwareUpdateAvailable([a1 uarpEndpoint], objc_msgSend(v3, "uarpEndpoint"));

  return updated;
}

uint64_t UARPPlatformControllerRescindAsset(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v5 findMatch:a3];
  v8 = [v6 uarpEndpoint];

  v9 = [v5 uarpEndpoint];
  v10 = uarpPlatformEndpointRescindAsset(v8, v9, v7);

  return v10;
}

uint64_t UARPPlatformControllerResindAllAssets(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformEndpointRescindAllAssets(v4, v5);
}

uint64_t UARPPlatformControllerApplyStagedAssets(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformEndpointApplyStagedAssets(v4, v5);
}

uint64_t UARPPlatformControllerPauseAssetTransfers(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformEndpointPauseAssetTransfers(v4, v5);
}

uint64_t UARPPlatformControllerResumeAssetTransfers(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 uarpEndpoint];
  v5 = [v3 uarpEndpoint];

  return uarpPlatformEndpointResumeAssetTransfers(v4, v5);
}

UARPUploaderAsset *UARPPlatformControllerPrepareSolicitedDynamicAsset(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *&v20 = 0;
  *&v24 = 0;
  *(&v25 + 1) = 0;
  v27 = 0u;
  v28 = 0u;
  *(&v26 + 1) = 0;
  v10 = fCoreUARPLayer3AssetReady;
  v11 = fCoreUARPLayer3AssetMetaDataTLV;
  v12 = fCoreUARPLayer3AssetMetaDataComplete;
  v13 = fCoreUARPLayer3AssetMetaDataProcessingError;
  v14 = fCoreUARPLayer3PayloadReady;
  v15 = fCoreUARPLayer3PayloadMetaDataTLV;
  v16 = fCoreUARPLayer3PayloadMetaDataComplete;
  v17 = fCoreUARPLayer3PayloadMetaDataProcessingError;
  v18 = fCoreUARPLayer3PayloadData;
  v19 = fCoreUARPLayer3PayloadDataComplete;
  *(&v20 + 1) = fCoreUARPLayer3AssetGetBytesAtOffset;
  *&v21 = fCoreUARPLayer3AssetSetBytesAtOffset;
  *(&v21 + 1) = fCoreUARPLayer3AssetRescinded;
  *&v22 = fCoreUARPLayer3AssetRescindedAck;
  *(&v22 + 1) = fCoreUARPLayer3AssetCorrupt;
  *&v23 = fCoreUARPLayer3AssetOrphan;
  *(&v23 + 1) = fCoreUARPLayer3AssetRelease;
  *(&v24 + 1) = fCoreUARPLayer3AssetProcessingNotificationAck;
  *&v25 = fCoreUARPLayer3AssetPreProcessingNotification;
  *&v26 = fCoreUARPLayer3AssetAllHeadersAndMetaDataComplete;
  v6 = a3;
  v7 = a2;
  v8 = [[UARPUploaderAsset alloc] initWithUARPAsset:v6 remoteEndpoint:v7 callbacks:&v10 internalSolicit:a4];

  [v7 addRxDynamicAsset:{v8, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];

  return v8;
}

uint64_t UARPPlatformControllerSolicitDynamicAsset(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 asset];
  v9 = [v8 id];
  v10 = [v9 tag];
  LOBYTE(v19) = [v10 char1];

  v11 = [v8 id];
  v12 = [v11 tag];
  BYTE1(v19) = [v12 char2];

  v13 = [v8 id];
  v14 = [v13 tag];
  BYTE2(v19) = [v14 char3];

  v15 = [v8 id];
  v16 = [v15 tag];
  HIBYTE(v19) = [v16 char4];

  v17 = uarpPlatformEndpointPrepareSolicitedDynamicAsset([v5 uarpEndpoint], objc_msgSend(v6, "uarpEndpoint"), v7, &v19, objc_msgSend(v7, "uarpCallbacks"));
  if (!v17)
  {
    v17 = uarpPlatformEndpointSolicitDynamicAsset([v5 uarpEndpoint], objc_msgSend(v6, "uarpEndpoint"), &v19, v7);
  }

  return v17;
}

uint64_t UARPPlatformControllerOfferDynamicAsset(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v25 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = 0u;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v19 = fCoreUARPLayer3AssetGetBytesAtOffset;
  v21 = fCoreUARPLayer3AssetRescindedAck;
  v22 = fCoreUARPLayer3AssetCorrupt;
  v23 = fCoreUARPLayer3AssetOrphan;
  v24 = fCoreUARPLayer3AssetRelease;
  *&v25 = fCoreUARPLayer3AssetProcessingNotification;
  v11 = a4;
  v12 = a3;
  v13 = [[UARPUploaderAsset alloc] initWithUARPAsset:v12 remoteEndpoint:v10 callbacks:v17 internalSolicit:a5];

  LOBYTE(v16) = [v11 char1];
  BYTE1(v16) = [v11 char2];
  BYTE2(v16) = [v11 char3];
  LOBYTE(v12) = [v11 char4];

  HIBYTE(v16) = v12;
  v14 = uarpPlatformEndpointPrepareDynamicAsset([v9 uarpEndpoint], objc_msgSend(v10, "uarpEndpoint"), v13, &v16, -[UARPUploaderAsset uarpCallbacks](v13, "uarpCallbacks"));
  if (!v14)
  {
    [v10 addTxDynamicAsset:v13];
    v14 = uarpPlatformEndpointOfferAsset([v9 uarpEndpoint], objc_msgSend(v10, "uarpEndpoint"), v13);
  }

  return v14;
}

uint64_t UarpLayer4DiscoverDownstreamEndpoints(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = getOSLogToken();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 accessory];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_247AA7000, v5, OS_LOG_TYPE_INFO, "LAYER3.DOWNSTREAM.DISCOVERY %@", &v13, 0xCu);
  }

  v7 = [v4 uarpEndpoint];
  v8 = uarpPlatformDownstreamEndpointDiscovery(v7, [v3 uarpEndpoint]);
  if (v8)
  {
    v9 = getOSLogToken();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = uarpStatusCodeToString(v8);
      v13 = 136315138;
      v14 = v10;
      _os_log_impl(&dword_247AA7000, v9, OS_LOG_TYPE_INFO, "uarpPlatformDownstreamEndpointDiscovery() failed, status = %s", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void UARPPlatformControllerResolicitDynamicAssets(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 rxDynamicAssets];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 internalSolicit] & 1) == 0 && UARPPlatformControllerSolicitDynamicAsset(v3, v4, v10))
        {
          v11 = getOSLogToken();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            UARPPlatformControllerResolicitDynamicAssets_cold_1();
          }

          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t fCoreUARPLayer3AssetGetBytesAtOffset(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7)
{
  v18 = 0;
  v13 = a2;
  v14 = a1;
  v15 = [a3 asset];
  v16 = [v14 requestBytesInRangeForAccessory:v13 asset:v15 bytes:a4 length:a5 offset:a6 bytesCopied:&v18 offsetUsed:0];

  *a7 = v18;
  return v16;
}

void fCoreUARPLayer3AssetRescindedAck(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [a3 asset];
  [v6 rescindStagedAssetsAck:v5 asset:v7];
}

uint64_t fCoreUARPLayer3AssetProcessingNotification(void *a1, void *a2, void *a3, __int16 a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (([v9 internalSolicit] & 1) == 0)
  {
    v10 = UARPUploaderStagingStatusConvert(a4);
    v11 = [v9 asset];
    [v7 assetStagingComplete:v8 asset:v11 status:v10];
  }

  return 0;
}

uint64_t UARPUploaderStagingStatusConvert(__int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 != 2)
    {
      return 2;
    }

    v2 = ((a1 - 256) >> 8);
    v3 = v2 + 9;
    v4 = v2 >= 0xE;
    v1 = 8;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 6;
      }

      if (a1 == 5)
      {
        return 7;
      }

      return 2;
    }

    v5 = ((a1 - 256) >> 8);
    v3 = v5 + 23;
    v4 = v5 >= 0xF;
    v1 = 5;
  }

  if (!v4)
  {
    return v3;
  }

  return v1;
}

void fCoreUARPLayer3AssetReady(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v27 = 0;
    if (uarpPlatformEndpointAssetQueryNumberOfPayloads([v3 uarpEndpoint], objc_msgSend(v4, "uarpAsset"), &v27))
    {
      v6 = getOSLogToken();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        fCoreUARPLayer3AssetReady_cold_1();
      }
    }

    else
    {
      [v5 setNumPayloads:v27];
      v7 = getOSLogToken();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        fCoreUARPLayer3AssetReady_cold_2(v5);
      }

      v26 = 0;
      if (uarpPlatformEndpointAssetQueryFormatVersion([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), &v26))
      {
        v6 = getOSLogToken();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          fCoreUARPLayer3AssetReady_cold_3();
        }
      }

      else
      {
        [v5 setFormatVersion:v26];
        v8 = getOSLogToken();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          fCoreUARPLayer3AssetReady_cold_4(v5);
        }

        v25 = 0uLL;
        uarpPlatformEndpointAssetQueryAssetVersion([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), &v25);
        if (v9)
        {
          v6 = getOSLogToken();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            fCoreUARPLayer3AssetReady_cold_5();
          }
        }

        else
        {
          v10 = [UARPAssetVersion alloc];
          v11 = [(UARPAssetVersion *)v10 initWithMajorVersion:v25.n128_u32[0] minorVersion:v25.n128_u32[1] releaseVersion:v25.n128_u32[2] buildVersion:v25.n128_u32[3]];
          [v5 setAssetVersion:v11];

          v12 = getOSLogToken();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            fCoreUARPLayer3AssetReady_cold_6(v5);
          }

          v24 = 0;
          if (uarpPlatformEndpointAssetQueryAssetLength([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), &v24))
          {
            v6 = getOSLogToken();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              fCoreUARPLayer3AssetReady_cold_5();
            }
          }

          else
          {
            [v5 setAssetLength:v24];
            v13 = [UARPSuperBinaryAsset alloc];
            v14 = [v5 formatVersion];
            v15 = [v5 assetVersion];
            v16 = [(UARPSuperBinaryAsset *)v13 initWithFormatVersion:v14 assetVersion:v15];
            [v5 setUarpSuperBinary:v16];

            v23 = 0;
            if (uarpPlatformEndpointAssetQueryTag([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), &v23))
            {
              v6 = getOSLogToken();
              if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                fCoreUARPLayer3AssetReady_cold_8();
              }
            }

            else
            {
              v17 = [UARPAssetTag alloc];
              v6 = [(UARPAssetTag *)v17 initWithChar1:v23 char2:SBYTE1(v23) char3:SBYTE2(v23) char4:SHIBYTE(v23)];
              v18 = +[UARPHeySiriModelCompact tag];
              v19 = [v6 isEqual:v18];
              v20 = [v3 uarpEndpoint];
              v21 = [v5 uarpAsset];
              if (v19)
              {
                if (uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(v20, v21))
                {
                  v22 = getOSLogToken();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    fCoreUARPLayer3AssetReady_cold_9();
                  }
                }
              }

              else if (uarpPlatformEndpointAssetRequestMetaData(v20, v21) == 40)
              {
                fCoreUARPLayer3AssetMetaDataComplete(v3, v5);
              }
            }
          }
        }
      }
    }
  }
}

void fCoreUARPLayer3AssetMetaDataTLV(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v8 = a2;
    v9 = [[UARPSuperBinaryAssetTLV alloc] initWithType:a3 tlvLength:a4 tlvValue:a5];
    v10 = [v8 uarpSuperBinary];

    [v10 addMetaDataTLV:v9];
    v11 = getOSLogToken();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      fCoreUARPLayer3AssetMetaDataTLV_cold_1();
    }
  }
}

void fCoreUARPLayer3AssetMetaDataComplete(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if ([v4 numPayloads])
    {
      [v5 setSelectedPayload:0];
      v6 = getOSLogToken();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        fCoreUARPLayer3AssetMetaDataComplete_cold_1(v5);
      }

      if (uarpPlatformEndpointAssetSetPayloadIndex([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), objc_msgSend(v5, "selectedPayload")))
      {
        v7 = getOSLogToken();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          fCoreUARPLayer3AssetMetaDataComplete_cold_2(v5);
        }
      }
    }

    else
    {
      UARPlatformEndpointAssetFullyReceived(v3, v5);
    }
  }
}

void fCoreUARPLayer3PayloadReady(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v15 = 0uLL;
    if (uarpPlatformEndpointAssetPayloadVersion([v3 uarpEndpoint], objc_msgSend(v4, "uarpAsset"), &v15))
    {
      v6 = getOSLogToken();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        fCoreUARPLayer3PayloadReady_cold_1();
      }
    }

    else
    {
      v7 = [UARPAssetVersion alloc];
      v6 = [(UARPAssetVersion *)v7 initWithMajorVersion:v15 minorVersion:DWORD1(v15) releaseVersion:DWORD2(v15) buildVersion:HIDWORD(v15)];
      v8 = getOSLogToken();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        fCoreUARPLayer3PayloadReady_cold_2();
      }

      v14 = 0;
      if (uarpPlatformEndpointAssetPayloadTag([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), &v14))
      {
        v9 = getOSLogToken();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          fCoreUARPLayer3PayloadReady_cold_3();
        }
      }

      else
      {
        v10 = [UARPAssetTag alloc];
        v9 = [(UARPAssetTag *)v10 initWithChar1:v14 char2:SBYTE1(v14) char3:SBYTE2(v14) char4:SHIBYTE(v14)];
        v11 = getOSLogToken();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          fCoreUARPLayer3PayloadReady_cold_4();
        }

        v12 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadTag:v9 assetVersion:v6 writable:1];
        v13 = [v5 uarpSuperBinary];
        [v13 addPayload:v12];

        if (uarpPlatformEndpointPayloadRequestMetaData([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset")) == 40)
        {
          fCoreUARPLayer3PayloadMetaDataComplete(v3, v5);
        }
      }
    }
  }
}

void fCoreUARPLayer3PayloadMetaDataTLV(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v8 = a2;
    v9 = [v8 uarpSuperBinary];
    v10 = [v9 payloads];
    v11 = [v8 selectedPayload];

    v12 = [v10 objectAtIndex:v11];

    v13 = [[UARPSuperBinaryAssetTLV alloc] initWithType:a3 tlvLength:a4 tlvValue:a5];
    [v12 addMetaDataTLV:v13];
    v14 = getOSLogToken();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      fCoreUARPLayer3PayloadMetaDataTLV_cold_1();
    }
  }
}

void fCoreUARPLayer3PayloadMetaDataComplete(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4 && uarpPlatformEndpointPayloadRequestData([v3 uarpEndpoint], objc_msgSend(v4, "uarpAsset")))
  {
    v6 = getOSLogToken();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      fCoreUARPLayer3PayloadMetaDataComplete_cold_1();
    }
  }
}

void fCoreUARPLayer3PayloadData(void *a1, void *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (v9 && v10 && a3 && a4)
  {
    v12 = getOSLogToken();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v24 = a4;
      v25 = 2048;
      v26 = a5;
      _os_log_debug_impl(&dword_247AA7000, v12, OS_LOG_TYPE_DEBUG, "Payload Data Length = <%lu>, Offset = <%lu>", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    v14 = [v11 uarpSuperBinary];
    v15 = [v14 payloads];
    v16 = [v15 objectAtIndex:{objc_msgSend(v11, "selectedPayload")}];

    v22 = 0;
    LOBYTE(v15) = [v16 writePayloadData:v13 offset:a5 error:&v22];
    v17 = v22;
    if (v15)
    {
      v18 = uarpPlatformRemoteDelegateForAssetDelegate([v11 uarpAsset]);
      if (!v18)
      {
LABEL_13:

        goto LABEL_14;
      }

      v19 = v18;
      v20 = [v11 asset];
      [v9 assetSolicitationProgress:v19 asset:v20 offset:a5 assetLength:{objc_msgSend(v11, "assetLength")}];
    }

    else
    {
      v20 = getOSLogToken();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        fCoreUARPLayer3PayloadData_cold_1();
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadDataComplete(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    [v4 setSelectedPayload:{objc_msgSend(v4, "selectedPayload") + 1}];
    v6 = [v5 selectedPayload];
    if (v6 >= [v5 numPayloads])
    {
      UARPlatformEndpointAssetFullyReceived(v3, v5);
    }

    else
    {
      v7 = getOSLogToken();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        fCoreUARPLayer3AssetMetaDataComplete_cold_1(v5);
      }

      if (uarpPlatformEndpointAssetSetPayloadIndex([v3 uarpEndpoint], objc_msgSend(v5, "uarpAsset"), objc_msgSend(v5, "selectedPayload")))
      {
        v8 = getOSLogToken();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          fCoreUARPLayer3AssetMetaDataComplete_cold_2(v5);
        }
      }
    }
  }
}

void fCoreUARPLayer3AssetAllHeadersAndMetaDataComplete(void *a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    SuperBinaryMetaData = uarpAssetQuerySuperBinaryMetaData([v4 uarpEndpoint], objc_msgSend(v5, "uarpAsset"));
    if (SuperBinaryMetaData)
    {
      v8 = SuperBinaryMetaData;
      do
      {
        v9 = [[UARPSuperBinaryAssetTLV alloc] initWithType:*v8 tlvLength:v8[1] tlvValue:*(v8 + 1)];
        v10 = [v6 uarpSuperBinary];
        [v10 addMetaDataTLV:v9];

        v8 = *(v8 + 2);
      }

      while (v8);
    }

    if ([v6 numPayloads])
    {
      v12 = 0;
      *&v11 = 67109120;
      v29 = v11;
      do
      {
        v30 = 0u;
        v31 = 0u;
        PayloadInfo = uarpAssetQueryPayloadInfo([v4 uarpEndpoint], objc_msgSend(v6, "uarpAsset"), v12, &v30);
        if (PayloadInfo)
        {
          v14 = PayloadInfo;
          v15 = getOSLogToken();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v29;
            LODWORD(v33) = v14;
            _os_log_error_impl(&dword_247AA7000, v15, OS_LOG_TYPE_ERROR, "Failed to query payload info; %u", buf, 8u);
          }
        }

        v16 = [UARPAssetVersion alloc];
        v17 = [(UARPAssetVersion *)v16 initWithMajorVersion:DWORD1(v30) minorVersion:DWORD2(v30) releaseVersion:HIDWORD(v30) buildVersion:v31];
        v18 = getOSLogToken();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v17;
          _os_log_debug_impl(&dword_247AA7000, v18, OS_LOG_TYPE_DEBUG, "Payload Ready; asset version is %@", buf, 0xCu);
        }

        v19 = [UARPAssetTag alloc];
        v20 = [(UARPAssetTag *)v19 initWithChar1:v30 char2:SBYTE1(v30) char3:SBYTE2(v30) char4:SBYTE3(v30)];
        v21 = getOSLogToken();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v20;
          _os_log_debug_impl(&dword_247AA7000, v21, OS_LOG_TYPE_DEBUG, "Payload Ready; payload 4cc/tag is %@", buf, 0xCu);
        }

        v22 = [[UARPSuperBinaryAssetPayload alloc] initWithPayloadTag:v20 assetVersion:v17 writable:1];
        v23 = [v6 uarpSuperBinary];
        [v23 addPayload:v22];

        PayloadMetaData = uarpAssetQueryPayloadMetaData([v4 uarpEndpoint], objc_msgSend(v6, "uarpAsset"), v12);
        if (PayloadMetaData)
        {
          v25 = PayloadMetaData;
          do
          {
            v26 = [[UARPSuperBinaryAssetTLV alloc] initWithType:*v25 tlvLength:v25[1] tlvValue:*(v25 + 1)];
            [(UARPSuperBinaryAssetPayload *)v22 addMetaDataTLV:v26];
            v25 = *(v25 + 2);
          }

          while (v25);
        }

        ++v12;
      }

      while (v12 < [v6 numPayloads]);
    }

    if ([v6 numPayloads])
    {
      if (uarpPlatformEndpointAssetSetPayloadIndex([v4 uarpEndpoint], objc_msgSend(v6, "uarpAsset"), 0))
      {
        v27 = getOSLogToken();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          fCoreUARPLayer3AssetAllHeadersAndMetaDataComplete_cold_1();
        }
      }
    }

    else
    {
      UARPlatformEndpointAssetFullyReceived(v4, v6);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void UARPlatformEndpointAssetFullyReceived(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = getOSLogToken();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_247AA7000, v5, OS_LOG_TYPE_INFO, "Asset fully staged", v9, 2u);
  }

  v6 = [v4 uarpEndpoint];
  v7 = [v3 uarpAsset];

  if (uarpPlatformEndpointAssetFullyStaged(v6, v7))
  {
    v8 = getOSLogToken();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      UARPlatformEndpointAssetFullyReceived_cold_1();
    }
  }
}

uint64_t UARPAssetSolicitionComplete(void *a1, void *a2, void *a3, __int16 a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = getOSLogToken();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Asset Solicitation Complete", buf, 2u);
  }

  v11 = [v9 asset];

  if (v11)
  {
    v12 = [v9 asset];
    v13 = [v12 id];

    if (v13)
    {
      v14 = [v9 asset];
      v15 = [v14 id];
      v16 = [v15 localURL];

      if (v16)
      {
        v17 = UARPUploaderStagingStatusConvert(a4);
        v18 = [v9 asset];
        v19 = [v18 id];
        v20 = [v19 localURL];
        v21 = [v20 copy];

        v22 = [v9 uarpSuperBinary];
        v47 = 0;
        LOBYTE(v20) = [v22 writeToURL:v21 error:&v47];
        v23 = v47;

        if (v20)
        {
          if ([v9 internalSolicit])
          {
            if (!v17)
            {
              v24 = [v9 asset];
              v25 = [v24 id];
              v26 = [v25 tag];

              v27 = uarpAssetTagStructPersonalization();
              v28 = [[UARPAssetTag alloc] initWithChar1:*v27 char2:v27[1] char3:v27[2] char4:v27[3]];
              if ([v26 isEqual:v28])
              {
                v29 = getOSLogToken();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v49 = "UARPAssetSolicitionComplete";
                  _os_log_impl(&dword_247AA7000, v29, OS_LOG_TYPE_INFO, "%s: RX IM4M Dynamic Asset", buf, 0xCu);
                }

                if ([v8 im4mAssetReceived:v9])
                {
                  v30 = 0;
LABEL_56:

                  goto LABEL_28;
                }

                v36 = getOSLogToken();
                if (os_log_type_enabled(&v36->super, OS_LOG_TYPE_ERROR))
                {
                  UARPAssetSolicitionComplete_cold_2();
                }

                v30 = 54;
              }

              else
              {
                v35 = uarpAssetTagStructVoiceAssist();
                v36 = [[UARPAssetTag alloc] initWithChar1:*v35 char2:v35[1] char3:v35[2] char4:v35[3]];
                if ([v26 isEqual:v36])
                {
                  UARPlatformEndpointHandleVoiceAssist(v7, v8, v21);
                  v30 = 0;
                }

                else
                {
                  v37 = uarpAssetTagStructHeySiriModel();
                  v38 = [[UARPAssetTag alloc] initWithChar1:*v37 char2:v37[1] char3:v37[2] char4:v37[3]];
                  if ([v26 isEqual:v38])
                  {
                    UARPlatformEndpointHandleHeySiri(v7, v8, v21);
                    v30 = 0;
                  }

                  else
                  {
                    v46 = +[UARPDynamicAssetAnalyticsEvent tag];
                    if ([v26 isEqual:?])
                    {
                      v30 = UARPlatformEndpointHandleAnalytics(v21);
                    }

                    else
                    {
                      v45 = v38;
                      v39 = +[UARPDynamicAssetMappedAnalyticsEvent tag];
                      if ([v26 isEqual:v39])
                      {
                        v30 = UARPlatformEndpointHandleMappedAnalytics(v7, v8, v21, v39);
                      }

                      else
                      {
                        v44 = v39;
                        v43 = +[UARPDynamicAssetVersions tag];
                        if ([v26 isEqual:?])
                        {
                          v30 = UARPlatformEndpointHandleVersions(v7, v8, v21);
                        }

                        else
                        {
                          v40 = uarpAssetTagStructLogs();
                          v42 = [[UARPAssetTag alloc] initWithChar1:*v40 char2:v40[1] char3:v40[2] char4:v40[3]];
                          if ([v26 isEqual:?])
                          {
                            v30 = UARPlatformEndpointHandleLogs(v7, v8, v21);
                          }

                          else
                          {
                            v41 = +[UARPDynamicAssetCrashLogEvent tag];
                            if ([v26 isEqual:?])
                            {
                              v30 = UARPlatformEndpointHandleCrashAnalytics(v7, v8, v21);
                            }

                            else
                            {
                              v30 = 0;
                            }
                          }
                        }

                        v39 = v44;
                      }

                      v38 = v45;
                    }
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_25:
            v30 = 0;
LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          v32 = getOSLogToken();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            UARPAssetSolicitionComplete_cold_1();
          }

          if ([v9 internalSolicit])
          {
            goto LABEL_25;
          }

          v17 = 2;
        }

        v26 = [v9 asset];
        [v7 assetSolicitationComplete:v8 asset:v26 status:v17];
        v30 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v31 = getOSLogToken();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        UARPAssetSolicitionComplete_cold_3();
      }
    }

    else
    {
      v31 = getOSLogToken();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        UARPAssetSolicitionComplete_cold_4();
      }
    }

    v21 = [v9 asset];
    [v7 assetSolicitationComplete:v8 asset:v21 status:2];
  }

  else
  {
    v21 = getOSLogToken();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      UARPAssetSolicitionComplete_cold_5();
    }
  }

  v30 = 54;
LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

void UARPlatformEndpointHandleVoiceAssist(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [UARPHeySiriModelVoiceAssist alloc];
  v9 = [v6 accessory];
  v10 = [v6 uarpVersion];

  v11 = [v7 controller];
  v12 = [(UARPHeySiriModelBase *)v8 initWithAccessory:v9 uarpProtocolVersion:v10 controller:v11 url:v5];

  [v7 processDynamicAssetVoiceAssist:v12];
}

void UARPlatformEndpointHandleHeySiri(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [UARPHeySiriModelCompact alloc];
  v9 = [v6 accessory];
  v10 = [v6 uarpVersion];

  v11 = [v7 controller];
  v12 = [(UARPHeySiriModelBase *)v8 initWithAccessory:v9 uarpProtocolVersion:v10 controller:v11 url:v5];

  [v7 processDynamicAssetHeySiriCompact:v12];
}

uint64_t UARPlatformEndpointHandleAnalytics(void *a1)
{
  v1 = a1;
  v2 = [[UARPDynamicAssetAnalyticsEvent alloc] initWithURL:v1];

  if ([(UARPDynamicAssetAnalyticsEvent *)v2 decomposeUARP])
  {
    [(UARPDynamicAssetAnalyticsEvent *)v2 send];
    v3 = 0;
  }

  else
  {
    v3 = 54;
  }

  return v3;
}

uint64_t UARPlatformEndpointHandleMappedAnalytics(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [UARPDynamicAssetMappedAnalyticsEvent alloc];
  v12 = [v8 serialNumber];
  v13 = [(UARPDynamicAssetMappedAnalyticsEvent *)v11 initWithURL:v9 serialNumber:v12];

  if ([(UARPDynamicAssetMappedAnalyticsEvent *)v13 decomposeUARP])
  {
    if (![(UARPDynamicAssetMappedAnalyticsEvent *)v13 findMatchingTMAP])
    {
      v16 = [v8 serialNumber];
      [v7 addUnprocessedDynamicAsset:v9 withAssetTag:v10 serialNumber:v16];

      v17 = getOSLogToken();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_247AA7000, v17, OS_LOG_TYPE_INFO, "Failed to find matching TMAP. Saving for Later Processing.", v19, 2u);
      }

      goto LABEL_11;
    }

    if ([(UARPDynamicAssetMappedAnalyticsEvent *)v13 expandMTICPayloads])
    {
      [(UARPDynamicAssetMappedAnalyticsEvent *)v13 send];
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    v14 = getOSLogToken();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      UARPlatformEndpointHandleMappedAnalytics_cold_2();
    }
  }

  else
  {
    v14 = getOSLogToken();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      UARPlatformEndpointHandleMappedAnalytics_cold_1();
    }
  }

  v15 = 54;
LABEL_12:

  return v15;
}

uint64_t UARPlatformEndpointHandleVersions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [[UARPDynamicAssetVersions alloc] initWithURL:v7];

  if ([(UARPDynamicAssetVersions *)v8 decomposeUARP])
  {
    v9 = [v6 accessory];
    v10 = [(UARPDynamicAssetVersions *)v8 partnerSerialNumbers];
    [v9 setPartnerSerialNumbers:v10];

    v11 = [v6 accessory];
    v12 = [(UARPDynamicAssetVersions *)v8 partnerSerialNumbers];
    [v5 processDynamicAssetVersions:v11 partnerSerialNumbers:v12];

    v13 = 0;
  }

  else
  {
    v13 = 54;
  }

  return v13;
}

uint64_t UARPlatformEndpointHandleLogs(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [[UARPDynamicAssetLogsEvent alloc] initWithURL:v5];

  v9 = [v7 ttrDirectory];

  LODWORD(v7) = [(UARPDynamicAssetLogsEvent *)v8 expandToDirectory:v9 forRemoteEndpoint:v6];
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 54;
  }

  return v10;
}

uint64_t UARPlatformEndpointHandleCrashAnalytics(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [[UARPDynamicAssetCrashLogEvent alloc] initWithURL:v7];

  if (![(UARPDynamicAssetCrashLogEvent *)v8 decomposeUARP])
  {
    v11 = getOSLogToken();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      UARPlatformEndpointHandleCrashAnalytics_cold_1();
    }

    goto LABEL_11;
  }

  if (![(UARPDynamicAssetCrashLogEvent *)v8 processCrashInstance])
  {
    v11 = getOSLogToken();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      UARPlatformEndpointHandleCrashAnalytics_cold_2();
    }

LABEL_11:

    v10 = 54;
    goto LABEL_12;
  }

  v9 = [v5 ttrDirectory];
  if ([(UARPDynamicAssetCrashLogEvent *)v8 expandToDirectory:v9 forRemoteEndpoint:v6])
  {
    v10 = 0;
  }

  else
  {
    v10 = 54;
  }

LABEL_12:
  return v10;
}

id getCSCoreSpeechServicesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSCoreSpeechServicesClass_softClass;
  v7 = getCSCoreSpeechServicesClass_softClass;
  if (!getCSCoreSpeechServicesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCSCoreSpeechServicesClass_block_invoke;
    v3[3] = &unk_278EC24A8;
    v3[4] = &v4;
    __getCSCoreSpeechServicesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_247B03584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCSVoiceTriggerRTModelClass_block_invoke_0(uint64_t a1)
{
  CoreSpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CSVoiceTriggerRTModel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSVoiceTriggerRTModelClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCSVoiceTriggerRTModelClass_block_invoke_cold_1();
    CoreSpeechLibrary();
  }
}

void CoreSpeechLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreSpeechLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreSpeechLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278EC2C60;
    v4 = 0;
    CoreSpeechLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CoreSpeechLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreSpeechLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpeechLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCSCoreSpeechServicesClass_block_invoke(uint64_t a1)
{
  CoreSpeechLibrary();
  result = objc_getClass("CSCoreSpeechServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSCoreSpeechServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSCoreSpeechServicesClass_block_invoke_cold_1();
    return __getCSCoreSpeechServicesAccessoryInfoClass_block_invoke(v3);
  }

  return result;
}

UARPHeySiriModelVoiceAssist *__getCSCoreSpeechServicesAccessoryInfoClass_block_invoke(uint64_t a1)
{
  CoreSpeechLibrary();
  result = objc_getClass("CSCoreSpeechServicesAccessoryInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCSCoreSpeechServicesAccessoryInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCSCoreSpeechServicesAccessoryInfoClass_block_invoke_cold_1();
    return [(UARPHeySiriModelVoiceAssist *)v3 init];
  }

  return result;
}

uint64_t uarpPlatformDarwinDecompressBuffer(int a1, const uint8_t *__src, size_t src_size, uint8_t *__dst, size_t __n)
{
  result = 50;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v7 = COMPRESSION_LZBITMAP;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v7 = COMPRESSION_LZ4;
    }

    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v7 = 1538;
LABEL_11:
    if (compression_decode_buffer(__dst, __n, __src, src_size, 0, v7) == __n)
    {
      return 0;
    }

    else
    {
      return 51;
    }
  }

  if (src_size != __n)
  {
    return 51;
  }

  memcpy(__dst, __src, __n);
  return 0;
}

uint64_t uarpPlatformDarwinHashInfo(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = result - 1;
  if ((result - 1) > 2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = dword_247B3D488[v3];
    v5 = 16 * v3 + 32;
  }

  *a2 = v4;
  *a3 = v5;
  return result;
}

uint64_t uarpPlatformDarwinHashInit(uint64_t result, CC_SHA512_CTX *c)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Init(c);
    case 2:
      return CC_SHA384_Init(c);
    case 1:
      return CC_SHA256_Init(c);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashUpdate(uint64_t result, CC_SHA512_CTX *c, void *data, CC_LONG len)
{
  switch(result)
  {
    case 3:
      return CC_SHA512_Update(c, data, len);
    case 2:
      return CC_SHA384_Update(c, data, len);
    case 1:
      return CC_SHA256_Update(c, data, len);
  }

  return result;
}

uint64_t uarpPlatformDarwinHashFinal(uint64_t result, CC_SHA512_CTX *a2, unsigned __int8 *md, int a4)
{
  if (result == 2)
  {
    if (a4 == 48)
    {
      return CC_SHA384_Final(md, a2);
    }
  }

  else if (result == 1)
  {
    if (a4 == 32)
    {
      return CC_SHA256_Final(md, a2);
    }
  }

  else if (result == 3 && a4 == 64)
  {
    return CC_SHA512_Final(md, a2);
  }

  return result;
}

void uarpLogError(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogError_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    uarpLogError_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t uarpLogToken(unsigned int a1)
{
  for (i = 0; i != 9; ++i)
  {
    v3 = uarpLoggingCategoryToString(i);
    uarpLogToken_tokens[i] = os_log_create("com.apple.uarp.embedded", v3);
  }

  if (a1 <= 8)
  {
    return uarpLogToken_tokens[a1];
  }

  else
  {
    return MEMORY[0x277D86220];
  }
}

void uarpLogDebug(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogDebug_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uarpLogDebug_cold_1(v3);
  }
}

void uarpLogInfo(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  v7 = *MEMORY[0x277D85DE8];
  vsnprintf(uarpLogInfo_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = uarpLogInfo_logBuffer;
    _os_log_impl(&dword_247AA7000, v3, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void uarpLogFault(unsigned int a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(uarpLogFault_logBuffer, 0x200uLL, __format, va);
  v3 = uarpLogToken(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    uarpLogFault_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

void uarpPlatformDarwinLogError(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogError_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    uarpPlatformDarwinLogError_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void uarpPlatformDarwinLogInfo(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = *MEMORY[0x277D85DE8];
  vsnprintf(uarpPlatformDarwinLogInfo_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = uarpPlatformDarwinLogInfo_logBuffer;
    _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "%s\n", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogDebug(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogDebug_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    uarpPlatformDarwinLogDebug_cold_1(v10);
  }
}

void uarpPlatformDarwinLogFault(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  vsnprintf(uarpPlatformDarwinLogFault_logBuffer, 0x200uLL, a3, &a9);
  v10 = uarpLogToken(a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    uarpPlatformDarwinLogFault_cold_1(v10);
  }
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t nullableObjectsEqual(void *a1, uint64_t a2)
{
  if (a1)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t uarpUtilsConcatenateURLs(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:a1 error:a3];
    v7 = v6;
    if (v6)
    {
      if ([v6 uarpSeekToEndReturningOffset:0 error:a3])
      {
        v8 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v5 error:a3];
        if (v8)
        {
          v9 = 0;
          while (1)
          {
            v10 = v9;
            v9 = [v8 uarpReadDataUpToLength:4096 error:a3];

            if (!v9 || ![v7 uarpWriteData:v9 error:a3])
            {
              break;
            }

            if ([v9 length] != 4096)
            {
              v11 = 1;
              goto LABEL_14;
            }
          }

          v11 = 0;
LABEL_14:
          [v8 uarpCloseAndReturnError:a3];
          [v7 uarpCloseAndReturnError:a3];
        }

        else
        {
          [v7 uarpCloseAndReturnError:a3];
          v11 = 0;
        }

        goto LABEL_17;
      }

      [v7 uarpCloseAndReturnError:a3];
    }

    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v11 = 1;
LABEL_18:

  return v11;
}

uint64_t uarpVersionCompareStrings(uint64_t a1, void *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v3 = a2;
  [UARPSuperBinaryAsset versionFromString:a1 version:v8, 0, 0];
  [UARPSuperBinaryAsset versionFromString:v3 version:&v7];

  v4 = uarpVersionCompare(v8, &v7);
  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

id currentTrainName()
{
  if (currentTrainName_onceToken != -1)
  {
    currentTrainName_cold_1();
  }

  if (currentTrainName_trainName)
  {
    v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", currentTrainName_trainName];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void __currentTrainName_block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
  if ([v0 isEqualToString:&stru_2859B53B8])
  {
  }

  else
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
    v2 = [v1 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];

    if ((v2 & 1) == 0)
    {
      currentTrainName_trainName = "$SIDEBUILD_PARENT_TRAIN";
      return;
    }
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "LuckB"];
  if ([v5 isEqualToString:&stru_2859B53B8])
  {
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "LuckB"];
    v4 = [v3 isEqualToString:@"$RC_RELEASE"];

    if ((v4 & 1) == 0)
    {
      currentTrainName_trainName = "LuckB";
    }
  }
}

uint64_t appendFirstUarpFilenameToFilepath(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:a2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 hasSuffix:@".uarp"])
        {
          [v3 appendFormat:@"/%@", v11];
          v12 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id uarpDynamicAssetURLWithSuffix(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = UARPStringDynamicAssetsFilepath();
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v7 = MEMORY[0x277CCAB68];
    v8 = [v6 UUIDString];
    v9 = [v7 stringWithFormat:@"%@/%@-%c%c%c%c", v4, v8, objc_msgSend(v3, "char1"), objc_msgSend(v3, "char2"), objc_msgSend(v3, "char3"), objc_msgSend(v3, "char4")];

    if (a2)
    {
      [v9 appendString:@".uarp"];
    }

    if ([v5 createFileAtPath:v9 contents:0 attributes:0])
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        uarpDynamicAssetURLWithSuffix_cold_1();
      }

      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Directory for dynamic assets does not exist at %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id UARPUtilsBuildURLForTemporaryFile()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = UARPStringTempFilesFilepath();
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  if ([v2 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v2, 1, 0, 0), v3, (v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v6 = MEMORY[0x277CCACA8];
    v7 = UARPStringTempFilesFilepath();
    v8 = [v5 UUIDString];
    v9 = [v6 stringWithFormat:@"%@/%@", v7, v8];

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(v8) = [v10 createFileAtPath:v9 contents:0 attributes:0];

    if (v8)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPUtilsBuildURLForTemporaryFile_cold_2();
      }

      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      UARPUtilsBuildURLForTemporaryFile_cold_1();
    }

    v11 = 0;
  }

  return v11;
}

uint64_t createPowerAssertion(void *a1, IOPMAssertionID *a2)
{
  v3 = a1;
  if (a2)
  {
    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v3, a2))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        createPowerAssertion_cold_1();
      }

      v4 = 0;
      *a2 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      createPowerAssertion_cold_2();
    }

    v4 = 0;
  }

  return v4;
}

BOOL releasePowerAssertion(IOPMAssertionID a1)
{
  v1 = IOPMAssertionRelease(a1);
  if (v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    releasePowerAssertion_cold_1();
  }

  return v1 == 0;
}

uint64_t UARPUtilsCreateTemporaryFolder(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = 1;
  }

  else
  {
    v11 = 0;
    v4 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v12 = *MEMORY[0x277CCA180];
      v13[0] = &unk_2859CACD0;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = v5;
      v3 = [v2 setAttributes:v6 ofItemAtPath:v1 error:&v10];
      v7 = v10;

      if ((v3 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPUtilsCreateTemporaryFolder_cold_2();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPUtilsCreateTemporaryFolder_cold_1();
      }

      v3 = 0;
      v7 = v5;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

id uarpFirmwareForAccessory(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CCAB68];
  v9 = InternalStorageDirectoryPath();
  v10 = [v8 stringWithFormat:@"%@/%@", v9, v5];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:UARPAccessoryHardwareFusingToString(2uLL)];
  if ([v6 caseInsensitiveCompare:v11])
  {
    [v10 appendFormat:@"-%@", v6];
  }

  [v10 appendFormat:@"/%@", v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "uarpFirmwareForAccessory";
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Checking for firmware in directory %@", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  v14 = [v12 enumeratorAtURL:v13 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v25 = v7;
    v18 = v5;
    v19 = 0;
    v20 = *v27;
LABEL_7:
    v21 = 0;
    v22 = v19;
    while (1)
    {
      if (*v27 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v26 + 1) + 8 * v21);

      if ([v19 checkResourceIsReachableAndReturnError:0])
      {
        break;
      }

      ++v21;
      v22 = v19;
      if (v17 == v21)
      {
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v17)
        {
          goto LABEL_7;
        }

        v19 = 0;
        break;
      }
    }

    v5 = v18;
    v7 = v25;
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

id dataFromHexString(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 UTF8String];
  if ([v1 length])
  {
    v14 = 0;
  }

  else
  {
    if ([v1 length])
    {
      v4 = 0;
      v5 = 2;
      do
      {
        v6 = *(v3 + v4);
        if ((v6 - 48) >= 0xA)
        {
          v7 = 0;
        }

        else
        {
          v7 = *(v3 + v4);
        }

        if (((v6 & 0xDF) - 65) >= 6u)
        {
          v8 = v7;
        }

        else
        {
          v8 = v6 + 9;
        }

        v9 = *(v3 + v5 - 1);
        v10 = v9 - 48;
        if ((v9 - 48) >= 0xA)
        {
          v10 = 0;
        }

        if ((v9 - 65) < 6)
        {
          v10 = v9 - 55;
        }

        v11 = v9 - 97;
        v12 = v9 - 87;
        if (v11 >= 6)
        {
          v12 = v10;
        }

        v16 = v12 | (16 * v8);
        [v2 appendBytes:&v16 length:1];
        v4 = v5;
        v13 = [v1 length] > v5;
        v5 += 2;
      }

      while (v13);
    }

    v14 = [MEMORY[0x277CBEA90] dataWithData:v2];
  }

  return v14;
}

uint64_t postStagingStatusForModelIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", "com.apple.uarp.stagingstatus.", a1];
  out_token = 0;
  if (notify_register_check([v3 UTF8String], &out_token))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      postStagingStatusForModelIdentifier_cold_1();
    }

    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    notify_set_state(out_token, a2);
    notify_post([v3 UTF8String]);
    v4 = out_token;
  }

  return v4;
}

void UARPCleanupAgedFiles(void *a1, double a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = UARPArrayOfExpiredFiles(a1, 0, a2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          UARPCleanupAgedFiles_cold_1(buf, v8, &v16);
        }

        v9 = [MEMORY[0x277CCAA00] defaultManager];
        [v9 removeItemAtPath:v8 error:0];

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void UARPCopyFile(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
  v8 = [v7 URLByAppendingPathComponent:v6];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v13 = [v12 URLByAppendingPathComponent:v6];
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = [v13 path];
    v16 = [v14 fileExistsAtPath:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v23 = 0;
      v18 = [v17 copyItemAtURL:v8 toURL:v13 error:&v23];
      v19 = v23;

      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v20 = [v8 path];
          v21 = [v13 path];
          *buf = 138412546;
          v25 = v20;
          v26 = 2112;
          v27 = v21;
          _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Successfully copied %@ to %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPCopyFile_cold_2(v8, v13);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    UARPCopyFile_cold_1(v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL UARPCreateFile(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3];

  v8 = 1;
  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v1 path];
    v7 = [v5 createFileAtPath:v6 contents:0 attributes:0];

    if (!v7)
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t UARPWriteFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (UARPCreateFile(v4))
  {
    v18 = 0;
    v5 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v4 error:&v18];
    v6 = v18;
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPWriteFile_cold_5(v4);
      }

      v12 = 0;
      goto LABEL_20;
    }

    v16 = 0;
    v17 = 0;
    v7 = [v5 uarpSeekToEndReturningOffset:&v17 error:&v16];
    v8 = v16;

    if (v7)
    {
      v15 = 0;
      v9 = [v5 uarpWriteData:v3 error:&v15];
      v10 = v15;

      if ((v9 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          UARPWriteFile_cold_3(v4);
        }

        v12 = 1;
        v8 = v10;
        goto LABEL_19;
      }

      v14 = 0;
      v11 = [v5 uarpCloseAndReturnError:&v14];
      v8 = v14;

      if (v11)
      {
        v12 = 1;
LABEL_19:
        v6 = v8;
LABEL_20:

        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        UARPWriteFile_cold_4(v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      UARPWriteFile_cold_2(v4);
    }

    v12 = 0;
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    UARPWriteFile_cold_1(v4);
  }

  v12 = 0;
LABEL_21:

  return v12;
}

id UARPTimestamp()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
  v1 = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 stringFromDate:v1];

  return v2;
}

id UARPUniqueFilename(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = MEMORY[0x277CBEB18];
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(v12);
  v16 = v15;
  if (v9)
  {
    [v15 addObject:v9];
  }

  if (v10)
  {
    [v16 addObject:v10];
  }

  if (v11)
  {
    [v16 addObject:v11];
  }

  v17 = UARPTimestamp();
  [v16 addObject:v17];

  v18 = [v16 copy];
  v19 = UARPUniqueFilePathWithIdentifierComponents(v14, v18, v13);

  return v19;
}

id UARPUniqueFilePathWithIdentifierComponents(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_new();
  v9 = v8;
  if (v5)
  {
    [v8 addObject:v5];
  }

  v10 = objc_opt_new();
  v11 = [v7 componentsJoinedByString:@"-"];

  [v10 appendString:v11];
  if (v6)
  {
    [v10 appendFormat:@"%@", v6];
  }

  [v9 addObject:v10];
  v12 = [MEMORY[0x277CCACA8] pathWithComponents:v9];

  return v12;
}

id InternalStorageDirectoryPath()
{
  if (InternalStorageDirectoryPath_onceToken != -1)
  {
    InternalStorageDirectoryPath_cold_1();
  }

  v1 = InternalStorageDirectoryPath_path;

  return v1;
}

void __InternalStorageDirectoryPath_block_invoke()
{
  v0 = InternalStorageDirectoryPath_path;
  InternalStorageDirectoryPath_path = @"/var/db/accessoryupdater/uarp/";
}

char *uarpAssetTagMappedAnalytics4cc()
{
  result = uarpAssetTagMappedAnalytics4cc_assetTag;
  uarpAssetTagMappedAnalytics4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructMappedAnalytics()
{
  uarpAssetTagMappedAnalytics4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructMappedAnalytics_myTag;
  uarpAssetTagStructMappedAnalytics_myTag = *uarpAssetTagMappedAnalytics4cc_assetTag;
  return result;
}

__int16 *uarpOuiMappedAnalytics()
{
  result = &uarpOuiMappedAnalytics_myOui;
  uarpOuiMappedAnalytics_myOui = 5408;
  byte_27EE5DA66 = -126;
  return result;
}

uint64_t uarpBuildMappedAnalyticsAsset(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v8) = a4;
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  uarpAssetTagMappedAnalytics4cc_assetTag[4] = 0;
  uarpAssetTagStructMappedAnalytics_myTag = *uarpAssetTagMappedAnalytics4cc_assetTag;
  result = UARPSuperBinaryPrepareDynamicAsset(a1, v11, a5, a6, *uarpAssetTagMappedAnalytics4cc_assetTag);
  if (!result)
  {
    if (v8)
    {
      v8 = v8;
      for (i = a3 + 28; ; i += 56)
      {
        v15 = *(i - 12);
        uarpAssetTagMappedAnalytics4cc_assetTag[4] = 0;
        uarpAssetTagStructMappedAnalytics_myTag = *uarpAssetTagMappedAnalytics4cc_assetTag;
        a3 = a3 & 0xFFFFFFFF00000000 | *uarpAssetTagMappedAnalytics4cc_assetTag;
        result = UARPSuperBinaryAddPayload2(a1, v12, v15, a3, *(i - 28), *(i - 20), *(i + 12), *(i + 4), *(i + 20));
        if (result)
        {
          break;
        }

        v16 = uarpHtonl(*i);
        result = UARPSuperBinaryAppendPayloadMetaData(a1, v12, *(i - 12), 538280449, 4u, &v16);
        if (result)
        {
          break;
        }

        result = UARPSuperBinaryAppendPayloadMetaData(a1, v12, *(i - 12), 538280448, 5u, (i - 8));
        if (result)
        {
          break;
        }

        if (!--v8)
        {
          return UARPSuperBinaryFinalizeDynamicAsset(a1, v12);
        }
      }
    }

    else
    {
      return UARPSuperBinaryFinalizeDynamicAsset(a1, v12);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointStreamingRecvInit(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    UARPLayer2RequestBuffer(a1, &v7, 0x18uLL, 0xFFFF, 37);
    if (v7)
    {
      v5 = *(a2 + 4) + 36;
      UARPLayer2RequestBuffer(a1, v7, v5, 0xFFFF, 49);
      v6 = v7;
      if (*v7)
      {
        result = 0;
        *(v7 + 2) = v5;
        *(a2 + 96) = v6;
        return result;
      }

      UARPLayer2ReturnBuffer(a1, v7, 0xFFFF, 56);
    }

    return 11;
  }

  return result;
}

void uarpPlatformEndpointStreamingRecvDeinit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 96);
      if (v3)
      {
        if (*v3)
        {
          UARPLayer2ReturnBuffer(a1, *v3, 0xFFFF, 86);
          v3 = *(a2 + 96);
          *v3 = 0;
        }

        UARPLayer2ReturnBuffer(a1, v3, 0xFFFF, 94);
        *(a2 + 96) = 0;
      }
    }
  }
}

uint64_t uarpPlatformEndpointStreamingRecvBytes(uint64_t a1, void *a2, char *a3, int a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        LODWORD(v8) = a4;
        if (a4)
        {
          v9 = a2[12];
          if (v9)
          {
            goto LABEL_6;
          }

          result = uarpPlatformEndpointStreamingRecvInit(a1, a2);
          if (result)
          {
            return result;
          }

          v9 = a2[12];
          if (v9)
          {
LABEL_6:
            if (v9[2] >= v8)
            {
              v8 = v8;
              v10 = v9[4];
              do
              {
                v11 = *v7++;
                *(*v9 + v10) = v11;
                v10 = v9[4] + 1;
                v9[4] = v10;
                if (v10 == 6)
                {
                  v12 = uarpHtons(*(*v9 + 2)) + 6;
                  v9[3] = v12;
                  v10 = v9[4];
                }

                else
                {
                  v12 = v9[3];
                }

                if (v10 == v12)
                {
                  result = uarpPlatformEndpointRecvMessage(a1, a2, *v9, v12);
                  if (result)
                  {
                    return result;
                  }

                  bzero(*v9, v9[2]);
                  v10 = 0;
                  v9[3] = 0;
                  v9[4] = 0;
                }

                --v8;
              }

              while (v8);
              return 0;
            }

            else
            {
              return 30;
            }
          }

          else
          {
            return 27;
          }
        }
      }
    }
  }

  return result;
}

char *uarpAssetTagAnalytics4cc()
{
  result = uarpAssetTagAnalytics4cc_assetTag;
  uarpAssetTagAnalytics4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructAnalytics()
{
  uarpAssetTagAnalytics4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructAnalytics_myTag;
  uarpAssetTagStructAnalytics_myTag = *uarpAssetTagAnalytics4cc_assetTag;
  return result;
}

__int16 *uarpOuiAnalytics()
{
  result = &uarpOuiAnalytics_myOui;
  uarpOuiAnalytics_myOui = 27480;
  byte_27EE5DA6E = 20;
  return result;
}

char *uarpAssetTagCrashAnalytics4cc()
{
  result = uarpAssetTagCrashAnalytics4cc_assetTag;
  uarpAssetTagCrashAnalytics4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructCrashAnalytics()
{
  uarpAssetTagCrashAnalytics4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructCrashAnalytics_myTag;
  uarpAssetTagStructCrashAnalytics_myTag = *uarpAssetTagCrashAnalytics4cc_assetTag;
  return result;
}

__int16 *uarpOuiCrashAnalytics()
{
  result = &uarpOuiCrashAnalytics_myOui;
  uarpOuiCrashAnalytics_myOui = 27480;
  byte_27EE5DA76 = 20;
  return result;
}

uint64_t uarpBuildCrashAnalyticsAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, const void *a6, unint64_t a7, int a8)
{
  LODWORD(v8) = a8;
  v19 = a5;
  v14 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v14)
  {
    return 11;
  }

  v15 = v14;
  uarpAssetTagCrashAnalytics4cc_assetTag[4] = 0;
  uarpAssetTagStructCrashAnalytics_myTag = *uarpAssetTagCrashAnalytics4cc_assetTag;
  result = UARPSuperBinaryPrepareDynamicAsset(a1, v14, a3, a4, *uarpAssetTagCrashAnalytics4cc_assetTag);
  if (!result)
  {
    result = UARPSuperBinaryAddSuperBinaryMetaData(a1, v15, -252806655, 5u, a6);
    if (!result)
    {
      result = UARPSuperBinaryAddSuperBinaryMetaData(a1, v15, -252806653, 1u, &v19);
      if (!result)
      {
        if (v8)
        {
          v8 = v8;
          for (i = a7 + 24; ; i += 56)
          {
            v18 = *(i - 8);
            uarpAssetTagCrashAnalytics4cc_assetTag[4] = 0;
            uarpAssetTagStructCrashAnalytics_myTag = *uarpAssetTagCrashAnalytics4cc_assetTag;
            a7 = a7 & 0xFFFFFFFF00000000 | *uarpAssetTagCrashAnalytics4cc_assetTag;
            result = UARPSuperBinaryAddPayload2(a1, v15, v18, a7, *(i - 24), *(i - 16), *i, *(i + 8), *(i + 12));
            if (result)
            {
              break;
            }

            result = UARPSuperBinaryAppendPayloadMetaData(a1, v15, *(i - 8), -252806656, *(i + 24), *(i + 16));
            if (result)
            {
              break;
            }

            if (!--v8)
            {
              return UARPSuperBinaryFinalizeDynamicAsset(a1, v15);
            }
          }
        }

        else
        {
          return UARPSuperBinaryFinalizeDynamicAsset(a1, v15);
        }
      }
    }
  }

  return result;
}

char *uarpAssetTagLogs4cc()
{
  result = uarpAssetTagLogs4cc_assetTag;
  uarpAssetTagLogs4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructLogs()
{
  uarpAssetTagLogs4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructLogs_myTag;
  uarpAssetTagStructLogs_myTag = *uarpAssetTagLogs4cc_assetTag;
  return result;
}

__int16 *uarpOuiLogs()
{
  result = &uarpOuiLogs_myOui;
  uarpOuiLogs_myOui = 16400;
  byte_27EE5DA7E = -13;
  return result;
}

char *uarpAssetTagPersonalization4cc()
{
  result = uarpAssetTagPersonalization4cc_assetTag;
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructPersonalization()
{
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructPersonalization_myTag;
  uarpAssetTagStructPersonalization_myTag = *uarpAssetTagPersonalization4cc_assetTag;
  return result;
}

char *uarpAssetTagPersonalizedFirmware4cc()
{
  result = uarpAssetTagPersonalizedFirmware4cc_assetTag;
  uarpAssetTagPersonalizedFirmware4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructPersonalizedFirmware()
{
  uarpAssetTagPersonalizedFirmware4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructPersonalizedFirmware_myTag;
  uarpAssetTagStructPersonalizedFirmware_myTag = *uarpAssetTagPersonalizedFirmware4cc_assetTag;
  return result;
}

__int16 *uarpOuiPersonalization()
{
  result = &uarpOuiPersonalization_myOui;
  uarpOuiPersonalization_myOui = -19832;
  byte_27EE5DA8A = -111;
  return result;
}

uint64_t uarpPersonalizationRequestPreparePayload(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0uLL;
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  uarpAssetTagStructPersonalization_myTag = *uarpAssetTagPersonalization4cc_assetTag;
  return UARPSuperBinaryPreparePayload(a1, a2, a3, &uarpAssetTagStructPersonalization_myTag, &v4);
}

uint64_t uarpPersonalizationRequestAddMeasurementWithOverrides(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v10 = uarpHtons(a6);
  v11 = uarpHtons(a7);
  if (a5)
  {
    v12 = v11;
    v13 = a4;
    v14 = a5;
    while (1)
    {
      v15 = v14 - 8;
      if (v14 < 8)
      {
        return 30;
      }

      v16 = uarpHtonl(*v13);
      v17 = uarpHtonl(v13[1]);
      if (v15 < v17)
      {
        return 30;
      }

      v18 = v17;
      v19 = v13 + 2;
      v20 = v10;
      if (v16 == -2001563371)
      {
        goto LABEL_8;
      }

      if (v16 == -2001563370)
      {
        break;
      }

LABEL_9:
      v13 = (v19 + v18);
      v14 = v15 - v18;
      if (v15 == v18)
      {
        goto LABEL_10;
      }
    }

    v20 = v12;
LABEL_8:
    *v19 = uarpHtons(v20);
    goto LABEL_9;
  }

LABEL_10:

  return UARPSuperBinaryAddPayloadMetaData(a1, a2, a3, 0x88B29110, a5, a4);
}

uint64_t uarpPlatformAssetProcessingCompleteInternal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 30;
  if (a1 && a3)
  {
    if (uarpPlatformAssetIsKnown(a1, a2, a3))
    {
      *(a3 + 72) = 1;
      *(a3 + 696) = 0;
      if (!a2 || (result = uarpAssetProcessingComplete(a1, a2, a3, a5 | a4), !result))
      {
        result = 0;
        if (a4 == 4 && !a6)
        {
          UARPLayer2AssetCorrupt(a1, a3);
          return 0;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetRequestData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 30;
  }

  v3 = *(a2 + 696);
  if (!v3)
  {
    return 30;
  }

  if (*(a2 + 73) == 1 || !*(v3 + 60))
  {
    return 31;
  }

  v4 = a3[2];
  v5 = a3[20];
  v6 = v5 + v4 + *a3;
  v7 = a3[1] - (v5 + v4);
  if (v7 >= a3[6] - v5)
  {
    v7 = a3[6] - v5;
  }

  a3[22] = v6;
  a3[23] = v7;
  if (v7 >= *(*(a2 + 696) + 4))
  {
    v8 = *(*(a2 + 696) + 4);
  }

  else
  {
    v8 = v7;
  }

  a3[23] = v8;
  return uarpSendAssetRequestData(a1, *(a2 + 696), *(a2 + 44), v6, v8);
}

uint64_t uarpPlatformAssetResponseData(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, int a5, int a6, size_t __n)
{
  if (a3)
  {
    v9 = a3;
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
    return v9;
  }

  if (*(a2 + 400) != a5)
  {
    return 29;
  }

  v10 = *(a2 + 404);
  if (v10 != a6 || v10 < __n)
  {
    return 29;
  }

  v12 = *(a2 + 392);
  if ((v12 + __n) > *(a2 + 336))
  {
    return 29;
  }

  *(a2 + 408) = __n;
  memcpy((*(a2 + 328) + v12), __src, __n);
  v14 = *(a2 + 392) + *(a2 + 408);
  *(a2 + 392) = v14;
  v15 = *(a2 + 320) + v14;
  v16 = *(a2 + 316);
  if (v15 > v16)
  {
    return 65;
  }

  if (v15 == v16 || v14 == *(a2 + 336))
  {
    v9 = (*(a2 + 376))(a1, a2, a2 + 312);
    if (v9)
    {
      return v9;
    }

    v17 = *(a2 + 392);
    v18 = *(a2 + 396);
    v19 = v17 - v18;
    if (v17 != v18)
    {
      if (v17 > *(a2 + 336))
      {
        return 65;
      }

      memcpy(*(a2 + 328), (*(a2 + 328) + v18), v17 - v18);
      v17 = *(a2 + 396);
    }

    *(a2 + 392) = v19;
    *(a2 + 320) += v17;
    *(a2 + 396) = 0;
  }

  if (v15 == v16)
  {
    v20 = *(a2 + 384);

    return v20(a1, a2, a2 + 312);
  }

  else
  {

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }
}

uint64_t uarpPlatformAssetUpdateMetaData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, unsigned int *))
{
  v4 = *(a3 + 80);
  if (v4 < 8)
  {
    return 0;
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = uarpHtonl(*v9);
    v11 = uarpHtonl(v9[1]);
    if (v11 > *(a3 + 24) - 8)
    {
      break;
    }

    v12 = v11;
    v13 = v4 - 8;
    v4 = v4 - 8 - v11;
    if (v13 >= v11)
    {
      v14 = v9 + 2;
      v15 = *(a3 + 84) + 8;
      *(a3 + 84) = v15;
      if (a4)
      {
        a4(a1, a2, v10, v11, v14);
        v15 = *(a3 + 84);
      }

      v9 = (v14 + v12);
      *(a3 + 84) = v15 + v12;
      if (v4 > 7)
      {
        continue;
      }
    }

    return 0;
  }

  return 53;
}

uint64_t uarpPlatformAssetSuperBinaryPullHeader(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0x2C00000000;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = uarpPlatformAssetSuperBinaryRequestWindowFilled;
  *(a2 + 384) = uarpPlatformAssetSuperBinaryRequestCompleted;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetSuperBinaryRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = *(a3 + 2);
  *a2 = uarpHtonl(*v9);
  *(a2 + 4) = uarpHtonl(v9[1]);
  *(a2 + 8) = uarpHtonl(v9[2]);
  uarpVersionEndianSwap(v9 + 3, (a2 + 12));
  *(a2 + 28) = uarpHtonl(v9[7]);
  *(a2 + 32) = uarpHtonl(v9[8]);
  *(a2 + 36) = uarpHtonl(v9[9]);
  v10 = uarpHtonl(v9[10]);
  *(a2 + 40) = v10;
  a3[21] = a3[20];
  v12 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (__CFADD__(v11, v12))
  {
    return 8;
  }

  v15 = *(a2 + 68);
  v13 = 8;
  if (v15 >= v11 && v15 >= v12)
  {
    v16 = *(a2 + 36);
    if (!__CFADD__(v10, v16) && v15 >= v10 && v15 >= v16)
    {
      if (v12 + v11 <= v15 && v16 + v10 <= v15 && *(a2 + 4) == 44 && *a2 < 5u)
      {
        return 0;
      }

      else
      {
        uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
        return 47;
      }
    }
  }

  return v13;
}

uint64_t uarpPlatformAssetSuperBinaryPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      *(a2 + 688) = 0;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 440) = 0;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 312) = *(a2 + 28);
      *(a2 + 316) = v3;
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = uarpPlatformAssetSuperBinaryMetaDataRequestWindowFilled;
      *(a2 + 384) = uarpPlatformAssetSuperBinaryMetaDataRequestCompleted;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    return 40;
  }

  return v2;
}

uint64_t uarpPlatformAssetSuperBinaryMetaDataRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2AssetMetaDataTLV);
  if (updated)
  {
    UARPLayer2AssetMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 688) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  v2 = *(a2 + 456);
  if (v2 > *(a2 + 448))
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 40 * v2 + 44;
  *(a2 + 316) = 40;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = uarpPlatformAssetPayloadHeaderRequestWindowFilled;
  *(a2 + 384) = uarpPlatformAssetPayloadHeaderRequestCompleted;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetPayloadHeaderRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = uarpPlatformAssetPayloadHeaderProcess(*(a3 + 2), a2 + 464, *(a2 + 68));
  if (v9)
  {
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    a3[21] = a3[20];
  }

  return v9;
}

uint64_t uarpPlatformAssetPayloadHeaderRequestCompleted(uint64_t a1, uint64_t a2)
{
  *(a2 + 452) = *(a2 + 456);
  UARPLayer2PayloadReady(a1, a2);
  return 0;
}

uint64_t uarpPlatformAssetPayloadHeaderProcess(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  *a2 = uarpHtonl(*a1);
  *(a2 + 4) = a1[1];
  uarpVersionEndianSwap(a1 + 2, (a2 + 8));
  *(a2 + 24) = uarpHtonl(a1[6]);
  *(a2 + 28) = uarpHtonl(a1[7]);
  *(a2 + 32) = uarpHtonl(a1[8]);
  v6 = uarpHtonl(a1[9]);
  *(a2 + 36) = v6;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0;
  *(a2 + 76) = 0;
  *(a2 + 128) = v6;
  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  v9 = __CFADD__(v7, v8);
  result = 8;
  if (v8 <= a3 && v7 <= a3 && !v9)
  {
    if (v8 + v7 <= a3)
    {
      v11 = *(a2 + 32);
      v12 = __CFADD__(v6, v11);
      if (v11 <= a3 && v6 <= a3)
      {
        if (v11 + v6 <= a3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 48;
        }

        if (v12)
        {
          return 8;
        }

        else
        {
          return v13;
        }
      }
    }

    else
    {
      return 48;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    else
    {
      v3 = *(a2 + 492);
      if (v3)
      {
        *(a2 + 512) = 0;
        *(a2 + 312) = 0u;
        *(a2 + 328) = 0u;
        *(a2 + 440) = 0;
        *(a2 + 344) = 0u;
        *(a2 + 360) = 0u;
        *(a2 + 376) = 0u;
        *(a2 + 392) = 0u;
        *(a2 + 408) = 0u;
        *(a2 + 424) = 0u;
        *(a2 + 312) = *(a2 + 488);
        *(a2 + 316) = v3;
        *(a2 + 328) = *(a2 + 640);
        *(a2 + 336) = *(a2 + 648);
        *(a2 + 376) = uarpPlatformAssetPayloadMetaDataRequestWindowFilled;
        *(a2 + 384) = uarpPlatformAssetPayloadMetaDataRequestCompleted;
        return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
      }

      return 40;
    }
  }

  return v2;
}

uint64_t uarpPlatformAssetPayloadMetaDataRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2PayloadMetaDataTLV);
  if (updated)
  {
    UARPLayer2PayloadMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 512) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetPayloadPullData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    v5 = *(a2 + 508);
    v6 = *(a2 + 500);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      return 43;
    }

    v9 = *(a2 + 496) + v5;
    if (v9 > *(a2 + 8))
    {
      return 43;
    }

    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 440) = 0;
    *(a2 + 408) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 312) = v9;
    *(a2 + 316) = v8;
    *(a2 + 328) = *(a2 + 640);
    v10 = *(a2 + 648);
    *(a2 + 336) = v10;
    *(a2 + 368) = v10;
    *(a2 + 376) = uarpPlatformAssetPayloadDataRequestWindowFilled;
    *(a2 + 384) = uarpPlatformAssetPayloadDataRequestCompleted;
    if (*(a2 + 516) == 1)
    {
      *(a2 + 356) = 1;
      *(a2 + 336) = 10;
      *(a2 + 344) = *(a2 + 656);
      *(a2 + 352) = *(a2 + 664);
      *(a2 + 376) = uarpPlatformAssetPayloadDataRequestCompressionHeader;
    }

    v11 = *(a2 + 520);
    *(a2 + 412) = v11;
    UARPLayer2HashInfo(a1, v11, (a2 + 416), (a2 + 432));
    v12 = *(a2 + 416);
    if (v12)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 424), v12, 48059, 900);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 424))
      {
        return 11;
      }
    }

    v13 = *(a2 + 432);
    if (v13)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 440), v13, 48059, 917);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 440))
      {
        return 11;
      }
    }

    UARPLayer2HashInit(a1, *(a2 + 412), *(a2 + 424));

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadDataRequestWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 16), *(a3 + 80));
  v6 = (*(a3 + 8) + *a3);
  v7 = *(a2 + 496);
  v8 = *(a3 + 16);
  v9 = *(a3 + 80);
  UARPLayer2PayloadData(a1, a2);
  v10 = *(a3 + 80);
  *(a3 + 84) = v10;
  *(a2 + 508) += v10;
  return 0;
}

uint64_t uarpPlatformAssetPayloadDataRequestCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 520);
  if (!v5)
  {
    goto LABEL_7;
  }

  UARPLayer2HashFinal(a1, v5, *(a3 + 112), *(a3 + 128), *(a3 + 120));
  v7 = uarpPlatformCompareHash(a1, *(a3 + 128), *(a3 + 120), *(a2 + 528), *(a2 + 536));
  v8 = *(a3 + 112);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 48059, 1073);
    *(a3 + 112) = 0;
    *(a3 + 104) = 0;
  }

  v9 = *(a3 + 128);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 48059, 1084);
    *(a3 + 128) = 0;
    *(a3 + 120) = 0;
  }

  *(a3 + 100) = 0;
  if (!v7)
  {
    UARPLayer2AssetCorrupt(a1, a2);
  }

  else
  {
LABEL_7:
    UARPLayer2PayloadDataComplete2(a1, a2);
  }

  return 0;
}

uint64_t uarpPlatformAssetPayloadDataRequestCompressionHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  uarpCompressionHeaderEndianSwap(*(a3 + 16), a3 + 45);
  v5 = *(a3 + 80);
  *(a3 + 84) = v5;
  *(a2 + 508) += v5;
  *(a3 + 44) = 0;
  v6 = *(a3 + 51);
  *(a3 + 24) = v6;
  if (*(a3 + 56) < v6 || *(a3 + 40) < *(a3 + 53))
  {
    return 51;
  }

  result = 0;
  *(a3 + 64) = uarpPlatformAssetPayloadDataRequestCompressedBlock;
  return result;
}

uint64_t uarpPlatformAssetPullAllPayloadHeaders(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    if (*(a2 + 448) < 1)
    {
LABEL_7:
      *(a2 + 440) = 0;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 312) = *(a2 + 36);
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = uarpPlatformAssetAllPayloadHeadersRequestWindowFilled;
      *(a2 + 384) = uarpPlatformAssetAllPayloadHeadersRequestCompleted;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    else
    {
      v5 = 0;
      while (1)
      {
        result = UARPLayer2RequestBuffer(a1, &v7, 0xB8uLL, 48059, 1138);
        if (result)
        {
          break;
        }

        v6 = v7;
        v7[22] = *(a2 + 632);
        *(a2 + 632) = v6;
        if (++v5 >= *(a2 + 448))
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetAllPayloadHeadersRequestWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 448) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 16);
  v9 = *(a2 + 632);
  while (1)
  {
    if (!v9)
    {
      return 11;
    }

    if (v6 > *(a3 + 24))
    {
      return 48;
    }

    v10 = uarpPlatformAssetPayloadHeaderProcess(v8, v9, *(a2 + 68));
    if (v10)
    {
      break;
    }

    *(v9 + 124) = v7;
    v9 = *(v9 + 176);
    *(a3 + 84) += 40;
    ++v7;
    v6 += 40;
    v8 += 10;
    if (v7 >= *(a2 + 448))
    {
      return 0;
    }
  }

  v11 = v10;
  uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  return v11;
}

_DWORD *uarpProcessTLV(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a3 < 8)
  {
    return 0;
  }

  v5 = a3;
  v6 = uarpHtonl(*a2);
  v7 = uarpHtonl(a2[1]);
  v8 = v7;
  if (v7 > 0xFFFFFFE7 || v7 + 8 > v5)
  {
    return 0;
  }

  v12 = v7;
  v14 = 0;
  v13 = UARPLayer2RequestBuffer(a1, &v14, v7 + 24, 48059, 1252);
  v10 = 0;
  if (!v13)
  {
    v10 = v14;
    *v14 = v6;
    v10[1] = v12;
    memcpy(v10 + 6, a2 + 2, v8);
    *(v10 + 1) = v10 + 6;
  }

  return v10;
}

uint64_t uarpPlatformAssetPullAllMetaData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (!a1 || !a2)
  {
    return result;
  }

  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  v6 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(a2 + 312) = v6;
  *(a2 + 316) = v5;
  for (i = *(a2 + 632); i; i = *(i + 176))
  {
    v8 = *(i + 24);
    if (v8)
    {
      if (v8 != v5 + v6)
      {
        return 43;
      }

      v5 = (*(i + 28) + v5);
      *(a2 + 316) = v5;
    }
  }

  *(a2 + 680) = v5;
  *(a2 + 672) = 0;
  if (!v5)
  {
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 376) = uarpPlatformAssetAllMetaDataWindowFilled;
    *(a2 + 384) = uarpPlatformAssetAllMetaDataRequestCompleted;
LABEL_15:
    UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
    return 0;
  }

  result = UARPLayer2RequestBuffer(a1, (a2 + 672), v5, 48059, 1328);
  if (result)
  {
    return result;
  }

  v9 = *(a2 + 680);
  v10 = *(a2 + 316);
  *(a2 + 328) = *(a2 + 672);
  *(a2 + 336) = v9;
  *(a2 + 376) = uarpPlatformAssetAllMetaDataWindowFilled;
  *(a2 + 384) = uarpPlatformAssetAllMetaDataRequestCompleted;
  if (!v10)
  {
    goto LABEL_15;
  }

  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetAllMetaDataWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = *(a3 + 84);
  if (*(a3 + 80) - v4 < v3)
  {
    return 18;
  }

  if (v3)
  {
    v9 = *(a3 + 16);
    while (1)
    {
      v10 = uarpProcessTLV(a1, v9, v3);
      if (!v10)
      {
        return 10;
      }

      v11 = (v10[1] + 8);
      v9 = (v9 + v11);
      *(v10 + 2) = *(a2 + 720);
      *(a2 + 720) = v10;
      v3 -= v11;
      if (!v3)
      {
        v12 = *(a2 + 32);
        v4 = *(a3 + 84);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_9:
    v13 = v4 + v12;
    *(a3 + 84) = v13;
    v14 = *(a2 + 632);
    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 28);
        if (*(a3 + 80) - v13 < v15)
        {
          return 18;
        }

        if (v15)
        {
          v16 = (*(a3 + 16) + v13);
          while (1)
          {
            v17 = uarpProcessTLV(a1, v16, v15);
            if (!v17)
            {
              return 10;
            }

            v18 = (v17[1] + 8);
            v16 = (v16 + v18);
            *(v17 + 2) = *(v14 + 168);
            *(v14 + 168) = v17;
            v15 -= v18;
            if (!v15)
            {
              v19 = *(v14 + 28);
              v13 = *(a3 + 84);
              goto LABEL_17;
            }
          }
        }

        v19 = 0;
LABEL_17:
        result = 0;
        v13 += v19;
        *(a3 + 84) = v13;
        v14 = *(v14 + 176);
        if (!v14)
        {
          return result;
        }
      }
    }

    return 0;
  }
}

uint64_t uarpPlatformAssetPayloadDataRequestCompressedBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = UARPLayer2DecompressBuffer(a1, *(a3 + 45), *(a3 + 16), *(a3 + 51), *(a3 + 32), *(a3 + 53));
  if (v6)
  {
    v7 = *(a1 + 440);
    if (v7)
    {
      v7(*(a1 + 608), 2, "Error decompressing buffer for payload");
    }

    else
    {
      uarpLogError(2u, "Error decompressing buffer for payload");
    }

    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 32), *(a3 + 53));
    v8 = *(a3 + 32);
    v9 = *(a3 + 53);
    v10 = *(a3 + 47);
    UARPLayer2PayloadData(a1, a2);
    v11 = *(a3 + 24);
    *(a3 + 84) = v11;
    *(a2 + 508) += v11;
    *(a3 + 44) = 1;
    *(a3 + 24) = 10;
    *(a3 + 64) = uarpPlatformAssetPayloadDataRequestCompressionHeader;
  }

  return v6;
}

uint64_t UARPLayer2RequestBuffer(uint64_t a1, void **a2, size_t __size, __int16 a4, int a5)
{
  v7 = __size;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10(*(a1 + 608), a2, __size);
    if (v11)
    {
      return v11;
    }

    v12 = *a2;
    if (!*a2)
    {
      return 11;
    }
  }

  else
  {
    v12 = calloc(1uLL, __size);
    *a2 = v12;
    if (!v12)
    {
      return 11;
    }
  }

  v11 = *(a1 + 696);
  if (v11)
  {
    for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
    {
      if (!--v11)
      {
        return v11;
      }
    }

    v11 = 0;
    *(i - 2) = v12;
    *(i - 2) = v7;
    *(i - 2) = a4;
    *i = a5;
  }

  return v11;
}

void UARPLayer2ReturnBuffer(uint64_t a1, void *a2, __int16 a3, int a4)
{
  if (a2)
  {
    v4 = *(a1 + 696);
    if (v4)
    {
      v5 = (*(a1 + 704) + 24);
      while (*(v5 - 3) != a2 || *v5)
      {
        v5 += 8;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      *(v5 - 2) = a3;
      *v5 = a4;
    }

LABEL_10:
    v6 = *(a1 + 56);
    if (v6)
    {
      v6(*(a1 + 608));
    }

    else
    {
      free(a2);
    }
  }
}

uint64_t UARPLayer2RequestTransmitMsgBuffer(uint64_t a1, uint64_t a2, void **a3, int *a4, __int16 a5, int a6)
{
  v11 = *(a1 + 64);
  if (v11)
  {
    result = v11(*(a1 + 608), *(a2 + 40), a3, a4);
    if (!result)
    {
      if (*a3)
      {
        v13 = *(a1 + 696);
        if (v13)
        {
          for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
          {
            if (!--v13)
            {
              return 0;
            }
          }

          result = 0;
          *(i - 2) = *a3;
          *(i - 2) = *a4;
          *(i - 2) = a5;
          *i = a6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 11;
      }
    }
  }

  else
  {
    v15 = *a4;

    return UARPLayer2RequestBuffer(a1, a3, v15, a5, a6);
  }

  return result;
}

void UARPLayer2ReturnTransmitMsgBuffer(uint64_t a1, uint64_t a2, void *a3, __int16 a4, int a5)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 696);
    if (v6)
    {
      v7 = (*(a1 + 704) + 24);
      while (*(v7 - 3) != a3 || *v7)
      {
        v7 += 8;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      *(v7 - 2) = a4;
      *v7 = a5;
    }

LABEL_10:
    v5(*(a1 + 608), *(a2 + 40), a3);
  }

  else
  {
    UARPLayer2ReturnBuffer(a1, a3, a4, a5);
  }
}

uint64_t UARPLayer2SendMessage(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (!v5)
  {
    return 14;
  }

  if (*(a2 + 120))
  {
    uarpPlatformDownstreamEndpointSendMessageInternal(a1, *(a2 + 160), a2, a3, a4);
    return 0;
  }

  else
  {
    v7 = *(a1 + 608);
    v8 = *(a2 + 40);

    return v5(v7, v8, a3, a4);
  }
}

uint64_t UARPLayer2DataTransferPause(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferPauseAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResume(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResumeAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2SuperBinaryOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DynamicAssetOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ApplyStagedAssetsResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ManufacturerName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ManufacturerNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ModelName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ModelNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 176);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2SerialNumber(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2SerialNumberResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2HardwareVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2HardwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ActiveFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[69];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpPayloadTagPack(a2);
        v8 = a1[69];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2ActiveFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 224);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StagedFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[29];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[70];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpPayloadTagPack(a2);
        v8 = a1[70];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2StagedFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 240);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2LastError(uint64_t a1, void *a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    return v2(*(a1 + 608));
  }

  *a2 = -1;
  return 0;
}

uint64_t UARPLayer2LastErrorResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StatisticsResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetSolicitation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2RescindAllAssets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 280);
  if (v3)
  {
    if (a2)
    {
      a2 = *(a2 + 40);
    }

    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), a2, a3);
  }

  return result;
}

uint64_t UARPLayer2RescindAllAssetsAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 288);
  if (v3)
  {
    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), *(a2 + 40), a3);
  }

  return result;
}

uint64_t UARPLayer2WatchdogSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 296);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 1;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2WatchdogCancel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 0;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2MonotonicClockTime(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 312);
  if (!v2)
  {
    return 14;
  }

  v4 = v2(*(a1 + 608));
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t UARPLayer2ProtocolVersion(uint64_t result, uint64_t a2)
{
  v2 = *(result + 320);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2FriendlyName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 328);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2FriendlyNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointUnreachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReleased(uint64_t result, uint64_t a2)
{
  v2 = *(result + 496);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointRecvMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 16));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3NoFirmwareUpdateAvailable(uint64_t result, uint64_t a2)
{
  v2 = *(result + 512);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDComponents(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationQuery(uint64_t result, uint64_t a2)
{
  v2 = *(result + 360);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 368);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DecompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 376);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2CompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 384);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2HashInfo(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(result + 392);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t UARPLayer2HashInit(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 400);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2HashUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 408);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashFinal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 416);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashLog(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 424);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2LogPacket(uint64_t result, uint64_t a2)
{
  v2 = *(result + 432);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2VendorSpecificRecvMessage(void *a1, uint64_t a2)
{
  v2 = a1[65];
  if (v2)
  {
    return v2(a1[76], *(a2 + 40));
  }

  v4 = a1[82];
  if (v4)
  {
    return v4();
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2VendorSpecificCheckExpectedResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificCheckValidToSend(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificExceededRetries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 544);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataTLV(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

void *UARPLayer2PayloadMetaDataTLV(void *a1, uint64_t a2, uint64_t a3, size_t __size, unsigned int *a5)
{
  result = uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, a3, __size, a5);
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = a1[76];
    v13 = *(a2 + 704);

    return v11(v12, v13, a3, __size, a5);
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataComplete(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 540);
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = *(a2 + 568);
    v7 = *(a2 + 560);
    v8 = *(a2 + 544);
    v5();
  }

  result = uarpPlatformCompareHash(a1, *(a2 + 560), *(a2 + 568), *(a2 + 576), *(a2 + 584));
  if (!result)
  {
    v9 = *(a2 + 200);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
LABEL_5:
    v9 = *(a2 + 128);
    if (!v9)
    {
      return result;
    }
  }

  v10 = *(a1 + 608);
  v11 = *(a2 + 704);

  return v9(v10, v11);
}

uint64_t UARPLayer2AssetCorrupt(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadData(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete2(uint64_t result, void *a2)
{
  v2 = a2[20];
  if (v2)
  {
    return v2(*(result + 608), a2[88]);
  }

  v3 = a2[19];
  if (v3)
  {
    return v3(*(result + 608), a2[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetGetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v7 = a3[21];
  if (v7)
  {
    return v7(*(a1 + 608), a2, a3[88]);
  }

  v9 = a3[34];
  if (v9)
  {
    return v9(*(a1 + 608), a3[88], a4, a5, a6, a7);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetSetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v6 = a3[22];
  if (v6)
  {
    return v6(*(a1 + 608), a2, a3[88]);
  }

  v8 = a3[35];
  if (v8)
  {
    return v8(*(a1 + 608), a3[88], a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetRescinded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 184);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetRescindedAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 192);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetOrphaned(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetReleased2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = a3[27];
  if (v3)
  {
    return v3(*(result + 608), a2, a3[88]);
  }

  v4 = a3[36];
  if (v4)
  {
    return v4(*(result + 608), a3[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetProcessingNotification2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[28];
  if (v4)
  {
    return v4(*(a1 + 608), *(a2 + 40), a3[88]);
  }

  v6 = a3[37];
  if (v6)
  {
    return v6(*(a1 + 608), a3[88], a4);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 232);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetAllHeadersAndMetaDataComplete(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 256);
  if (v3)
  {
    return v3(*(result + 608), *(a2 + 40), *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetStore(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

char *uarpAssetTagVoiceAssist4cc()
{
  result = uarpAssetTagVoiceAssist4cc_assetTag;
  uarpAssetTagVoiceAssist4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructVoiceAssist()
{
  uarpAssetTagVoiceAssist4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructVoiceAssist_myTag;
  uarpAssetTagStructVoiceAssist_myTag = *uarpAssetTagVoiceAssist4cc_assetTag;
  return result;
}

__int16 *uarpOuiVoiceAssist()
{
  result = &uarpOuiVoiceAssist_myOui;
  uarpOuiVoiceAssist_myOui = -30716;
  byte_27EE5DA92 = -30;
  return result;
}

uint64_t uarpPlatformEndpointQueryActiveFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2ActiveFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformEndpointQueryStagedFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2StagedFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformAssetFindFirmware(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 46) == 1)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetID(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 44) == a4)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByTag(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  for (i = *(a1 + 632); i; i = *(i + 712))
  {
    if (*(i + 304) == a3 && *(i + 696) == a2 && uarp4ccCompare((i + 48), a4))
    {
      break;
    }
  }

  return i;
}

void uarpPlatformCleanupAssetsForRemoteEndpoint(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 644) != 1)
  {
    v4 = *(a1 + 632);
    for (*(a1 + 632) = 0; v4; *(a1 + 632) = v7)
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 712);
        *(v7 + 712) = 0;
        v8 = *(v7 + 696);
        v9 = v8 == a2 || a2 == 0;
        if (!v9 && v8 != 0)
        {
          break;
        }

        if (a3 == 1)
        {
          if (*(v7 + 46))
          {
            UARPLayer2AssetOrphaned(a1, v7);
            *(v7 + 696) = 0;
            *(v7 + 704) = 0;
          }

          else
          {
            *(v7 + 72) = 1;
          }
        }

        if (*(v7 + 72) != 1)
        {
          break;
        }

        UARPLayer2AssetReleased2(a1, a2, v7);
        *(v7 + 704) = 0;
        uarpPlatformAssetCleanup(a1, v7);
        if (!v4)
        {
          return;
        }
      }

      *(v7 + 712) = *(a1 + 632);
    }
  }
}

double uarpPlatformAssetOrphan(uint64_t a1, uint64_t a2)
{
  UARPLayer2AssetOrphaned(a1, a2);
  result = 0.0;
  *(a2 + 696) = 0u;
  return result;
}

uint64_t uarpPlatformAssetRelease(uint64_t a1, uint64_t a2, void *a3)
{
  result = UARPLayer2AssetReleased2(a1, a2, a3);
  a3[88] = 0;
  return result;
}

void uarpPlatformAssetCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 640);
  if (v4 && !*(a2 + 652))
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 412);
  }

  *(a2 + 640) = 0;
  *(a2 + 648) = 0;
  v5 = *(a2 + 656);
  if (v5 && !*(a2 + 668))
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 432);
  }

  *(a2 + 656) = 0;
  *(a2 + 664) = 0;
  v6 = *(a2 + 672);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 451);
    *(a2 + 672) = 0;
  }

  *(a2 + 680) = 0;
  v7 = *(a2 + 720);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      v7[2] = 0;
      UARPLayer2ReturnBuffer(a1, v7, 52428, 388);
      v7 = v8;
    }

    while (v8);
  }

  *(a2 + 720) = 0;
  v9 = *(a2 + 632);
  if (v9)
  {
    do
    {
      v10 = v9[21];
      v11 = v9[22];
      if (v10)
      {
        do
        {
          v12 = v10[2];
          v10[2] = 0;
          UARPLayer2ReturnBuffer(a1, v10, 52428, 388);
          v10 = v12;
        }

        while (v12);
      }

      v9[21] = 0;
      uarpPlatformPayloadCleanup(a1, v9);
      UARPLayer2ReturnBuffer(a1, v9, 52428, 487);
      v9 = v11;
    }

    while (v11);
  }

  uarpPlatformPayloadCleanup(a1, a2 + 464);

  UARPLayer2ReturnBuffer(a1, a2, 52428, 511);
}

void uarpPlatformCleanupAssets(uint64_t a1)
{
  v1 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1 + 712);
      *(v1 + 712) = 0;
      uarpPlatformAssetCleanup(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t uarpPlatformAssetIsKnown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 632);
  if (!v3)
  {
    return 0;
  }

  while (v3 != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t uarpPlatformPrepareAsset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v6 = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v18 = 0;
        v6 = UARPLayer2RequestBuffer(a1, &v18, 0x2D8uLL, 52428, 245);
        if (!v6)
        {
          v14 = v18;
          if (v18)
          {
            *(v18 + 88) = a3;
            v14[87] = a2;
            uarpPlatformEndpointAssetSetCallbacks(a1, v14, a5);
            if (v15)
            {
              v6 = v15;
              UARPLayer2ReturnBuffer(a1, v18, 52428, 265);
            }

            else
            {
              v16 = v18;
              if (a4)
              {
                *(v18 + 23) = 2;
                *(v16 + 12) = *a4;
              }

              else
              {
                *(v18 + 23) = 1;
              }

              if (a6 == 1)
              {
                *(v16 + 76) = 1;
                v17 = *(a1 + 640);
                if (v17 == 65534)
                {
                  v17 = 1;
                }

                *(a1 + 640) = v17 + 1;
              }

              else
              {
                LOWORD(v17) = 0;
                *(v16 + 76) = 0;
              }

              *(v16 + 22) = v17;
              if (a4 && a6 == 1)
              {
                uarpPlatformAssetFindByTag(a1, a2, 1, v16 + 48);
                v16 = v18;
              }

              v6 = 0;
              *(v16 + 89) = *(a1 + 632);
              *(a1 + 632) = v16;
            }
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }

  return v6;
}

void uarpPlatformPayloadCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 529);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 546);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 563);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    UARPLayer2ReturnBuffer(a1, v7, 52428, 580);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 52428, 592);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 52428, 602);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }
}

uint64_t uarpPlatformEndpointAssetStore(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4)
  {
    return UARPLayer2AssetStore(result, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescind(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      uarpTransmitQueueAssetRescinded(result, a2, a3);
      *(a3 + 72) = 1;

      return UARPLayer2AssetRescinded(v5, a2, a3);
    }

    else
    {

      return UARPLayer2RescindAllAssets(result, a2, 0);
    }
  }

  return result;
}

uint64_t uarpPlatformReOfferFirmware(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v4 = result;
    do
    {
      if (*(v2 + 304) == 1 && *(v2 + 696) == a2 && (*(v2 + 46) & 2) == 0)
      {
        result = uarpPlatformEndpointOfferAsset(v4, a2, *(v2 + 704));
      }

      v2 = *(v2 + 712);
    }

    while (v2);
  }

  return result;
}

uint64_t uarpCallbackUpdateInformationTLV(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v9 = v6;
  if (v5 != 7)
  {
    result = uarpPlatformQueryAccessoryInfo(a1, v5, a3 + 2, v6, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    goto LABEL_6;
  }

  if (v6 >= 0x10)
  {
    a3[2] = uarpHtonl(*(a2 + 66));
    a3[3] = uarpHtonl(*(a2 + 70));
    a3[4] = uarpHtonl(*(a2 + 74));
    a3[5] = uarpHtonl(*(a2 + 78));
    v7 = 16;
LABEL_6:
    result = 0;
    a3[1] = v7;
    return result;
  }

  return 39;
}

uint64_t uarpPlatformQueryAccessoryInfo(void *a1, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  *a5 = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {

      return UARPLayer2ManufacturerName(a1, a3, a5);
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return UARPLayer2ModelName(a1, a3, a5);
    }
  }

  else
  {
    switch(a2)
    {
      case 3:

        return UARPLayer2SerialNumber(a1, a3, a5);
      case 4:

        return UARPLayer2HardwareVersion(a1, a3, a5);
      case 9:

        return UARPLayer2FriendlyName(a1, a3, a5);
      default:
LABEL_22:
        if ((a2 - 5) > 1)
        {
          if (a2 != 8)
          {
            *a5 = 0;
            return 28;
          }

          *a5 = 8;
          if (a4 >= 8)
          {
            Error = UARPLayer2LastError(a1, a3);
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            return Error;
          }
        }

        else
        {
          *a5 = 16;
          if (a4 >= 0x10)
          {
            if (a2 == 5)
            {
              v9 = 0;
              active = UARPLayer2ActiveFirmwareVersion2(a1, &v9, a3);
            }

            else
            {
              v10 = 0;
              active = UARPLayer2StagedFirmwareVersion2(a1, &v10, a3);
            }

            Error = active;
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            a3[2] = uarpHtonl(a3[2]);
            a3[3] = uarpHtonl(a3[3]);
            return Error;
          }
        }

        return 39;
    }
  }
}

uint64_t uarpPlatformResponseAccessoryInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v8 = result;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {

        return UARPLayer2SerialNumberResponse(result, a2);
      }

      else
      {

        return UARPLayer2HardwareVersionResponse(result, a2);
      }
    }

    else if (a4 == 1)
    {

      return UARPLayer2ManufacturerNameResponse(result, a2);
    }

    else if (a4 == 2)
    {

      return UARPLayer2ModelNameResponse(result, a2);
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      if (a5 >= 0x10)
      {
        uarpVersionEndianSwap(a6, a6);
        result = UARPLayer2ActiveFirmwareVersionResponse(v8, a2);
        *(a2 + 122) = *a6;
      }
    }

    else if (a5 >= 0x10)
    {
      uarpVersionEndianSwap(a6, a6);
      result = UARPLayer2StagedFirmwareVersionResponse(v8, a2);
      *(a2 + 138) = *a6;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        if (a5 >= 0x10)
        {
          *a6 = uarpHtonl(*a6);
          a6[1] = uarpHtonl(a6[1]);
          a6[2] = uarpHtonl(a6[2]);
          a6[3] = uarpHtonl(a6[3]);

          return UARPLayer2StatisticsResponse(v8, a2);
        }

        break;
      case 8:
        if (a5 >= 8)
        {
          *a6 = uarpHtonl(*a6);
          a6[1] = uarpHtonl(a6[1]);

          return UARPLayer2LastErrorResponse(v8, a2);
        }

        break;
      case 9:

        return UARPLayer2FriendlyNameResponse(result, a2);
    }
  }

  return result;
}

uint64_t uarpPlatformAssetDataRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *__dst, unsigned __int16 *a7)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 17;
  }

  while (*(v8 + 304) != 1 || *(v8 + 696) != a2 || *(v8 + 44) != a3)
  {
    v8 = *(v8 + 712);
    if (!v8)
    {
      return 17;
    }
  }

  v10 = *(v8 + 68);
  if (v10 < a5)
  {
    return 17;
  }

  if (v10 >= a4 + a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10 - a5;
  }

  return uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v8, __dst, v11, a5, a7);
}

uint64_t uarpPlatformDataTransferResume(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 632);
  if (v4)
  {
    while (1)
    {
      if (!*(v4 + 304) && *(v4 + 696) == a2)
      {
        result = uarpPlatformAssetRequestData(a1, v4, (v4 + 312));
        if (result)
        {
          break;
        }
      }

      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return UARPLayer2DataTransferResume(a1, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescinded(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 632);
  if (a3 == 0xFFFF)
  {
    if (!v4)
    {
      return uarpPlatformAssetRescind(result, a2, v4);
    }

    v5 = *(result + 632);
    do
    {
      if (!*(v5 + 304) && *(v5 + 696) == a2)
      {
        *(v5 + 72) = 1;
      }

      v5 = *(v5 + 712);
    }

    while (v5);
  }

  if (v4)
  {
    while (*(v4 + 304) || *(v4 + 696) != a2 || *(v4 + 44) != a3)
    {
      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3 != 0xFFFF)
    {
      return result;
    }

    v4 = 0;
  }

  return uarpPlatformAssetRescind(result, a2, v4);
}

uint64_t uarpAssetProcessingComplete(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = uarpAllocPrepareTransmitBuffer2(a1, a2, 9u, 0xAu, 1);
    if (v8)
    {
      v9 = v8;
      v10 = v8[3];
      *(v10 + 6) = uarpHtons(*(a3 + 44));
      *(v10 + 8) = uarpHtons(a4);

      return uarpTransmitBuffer2(a1, a2, v9);
    }

    else
    {
      return 11;
    }
  }

  else if (a4 == 3)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t uarpOfferAssetToRemoteEP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 5u, 0x24u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpPayloadTagPack((a3 + 48));
  *(v8 + 10) = uarpHtons(*(a3 + 46));
  *(v8 + 12) = uarpHtons(*(a3 + 44));
  uarpVersionEndianSwap((a3 + 52), (v8 + 14));
  *(v8 + 30) = uarpHtonl(*(a3 + 68));
  *(v8 + 34) = uarpHtons(*(a3 + 448));

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpAssetRescind(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xCu, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x11u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  *(v6[3] + 6) = *a3;

  return uarpTransmitBuffer2(a1, a2, v6);
}

uint64_t uarpPlatformFindPreparedAsset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 2) == 0)
  {
    return 0;
  }

  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (!*(result + 304) && *(result + 696) == a2 && !*(result + 44) && *(result + 48) == *a5 && *(result + 49) == a5[1] && *(result + 50) == a5[2] && *(result + 51) == a5[3])
    {
      break;
    }
  }

  return result;
}