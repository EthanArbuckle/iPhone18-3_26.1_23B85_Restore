uint64_t sub_100067298(CFTypeRef cf, char *a2, const __CFString *a3, char *a4, const __CFString *a5, __CFArray **a6)
{
  cfa = 0;
  result = 1;
  if (cf && a2 && a6)
  {
    v13 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v13, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      return 2;
    }

    v15 = Mutable;
    v16 = sub_10000BC74(cf, a2, a3);
    if (a4)
    {
      v17 = sub_10000BC74(cf, a4, a5);
    }

    else
    {
      v17 = 0;
    }

    if (*(cf + 6))
    {
      v18 = AMAuthInstallBasebandPersonalizationEnabled(cf);
      v19 = v18 != 0;
      if (!AMAuthInstallApPersonalizationEnabled(cf))
      {
        if (v18)
        {
          AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "personalizing baseband only", v20, v21, v22, v23, v24, v33);
          v25 = @"BasebandFirmware";
LABEL_25:
          CFArrayAppendValue(v15, v25);
LABEL_27:
          result = 0;
          *a6 = v15;
          return result;
        }

LABEL_26:
        AMAuthInstallLog(5, "_AMAuthInstallGeneratePersonalizationEntries", "nothing to personalize", v20, v21, v22, v23, v24, v33);
        goto LABEL_27;
      }
    }

    else
    {
      if (!AMAuthInstallApPersonalizationEnabled(cf))
      {
        goto LABEL_26;
      }

      v19 = 0;
    }

    CFArrayAppendValue(v15, @"RestoreLogo");
    CFArrayAppendValue(v15, @"RestoreDeviceTree");
    CFArrayAppendValue(v15, @"RestoreKernelCache");
    CFArrayAppendValue(v15, @"RestoreRamDisk");
    CFArrayAppendValue(v15, @"OSRamdisk");
    CFArrayAppendValue(v15, @"iBEC");
    CFArrayAppendValue(v15, @"iBSS");
    CFArrayAppendValue(v15, @"KernelCache");
    CFArrayAppendValue(v15, @"ftap");
    CFArrayAppendValue(v15, @"rfta");
    CFArrayAppendValue(v15, @"ftsp");
    CFArrayAppendValue(v15, @"rfts");
    CFArrayAppendValue(v15, @"Ap,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"x86,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"BaseSystemVolume");
    CFArrayAppendValue(v15, @"x86,BaseSystemVolume");
    CFArrayAppendValue(v15, @"SystemVolume");
    CFArrayAppendValue(v15, @"x86,SystemVolume");
    CFArrayAppendValue(v15, @"Ap,BaseSystemTrustCache");
    if (AMAuthInstallApIsImg4(cf, v26, v27, v28, v29, v30, v31, v32))
    {
      CFArrayAppendValue(v15, @"Diags");
      CFArrayAppendValue(v15, @"CFELoader");
      CFArrayAppendValue(v15, @"RBM");
      CFArrayAppendValue(v15, @"PHLEET");
      CFArrayAppendValue(v15, @"PERTOS");
      CFArrayAppendValue(v15, @"PEHammer");
      CFArrayAppendValue(v15, @"Alamo");
    }

    if (v19)
    {
      CFArrayAppendValue(v15, @"BasebandFirmware");
      if (*(*(cf + 6) + 160))
      {
        v34 = 1;
        if (!AMAuthInstallVinylIsLegacyChipId(cf, &v34) && !v34)
        {
          CFArrayAppendValue(v15, @"eUICC,Main");
          CFArrayAppendValue(v15, @"eUICC,Gold");
        }
      }
    }

    if (v16)
    {
      CFArrayAppendValue(v15, @"OS");
    }

    if (!v17)
    {
      goto LABEL_27;
    }

    CFArrayAppendValue(v15, @"RecoveryOSOS");
    CFArrayAppendValue(v15, @"RecoveryOSAppleLogo");
    CFArrayAppendValue(v15, @"RecoveryOSDeviceTree");
    CFArrayAppendValue(v15, @"RecoveryOSKernelCache");
    CFArrayAppendValue(v15, @"RecoveryOSRamDisk");
    CFArrayAppendValue(v15, @"RecoveryOSiBEC");
    CFArrayAppendValue(v15, @"RecoveryOSiBSS");
    CFArrayAppendValue(v15, @"RecoveryOSStaticTrustCache");
    CFArrayAppendValue(v15, @"RecoveryOSiBootData");
    CFArrayAppendValue(v15, @"RecoveryOSDiags");
    CFArrayAppendValue(v15, @"RecoveryOSAp,SystemVolumeCanonicalMetadata");
    CFArrayAppendValue(v15, @"RecoveryOSSystemVolume");
    CFArrayAppendValue(v15, @"RecoveryOSBaseSystemVolume");
    v25 = @"RecoveryOSAp,BaseSystemTrustCache";
    goto LABEL_25;
  }

  return result;
}

uint64_t AMAuthInstallBundlePersonalizeWithRecoveryOS(void *a1, char *a2, int a3, const __CFString *a4, char *a5, const __CFString *a6)
{
  v46 = 0;
  if (a1)
  {
    v13 = sub_100067298(a1, a2, a4, a5, a6, &v46);
    if (v13)
    {
      v40 = v13;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeWithRecoveryOS", "failed to generate personalization entries", v14, v15, v16, v17, v18, v45);
      sub_10000C708();
    }

    else
    {
      v19 = sub_10000C8E0();
      v21 = sub_10000BC74(v19, v20, a4);
      if (a5)
      {
        sub_10000C80C();
        sub_10000BC74(v22, v23, v24);
      }

      v25 = CFGetAllocator(a1);
      Mutable = CFArrayCreateMutable(v25, 0, &kCFTypeArrayCallBacks);
      v26 = CFGetAllocator(a1);
      v7 = CFArrayCreateMutable(v26, 0, &kCFTypeArrayCallBacks);
      if (a1[6])
      {
        AMAuthInstallBasebandPersonalizationEnabled(a1);
      }

      if (AMAuthInstallApPersonalizationEnabled(a1))
      {
        CFArrayAppendValue(Mutable, @"OS");
        if (!AMAuthInstallApIsImg4(a1, v27, v28, v29, v30, v31, v32, v33))
        {
          CFArrayAppendValue(Mutable, @"Diags");
        }

        v34 = 1;
        v35 = @"Restore.plist";
        v36 = @"BuildManifest.plist";
      }

      else
      {
        CFArrayAppendValue(Mutable, @"RestoreRamDisk");
        CFArrayAppendValue(Mutable, @"OSRamdisk");
        CFArrayAppendValue(Mutable, @"KernelCache");
        if (!v21)
        {
          CFArrayAppendValue(Mutable, @"OS");
        }

        CFArrayAppendValue(v7, @"BuildManifest.plist");
        CFArrayAppendValue(v7, @"Restore.plist");
        v34 = 0;
        v35 = @"Firmware/all_flash";
        v36 = @"Firmware/dfu";
      }

      CFArrayAppendValue(v7, v36);
      CFArrayAppendValue(v7, v35);
      CFArrayAppendValue(v7, @"Firmware/device_map.txt");
      CFArrayAppendValue(v7, @"Firmware/device_map.plist");
      CFArrayAppendValue(v7, @"Firmware/SE");
      if (a5)
      {
        sub_10000C80C();
        if (!AMAuthInstallBundleShouldPersonalizeOSImage(v37, v38, v39))
        {
          CFArrayAppendValue(Mutable, @"RecoveryOSOS");
        }
      }

      v40 = 2;
      if (Mutable && v7)
      {
        v41 = sub_10000C8E0();
        v40 = AMAuthInstallBundlePersonalizePartialWithRecoveryOS(v41, v42, a3, a4, a5, a6, v43, Mutable, v7, v34);
      }
    }
  }

  else
  {
    sub_10000C708();
    v40 = 1;
  }

  SafeRelease(v46);
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeRelease(0);
  return v40;
}

uint64_t AMAuthInstallBundlePersonalizeRestoreLocalPolicy(const void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v8 = CFGetAllocator(a1);
  cf = 0;
  v22 = 0;
  theDict = 0;
  v20 = 0;
  v18 = 0;
  ServerRequest = AMAuthInstallPlatformCopyURLWithAppendedComponent(v8, a2, @"amai/LocalPolicy.restore.img4", 0, &v20);
  if (ServerRequest || (ServerRequest = sub_10000BD9C(a1, a2, a3, &v22), ServerRequest) || (ServerRequest = AMAuthInstallRestoreLocalPolicyCreateServerRequest(a1, v22, &theDict), ServerRequest) || (ServerRequest = AMAuthInstallApCreatePersonalizedResponse(a1, theDict, &v18), ServerRequest) || (ServerRequest = AMAuthInstallLocalPolicyStitchTicketData(a1, v18, &cf), ServerRequest))
  {
    v16 = ServerRequest;
  }

  else
  {
    v10 = AMAuthInstallSupportWriteDataToFileURL(v8, cf, v20, 1);
    if (v10)
    {
      v16 = v10;
      AMAuthInstallLog(3, "AMAuthInstallBundlePersonalizeRestoreLocalPolicy", "failed to write local policy to %@", v11, v12, v13, v14, v15, v20);
    }

    else
    {
      v16 = 0;
      if (a4)
      {
        *a4 = CFRetain(cf);
      }
    }
  }

  SafeRelease(v18);
  SafeRelease(theDict);
  SafeRelease(v20);
  SafeRelease(cf);
  SafeRelease(v22);
  SafeRelease(0);
  return v16;
}

CFTypeRef _CreateRelativePathForManifestEntry(const void *a1, uint64_t a2, const __CFURL *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v29 = 0;
  if (a1)
  {
    if (a3)
    {
      v6 = a5;
      if (a5)
      {
        if (AMAuthInstallBundleCopyReceiptCreateIfNecessary(a1, a3, &v29))
        {
          AMAuthInstallLog(3, "_CreateRelativePathForManifestEntry", "failed to create receipt dict", v9, v10, v11, v12, v13, v28);
        }

        else
        {
          v14 = CFGetAllocator(a1);
          ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v14, v29, @"%@.%@.%@.%@", v15, v16, v17, v18, v19, @"Manifest");
          if (ValueForKeyWithFormat || (v21 = CFGetAllocator(a1), (ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v21, a4, @"%@.%@.%@", v22, v23, v24, v25, v26, v6)) != 0))
          {
            v5 = CFRetain(ValueForKeyWithFormat);
            goto LABEL_8;
          }
        }

        v5 = 0;
      }
    }
  }

LABEL_8:
  SafeRelease(v29);
  return v5;
}

uint64_t AMAuthInstallBundleSetEntryEnabled(uint64_t a1, const void *a2, int a3)
{
  result = 1;
  if (a1 && a2)
  {
    Mutable = *(a1 + 528);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a1 + 528) = Mutable) != 0))
    {
      _CFDictionarySetBoolean(Mutable, a2, a3);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v10 = a3;
    if (a3)
    {
      AMAuthInstallLog(6, "AMAuthInstallBundleOverrideEntry", "overriding entry: %@", a4, a5, a6, a7, a8, a2);
      AMAuthInstallLog(8, "AMAuthInstallBundleOverrideEntry", "override path: %@", v11, v12, v13, v14, v15, v10);
      sub_10000C7DC();
      sub_10000C80C();
      CFDictionarySetValue(v16, v17, v18);
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleOverrideBuildManifest(void *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    v4 = a1[16];
    DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
    if (DictionaryFromFileURL)
    {
      v2 = DictionaryFromFileURL;
      v11 = "failed to read build identity override file";
    }

    else
    {
      if (*(a1[16] + 16))
      {
        return 0;
      }

      v2 = 14;
      v11 = "failed to create build identity override";
    }

    AMAuthInstallLog(3, "AMAuthInstallBundleOverrideBuildManifest", v11, v6, v7, v8, v9, v10, v13);
  }

  return v2;
}

uint64_t AMAuthInstallBundleOverrideRecoveryOSBuildManifest(void *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    CFGetAllocator(a1);
    v4 = a1[16];
    DictionaryFromFileURL = AMAuthInstallSupportCreateDictionaryFromFileURL();
    if (DictionaryFromFileURL)
    {
      v2 = DictionaryFromFileURL;
      v11 = "failed to read recoveryOS build identity override file";
    }

    else
    {
      if (*(a1[16] + 24))
      {
        return 0;
      }

      v2 = 14;
      v11 = "failed to create recoveryOS build identity override";
    }

    AMAuthInstallLog(3, "AMAuthInstallBundleOverrideRecoveryOSBuildManifest", v11, v6, v7, v8, v9, v10, v13);
  }

  return v2;
}

uint64_t _AMAuthInstallBundleApplyMeasurements(void *a1, CFStringRef theString1, void *a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  theDict = 0;
  v78 = theString1;
  if (!a1)
  {
    sub_10000C714();
    Code = 1;
    goto LABEL_39;
  }

  ValueForKeyWithFormat = 0;
  Code = 1;
  if (!theString1 || (v9 = a3) == 0)
  {
    v6 = 0;
    goto LABEL_39;
  }

  v6 = 0;
  if (!a5)
  {
    goto LABEL_39;
  }

  if (CFStringCompare(theString1, @"BasebandFirmware", 0) == kCFCompareEqualTo)
  {
    v34 = sub_10000C7DC();
    Value = CFDictionaryGetValue(v34, @"VinylFirmware");
    if (Value)
    {
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", v35, v36, v37, v38, v39, @"VinylFirmware");
    }

    Measurements = AMAuthInstallBasebandCreateMeasurements(a1, v9, Value, &theDict);
    if (Measurements)
    {
      Code = Measurements;
      goto LABEL_38;
    }

    v44 = a1[6];
    if (v44 && *(v44 + 4) == 104)
    {
      IsICE19BBGoldCertIDECDSA = AMAuthInstallIsICE19BBGoldCertIDECDSA(*(v44 + 8), v42, v43, v28, v29, v30, v31, v32);
      v46 = kAMAuthInstallTagBbPsiPartialDigest;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v46 = kAMAuthInstallTagBbPsi2PartialDigest;
      }

      v47 = *v46;
      if (IsICE19BBGoldCertIDECDSA)
      {
        v48 = kAMAuthInstallTagBbRestorePsi2PartialDigest;
      }

      else
      {
        v48 = kAMAuthInstallTagBbRestorePsiPartialDigest;
      }

      CFDictionaryRemoveValue(theDict, v47);
      v49 = *v48;
      CFDictionaryRemoveValue(theDict, v49);
      CFDictionaryRemoveValue(*a5, v47);
      CFDictionaryRemoveValue(*a5, v49);
    }

    a4 = 0;
    goto LABEL_25;
  }

  if (CFStringCompare(theString1, @"eUICC,Main", 0) == kCFCompareEqualTo || CFStringCompare(theString1, @"eUICC,Gold", 0) == kCFCompareEqualTo)
  {
    v20 = sub_10000C7DC();
    v21 = CFDictionaryGetValue(v20, @"VinylFirmware");
    if (v21)
    {
      v27 = v21;
      AMAuthInstallLog(8, "_AMAuthInstallBundleApplyMeasurements", "using vinyl firmware override: %@ = %@", v22, v23, v24, v25, v26, @"VinylFirmware");
      v9 = v27;
    }

    Code = AMAuthInstallVinylCreateMeasurements(a1, v9, &theDict, &v78);
    a4 = 0;
    sub_10000C714();
    if (v33)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v13 = CFGetAllocator(a1);
  v6 = @"Info";
  ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v13, a4, @"%@.%@", v14, v15, v16, v17, v18, @"Info");
  if (AMAuthInstallApImg4ValidImage(v9))
  {
    v55 = *(a1[2] + 128);
    goto LABEL_49;
  }

  v56 = CFGetAllocator(a1);
  v62 = AMAuthInstallSupportGetValueForKeyWithFormat(v56, a4, @"%@.%@", v57, v58, v59, v60, v61, @"Info");
  if (!v62 || (v6 = v62, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v6)))
  {
    v55 = 256;
    goto LABEL_49;
  }

  v64 = *(a1[2] + 112);
  if (CFStringCompare(v6, @"sha1", 0))
  {
    if (CFStringCompare(v6, @"sha2-256", 0))
    {
      if (CFStringCompare(v6, @"sha2-384", 0))
      {
        AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "digest type in the build manifest is not supported", v65, v66, v67, v68, v69, v76);
        sub_10000C714();
        Code = 7;
        goto LABEL_39;
      }

      v55 = 384;
    }

    else
    {
      v55 = 256;
    }
  }

  else
  {
    v55 = 1;
  }

  if (v64)
  {
LABEL_49:
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(a1, v9, ValueForKeyWithFormat, v55, 0, 0, &theDict);
    if (MeasurementsWithTag)
    {
      Code = MeasurementsWithTag;
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@", v28, v29, v30, v31, v32, theString1);
      goto LABEL_38;
    }

LABEL_25:
    v50 = theDict;
    if (!theDict)
    {
      AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed find measurementsDict for entry %@", v28, v29, v30, v31, v32, v78);
      sub_10000C714();
      Code = 8;
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v50 = AMAuthInstallApMeasureBinary(v9, 0x100000, v55);
  theDict = v50;
  if (!v50)
  {
    Code = CFErrorGetCode(0);
    AMAuthInstallLog(3, "_AMAuthInstallBundleApplyMeasurements", "failed to measure %@ with error: %@", v71, v72, v73, v74, v75, theString1);
    sub_10000C714();
    goto LABEL_39;
  }

LABEL_26:
  Count = CFDictionaryGetCount(v50);
  if (Count < 1)
  {
    Code = 0;
LABEL_38:
    sub_10000C714();
    goto LABEL_39;
  }

  v52 = Count;
  ValueForKeyWithFormat = calloc(8uLL, Count);
  v6 = calloc(8uLL, v52);
  CFDictionaryGetKeysAndValues(theDict, &ValueForKeyWithFormat->isa, &v6->isa);
  for (i = 0; i != v52; ++i)
  {
    if (!a4 || CFDictionaryContainsKey(a4, *(&ValueForKeyWithFormat->isa + i)) || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"MemoryMap", 0) == kCFCompareEqualTo || CFStringCompare(*(&ValueForKeyWithFormat->isa + i), @"RawDataDigest", 0) == kCFCompareEqualTo)
    {
      CFDictionarySetValue(*a5, *(&ValueForKeyWithFormat->isa + i), *(&v6->isa + i));
    }
  }

  Code = 0;
LABEL_39:
  SafeRelease(theDict);
  SafeFree(ValueForKeyWithFormat);
  SafeFree(v6);
  SafeRelease(0);
  return Code;
}

CFIndex _AMAuthInstallBundleSetObjectPropertyOverrides(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v16 = a3;
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        result = *(a1 + 424);
        if (result)
        {
          result = CFDictionaryGetValue(result, @"ObjectRequestEntries");
          if (result)
          {
            result = CFDictionaryGetValue(result, a2);
            if (result)
            {
              v7 = sub_10000C8A8();
              v8 = CFGetAllocator(v7);
              result = AMAuthInstallSupportApplyDictionaryOverrides(v8, v3, &v16, 0);
              if (result)
              {
                v15 = a2;
                v14 = result;
                AMAuthInstallLog(3, "_AMAuthInstallBundleSetObjectPropertyOverrides", "failed to set override object properties for %@", v9, v10, v11, v12, v13, v15);
                return v14;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleAllowLinks(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 432) = a2 == 0;
  return result;
}

uint64_t AMAuthInstallBundleInstallFile(_BYTE *a1, const __CFURL *a2, CFURLRef url)
{
  SoftLink = 1;
  if (a2 && a1 && url)
  {
    if (a1[432])
    {
      v18 = 0;
      v7 = AMAuthInstallSupportFileURLExists(url, &v18);
      if (v7)
      {
        SoftLink = v7;
        v16 = "AMAuthInstallSupportFileURLExists failed.";
      }

      else
      {
        if (v18 != 1)
        {
          return 0;
        }

        v13 = CFGetAllocator(a1);
        v14 = AMAuthInstallSupportCopyFile(v13, url, a2);
        if (!v14)
        {
          return 0;
        }

        SoftLink = v14;
        v16 = "AMAuthInstallSupportCopyFile failed.";
      }
    }

    else
    {
      SoftLink = AMAuthInstallPlatformCreateSoftLink(a2, url);
      if (!SoftLink)
      {
        return SoftLink;
      }

      v16 = "AMAuthInstallPlatformCreateSoftLink failed.";
    }

    AMAuthInstallLog(3, "AMAuthInstallBundleInstallFile", v16, v8, v9, v10, v11, v12, v17);
  }

  return SoftLink;
}

uint64_t AMAuthInstallBundleRequestTicketWithoutNonce(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 433) = a2;
  return result;
}

uint64_t _AMAuthInstallBundleGetValueForReservedKey(uint64_t a1, uint64_t a2, CFBooleanRef *a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a3 && a2 && *(a1 + 16))
  {
    v6 = sub_10000C83C(1, @"ApRawProductionMode");
    if (v6)
    {
      v7 = sub_10000C83C(v6, @"ApRawSecurityMode");
      if (v7)
      {
        v8 = sub_10000C83C(v7, @"ApInRomDFU");
        if (v8)
        {
          v9 = sub_10000C83C(v8, @"ApCurrentSecurityMode");
          if (v9)
          {
            v10 = sub_10000C83C(v9, @"ApCurrentProductionMode");
            if (v10)
            {
              v11 = sub_10000C83C(v10, @"ApRequiresImage4");
              if (v11)
              {
                if (sub_10000C83C(v11, @"ApDemotionPolicyOverride"))
                {
                  return 8;
                }

                v21 = *(*(a1 + 16) + 104);
                goto LABEL_22;
              }

              IsImg4 = AMAuthInstallApIsImg4(a1, v12, v13, v14, v15, v16, v17, v18);
              v20 = &kCFBooleanTrue;
              if (!IsImg4)
              {
                v20 = &kCFBooleanFalse;
              }

LABEL_21:
              v21 = *v20;
LABEL_22:
              result = 0;
              *a3 = v21;
              return result;
            }

            v19 = *(*(a1 + 16) + 97);
          }

          else
          {
            v19 = *(*(a1 + 16) + 98);
          }
        }

        else
        {
          v19 = *(*(a1 + 16) + 96);
        }
      }

      else
      {
        v19 = *(*(a1 + 16) + 88);
      }
    }

    else
    {
      v19 = *(*(a1 + 16) + 20);
    }

    if (v19)
    {
      v20 = &kCFBooleanTrue;
    }

    else
    {
      v20 = &kCFBooleanFalse;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForCondition(uint64_t a1, uint64_t a2, const __CFString *a3, CFBooleanRef *a4)
{
  cf = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    if (_AMAuthInstallBundleGetValueForReservedKey(a1, a2, &cf))
    {
      DefaultResult = _AMAuthInstallBundleGetDefaultResult(a3);
LABEL_16:
      result = 0;
      *a4 = DefaultResult;
      return result;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFBooleanGetTypeID())
    {
      v10 = &kCFBooleanTrue;
      if (cf != a3)
      {
        v10 = &kCFBooleanFalse;
      }
    }

    else
    {
      v11 = CFGetTypeID(cf);
      if (v11 != CFStringGetTypeID())
      {
        DefaultResult = 0;
        goto LABEL_16;
      }

      if (CFStringCompare(cf, a3, 0))
      {
        v10 = &kCFBooleanFalse;
      }

      else
      {
        v10 = &kCFBooleanTrue;
      }
    }

    DefaultResult = *v10;
    goto LABEL_16;
  }

  return result;
}

uint64_t _AMAuthInstallBundleGetValueForAction(uint64_t a1, uint64_t a2, const __CFBoolean *cf, CFBooleanRef *a4)
{
  v9 = 0;
  result = 1;
  if (a1 && a2 && a4)
  {
    v7 = cf;
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID() && !_AMAuthInstallBundleGetValueForReservedKey(a1, v7, &v9))
    {
      v7 = v9;
    }

    result = 0;
    *a4 = v7;
  }

  return result;
}

uint64_t _AMAuthInstallBundleCheckCondition(uint64_t a1, CFDictionaryRef theDict, char *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v7 = malloc(8 * Count);
      if (v7)
      {
        CFDictionaryGetKeysAndValues(theDict, v3, v7);
        if (Count < 1)
        {
          v11 = 1;
LABEL_12:
          v4 = 0;
          if (Count)
          {
            v14 = v11;
          }

          else
          {
            v14 = 1;
          }

          *a3 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
          while (1)
          {
            v12 = v3[v10];
            v13 = v7[v10];
            BOOLean = 0;
            if (_AMAuthInstallBundleGetValueForCondition(a1, v12, v13, &BOOLean))
            {
              break;
            }

            v11 &= CFBooleanGetValue(BOOLean);
            if (Count == ++v10)
            {
              goto LABEL_12;
            }
          }

          v4 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 2;
  }

LABEL_16:
  SafeFree(v3);
  SafeFree(v7);
  return v4;
}

uint64_t _AMAuthInstallBundleApplyActions(uint64_t a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  v3 = 0;
  v4 = 1;
  if (!a1 || !theDict)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  if (a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v3 = malloc(8 * Count);
    if (v3)
    {
      v6 = malloc(8 * Count);
      if (v6)
      {
        v9 = sub_10000C740();
        CFDictionaryGetKeysAndValues(v9, v10, v6);
        if (Count < 1)
        {
LABEL_10:
          v4 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = v3[v11];
            v13 = v6[v11];
            value = 0;
            if (_AMAuthInstallBundleGetValueForAction(a1, v12, v13, &value))
            {
              break;
            }

            CFDictionarySetValue(a3, v12, value);
            if (Count == ++v11)
            {
              goto LABEL_10;
            }
          }

          v4 = 1;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v4 = 2;
  }

LABEL_11:
  SafeFree(v3);
  SafeFree(v6);
  return v4;
}

uint64_t AMAuthInstallBundleProcessRulesWithEntryDict(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Info");
    if (Value)
    {
      result = CFDictionaryGetValue(Value, @"RestoreRequestRules");
      if (result)
      {

        return AMAuthInstallBundleProcessRules(a1, result, theDict);
      }
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t AMAuthInstallBundleProcessRules(uint64_t a1, const __CFArray *a2, __CFDictionary *a3)
{
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v7 = sub_10000C8A8();
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v9 = Count;
      v10 = 0;
      v11 = "failed to check conditions";
      while (1)
      {
        v25 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
        if (!ValueAtIndex)
        {
          return 7;
        }

        v13 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"Conditions");
        if (Value)
        {
          v16 = _AMAuthInstallBundleCheckCondition(v3, Value, &v25);
          if (v16)
          {
            v4 = v16;
            goto LABEL_19;
          }
        }

        if (v25)
        {
          v15 = CFDictionaryGetValue(v13, @"Actions");
          if (v15)
          {
            v22 = _AMAuthInstallBundleApplyActions(v3, v15, a3);
            if (v22)
            {
              break;
            }
          }
        }

        if (v9 == ++v10)
        {
          return 0;
        }
      }

      v4 = v22;
      v11 = "failed to apply actions";
LABEL_19:
      AMAuthInstallLog(3, "AMAuthInstallBundleProcessRules", v11, v17, v18, v19, v20, v21, v24);
    }
  }

  return v4;
}

uint64_t AMAuthInstallBundleFDRSupported(uint64_t a1, char *a2, const __CFString *a3, char *a4)
{
  v22 = 0;
  if (a1)
  {
    v5 = 1;
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v7 = *(a1 + 128);
          if (v7)
          {
            v8 = *(v7 + 32);
            if (!v8)
            {
              v20 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, a2, a3, &v22);
              if (v20)
              {
                v5 = v20;
                goto LABEL_15;
              }

              v8 = *(*(a1 + 128) + 32);
            }

            Value = CFDictionaryGetValue(v8, @"Info");
            if (Value && (v10 = CFDictionaryGetValue(Value, @"FDRSupport")) != 0)
            {
              v11 = v10;
              v12 = CFGetTypeID(v10);
              if (v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11))
              {
                AMAuthInstallLog(6, "AMAuthInstallBundleFDRSupported", "FDR is supported for this device", v13, v14, v15, v16, v17, v21);
                v18 = 1;
              }

              else
              {
                v18 = 0;
              }

              v5 = 0;
              *a4 = v18;
            }

            else
            {
              v5 = 8;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_15:
  SafeRelease(v22);
  return v5;
}

uint64_t AMAuthInstallCryptoCreateDigestForData(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&v12, 0, sizeof(v12));
  Mutable = CFDataCreateMutable(a1, 20);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v12);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v12, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    CC_SHA1_Final(MutableBytePtr, &v12);
    v10 = 0;
    *a3 = CFRetain(v6);
  }

  else
  {
    v10 = 2;
  }

  SafeRelease(v6);
  return v10;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA256(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 32);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 32);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA256(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallCryptoCreateDigestForData_SHA384(const __CFAllocator *a1, const __CFData *a2, CFTypeRef *a3)
{
  v3 = 0;
  v4 = 1;
  if (a2 && a3)
  {
    Mutable = CFDataCreateMutable(a1, 48);
    v3 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, 48);
      BytePtr = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      MutableBytePtr = CFDataGetMutableBytePtr(v3);
      CC_SHA384(BytePtr, Length, MutableBytePtr);
      v4 = 0;
      *a3 = CFRetain(v3);
    }

    else
    {
      v4 = 2;
    }
  }

  SafeRelease(v3);
  return v4;
}

uint64_t _AMAuthInstallFusingProgramCreateRequest(const __CFAllocator *a1, const __CFURL *a2, CFDataRef XMLData, const __CFDictionary *cf, CFTypeRef *a5)
{
  if (cf)
  {
    v9 = cf;
    CFRetain(cf);
  }

  else
  {
    v10 = sub_10000CA10();
    v9 = CFDictionaryCreate(v10, v11, 0, v12, v13, v14);
    if (!v9)
    {
      v20 = 0;
LABEL_13:
      XMLData = 0;
      goto LABEL_14;
    }
  }

  if (!XMLData)
  {
    v20 = 0;
    Request = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_9;
  }

  v15 = sub_10000CA10();
  Mutable = CFDictionaryCreateMutable(v15, v16, v17, v18);
  v20 = Mutable;
  if (!Mutable)
  {
    goto LABEL_13;
  }

  CFDictionarySetValue(Mutable, @"Action", XMLData);
  CFDictionarySetValue(v20, @"Parameters", v9);
  XMLData = CFPropertyListCreateXMLData(a1, v20);
  if (!XMLData)
  {
LABEL_14:
    Request = 0;
    v25 = 0;
    v26 = 2;
    goto LABEL_9;
  }

  Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, kCFHTTPVersion1_1);
  if (Request)
  {
    Length = CFDataGetLength(XMLData);
    v22 = sub_10000CA10();
    v25 = CFStringCreateWithFormat(v22, v23, v24, Length);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
    CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v25);
    CFHTTPMessageSetBody(Request, XMLData);
    v26 = 0;
    *a5 = CFRetain(Request);
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

LABEL_9:
  SafeRelease(v20);
  SafeRelease(XMLData);
  SafeRelease(Request);
  SafeRelease(v9);
  SafeRelease(v25);
  SafeRelease(0);
  return v26;
}

uint64_t _AMAuthInstallFusingProgramCopyResponseParameters(const __CFAllocator *a1, const __CFData *a2, void *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  errorString = 0;
  v10 = CFPropertyListCreateFromXMLData(a1, a2, 0, &errorString);
  v16 = v10;
  if (errorString)
  {
    v17 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "CFPropertyListCreateFromXMLData() error: %@", v11, v12, v13, v14, v15, errorString);
    cf = 0;
    URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot();
    AMAuthInstallSupportCopyURLWithAppendedComponent(a1, URLForTempDirectoryRoot, @"badresponse.bin", 0, &cf);
    AMAuthInstallSupportWriteDataToFileURL(a1, a2, cf, 1);
    SafeRelease(cf);
    CFRelease(errorString);
    errorString = 0;
  }

  else if (v10)
  {
    Value = CFDictionaryGetValue(v10, @"Status");
    if (Value)
    {
      v20 = Value;
      v21 = CFDictionaryGetValue(v16, @"Message");
      v22 = CFDictionaryGetValue(v16, @"Data");
      if (CFNumberGetValue(v20, kCFNumberIntType, a3))
      {
        *a4 = SafeRetain(v21);
        v17 = 0;
        *a5 = SafeRetain(v22);
      }

      else
      {
        v17 = 3;
      }
    }

    else
    {
      v17 = 17;
    }
  }

  else
  {
    Length = CFDataGetLength(a2);
    v17 = 3;
    AMAuthInstallLog(3, "_AMAuthInstallFusingProgramCopyResponseParameters", "can't parse response (%u bytes of apparent garbage)", v25, v26, v27, v28, v29, Length);
  }

  SafeRelease(v16);
  SafeRelease(errorString);
  return v17;
}

uint64_t AMAuthInstallFusingProgramRequestInternal(const __CFAllocator *a1, const __CFURL *a2, const void *a3, CFTypeRef *a4, const __CFDictionary *a5)
{
  v5 = 0;
  v66 = 0;
  valuePtr = 0;
  v64 = 0;
  v65 = 0;
  v6 = 1;
  errorString = 0;
  if (!a2 || !a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v10 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"ProfileSpecifier", a3);
      v16 = _AMAuthInstallFusingProgramCreateRequest(a1, a2, @"GetFusingProgram", v10, &v66);
      if (v16)
      {
        v6 = v16;
        v5 = 0;
        v11 = 0;
        v9 = v66;
        goto LABEL_32;
      }

      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "requesting fusing program from %@", v17, v18, v19, v20, v21, a2);
      Value = CFDictionaryGetValue(a3, @"ChipID");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "Chiup ID: %u", v23, v24, v25, v26, v27, valuePtr);
      v28 = sub_10000CA10();
      v11 = CFDataCreateMutable(v28, v29);
      v9 = v66;
      if (v11)
      {
        v35 = AMAuthInstallHttpMessageSendSync(v66, v11, a5, v30, v31, v32, v33, v34);
        if (valuePtr == 938209 || valuePtr == 1327329 || valuePtr == 1515745 || valuePtr == 1700065 || valuePtr == 2044129 || valuePtr == 2814177 || valuePtr == 2089185)
        {
          v42 = CFPropertyListCreateFromXMLData(a1, v11, 0, &errorString);
          v64 = v42;
          if (errorString)
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "Failed to get fusing response data from CFPropertyListCreateFromXMLData() error: %@", v57, v58, v59, v60, v61, errorString);
            v5 = 0;
            goto LABEL_44;
          }

          v43 = v42;
          v5 = 0;
        }

        else
        {
          v56 = _AMAuthInstallFusingProgramCopyResponseParameters(a1, v11, &valuePtr + 4, &v65, &v64);
          if (v56)
          {
            v6 = v56;
            v5 = v65;
            goto LABEL_32;
          }

          if (HIDWORD(valuePtr))
          {
            v5 = v65;
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server error: %@ (%d)", v57, v58, v59, v60, v61, v65);
            v6 = 99;
            goto LABEL_32;
          }

          v43 = v64;
          v5 = v65;
        }

        AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "httpStatus=%u, status=%d, message=%@", v57, v58, v59, v60, v61, v35);
        if (v43)
        {
          v49 = CFGetTypeID(v43);
          if (v49 == CFDictionaryGetTypeID())
          {
            AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequestInternal", "data=%@", v50, v51, v52, v53, v54, v43);
            v6 = 0;
            *a4 = CFRetain(v43);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "fusing program type mismatch", v50, v51, v52, v53, v54, v62);
            v6 = 17;
          }

          goto LABEL_32;
        }

        AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequestInternal", "server failed to provide a fusing program", v44, v45, v46, v47, v48, v62);
LABEL_44:
        v6 = 14;
        goto LABEL_32;
      }

      v5 = 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
      v11 = 0;
    }

    v6 = 2;
  }

LABEL_32:
  SafeRelease(v10);
  SafeRelease(v9);
  SafeRelease(v11);
  SafeRelease(v5);
  SafeRelease(v64);
  return v6;
}

CFTypeRef AMAuthInstallFusingCreateProfileName(__CFString *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  v35.location = 0;
  v35.length = 0;
  *values = *off_1000AA338;
  if (!cf)
  {
    v24 = 0;
LABEL_58:
    v27 = 0;
    goto LABEL_59;
  }

  if (!cf[5].info)
  {
    v34 = "no fusing profile specified";
LABEL_56:
    AMAuthInstallLog(3, "AMAuthInstallFusingCreateProfileName", v34, a4, a5, a6, a7, a8, v35.location);
    v24 = 0;
LABEL_57:
    v8 = 0;
    goto LABEL_58;
  }

  data = cf->data;
  if (!data)
  {
    v34 = "ap parameters are not set";
    goto LABEL_56;
  }

  v10 = *(cf[1].data + 1);
  if (v10 != 241889 && v10 != 520417 && v10 != 938209 && v10 != 1327329 && v10 != 1515745 && v10 != 1700065 && v10 != 2044129 && v10 != 2089185 && v10 != 2814177 && v10 != 8343777 && v10 != 9781473 && v10 != 9572577)
  {
    goto LABEL_48;
  }

  if (!*(data + 15))
  {
    AMAuthInstallLog(4, "AMAuthInstallFusingCreateProfileName", "hardware model is not set, fusing profile name will not be updated.", a4, a5, a6, a7, a8, v35.location);
LABEL_48:
    v24 = 0;
    v27 = 0;
    goto LABEL_49;
  }

  v22 = CFGetAllocator(cf);
  MutableCopy = CFStringCreateMutableCopy(v22, 0, *(v8->data + 15));
  v24 = MutableCopy;
  if (!MutableCopy)
  {
    goto LABEL_57;
  }

  CFStringLowercase(MutableCopy, 0);
  v25 = CFGetAllocator(v8);
  v26 = CFArrayCreate(v25, values, 2, &kCFTypeArrayCallBacks);
  v27 = v26;
  if (!v26)
  {
    v8 = 0;
    goto LABEL_59;
  }

  if (CFArrayGetCount(v26) >= 1)
  {
    v28 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v27, v28);
      v37.length = CFStringGetLength(v24);
      v37.location = 0;
      if (CFStringFindWithOptions(v24, ValueAtIndex, v37, 4uLL, &v35))
      {
        break;
      }

      if (++v28 >= CFArrayGetCount(v27))
      {
        goto LABEL_49;
      }
    }

    CFStringDelete(v24, v35);
    v32 = CFGetAllocator(v8);
    v33 = CFStringCreateMutableCopy(v32, 0, v8[5].info);
    v8 = v33;
    if (v33)
    {
      CFStringAppend(v33, @"-");
      CFStringAppend(v8, v24);
      v30 = CFRetain(v8);
      goto LABEL_50;
    }

LABEL_59:
    v30 = 0;
    goto LABEL_50;
  }

LABEL_49:
  v30 = CFRetain(v8[5].info);
  v8 = 0;
LABEL_50:
  SafeRelease(v24);
  SafeRelease(v8);
  SafeRelease(v27);
  return v30;
}

uint64_t AMAuthInstallFusingProgramRequest(void *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  valuePtr = 0;
  v48 = 0;
  if (!cf)
  {
    goto LABEL_40;
  }

  if (!*(cf + 20))
  {
    v46 = "no fusing server specified";
LABEL_39:
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", v46, a4, a5, a6, a7, a8, v47);
LABEL_40:
    sub_10000C9FC();
    ProfileName = 0;
    v21 = 1;
    goto LABEL_36;
  }

  if (!*(cf + 21))
  {
    v46 = "no fusing profile specified";
    goto LABEL_39;
  }

  v13 = *(cf + 6);
  v14 = *v13;
  LODWORD(valuePtr) = v13[1];
  HIDWORD(valuePtr) = v14;
  v48 = v13[24];
  ProfileName = AMAuthInstallFusingCreateProfileName(cf, a2, a3, a4, a5, a6, a7, a8);
  if (!ProfileName)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "failed to create fusing profile name", v15, v16, v17, v18, v19, v47);
    sub_10000C9FC();
LABEL_48:
    v21 = 99;
    goto LABEL_36;
  }

  if (*(cf + 22))
  {
    AMAuthInstallLog(6, "AMAuthInstallFusingProgramRequest", "fusing program already exists", v15, v16, v17, v18, v19, v47);
    v21 = 0;
    sub_10000C9FC();
    ProfileName = 0;
    goto LABEL_36;
  }

  v22 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v22, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v9 = 0;
    goto LABEL_43;
  }

  v23 = CFGetAllocator(cf);
  v9 = CFNumberCreate(v23, kCFNumberSInt32Type, &valuePtr + 4);
  if (!v9)
  {
LABEL_43:
    v10 = 0;
    goto LABEL_44;
  }

  v24 = CFGetAllocator(cf);
  v10 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
LABEL_44:
    v11 = 0;
    goto LABEL_45;
  }

  v25 = CFGetAllocator(cf);
  v11 = CFNumberCreate(v25, kCFNumberSInt32Type, &v48);
  if (!v11)
  {
LABEL_45:
    ProfileName = 0;
    v21 = 2;
    goto LABEL_36;
  }

  CFDictionarySetValue(Mutable, @"VendorID", v9);
  CFDictionarySetValue(Mutable, @"ChipID", v10);
  CFDictionarySetValue(Mutable, @"ProfileName", ProfileName);
  CFDictionarySetValue(Mutable, @"FusingStatus", v11);
  if (valuePtr != 938209 && valuePtr != 1327329 && valuePtr != 1515745 && valuePtr != 1700065 && valuePtr != 2044129 && valuePtr != 2814177 && valuePtr != 2089185)
  {
    ProfileName = 0;
    goto LABEL_34;
  }

  if (!*(cf + 24))
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to get fusing server root CA!", v26, v27, v28, v29, v30, v47);
    ProfileName = 0;
    goto LABEL_48;
  }

  v37 = CFGetAllocator(cf);
  v38 = CFDictionaryCreateMutable(v37, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  ProfileName = v38;
  if (!v38)
  {
    AMAuthInstallLog(3, "AMAuthInstallFusingProgramRequest", "Failed to create option Dictionary for SSL connection!", v39, v40, v41, v42, v43, v47);
    goto LABEL_48;
  }

  CFDictionarySetValue(v38, kAMSupportHttpOptionTrustedServerCAs, *(cf + 24));
LABEL_34:
  v44 = CFGetAllocator(cf);
  v21 = AMAuthInstallFusingProgramRequestInternal(v44, *(cf + 20), Mutable, cf + 22, ProfileName);
  if (!v21)
  {
    AMAuthInstallDebugWriteObject(cf, *(cf + 22), @"fusingprogram", 2);
  }

LABEL_36:
  SafeRelease(Mutable);
  SafeRelease(v9);
  SafeRelease(v10);
  SafeRelease(v11);
  SafeRelease(ProfileName);
  return v21;
}

uint64_t AMAuthInstallHttpCreatePostBody(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = 1;
  if (!a2)
  {
    sub_10000CAE8();
    goto LABEL_17;
  }

  sub_10000CAE8();
  if (v12)
  {
    v13 = v11;
    v14 = v10;
    Mutable = CFStringCreateMutable(v10, 0);
    if (Mutable)
    {
      Count = CFDictionaryGetCount(v13);
      v4 = malloc(8 * Count);
      v16 = malloc(8 * Count);
      v5 = v16;
      if (v4)
      {
        if (v16)
        {
          CFDictionaryGetKeysAndValues(v13, v4, v16);
          if (Count >= 1)
          {
            v27 = 0;
            while (1)
            {
              v28 = v4[v27];
              if (!v28)
              {
                v47 = "invalid requestDictKeysBuffer array";
                goto LABEL_20;
              }

              if (!v5[v27])
              {
                break;
              }

              CFStringAppend(Mutable, v28);
              CFStringAppend(Mutable, @"=");
              CFStringAppend(Mutable, v5[v27]);
              if (v27 < Count - 1)
              {
                CFStringAppend(Mutable, @"&");
              }

              if (Count == ++v27)
              {
                goto LABEL_13;
              }
            }

            v47 = "invalid requestDictValuesBuffer array";
LABEL_20:
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", v47, v22, v23, v24, v25, v26, v49);
            v7 = 0;
            v6 = 0;
            v8 = 14;
            goto LABEL_17;
          }

LABEL_13:
          AMAuthInstallLog(8, "AMAuthInstallHttpCreatePostBody", "postString=%@", v22, v23, v24, v25, v26, Mutable);
          Length = CFStringGetLength(Mutable);
          v6 = malloc(Length + 1);
          if (v6)
          {
            if (!CFStringGetCString(Mutable, v6, Length + 1, 0x8000100u))
            {
              v8 = 3;
              AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "conversion of postString to c-string failed", v35, v36, v37, v38, v39, v50);
              v7 = 0;
              goto LABEL_17;
            }

            v40 = CFDataCreate(v14, v6, Length);
            v7 = v40;
            if (v40)
            {
              v8 = 0;
              *a3 = CFRetain(v40);
              goto LABEL_17;
            }

            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "postData allocation failed", v41, v42, v43, v44, v45, v50);
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", "tmpStringBuffer allocation failure", v30, v31, v32, v33, v34, v50);
            v7 = 0;
          }

LABEL_30:
          v8 = 2;
          goto LABEL_17;
        }

        v48 = "requestDictValuesBuffer allocation failed";
      }

      else
      {
        v48 = "requestDictKeysBuffer allocation failed";
      }

      AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostBody", v48, v17, v18, v19, v20, v21, v49);
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    v6 = 0;
    goto LABEL_30;
  }

LABEL_17:
  SafeRelease(Mutable);
  SafeRelease(v7);
  SafeFree(v4);
  SafeFree(v5);
  SafeFree(v6);
  return v8;
}

uint64_t AMAuthInstallHttpSetUriEscapedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFStringRef theString, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  v8 = 1;
  if (a2 && a3 && theString)
  {
    v11 = AMAuthInstallHttpUriEscapeString(a1, theString, &value, theString, a5, a6, a7, a8);
    if (v11)
    {
      v8 = v11;
      v18 = "AMAuthInstallHttpUriEscapeString failed";
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(a2, a3, value);
        v8 = 0;
        goto LABEL_7;
      }

      v18 = "escapedValue is NULL";
      v8 = 3;
    }

    AMAuthInstallLog(3, "AMAuthInstallHttpSetUriEscapedValue", v18, v12, v13, v14, v15, v16, v19);
  }

LABEL_7:
  SafeRelease(value);
  return v8;
}

uint64_t AMAuthInstallHttpCreatePostRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, CFTypeRef *a4)
{
  Request = 0;
  theData = 0;
  v5 = 1;
  if (a2 && a3)
  {
    v7 = 0;
    if (a4)
    {
      PostBody = AMAuthInstallHttpCreatePostBody(a1, a3, &theData);
      if (PostBody)
      {
        v5 = PostBody;
        AMAuthInstallLog(3, "AMAuthInstallHttpCreatePostRequest", "AMAuthInstallHttpCreatePostBody failed", v11, v12, v13, v14, v15, v18);
        Request = 0;
        v7 = 0;
      }

      else if (theData)
      {
        Request = CFHTTPMessageCreateRequest(a1, @"POST", a2, kCFHTTPVersion1_1);
        if (Request)
        {
          Length = CFDataGetLength(theData);
          v7 = CFStringCreateWithFormat(a1, 0, @"%ld", Length);
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Type", @"text/xml; charset=utf-8");
          CFHTTPMessageSetHeaderFieldValue(Request, @"Content-Length", v7);
          CFHTTPMessageSetBody(Request, theData);
          v5 = 0;
          *a4 = CFRetain(Request);
        }

        else
        {
          v7 = 0;
          v5 = 0;
        }
      }

      else
      {
        Request = 0;
        v7 = 0;
        v5 = 2;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  SafeRelease(theData);
  SafeRelease(Request);
  SafeRelease(v7);
  SafeRelease(0);
  return v5;
}

uint64_t AMAuthInstallHttpSetBase64EncodedValue(const __CFAllocator *a1, __CFDictionary *a2, const void *a3, CFDataRef theData, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theString = 0;
  v8 = 1;
  if (a2 && a3 && theData)
  {
    v12 = AMAuthInstallSupportBase64Encode(a1, theData, &theString, theData, a5, a6, a7, a8);
    if (v12)
    {
      v8 = v12;
      v19 = "Base64Encode failed";
    }

    else
    {
      v13 = theString;
      if (theString)
      {
        v8 = AMAuthInstallHttpSetUriEscapedValue(a1, a2, a3, theString, v14, v15, v16, v17);
        goto LABEL_7;
      }

      v19 = "encodedValue is NULL";
      v8 = 3;
    }

    AMAuthInstallLog(3, "AMAuthInstallHttpSetBase64EncodedValue", v19, v13, v14, v15, v16, v17, v20);
  }

LABEL_7:
  SafeRelease(theString);
  return v8;
}

uint64_t AMAuthInstallRestoreLocalPolicyCreateServerRequest(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  theDict = 0;
  if (sub_10006B870(a1, a2, &theDict) || (v5 = *(*(a1 + 16) + 24)) == 0)
  {
    v6 = 1;
  }

  else
  {
    CFDictionarySetValue(theDict, @"ApNonce", v5);
    CFDictionarySetValue(theDict, @"Ap,LocalBoot", kCFBooleanFalse);
    v6 = 0;
    if (a3)
    {
      *a3 = CFRetain(theDict);
    }
  }

  SafeRelease(theDict);
  return v6;
}

uint64_t sub_10006B870(uint64_t **a1, const void *a2, CFTypeRef *a3)
{
  if (a1 && (v6 = CFGetAllocator(a1), a1[2]))
  {
    v14 = v6;
    IsImg4 = AMAuthInstallApIsImg4(a1, v7, v8, v9, v10, v11, v12, v13);
    v16 = 0;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    if (a2 && IsImg4)
    {
      if (CFDataGetLength(a2) == 48)
      {
        v16 = sub_10000D4CC();
        v18 = CFDataCreate(v14, byte_1000848E8, 48);
        CFDictionarySetValue(v16, @"Digest", v18);
        CFDictionarySetValue(v16, @"Trusted", kCFBooleanTrue);
        v19 = sub_10000D4CC();
        CFDictionarySetValue(v19, @"@ApImg4Ticket", kCFBooleanTrue);
        _CFDictionarySetInteger32(v19, @"ApChipID", *(a1[2] + 2));
        _CFDictionarySetInteger32(v19, @"ApBoardID", *(a1[2] + 3));
        _CFDictionarySetInteger64(v19, @"ApECID", *a1[2]);
        _CFDictionarySetBoolean(v19, @"ApProductionMode", *(a1[2] + 20));
        _CFDictionarySetInteger32(v19, @"ApSecurityDomain", *(a1[2] + 4));
        _CFDictionarySetBoolean(v19, @"ApSecurityMode", *(a1[2] + 88));
        CFDictionarySetValue(v19, @"Ap,LocalPolicy", v16);
        CFDictionarySetValue(v19, @"Ap,NextStageIM4MHash", a2);
        v17 = 0;
        if (a3)
        {
          *a3 = CFRetain(v19);
        }
      }

      else
      {
        v16 = 0;
        v18 = 0;
        v19 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 1;
  }

  SafeRelease(v19);
  SafeRelease(v18);
  SafeRelease(v16);
  return v17;
}

uint64_t AMAuthInstallLocalPolicyStitchTicketData(const void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = CFGetAllocator(a1);
  if (!a2)
  {
LABEL_9:
    v15 = 0;
    v16 = 1;
    goto LABEL_10;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(a2, @"ApImg4Ticket");
  if (!Value)
  {
LABEL_8:
    a2 = 0;
    goto LABEL_9;
  }

  v8 = Value;
  a2 = CFDataCreate(v6, byte_1000848D2, 22);
  if (a2)
  {
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v6, a2, v8);
    v15 = StitchTicket;
    if (StitchTicket)
    {
      v16 = 0;
      if (a3)
      {
        *a3 = CFRetain(StitchTicket);
      }
    }

    else
    {
      v16 = 3;
      AMAuthInstallLog(3, "AMAuthInstallLocalPolicyStitchTicketData", "failed to stitch local policy object", v10, v11, v12, v13, v14, v18);
    }
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

LABEL_10:
  SafeRelease(v15);
  SafeRelease(a2);
  return v16;
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigest(CFNumberRef a1, __CFDictionary *a2, const __CFData *a3, CFDataRef theData, const void *a5, unsigned int a6, int a7, const void *a8, const void *a9)
{
  v13 = a3;
  memset(v54, 0, sizeof(v54));
  v16 = a3 + a6;
  v17 = *(v16 + 2);
  valuePtr = *(v16 + 1);
  Length = CFDataGetLength(theData);
  sub_10000FBE0(Length, v19, "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v20, v21, v22, v23, v24, Length);
  sub_10000FBE0(v25, v26, "version=0x%x, personalizationOffset=0x%x", v27, v28, v29, v30, v31, valuePtr);
  *bytes = a7 - v17;
  v53 = v17 + 80;
  *&v54[20] = v17 + a6;
  sub_10000FBE0(v32, v33, "reservationLength=0x%x, codeBytesHashed=0x%x (%s), downloadBytesHashed=0x%x (%s)", v34, v35, v36, v37, v38, a7 - v17);
  v39 = CFDataGetLength(theData);
  sub_10000FBE0(v39, v40, "personalization area=0x%x", v41, v42, v43, v44, v45, v39 - (a6 + a7));
  if ((((v17 + 80) | (v17 + a6)) & 0x3F) == 0)
  {
    sub_100009230(a5, v17 + 80, v54);
    sub_100009230(v13, *&v54[20], &v54[24]);
    v47 = CFGetAllocator(a1);
    v13 = CFDataCreate(v47, bytes, 52);
    if (v13)
    {
      v48 = CFGetAllocator(a1);
      a1 = CFNumberCreate(v48, kCFNumberSInt32Type, &valuePtr);
      if (a1)
      {
        CFDictionarySetValue(a2, a8, a1);
        CFDictionarySetValue(a2, a9, v13);
        v46 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      a1 = 0;
    }

    v46 = 2;
    goto LABEL_6;
  }

  sub_10000FC28();
  v46 = 10;
LABEL_6:
  SafeRelease(a1);
  SafeRelease(v13);
  return v46;
}

uint64_t AMAuthInstallMonetMeasureEBootLoader(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  *bytes = 0;
  v45 = 0uLL;
  v46 = 0;
  valuePtr = 0;
  if (CFDataGetLength(theData) >= 0x28)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v11 = BytePtr;
    *(a1[6] + 4);
    if (!BytePtr)
    {
      v37 = 0;
      goto LABEL_6;
    }

    if (*(BytePtr + 4) <= CFDataGetLength(theData))
    {
      theDict = a3;
      Length = CFDataGetLength(theData);
      v13 = *(v11 + 5);
      v14 = (Length - *(v11 + 4));
      valuePtr = *(v11 + v14 + 4);
      v15 = *(v11 + v14 + 8);
      v16 = CFDataGetLength(theData);
      sub_10000FBE0(v16, v17, "%@: fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v18, v19, v20, v21, v22, a5);
      sub_10000FBE0(v23, v24, "%@: version=0x%x, personalizationOffset=0x%x", v25, v26, v27, v28, v29, a4);
      *bytes = v13 - v15;
      *&bytes[4] = v15 + v14;
      sub_10000FBE0(v30, v31, "%@: reservationLength=0x%x, codeBytesHashed=0x%x (%s)", v32, v33, v34, v35, v36, a5);
      if (((v15 + v14) & 0x3F) == 0)
      {
        sub_100009230(v11, v15 + v14, &v45);
        v39 = CFGetAllocator(a1);
        v11 = CFDataCreate(v39, bytes, 28);
        if (v11)
        {
          v40 = CFGetAllocator(a1);
          v37 = CFNumberCreate(v40, kCFNumberSInt32Type, &valuePtr);
          if (v37)
          {
            CFDictionarySetValue(theDict, a4, v37);
            CFDictionarySetValue(theDict, a5, v11);
            v38 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v37 = 0;
        }

        v38 = 2;
        goto LABEL_10;
      }
    }
  }

  v37 = 0;
  v11 = 0;
LABEL_6:
  v38 = 10;
LABEL_10:
  SafeRelease(v37);
  SafeRelease(v11);
  return v38;
}

uint64_t AMAuthInstallMonetMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4)
{
  value = 0;
  if (!a1)
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_43;
  }

  v6 = 0;
  v7 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          sub_10000FBF8(v9);
          if (v13)
          {
            goto LABEL_39;
          }

          sub_10000FBB0();
          v13 = v13 || v12 == 938209;
          if (v13 || v12 == 1327329 || v12 == 1515745 || v12 == 1700065 || v12 == 2044129 || v12 == 2089185 || v12 == 2814177)
          {
            v20 = CFGetAllocator(v11);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA384(v20, a2, &value);
            goto LABEL_40;
          }

          sub_100008870();
          v24 = v22 || v23 == 9781473;
          if (v24 || v23 == 9572577)
          {
LABEL_39:
            v26 = CFGetAllocator(v10);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData_SHA256(v26, a2, &value);
          }

          else
          {
            v28 = CFGetAllocator(v10);
            DigestForData_SHA384 = AMAuthInstallCryptoCreateDigestForData(v28, a2, &value);
          }

LABEL_40:
          v6 = value;
          if (DigestForData_SHA384)
          {
            v7 = DigestForData_SHA384;
          }

          else if (value)
          {
            CFDictionarySetValue(a3, a4, value);
            v7 = 0;
            v6 = value;
          }

          else
          {
            v7 = 2;
          }
        }
      }
    }
  }

LABEL_43:
  SafeRelease(v6);
  return v7;
}

uint64_t AMAuthInstallMonetMeasureElf(uint64_t *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const void *a5)
{
  if (CFDataGetLength(theData) > 0x33 && (BytePtr = CFDataGetBytePtr(theData), *BytePtr == 1179403647))
  {
    v16 = *(BytePtr + 22);
    if (*(BytePtr + 22))
    {
      v17 = 0;
      v18 = 0;
      v19 = &BytePtr[*(BytePtr + 7)];
      do
      {
        if (*(v19 + 3) > v18 && (*(v19 + 6) & 0x7000000) != 0x5000000)
        {
          v18 = *(v19 + 3);
          v17 = v19;
        }

        v19 += 32;
        --v16;
      }

      while (v16);
      if (v17)
      {
        v20 = CFGetAllocator(a1);
        Mutable = CFDataCreateMutable(v20, 0);
        if (Mutable)
        {
          v22 = CFGetAllocator(a1);
          v23 = CFDataCreateMutable(v22, 0);
          if (v23)
          {
            sub_10000FBF8(a1[6]);
            if (!v25)
            {
              sub_10000FBB0();
              v25 = v25 || v24 == 938209;
              if (v25 || v24 == 1327329 || v24 == 1515745 || v24 == 1700065 || v24 == 2044129 || v24 == 2089185 || v24 == 2814177)
              {
                CFDataSetLength(Mutable, 48);
                CFDataGetBytePtr(theData);
                sub_10000FBC0();
                v32 = sub_10000FC18();
                CC_SHA384(v32, v33, v34);
                CFDataSetLength(v23, 48);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v23);
                v35 = sub_10000FC08();
                CC_SHA384(v35, v36, v37);
LABEL_48:
                CFDictionarySetValue(a3, a5, v23);
                CFDictionarySetValue(a3, a4, Mutable);
                v39 = 0;
                goto LABEL_49;
              }

              sub_100008870();
              if (v40)
              {
                v42 = 1;
              }

              else
              {
                v42 = v41 == 9781473;
              }

              if (!v42 && v41 != 9572577)
              {
                CFDataSetLength(Mutable, 20);
                CFDataGetBytePtr(theData);
                sub_10000FBC0();
                v51 = sub_10000FC18();
                CC_SHA1(v51, v52, v53);
                CFDataSetLength(v23, 20);
                CFDataGetBytePtr(theData);
                CFDataGetLength(theData);
                CFDataGetMutableBytePtr(v23);
                v54 = sub_10000FC08();
                CC_SHA1(v54, v55, v56);
                goto LABEL_48;
              }
            }

            CFDataSetLength(Mutable, 32);
            CFDataGetBytePtr(theData);
            sub_10000FBC0();
            v44 = sub_10000FC18();
            CC_SHA256(v44, v45, v46);
            CFDataSetLength(v23, 32);
            CFDataGetBytePtr(theData);
            CFDataGetLength(theData);
            CFDataGetMutableBytePtr(v23);
            v47 = sub_10000FC08();
            CC_SHA256(v47, v48, v49);
            goto LABEL_48;
          }
        }

        else
        {
          v23 = 0;
        }

        v39 = 2;
        goto LABEL_49;
      }
    }

    v38 = "file lacks a hash section";
  }

  else
  {
    v38 = "invalid file format";
  }

  AMAuthInstallLog(3, "AMAuthInstallMonetMeasureElf", v38, v10, v11, v12, v13, v14, v57);
  Mutable = 0;
  v23 = 0;
  v39 = 10;
LABEL_49:
  SafeRelease(v23);
  SafeRelease(Mutable);
  return v39;
}

uint64_t AMAuthInstallMonetMeasureBootSbl(uint64_t *a1, CFDataRef theData, __CFDictionary *a3, uint64_t a4, const void *a5)
{
  BytePtr = CFDataGetBytePtr(theData);
  v11 = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length <= 3)
  {
    AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v14, v15, v16, v17, v18, 0);
LABEL_3:
    v24 = "_FindSbl1HeaderInFileData";
    v25 = "this file lacks sufficient magic";
    goto LABEL_4;
  }

  v27 = 0;
  v28 = 0;
  v29 = Length >> 2;
  v30 = v11 - 4;
  do
  {
    if (*(v30 + 1) == 1943474228)
    {
      ++v27;
      v28 = v30;
      if (*(v30 + 2) != 2097890138)
      {
        sub_10000FBE0(Length, v13, "found SBL header", v14, v15, v16, v17, v18, v38);
        sub_10000FBE0(v31, v32, "foundMagic=%d", v33, v34, v35, v36, v37, v27);
        v28 = v30;
        goto LABEL_13;
      }
    }

    v30 += 4;
    --v29;
  }

  while (v29);
  AMAuthInstallLog(7, "_FindSbl1HeaderInFileData", "foundMagic=%d", v14, v15, v16, v17, v18, v27);
  if (!v28)
  {
    goto LABEL_3;
  }

LABEL_13:
  if (CFDataGetLength(theData) < 0x50 || *(v28 + 7) > CFDataGetLength(theData))
  {
    return 10;
  }

  v21 = *(v28 + 5);
  if (v28 + 80 != &BytePtr[v21])
  {
    v24 = "AMAuthInstallMonetMeasureBootSbl";
    v25 = "junk following sbl1 header";
LABEL_4:
    AMAuthInstallLog(3, v24, v25, v19, v20, v21, v22, v23, v39);
    return 10;
  }

  return AMAuthInstallMonetSetVersionAndPartialDigestForSBL(a1, a3, BytePtr, theData, v28, v21, *(v28 + 8), a4, a5);
}

uint64_t AMAuthInstallMonetSetVersionAndPartialDigestForSBL(uint64_t *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int a6, int a7, uint64_t a8, const void *a9)
{
  v72 = 0;
  v74 = 0;
  v73 = 0uLL;
  v71 = 0;
  *bytes = 0u;
  v70 = 0u;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v14 = *(a1[6] + 4);
  sub_10000FBB0();
  v19 = v19 || v18 == 938209;
  if (v19 || v18 == 1327329 || v18 == 1515745 || v18 == 1700065 || v18 == 2044129 || v18 == 2089185 || v18 == 2814177)
  {
    v64 = 128;
  }

  else
  {
    v64 = 64;
  }

  v26 = 0;
  valuePtr = 0;
  v27 = 1;
  if (!a2 || !v15 || !v16 || !a5 || !v17)
  {
    v28 = 0;
    goto LABEL_70;
  }

  v28 = 0;
  if (a9)
  {
    key = v17;
    v29 = v15 + a6;
    v30 = *(v29 + 8);
    valuePtr = *(v29 + 4);
    Length = CFDataGetLength(v16);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "fileSize=0x%x, srcOffset=0x%x, codeSize=0x%x", v32, v33, v34, v35, v36, Length);
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "version=0x%x, personalizationOffset=0x%x", v37, v38, v39, v40, v41, valuePtr);
    LODWORD(v72) = a7 - v30;
    HIDWORD(v72) = v30 + 80;
    AMAuthInstallLog(7, "AMAuthInstallMonetSetVersionAndPartialDigestForSBL", "reservationLength=0x%x, codeBytesHashed=0x%x (%s) byte_multiple=%d", v42, v43, v44, v45, v46, a7 - v30);
    if (((v30 + 80) & (v64 - 1)) != 0)
    {
      v26 = 0;
      v28 = 0;
      v27 = 10;
      goto LABEL_70;
    }

    sub_10000FBF8(a1[6]);
    if (v19)
    {
      goto LABEL_66;
    }

    sub_10000FBB0();
    if (v19 || v47 == 938209 || v47 == 1327329 || v47 == 1515745 || v47 == 1700065 || v47 == 2044129 || v47 == 2089185 || v47 == 2814177)
    {
      *bytes = a7 - v30;
      *&bytes[4] = v30 + 80;
      sub_10000EA30(a5, 0, v67 + 8);
      v55 = CFGetAllocator(a1);
      v56 = v67;
      v57 = 72;
      goto LABEL_67;
    }

    sub_100008870();
    v60 = v58 || v59 == 9781473;
    if (v60 || v59 == 9572577)
    {
LABEL_66:
      *bytes = a7 - v30;
      *&bytes[4] = v30 + 80;
      sub_10000F65C(a5, v30 + 80, &bytes[8]);
      v55 = CFGetAllocator(a1);
      v56 = bytes;
      v57 = 40;
    }

    else
    {
      sub_100009230(a5, v30 + 80, &v73);
      v55 = CFGetAllocator(a1);
      v56 = &v72;
      v57 = 28;
    }

LABEL_67:
    v28 = CFDataCreate(v55, v56, v57);
    if (v28)
    {
      v62 = CFGetAllocator(a1);
      v26 = CFNumberCreate(v62, kCFNumberSInt32Type, &valuePtr);
      if (v26)
      {
        CFDictionarySetValue(a2, key, v26);
        CFDictionarySetValue(a2, a9, v28);
        v27 = 0;
        goto LABEL_70;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 2;
  }

LABEL_70:
  SafeRelease(v26);
  SafeRelease(v28);
  return v27;
}

uint64_t AMAuthInstallMonetStitchCopyIfPersonalized(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return sub_10000FBA0(v3);
}

uint64_t AMAuthInstallMonetMeasurePartitionTable(const void *a1, const __CFData *a2, __CFDictionary *a3)
{
  memset(&v13, 0, sizeof(v13));
  v5 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v5, 20);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 20);
    CC_SHA1_Init(&v13);
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    CC_SHA1_Update(&v13, BytePtr, Length);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    CC_SHA1_Final(MutableBytePtr, &v13);
    CFDictionarySetValue(a3, @"PartitionTable-Digest", v7);
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  SafeRelease(v7);
  return v11;
}

uint64_t AMAuthInstallMonetStitchPartitionTable(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v3 = CFRetain(cf);
  return sub_10000FBA0(v3);
}

uint64_t AMAuthInstallMonetFuseIfNecessary(uint64_t a1, void *a2, __CFDictionary *a3)
{
  v4 = a1;
  v72 = 0;
  error = 0;
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    goto LABEL_26;
  }

  if (!*(a1 + 48))
  {
LABEL_25:
    sub_10000FC28();
LABEL_26:
    v32 = 0;
    v49 = 1;
    goto LABEL_36;
  }

  v3 = a2;
  IsFused = AMAuthInstallBasebandIsFused(a1, &v72);
  if (IsFused)
  {
LABEL_37:
    v49 = IsFused;
    goto LABEL_35;
  }

  if (v72 && *(v4[6] + 96) != 2)
  {
    if (v4[22])
    {
      v19 = CFGetAllocator(v4);
      v32 = sub_10000FC34(v19, v20, v21, v22, v23, v24, v25, v26, v65, v68, v69, 0);
      if (v32)
      {
        CFDictionarySetValue(a3, @"fusingprogram.plist", v32);
LABEL_22:
        v49 = 0;
LABEL_23:
        sub_10000FC28();
        goto LABEL_36;
      }

      v64 = "failed to convert fusing program to xml";
LABEL_41:
      v49 = 3;
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", v64, v27, v28, v29, v30, v31, v66);
      goto LABEL_23;
    }

    v49 = 0;
LABEL_35:
    sub_10000FC28();
    v32 = 0;
    goto LABEL_36;
  }

  if (v4[53])
  {
    v12 = CFGetAllocator(v4);
    v68 = @"BbFactoryDebugEnable";
    ValueForKeyWithFormat = AMAuthInstallSupportGetValueForKeyWithFormat(v12, v4[53], @"%@.%@", v13, v14, v15, v16, v17, @"BbRequestEntries");
    if (!ValueForKeyWithFormat)
    {
      goto LABEL_24;
    }
  }

  else
  {
    ValueForKeyWithFormat = kCFBooleanFalse;
    if (!kCFBooleanFalse)
    {
LABEL_24:
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "baseband fusing is being attempted but the Factory Debug entitlement was not requested. Please enable Factory Debug to fuse.", v7, v8, v9, v10, v11, v65);
      goto LABEL_25;
    }
  }

  if (!CFBooleanGetValue(ValueForKeyWithFormat))
  {
    goto LABEL_24;
  }

  if (!*(v4 + 185))
  {
    if (*(v4 + 184))
    {
      AMAuthInstallLog(3, "AMAuthInstallMonetFuseIfNecessary", "fusing program request prohibited", v7, v8, v9, v10, v11, v65);
      goto LABEL_46;
    }

    IsFused = AMAuthInstallFusingProgramRequest(v4, v33, v34, v7, v8, v9, v10, v11);
    if (IsFused)
    {
      goto LABEL_37;
    }
  }

  if (!v4[22])
  {
LABEL_46:
    sub_10000FC28();
    v32 = 0;
    v49 = 14;
    goto LABEL_36;
  }

  v35 = CFGetAllocator(v4);
  v32 = sub_10000FC34(v35, v36, v37, v38, v39, v40, v41, v42, v65, v68, v69, 0);
  if (!v32)
  {
    v66 = error;
    v64 = "failed to convert fusing program to xml %@";
    goto LABEL_41;
  }

  CFDictionarySetValue(a3, @"fusingprogram.plist", v32);
  SafeRelease(error);
  v48 = v4[6];
  if (*(v48 + 24) && *(v48 + 16))
  {
    AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and booted; will provide fusing program and fully personalized stack", v43, v44, v45, v46, v47, v67);
    goto LABEL_22;
  }

  v50 = CFGetAllocator(v4);
  DictionaryFromURL = BbfwCreateDictionaryFromURL(v50, v3, &theDict);
  if (DictionaryFromURL)
  {
    v49 = DictionaryFromURL;
    goto LABEL_23;
  }

  Count = CFDictionaryGetCount(theDict);
  v3 = malloc(8 * Count);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  v4 = malloc(8 * Count);
  if (!v4)
  {
LABEL_44:
    v49 = 2;
    goto LABEL_36;
  }

  CFDictionaryGetKeysAndValues(theDict, v3, v4);
  if (Count >= 1)
  {
    v58 = v3;
    v59 = v4;
    do
    {
      v61 = *v58++;
      v60 = v61;
      v62 = *v59++;
      CFDictionarySetValue(a3, v60, v62);
      --Count;
    }

    while (Count);
  }

  AMAuthInstallLog(5, "AMAuthInstallMonetFuseIfNecessary", "baseband appears to be unfused and unbootable; will provide fusing program and unpersonalized stack", v53, v54, v55, v56, v57, v67);
  v49 = 0;
LABEL_36:
  SafeRelease(v32);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(error);
  return v49;
}

uint64_t AMAuthInstallMonetCopyNextComponentName(uint64_t a1)
{
  v6 = 0;
  if (!a1 || !*(a1 + 48))
  {
    return 1;
  }

  result = AMAuthInstallBasebandIsFused(a1, &v6);
  if (!result)
  {
    if (v6)
    {
      v3 = @"boot.bbfw";
    }

    else
    {
      v3 = @"preflash.bbfw";
    }

    if (*(*(a1 + 48) + 24))
    {
      v4 = @"stack.bbfw";
    }

    else
    {
      v4 = v3;
    }

    v5 = CFRetain(v4);
    return sub_10000FBA0(v5);
  }

  return result;
}

uint64_t AMAuthInstallMonetCreateReversedMEID(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  Length = CFDataGetLength(theData);
  v7 = 0;
  v8 = 1;
  if (theData && Length == 7)
  {
    v9 = 0;
    v10 = 6;
    do
    {
      bytes[v10--] = CFDataGetBytePtr(theData)[v9++];
    }

    while (v9 != 7);
    v11 = CFDataCreate(a1, bytes, 7);
    v7 = v11;
    if (v11)
    {
      v8 = 0;
      *a3 = CFRetain(v11);
    }

    else
    {
      v8 = 2;
    }
  }

  SafeRelease(v7);
  return v8;
}

uint64_t AMAuthInstallPlatformCopyURLWithAppendedComponent(const __CFAllocator *a1, CFTypeRef cf, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (!cf)
  {
    return 1;
  }

  v10 = CFGetTypeID(cf);
  v11 = CFURLGetTypeID();
  result = 1;
  if (a5 && a3 && v10 == v11)
  {
    v13 = CFURLCreateCopyAppendingPathComponent(a1, cf, a3, a4);
    if (v13)
    {
      v14 = v13;
      result = 0;
      *a5 = v14;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t AMAuthInstallPlatformFileURLExists(const __CFURL *a1, BOOL *a2)
{
  result = 1;
  if (a1 && a2)
  {
    bzero(&v6, 0x90uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = stat(buffer, &v6);
      result = 0;
      *a2 = v5 == 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t AMAuthInstallProvisioningCopyResponse(const __CFAllocator *a1, CFDataRef theData, const __CFNumber *NumberFromString, CFTypeRef *a4)
{
  theDataa = 0;
  v166 = 0u;
  memset(v167, 0, sizeof(v167));
  *buffer = 0u;
  v165 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = CFStringCreateWithBytes(a1, BytePtr, Length, 0x8000100u, 0);
  v16 = v10;
  if (!v10)
  {
    v24 = 0;
    sub_1000104EC();
    Mutable = 0;
    v154 = 3;
    goto LABEL_52;
  }

  AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Response:%@", v11, v12, v13, v14, v15, v10);
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v24 = 0;
    goto LABEL_65;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v16, @"&");
  v24 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    v156 = "responseParts is NULL";
    goto LABEL_62;
  }

  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (!Count)
  {
    v156 = "arrayCount is 0";
    goto LABEL_62;
  }

  v26 = Count;
  theDict = Mutable;
  alloc = a1;
  v158 = a4;
  valuePtr = NumberFromString;
  v160 = v16;
  if (Count >= 1)
  {
    a1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v24, a1);
      location = CFStringFind(ValueAtIndex, @"=", 0).location;
      if (location == -1)
      {
        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "could not split parameter: %@", v29, v30, v31, v32, v33, ValueAtIndex);
      }

      else
      {
        v34 = location;
        v35 = CFStringGetLength(ValueAtIndex);
        NumberFromString = alloc;
        v169.location = 0;
        v169.length = v34;
        v36 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v169);
        v170.location = v34 + 1;
        v170.length = v35 + ~v34;
        v37 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v170);
        v43 = v37;
        if (v36 && v37)
        {
          CFDictionarySetValue(theDict, v36, v37);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to create key(%@) or value (%@)", v38, v39, v40, v41, v42, v36);
        }

        SafeRelease(v36);
        SafeRelease(v43);
      }

      a1 = (a1 + 1);
    }

    while (v26 != a1);
  }

  Mutable = theDict;
  Value = CFDictionaryGetValue(theDict, @"MEID");
  if (Value)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "MEID:%@", v45, v46, v47, v48, v49, Value);
  }

  v50 = CFDictionaryGetValue(theDict, @"IMEI");
  if (v50)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI:%@", v51, v52, v53, v54, v55, v50);
  }

  v56 = CFDictionaryGetValue(theDict, @"IMEI2");
  if (v56)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "IMEI2:%@", v57, v58, v59, v60, v61, v56);
  }

  v62 = CFDictionaryGetValue(theDict, @"EID");
  v16 = v160;
  if (v62)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "EID:%@", v63, v64, v65, v66, v67, v62);
  }

  v68 = CFDictionaryGetValue(theDict, @"WIFI_MAC");
  if (v68)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC:%@", v69, v70, v71, v72, v73, v68);
  }

  v74 = CFDictionaryGetValue(theDict, @"BT_MAC");
  if (v74)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC:%@", v75, v76, v77, v78, v79, v74);
  }

  v80 = CFDictionaryGetValue(theDict, @"USB_ETHER_MAC");
  if (v80)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "USB_ETHER_MAC:%@", v81, v82, v83, v84, v85, v80);
  }

  v86 = CFDictionaryGetValue(theDict, @"WIFI_MAC2");
  if (v86)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "WIFI_MAC2:%@", v87, v88, v89, v90, v91, v86);
  }

  v92 = CFDictionaryGetValue(theDict, @"BT_MAC2");
  if (v92)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "BT_MAC2:%@", v93, v94, v95, v96, v97, v92);
  }

  v98 = CFDictionaryGetValue(theDict, @"ETH_MAC");
  if (v98)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETH_MAC:%@", v99, v100, v101, v102, v103, v98);
  }

  v104 = CFDictionaryGetValue(theDict, @"ETHER_MAC2");
  if (v104)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC2:%@", v105, v106, v107, v108, v109, v104);
  }

  v110 = CFDictionaryGetValue(theDict, @"T_MAC");
  if (v110)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "T_MAC:%@", v111, v112, v113, v114, v115, v110);
  }

  v116 = CFDictionaryGetValue(theDict, @"ETHER_MAC3");
  if (v116)
  {
    AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "ETHER_MAC3:%@", v117, v118, v119, v120, v121, v116);
  }

  v122 = CFDictionaryGetValue(theDict, @"B64_SECDATA");
  if (v122)
  {
    v128 = AMAuthInstallSupportBase64Decode(kCFAllocatorDefault, v122, &theDataa, v123, v124, v125, v126, v127);
    if (v128)
    {
      v154 = v128;
      v156 = "AMAuthInstallSupportBase64Decode failed";
LABEL_63:
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", v156, v19, v20, v21, v22, v23, v157);
      sub_1000104EC();
      goto LABEL_52;
    }

    if (theDataa)
    {
      if (CFDataGetLength(theDataa) > 0x4B)
      {
        v168.location = 0;
        v168.length = 76;
        CFDataGetBytes(theDataa, v168, buffer);
        if (!v167[6])
        {
          goto LABEL_49;
        }

        v129 = CFDataGetBytePtr(theDataa);
        v130 = CFDataCreate(alloc, v129 + 76, v167[6]);
        if (v130)
        {
          v136 = v130;
          CFDictionarySetValue(theDict, @"MANIFESTDATA", v130);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningCopyResponse", "Found secure manifest in response: '%@'", v137, v138, v139, v140, v141, v136);
          CFRelease(v136);
          goto LABEL_49;
        }

        AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "tempData is NULL", v131, v132, v133, v134, v135, v157);
LABEL_65:
        sub_1000104EC();
        v154 = 2;
        goto LABEL_52;
      }

      v156 = "decodedData is too small";
    }

    else
    {
      v156 = "decodedData is NULL";
    }

LABEL_62:
    v154 = 3;
    goto LABEL_63;
  }

  AMAuthInstallLog(6, "AMAuthInstallProvisioningCopyResponse", "B64_SECDATA not found in response", v123, v124, v125, v126, v127, v157);
LABEL_49:
  v142 = CFDictionaryGetValue(theDict, @"STATUS");
  if (v142)
  {
    v148 = v142;
    a1 = CFNumberFormatterCreate(alloc, 0, kCFNumberFormatterNoStyle);
    NumberFromString = CFNumberFormatterCreateNumberFromString(alloc, a1, v148, 0, 1uLL);
    if (CFNumberGetValue(NumberFromString, kCFNumberSInt32Type, valuePtr))
    {
      v154 = 0;
      *v158 = CFRetain(theDict);
    }

    else
    {
      v154 = 3;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "failed to convert statusNumber", v149, v150, v151, v152, v153, v157);
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningCopyResponse", "statusString is NULL", v143, v144, v145, v146, v147, v157);
    sub_1000104EC();
    v154 = 17;
  }

LABEL_52:
  SafeRelease(v16);
  SafeRelease(Mutable);
  SafeRelease(theDataa);
  SafeRelease(0);
  SafeRelease(v24);
  SafeRelease(NumberFromString);
  SafeRelease(a1);
  return v154;
}

uint64_t AMAuthInstallProvisioningPopulateRequestDict(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v7 = 0;
  theData = 0;
  ReversedMEIDFromString = 1;
  if (!a2 || !a1)
  {
    sub_1000104D8();
    goto LABEL_125;
  }

  sub_1000104D8();
  if (v12)
  {
    if (*(a1 + 320))
    {
      v13 = v11;
      v14 = CFGetAllocator(a1);
      v19 = AMAuthInstallHttpSetUriEscapedValue(v14, v13, @"COMMAND_CODE", a3, v15, v16, v17, v18);
      if (v19)
      {
        goto LABEL_131;
      }

      if (CFStringCompare(a3, @"100", 0) == kCFCompareEqualTo)
      {
        CFDictionaryRemoveValue(*(a1 + 320), @"PINECRESTID");
      }

      v25 = CFGetAllocator(a1);
      v19 = AMAuthInstallHttpSetUriEscapedValue(v25, v13, @"TICKET_VERSION", @"2", v26, v27, v28, v29);
      if (v19)
      {
LABEL_131:
        ReversedMEIDFromString = v19;
        v361 = "setting COMMAND_CODE failed";
      }

      else
      {
        v30 = *(a1 + 48);
        if (!v30)
        {
          v7 = 0;
LABEL_45:
          if (!*(a1 + 96) || (v117 = CFGetAllocator(a1), v122 = AMAuthInstallHttpSetUriEscapedValue(v117, v13, @"CLIENT_ID", *(a1 + 96), v118, v119, v120, v121), !v122))
          {
            Count = CFDictionaryGetCount(*(a1 + 320));
            v3 = malloc(8 * Count);
            v124 = malloc(8 * Count);
            v4 = v124;
            v5 = 0;
            ReversedMEIDFromString = 2;
            if (!v3 || !v124)
            {
              Mutable = 0;
              goto LABEL_125;
            }

            CFDictionaryGetKeysAndValues(*(a1 + 320), v3, v124);
            if (Count >= 1)
            {
              v130 = 0;
              while (v3[v130])
              {
                v131 = v4[v130];
                if (!v131)
                {
                  v360 = "invalid provisioningInfoValuesBuffer array";
                  goto LABEL_128;
                }

                v132 = CFGetTypeID(v131);
                CFDataGetTypeID();
                v133 = sub_1000104C0();
                v138 = v3[v130];
                v139 = v4[v130];
                if (v132 == ReversedMEIDFromString)
                {
                  v140 = AMAuthInstallHttpSetBase64EncodedValue(v133, v13, v138, v139, v134, v135, v136, v137);
                }

                else
                {
                  v140 = AMAuthInstallHttpSetUriEscapedValue(v133, v13, v138, v139, v134, v135, v136, v137);
                }

                ReversedMEIDFromString = v140;
                if (v140)
                {
                  AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting %@ failed", v125, v126, v127, v128, v129, v3[v130]);
                  v5 = 0;
                  Mutable = 0;
                  goto LABEL_125;
                }

                if (Count == ++v130)
                {
                  goto LABEL_58;
                }
              }

              v360 = "invalid provisioningInfoKeysBuffer array";
LABEL_128:
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v360, v125, v126, v127, v128, v129, v363);
              v5 = 0;
              Mutable = 0;
              ReversedMEIDFromString = 99;
              goto LABEL_125;
            }

LABEL_58:
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            CFArrayAppendValue(Mutable, @"1.2.0");
            LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
            if (CFStringGetLength(LibraryVersionString))
            {
              v142 = LibraryVersionString;
            }

            else
            {
              v142 = @"libauthinstall-???";
            }

            CFArrayAppendValue(Mutable, v142);
            v5 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, Mutable, @"-");
            v143 = CFGetAllocator(a1);
            v148 = AMAuthInstallHttpSetUriEscapedValue(v143, v13, @"VERSION", v5, v144, v145, v146, v147);
            if (v148)
            {
              ReversedMEIDFromString = v148;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting VERSION (%@) failed", v149, v150, v151, v152, v153, v5);
              goto LABEL_125;
            }

            v154 = *(a1 + 312);
            if (!v154)
            {
              goto LABEL_120;
            }

            Value = CFDictionaryGetValue(v154, @"MEID");
            if (Value)
            {
              if (sub_100010474(Value, v156, v157, v158, v159, v160, v161, v162, v363, v365, cf) || !cf)
              {
                AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse meid, adding original string to response", v163, v164, v165, v166, v167, v363);
                SafeRelease(cf);
                v176 = CFGetAllocator(a1);
                sub_1000104A8(v176, v177, @"MEID", v178, v179, v180, v181, v182);
              }

              else
              {
                v168 = CFGetAllocator(a1);
                AMAuthInstallHttpSetBase64EncodedValue(v168, v13, @"B64_MEID", cf, v169, v170, v171, v172);
                CFRelease(cf);
                v173 = *(a1 + 48);
                if (v173)
                {
                  v174 = *(v173 + 32) != 0;
LABEL_73:
                  v183 = CFDictionaryGetValue(*(a1 + 312), @"IMEI");
                  if (v183)
                  {
                    if (sub_100010474(v183, v184, v185, v186, v187, v188, v189, v190, v363, v365, cf) || !cf)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei, adding original string to response", v191, v192, v193, v194, v195, v363);
                      SafeRelease(cf);
                      v202 = CFGetAllocator(a1);
                      sub_1000104A8(v202, v203, @"IMEI", v204, v205, v206, v207, v208);
                    }

                    else
                    {
                      v196 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v196, v13, @"B64_IMEI", cf, v197, v198, v199, v200);
                      CFRelease(cf);
                      v201 = *(a1 + 48);
                      if (v201)
                      {
                        if (*(v201 + 40))
                        {
                          v174 = v174 | 0x100;
                        }

                        else
                        {
                          v174 = v174;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI");
                    CFDictionaryRemoveValue(v13, @"IMEI");
                  }

                  v209 = CFDictionaryGetValue(*(a1 + 312), @"IMEI2");
                  if (v209)
                  {
                    if (sub_100010474(v209, v210, v211, v212, v213, v214, v215, v216, v363, v365, cf) || !cfa)
                    {
                      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "failed to reverse imei2, adding original string to response", v217, v218, v219, v220, v221, v364);
                      SafeRelease(cfa);
                      v228 = CFGetAllocator(a1);
                      sub_1000104A8(v228, v229, @"IMEI2", v230, v231, v232, v233, v234);
                    }

                    else
                    {
                      v222 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v222, v13, @"B64_IMEI2", cfa, v223, v224, v225, v226);
                      CFRelease(cfa);
                      v227 = *(a1 + 48);
                      if (v227)
                      {
                        if (*(v227 + 48))
                        {
                          v174 = v174 | 0x200;
                        }

                        else
                        {
                          v174 = v174;
                        }
                      }
                    }
                  }

                  else
                  {
                    CFDictionaryRemoveValue(v13, @"B64_IMEI2");
                    CFDictionaryRemoveValue(v13, @"IMEI2");
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC"))
                  {
                    v235 = sub_1000104C0();
                    sub_1000104A8(v235, v236, @"WIFI_MAC", v237, v238, v239, v240, v241);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC"))
                  {
                    v242 = sub_1000104C0();
                    sub_1000104A8(v242, v243, @"BT_MAC", v244, v245, v246, v247, v248);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"USB_ETHER_MAC"))
                  {
                    v249 = sub_1000104C0();
                    sub_1000104A8(v249, v250, @"USB_ETHER_MAC", v251, v252, v253, v254, v255);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"WIFI_MAC2"))
                  {
                    v256 = sub_1000104C0();
                    sub_1000104A8(v256, v257, @"WIFI_MAC2", v258, v259, v260, v261, v262);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"BT_MAC2"))
                  {
                    v263 = sub_1000104C0();
                    sub_1000104A8(v263, v264, @"BT_MAC2", v265, v266, v267, v268, v269);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETH_MAC"))
                  {
                    v270 = sub_1000104C0();
                    sub_1000104A8(v270, v271, @"ETH_MAC", v272, v273, v274, v275, v276);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC2"))
                  {
                    v277 = sub_1000104C0();
                    sub_1000104A8(v277, v278, @"ETHER_MAC2", v279, v280, v281, v282, v283);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"T_MAC"))
                  {
                    v284 = sub_1000104C0();
                    sub_1000104A8(v284, v285, @"T_MAC", v286, v287, v288, v289, v290);
                  }

                  if (CFDictionaryGetValue(*(a1 + 312), @"ETHER_MAC3"))
                  {
                    v291 = sub_1000104C0();
                    sub_1000104A8(v291, v292, @"ETHER_MAC3", v293, v294, v295, v296, v297);
                  }

                  v298 = CFDictionaryGetValue(*(a1 + 312), @"PAICHUSUO");
                  if (v298)
                  {
                    AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO:%@", v299, v300, v301, v302, v303, v298);
                    v304 = CFDictionaryGetValue(*(a1 + 312), @"SN");
                    if (v304)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO SN:%@", v305, v306, v307, v308, v309, v304);
                      v310 = CFGetAllocator(a1);
                      sub_1000104A8(v310, v311, @"SN", v312, v313, v314, v315, v316);
                    }

                    v317 = CFDictionaryGetValue(*(a1 + 312), @"RGN");
                    if (v317)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO RGN:%@", v318, v319, v320, v321, v322, v317);
                      v323 = CFGetAllocator(a1);
                      sub_1000104A8(v323, v324, @"RGN", v325, v326, v327, v328, v329);
                    }

                    v330 = CFDictionaryGetValue(*(a1 + 312), @"MPN");
                    if (v330)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MPN:%@", v331, v332, v333, v334, v335, v330);
                      v336 = CFGetAllocator(a1);
                      sub_1000104A8(v336, v337, @"MPN", v338, v339, v340, v341, v342);
                    }

                    v343 = CFDictionaryGetValue(*(a1 + 312), @"MLB");
                    if (v343)
                    {
                      AMAuthInstallLog(5, "AMAuthInstallProvisioningPopulateRequestDict", "PAICHUSUO MLB:%@", v344, v345, v346, v347, v348, v343);
                      v349 = CFGetAllocator(a1);
                      sub_1000104A8(v349, v350, @"MLB", v351, v352, v353, v354, v355);
                    }
                  }

                  v356 = CFGetAllocator(a1);
                  v357 = CFStringCreateWithFormat(v356, 0, @"0x%X", v174);
                  if (!v357)
                  {
                    ReversedMEIDFromString = 2;
                    goto LABEL_125;
                  }

                  v358 = v357;
                  CFDictionarySetValue(v13, @"STATUS1", v357);
                  CFRelease(v358);
LABEL_120:
                  ReversedMEIDFromString = 0;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              CFDictionaryRemoveValue(v13, @"B64_MEID");
              CFDictionaryRemoveValue(v13, @"MEID");
            }

            v174 = 0;
            goto LABEL_73;
          }

          ReversedMEIDFromString = v122;
          v362 = "setting CLIENT_ID failed";
          goto LABEL_142;
        }

        if (*(v30 + 16) && (v31 = CFGetAllocator(a1), v36 = AMAuthInstallHttpSetBase64EncodedValue(v31, v13, @"B64_BB_SNUM", *(*(a1 + 48) + 16), v32, v33, v34, v35), v36))
        {
          ReversedMEIDFromString = v36;
          v361 = "setting B64_BB_SNUM failed";
        }

        else
        {
          if (*(a1 + 312))
          {
            goto LABEL_18;
          }

          if (*(*(a1 + 48) + 72))
          {
            v37 = CFGetAllocator(a1);
            v42 = AMAuthInstallHttpSetBase64EncodedValue(v37, v13, @"B64_SESS_KEY", *(*(a1 + 48) + 72), v38, v39, v40, v41);
            if (v42)
            {
              ReversedMEIDFromString = v42;
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", "setting B64_SESS_KEY failed, '%@'", v20, v21, v22, v23, v24, *(*(a1 + 48) + 72));
              goto LABEL_133;
            }
          }

          KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &theData, v20, v21, v22, v23, v24);
          if (KeyHash)
          {
            ReversedMEIDFromString = KeyHash;
            v361 = "AMAuthInstallBasebandGetKeyHash failed";
          }

          else
          {
            if (!theData || (v44 = CFGetAllocator(a1), v49 = AMAuthInstallHttpSetBase64EncodedValue(v44, v13, @"B64_SKEY_HASH", theData, v45, v46, v47, v48), !v49))
            {
LABEL_18:
              v50 = CFGetAllocator(a1);
              v7 = CFDataCreate(v50, (*(a1 + 48) + 4), 4);
              if (v7)
              {
                v56 = CFGetAllocator(a1);
                v61 = AMAuthInstallHttpSetBase64EncodedValue(v56, v13, @"B64_BB_CHIPID", v7, v57, v58, v59, v60);
                if (v61)
                {
                  ReversedMEIDFromString = v61;
                  v362 = "setting B64_BB_CHIPID failed";
                }

                else
                {
                  v62 = *(a1 + 48);
                  if (v62[8])
                  {
                    v63 = CFGetAllocator(a1);
                    AMAuthInstallHttpSetUriEscapedValue(v63, v13, @"ICCID", *(*(a1 + 48) + 64), v64, v65, v66, v67);
                    v62 = *(a1 + 48);
                  }

                  if (v62[13])
                  {
                    v68 = CFGetAllocator(a1);
                    v73 = AMAuthInstallHttpSetUriEscapedValue(v68, v13, @"BB_CARRIERID", *(*(a1 + 48) + 104), v69, v70, v71, v72);
                    if (v73)
                    {
                      ReversedMEIDFromString = v73;
                      v362 = "setting BB_CARRIERID failed";
                      goto LABEL_142;
                    }

                    v62 = *(a1 + 48);
                  }

                  if (!v62[14])
                  {
                    goto LABEL_28;
                  }

                  v74 = CFGetAllocator(a1);
                  v79 = AMAuthInstallHttpSetBase64EncodedValue(v74, v13, @"MANIFESTDATA", *(*(a1 + 48) + 112), v75, v76, v77, v78);
                  if (!v79)
                  {
                    v62 = *(a1 + 48);
LABEL_28:
                    if (v62[4])
                    {
                      v80 = sub_100010498();
                      ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v80, v81, v82);
                      if (ReversedMEIDFromString || !cf)
                      {
                        v175 = "failed to reverse meid";
                        goto LABEL_123;
                      }

                      v88 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v88, v13, @"B64_MEID", cf, v89, v90, v91, v92);
                      CFRelease(cf);
                      v62 = *(a1 + 48);
                    }

                    if (v62[5])
                    {
                      v93 = sub_100010498();
                      ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v93, v94, v95);
                      if (ReversedMEIDFromString || !cf)
                      {
                        v175 = "failed to reverse imei";
                        goto LABEL_123;
                      }

                      v96 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v96, v13, @"B64_IMEI", cf, v97, v98, v99, v100);
                      CFRelease(cf);
                      v62 = *(a1 + 48);
                    }

                    if (!v62[6])
                    {
LABEL_40:
                      if (!v62[7])
                      {
                        goto LABEL_45;
                      }

                      v109 = sub_100010498();
                      ReversedMEIDFromString = AMAuthInstallSupportCopyDataFromHexString(v109, v110, v111);
                      if (!ReversedMEIDFromString && cf)
                      {
                        v112 = CFGetAllocator(a1);
                        AMAuthInstallHttpSetBase64EncodedValue(v112, v13, @"B64_EID", cf, v113, v114, v115, v116);
                        CFRelease(cf);
                        goto LABEL_45;
                      }

                      v175 = "failed to create euiccEID data";
                      goto LABEL_123;
                    }

                    v101 = sub_100010498();
                    ReversedMEIDFromString = AMAuthInstallMonetCreateReversedMEIDFromString(v101, v102, v103);
                    if (!ReversedMEIDFromString && cf)
                    {
                      v104 = CFGetAllocator(a1);
                      AMAuthInstallHttpSetBase64EncodedValue(v104, v13, @"B64_IMEI2", cf, v105, v106, v107, v108);
                      CFRelease(cf);
                      v62 = *(a1 + 48);
                      goto LABEL_40;
                    }

                    v175 = "failed to reverse imei2";
LABEL_123:
                    AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v175, v83, v84, v85, v86, v87, v363);
                    SafeRelease(cf);
LABEL_124:
                    v5 = 0;
                    Mutable = 0;
                    v3 = 0;
                    v4 = 0;
                    goto LABEL_125;
                  }

                  ReversedMEIDFromString = v79;
                  v362 = "setting MANIFESTDATA failed";
                }
              }

              else
              {
                v362 = "chipID failed to convert to data";
                ReversedMEIDFromString = 3;
              }

LABEL_142:
              AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v362, v51, v52, v53, v54, v55, v363);
              goto LABEL_124;
            }

            ReversedMEIDFromString = v49;
            v361 = "setting B64_SKEY_HASH failed";
          }
        }
      }

      AMAuthInstallLog(3, "AMAuthInstallProvisioningPopulateRequestDict", v361, v20, v21, v22, v23, v24, v363);
    }

LABEL_133:
    v7 = 0;
    goto LABEL_124;
  }

LABEL_125:
  SafeFree(v3);
  SafeFree(v4);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(Mutable);
  return ReversedMEIDFromString;
}

uint64_t AMAuthInstallProvisioningServerSendSyncRequest(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  *v35 = 0;
  v32 = 0;
  v33 = 0;
  v8 = 1;
  if (a3 && a4)
  {
    if (!a2)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "provisioning server url is NULL", a4, a5, a6, a7, a8, v30);
      goto LABEL_11;
    }

    PostRequest = AMAuthInstallHttpCreatePostRequest(a1, a2, a3, v35);
    if (!PostRequest)
    {
      PostRequest = AMAuthInstallHttpMessageSendSyncNew(a1, v35[0], &theData, &v32 + 4, 0, 15.0);
      if (!PostRequest)
      {
        if (!theData)
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "no response data (httpStatus=%u)", v12, v13, v14, v15, v16, SBYTE4(v32));
          goto LABEL_17;
        }

        PostRequest = AMAuthInstallProvisioningCopyResponse(a1, theData, &v32, &v33);
        if (!PostRequest)
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningServerSendSyncRequest", "httpStatus=%u, status=%d", v17, v18, v19, v20, v21, SBYTE4(v32));
          if (v32)
          {
            AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server error: %d", v22, v23, v24, v25, v26, v32);
            v8 = 24;
            goto LABEL_11;
          }

          v27 = v33;
          if (v33)
          {
            AMAuthInstallLog(6, "AMAuthInstallProvisioningServerSendSyncRequest", "data=%@", v22, v23, v24, v25, v26, v33);
            v28 = CFRetain(v27);
            v8 = 0;
            *a4 = v28;
            goto LABEL_11;
          }

          AMAuthInstallLog(3, "AMAuthInstallProvisioningServerSendSyncRequest", "server failed to provide response data", v22, v23, v24, v25, v26, v31);
LABEL_17:
          v8 = 17;
          goto LABEL_11;
        }
      }
    }

    v8 = PostRequest;
  }

LABEL_11:
  SafeRelease(0);
  SafeRelease(*v35);
  SafeRelease(theData);
  SafeRelease(v33);
  return v8;
}

uint64_t AMAuthInstallProvisioningSendAck(uint64_t cf, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  if (!cf)
  {
    Mutable = 0;
    v12 = 1;
    goto LABEL_13;
  }

  if (*(cf + 312))
  {
    v10 = @"200";
  }

  else
  {
    if (*(cf + 304) == 8)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "Provisioning failed, ack already sent.", a4, a5, a6, a7, a8, v36);
      Mutable = 0;
      v12 = 19;
      goto LABEL_13;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningSendAck", "No provisioning info to ack, sending ping.", a4, a5, a6, a7, a8, v36);
    v10 = @"1";
  }

  v13 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v14 = AMAuthInstallProvisioningPopulateRequestDict(cf, Mutable, v10);
    if (v14)
    {
      v12 = v14;
      AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningPopulateRequestDict failed status=%d", v15, v16, v17, v18, v19, v14);
    }

    else
    {
      v20 = CFGetAllocator(cf);
      Value = a2;
      v21 = CFStringCreateWithFormat(v20, 0, @"0x%X");
      CFDictionarySetValue(Mutable, @"STATUS", v21);
      CFRelease(v21);
      v22 = CFGetAllocator(cf);
      v27 = AMAuthInstallProvisioningServerSendSyncRequest(v22, *(cf + 296), Mutable, &theDict, v23, v24, v25, v26);
      if (v27)
      {
        v12 = v27;
        AMAuthInstallLog(3, "AMAuthInstallProvisioningSendAck", "AMAuthInstallProvisioningServerSendSyncRequest failed status=%d", v28, v29, v30, v31, v32, v27);
      }

      else
      {
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"STATUS");
          v33 = "Server returned STATUS=%@";
          v34 = 6;
        }

        else
        {
          v33 = "responseDict is NULL";
          v34 = 3;
        }

        AMAuthInstallLog(v34, "AMAuthInstallProvisioningSendAck", v33, v28, v29, v30, v31, v32, Value);
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 2;
  }

LABEL_13:
  SafeRelease(Mutable);
  SafeRelease(theDict);
  return v12;
}

uint64_t AMAuthInstallProvisioningSendRequest(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1 && a2 && a3)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      v4 = 2;
      goto LABEL_9;
    }

    v9 = AMAuthInstallProvisioningPopulateRequestDict(a1, Mutable, a2);
    if (v9)
    {
      v4 = v9;
      v22 = "AMAuthInstallProvisioningPopulateRequestDict failed";
    }

    else
    {
      v15 = CFGetAllocator(a1);
      v20 = AMAuthInstallProvisioningServerSendSyncRequest(v15, *(a1 + 296), Mutable, a3, v16, v17, v18, v19);
      if (!v20)
      {
        if (*a3)
        {
          SafeRelease(*(a1 + 312));
          v4 = 0;
          *(a1 + 312) = CFRetain(*a3);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", "*outResponseDict is NULL", v10, v11, v12, v13, v14, v23);
          v4 = 0;
        }

        goto LABEL_9;
      }

      v4 = v20;
      v22 = "AMAuthInstallProvisioningServerSendSyncRequest failed";
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningSendRequest", v22, v10, v11, v12, v13, v14, v23);
  }

LABEL_9:
  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestInfoPlist(void *a1, CFDataRef *a2)
{
  theDict = 0;
  if (!a1)
  {
    v3 = 0;
    v4 = 1;
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 1;
  if (a2 && a1[6])
  {
    v6 = a1[39];
    if (v6)
    {
      v7 = CFRetain(v6);
      theDict = v7;
      v4 = 99;
      if (v7)
      {
LABEL_6:
        Value = CFDictionaryGetValue(v7, @"MEID");
        v14 = CFDictionaryGetValue(theDict, @"IMEI");
        if (!(Value | v14))
        {
          v3 = 0;
          v4 = 17;
          v17 = "both imei and meid are NULL, provisioning failed.";
          goto LABEL_28;
        }

        v15 = v14;
        if (*(a1[6] + 48))
        {
          v16 = CFDictionaryGetValue(theDict, @"IMEI2");
          if (!v16)
          {
            v3 = 0;
            v4 = 17;
            v17 = "imei2 is NULL. provisioning failed.";
LABEL_28:
            AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestInfoPlist", v17, v8, v9, v10, v11, v12, v23);
            goto LABEL_20;
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v18, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v3 = Mutable;
        if (Mutable)
        {
          if (Value)
          {
            CFDictionarySetValue(Mutable, @"MEID", Value);
          }

          if (v15)
          {
            CFDictionarySetValue(v3, @"IMEI", v15);
          }

          if (v16)
          {
            CFDictionarySetValue(v3, @"IMEI2", v16);
          }

          v20 = CFGetAllocator(a1);
          XMLData = CFPropertyListCreateXMLData(v20, v3);
          *a2 = XMLData;
          if (!XMLData)
          {
            v4 = 3;
            v17 = "CFPropertyListCreateXMLData failed.";
            goto LABEL_28;
          }

          v4 = 0;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v4 = AMAuthInstallProvisioningSendRequest(a1, @"100", &theDict);
      if (v4)
      {
        v3 = 0;
        v17 = "AMAuthInstallProvisioningSendRequest failed";
        goto LABEL_28;
      }

      v7 = theDict;
      if (theDict)
      {
        goto LABEL_6;
      }
    }

    v3 = 0;
    v17 = "responseDict is NULL";
    goto LABEL_28;
  }

LABEL_20:
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(v3);
  return v4;
}

uint64_t AMAuthInstallProvisioningRequestManifest(uint64_t a1, void *a2)
{
  v14 = 0;
  v2 = 1;
  if (a1 && a2)
  {
    if (*(a1 + 312))
    {
      v4 = CFRetain(*(a1 + 312));
      v14 = v4;
      v2 = 99;
      if (v4)
      {
LABEL_5:
        Value = CFDictionaryGetValue(v4, @"MANIFESTDATA");
        *a2 = Value;
        if (Value)
        {
          CFRetain(Value);
          v2 = 0;
          goto LABEL_7;
        }

        v12 = "*manifestData is NULL";
LABEL_12:
        AMAuthInstallLog(3, "AMAuthInstallProvisioningRequestManifest", v12, v5, v6, v7, v8, v9, v13);
        goto LABEL_7;
      }
    }

    else
    {
      v2 = AMAuthInstallProvisioningSendRequest(a1, @"100", &v14);
      if (v2)
      {
        v12 = "AMAuthInstallProvisioningSendRequest failed";
        goto LABEL_12;
      }

      v4 = v14;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v12 = "responseDict is NULL";
    goto LABEL_12;
  }

LABEL_7:
  SafeRelease(v14);
  return v2;
}

uint64_t AMAuthInstallProvisioningProvisionIfNecessary(uint64_t a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  v88 = 0;
  v86 = 0;
  if (!a1)
  {
    v63 = 1;
    goto LABEL_76;
  }

  SubjectPublicKeyInfoForKey = 1;
  if (!a2)
  {
    goto LABEL_73;
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_73;
  }

  v12 = *(a1 + 304);
  if (v12 > 0xB)
  {
    AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "Unexpected provisioning state = %d", a4, a5, a6, a7, a8, *(a1 + 304));
    SubjectPublicKeyInfoForKey = 99;
    goto LABEL_73;
  }

  v13 = 1 << v12;
  if ((v13 & 0xF81) != 0)
  {
LABEL_72:
    SubjectPublicKeyInfoForKey = 0;
    goto LABEL_73;
  }

  if ((v13 & 0x26) == 0)
  {
    if (*(v11 + 72))
    {
      v39 = *(v11 + 4);
      if (v39 != 94)
      {
        v40 = v39 == 104 || v39 == 241889;
        v41 = v40 || v39 == 520417;
        v42 = v41 || v39 == 938209;
        v43 = v42 || v39 == 1327329;
        v44 = v43 || v39 == 1515745;
        v45 = v44 || v39 == 1700065;
        v46 = v45 || v39 == 2044129;
        v47 = v46 || v39 == 2089185;
        v48 = v47 || v39 == 2814177;
        v49 = v48 || v39 == 8343777;
        v50 = v49 || v39 == 9572577;
        v51 = v50 || v39 == 9781473;
        if (!v51 && !*(a1 + 328) && (*(v11 + 32) || *(v11 + 40) || *(v11 + 48)))
        {
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Performing local re-lock", a4, a5, a6, a7, a8, v83);
          v77 = AMAuthInstallBasebandLocalProvisionDevice(a1, &v86);
          if (v77)
          {
            SubjectPublicKeyInfoForKey = v77;
            sub_1000104F8();
            v81 = "AMAuthInstallMonetLocalProvisionDevice failed";
            goto LABEL_106;
          }

          if (v86)
          {
            *(a1 + 304) = 6;
LABEL_96:
            CFDictionaryRemoveAllValues(a2);
            CFDictionarySetValue(a2, @"provisioning/manifest.bin", v86);
            goto LABEL_72;
          }

          sub_1000104F8();
LABEL_120:
          AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "manifestData is NULL", v22, v23, v24, v25, v26, v83);
          SubjectPublicKeyInfoForKey = 14;
          goto LABEL_73;
        }
      }

      if (*(v11 + 96) == 3)
      {
        AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Requesting manifest from server (%@)", a4, a5, a6, a7, a8, *(a1 + 296));
        v78 = AMAuthInstallProvisioningRequestManifest(a1, &v86);
        *(a1 + 304) = 4;
        if (v78)
        {
          SubjectPublicKeyInfoForKey = v78;
          v81 = "AMAuthInstallProvisioningRequestManifest failed";
          goto LABEL_106;
        }

        if (v86)
        {
          goto LABEL_96;
        }

        goto LABEL_120;
      }

      v52 = "Cannot provision unfused boards";
    }

    else
    {
      sub_1000104F8();
      v52 = "encryptedSessionKey is NULL";
    }

    AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", v52, a4, a5, a6, a7, a8, v83);
    SubjectPublicKeyInfoForKey = 19;
    goto LABEL_73;
  }

  v14 = *(v11 + 88);
  if (v14 && CFBooleanGetValue(v14) == 1)
  {
    if (*(a1 + 328) || *(a1 + 329))
    {
      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Existing provisioning manifest found. Force provisioning is enabled; provisioning anyway.", v16, v17, v18, v19, v20, v83);
    }

    else
    {
      v80 = AMAuthInstallProvisioningSendAck(a1, 0, v15, v16, v17, v18, v19, v20);
      if (v80 != 24)
      {
        SubjectPublicKeyInfoForKey = v80;
        if (!v80)
        {
          *(a1 + 304) = 7;
          v81 = "Existing provisioning manifest found. Not attempting to provision.";
          v82 = 5;
LABEL_107:
          AMAuthInstallLog(v82, "AMAuthInstallProvisioningProvisionIfNecessary", v81, v22, v23, v24, v25, v26, v83);
          goto LABEL_73;
        }

        v81 = "Provisioning server failed to respond, cannot provision.";
LABEL_106:
        v82 = 3;
        goto LABEL_107;
      }

      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "provisioning ack failed, enabling force provisioning.", v22, v23, v24, v25, v26, v83);
      *(a1 + 328) = 1;
    }
  }

  v21 = *(*(a1 + 48) + 80);
  if (!v21)
  {
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
    if (!Mutable)
    {
      AMAuthInstallLog(3, "AMAuthInstallProvisioningProvisionIfNecessary", "emptyData is NULL", v54, v55, v56, v57, v58, v83);
      SubjectPublicKeyInfoForKey = 2;
      goto LABEL_73;
    }

    v59 = Mutable;
    CFDictionarySetValue(a2, @"provisioning/", Mutable);
    CFRelease(v59);
    v60 = "Baseband not reporting manifest status, not attempting to provision yet.";
    goto LABEL_70;
  }

  if (CFBooleanGetValue(v21) != 1)
  {
    v61 = *(a1 + 48);
    if (v61[4] || v61[5] || v61[6])
    {
      if (!*(a1 + 328))
      {
        *(a1 + 304) = 7;
        v60 = "Device already has MEID and/or IMEI and/or IMEI2. Bringup provisioning complete. Not attempting to provision.";
        goto LABEL_70;
      }

      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Device already has MEID and/or IMEI and/or IMEI2. Force provisioning is enabled requesting new values.", v22, v23, v24, v25, v26, v83);
    }

    v79 = AMAuthInstallProvisioningRequestInfoPlist(a1, &v88);
    *(a1 + 304) = 5;
    if (v79)
    {
      SubjectPublicKeyInfoForKey = v79;
      v81 = "AMAuthInstallProvisioningRequestInfoPlist failed";
      goto LABEL_106;
    }

    if (!v88)
    {
      v60 = "info.plist is NULL";
      v62 = 3;
      goto LABEL_71;
    }

    CFDictionarySetValue(a2, @"provisioning/info.plist", v88);
    v60 = "Bringup baseband found, doing single stage provisioning";
LABEL_70:
    v62 = 5;
LABEL_71:
    AMAuthInstallLog(v62, "AMAuthInstallProvisioningProvisionIfNecessary", v60, v22, v23, v24, v25, v26, v83);
    goto LABEL_72;
  }

  v85 = 0;
  v27 = AMAuthInstallCryptoRegisterKeys();
  if (!v27)
  {
    if (!*(a1 + 328))
    {
      v65 = *(a1 + 48);
      if (v65[4] || v65[5] || v65[6])
      {
        AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Local re-locking enabled. Forcing use of P1 provisioning key.", v28, v29, v30, v31, v32, v83);
        SubjectPublicKeyInfoForKey = AMAuthInstallCryptoCreateSubjectPublicKeyInfoForKey();
LABEL_84:
        v38 = value;
LABEL_85:
        if (v38)
        {
          CFDictionarySetValue(a2, @"provisioning/puk.pem", v38);
          AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "Mature baseband found, doing two stage provisioning", v72, v73, v74, v75, v76, v83);
          SubjectPublicKeyInfoForKey = 0;
          *(a1 + 304) = 2;
          goto LABEL_73;
        }

        goto LABEL_111;
      }
    }

    if (_AMAuthInstallSupportsECProvision(a1))
    {
      AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "ECDH Server based provisioning enabled. Creating empty puk.pem file for BBUpdater", v33, v34, v35, v36, v37, v83);
      *bytes = -272716322;
      v38 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
      SubjectPublicKeyInfoForKey = 0;
      value = v38;
      goto LABEL_85;
    }

    AMAuthInstallLog(5, "AMAuthInstallProvisioningProvisionIfNecessary", "LEGACY Server based provisioning enabled. Reading provisioning key from settings.", v33, v34, v35, v36, v37, v83);
    KeyHash = AMAuthInstallBasebandGetKeyHash(a1, @"BbProvisioningManifestKeyHash", &v85, v66, v67, v68, v69, v70);
    if (KeyHash)
    {
      SubjectPublicKeyInfoForKey = KeyHash;
    }

    else if (v85)
    {
      SubjectPublicKeyInfoForKey = AMAuthInstallCryptoCreateSubjectPublicKeyInfoForKeyFromHash();
      if (!SubjectPublicKeyInfoForKey)
      {
        goto LABEL_84;
      }
    }

    else
    {
      SubjectPublicKeyInfoForKey = 0;
    }

LABEL_111:
    sub_1000104F8();
    goto LABEL_106;
  }

  SubjectPublicKeyInfoForKey = v27;
LABEL_73:
  if (*(a1 + 304) == 8)
  {
    v63 = 19;
  }

  else
  {
    v63 = SubjectPublicKeyInfoForKey;
  }

LABEL_76:
  SafeRelease(0);
  SafeRelease(v88);
  SafeRelease(value);
  SafeRelease(v86);
  return v63;
}

uint64_t AMAuthInstallBasebandMAV25MeasureFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v3 = 0;
  v4 = 1;
  if (a1 && cf && a3)
  {
    v7 = BbfwReaderOpen(cf);
    v3 = v7;
    if (v7)
    {
      v14 = sub_1000092CC(v7, v8, @"acdb.mbn");
      if (!v14)
      {
        AMAuthInstallLog(4, "AMAuthInstallBasebandMAV25MeasureFirmware", "missing acdb or failed to measure image", v16, v17, v18, v19, v20, v34);
      }

      v21 = sub_1000092CC(v14, v15, @"restorexbl_sc.elf");
      if (v21 && (v23 = sub_1000092CC(v21, v22, @"Info.plist"), v23) && (v25 = sub_1000092CC(v23, v24, @"xbl_sc.elf"), v25) && (v27 = sub_1000092CC(v25, v26, @"multi_image.mbn"), v27) && (v29 = sub_1000092CC(v27, v28, @"signed_firmware_soc_view.elf"), v29) && (v31 = sub_1000092CC(v29, v30, @"Info.plist"), v31))
      {
        sub_1000092CC(v31, v32, @"bbcfg.mbn");
        AMAuthInstallBasebandMeasureFirmwareFromBbfw(0, a1, @"pt.mbn", AMAuthInstallMonetMeasurePT, v3, a3);
        v4 = 0;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25MeasureFirmware", "failed to open bbfw archive for reading", v9, v10, v11, v12, v13, v34);
      v4 = 4;
    }
  }

  BbfwReaderClose(v3);
  return v4;
}

uint64_t AMAuthInstallBasebandMAV25StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"aop_devcfg.mbn");
      v14 = sub_1000093DC(v13, @"aop.mbn");
      v15 = sub_1000093DC(v14, @"apdp.mbn");
      v16 = sub_1000093DC(v15, @"apps.mbn");
      v17 = sub_1000093DC(v16, @"bbcfg.mbn");
      v18 = sub_1000093DC(v17, @"cpucp.elf");
      v19 = sub_1000093DC(v18, @"devcfg.mbn");
      sub_1000093DC(v19, @"hyp.mbn");
      v20 = sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      sub_1000093DC(v20, @"mdmddr.mbn");
      v21 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v22 = sub_1000093DC(v21, @"multi_image_qti.mbn");
      v23 = sub_1000093DC(v22, @"qdsp6sw.mbn");
      v24 = sub_1000093DC(v23, @"qdsp6sw_dtbs.elf");
      sub_1000093DC(v24, @"qupv3fw.elf");
      v25 = sub_1000093A4(a1, @"restorexbl_sc.elf", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093DC(v25, @"sec.elf");
      v26 = sub_1000093A4(a1, @"sequencer_ram.elf", AMAuthInstallBasebandStitchCopyFile);
      sub_1000093DC(v26, @"shrm.elf");
      v27 = sub_1000093A4(a1, @"signed_firmware_soc_view.elf", AMAuthInstallMonetStitchTme);
      v28 = sub_1000093DC(v27, @"tz.mbn");
      v29 = sub_1000093DC(v28, @"uefi.elf");
      sub_1000093DC(v29, @"xbl_cfg.elf");
      v30 = sub_1000093A4(a1, @"xbl_sc.elf", AMAuthInstallMonetStitchSbl1);
      v31 = sub_1000093DC(v30, @"xbl_support.elf");
      sub_1000093DC(v31, @"pt.mbn");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV25StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v33);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

uint64_t AMAuthInstallRembrandtMeasureBootImage(uint64_t a1, const __CFData *a2, __CFDictionary *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0;
  if (!a1)
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 1;
  if (a4)
  {
    if (a3)
    {
      if (a2)
      {
        v13 = *(a1 + 48);
        if (v13)
        {
          if ((*(v13 + 4) - 94) <= 0xA)
          {
            sub_100010578();
            if (!v16)
            {
              v17 = CFGetAllocator(v14);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA256(v17, a2, &value);
              goto LABEL_11;
            }

            if ((v15 & 0x401) != 0)
            {
              v19 = CFGetAllocator(v14);
              DigestForData_SHA256 = AMAuthInstallCryptoCreateDigestForData_SHA384(v19, a2, &value);
LABEL_11:
              v11 = DigestForData_SHA256;
              v10 = value;
              if (!DigestForData_SHA256)
              {
                if (value)
                {
                  CFDictionarySetValue(a3, a4, value);
                  v11 = 0;
                  v10 = value;
                }

                else
                {
                  v11 = 2;
                }
              }

              goto LABEL_14;
            }
          }

          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootImage", "Unknown chipid", a4, a5, a6, a7, a8, v21);
          v10 = 0;
          v11 = 99;
        }
      }
    }
  }

LABEL_14:
  SafeRelease(v10);
  return v11;
}

uint64_t AMAuthInstallRembrandtMeasureElf(void *a1, const __CFData *a2, __CFDictionary *a3, const void *a4, void *a5)
{
  memset(&c, 0, sizeof(c));
  bzero(&v47, 0xD0uLL);
  if (CFDataGetLength(a2) <= 0x33 || (BytePtr = CFDataGetBytePtr(a2), *BytePtr != 1179403647))
  {
    v44 = "invalid file format";
LABEL_16:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", v44, v10, v11, v12, v13, v14, v45);
    Mutable = 0;
    v31 = 0;
    v42 = 10;
    goto LABEL_13;
  }

  v16 = BytePtr;
  v17 = &BytePtr[*(BytePtr + 7)];
  if ((v17[6] & 0x7000000) == 0x4000000)
  {
    v44 = "file lacks a hash section";
    goto LABEL_16;
  }

  v18 = CFDataGetBytePtr(a2);
  v19 = v17[1];
  AMAuthInstallLogDumpMemory(7, "AMAuthInstallRembrandtMeasureElf", "hash section", &v18[v19], v17[4], v20, v21, v22);
  v23 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v23, 0);
  if (!Mutable)
  {
    v31 = 0;
    goto LABEL_18;
  }

  key = a5;
  v25 = CFGetAllocator(a1);
  v31 = CFDataCreateMutable(v25, 0);
  if (!v31)
  {
LABEL_18:
    v42 = 2;
    goto LABEL_13;
  }

  if ((*(a1[6] + 4) - 94) > 0xA)
  {
    goto LABEL_11;
  }

  sub_100010578();
  if (v33)
  {
    if ((v32 & 0x401) != 0)
    {
      CFDataSetLength(Mutable, 48);
      CC_SHA384_Init(&v47);
      CC_SHA384_Update(&v47, v16, v16[20]);
      CC_SHA384_Update(&v47, v17, v16[21] * v16[22]);
      CC_SHA384_Update(&v47, &v18[v19], v17[4]);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      CC_SHA384_Final(MutableBytePtr, &v47);
      CFDataSetLength(v31, 48);
      v39 = CFDataGetBytePtr(a2);
      Length = CFDataGetLength(a2);
      v41 = CFDataGetMutableBytePtr(v31);
      CC_SHA384(v39, Length, v41);
      goto LABEL_12;
    }

LABEL_11:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureElf", "Unknown chipid", v26, v27, v28, v29, v30, v45);
    goto LABEL_12;
  }

  CFDataSetLength(Mutable, 32);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, v16, v16[20]);
  CC_SHA256_Update(&c, v17, v16[21] * v16[22]);
  CC_SHA256_Update(&c, &v18[v19], v17[4]);
  v34 = CFDataGetMutableBytePtr(Mutable);
  CC_SHA256_Final(v34, &c);
  CFDataSetLength(v31, 32);
  v35 = CFDataGetBytePtr(a2);
  v36 = CFDataGetLength(a2);
  v37 = CFDataGetMutableBytePtr(v31);
  CC_SHA256(v35, v36, v37);
LABEL_12:
  CFDictionarySetValue(a3, key, v31);
  CFDictionarySetValue(a3, a4, Mutable);
  v42 = 0;
LABEL_13:
  SafeRelease(v31);
  SafeRelease(Mutable);
  return v42;
}

uint64_t AMAuthInstallRembrandtMeasureBootPSI(void *a1, CFDataRef theData, __CFDictionary *a3, const void *a4, const __CFString *a5)
{
  v5 = 0;
  valuePtr = 0;
  v61 = 0;
  bytes = 0u;
  v60 = 0u;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v6 = 1;
  if (!a1 || !theData)
  {
    v9 = 0;
    goto LABEL_36;
  }

  v9 = 0;
  if (a3)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v14 = BytePtr[4];
    v15 = BytePtr[5];
    v17 = BytePtr[9];
    v16 = BytePtr[10];
    Length = CFDataGetLength(theData);
    v24 = *(a1[6] + 4);
    if (v24 == 96)
    {
      if (Length <= v15)
      {
        AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v15);
LABEL_44:
        v6 = 0;
        v5 = 0;
        v9 = 0;
        goto LABEL_36;
      }
    }

    else if (Length <= v17)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "gpuk2_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v17);
      goto LABEL_44;
    }

    if (Length <= v16)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "signature_offset %d >= sizeToMeasure %lld", v19, v20, v21, v22, v23, v16);
      goto LABEL_44;
    }

    if (Length != v14)
    {
      AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "size %d != sizeToMeasure %lld", v19, v20, v21, v22, v23, v14);
      goto LABEL_44;
    }

    v25 = v24 == 104 || v24 == 94;
    if (v25)
    {
      v26 = 36;
    }

    else
    {
      v26 = 52;
    }

    if (v25)
    {
      v27 = 127;
    }

    else
    {
      v27 = 63;
    }

    if (v25)
    {
      v28 = -92;
    }

    else
    {
      v28 = -76;
    }

    if ((v24 - 94) <= 0xA)
    {
      v29 = v16 + v28 - ((v16 + v26) & v27);
      sub_100010578();
      if (!v25)
      {
        goto LABEL_32;
      }

      if ((v30 & 0x401) != 0)
      {
        if (CFStringCompare(@"PSI2-PartialDigest", a5, 0) && CFStringCompare(@"RestorePSI2-PartialDigest", a5, 0))
        {
          AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA384 to hash %@", v31, v32, v33, v34, v35, a4);
          v36 = CFDataGetBytePtr(theData);
          bzero(&c, 0xD0uLL);
          CC_SHA384_Init(&c);
          CC_SHA384_Update(&c, v36, v29);
          for (i = 0; i != 64; i += 16)
          {
            *&v57[i / 4 + 2] = vrev64q_s8(*&c.hash[i / 8]);
          }

          v57[0] = v16 - v29;
          v57[1] = v29;
          v38 = CFGetAllocator(a1);
          p_bytes = v57;
          v40 = 72;
LABEL_33:
          v9 = CFDataCreate(v38, p_bytes, v40);
          if (v9)
          {
            CFDictionarySetValue(a3, a5, v9);
            valuePtr = *(CFDataGetBytePtr(theData) + 1024);
            AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "%@: version=0x%x", v47, v48, v49, v50, v51, a4);
            v52 = CFGetAllocator(a1);
            v5 = CFNumberCreate(v52, kCFNumberSInt32Type, &valuePtr);
            if (v5)
            {
              CFDictionarySetValue(a3, a4, v5);
              v6 = 0;
              goto LABEL_36;
            }

LABEL_39:
            v6 = 2;
            goto LABEL_36;
          }

LABEL_38:
          AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "%s CFDataCreate failed", v42, v43, v44, v45, v46, "AMAuthInstallRembrandtMeasureBootPSI");
          v5 = 0;
          v9 = 0;
          goto LABEL_39;
        }

        AMAuthInstallLog(6, "AMAuthInstallRembrandtMeasureBootPSI", "Using SHA256 to hash %@", v31, v32, v33, v34, v35, a4);
LABEL_32:
        v41 = CFDataGetBytePtr(theData);
        sub_10000F65C(v41, v29, (&bytes + 8));
        LODWORD(bytes) = v16 - v29;
        DWORD1(bytes) = v29;
        v38 = CFGetAllocator(a1);
        p_bytes = &bytes;
        v40 = 40;
        goto LABEL_33;
      }
    }

    AMAuthInstallLog(3, "AMAuthInstallRembrandtMeasureBootPSI", "Unknown chipid", v19, v20, v21, v22, v23, v54);
    goto LABEL_38;
  }

LABEL_36:
  SafeRelease(v9);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallRembrandtLocalCreateSigningResponse(void *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  valuePtr = 0;
  v81 = 0;
  value = 0;
  v79 = 0;
  v80 = 0;
  v9 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v9, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", "Failed to allocate responseDict", v12, v13, v14, v15, v16, v75);
    sub_100010778();
LABEL_61:
    v29 = 2;
    goto LABEL_48;
  }

  v18 = AMAuthInstallRembrandtLocalRegisterKeys(a1, v10, v11, v12, v13, v14, v15, v16);
  if (v18)
  {
    v29 = v18;
    sub_100010778();
    goto LABEL_48;
  }

  v19 = CFDictionaryGetValue(a2, @"BbSNUM");
  if (!v19 || (v3 = v19, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing SNUM";
    goto LABEL_36;
  }

  v25 = CFDictionaryGetValue(a2, @"BbChipID");
  if (!v25 || (v3 = v25, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing chipid";
    goto LABEL_36;
  }

  if (!CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
  {
    v60 = "failed to read chipid";
LABEL_36:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateSigningResponse", v60, v20, v21, v22, v23, v24, v75);
    sub_100010778();
LABEL_37:
    v29 = 1;
    goto LABEL_48;
  }

  v26 = CFDictionaryGetValue(a2, @"BbGoldCertId");
  if (!v26 || (v3 = v26, TypeID = CFNumberGetTypeID(), TypeID != CFGetTypeID(v3)))
  {
    v60 = "bad or missing certid";
    goto LABEL_36;
  }

  v27 = CFDictionaryGetValue(a2, @"BasebandFirmware");
  if (!v27 || (v5 = v27, v3 = CFDictionaryGetTypeID(), v3 != CFGetTypeID(v5)))
  {
    v60 = "bad or missing baseband firmware dict";
    goto LABEL_36;
  }

  v28 = CFGetAllocator(a1);
  v29 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v28, a2, 2uLL);
  v3 = DeepCopy;
  if (!DeepCopy)
  {
    v5 = 0;
    TypeID = 0;
    goto LABEL_48;
  }

  v31 = CFDictionaryGetValue(DeepCopy, @"BasebandFirmware");
  v32 = CFGetAllocator(a1);
  TypeID = CFDictionaryCreateMutable(v32, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!TypeID)
  {
    v5 = 0;
    goto LABEL_61;
  }

  theDict = v31;
  CFDictionarySetValue(Mutable, @"BasebandFirmware", TypeID);
  v33 = CFDictionaryGetValue(v5, @"PSI-PartialDigest");
  if (v33)
  {
    v34 = CFDataGetTypeID();
    if (v34 != CFGetTypeID(v33))
    {
      goto LABEL_53;
    }

    v35 = sub_1000712C4(a1, v33, &value);
    if (v35)
    {
LABEL_56:
      v29 = v35;
      v5 = 0;
      goto LABEL_48;
    }

    CFDictionarySetValue(TypeID, @"PSI-Blob", value);
  }

  v36 = CFDictionaryGetValue(v5, @"RestorePSI-PartialDigest");
  if (!v36)
  {
    goto LABEL_22;
  }

  v37 = v36;
  v38 = CFDataGetTypeID();
  if (v38 != CFGetTypeID(v37))
  {
LABEL_53:
    v5 = 0;
    goto LABEL_37;
  }

  v35 = sub_1000712C4(a1, v37, &v81);
  if (v35)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI-Blob", v81);
LABEL_22:
  v39 = CFDictionaryGetValue(v5, @"PSI2-PartialDigest");
  if (v33)
  {
    v40 = CFDataGetTypeID();
    if (v40 != CFGetTypeID(v33))
    {
      goto LABEL_53;
    }
  }

  if (v39)
  {
    v35 = sub_1000712C4(a1, v39, &v80);
    if (v35)
    {
      goto LABEL_56;
    }

    CFDictionarySetValue(TypeID, @"PSI2-Blob", v80);
  }

  v41 = CFDictionaryGetValue(v5, @"RestorePSI2-PartialDigest");
  if (!v41)
  {
    goto LABEL_29;
  }

  v42 = v41;
  v43 = CFDataGetTypeID();
  if (v43 != CFGetTypeID(v42))
  {
    goto LABEL_53;
  }

  v35 = sub_1000712C4(a1, v42, &v79);
  if (v35)
  {
    goto LABEL_56;
  }

  CFDictionarySetValue(TypeID, @"RestorePSI2-Blob", v79);
LABEL_29:
  v5 = 0;
  sub_100010764();
  if (!(!v45 & v44))
  {
    sub_100010578();
    if (!v45)
    {
      v47 = value;
      memset(&c, 0, 104);
      v48 = CFGetAllocator(a1);
      v49 = CFDataCreateMutable(v48, 32);
      v50 = v49;
      if (v49)
      {
        v76 = TypeID;
        v51 = Mutable;
        v52 = v3;
        v53 = a3;
        CFDataSetLength(v49, 32);
        BytePtr = CFDataGetBytePtr(v33);
        v55 = *(BytePtr + 1);
        CC_SHA256_Init(&c);
        for (i = 8; i != 40; i += 4)
        {
          *(c.count + i) = bswap32(*&BytePtr[i]);
        }

        c.count[0] = v55;
        v57 = CFDataGetBytePtr(v47);
        Length = CFDataGetLength(v47);
        CC_SHA256_Update(&c, v57, Length);
        MutableBytePtr = CFDataGetMutableBytePtr(v50);
        CC_SHA256_Final(MutableBytePtr, &c);
        v5 = CFRetain(v50);
        v29 = 0;
        a3 = v53;
        v3 = v52;
        Mutable = v51;
        TypeID = v76;
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if ((v46 & 0x401) != 0)
    {
      v61 = value;
      bzero(&c, 0xD0uLL);
      v62 = CFGetAllocator(a1);
      v63 = CFDataCreateMutable(v62, 48);
      v50 = v63;
      if (v63)
      {
        v77 = a3;
        CFDataSetLength(v63, 48);
        v64 = CFDataGetBytePtr(v33);
        v65 = (v64 + 8);
        v66 = *(v64 + 1);
        CC_SHA384_Init(&c);
        for (j = 2; j != 10; ++j)
        {
          v68 = *v65++;
          c.count[j] = bswap64(v68);
        }

        c.count[0] = v66;
        c.count[1] = 0;
        v69 = CFDataGetBytePtr(v61);
        v70 = CFDataGetLength(v61);
        CC_SHA384_Update(&c, v69, v70);
        v71 = CFDataGetMutableBytePtr(v50);
        CC_SHA384_Final(v71, &c);
        v5 = CFRetain(v50);
        v29 = 0;
        a3 = v77;
LABEL_43:
        SafeRelease(v50);
        CFDictionarySetValue(theDict, @"PSI-DownloadDigest", v5);
        if (!v50)
        {
          goto LABEL_48;
        }

        goto LABEL_44;
      }

LABEL_62:
      v5 = 0;
      v29 = 2;
      goto LABEL_43;
    }
  }

LABEL_44:
  if (CFDictionaryContainsKey(a2, @"@BBTicket"))
  {
    v72 = *(a1[6] + 4);
    RootTicket = AMAuthInstallMaverickLocalCreateRootTicket();
    if (RootTicket)
    {
      v29 = RootTicket;
      goto LABEL_48;
    }

    CFDictionarySetValue(Mutable, @"BBTicket", 0);
  }

  *a3 = CFRetain(Mutable);
  AMAuthInstallDebugWriteObject(a1, a2, @"tss-request-bb-local", 2);
  AMAuthInstallDebugWriteObject(a1, Mutable, @"tss-response-bb-local", 2);
  v29 = 0;
LABEL_48:
  SafeRelease(TypeID);
  SafeRelease(value);
  SafeRelease(v81);
  SafeRelease(v80);
  SafeRelease(v79);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(Mutable);
  SafeRelease(v5);
  SafeRelease(0);
  return v29;
}

uint64_t sub_1000712C4(void *a1, const __CFData *a2, CFTypeRef *a3)
{
  memset(&c, 0, sizeof(c));
  bzero(&v130, 0xD0uLL);
  v129 = 0;
  v128 = 0;
  sub_100010764();
  if (!(!v12 & v11))
  {
    sub_100010578();
    if (!v12)
    {
      v14 = 256;
      goto LABEL_6;
    }

    if ((v13 & 0x401) != 0)
    {
      v14 = 104;
LABEL_6:
      v128 = v14;
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v6, v7, v8, v9, v10, v126);
  if (!a1[6])
  {
    v27 = "amai->bbParameters is NULL";
    goto LABEL_52;
  }

  v14 = 0;
  if (!a3)
  {
LABEL_14:
    v27 = "outPsiStitchDataData is NULL";
LABEL_52:
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", v27, v6, v7, v8, v9, v10, v126);
    v23 = 0;
    MutableCopy = 0;
    Mutable = 0;
    goto LABEL_53;
  }

LABEL_7:
  v15 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v15, 0);
  if (!Mutable)
  {
    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is NULL", v16, v17, v18, v19, v20, v126);
    v23 = 0;
    goto LABEL_55;
  }

  theData = 0;
  v22 = *(a1[6] + 4) - 94;
  if (v22 < 0xB && ((0x685u >> v22) & 1) != 0)
  {
    v28 = sub_100071AB8(a1, off_1000AA5F8[v22], &theData, v16, v17, v18, v19, v20);
    if (v28)
    {
      v25 = v28;
      v23 = 0;
      MutableCopy = 0;
      goto LABEL_11;
    }

    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v30 = sub_1000034C0();
    CFDataAppendBytes(v30, BytePtr, v31);
    bytes[0] = xmmword_100084BB7;
    bytes[1] = algn_100084BC7;
    CFDataAppendBytes(Mutable, bytes, 32);
    sub_100010764();
    if (!(!v12 & v11))
    {
      sub_100010578();
      if (!v12)
      {
        v38 = CFDataGetBytePtr(a2);
        v39 = v38;
        v40 = 0;
LABEL_21:
        v41 = *v38;
LABEL_22:
        v42 = v41;
        Length = CFDataGetLength(Mutable);
        if (CFDataGetLength(Mutable) + 12 > v41)
        {
          CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "masteredReservationLength %d < CFDataGetLength(stitchData) %lld + snumLength %d", v109, v110, v111, v112, v113, v41);
          v23 = 0;
          goto LABEL_59;
        }

        v44 = v41 - Length - 12;
        if (v42 - Length == 12)
        {
          v23 = 0;
          goto LABEL_27;
        }

        v45 = malloc(v42 - Length - 12);
        v23 = v45;
        if (v45)
        {
          memset(v45, 255, v44);
          CFDataAppendBytes(Mutable, v23, v44);
LABEL_27:
          v51 = CFDataGetBytePtr(*(a1[6] + 16));
          CFDataGetLength(*(a1[6] + 16));
          v52 = sub_1000034C0();
          CFDataAppendBytes(v52, v51, v53);
          v54 = CFDataGetLength(*(a1[6] + 16));
          v60 = a1[6];
          if (v54 != 12)
          {
            v114 = CFDataGetLength(*(v60 + 16));
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(amai->bbParameters->snum) %lld != snumLength %d", v115, v116, v117, v118, v119, v114);
            goto LABEL_59;
          }

          if ((*(v60 + 4) - 94) > 0xA)
          {
            goto LABEL_39;
          }

          sub_100010578();
          if (!v12)
          {
            v62 = *(v39 + 1);
            CC_SHA256_Init(&c);
            for (i = 2; i != 10; ++i)
            {
              c.count[i] = bswap32(*&v39[i * 4]);
            }

            c.count[0] = v62;
            c.count[1] = 0;
            v64 = CFDataGetBytePtr(Mutable);
            v65 = CFDataGetLength(Mutable);
            CC_SHA256_Update(&c, v64, v65);
            CC_SHA256_Final(md, &c);
            AMAuthInstallCryptoCreateRsaSignatureWithSHA256();
            if (CFDataGetLength(v129) != v14)
            {
              v71 = CFDataGetLength(v129);
              AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "CFDataGetLength(signatureData) %lld != signatureLength %d", v72, v73, v74, v75, v76, v71);
LABEL_59:
              MutableCopy = 0;
              goto LABEL_53;
            }

            goto LABEL_40;
          }

          if ((v61 & 0x401) != 0)
          {
            v77 = (v40 + 8);
            v78 = *(v40 + 1);
            CC_SHA384_Init(&v130);
            for (j = 2; j != 10; ++j)
            {
              v80 = *v77++;
              v130.count[j] = bswap64(v80);
            }

            v130.count[0] = v78;
            v130.count[1] = 0;
            v81 = CFDataGetBytePtr(Mutable);
            v82 = CFDataGetLength(Mutable);
            CC_SHA384_Update(&v130, v81, v82);
            LOBYTE(v81) = *CFDataGetBytePtr(Mutable);
            CFDataGetLength(Mutable);
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "STITCH ptr 0x%x STITCH data 0x%x", v83, v84, v85, v86, v87, v81);
            CC_SHA384_Final(md, &v130);
            AMAuthInstallCryptoCreateEcdsaSignatureWithSHA384();
          }

          else
          {
LABEL_39:
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v55, v56, v57, v58, v59, v126);
          }

LABEL_40:
          if (!v129)
          {
            AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "amai is NULL", v66, v67, v68, v69, v70, v126);
            goto LABEL_59;
          }

          v88 = 0;
          MutableCopy = 0;
          switch(*(a1[6] + 4))
          {
            case '^':
            case 'h':
              v89 = CFDataGetBytePtr(v129);
              CFDataGetLength(v129);
              v90 = sub_1000034C0();
              CFDataAppendBytes(v90, v89, v91);
              CFDataAppendBytes(Mutable, byte_10008577D, 463);
              CFDataAppendBytes(Mutable, byte_10008594C, 450);
              LODWORD(v89) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 5231);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              memset(&MutableBytePtr[v89], 255, 0x146FuLL);
              v93 = CFDataGetLength(v129);
              MutableCopy = 0;
              v94 = 6144;
              goto LABEL_44;
              v99 = CFGetAllocator(a1);
              MutableCopy = CFDataCreateMutableCopy(v99, 0, v129);
              v100 = CFDataGetMutableBytePtr(MutableCopy);
              v101 = CFDataGetLength(MutableCopy);
              if ((v101 & 0xFFFFFFFE) != 0)
              {
                v102 = v101 >> 1;
                v103 = v101 - 1;
                v104 = v100;
                do
                {
                  v105 = v100[v103];
                  v100[v103] = *v104;
                  *v104++ = v105;
                  --v103;
                  --v102;
                }

                while (v102);
              }

              v106 = CFDataGetBytePtr(MutableCopy);
              CFDataGetLength(MutableCopy);
              v107 = sub_1000034C0();
              CFDataAppendBytes(v107, v106, v108);
              CFDataAppendBytes(Mutable, byte_100084BD7, 540);
              CFDataAppendBytes(Mutable, byte_100084DF3, 796);
              v88 = v42 + CFDataGetLength(MutableCopy) + 1336;
              break;
            case 'e':
            case 'g':
              v95 = CFDataGetBytePtr(v129);
              CFDataGetLength(v129);
              v96 = sub_1000034C0();
              CFDataAppendBytes(v96, v95, v97);
              CFDataAppendBytes(Mutable, byte_10008510F, 818);
              CFDataAppendBytes(Mutable, byte_100085441, 828);
              LODWORD(v95) = CFDataGetLength(Mutable);
              CFDataIncreaseLength(Mutable, 4490);
              v98 = CFDataGetMutableBytePtr(Mutable);
              memset(&v98[v95], 255, 0x118AuLL);
              v93 = CFDataGetLength(v129);
              MutableCopy = 0;
              v94 = 6136;
LABEL_44:
              v88 = v42 + v94 + v93;
              break;
            default:
              break;
          }

          if (v88 == CFDataGetLength(Mutable))
          {
            v25 = 0;
            *a3 = CFRetain(Mutable);
            goto LABEL_11;
          }

          v120 = CFDataGetLength(Mutable);
          AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "stitchData is %lld, expected size is %d", v121, v122, v123, v124, v125, v120);
LABEL_53:
          v25 = 1;
          goto LABEL_11;
        }

        AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "paddingBytes is NULL", v46, v47, v48, v49, v50, v126);
LABEL_55:
        MutableCopy = 0;
        v25 = 2;
        goto LABEL_11;
      }

      if ((v37 & 0x401) != 0)
      {
        v38 = CFDataGetBytePtr(a2);
        v40 = v38;
        v39 = 0;
        goto LABEL_21;
      }
    }

    AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v32, v33, v34, v35, v36, v126);
    v41 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_22;
  }

  AMAuthInstallLog(3, "_AMAuthInstallRembrandtLocalCreatePSIStitchData", "invalid chipid", v16, v17, v18, v19, v20, v126);
  v23 = 0;
  MutableCopy = 0;
  v25 = 99;
LABEL_11:
  SafeRelease(Mutable);
  SafeRelease(v129);
  SafeRelease(MutableCopy);
  SafeFree(v23);
  return v25;
}

uint64_t sub_100071AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  if (!a1 || !a2 || !a3)
  {
    return v9;
  }

  if ((*(*(a1 + 48) + 4) - 94) > 0xA)
  {
    goto LABEL_13;
  }

  sub_100010578();
  if (!v11)
  {

    return AMAuthInstallCryptoCreateDigestForKey_SHA256();
  }

  if ((v10 & 0x401) == 0)
  {
LABEL_13:
    AMAuthInstallLog(3, "AMAuthInstallRembrandtLocalCreateDigestForKey", "Unknown chipid", a4, a5, a6, a7, a8, v8);
    return 99;
  }

  return AMAuthInstallCryptoCreateDigestForOnlyKeySha384();
}

uint64_t AMAuthInstallRequestSendSyncWithHeader(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v144 = 0;
  cf = 0;
  v143 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 2;
  DeepCopy = CFPropertyListCreateDeepCopy(v8, a2, 2uLL);
  theDict = DeepCopy;
  if (!DeepCopy)
  {
    goto LABEL_28;
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFDictionarySetValue(DeepCopy, @"@Locality", v16);
  }

  v17 = (a1 + 120);
  v18 = *(a1 + 120);
  v19 = v18;
  if (!v18)
  {
    if (!*(a1 + 104))
    {
      AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO function returned NULL and no SSO token was provided, SSO disabled.", v11, v12, v13, v14, v15, v137);
      goto LABEL_15;
    }

    AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "using SSO.", v11, v12, v13, v14, v15, v137);
    v19 = *v17;
    if (!*v17)
    {
      v25 = *(a1 + 104);
      v26 = CFGetAllocator(a1);
      v27 = v25(a1, v26, a1 + 120, &v143);
      if (v27)
      {
        v9 = v27;
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed to create sso data %@", v28, v29, v30, v31, v32, v143);
        Data = 0;
        goto LABEL_13;
      }

      v19 = *v17;
      if (!*v17)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "SSO failed to authenticate.", v28, v29, v30, v31, v32, v137);
        Data = 0;
        v34 = 0;
        v9 = 22;
        goto LABEL_29;
      }
    }
  }

  AMAuthInstallCryptoCreateDigestForData(kCFAllocatorDefault, v19, &cf);
  if (cf)
  {
    AMAuthInstallLog(7, "AMAuthInstallRequestSendSyncWithHeader", "AuthUserId Hash: %@", v20, v21, v22, v23, v24, cf);
    CFRelease(cf);
  }

  CFDictionarySetValue(theDict, @"AuthUserId", *v17);
  if (!v18)
  {
    SafeRelease(*v17);
    *v17 = 0;
  }

LABEL_15:
  v35 = *(a1 + 16);
  if (!v35)
  {
    goto LABEL_21;
  }

  if (*(v35 + 160))
  {
    context = a1;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    if (MutableCopy)
    {
      CFDictionaryApplyFunction(theDict, sub_100010788, &context);
      SafeRelease(theDict);
      theDict = MutableCopy;
      v35 = *(a1 + 16);
      if (!v35)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "fullrequest copy allocation failure", v36, v37, v38, v39, v40, v137);
    Data = 0;
    v9 = 0;
LABEL_13:
    v34 = 0;
    goto LABEL_29;
  }

LABEL_19:
  v41 = *(v35 + 152);
  if (v41)
  {
    CFDictionaryApplyFunction(v41, sub_100010900, theDict);
  }

LABEL_21:
  v42 = theDict;
  SimplePlatformInfoString = AMAuthInstallPlatformGetSimplePlatformInfoString();
  CFDictionarySetValue(v42, @"@HostPlatformInfo", SimplePlatformInfoString);
  v44 = theDict;
  LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
  CFDictionarySetValue(v44, @"@VersionInfo", LibraryVersionString);
  v46 = *(a1 + 16);
  if (!v46 || !*(v46 + 132))
  {
    CFDictionarySetValue(theDict, @"@BBTicket", kCFBooleanTrue);
  }

  v47 = *(a1 + 96);
  if (v47)
  {
    CFDictionarySetValue(theDict, @"@UUID", v47);
  }

  v48 = AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(a1, &theDict);
  if (v48)
  {
    v9 = v48;
    AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "AMAuthInstallVinylRemoveFirmwareLoaderVersionTag %d", v49, v50, v51, v52, v53, v48);
LABEL_28:
    Data = 0;
    v34 = 0;
    goto LABEL_29;
  }

  v9 = 2;
  AMAuthInstallDebugWriteObject(a1, theDict, @"tss-request", 2);
  session = tss_create_session(&stru_1000ABB18, *(a1 + 72));
  v34 = session;
  if (!session)
  {
    Data = 0;
    goto LABEL_29;
  }

  CFRelease(session[3]);
  *(v34 + 24) = CFRetain(theDict);
  *(v34 + 16) = *(a1 + 80);
  *(v34 + 80) = *(a1 + 488);
  *(v34 + 88) = *(a1 + 512);
  if (*(v34 + 32))
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorMalloc, 0, a3);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  *(v34 + 32) = Mutable;
  v71 = *(a1 + 16);
  if (v71 && !*(v71 + 160))
  {
    sub_100010984(Mutable, @"x-intnt-apchipid", *(v71 + 8));
    v72 = *(v34 + 32);
    v73 = *(*(a1 + 16) + 64);
    context = 0;
    if (v72 && v73 && CFNumberGetValue(v73, kCFNumberSInt64Type, &context))
    {
      sub_100010984(v72, @"x-intnt-certcepo", context);
    }

    sub_100010984(*(v34 + 32), @"x-intnt-apsecuritydomain", *(*(a1 + 16) + 16));
    v74 = *(v34 + 32);
    if (v74)
    {
      v75 = *(*(a1 + 16) + 88) ? @"yes" : @"no";
      CFDictionarySetValue(v74, @"x-intnt-apsecuritymode", v75);
      v74 = *(v34 + 32);
      if (v74)
      {
        if (*(*(a1 + 16) + 20))
        {
          v76 = @"yes";
        }

        else
        {
          v76 = @"no";
        }

        CFDictionarySetValue(v74, @"x-intnt-approductionmode", v76);
        v74 = *(v34 + 32);
      }
    }

    sub_100010984(v74, @"x-intnt-apboardid", *(*(a1 + 16) + 12));
    sub_100010984(*(v34 + 32), @"x-intnt-apecid", **(a1 + 16));
    if (*(a1 + 104))
    {
      v77 = *(v34 + 32);
      if (v77)
      {
        CFDictionarySetValue(v77, @"x-intnt-authuserid", @"yes");
      }
    }

    v78 = *(*(a1 + 16) + 72);
    if (v78)
    {
      CFDictionarySetValue(*(v34 + 32), @"x-intnt-usbserialstr", v78);
    }

    v79 = *(*(a1 + 128) + 32);
    ValueForKeyPathInDict = AMSupportGetValueForKeyPathInDict();
    if (ValueForKeyPathInDict)
    {
      CFDictionarySetValue(*(v34 + 32), @"x-intnt-buildvariant", ValueForKeyPathInDict);
    }
  }

  v81 = tss_submit(v34, v64, v65, v66, v67, v68, v69, v70);
  v87 = v81;
  if (!v81)
  {
    v9 = 0;
    goto LABEL_77;
  }

  if (v81 <= 0x2710)
  {
    v88 = *(v34 + 72);
    if (v88)
    {
      v9 = v81 + 3100;
      LODWORD(context) = v81 + 3100;
      if (v81 < 0x384)
      {
        v89 = CFGetAllocator(a1);
        v95 = CFNumberCreate(v89, kCFNumberIntType, &context);
        if (v95)
        {
          CFDictionarySetValue(*(a1 + 352), v95, v88);
          AMAuthInstallLog(7, "kAMAuthInstallRequestCacheLocalizedTssError", "cached server error text: (%d) %@", v96, v97, v98, v99, v100, context);
        }

        else
        {
          AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "failed to cache server error text: (%d) %@", v90, v91, v92, v93, v94, context);
        }

        SafeRelease(v95);
        goto LABEL_76;
      }

      AMAuthInstallLog(3, "kAMAuthInstallRequestCacheLocalizedTssError", "tss error code out of bounds (%d)", v82, v83, v84, v85, v86, v81 + 28);
    }
  }

  SafeRelease(0);
  if (v87 > 9999)
  {
    if ((v87 - 10000) > 0xC)
    {
      v9 = 14;
    }

    else
    {
      v9 = dword_100085B10[v87 - 10000];
    }
  }

  else
  {
    v9 = (v87 + 3100);
  }

LABEL_76:
  LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v9);
  AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss submission: %@", v102, v103, v104, v105, v106, LocalizedStatusString);
LABEL_77:
  v107 = CFGetAllocator(a1);
  Data = CFPropertyListCreateData(v107, theDict, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (Data)
  {
    v108 = CFGetAllocator(a1);
    v114 = AMAuthInstallSupportBase64Encode(v108, Data, &v144, v109, v110, v111, v112, v113);
    if (v87)
    {
      if (!v114)
      {
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:<<<<<<<<<<\n%@", v115, v116, v117, v118, v119, v144);
        AMAuthInstallLog(3, "AMAuthInstallRequestSendSyncWithHeader", "failed tss request:>>>>>>>>>>", v120, v121, v122, v123, v124, v138);
      }
    }

    else
    {
      if (!v114)
      {
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:<<<<<<<<<<\n%@", v115, v116, v117, v118, v119, v144);
        AMAuthInstallLog(8, "AMAuthInstallRequestSendSyncWithHeader", "successful tss request:>>>>>>>>>>", v125, v126, v127, v128, v129, v139);
      }

      Value = CFDictionaryGetValue(*(v34 + 40), @"@ServerVersion");
      v136 = @"unavailable";
      if (Value)
      {
        LOBYTE(v136) = Value;
      }

      AMAuthInstallLog(5, "AMAuthInstallRequestSendSyncWithHeader", "received tss response (server version: %@)", v131, v132, v133, v134, v135, v136);
      AMAuthInstallDebugWriteObject(a1, *(v34 + 40), @"tss-response", 2);
      v9 = 0;
      if (a4)
      {
        *a4 = CFRetain(*(v34 + 40));
      }
    }
  }

LABEL_29:
  SafeRelease(0);
  SafeRelease(0);
  SafeRelease(theDict);
  SafeRelease(0);
  SafeRelease(Data);
  SafeRelease(v144);
  SafeRelease(0);
  if (v34)
  {
    tss_close_session(v34, v54, v55, v56, v57, v58, v59, v60);
  }

  return v9;
}

uint64_t AMAuthInstallSsoEnable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  if (qword_1000C87A0)
  {
    result = 0;
    *(a1 + 104) = sub_100010B50;
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallSsoEnable", "ACMobile dylib not loaded", a4, a5, a6, a7, a8, v8);
    return 99;
  }

  return result;
}

uint64_t AMAuthInstallSsoSetStealthMode(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

uint64_t sub_1000723D8(void *a1, CFStringRef *a2)
{
  result = 0;
  if (!a1)
  {
    v5 = 0;
    v6 = 0;
LABEL_25:
    v35 = 1;
    goto LABEL_20;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (!Mutable)
  {
    v6 = 0;
    goto LABEL_23;
  }

  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  v6 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, "APPLECONNECT.APPLE.COM", 22, kCFAllocatorNull);
  if (!v6)
  {
LABEL_23:
    v35 = 2;
    goto LABEL_20;
  }

  CFDictionarySetValue(v5, kSecAttrGeneric, v6);
  CFDictionarySetValue(v5, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v5, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionarySetValue(v5, kSecReturnAttributes, kCFBooleanTrue);
  v7 = SecItemCopyMatching(v5, &result);
  if (v7 == -25300)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Credentials not found", v8, v9, v10, v11, v12, v43);
    v35 = 8;
    goto LABEL_20;
  }

  if (v7)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "unexpected error: %d", v8, v9, v10, v11, v12, v7);
    v35 = 14;
    goto LABEL_20;
  }

  if (!result)
  {
    SafeRelease(0);
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Username not found", v38, v39, v40, v41, v42, v43);
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(result, kSecAttrAccount);
  *a1 = Value;
  CFRetain(Value);
  SafeRelease(0);
  if (!a2)
  {
    goto LABEL_19;
  }

  v45 = 0;
  if (result)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, result);
    v20 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, kSecReturnData, kCFBooleanTrue);
      CFDictionarySetValue(v20, kSecClass, kSecClassGenericPassword);
      v21 = SecItemCopyMatching(v20, &v45);
      if (v21 == -25300)
      {
        AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "password not found in keychain response", v22, v23, v24, v25, v26, v43);
        v36 = 0;
        v35 = 8;
      }

      else if (v21)
      {
        AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "unexpected error: %d", v22, v23, v24, v25, v26, v21);
        v36 = 0;
        v35 = 14;
      }

      else
      {
        CFDictionaryRemoveValue(v20, kSecReturnData);
        BytePtr = CFDataGetBytePtr(v45);
        Length = CFDataGetLength(v45);
        v29 = CFStringCreateWithBytes(kCFAllocatorDefault, BytePtr, Length, 0x8000100u, 0);
        *a2 = v29;
        if (v29)
        {
          v35 = 0;
          v36 = 1;
        }

        else
        {
          v35 = 3;
          AMAuthInstallLog(3, "_AMAuthInstallSsoCopyPasswordFromKeychain", "Failed to convert password", v30, v31, v32, v33, v34, v43);
          v36 = 0;
        }
      }
    }

    else
    {
      v36 = 0;
      v35 = 2;
    }
  }

  else
  {
    v36 = 0;
    v20 = 0;
    v35 = 1;
  }

  SafeRelease(v45);
  SafeRelease(v20);
  if ((v36 & 1) == 0)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Password not found", v14, v15, v16, v17, v18, v43);
  }

  else
  {
LABEL_19:
    AMAuthInstallLog(6, "_AMAuthInstallSsoCopyCredentialsFromKeychain", "Found Credentials for username=%@ ", v14, v15, v16, v17, v18, *a1);
    v35 = 0;
  }

LABEL_20:
  SafeRelease(v5);
  SafeRelease(result);
  SafeRelease(v6);
  return v35;
}

uint64_t sub_10007279C(const void *a1)
{
  result = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = Mutable;
  if (!Mutable)
  {
    MutableCopy = 0;
    v4 = 0;
LABEL_11:
    v5 = 0;
    v19 = 2;
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  v4 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, "APPLECONNECT.APPLE.COM", 22, kCFAllocatorNull);
  if (!v4)
  {
    MutableCopy = 0;
    goto LABEL_11;
  }

  CFDictionarySetValue(v3, kSecAttrGeneric, v4);
  CFDictionarySetValue(v3, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  CFDictionarySetValue(v3, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionarySetValue(v3, kSecReturnAttributes, kCFBooleanTrue);
  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v5, kSecAttrAccount, a1);
  CFDictionarySetValue(v5, kSecAttrService, @"com.apple.MobileSoftwareUpdate");
  if (!SecItemCopyMatching(v3, &result))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, result);
    CFDictionarySetValue(MutableCopy, kSecClass, kSecClassGenericPassword);
    v13 = SecItemUpdate(MutableCopy, v5);
    if (!v13)
    {
      goto LABEL_7;
    }

    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemUpdate ret=%d", v14, v15, v16, v17, v18, v13);
LABEL_14:
    v19 = 14;
    goto LABEL_8;
  }

  CFDictionarySetValue(v5, kSecClass, kSecClassGenericPassword);
  CFDictionarySetValue(v5, kSecAttrGeneric, v4);
  v6 = SecItemAdd(v5, 0);
  if (v6)
  {
    AMAuthInstallLog(3, "_AMAuthInstallSsoSaveCredentialsInKeychain", "SecItemAdd ret=%d", v7, v8, v9, v10, v11, v6);
    MutableCopy = 0;
    goto LABEL_14;
  }

  MutableCopy = 0;
LABEL_7:
  v19 = 0;
LABEL_8:
  SafeRelease(result);
  SafeRelease(MutableCopy);
  SafeRelease(0);
  SafeRelease(v3);
  SafeRelease(0);
  SafeRelease(v4);
  SafeRelease(v5);
  return v19;
}

uint64_t sub_100072A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoSUSSOInit", "copyPersonalizationSSOToken symbol not found", a4, a5, a6, a7, a8, v9);
  result = dlclose(qword_1000C87B0);
  qword_1000C87B0 = 0;
  return result;
}

uint64_t sub_100072A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMAuthInstallLog(3, "_AMAuthInstallSsoACMobileInit", "ACMobileShimGetTicket symbol not found", a4, a5, a6, a7, a8, v9);
  result = dlclose(qword_1000C87A0);
  qword_1000C87A0 = 0;
  return result;
}

uint64_t _CFDictionaryGetBoolean(const void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v16 = "dict is NULL";
LABEL_13:
    AMAuthInstallLog(3, "_CFDictionaryGetBoolean", v16, a4, a5, a6, a7, a8, v17);
    return a3;
  }

  if (!a2)
  {
    v16 = "key is NULL";
    goto LABEL_13;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    v16 = "dict is not CFDictionary";
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return a3;
  }

  v13 = Value;
  v14 = CFBooleanGetTypeID();
  if (v14 != CFGetTypeID(v13))
  {
    v16 = "dict value is not CFBoolean";
    goto LABEL_13;
  }

  return CFBooleanGetValue(v13);
}

const char *_CopyHexStringFromData(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = calloc(1uLL, (2 * (Length & 0x7FFFFFFF)) | 1);
  if (result)
  {
    v7 = result;
    if (Length)
    {
      v8 = 0;
      do
      {
        v9 = *BytePtr++;
        result[v8] = a0123456789abcd[v9 >> 4];
        result[(v8 + 1)] = a0123456789abcd[v9 & 0xF];
        v8 += 2;
      }

      while (2 * Length != v8);
    }

    v10 = CFStringCreateWithCString(a1, result, 0x8000100u);
    free(v7);
    return v10;
  }

  return result;
}

uint64_t AMAuthInstallSupportRemoveFile(const __CFURL *a1)
{
  v3 = 0;
  result = AMAuthInstallPlatformFileURLExists(a1, &v3);
  if (!result)
  {
    if (!v3)
    {
      return 0;
    }

    result = AMAuthInstallPlatformRemoveFile(a1);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMAuthInstallSupportCopyURLWithAppendedComponent(const __CFAllocator *a1, const void *a2, const __CFString *a3, Boolean a4, CFURLRef *a5)
{
  if (a2 && a3 && a5)
  {
    return AMAuthInstallPlatformCopyURLWithAppendedComponent(a1, a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000730A8(const __CFAllocator *a1, uint64_t a2, CFTypeRef cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v6 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 0);
    if (v6)
    {
      v4 = v6;
      AMAuthInstallLog(3, "_AMAuthInstallSupportCreateDataFromCopiedOrMappedFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.", v7, v8, v9, v10, v11, v14);
    }

    else
    {
      if (a4)
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromMappedFileURL();
      }

      else
      {
        DataFromMappedFileURL = AMSupportPlatformCreateDataFromFileURL();
      }

      v4 = DataFromMappedFileURL;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyDataFromHexString(int a1, CFStringRef theString, uint64_t *a3)
{
  v3 = 1;
  if (theString)
  {
    if (a3)
    {
      v3 = 3;
      if (CFStringGetCString(theString, buffer, 512, 0x8000100u))
      {
        v5 = AMSupportCopyDataFromAsciiEncodedHex();
        *a3 = v5;
        if (v5)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }
    }
  }

  return v3;
}

uint64_t AMAuthInstallSupportWriteDataToFileURL(const __CFAllocator *a1, uint64_t a2, const __CFURL *cf, int a4)
{
  cfa = 0;
  v4 = 1;
  if (!a2 || !cf)
  {
    return v4;
  }

  if (a4)
  {
    v11 = AMAuthInstallSupportRemoveFile(cf);
    if (v11)
    {
LABEL_8:
      v4 = v11;
      goto LABEL_9;
    }

LABEL_7:
    v11 = AMSupportPlatformWriteDataToFileURL();
    goto LABEL_8;
  }

  v5 = AMAuthInstallSupportCopyPreserveFileURL(a1, cf, &cfa, 1);
  if (!v5)
  {
    goto LABEL_7;
  }

  v4 = v5;
  AMAuthInstallLog(3, "AMAuthInstallSupportWriteDataToFileURL", "AMAuthInstallSupportCopyPreserveFileURL failed.", v6, v7, v8, v9, v10, v13);
LABEL_9:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyPreserveFileURL(const __CFAllocator *a1, CFTypeRef cf, CFTypeRef *a3, int a4)
{
  v4 = 1;
  v20 = 1;
  if (cf && a3)
  {
    v7 = CFRetain(cf);
    v8 = CFRetain(cf);
    v9 = 0;
    Mutable = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = AMAuthInstallPlatformFileURLExists(v7, &v20);
      if (v13)
      {
        v4 = v13;
        goto LABEL_25;
      }

      if (!v20)
      {
        goto LABEL_21;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFStringCreateWithFormat(a1, 0, @"~%d", v12);
      if (!v11)
      {
        goto LABEL_38;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      Mutable = CFStringCreateMutable(a1, 0);
      if (!Mutable)
      {
        break;
      }

      v9 = CFURLCopyFileSystemPath(cf, kCFURLPOSIXPathStyle);
      if (!v9)
      {
        goto LABEL_38;
      }

      CFStringAppend(Mutable, v9);
      CFStringAppend(Mutable, v11);
      if (v8)
      {
        CFRelease(v8);
      }

      v8 = CFRetain(v7);
      CFRelease(v7);
      v14 = CFURLCreateWithFileSystemPath(a1, Mutable, kCFURLPOSIXPathStyle, 0);
      if (!v14)
      {
        v4 = 2;
LABEL_28:
        CFRelease(v11);
        goto LABEL_29;
      }

      v7 = v14;
      if (v20)
      {
        v15 = v12 > 0x1E;
        v12 = (v12 + 1);
        if (!v15)
        {
          continue;
        }
      }

LABEL_21:
      if (a4)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v4 = 0;
      *a3 = CFRetain(v16);
      goto LABEL_25;
    }

    v9 = 0;
LABEL_38:
    v4 = 2;
LABEL_25:
    if (v7)
    {
      CFRelease(v7);
    }

    if (v11)
    {
      goto LABEL_28;
    }

LABEL_29:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v4;
}

CFIndex AMAuthInstallSupportApplyDictionaryOverrides(int a1, CFDictionaryRef theDict, CFMutableDictionaryRef *a3, const __CFString *a4)
{
  Count = 1;
  if (theDict && a3 && *a3)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = malloc(8 * Count);
    v9 = malloc(8 * Count);
    v10 = v9;
    if (v8 && v9)
    {
      CFDictionaryGetKeysAndValues(theDict, v8, v9);
      if (Count < 1)
      {
        Count = 0;
        goto LABEL_17;
      }

      v16 = "invalid overridesKey";
      v17 = v8;
      v18 = v10;
      while (1)
      {
        v19 = *v17;
        if (!*v17)
        {
LABEL_22:
          AMAuthInstallLog(3, "AMAuthInstallSupportApplyDictionaryOverrides", v16, v11, v12, v13, v14, v15, v22);
          Count = 99;
          goto LABEL_17;
        }

        v20 = *v18;
        if (!*v18)
        {
          v16 = "invalid overridesValue";
          goto LABEL_22;
        }

        if (!a4)
        {
          goto LABEL_13;
        }

        if (CFStringFind(*v17, a4, 0).location != -1)
        {
          break;
        }

LABEL_14:
        ++v18;
        ++v17;
        if (!--Count)
        {
          goto LABEL_17;
        }
      }

      v19 = *v17;
      v20 = *v18;
LABEL_13:
      CFDictionarySetValue(*a3, v19, v20);
      goto LABEL_14;
    }

    Count = 2;
    if (v8)
    {
LABEL_17:
      free(v8);
    }

    if (v10)
    {
      free(v10);
    }
  }

  return Count;
}

const __CFDictionary *AMAuthInstallSupportGetValueForKeyWithFormat(const __CFAllocator *a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a3)
  {
    return 0;
  }

  v11 = CFStringCreateWithFormatAndArguments(a1, 0, a3, &a9);
  if (!v11)
  {
    return 0;
  }

  v17 = v11;
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(a1, a2, v11, v12, v13, v14, v15, v16);
  CFRelease(v17);
  return ValueForKeyPathInDict;
}

uint64_t AMAuthInstallSupportCopyFile(uint64_t a1, const void *a2, const __CFURL *a3)
{
  cf = 0;
  v3 = 1;
  if (!a2 || !a3)
  {
    return v3;
  }

  DirectoryForURL = AMAuthInstallPlatformMakeDirectoryForURL(a3);
  if (DirectoryForURL)
  {
    v3 = DirectoryForURL;
    v14 = "AMAuthInstallSupportMakeDirectory failed.";
  }

  else
  {
    v12 = sub_1000730A8(kCFAllocatorDefault, &cf, a2, 1);
    if (v12)
    {
      v3 = v12;
      v14 = "AMAuthInstallSupportCreateDataFromFileURL failed.";
    }

    else
    {
      v3 = AMAuthInstallSupportWriteDataToFileURL(kCFAllocatorDefault, cf, a3, 1);
      if (!v3)
      {
        goto LABEL_6;
      }

      v14 = "AMAuthInstallSupportWriteDataToFileURL failed.";
    }
  }

  AMAuthInstallLog(3, "AMAuthInstallSupportCopyFile", v14, v7, v8, v9, v10, v11, v15);
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t AMAuthInstallSupportCopyStringReplacingLastComponent(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3, const void *a4, CFTypeRef *a5)
{
  v5 = 1;
  if (a2 && a4 && a5)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, a3);
    if (!ArrayBySeparatingStrings)
    {
      return 3;
    }

    v11 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
    if (!MutableCopy)
    {
      v5 = 3;
      v16 = v11;
LABEL_9:
      CFRelease(v16);
      return v5;
    }

    v13 = MutableCopy;
    Count = CFArrayGetCount(MutableCopy);
    CFArraySetValueAtIndex(v13, Count - 1, a4);
    v15 = CFStringCreateByCombiningStrings(a1, v13, a3);
    v16 = v15;
    if (v15)
    {
      v5 = 0;
      *a5 = CFRetain(v15);
    }

    else
    {
      v5 = 3;
    }

    CFRelease(v11);
    CFRelease(v13);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t AMAuthInstallSupportCreateMergedDictionary(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v4 = 1;
  if (!a2 || !a3 || !a4)
  {
    return v4;
  }

  Count = CFDictionaryGetCount(a3);
  v10 = malloc(8 * Count);
  if (!v10)
  {
    return 2;
  }

  v11 = v10;
  v12 = malloc(8 * Count);
  if (!v12)
  {
    free(v11);
    return 2;
  }

  v13 = v12;
  CFDictionaryGetKeysAndValues(a3, v11, v12);
  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a2);
  if (!MutableCopy)
  {
    v4 = 2;
    goto LABEL_22;
  }

  v26 = a1;
  v27 = a4;
  v28 = v11;
  if (Count < 1)
  {
LABEL_20:
    v4 = 0;
    *v27 = CFRetain(MutableCopy);
    goto LABEL_21;
  }

  v15 = v11;
  v16 = v13;
  while (1)
  {
    v17 = *v15;
    v18 = *v16;
    v19 = CFDictionaryGetValue(a2, *v15);
    if (v18)
    {
      v20 = v19;
      v21 = CFGetTypeID(v18);
      if (v21 == CFDictionaryGetTypeID() && v20 != 0)
      {
        v23 = CFGetTypeID(v20);
        if (v23 == CFDictionaryGetTypeID())
        {
          break;
        }
      }
    }

    CFDictionarySetValue(MutableCopy, v17, v18);
LABEL_16:
    ++v16;
    ++v15;
    if (!--Count)
    {
      goto LABEL_20;
    }
  }

  value = 0;
  v24 = AMAuthInstallSupportCreateMergedDictionary(v26, v20, v18, &value);
  if (!v24)
  {
    CFDictionarySetValue(MutableCopy, v17, value);
    CFRelease(value);
    goto LABEL_16;
  }

  v4 = v24;
LABEL_21:
  v11 = v28;
LABEL_22:
  free(v11);
  free(v13);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCreatePrependedFilePath(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, void *a4)
{
  v4 = 1;
  if (!a1 || !a2 || !theString || !a4)
  {
    return v4;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
  if (ValueAtIndex)
  {
    v18 = ValueAtIndex;
    v11 = sub_100012214();
    v14 = CFStringCreateWithFormat(v11, v12, v13, a2, v18);
    v15 = v14;
    if (v14)
    {
      if (Count > 1)
      {
        CFArraySetValueAtIndex(ArrayBySeparatingStrings, Count - 1, v14);
        v16 = CFStringCreateByCombiningStrings(a1, ArrayBySeparatingStrings, @"/");
      }

      else
      {
        v16 = CFRetain(v14);
      }

      v4 = 0;
      *a4 = v16;
      if (!ArrayBySeparatingStrings)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v4 = 2;
  if (ArrayBySeparatingStrings)
  {
LABEL_11:
    CFRelease(ArrayBySeparatingStrings);
  }

LABEL_12:
  if (v15)
  {
    CFRelease(v15);
  }

  return v4;
}

uint64_t AMAuthInstallSupportCopyTagAndFileURL(const __CFAllocator *a1, CFURLRef anURL, CFTypeRef *a3, CFTypeRef *a4)
{
  if (!anURL)
  {
    return 2;
  }

  v8 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  if (CFStringFind(v8, @"=", 0).location != -1)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v9, @"=");
    if (!ArrayBySeparatingStrings)
    {
      v18 = 2;
      goto LABEL_15;
    }

    v11 = ArrayBySeparatingStrings;
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
    if (ValueAtIndex && (v13 = ValueAtIndex, (v14 = CFArrayGetValueAtIndex(v11, 1)) != 0))
    {
      v15 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v14, kCFURLPOSIXPathStyle, 0);
      if (v15)
      {
        v16 = v15;
        if (!a3)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      v17 = 2;
    }

    else
    {
      v17 = 8;
    }

    CFRelease(v9);
    v16 = 0;
LABEL_13:
    CFRelease(v11);
    v18 = v17;
    goto LABEL_14;
  }

  v16 = CFRetain(anURL);
  v13 = 0;
  v11 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = CFRetain(v13);
  }

LABEL_10:
  if (a4)
  {
    *a4 = CFRetain(v16);
  }

  CFRelease(v9);
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = v16;
  if (v16)
  {
LABEL_15:
    CFRelease(v9);
  }

  return v18;
}

BOOL AMAuthInstallVinylCheckVinylFwLdrVerLegacy(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3.location = 0;
  v3.length = 2;
  CFDataGetBytes(a1, v3, buffer);
  return (buffer[1] | ((buffer[0] & 0x7F) << 8)) < 0x301u;
}

uint64_t AMAuthInstallVinylIsLegacyChipId(CFTypeRef cf, BOOL *a2)
{
  if (cf && (v3 = *(cf + 6)) != 0 && *(v3 + 160))
  {
    v5 = CFGetAllocator(cf);
    v6 = CFNumberCreate(v5, kCFNumberSInt8Type, &kAMAuthInstallVinylLegacyChipIdCutoff);
    if (v6)
    {
      v7 = CFNumberCompare(*(*(cf + 6) + 160), v6, 0);
      v8 = 0;
      *a2 = v7 == kCFCompareLessThan;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  SafeRelease(v6);
  return v8;
}

uint64_t AMAuthInstallVinylCreateMeasurements(CFTypeRef cf, const void *a2, CFDictionaryRef *a3, const void **a4)
{
  v37 = 0;
  if (!cf)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_26;
  }

  v5 = 0;
  v6 = 1;
  if (a3 && a2 && *(cf + 6))
  {
    IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v37);
    if (IsLegacyChipId)
    {
      v6 = IsLegacyChipId;
      v5 = 0;
      goto LABEL_26;
    }

    v11 = *a3;
    v12 = CFGetAllocator(cf);
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, *a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v12, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v5 = MutableCopy;
    if (!MutableCopy)
    {
      v6 = 2;
      goto LABEL_26;
    }

    if (v37)
    {
      Measurements = AMAuthInstallBasebandVinylCreateMeasurements(cf, a2, MutableCopy);
      if (!Measurements)
      {
        goto LABEL_22;
      }

      v6 = Measurements;
      goto LABEL_26;
    }

    theData = 0;
    v15 = __dst;
    memcpy(__dst, off_1000AAD90, sizeof(__dst));
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (!sub_100074CD0(cf, a2, (v15 + 16), &theData) && theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        AMAuthInstallLogDumpMemory(7, "_AMAuthInstallVinylCreateMeasurementsInternal", "eUICC IM4P", BytePtr, Length, v20, v21, v22);
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (AMSupportDigestSha256())
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylCreateMeasurementsInternal", "failed to compute digest", v23, v24, v25, v26, v27, v36);
LABEL_21:
          SafeRelease(theData);
LABEL_22:
          Value = v5;
          if (a4 && (Value = CFDictionaryGetValue(v5, *a4)) == 0)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            *a3 = CFRetain(Value);
          }

          break;
        }

        SafeRelease(theData);
        theData = 0;
        v28 = CFGetAllocator(cf);
        v29 = CFDataCreate(v28, bytes, 32);
        if (!v29)
        {
          goto LABEL_21;
        }

        v30 = v29;
        v31 = CFGetAllocator(cf);
        Mutable = CFDictionaryCreateMutable(v31, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          goto LABEL_21;
        }

        v33 = Mutable;
        CFDictionarySetValue(Mutable, *(v15 + 1), v30);
        CFDictionarySetValue(v5, *v15, v33);
        SafeRelease(v30);
        SafeRelease(v33);
      }

      v16 = 0;
      v15 = &__dst[80];
      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_26:
  SafeRelease(0);
  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallVinylServerRequestAddRequiredTags(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 48);
  if (!v4 || !v4[15] || !v4[20] || !v4[16] || !v4[17] || !v4[18])
  {
    return 1;
  }

  result = 1;
  if (theDict && v4[19])
  {
    Value = CFDictionaryGetValue(theDict, @"eUICC,Gold");
    v9 = CFDictionaryGetValue(theDict, @"eUICC,Main");
    if (Value | v9)
    {
      v15 = v9;
      CFDictionarySetValue(theDict, @"eUICC,EID", *(*(a1 + 48) + 120));
      CFDictionarySetValue(theDict, @"eUICC,ChipID", *(*(a1 + 48) + 160));
      if (Value)
      {
        CFDictionarySetValue(Value, @"Nonce", *(*(a1 + 48) + 136));
      }

      if (v15)
      {
        CFDictionarySetValue(v15, @"Nonce", *(*(a1 + 48) + 128));
      }

      CFDictionarySetValue(theDict, @"@eUICC,Ticket", kCFBooleanTrue);
      CFDictionarySetValue(theDict, @"eUICC,RootKeyIdentifier", *(*(a1 + 48) + 152));
      if (a3)
      {
        v16 = CFDictionaryGetValue(a3, @"UniqueBuildID");
        if (v16)
        {
          CFDictionarySetValue(theDict, @"UniqueBuildID", v16);
        }
      }

      v17 = *(a1 + 16);
      if (v17)
      {
        _CFDictionarySetBoolean(theDict, @"eUICC,ApProductionMode", *(v17 + 20));
      }

      return 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallVinylServerRequestAddRequiredTags", "Neither main nor gold vinyl fw found!", v10, v11, v12, v13, v14, v18);
      return 8;
    }
  }

  return result;
}

uint64_t AMAuthInstallVinylPersonalizeFirmware(void *cf, const void *a2, const void *a3, CFDictionaryRef *a4, const __CFDictionary *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = 0;
  v111 = 0;
  if (!cf || (v9 = cf[6]) == 0)
  {
    v21 = 1;
    goto LABEL_67;
  }

  if (!*(v9 + 160))
  {
    AMAuthInstallLog(3, "AMAuthInstallVinylPersonalizeFirmware", "No eUICC ChipID specified. Not personalizing VinylFirmware at this time.", a4, a5, a6, a7, a8, v103);
    v21 = 0;
    goto LABEL_67;
  }

  IsLegacyChipId = AMAuthInstallVinylCreateMeasurements(cf, a2, &v112, 0);
  if (IsLegacyChipId || (IsLegacyChipId = AMAuthInstallVinylIsLegacyChipId(cf, &v111), IsLegacyChipId))
  {
    v21 = IsLegacyChipId;
    goto LABEL_67;
  }

  v20 = v112;
  if (v111)
  {
    v21 = 1;
    if (!a4 || !v112)
    {
      goto LABEL_21;
    }

    if (!*a4)
    {
      v21 = 14;
      goto LABEL_21;
    }

    if (!a3)
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "No dstURL provided. Running in restore environment?", v15, v16, v17, v18, v19, v103);
      v21 = 0;
      goto LABEL_21;
    }

    v22 = BbfwWriterCreate(a3);
    if (v22)
    {
      v28 = v22;
      v29 = BbfwReaderOpen(a2);
      if (v29)
      {
        v30 = v29;
        Value = CFDictionaryGetValue(*a4, @"EuiccMainTicket");
        if (Value)
        {
          v32 = Value;
          TypeID = CFDataGetTypeID();
          if (TypeID != CFGetTypeID(v32))
          {
            goto LABEL_79;
          }

          if (BbfwWriterAddFile(v28, @"vinyl/update/main/ticket.der", v32))
          {
            goto LABEL_80;
          }
        }

        v34 = CFDictionaryGetValue(*a4, @"EuiccGoldTicket");
        if (!v34)
        {
LABEL_19:
          v21 = 0;
LABEL_20:
          BbfwWriterFinalize(v28);
          BbfwReaderClose(v30);
LABEL_21:
          SafeRelease(0);
          SafeRelease(0);
          v37 = 0;
          goto LABEL_66;
        }

        v35 = v34;
        v36 = CFDataGetTypeID();
        if (v36 == CFGetTypeID(v35))
        {
          if (!BbfwWriterAddFile(v28, @"vinyl/update/gold/ticket.der", v35))
          {
            goto LABEL_19;
          }

LABEL_80:
          v21 = 4;
          goto LABEL_20;
        }

LABEL_79:
        v21 = 17;
        goto LABEL_20;
      }

      BbfwWriterFinalize(v28);
    }

    else
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeLegacyFirmwareInternal", "failed to create output file", v23, v24, v25, v26, v27, v103);
    }

    v21 = 4;
    goto LABEL_21;
  }

  cfa = a3;
  StitchTicket = 0;
  v113[0] = 0;
  v114[0] = @"euig";
  v114[1] = @"update/gold/profile.bin";
  v114[2] = @"update/gold/info.plist";
  v115 = 0u;
  v116 = 0u;
  v117 = 0;
  v118 = @"vinyl/update/gold/ticket.der";
  v120 = 0;
  v121 = 0;
  v119 = @"EuiccGoldTicket";
  v122[0] = @"euim";
  v122[1] = @"update/main/profile.bin";
  v122[2] = @"update/main/info.plist";
  v123 = 0u;
  v124 = 0u;
  v125 = 0;
  v126 = @"vinyl/update/main/ticket.der";
  v128 = 0;
  v129 = 0;
  v21 = 1;
  v127 = @"EuiccMainTicket";
  if (!a4 || !a2)
  {
    v39 = 0;
    goto LABEL_92;
  }

  v39 = 0;
  if (!v112)
  {
LABEL_92:
    SafeRelease(StitchTicket);
    Mutable = v39;
    goto LABEL_65;
  }

  if (*a4 && CFDictionaryGetValue(*a4, @"eUICC,Ticket"))
  {
    v40 = *a4;
  }

  else
  {
    AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Vinyl server signing is enabled...", v15, v16, v17, v18, v19, v103);
    v96 = AMAuthInstallVinylServerRequestAddRequiredTags(cf, v20, a5);
    if (v96)
    {
      v21 = v96;
      if (v96 == 8)
      {
        AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Nothing to sign, skipping..", v97, v98, v99, v100, v101, v105);
        v21 = 0;
      }

      goto LABEL_78;
    }

    v102 = AMAuthInstallRequestSendSync(cf, v20, v113);
    if (v102)
    {
      v21 = v102;
      goto LABEL_78;
    }

    v40 = v113[0];
    if (!v113[0])
    {
      v21 = 14;
LABEL_78:
      SafeRelease(0);
      Mutable = 0;
      goto LABEL_65;
    }
  }

  v41 = CFDictionaryGetValue(v40, @"eUICC,Ticket");
  v42 = v41;
  if (!v41)
  {
    v21 = 17;
    goto LABEL_78;
  }

  v43 = CFGetTypeID(v41);
  if (v43 != CFDataGetTypeID())
  {
    StitchTicket = 0;
    v39 = 0;
    v21 = 17;
    goto LABEL_92;
  }

  v104 = a4;
  BytePtr = CFDataGetBytePtr(v42);
  v106 = v42;
  Length = CFDataGetLength(v42);
  AMAuthInstallLogDumpMemory(8, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "EUICC,Ticket:", BytePtr, Length, v46, v47, v48);
  v110 = 0;
  Mutable = 0;
  v50 = 0;
  StitchTicket = 0;
  v51 = v114;
  v52 = 1;
  do
  {
    v53 = v52;
    v54 = cf[6];
    v51[4] = *(v54 + 152);
    v51[5] = *(v54 + 168);
    sub_10001235C();
    v56 = BbfwReaderStart(a2, v55, v51);
    if (v56 || (sub_100012348(), v56 = BbfwReaderStart(a2, v62, v51), v56))
    {
      v21 = v56;
      AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to read zip file", v57, v58, v59, v60, v61, v104);
      goto LABEL_63;
    }

    v51[4] = 0;
    v51[5] = 0;
    if (!v51[3])
    {
      goto LABEL_34;
    }

    v63 = sub_100074CD0(cf, a2, v51, v51 + 10);
    if (v63)
    {
      v21 = v63;
      goto LABEL_63;
    }

    SafeRelease(StitchTicket);
    v64 = CFGetAllocator(cf);
    StitchTicket = AMAuthInstallApImg4CreateStitchTicket(v64, v51[10], v106);
    if (!StitchTicket)
    {
      v21 = 3;
      goto LABEL_63;
    }

    v108 = v50;
    v109 = Mutable;
    v65 = v51[3];
    memset(&v113[1] + 4, 0, 12);
    v66 = CFGetAllocator(cf);
    v67 = CFDataGetLength(StitchTicket);
    v68 = CFDataGetLength(v65);
    MutableCopy = CFDataCreateMutableCopy(v66, v68 + v67, StitchTicket);
    if (!MutableCopy)
    {
      v79 = 0;
      goto LABEL_54;
    }

    v70 = CFDataGetBytePtr(v65);
    v71 = CFDataGetLength(v65);
    CFDataAppendBytes(MutableCopy, v70, v71);
    if (!DEREncoderCreate())
    {
      goto LABEL_52;
    }

    CFDataGetBytePtr(MutableCopy);
    CFDataGetLength(MutableCopy);
    DEREncoderAddData();
    if (DEREncoderCreateEncodedBuffer())
    {
      AMAuthInstallLog(3, "_AMAuthInstallVinylStitchImg4Vad", "failed to encode img4/vad sequence", v72, v73, v74, v75, v76, v104);
      goto LABEL_42;
    }

    v77 = CFGetAllocator(cf);
    v78 = CFDataCreate(v77, v113[2], HIDWORD(v113[1]));
    v51[11] = v78;
    if (!v78)
    {
LABEL_52:
      v79 = 0;
LABEL_54:
      v21 = 2;
      goto LABEL_43;
    }

LABEL_42:
    v21 = 0;
    v79 = 1;
LABEL_43:
    DEREncoderDestroy();
    SafeFree(v113[2]);
    SafeRelease(MutableCopy);
    if (!v79)
    {
      v50 = v108;
      Mutable = v109;
      goto LABEL_63;
    }

    v50 = v108;
    Mutable = v109;
    v80 = v110;
    if (v110)
    {
      v81 = cfa;
    }

    else
    {
      v81 = cfa;
      if (cfa)
      {
        v50 = BbfwWriterCreate(cfa);
        if (!v50)
        {
          AMAuthInstallLog(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "failed to create output file", v82, v83, v84, v85, v86, v104);
          v21 = 4;
          v39 = v109;
          goto LABEL_92;
        }
      }

      v87 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v87, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v80 = 0;
    }

    v110 = v80 + 1;
    CFDictionaryAddValue(Mutable, v51[9], v51[11]);
    if (v81 && BbfwWriterAddFile(v50, v51[8], v51[11]))
    {
      v21 = 4;
      goto LABEL_63;
    }

LABEL_34:
    v52 = 0;
    v51 = v122;
  }

  while ((v53 & 1) != 0);
  if (!v110)
  {
    v88 = CFDataGetBytePtr(*(cf[6] + 152));
    v89 = CFDataGetLength(*(cf[6] + 152));
    AMAuthInstallLogDumpMemory(3, "_AMAuthInstallVinylPersonalizeFirmwareInternal", "Error finding profile matching certId", v88, v89, v90, v91, v92);
  }

  if (Mutable)
  {
    SafeRelease(*v104);
    v93 = CFGetAllocator(cf);
    Copy = CFDictionaryCreateCopy(v93, Mutable);
    *v104 = Copy;
    if (Copy)
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_63:
  SafeRelease(StitchTicket);
  if (v50)
  {
    BbfwWriterFinalize(v50);
  }

LABEL_65:
  SafeRelease(v115);
  SafeRelease(v120);
  SafeRelease(v121);
  SafeRelease(v123);
  SafeRelease(v128);
  SafeRelease(v129);
  SafeRelease(v113[0]);
  v37 = Mutable;
LABEL_66:
  SafeRelease(v37);
LABEL_67:
  SafeRelease(v112);
  return v21;
}

uint64_t AMAuthInstallVinylRemoveFirmwareLoaderVersionTag(const void *a1, CFDictionaryRef *a2)
{
  v2 = 0;
  v3 = 1;
  if (a1 && a2)
  {
    if (*a2)
    {
      v5 = CFGetAllocator(a1);
      MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, *a2);
      v2 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"EUICCFirmwareLoaderVersion");
        SafeRelease(*a2);
        v3 = 0;
        *a2 = CFRetain(v2);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  SafeRelease(v2);
  return v3;
}

uint64_t sub_100074CD0(const void *a1, const void *a2, uint64_t a3, CFDataRef *a4)
{
  memset(&buffer[5], 0, 12);
  bytesDeallocator = AMAuthInstallSupportCopyAllocator();
  Payload = 1;
  if (!a1 || !a2 || !a3)
  {
    sub_1000123A4();
    goto LABEL_26;
  }

  sub_1000123A4();
  if (a4)
  {
    v11 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v11, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100012370();
      v55 = 0;
      sub_10000C714();
      goto LABEL_44;
    }

    v13 = CFGetAllocator(a1);
    v14 = CFArrayCreateMutable(v13, 0, &kCFTypeArrayCallBacks);
    v15 = v14;
    v55 = Mutable;
    if (!v14)
    {
      v54 = 0;
      sub_10000C714();
      goto LABEL_44;
    }

    values[0] = Mutable;
    values[1] = v14;
    v16 = CFGetAllocator(a1);
    Payload = 2;
    v17 = CFArrayCreate(v16, values, 2, &kCFTypeArrayCallBacks);
    *(a3 + 48) = v17;
    v54 = v15;
    if (v17)
    {
      sub_10001235C();
      v19 = BbfwReaderStart(a2, v18, a3);
      if (!v19)
      {
        if (!*(a3 + 56))
        {
          v51 = "Failed to build vinyl info.plist dictionary";
          v52 = 3;
          goto LABEL_40;
        }

        sub_100012348();
        v19 = BbfwReaderStart(a2, v25, a3);
        if (!v19)
        {
          Count = CFArrayGetCount(Mutable);
          if (Count <= 0)
          {
            v53 = *a3;
            v51 = "No sources found for %@";
          }

          else
          {
            v4 = Count;
            if (Count == CFArrayGetCount(v15))
            {
              v6 = malloc(8 * v4);
              v5 = malloc(8 * v4);
              v61.location = 0;
              v61.length = v4;
              CFArrayGetValues(Mutable, v61, v6);
              v62.location = 0;
              v62.length = v4;
              CFArrayGetValues(v15, v62, v5);
              DEREncoderCreate();
              DEREncoderCreate();
              v27 = 0;
              while (1)
              {
                DEREncoderCreate();
                CFDataGetBytePtr(v6[v27]);
                CFDataGetLength(v6[v27]);
                if (sub_10001237C())
                {
                  break;
                }

                CFDataGetBytePtr(v5[v27]);
                CFDataGetLength(v5[v27]);
                if (sub_10001237C())
                {
                  v50 = "failed to add VAD";
                  goto LABEL_30;
                }

                if (DEREncoderAddSequenceFromEncoder())
                {
                  v50 = "failed to add certId-VAD sequence";
                  goto LABEL_30;
                }

                DEREncoderDestroy();
                if (v4 == ++v27)
                {
                  if (DEREncoderAddSequenceFromEncoder())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to add top-level sequence", v33, v34, v35, v36, v37, v53);
                    goto LABEL_26;
                  }

                  DEREncoderDestroy();
                  if (DEREncoderCreateEncodedBuffer())
                  {
                    Payload = 3;
                    AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to encode DER buffer", v38, v39, v40, v41, v42, v53);
                    sub_100012370();
                    goto LABEL_26;
                  }

                  v43 = CFGetAllocator(a1);
                  v4 = CFDataCreateWithBytesNoCopy(v43, *&buffer[9], *&buffer[5], bytesDeallocator);
                  if (v4)
                  {
                    if (CFStringGetCString(*a3, buffer, 5, 0x8000100u) && CFStringGetCString(@"1.0", v58, 5, 0x8000100u))
                    {
                      Payload = AMAuthInstallApImg4CreatePayload(buffer, v58, v4, 0, 0, a4);
                      if (Payload)
                      {
                        AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to create im4p", v44, v45, v46, v47, v48, v53);
                      }

                      sub_100012370();
                    }

                    else
                    {
                      sub_100012370();
                      Payload = 3;
                    }

                    goto LABEL_26;
                  }

                  sub_100012370();
LABEL_44:
                  Payload = 2;
                  goto LABEL_26;
                }
              }

              v50 = "failed to add certId";
LABEL_30:
              Payload = 3;
              AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", v50, v28, v29, v30, v31, v32, v53);
              goto LABEL_26;
            }

            v51 = "Count of certID != hashVad";
          }

          v52 = 4;
LABEL_40:
          AMAuthInstallLog(v52, "_AMAuthInstallVinylCreateIm4p", v51, v20, v21, v22, v23, v24, v53);
          sub_100012370();
          sub_10000C714();
          Payload = 0;
          goto LABEL_26;
        }
      }

      Payload = v19;
      AMAuthInstallLog(3, "_AMAuthInstallVinylCreateIm4p", "failed to read zip file", v20, v21, v22, v23, v24, v53);
    }

    sub_100012370();
    sub_10000C714();
  }

LABEL_26:
  SafeFree(v6);
  SafeFree(v5);
  DEREncoderDestroy();
  DEREncoderDestroy();
  DEREncoderDestroy();
  SafeRelease(v55);
  SafeRelease(v54);
  SafeRelease(*(a3 + 48));
  SafeRelease(*(a3 + 56));
  SafeRelease(v4);
  SafeRelease(bytesDeallocator);
  return Payload;
}

uint64_t sub_100075198(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  cf1 = 0;
  theData = 0;
  if (!a1 || !theString)
  {
    MutableCopy = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  MutableCopy = 0;
  v8 = 0;
  v9 = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  v8 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || (ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), AMAuthInstallSupportCopyDataFromHexString(0, ValueAtIndex, &cf1)))
  {
    v4 = 0;
LABEL_44:
    MutableCopy = 0;
    goto LABEL_45;
  }

  v13 = *(a1 + 8);
  if (!v13 || !CFStringHasSuffix(theString, v13))
  {
    v4 = 0;
    sub_10000C714();
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  v4 = sub_100075614(theString);
  if (!v4)
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(*(a1 + 56), v4);
  if (!Value)
  {
    goto LABEL_44;
  }

  v16 = CFDictionaryGetValue(Value, @"com.apple.EmbeddedSoftwareRestore.eUICC.bootloaderVersionsSupported");
  MutableCopy = v16;
  if (!v16)
  {
    goto LABEL_45;
  }

  if (CFArrayGetCount(v16) >= 1 && (v17 = CFArrayGetValueAtIndex(MutableCopy, 0)) != 0)
  {
    v9 = CFStringCreateArrayBySeparatingStrings(0, v17, @".");
    if (CFArrayGetCount(v9) == 2)
    {
      v18 = CFArrayGetValueAtIndex(v9, 0);
      IntValue = CFStringGetIntValue(v18);
      v20 = CFArrayGetValueAtIndex(v9, 1);
      v21 = ((CFStringGetIntValue(v20) | (IntValue << 8)) & 0x7FFFu) > 0x300;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v9 = 0;
  }

  SafeRelease(v9);
  v22 = *(a1 + 32);
  if (!v22)
  {
    sub_10000C714();
    goto LABEL_35;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (v21)
  {
    goto LABEL_30;
  }

  if (CFArrayGetCount(MutableCopy) < 1)
  {
    goto LABEL_30;
  }

  v23 = CFArrayGetValueAtIndex(MutableCopy, 0);
  if (!v23 || (MutableCopy = CFStringCreateArrayBySeparatingStrings(0, v23, @"."), CFArrayGetCount(MutableCopy) != 2) || (v24 = CFDataGetBytePtr(v9)) == 0 || (v25 = v24, v26 = *v24, v27 = CFArrayGetValueAtIndex(MutableCopy, 0), CFStringGetIntValue(v27) != v26) || (v9 = v25[1], v28 = CFArrayGetValueAtIndex(MutableCopy, 1), CFStringGetIntValue(v28) != v9))
  {
LABEL_30:
    MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 32));
    if (MutableCopy)
    {
      BytePtr = CFDataGetBytePtr(*(a1 + 40));
      Length = CFDataGetLength(*(a1 + 40));
      CFDataAppendBytes(MutableCopy, BytePtr, Length - 1);
      CFDataGetBytePtr(MutableCopy);
      CFDataGetLength(MutableCopy);
      if (!AMSupportDigestSha256())
      {
        SafeRelease(0);
        v9 = CFDataCreate(0, bytes, 32);
        v29 = CFEqual(cf1, v9);
        goto LABEL_33;
      }

      AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", "failed to compute digest", v32, v33, v34, v35, v36, v47);
    }

LABEL_45:
    v9 = 0;
    goto LABEL_46;
  }

  v22 = *(a1 + 32);
LABEL_28:
  CFEqual(cf1, v22);
  sub_10000C714();
LABEL_33:
  if (v29 && BbfwReaderFindAndCopyFileData(a3, theString, (a1 + 24)))
  {
    goto LABEL_49;
  }

LABEL_35:
  v42 = *(a1 + 48);
  if (!v42)
  {
    goto LABEL_9;
  }

  v43 = CFArrayGetValueAtIndex(v42, 0);
  v44 = CFArrayGetValueAtIndex(*(a1 + 48), 1);
  v3 = 0;
  if (v43)
  {
    v45 = v44;
    if (v44)
    {
      if (!cf1)
      {
        goto LABEL_46;
      }

      CFArrayAppendValue(v43, cf1);
      if (!BbfwReaderFindAndCopyFileData(a3, theString, &theData))
      {
        CFDataGetBytePtr(theData);
        CFDataGetLength(theData);
        if (!AMSupportDigestSha256())
        {
          SafeRelease(v9);
          v9 = CFDataCreate(0, bytes, 32);
          if (v9)
          {
            CFArrayAppendValue(v45, v9);
            goto LABEL_9;
          }

LABEL_46:
          v3 = 0;
          goto LABEL_10;
        }

        v46 = "failed to compute digest";
LABEL_52:
        AMAuthInstallLog(3, "__AMAuthInstallVinylFwReaderCallback", v46, v37, v38, v39, v40, v41, v47);
        goto LABEL_46;
      }

LABEL_49:
      v46 = "failed to find and/or copy data";
      goto LABEL_52;
    }
  }

LABEL_10:
  SafeRelease(theData);
  SafeRelease(cf1);
  SafeRelease(v9);
  SafeRelease(v8);
  SafeRelease(MutableCopy);
  SafeRelease(v4);
  return v3;
}

CFStringRef sub_100075614(CFStringRef filePath)
{
  if (!filePath)
  {
    Copy = 0;
    v1 = 0;
LABEL_8:
    v3 = 0;
    goto LABEL_5;
  }

  v1 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    Copy = 0;
    goto LABEL_8;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(kCFAllocatorDefault, v1);
  v3 = PathComponent;
  if (PathComponent)
  {
    v4 = CFURLGetString(PathComponent);
    Copy = CFStringCreateCopy(kCFAllocatorDefault, v4);
  }

  else
  {
    Copy = 0;
  }

LABEL_5:
  SafeRelease(v1);
  SafeRelease(v3);
  return Copy;
}

uint64_t AMAuthInstallBasebandMAV22StitchFirmware(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 1;
  if (a1 && cf && a3 && a4)
  {
    v4 = BbfwReaderOpen(cf);
    if (v4)
    {
      v12 = sub_1000093A4(a1, @"acdb.mbn", AMAuthInstallMonetStitchCopyIfPersonalized);
      v13 = sub_1000093DC(v12, @"aop.mbn");
      v14 = sub_1000093DC(v13, @"apdp.mbn");
      v15 = sub_1000093DC(v14, @"apps.mbn");
      v16 = sub_1000093DC(v15, @"bbcfg.mbn");
      v17 = sub_1000093DC(v16, @"devcfg.mbn");
      v18 = sub_1000093DC(v17, @"hyp.mbn");
      v19 = sub_1000093DC(v18, @"qdsp6sw.mbn");
      sub_1000093DC(v19, @"sec.elf");
      sub_1000093A4(a1, @"restoresbl1.mbn", AMAuthInstallMonetStitchRestoreSbl1);
      sub_1000093A4(a1, @"sbl1.mbn", AMAuthInstallMonetStitchSbl1);
      v20 = sub_1000093A4(a1, @"multi_image.mbn", AMAuthInstallMonetStitchMisc);
      v21 = sub_1000093DC(v20, @"multi_image_qti.mbn");
      sub_1000093DC(v21, @"tz.mbn");
      v22 = sub_1000093A4(a1, @"Info.plist", AMAuthInstallBasebandStitchCopyFile);
      v23 = sub_1000093DC(v22, @"xbl_cfg.elf");
      v24 = sub_1000093DC(v23, @"uefi.elf");
      sub_1000093DC(v24, @"xbl_support.elf");
      v5 = 0;
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallBasebandMAV22StitchFirmware", "failed to open bbfw archive for reading", v7, v8, v9, v10, v11, v26);
      v5 = 4;
    }
  }

  BbfwReaderClose(v4);
  return v5;
}

void *BbfwReaderOpen(CFTypeRef cf)
{
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(kCFAllocatorDefault, cf, &url, 0))
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "%s: failed to get new URL", v3, v4, v5, v6, v7, "BbfwReaderOpen");
    goto LABEL_5;
  }

  if (!sub_1000126BC(0, v1, v2, v3, v4, v5, v6, v7, v20, v22, url, v24[0]))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = amai_unzOpen(v24);
  if (!v13)
  {
    AMAuthInstallLog(3, "BbfwReaderOpen", "failed to open bbfw archive for reading", v8, v9, v10, v11, v12, v21);
    AMAuthInstallLog(7, "BbfwReaderOpen", "Bbfw url: %@", v14, v15, v16, v17, v18, url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v13;
}

uint64_t BbfwReaderClose(uint64_t a1)
{
  if (a1)
  {
    amai_unzClose(a1);
  }

  return 0;
}

uint64_t BbfwReaderFindFile(uint64_t a1, CFStringRef theString)
{
  if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
  {
    return 4 * (amai_unzLocateFile(a1, buffer, 0) != 0);
  }

  else
  {
    return 99;
  }
}

uint64_t BbfwReaderFindAndCopyFileData(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  v4 = a2;
  cf = 0;
  File = BbfwReaderFindFile(a1, a2);
  if (File)
  {
    v7 = File;
    AMAuthInstallGetLocalizedStatusString(0, File);
    AMAuthInstallLog(7, "BbfwReaderFindAndCopyFileData", "failed to find bbfw item %@: %@", v8, v9, v10, v11, v12, v4);
    v13 = 0;
  }

  else
  {
    v15 = BbfwReaderCopyFileData(a1, &cf);
    if (v15)
    {
      v7 = v15;
      AMAuthInstallGetLocalizedStatusString(0, v15);
      AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: %@", v21, v22, v23, v24, v25, v4);
      v13 = cf;
    }

    else
    {
      v13 = cf;
      if (cf)
      {
        v7 = 0;
        *a3 = CFRetain(cf);
      }

      else
      {
        AMAuthInstallLog(3, "BbfwReaderFindAndCopyFileData", "failed to extract bbfw item %@: fileData is NULL", v16, v17, v18, v19, v20, v4);
        v7 = 0;
      }
    }
  }

  SafeRelease(v13);
  return v7;
}

uint64_t BbfwReaderCopyFileData(uint64_t a1, CFTypeRef *a2)
{
  bzero(v11, 0x88uLL);
  v4 = AMAuthInstallSupportCopyAllocator();
  if (sub_100012698(a1, v11, v13))
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = malloc(__size);
  if (!v5)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (amai_unzOpenCurrentFile(a1))
  {
    goto LABEL_10;
  }

  CurrentFile = amai_unzReadCurrentFile(a1, v5, __size);
  if (__size != CurrentFile)
  {
    v8 = 0;
    v9 = 4;
    goto LABEL_8;
  }

  if (amai_unzCloseCurrentFile(a1))
  {
LABEL_10:
    v8 = 0;
    v9 = 15;
    goto LABEL_8;
  }

  v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, __size, v4);
  v8 = v7;
  if (!v7)
  {
LABEL_12:
    v9 = 2;
    goto LABEL_8;
  }

  v5 = 0;
  v9 = 0;
  *a2 = CFRetain(v7);
LABEL_8:
  SafeRelease(v8);
  SafeRelease(v4);
  SafeFree(v5);
  return v9;
}

uint64_t BbfwReaderStart(const void *a1, uint64_t (*a2)(uint64_t, CFStringRef, void *), uint64_t a3)
{
  v5 = BbfwReaderOpen(a1);
  if (!v5)
  {
    AMAuthInstallLog(3, "BbfwReaderStart", "failed to open bbfw archive for reading", v6, v7, v8, v9, v10, v17[0]);
    return 4;
  }

  v11 = v5;
  bzero(v17, 0x88uLL);
  while (1)
  {
    if (sub_100012698(v11, v17, cStr))
    {
      v15 = 15;
      goto LABEL_9;
    }

    if (cStr[0])
    {
      break;
    }

LABEL_7:
    if (amai_unzGoToNextFile(v11))
    {
LABEL_8:
      v15 = 0;
      goto LABEL_9;
    }
  }

  v12 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v12)
  {
    v13 = v12;
    v14 = a2(a3, v12, v11);
    CFRelease(v13);
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = 3;
LABEL_9:
  amai_unzClose(v11);
  return v15;
}

uint64_t BbfwCreateDictionaryFromURL(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = BbfwReaderStart(a2, sub_100075E88, Mutable);
    if (!v6)
    {
      *a3 = CFRetain(Mutable);
    }
  }

  else
  {
    v6 = 2;
  }

  SafeRelease(Mutable);
  return v6;
}

BOOL sub_100075E88(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  v5 = BbfwReaderCopyFileData(a3, &value);
  v6 = value;
  if (!v5)
  {
    CFDictionarySetValue(a1, a2, value);
  }

  SafeRelease(v6);
  return v5 == 0;
}

void *BbfwWriterCreate(CFTypeRef cf)
{
  url = 0;
  if (AMAuthInstallSupportCopyPreserveFileURL(kCFAllocatorDefault, cf, &url, 1))
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "%s: failed to get new URL", v3, v4, v5, v6, v7, "BbfwWriterCreate");
    goto LABEL_5;
  }

  if (!sub_1000126BC(0, v1, v2, v3, v4, v5, v6, v7, v20, v22, url, v24))
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = amai_zipOpen();
  if (!v13)
  {
    AMAuthInstallLog(3, "BbfwWriterCreate", "failed to open bbfw archive for writing", v8, v9, v10, v11, v12, v21);
    AMAuthInstallLog(7, "BbfwWriterCreate", "Bbfw url: %@", v14, v15, v16, v17, v18, url);
    goto LABEL_5;
  }

LABEL_6:
  SafeRelease(url);
  return v13;
}

uint64_t AMAuthInstallSsoSetAppleConnectInfo(void *a1, const __CFString *cf, const void *a3)
{
  Mutable = 0;
  v4 = 1;
  if (a1)
  {
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      TypeID = CFStringGetTypeID();
      Mutable = 0;
      if (a3)
      {
        if (v8 == TypeID)
        {
          v10 = CFGetTypeID(a3);
          if (v10 == CFDataGetTypeID())
          {
            v11 = CFGetAllocator(a1);
            Mutable = CFDataCreateMutable(v11, 0);
            if (Mutable)
            {
              Length = CFStringGetLength(cf);
              CFDataSetLength(Mutable, Length + 1);
              MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
              v14 = CFDataGetLength(Mutable);
              if (CFStringGetCString(cf, MutableBytePtr, v14, 0x8000100u))
              {
                BytePtr = CFDataGetBytePtr(a3);
                v16 = CFDataGetLength(a3);
                CFDataAppendBytes(Mutable, BytePtr, v16);
                v4 = AMAuthInstallSsoSetToken(a1, Mutable);
              }

              else
              {
                v4 = 3;
              }
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            Mutable = 0;
          }
        }
      }
    }
  }

  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallSsoSetToken(void *a1, CFTypeRef cf)
{
  result = 1;
  if (a1 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = a1[15];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = CFGetAllocator(a1);
      Copy = CFDataCreateCopy(v7, cf);
      result = 0;
      a1[15] = Copy;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AMRAuthInstallEnablePersonalization(uint64_t a1, CFDictionaryRef theDict)
{
  result = 1;
  if (!a1 || !theDict)
  {
    return result;
  }

  Value = CFDictionaryGetValue(theDict, @"UpdateBaseband");
  if (CFDictionaryContainsKey(theDict, @"AuthInstallVariant"))
  {
    v12 = 0;
  }

  else
  {
    v12 = CFDictionaryContainsKey(theDict, @"AuthInstallRestoreBehavior") == 0;
  }

  v13 = 1;
  if (!v12 && Value)
  {
    v13 = CFBooleanGetValue(Value) == 0;
  }

  if (v12)
  {
    AMRLog(6, @"Ap personalization disabled.", v6, v7, v8, v9, v10, v11, v50);
    v14 = AMAuthInstallApEnablePersonalization(a1, 0);
  }

  else
  {
    v14 = AMAuthInstallApEnablePersonalization(a1, 1);
    v15 = CFDictionaryGetValue(theDict, @"AuthInstallForceServerSigning");
    if (v15)
    {
      v16 = v15;
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v16) && CFBooleanGetValue(v16) == 1)
      {
        AMAuthInstallApImg4ForceServerSigning(a1);
      }
    }
  }

  if (v14)
  {
    v42 = @"%s: AMAuthInstallApEnablePersonalization failed";
LABEL_38:
    v43 = AMAuthInstallToRestoreError(v14);
    AMRLog(3, v42, v44, v45, v46, v47, v48, v49, "AMRAuthInstallEnablePersonalization");
    return v43;
  }

  v18 = CFDictionaryGetValue(theDict, @"AuthInstallRequestTicketWithoutNonce");
  v21 = v18 && (v19 = v18, v20 = CFGetTypeID(v18), v20 == CFBooleanGetTypeID()) && CFBooleanGetValue(v19) == 1;
  v22 = CFDictionaryGetValue(theDict, @"SkipNoncesForAPSEP");
  v31 = v22 && (v29 = v22, v30 = CFGetTypeID(v22), v30 == CFBooleanGetTypeID()) && CFBooleanGetValue(v29) == 1;
  if (v31 || v21)
  {
    v32 = AMAuthInstallBundleRequestTicketWithoutNonce(a1, 1);
    if (v32)
    {
      v14 = v32;
      v42 = @"%s: AMAuthInstallBundleRequestTicketWithoutNonce failed";
      goto LABEL_38;
    }
  }

  if (v13)
  {
    AMRLog(6, @"Baseband personalization is disabled", v23, v24, v25, v26, v27, v28, v50);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = AMAuthInstallBasebandEnablePersonalization(a1, v33);
  if (v34)
  {
    v14 = v34;
    v42 = @"%s: AMAuthInstallBasebandEnablePersonalization failed";
    goto LABEL_38;
  }

  if (CFDictionaryGetValue(theDict, @"AuthInstallLocalPolicyHactivate") != kCFBooleanTrue)
  {
    return 0;
  }

  result = AMAuthInstallApEnableLocalPolicyHactivation(a1, v35, v36, v37, v38, v39, v40, v41);
  if (result)
  {
    v14 = result;
    v42 = @"%s: AMAuthInstallApEnableLocalPolicyHactivation failed";
    goto LABEL_38;
  }

  return result;
}

uint64_t AMRAuthInstallCopyBuildIdentity(const void *a1, CFDictionaryRef theDict, const __CFString *a3, void *a4)
{
  v4 = 1;
  if (a1 && theDict && a4)
  {
    Value = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
    if (!Value)
    {
      AMRLog(3, @"kAMRestoreOptionsRestoreBundlePath not found in options dictionary", v9, v10, v11, v12, v13, v14, v34);
      return v4;
    }

    v15 = Value;
    v16 = CFGetAllocator(a1);
    v17 = sub_10002CA48(v16, v15);
    if (!v17)
    {
      AMRLog(3, @"failed to create bundleURL from '%@'", v18, v19, v20, v21, v22, v23, v15);
      return 18;
    }

    v24 = v17;
    v25 = AMAuthInstallBundleCopyBuildIdentityForVariant(a1, v17, a3, a4);
    if (v25)
    {
      v4 = AMAuthInstallToRestoreError(v25);
      v33 = @"AMAuthInstallBundleCopyBuildIdentityForVariant failed";
    }

    else
    {
      if (*a4)
      {
        v4 = 0;
LABEL_9:
        CFRelease(v24);
        return v4;
      }

      v4 = 3014;
      v33 = @"AMAuthInstallBundleCopyBuildIdentityForVariant failed to create buildIdentity";
    }

    AMRLog(3, v33, v26, v27, v28, v29, v30, v31, v34);
    goto LABEL_9;
  }

  return v4;
}

const __CFString *AMRAuthInstallCopyVariant(const void *a1, CFDictionaryRef theDict)
{
  v2 = 0;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"AuthInstallVariant");
    if (Value)
    {
      v2 = Value;
      AMRLog(6, @"requested variant: %@", v6, v7, v8, v9, v10, v11, Value);
LABEL_7:
      CFRetain(v2);
      return v2;
    }

    v12 = CFDictionaryGetValue(theDict, @"AuthInstallRestoreBehavior");
    if (v12)
    {
      v2 = v12;
      AMAuthInstallBundleSetVariantSpecifiesRestoreBehavior(a1, 1);
      AMRLog(6, @"requested restore behavior: %@", v13, v14, v15, v16, v17, v18, v2);
      goto LABEL_7;
    }

    v2 = CFDictionaryGetValue(theDict, @"RestoreBundlePath");
    if (v2)
    {
      v26 = CFGetAllocator(a1);
      v27 = sub_10002CA48(v26, v2);
      if (v27)
      {
        v34 = v27;
        v2 = @"Internal Development";
        v35 = sub_10002CA38();
        if (AMRAuthInstallCopyBuildIdentity(v35, v36, @"Internal Development", v37) && (v2 = @"Factory - Software Download", v44 = sub_10002CA38(), AMRAuthInstallCopyBuildIdentity(v44, v45, @"Factory - Software Download", v46)) && (v47 = sub_10002CA38(), v2 = 0, AMRAuthInstallCopyBuildIdentity(v47, v48, 0, v49)))
        {
          AMRLog(3, @"AMRAuthInstallCopyBuildIdentity failed", v38, v39, v40, v41, v42, v43, v50);
          v2 = 0;
        }

        else
        {
          AMRLog(3, @"AMRAuthInstallCopyBuildIdentity failed to create buildIdentity", v38, v39, v40, v41, v42, v43, v50);
        }

        CFRelease(v34);
      }

      else
      {
        AMRLog(3, @"failed to create bundleURL from '%@'", v28, v29, v30, v31, v32, v33, v2);
        return 0;
      }
    }

    else
    {
      AMRLog(3, @"kAMRestoreOptionsRestoreBundlePath not found in options dictionary", v20, v21, v22, v23, v24, v25, v50);
    }
  }

  return v2;
}

const void *AMRAuthInstallCopyRecoveryOSVariant(const void *a1, CFDictionaryRef theDict)
{
  ValueForKeyPathInDict = 0;
  cf = 0;
  if (!a1 || !theDict)
  {
    return ValueForKeyPathInDict;
  }

  Value = CFDictionaryGetValue(theDict, @"AuthInstallVariant");
  if (!Value)
  {
    ValueForKeyPathInDict = CFDictionaryGetValue(theDict, @"AuthInstallRecoveryOSVariant");
    if (!ValueForKeyPathInDict)
    {
      v14 = @"Failed to create recovery OS variant , no recovery variant in options nor restore variant.";
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  AMRAuthInstallCopyBuildIdentity(a1, theDict, Value, &cf);
  v25 = CFDictionaryGetValue(theDict, @"AuthInstallRecoveryOSVariant");
  if (v25)
  {
    ValueForKeyPathInDict = v25;
LABEL_5:
    AMRLog(6, @"requested recovery OS variant: %@", v6, v7, v8, v9, v10, v11, ValueForKeyPathInDict);
    goto LABEL_6;
  }

  if (!cf)
  {
    goto LABEL_32;
  }

  v26 = CFGetAllocator(a1);
  ValueForKeyPathInDict = AMAuthInstallSupportGetValueForKeyPathInDict(v26, cf, @"Info.RecoveryVariant", v27, v28, v29, v30, v31);
LABEL_6:
  v12 = CFDictionaryGetValue(theDict, @"MacOSVariantPresent");
  if (v12 && v12 == kCFBooleanTrue)
  {
    v13 = @"MacOS variant present, using MacOS restore path";
LABEL_19:
    AMRLog(6, v13, v6, v7, v8, v9, v10, v11, v32);
    goto LABEL_20;
  }

  if (!Value)
  {
    v32 = "AMRAuthInstallCopyRecoveryOSVariant";
    v13 = @"%s: Couldn't find variant in restoreOptions ,continue to check if recoveryOS variant present.";
    goto LABEL_19;
  }

  if (!cf)
  {
LABEL_32:
    v23 = @"AMRAuthInstallCopyBuildIdentity failed to create buildIdentity.";
    goto LABEL_33;
  }

  v15 = CFGetAllocator(a1);
  v21 = AMAuthInstallSupportGetValueForKeyPathInDict(v15, cf, @"Info.MacOSVariant", v16, v17, v18, v19, v20);
  if (!v21)
  {
LABEL_20:
    if (ValueForKeyPathInDict)
    {
      goto LABEL_21;
    }

    v14 = @"no recovery OS variant found in BuildManifest.plist";
LABEL_10:
    AMRLog(3, v14, v6, v7, v8, v9, v10, v11, v32);
    goto LABEL_23;
  }

  if (!ValueForKeyPathInDict)
  {
    v22 = v21;
    AMRLog(6, @"%s: Found MacOSVariant - setting as recovery variant: %@", v6, v7, v8, v9, v10, v11, "AMRAuthInstallCopyRecoveryOSVariant");
    ValueForKeyPathInDict = v22;
  }

  if (AMAuthInstallSetMacOSVariantIsPresent(a1, 1))
  {
    v23 = @"AMAuthInstallSetMacOSVariantIsPresent failed to set Mac OS variantlibusbrestore/AMRAuthInstall.c is present.";
    goto LABEL_33;
  }

LABEL_21:
  if (!AMAuthInstallSetRecoveryOSVariant(a1, ValueForKeyPathInDict))
  {
    CFRetain(ValueForKeyPathInDict);
    goto LABEL_23;
  }

  v23 = @"AMAuthInstallSetRecoveryOSVariant failed to set  recovery OS variant.";
LABEL_33:
  AMRLog(3, v23, v6, v7, v8, v9, v10, v11, v32);
  ValueForKeyPathInDict = 0;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return ValueForKeyPathInDict;
}

uint64_t AMRAuthInstallCopyFileSystemPathForKeyInBundle(int a1, int a2, int a3, const __CFBoolean *a4, CFStringRef *a5)
{
  if (!a5)
  {
    return 1;
  }

  v6 = a3;
  v7 = AMRAuthInstallCopyURLForKeyInBundle(a1, a2, a3, a4);
  if (v7)
  {
    v14 = v7;
    AMRLog(3, @"Failed to get URL for key: %@", v8, v9, v10, v11, v12, v13, v6);
  }

  else
  {
    v15 = CFURLCopyFileSystemPath(0, kCFURLPOSIXPathStyle);
    if (v15)
    {
      v14 = 0;
      *a5 = v15;
    }

    else
    {
      AMRLog(3, @"Failed to convert URL to filesytem path", v16, v17, v18, v19, v20, v21, v23);
      return 31;
    }
  }

  return v14;
}

uint64_t AMRAuthInstallConfigureUsingOptions(void *a1, const __CFDictionary *a2, __CFDictionary *a3, char *a4)
{
  cf = 0;
  v7 = sub_100029CB0(a2, a3, 0, &cf);
  if (!v7)
  {
    v8 = AMAuthInstallSetSigningServerURL(a1, cf);
    if (!v8)
    {
      v10 = sub_10002CA60(v8, v9, @"AuthInstallEnableSso");
      v12 = v10;
      if (v10)
      {
        v10 = AMRAuthInstallSsoEnable(a1);
        if (v10)
        {
          goto LABEL_22;
        }
      }

      if (!sub_10002CA60(v10, v11, @"AuthInstallEnableSsoStealthMode") || (v13 = AMAuthInstallSsoSetStealthMode(a1, 1), !v13))
      {
        TypeID = CFStringGetTypeID();
        v15 = sub_10002BE6C(a2, 0, @"AppleConnectUser", TypeID);
        v16 = CFDataGetTypeID();
        v13 = sub_10002BE6C(a2, 0, @"AppleConnectData", v16);
        if (!v13)
        {
LABEL_13:
          v13 = sub_10002CA60(v13, v17, @"SkipNoncesForAPSEP");
          if (!v13 || (v13 = AMAuthInstallBundleRequestTicketWithoutNonce(a1, 1), !v13))
          {
            v19 = sub_10002CA60(v13, v18, @"ImageDecryptionKeysEnableSso");
            sub_10002CA60(v19, v20, @"FDREnableSso");
            v21 = 0;
            goto LABEL_16;
          }

          goto LABEL_21;
        }

        if (v15)
        {
          v13 = AMAuthInstallSsoSetAppleConnectInfo(a1, v15, v13);
          if (v13)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        v13 = AMAuthInstallSsoSetToken(a1, v13);
        if (!v13)
        {
LABEL_12:
          v12 = 1;
          goto LABEL_13;
        }
      }

LABEL_21:
      v10 = AMAuthInstallToRestoreError(v13);
LABEL_22:
      v21 = v10;
      goto LABEL_16;
    }

    v7 = AMAuthInstallToRestoreError(v8);
  }

  v21 = v7;
  v12 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v12;
  }

  return v21;
}

void sub_100076FAC(const void *a1, _BYTE *a2, uint64_t a3, _DWORD *a4)
{
  v8 = AMAuthInstallSupportFileURLExists();
  if (v8)
  {
    v19 = v8;
  }

  else if (*a2)
  {
    v19 = AMAuthInstallSupportRemoveDirectory(a1);
    if (v19)
    {
      v20 = @"failed to remove personalized bundle";
      v21 = 3;
    }

    else
    {
      v20 = @"removed personalized bundle";
      v21 = 8;
    }

    AMRLogWithFilePath(v21, a3, v20, v14, v15, v16, v17, v18, v22);
  }

  else
  {
    AMRLogWithFilePath(7, a3, @"personalized bundle does not exist, skipping removal", v9, v10, v11, v12, v13, v22);
    v19 = 0;
  }

  *a4 = AMAuthInstallToRestoreError(v19);
  CFRelease(a1);
}

void sub_100077288(const void *a1, const __CFDictionary *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = AMRAuthInstallCopyVariant(a1, a2);
  if (v12)
  {
    v19 = v12;
    Value = CFDictionaryGetValue(a2, @"SourceRestoreBundlePath");
    if (Value || (Value = CFDictionaryGetValue(a2, @"RestoreBundlePath")) != 0)
    {
      v27 = Value;
      v28 = CFGetAllocator(a1);
      v29 = sub_10002CA48(v28, v27);
      if (AMAuthInstallBundleFDRSupported(a1, v29, v19, a3))
      {
        AMRLog(4, @"failed to find key FDRSupport in variant", v30, v31, v32, v33, v34, v35, v36);
      }

      CFRelease(v19);
      if (v29)
      {
        CFRelease(v29);
      }
    }

    else
    {
      AMRLog(3, @"failed to get restore bundle path", v21, v22, v23, v24, v25, v26, v36);

      CFRelease(v19);
    }
  }

  else
  {

    AMRLog(3, @"failed to copy variant", v13, v14, v15, v16, v17, v18, a9);
  }
}

uint64_t AMRLazyExtractorAddFile(const __CFDictionary *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  result = CFDictionaryGetValue(a1, @"__ExtractionRoot__");
  if (result)
  {
    result = CFDictionaryGetValue(a1, @"__ArchiveFiles__");
    if (result)
    {
      v11 = result;
      result = sub_10002D684(a2, 0);
      if (result)
      {
        v12 = result;
        valuePtr = a3;
        v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
        *keys = off_1000AB390;
        v18 = off_1000AB3A0;
        values[0] = a4;
        values[1] = a5;
        values[2] = v12;
        values[3] = v13;
        v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(v11, v12, v14);
        CFRelease(v12);
        if (v13)
        {
          CFRelease(v13);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        return 1;
      }
    }
  }

  return result;
}

void *AMRLazyExtractorOpenArchive(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = qword_1000C9098;
  Value = CFDictionaryGetValue(a1, @"__ArchiveScheme__");
  v4 = sub_10002DB00(v2, Value);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v4;
  v7 = CFDictionaryGetValue(a1, @"__ArchiveArgs__");
  v8 = v6(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_10002DCF8();
  v12 = malloc_type_calloc(v10, 0x20uLL, v11);
  *v12 = CFRetain(a1);
  v12[1] = v9;
  v12[2] = v5;
  *(v12 + 24) = 0;
  return v12;
}

uint64_t AMRLazyArchiveExtractToPath(CFDictionaryRef *a1, const __CFString *a2)
{
  bzero(buffer, 0x400uLL);
  bzero(v17, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(a2, buffer, 1024))
  {
    return 0;
  }

  v4 = AMRLazyArchiveOpenFile(a1, a2, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringGetFileSystemRepresentation(v4[4], v17, 1024) && (v6 = v5[5], (v7 = fopen(buffer, "wb")) != 0))
  {
    v8 = v7;
    v9 = malloc_type_calloc(1uLL, 0x20000uLL, 0x70306B37uLL);
    if (!v9)
    {
LABEL_13:
      AMRLazyFileClose(v5);
      fclose(v8);
      v14 = 0;
      if (!v9)
      {
        return v14;
      }

      goto LABEL_17;
    }

    v10 = v6;
    while (v10)
    {
      if (v10 >= 0x20000)
      {
        v11 = 0x20000;
      }

      else
      {
        v11 = v10;
      }

      v12 = sub_1000092F0();
      if (AMRLazyFileRead(v12, v13, v11))
      {
        v10 -= v11;
        if (fwrite(v9, 1uLL, v11, v8) == v11)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    fclose(v8);
    Value = CFDictionaryGetValue(*a1, @"__ArchiveFiles__");
    CFDictionaryRemoveValue(Value, v5[4]);
    v14 = AMRLazyExtractorAddFileFromPathRange(*a1, v17, buffer, v6, 0);
  }

  else
  {
    v14 = 0;
    v9 = 0;
  }

  AMRLazyFileClose(v5);
  if (v9)
  {
LABEL_17:
    free(v9);
  }

  return v14;
}

void *AMRLazyArchiveOpenFile(uint64_t a1, const __CFString *a2, char a3)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v5 = sub_100077A80(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = qword_1000C90A0;
  Value = CFDictionaryGetValue(v5, @"__FileScheme__");
  v9 = sub_10002DB00(v7, Value);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if ((a3 & 1) != 0 && !v9[3])
  {
    v23 = sub_1000092F0();
    if (!AMRLazyArchiveExtractToPath(v23))
    {
      return 0;
    }

    v24 = sub_1000092F0();
    v26 = sub_100077A80(v24, v25);
    if (!v26)
    {
      return 0;
    }

    v6 = v26;
    v27 = qword_1000C90A0;
    v28 = CFDictionaryGetValue(v26, @"__FileScheme__");
    v29 = sub_10002DB00(v27, v28);
    if (!v29)
    {
      return 0;
    }

    v10 = v29;
    if (!v29[3])
    {
      return 0;
    }
  }

  v11 = *v10;
  v12 = *(a1 + 8);
  v13 = CFDictionaryGetValue(v6, @"__FileArgs__");
  v14 = v11(v12, v13);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = sub_10002DCF8();
  v18 = malloc_type_calloc(v16, 0x40uLL, v17);
  v19 = *(a1 + 8);
  *v18 = a1;
  v18[1] = v19;
  v18[2] = v15;
  v18[3] = v10;
  v20 = CFDictionaryGetValue(v6, @"__FileSubPath__");
  v18[4] = CFRetain(v20);
  valuePtr = 0;
  v21 = CFDictionaryGetValue(v6, @"__FileSize__");
  CFNumberGetValue(v21, kCFNumberSInt64Type, &valuePtr);
  v18[5] = valuePtr;
  v18[6] = 0;
  *(v18 + 56) = 0;
  *(a1 + 24) = 1;
  return v18;
}

uint64_t AMRLazyExtractorAddFileFromPathRange(const __CFDictionary *a1, const char *a2, const char *a3, uint64_t a4, unint64_t a5)
{
  pthread_once(&stru_1000C8558, sub_10002DAE4);
  bzero(&v17, 0x90uLL);
  if (stat(a3, &v17))
  {
    return 0;
  }

  if (v17.st_size < a5 || a5 + a4 > v17.st_size)
  {
    return 0;
  }

  v11 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, a3);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  valuePtr = a5;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  *keys = off_1000AB3B0;
  values[0] = v12;
  values[1] = v13;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = AMRLazyExtractorAddFile(a1, a2, a4, @"__DiskFileScheme__", v14);
  CFRelease(v12);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v15;
}

const void *sub_100077A80(CFDictionaryRef *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(*a1, @"__ExtractionRoot__");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(*a1, @"__ArchiveFiles__");
  if (v6)
  {
    Length = CFStringGetLength(v5);
    bzero(buffer, 0x400uLL);
    if (!CFStringGetFileSystemRepresentation(a2, buffer, 1024))
    {
      return 0;
    }

    v8 = sub_10002D684(buffer, 0);
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    if (CFStringHasPrefix(v8, v5))
    {
      v17.length = CFStringGetLength(v9) - Length;
      v17.location = Length;
      PathComponent = CFStringCreateWithSubstring(kCFAllocatorDefault, v9, v17);
    }

    else
    {
      v11 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v9, kCFURLPOSIXPathStyle, 0);
      if (!v11)
      {
        CFRelease(v9);
        return 0;
      }

      PathComponent = CFURLCopyLastPathComponent(v11);
    }

    v12 = PathComponent;
    CFRelease(v9);
    if (v12)
    {
      v13 = sub_1000092F0();
      v6 = CFDictionaryGetValue(v13, v14);
      CFRelease(v12);
      return v6;
    }

    return 0;
  }

  return v6;
}

void *AMRLazyArchiveOpenFromOptions(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"__Extractor__");

  return AMRLazyExtractorOpenArchive(Value);
}

uint64_t taDFU_Library_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, void *a3, NSObject *a4)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (!*a3 || !a3[1])
  {
    return 4294967274;
  }

  if (qword_1000C90F0 != -1)
  {
    dispatch_once(&qword_1000C90F0, &stru_1000AB8C0);
  }

  v8 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  *v8 = *a3;
  CFDictionarySetValue(qword_1000C90E0, (a2 | (a1 << 16)), v8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = *"";
  v14[2] = sub_1000493A4;
  v14[3] = &unk_1000AB900;
  v14[4] = a4;
  if (qword_1000C90F8 != -1)
  {
    dispatch_once(&qword_1000C90F8, v14);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *"";
  block[2] = sub_1000488EC;
  block[3] = &unk_1000AB860;
  v12 = a1;
  v13 = a2;
  block[4] = v9;
  dispatch_async(a4, block);
  return 0;
}

uint64_t iokitUtils_startDiscovery(const void *a1, void (__cdecl *a2)(void *, io_iterator_t), void *a3, void (__cdecl *a4)(void *, io_iterator_t), void *a5, uint64_t a6)
{
  result = 4294967274;
  if (a1 && a2 && a3 && a4 && a5 && a6)
  {
    sub_100049EF0(a6);
    v12 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v12)
    {
      v13 = v12;
      *(v12 + 1) = qword_1000C9110;
      qword_1000C9110 = v12;
      v14 = qword_1000C9118;
      v15 = CFRetain(a1);
      IOServiceAddMatchingNotification(v14, "IOServiceFirstMatch", v15, a2, a3, v13);
      v16 = qword_1000C9118;
      v17 = CFRetain(a1);
      IOServiceAddMatchingNotification(v16, "IOServiceTerminate", v17, a4, a5, v13 + 1);
      block[0] = _NSConcreteStackBlock;
      block[1] = *"";
      block[2] = sub_100049F78;
      block[3] = &unk_1000AB920;
      block[4] = a2;
      block[5] = a3;
      block[6] = v13;
      block[7] = a4;
      block[8] = a5;
      dispatch_async(qword_1000C9120, block);
      return 0;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t iokitUtils_setDeviceForService(io_registry_entry_t entry, const void *a2)
{
  result = 4294967274;
  if (entry && a2)
  {
    if (qword_1000C9100 || (qword_1000C9100 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0)) != 0)
    {
      entryID = 0;
      if (IORegistryEntryGetRegistryEntryID(entry, &entryID))
      {
        return 4294967274;
      }

      else
      {
        CFDictionarySetValue(qword_1000C9100, entryID, a2);
        return 0;
      }
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

const void *iokitUtils_popDeviceForService(io_registry_entry_t a1)
{
  if (!a1)
  {
    return 0;
  }

  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(a1, &entryID) || !qword_1000C9100)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(qword_1000C9100, entryID);
  CFDictionaryRemoveValue(qword_1000C9100, entryID);
  return Value;
}

uint64_t serialize_pcr(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 < 0xCu)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(a1 + 6);
  v6 = *(a1 + 4);
  v7 = *(a1 + 2);
  LOBYTE(a1) = *a1;
  *a2 = v7;
  *(a2 + 2) = -96;
  *(a2 + 3) = a1;
  *(a2 + 4) = 0;
  *(a2 + 5) = v6;
  *(a2 + 6) = (v6 | (v5 << 10)) >> 8;
  *(a2 + 7) = v5 >> 6;
  *(a2 + 8) = 0;
  *a3 = 12;
  return result;
}

uint64_t serialize_pcw(char *a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 3);
  if (4 * v3 + 12 > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 2);
  v7 = *a1;
  *a2 = *(a1 + 1);
  *(a2 + 2) = -96;
  *(a2 + 3) = v7;
  *(a2 + 4) = 1;
  *(a2 + 5) = v6;
  *(a2 + 6) = (v6 | (v3 << 10)) >> 8;
  *(a2 + 7) = v3 >> 6;
  *(a2 + 8) = __PAIR16__((4 * v3) >> 24, 4 * v3);
  *(a2 + 10) = v3 >> 14;
  *(a2 + 11) = 0;
  memcpy((a2 + 12), *(a1 + 1), 4 * *(a1 + 3));
  result = 0;
  *a3 = 4 * *(a1 + 3) + 12;
  return result;
}

uint64_t serialize_paw(unsigned __int8 *a1, uint64_t a2, _DWORD *a3)
{
  if ((*(a1 + 4) + 24) > *a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 1);
  v6 = *a1;
  v7 = *(a1 + 1);
  sub_10004A0A4(a1, a2);
  sub_10004A088(v8, v9);
  *(v10 + 8) = v11;
  *(v10 + 9) = v12;
  *(v10 + 10) = v13;
  *(v10 + 11) = v14;
  *(v10 + 12) = *(v15 + 8);
  *(v10 + 14) = BYTE2(*(v15 + 8));
  *(v10 + 15) = BYTE3(*(v15 + 8));
  *(v10 + 16) = WORD2(*(v15 + 8));
  *(v10 + 18) = *(v15 + 14);
  *(v10 + 19) = *(v15 + 15);
  *(v10 + 20) = *(v15 + 16);
  *(v10 + 22) = *(v15 + 18);
  *(v10 + 23) = *(v15 + 19);
  memcpy((v10 + 24), *(v15 + 24), *(v15 + 16));
  result = 0;
  *a3 = *(a1 + 4) + 24;
  return result;
}

uint64_t usbDFU_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  if (!a3 || !*a3)
  {
    return 4294967274;
  }

  result = 4294967274;
  if (a4 && a3[1])
  {
    if (sub_10004A384(a1, a2))
    {
      sub_10004A31C();
      started = iokitUtils_startDiscovery(v8, v9, v10, sub_10004A8FC, v11, a4);
      CFRelease(v4);
      return started;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t usbDFU_downloadBlock(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294967287;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return 4294967287;
  }

  if (a3)
  {
    if (!a4)
    {
      return 4294967287;
    }

    v5 = *(v4 + 32);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 5);
    }

    if (v5 < a3)
    {
      return 4294967287;
    }
  }

  sub_10004A364(*(v4 + 24));
  v6 = sub_10004A338();
  result = v7(v6);
  if (!result)
  {
    *(v4 + 40) = 0;
  }

  return result;
}

void usbDFU_release(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        (*(*v3 + 24))(v3);
        *(v2 + 8) = 0;
      }

      if (*v2)
      {
        IOObjectRelease(*v2);
        *v2 = 0;
      }

      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      free(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

char *usbDFU_copyStringDescriptor(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    return 0;
  }

  v14 = 0;
  v2 = *(a1 + 40);
  v15[0] = 1664;
  v15[1] = a2 | 0x300;
  v16 = 132105;
  v17 = &v14;
  v18 = 0;
  v3 = sub_10004A34C(*(v2 + 8));
  v5 = 0;
  if (v4(v3, v15))
  {
    return v5;
  }

  v6 = v14;
  if (!v14)
  {
    return v5;
  }

  bzero(v19, 0x100uLL);
  HIWORD(v16) = v6;
  v17 = v19;
  v7 = sub_10004A34C(*(v2 + 8));
  if (v8(v7, v15))
  {
    return 0;
  }

  v9 = (v14 - 2) >> 1;
  v10 = CFStringCreateWithCharacters(0, v20, v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v9, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (v5)
  {
    CFStringGetCString(v11, v5, MaximumSizeForEncoding, 0x8000100u);
  }

  CFRelease(v11);
  return v5;
}

uint64_t usbDFU_appendSuffix(uint64_t a1, FILE *a2)
{
  memset(v17, 0, sizeof(v17));
  v2 = 4294967287;
  if (!a1)
  {
    return v2;
  }

  if (!a2)
  {
    return v2;
  }

  v4 = fileno(a2);
  if (v4 == -1)
  {
    return v2;
  }

  v5 = v4;
  bzero(&v16, 0x90uLL);
  v14 = 0;
  v15 = 0;
  lseek(v5, -16, 2);
  if (read(v5, &v14, 0x10uLL) != 16)
  {
    goto LABEL_24;
  }

  v6 = v15 - 68;
  if (v6 <= 0x11 && ((1 << v6) & 0x20005) != 0 || BYTE3(v15) == 16)
  {
    v2 = 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    return v2;
  }

  if (lseek(v5, 0, 0) == -1 || fstat(v5, &v16) < 0)
  {
    goto LABEL_24;
  }

  if (!v16.st_size)
  {
    v7 = -1;
LABEL_21:
    LOWORD(v14) = -1;
    HIDWORD(v12) = *(a1 + 36);
    LODWORD(v12) = HIDWORD(v12);
    *(&v14 + 2) = v12 >> 16;
    HIWORD(v14) = 256;
    LODWORD(v15) = 272909909;
    HIDWORD(v15) = v7;
    if (write(v5, &v14, 0x10uLL) == -1)
    {
      v2 = 4294967287;
    }

    else
    {
      v2 = 0;
    }

LABEL_24:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    return v2;
  }

  v7 = -1;
  while (1)
  {
    v8 = read(v5, v17, 0x40uLL);
    if (v8)
    {
      break;
    }

LABEL_18:
    v16.st_size -= v8;
    if (!v16.st_size)
    {
      goto LABEL_21;
    }
  }

  if (v8 != -1)
  {
    v9 = v17;
    v10 = v8;
    do
    {
      v11 = *v9++;
      v7 = dword_100086858[(v11 ^ v7)] ^ (v7 >> 8);
      --v10;
    }

    while (v10);
    goto LABEL_18;
  }

  v2 = 4294967287;
  if (v5 < 0)
  {
    return v2;
  }

LABEL_25:
  close(v5);
  return v2;
}

uint64_t usbDFU_getStatus(uint64_t a1, uint64_t a2)
{
  result = 4294967287;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v24 = 0;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, &__tp);
        tv_nsec = __tp.tv_nsec;
        v7 = *(v5 + 56);
        if (__tp.tv_nsec < v7)
        {
          tv_nsec = __tp.tv_nsec + 1000000000;
        }

        v8 = (tv_nsec - v7) / 1000000 + 1000 * (__tp.tv_sec - *(v5 + 48) - (__tp.tv_nsec < v7));
        v9 = *(v5 + 40);
        if (v8 < v9)
        {
          usleep(1000 * (v9 - v8));
        }

        v20 = 929;
        v21 = *(*(v5 + 24) + 3);
        v22 = 8;
        v23 = &v14;
        v10 = *(a1 + 40);
        if (v10)
        {
          v11 = sub_10004A34C(*(v10 + 8));
          result = v12(v11, &v20);
          if (!result)
          {
            v13 = v15 | (v16 << 16);
            *a2 = v14;
            *(a2 + 4) = v13;
            *(a2 + 8) = v17;
            *(a2 + 12) = v18;
            *(v5 + 40) = v13;
            clock_gettime(_CLOCK_REALTIME, (v5 + 48));
            return 0;
          }
        }

        else
        {
          return 4294967287;
        }
      }
    }
  }

  return result;
}

uint64_t usbDFU_clearStatus(uint64_t a1)
{
  if (!a1)
  {
    return 4294967287;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 4294967287;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = usbDFU_getStatus(a1, &v12);
  if (result || !v12 || v13 == 2)
  {
    return result;
  }

  v8 = 1057;
  sub_10004A364(*(v2 + 24));
  v9 = 0;
  v10 = 0;
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 4294967287;
  }

  v5 = sub_10004A34C(*(v4 + 8));
  result = v6(v5, &v8);
  if (!result)
  {
    result = usbDFU_getStatus(a1, &v12);
    if (!result)
    {
      if (v13 == 2 && v12 == 0)
      {
        return 0;
      }

      else
      {
        return 4294967277;
      }
    }
  }

  return result;
}

uint64_t debug_usb_init_for_service(io_service_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0xB0uLL, 0x10A004051715284uLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *v2 = a1;
  bzero(v2 + 2, 0xA1uLL);
  v93 = 0;
  theInterface = 0;
  theScore[0] = 0;
  v4 = sub_10004A370();
  v5 = CFUUIDGetConstantUUIDWithBytes(v4, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], 0x61u);
  v13 = sub_10004A9E8(v5, v6, v7, v8, v9, v10, v11, v12, byte7b, byte7_4, byte15b, v81, v83);
  if (IOCreatePlugInInterfaceForService(a1, v5, v13, &theInterface, theScore))
  {
    goto LABEL_43;
  }

  v14 = theInterface;
  if (!theInterface)
  {
    goto LABEL_43;
  }

  QueryInterface = (*theInterface)->QueryInterface;
  v16 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x56u, 0xADu, 8u, 0x9Du, 0x87u, 0x8Du, 0x4Bu, 0xEAu, 0xA1u, 0xF5u, 0x2Cu, 0x8Du, 0xC4u, 0x3Eu, 0x8Au, 0x98u);
  v17 = CFUUIDGetUUIDBytes(v16);
  v18 = (QueryInterface)(v14, *&v17.byte0, *&v17.byte8, &v93);
  IODestroyPlugInInterface(theInterface);
  if (v18)
  {
    goto LABEL_43;
  }

  v19 = v93;
  if (!v93)
  {
    goto LABEL_43;
  }

  *(v3 + 8) = v93;
  BYTE4(v92) = 0;
  if ((*(*v19 + 176))(v19, &v92 + 4))
  {
    goto LABEL_43;
  }

  if (BYTE4(v92) != 1)
  {
    v21 = 0;
    __rqtp.tv_sec = 0;
    __rqtp.tv_nsec = 0;
    *&v20 = 67109120;
    *v85 = v20;
    v87 = xmmword_100086C70;
    while (1)
    {
      v22 = sub_10004AA70();
      v24 = (*(v23 + 64))(v22);
      if (v24 != -536870203)
      {
        break;
      }

      v25 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        v96 = v85[0];
        v97 = v21;
        sub_10004AA34();
      }

      sub_10004AA94(v25, v26, v27, v28, v29, v30, v31, v32, byte7a, byte15, v85[0], v85[1], v87, v89, v90, *theScore, v92, v93, theInterface, __rqtp);
      if (++v21 == 5)
      {
        goto LABEL_43;
      }
    }

    if (v24)
    {
      goto LABEL_43;
    }

    v33 = sub_10004AA70();
    v35 = (*(v34 + 184))(v33, 1);
    v36 = sub_10004AA70();
    (*(v37 + 72))(v36);
    if (v35)
    {
      goto LABEL_43;
    }
  }

  *theScore = -1;
  HIDWORD(v90) = 0;
  v38 = sub_10004AA70();
  if ((*(v39 + 224))(v38, theScore, &v90 + 4))
  {
LABEL_43:
    debug_usb_free(v3);
    return 0;
  }

  if (!HIDWORD(v90))
  {
    return v3;
  }

  v40 = IOIteratorNext(HIDWORD(v90));
  if (!v40)
  {
    IOObjectRelease(HIDWORD(v90));
    goto LABEL_43;
  }

  v42 = v40;
  v43 = 0;
  v44 = 0;
  *&v41 = 67109120;
  *v86 = v41;
  v88 = xmmword_100086C70;
  do
  {
    if (v44)
    {
      v44 = 1;
      goto LABEL_38;
    }

    v93 = 0;
    theInterface = 0;
    HIDWORD(v92) = 0;
    v45 = sub_10004A370();
    v46 = CFUUIDGetConstantUUIDWithBytes(v45, 0x2Du, 0x97u, 0x86u, 0xC6u, 0x9Eu, 0xF3u, 0x11u, byte7a, BYTE1(byte7a), BYTE2(byte7a), BYTE3(byte7a), BYTE4(byte7a), BYTE5(byte7a), BYTE6(byte7a), HIBYTE(byte7a), 0x61u);
    v54 = sub_10004A9E8(v46, v47, v48, v49, v50, v51, v52, v53, byte7c, byte7_4a, byte15c, v82, v84);
    v55 = IOCreatePlugInInterfaceForService(v42, v46, v54, &theInterface, &v92 + 1);
    if (v55)
    {
      v43 = v55;
LABEL_36:
      sub_10004A9AC(v3);
      goto LABEL_37;
    }

    v56 = theInterface;
    v43 = -536870212;
    if (!theInterface)
    {
      goto LABEL_36;
    }

    v57 = (*theInterface)->QueryInterface;
    v58 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x87u, 0x52u, 0x66u, 0x3Bu, 0xC0u, 0x7Bu, 0x4Bu, 0xAEu, 0x95u, 0x84u, 0x22u, 3u, 0x2Fu, 0xABu, 0x9Cu, 0x5Au);
    v59 = CFUUIDGetUUIDBytes(v58);
    v43 = (v57)(v56, *&v59.byte0, *&v59.byte8, &v93);
    IODestroyPlugInInterface(theInterface);
    if (v43)
    {
      goto LABEL_36;
    }

    v43 = -536870212;
    if (!v93)
    {
      goto LABEL_36;
    }

    v60 = 0;
    *(v3 + 16) = v93;
    __rqtp.tv_sec = 0;
    __rqtp.tv_nsec = 0;
    while (1)
    {
      v61 = (*(**(v3 + 16) + 64))(*(v3 + 16));
      v43 = v61;
      if (v61 != -536870203)
      {
        break;
      }

      v62 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v62)
      {
        v96 = v86[0];
        v97 = v60;
        sub_10004AA34();
      }

      sub_10004AA94(v62, v63, v64, v65, v66, v67, v68, v69, byte7a, byte15a, v86[0], v86[1], v88, v89, v90, *theScore, v92, v93, theInterface, __rqtp);
      if (++v60 == 5)
      {
        goto LABEL_36;
      }
    }

    if (v61)
    {
      goto LABEL_36;
    }

    *(v3 + 168) = 1;
LABEL_37:
    v44 = v43 == 0;
LABEL_38:
    IOObjectRelease(v42);
    v42 = IOIteratorNext(HIDWORD(v90));
  }

  while (v42);
  IOObjectRelease(HIDWORD(v90));
  if (!v44 || v43)
  {
    goto LABEL_43;
  }

  return v3;
}

void debug_usb_free(void *a1)
{
  if (a1)
  {
    for (i = 3; i != 21; ++i)
    {
      v3 = a1[i];
      if (v3)
      {
        free(v3);
        a1[i] = 0;
      }
    }

    sub_10004A9AC(a1);
    v4 = a1[1];
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    free(a1);
  }
}

uint64_t debug_usb_set_endpoint_for_portal(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 3758097084;
  if (a3 > 0x12)
  {
    return 3758097090;
  }

  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v7 = (*(**(a1 + 16) + 152))(*(a1 + 16), &v19 + 1);
  if (v7)
  {
    return v7;
  }

  v8 = malloc_type_malloc(6uLL, 0x1000040274DC3F3uLL);
  if (!v8)
  {
    return 3758097085;
  }

  v9 = v8;
  if (HIBYTE(v19))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = sub_10004AA88();
      v15 = (*(v14 + 208))(v13, v10, &v19, &v18 + 1, &v18, &v20, &v17);
      if (v15)
      {
        v3 = v15;
        goto LABEL_17;
      }

      if (HIBYTE(v18) == a2)
      {
        if (v19 == 1)
        {
          v9[5] = v10;
          *(v9 + 1) = v20;
          v12 = 1;
        }

        else if (!v19)
        {
          v9[4] = v10;
          *v9 = v20;
          v11 = 1;
        }
      }

      ++v10;
    }

    while (HIBYTE(v19) > v10);
    if ((v12 & v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    v3 = 0;
    *(a1 + 8 * a3 + 24) = v9;
  }

  else
  {
LABEL_17:
    free(v9);
  }

  return v3;
}

uint64_t debug_usb_read(uint64_t a1)
{
  result = sub_10004AA5C();
  if (!(!v7 & v6))
  {
    v8 = *(a1 + 8 * (v3 & 0x1F) + 24);
    if (v8)
    {
      v9 = v5;
      v10 = v4;
      v11 = sub_10004AA88();
      result = (*(v12 + 248))(v11, *(v8 + 5));
      if (result == -536850432)
      {
        v13 = sub_10004AA88();
        (*(v14 + 240))(v13, *(v8 + 5));
        v15 = sub_10004AA88();
        v17 = *(v16 + 248);
        v18 = *(v8 + 5);

        return v17(v15, v18, v10, v9);
      }
    }
  }

  return result;
}

uint64_t debug_usb_write(uint64_t a1)
{
  result = sub_10004AA5C();
  if (!(!v7 & v6))
  {
    v8 = *(a1 + 8 * (v3 & 0x1F) + 24);
    if (v8)
    {
      v9 = v5;
      v10 = v4;
      v11 = sub_10004AA7C();
      result = (*(v12 + 256))(v11, *(v8 + 4));
      if (result == -536850432)
      {
        v13 = sub_10004AA7C();
        (*(v14 + 240))(v13, *(v8 + 4));
        v15 = sub_10004AA7C();
        result = (*(v16 + 256))(v15, *(v8 + 4), v10, v9);
      }

      if (!result)
      {
        if (v9 % *v8)
        {
          return 0;
        }

        else
        {
          v17 = sub_10004AA7C();
          v19 = *(v18 + 256);
          v20 = *(v8 + 4);

          return v19(v17, v20, v10, 0);
        }
      }
    }
  }

  return result;
}

uint64_t taDFU_deviceinterfaced_startDeviceDiscoveryForVIDPID(int a1, int a2, uint64_t a3, NSObject *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B730();
    _os_log_impl(v8, v9, v10, v11, v12, 0x2Cu);
  }

  result = 4294967274;
  if (a3)
  {
    if (a4)
    {
      sub_10004AB0C();
      result = 4294967274;
      if (qword_1000C9138)
      {
        if (qword_1000C9140)
        {
          v14 = sub_10004ABE8(a1, a2);
          return taDFU_deviceinterfaced_startDeviceDiscoveryGeneric(qword_1000C9138, qword_1000C9140, v14, a3, a4);
        }
      }
    }
  }

  return result;
}

uint64_t taDFU_deviceinterfaced_startDeviceDiscoveryGeneric(__CFDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, NSObject *a5)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    *buf = 136316418;
    if (a2)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
    v22 = 2080;
    if (a4)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v23 = v10;
    if (a5)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v24 = 2080;
    v25 = v11;
    v26 = 2048;
    v27 = a3;
    v28 = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s callbacksMap %s unclaimedDevicesMap %s deviceKey %lu callbacks %s queue %s", buf, 0x3Eu);
  }

  result = 4294967274;
  if (a4 && a1 && a2 && a5 && *a4 && *(a4 + 8))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s callbacks->discoveryCallback and callbacks->terminationCallback provided", buf, 0xCu);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (qword_1000C9128)
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *buf = 136315394;
      v21 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric";
      v22 = 2080;
      v23 = v16;
      sub_10004B7D4(&_mh_execute_header, &_os_log_default, v15, "%s globalDeviceDiscoveryClient %s", buf);
    }

    if (qword_1000C9128)
    {
      v17 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
      if (v17)
      {
        v18 = v17;
        *v17 = *a4;
        CFDictionarySetValue(a1, a3, v17);
        block[0] = _NSConcreteStackBlock;
        block[1] = *"";
        block[2] = sub_10004ACC0;
        block[3] = &unk_1000AB980;
        block[4] = a2;
        block[5] = a3;
        block[6] = v18;
        dispatch_async(a5, block);
        return 0;
      }

      else
      {
        return 4294967284;
      }
    }

    else
    {
      return 4294967274;
    }
  }

  return result;
}

char *cfstring_to_c_string(const __CFString *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B6F4();
    sub_10004B730();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding == -2)
  {
    return 0;
  }

  v9 = MaximumSizeForEncoding + 2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B730();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
  }

  v15 = malloc_type_malloc(v9, 0x446D057EuLL);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B6F4();
    sub_10004B730();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
  }

  if (v15)
  {
    CString = CFStringGetCString(a1, v15, v9, 0x8000100u);
    v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (CString)
    {
      if (v22)
      {
        sub_10004B704();
        sub_10004B730();
        _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B704();
        sub_10004B730();
        _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      }

      return v15;
    }

    if (v22)
    {
      sub_10004B704();
      sub_10004B730();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    }

    free(v15);
    return 0;
  }

  return v15;
}

uint64_t taDFU_AppleKIS_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  if (!a3 || !*a3 || !a3[1])
  {
    return 4294967274;
  }

  v6 = sub_10004DA20(a1, a2);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  v8 = *a3;
  v9 = a3[1];
  sub_10004D9D8();
  started = iokitUtils_startDiscovery(v10, v11, v12, sub_10004DE90, v13, a4);
  CFRelease(v7);
  return started;
}

uint64_t libDFU_startDeviceDiscoveryForVIDPID(int a1, int a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67109376;
    v15[1] = a1;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting Device Discovery for DFU devices with VID 0x%x PID 0x%x", v15, 0xEu);
  }

  if (!a3 || !*a3 || !a3[1])
  {
    return 4294967287;
  }

  libDFU_setDispatchQueueForDiscovery(0);
  v6 = sub_10004E414();
  result = usbDFU_startDeviceDiscoveryForVIDPID(v6, v7, v8, v9);
  if (!result)
  {
    v11 = sub_10004E414();
    return taDFU_startDeviceDiscoveryForVIDPID(v11, v12, v13, v14);
  }

  return result;
}

void libDFU_release(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {
        v3(a1);
      }
    }

    v4 = a1[1];
    if (v4)
    {
      free(v4);
      a1[1] = 0;
    }

    v5 = a1[2];
    if (v5)
    {
      free(v5);
      a1[2] = 0;
    }

    v6 = a1[3];
    if (v6)
    {
      free(v6);
    }

    free(a1);
  }
}

uint64_t stmDFU_parseConfiguration(uint64_t a1)
{
  if (!a1)
  {
    return 4294967277;
  }

  v1 = a1;
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 4294967277;
  }

  *a1 = 2;
  *(a1 + 48) = off_1000ABA68;
  v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *(v2 + 72) = v3;
  if (!v3)
  {
    return 4294967277;
  }

  *v3 = 0;
  v4 = *(v2 + 16);
  v5 = &v4[*v4];
  v6 = *(v4 + 1);
  v7 = &v4[v6];
  if (v5 < &v4[v6])
  {
    v22 = &v4[v6];
    v23 = v1;
    do
    {
      if (v5[1] == 4)
      {
        if (v5[5] != 254 || v5[6] != 1 || v5[7] != 2)
        {
          return 4294967277;
        }

        v25 = usbDFU_copyStringDescriptor(v1, v5[8]);
        if (v25)
        {
          v24 = v5;
          v31 = 0;
          v8 = *(v1 + 40);
          if (v8)
          {
            v26 = *(v8 + 72);
            if (v26)
            {
              if (*v25 == 64)
              {
                v30 = 0;
                v29 = 0;
                v28 = 0;
                v27 = 0;
                if (sscanf(v25, "@%[^/]%n", __s1, &v27) == 1)
                {
                  v9 = &v25[v27];
LABEL_16:
                  if (sscanf(v9, "/0x%lx%n", &v31, &v27) == 1)
                  {
                    v10 = malloc_type_malloc(0x30uLL, 0x10B00404BB0F7C9uLL);
                    if (v10)
                    {
                      v11 = v10;
                      v12 = strdup(__s1);
                      *v11 = v12;
                      if (v12)
                      {
                        v11[3] = 0;
                        v11[1] = v31;
                        *(v11 + 4) = 0;
                        v13 = *v26;
                        v11[4] = (v11 + 3);
                        v11[5] = v13;
                        *v26 = v11;
                        v9 += v27;
                        while (1)
                        {
                          v14 = malloc_type_malloc(0x20uLL, 0x10200401537AB1CuLL);
                          if (!v14)
                          {
                            goto LABEL_29;
                          }

                          v15 = v14;
                          v14[3] = 0;
                          *v11[4] = v14;
                          v11[4] = (v14 + 3);
                          if (sscanf(v9, "%c%u*%u%c%c%n", &v28, &v30 + 4, &v30, &v29 + 1, &v29, &v27) != 5)
                          {
                            goto LABEL_29;
                          }

                          v16 = v30;
                          if (HIBYTE(v29) == 75)
                          {
                            goto LABEL_25;
                          }

                          if (HIBYTE(v29) == 77)
                          {
                            break;
                          }

LABEL_26:
                          v17 = v31;
                          *v15 = v31;
                          v18 = HIDWORD(v30);
                          *(v15 + 4) = WORD2(v30);
                          v19 = v29 & 0xF;
                          *(v15 + 3) = v16;
                          *(v15 + 4) = v19;
                          v20 = (v18 * v16);
                          v31 = &v17[v20];
                          *(v11 + 4) += v20;
                          v9 += v27;
                          if (*v9 != 44)
                          {
                            goto LABEL_16;
                          }
                        }

                        v16 = v30 << 10;
LABEL_25:
                        v16 <<= 10;
                        LODWORD(v30) = v16;
                        goto LABEL_26;
                      }

                      free(v11);
                    }
                  }
                }
              }
            }
          }

LABEL_29:
          free(v25);
          v1 = v23;
          v5 = v24;
          v7 = v22;
        }
      }

      v5 += *v5;
    }

    while (v5 < v7);
  }

  return 0;
}

void releaseMemoryRegions(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = *(v1 + 72);
      if (v2)
      {
        v3 = *v2;
        if (*v2)
        {
          do
          {
            v5 = v3 + 24;
            v4 = *(v3 + 24);
            v6 = *(v3 + 40);
            if (v4)
            {
              do
              {
                free(v4);
                v4 = *(*v5 + 24);
                *v5 = v4;
              }

              while (v4);
              *(v3 + 32) = v5;
            }

            free(*v3);
            free(v3);
            v3 = v6;
          }

          while (v6);
        }
      }
    }
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v5 = _CFStringFind(theString, stringToFind, compareOptions);
  length = v5.length;
  location = v5.location;
  result.length = length;
  result.location = location;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}