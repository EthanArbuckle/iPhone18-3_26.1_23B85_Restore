BOOL sub_10002D5DC(CFMutableDictionaryRef *a1, const void *a2, const void *a3)
{
  if (pthread_mutex_lock(&stru_1000C8568))
  {
    return 0;
  }

  Mutable = *a1;
  if (!*a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    *a1 = Mutable;
  }

  v8 = CFDictionaryContainsKey(Mutable, a2);
  v6 = v8 == 0;
  if (!v8)
  {
    CFDictionarySetValue(*a1, a2, a3);
  }

  pthread_mutex_unlock(&stru_1000C8568);
  return v6;
}

const __CFString *sub_10002D684(const char *a1, int a2)
{
  v4 = strlen(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((a2 & 1) != 0 || (v6 = 0, v7 = a1[v4 - 1], v7 != 47) && v7 != 92)
  {
    v8 = *a1;
    v10 = v8 == 47 || v8 == 92;
    if (v4 != 1 || !v10)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v12 = Mutable;
      if (v8 == 92 || v8 == 47)
      {
        CFArrayAppendValue(Mutable, &stru_1000ABB18);
      }

      v13 = strdup(a1);
      v14 = v13 + 1;
      v15 = v13;
      do
      {
        v16 = *(v14 - 1);
        if (v16 == 92 || v16 == 47)
        {
          *(v14 - 1) = 0;
          v17 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, v15);
          if (!v17)
          {
            goto LABEL_32;
          }

          v18 = v17;
          if (CFStringGetLength(v17) >= 1)
          {
            CFArrayAppendValue(v12, v18);
          }

          CFRelease(v18);
          v15 = v14;
        }

        ++v14;
        --v5;
      }

      while (v5);
      v19 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, v15);
      if (v19)
      {
        v20 = v19;
        CFArrayAppendValue(v12, v19);
        if (a2 && CFStringGetLength(v20))
        {
          CFArrayAppendValue(v12, &stru_1000ABB18);
        }

        v6 = CFStringCreateByCombiningStrings(kCFAllocatorDefault, v12, @"/");
        CFRelease(v20);
        if (!v12)
        {
LABEL_34:
          free(v13);
          return v6;
        }
      }

      else
      {
LABEL_32:
        v6 = 0;
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      CFRelease(v12);
      goto LABEL_34;
    }

    return @"/";
  }

  return v6;
}

uint64_t AMRLazyArchiveClose(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  result = (*(*(a1 + 16) + 8))(*(a1 + 8));
  if (result)
  {
    CFRelease(*a1);
    free(a1);
    return 1;
  }

  return result;
}

const __CFString *sub_10002D8C8(CFDictionaryRef *a1, CFURLRef anURL)
{
  result = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (result)
  {
    v4 = result;
    v5 = sub_100077A80(a1, result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

const __CFDictionary *AMRLazyArchiveURLSupportsRandomAccess(CFDictionaryRef *a1, const __CFURL *a2)
{
  v2 = sub_10002D8C8(a1, a2);
  result = sub_10002D948(v2);
  if (result)
  {
    return (*(result + 3) != 0);
  }

  return result;
}

const __CFDictionary *sub_10002D948(const __CFDictionary *result)
{
  if (result)
  {
    v1 = qword_1000C90A0;
    Value = CFDictionaryGetValue(result, @"__FileScheme__");

    return sub_10002DB00(v1, Value);
  }

  return result;
}

uint64_t AMRLazyFileRead(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = a1[6] + a3;
  if (v4 > a1[5])
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(v5 + 16);
  if (v6)
  {
    if ((v6(a1[1], a1[2], a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = (*(v5 + 24))(a1[1], a1[2], a2, a3);
    if (!result)
    {
      return result;
    }
  }

  a1[6] = v4;
  return 1;
}

uint64_t AMRLazyFileClose(uint64_t *a1)
{
  v2 = (*(a1[3] + 8))(a1[1], a1[2]);
  if (v2)
  {
    if (*a1)
    {
      *(*a1 + 24) = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
      a1[4] = 0;
    }

    if (*(a1 + 56) == 1)
    {
      AMRLazyArchiveClose(*a1);
    }

    free(a1);
  }

  return v2;
}

const __CFString *AMRLazyArchiveExtractToURL(CFDictionaryRef *a1, CFURLRef anURL)
{
  result = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (result)
  {
    v4 = result;
    v5 = AMRLazyArchiveExtractToPath(a1, result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

const void *sub_10002DB00(const __CFDictionary *a1, const void *a2)
{
  Value = a2;
  if (a2)
  {
    if (pthread_mutex_lock(&stru_1000C8568))
    {
      return 0;
    }

    else
    {
      if (a1)
      {
        Value = CFDictionaryGetValue(a1, Value);
      }

      else
      {
        Value = 0;
      }

      pthread_mutex_unlock(&stru_1000C8568);
    }
  }

  return Value;
}

void *sub_10002DB6C(int a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"__DiskFilePath__");
  bzero(buffer, 0x400uLL);
  if (!CFStringGetFileSystemRepresentation(Value, buffer, 1024))
  {
    return 0;
  }

  v4 = open(buffer, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040F7F8B94BuLL);
  *v6 = v5;
  v9 = 0;
  v7 = CFDictionaryGetValue(theDict, @"__DiskFileOffset__");
  CFNumberGetValue(v7, kCFNumberSInt64Type, &v9);
  v6[1] = v9;
  return v6;
}

BOOL sub_10002DC6C(uint64_t a1, int *a2)
{
  v3 = close(*a2);
  if (v3)
  {
    *a2 = -1;
  }

  else
  {
    free(a2);
  }

  return v3 == 0;
}

uint64_t AMRestorePerformTADRestore(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = 0;
  AMRLog(6, @"Entering AMRestorePerformTADRestore", a3, a4, a5, a6, a7, a8, v147);
  AMRestoreCaptureSubsystemLogsIfNeeded();
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  if (!MutableCopy)
  {
    AMRLog(3, @"unable to create mutable copy of options", v11, v12, v13, v14, v15, v16, v148);
LABEL_162:
    AMRLog(6, @"%@: DFU succeeded", v28, v29, v30, v31, v32, v33, a1);
    return 0;
  }

  v17 = MutableCopy;
  if (!*(a1 + 184))
  {
    AMRLog(7, @"%@: operation %d progress %d", v11, v12, v13, v14, v15, v16, a1);
    v44 = *(a1 + 16);
    if (v44)
    {
      v44(a1, 45, 0xFFFFFFFFLL, *(a1 + 24));
    }

    *(a1 + 32) = -4294967251;
    *&v167[0] = 0;
    v45 = AMTADModeDeviceCopyAuthInstallPreflightOptions(a1, v17, v167);
    if (v45)
    {
      v27 = v45;
LABEL_159:
      CFRelease(v17);
      goto LABEL_160;
    }

    CFRelease(v17);
    v17 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *&v167[0]);
    CFRelease(*&v167[0]);
  }

  v25 = CFDictionaryGetValue(v17, @"PersonalizedRestoreBundlePath");
  if (v25)
  {
    if (AMRestoreOptionsAreLegacy(v17, v18, v19, v20, v21, v22, v23, v24))
    {
      v26 = AMRAuthInstallAlignOptionsToPersonalizedBundle(v17, v25, 1);
      if (v26)
      {
        v27 = v26;
        AMRLog(3, @"failed to align options with personalized bundle", v19, v20, v21, v22, v23, v24, v148);
        goto LABEL_153;
      }
    }
  }

  if (AMRestoreOptionsAreLegacy(v17, v18, v19, v20, v21, v22, v23, v24))
  {
    if (v17)
    {
      v41 = CFDictionaryGetValue(v17, @"RestoreBundlePath");
      if (v41)
      {
        *&v167[0] = 0;
        PathsForBundle = AMRestoreCreatePathsForBundle(v41, 0, 0, 0, 0, 0, 0, v167);
        v35 = *&v167[0];
        if (!PathsForBundle && *&v167[0] != 0)
        {
          CFDictionaryAddValue(v17, @"FirmwareDirectory", *&v167[0]);
          CFRelease(*&v167[0]);
        }
      }
    }

    else
    {
      AMRLog(3, @"Cannot resolve bundle path options without options", v35, v36, v37, v38, v39, v40, v148);
    }
  }

  v157 = 0;
  v158 = 0;
  if (AMRestoreOptionsAreLegacy(v17, v34, v35, v36, v37, v38, v39, v40))
  {
    v52 = CFDictionaryGetValue(v17, @"DFUFile");
    if (v52)
    {
      v59 = v52;
      v60 = CFDictionaryGetValue(v17, @"OnlyPersonalizeDFUFile");
      if (v60 && CFEqual(v60, kCFBooleanTrue))
      {
        bzero(v167, 0x400uLL);
        v164 = 0;
        cf = 0;
        v162 = 0;
        value = 0;
        v161 = 0;
        v160 = 0;
        v159 = 0;
        v61 = AMAuthInstallCreate(kCFAllocatorDefault);
        if (!v61)
        {
          Copy = 0;
          PathComponent = 0;
LABEL_120:
          if (v164)
          {
            CFRelease(v164);
          }

          if (value)
          {
            CFRelease(value);
          }

          if (v162)
          {
            CFRelease(v162);
          }

          if (v161)
          {
            CFRelease(v161);
          }

          if (v159)
          {
            CFRelease(v159);
          }

          if (!PathComponent)
          {
            goto LABEL_133;
          }

          v108 = PathComponent;
          goto LABEL_132;
        }

        v62 = v61;
        if (AMRAuthInstallConfigureUsingOptions(v61, v17, 0, 0))
        {
          Copy = 0;
          Mutable = 0;
LABEL_115:
          PathComponent = 0;
          v107 = v62;
LABEL_116:
          CFRelease(v107);
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_120;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          goto LABEL_114;
        }

        ECID = AMTADModeDeviceGetECID(a1);
        AMAuthInstallSupportDictionarySetInteger64(Mutable, @"ECID", ECID);
        if (sub_10002F844(a1))
        {
          v72 = 0;
        }

        else
        {
          v72 = *(a1 + 40);
        }

        AMAuthInstallSupportDictionarySetInteger32(Mutable, @"ApChipID", v72);
        BoardID = AMTADModeDeviceGetBoardID(a1);
        AMAuthInstallSupportDictionarySetInteger32(Mutable, @"ApBoardID", BoardID);
        if (sub_10002F844(a1))
        {
          v78 = 0;
        }

        else
        {
          v78 = *(a1 + 132);
        }

        AMAuthInstallSupportDictionarySetInteger32(Mutable, @"ApSecurityDomain", v78);
        if (sub_10002F844(a1))
        {
          v79 = 0;
        }

        else
        {
          v79 = *(a1 + 136);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApProductionMode", v79);
        if (sub_10002F844(a1))
        {
          v80 = 0;
        }

        else
        {
          v80 = *(a1 + 137);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApSecurityMode", v80);
        if (sub_10002F844(a1))
        {
          v81 = 0;
        }

        else
        {
          v81 = *(a1 + 140);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApEffectiveSecurityMode", v81);
        if (sub_10002F844(a1))
        {
          v82 = 0;
        }

        else
        {
          v82 = *(a1 + 139);
        }

        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApEffectiveProductionMode", v82);
        AMAuthInstallSupportDictionarySetBoolean(Mutable, @"ApInRomDFU", 1);
        v83 = *(a1 + 144);
        if (v83)
        {
          CFDictionarySetValue(Mutable, @"ApSikaFuse", v83);
        }

        v84 = *(a1 + 56);
        if (v84)
        {
          CFDictionarySetValue(Mutable, @"CertificateEpoch", v84);
        }

        v85 = *(a1 + 152);
        if (v85)
        {
          CFDictionarySetValue(Mutable, @"SerialString", v85);
        }

        if (*(a1 + 138))
        {
          AMAuthInstallSupportDictionarySetBoolean(Mutable, @"UIDMode", 1);
        }

        v86 = CFDictionaryGetValue(v17, @"RequiresUIDMode");
        if (v86 && CFBooleanGetValue(v86) == 1)
        {
          CFDictionarySetValue(Mutable, @"RequiresUIDMode", kCFBooleanTrue);
        }

        v87 = CFDictionaryGetValue(v17, @"UIDMode");
        if (v87)
        {
          v88 = v87;
          TypeID = CFBooleanGetTypeID();
          if (TypeID == CFGetTypeID(v88))
          {
            CFDictionarySetValue(Mutable, @"UIDMode", v88);
          }
        }

        v90 = sub_10002F694(a1, &v160);
        v91 = v160;
        v92 = *&v90 & ((v160 & 4) >> 2);
        if (v92 == 1)
        {
          v93 = CFDictionaryGetValue(v17, @"AuthInstallAllowMixAndMatch");
          if (v93 && CFBooleanGetValue(v93) == 1)
          {
            CFDictionaryAddValue(Mutable, @"ApAllowMixAndMatch", kCFBooleanTrue);
          }

          CFDictionarySetValue(Mutable, @"ApSupportsImg4", kCFBooleanTrue);
          if ((v91 & 0x20) != 0)
          {
            CFDictionarySetValue(Mutable, @"ApImg4DigestType", @"sha2-384");
          }

          v94 = CFDictionaryGetValue(v17, @"SkipNoncesForAPSEP");
          if (!v94 || (v95 = v94, v96 = CFBooleanGetTypeID(), v96 != CFGetTypeID(v95)) || CFBooleanGetValue(v95) != 1)
          {
            if (!sub_10002FC1C(a1, @"NONC", &v164))
            {
              v97 = CFGetAllocator(v62);
              if (!AMAuthInstallSupportCopyDataFromHexString(v97, v164, &value))
              {
                if (value)
                {
                  CFDictionarySetValue(Mutable, @"ApNonce", value);
                }
              }
            }

            if (!sub_10002FC1C(a1, @"SNON", &v162))
            {
              v98 = CFGetAllocator(v62);
              if (!AMAuthInstallSupportCopyDataFromHexString(v98, v162, &v161))
              {
                if (v161)
                {
                  CFDictionarySetValue(Mutable, @"SepNonce", v161);
                }
              }
            }
          }
        }

        v99 = CFDictionaryGetValue(v17, @"ApTagOverrides");
        if (v99)
        {
          CFDictionarySetValue(Mutable, @"APTagOverrides", v99);
        }

        v100 = CFDictionaryGetValue(v17, @"AuthInstallDemotionPolicyOverride");
        if (v100)
        {
          CFDictionarySetValue(Mutable, @"DemotionPolicy", v100);
        }

        if (AMAuthInstallApSetParameters(v62, Mutable) || (AMRAuthInstallInitOptionalFirmware(v62, v17), AMRAuthInstallSetFDRTrustObjectHash(v62, v17)))
        {
LABEL_114:
          Copy = 0;
          goto LABEL_115;
        }

        if (AMRAuthInstallEnablePersonalization(v62, v17))
        {
          AMRLog(3, @"%s: AMRAuthInstallEnablePersonalization failed", v101, v102, v103, v104, v105, v106, "_copyPersonalizedFileForDFUDevice");
          goto LABEL_114;
        }

        v141 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v59, kCFURLPOSIXPathStyle, 0);
        if (!v141)
        {
          goto LABEL_114;
        }

        v107 = v141;
        PathComponent = CFURLCopyLastPathComponent(v141);
        if (!PathComponent)
        {
          Copy = 0;
          v142 = v62;
LABEL_186:
          CFRelease(v142);
          goto LABEL_116;
        }

        LOBYTE(v148) = PathComponent;
        AMTADModeDeviceGetECID(a1);
        v154 = PathComponent;
        v142 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%llx.personalized");
        if (!v142 || (URLForTempDirectoryRoot = AMAuthInstallSupportGetURLForTempDirectoryRoot(), AMAuthInstallSupportCopyURLWithAppendedComponent(kCFAllocatorDefault, URLForTempDirectoryRoot, v142, 0, &cf)) || (v144 = CFDictionaryGetValue(v17, @"RequestRestoreRulesDeviceMap"), AMAuthInstallApCreateImagePropertiesWithDeviceMap(v62, v107, v144, &v159, v145)))
        {
          Copy = 0;
          PathComponent = 0;
          goto LABEL_183;
        }

        PathComponent = CFDictionaryCreateMutableCopy(0, 0, v159);
        if (!PathComponent)
        {
          goto LABEL_202;
        }

        v152 = CFDictionaryGetValue(v17, @"RequestOverrides");
        if (v152)
        {
          v150 = CFGetTypeID(v152);
          if (v150 == CFDictionaryGetTypeID())
          {
            CFDictionaryApplyFunction(v152, _AMRestoreDFUPropertyOverrideApplier, PathComponent);
          }
        }

        v153 = CFDictionaryGetValue(v17, @"ImageTrusted");
        if (v153)
        {
          v151 = CFGetTypeID(v153);
          if (v151 == CFBooleanGetTypeID())
          {
            CFDictionarySetValue(PathComponent, @"Trusted", v153);
          }
        }

        v146 = CFDictionaryGetValue(v17, @"ApRequestEntries");
        if (v146)
        {
          CFDictionaryApplyFunction(v146, _AMRestoreAPOverrideApplier, v62);
        }

        if (v92)
        {
          if (AMAuthInstallApImg4PersonalizeFile(v62, v107, cf, PathComponent))
          {
            goto LABEL_202;
          }
        }

        else if (AMAuthInstallApImg3PersonalizeFile(v62, v107, cf, PathComponent))
        {
          goto LABEL_202;
        }

        if (CFURLGetFileSystemRepresentation(cf, 1u, v167, 1024))
        {
          Copy = CFStringCreateWithCString(kCFAllocatorDefault, v167, 0x8000100u);
          goto LABEL_183;
        }

LABEL_202:
        Copy = 0;
LABEL_183:
        CFRelease(v62);
        CFRelease(v154);
        if (!v142)
        {
          goto LABEL_116;
        }

        goto LABEL_186;
      }

      v66 = kCFAllocatorDefault;
      v67 = v59;
      goto LABEL_33;
    }

    if (*(a1 + 172))
    {
      v148 = *(a1 + 172);
      v68 = @"don't know how to find DFU file for device type %d";
    }

    else
    {
      v69 = CFDictionaryGetValue(v17, @"DFUFile");
      if (v69)
      {
        v67 = v69;
        v66 = kCFAllocatorDefault;
LABEL_33:
        Copy = CFStringCreateCopy(v66, v67);
LABEL_133:
        v158 = Copy;
        goto LABEL_134;
      }

      v74 = CFDictionaryGetValue(v17, @"FirmwareDirectory");
      if (!v74)
      {
LABEL_37:
        Copy = 0;
        goto LABEL_133;
      }

      v75 = v74;
      if (!sub_10002F844(a1))
      {
        if (*(a1 + 136) == 1)
        {
          AMRLog(4, @"%@: production fused device", v53, v54, v55, v56, v57, v58, a1);
        }

        v134 = CFDictionaryGetValue(v17, @"BoardConfig");
        if (v134)
        {
          v140 = v134;
          CFRetain(v134);
        }

        else
        {
          v168 = 0;
          memset(v167, 0, sizeof(v167));
          if (_AMRestoreGetDeviceMapEntryForHardware(v17, (a1 + 40), v167, v135, v136, v137, v138, v139) != 1)
          {
            goto LABEL_37;
          }

          v140 = CFStringCreateWithCString(kCFAllocatorDefault, &v167[7] + 8, 0x8000100u);
          if (!v140)
          {
            goto LABEL_37;
          }
        }

        CFDictionaryGetValue(v17, @"DFUFileType");
        if (!*(a1 + 64))
        {
          *(a1 + 68);
        }

        *&v167[0] = 0;
        if (AMRAuthInstallCreatePathFromBundle(*(a1 + 184), v17))
        {
          LOBYTE(v148) = v75;
          Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/dfu/%@.%@.%@.dfu");
        }

        else
        {
          Copy = *&v167[0];
        }

        v108 = v140;
LABEL_132:
        CFRelease(v108);
        goto LABEL_133;
      }

      v68 = @"unable to get firmware info from device";
    }

    AMRLog(3, v68, v53, v54, v55, v56, v57, v58, v148);
    goto LABEL_37;
  }

  if (v17)
  {
    if (sub_10002F844(a1))
    {
      v65 = @"Failed to get firmware info from device for DFU file selection";
    }

    else
    {
      if (*(a1 + 136))
      {
        AMRLog(4, @"%@: production fused device", v46, v47, v48, v49, v50, v51, a1);
      }

      if (AMRAuthInstallCopyPathToFirmware(v17, &v157))
      {
        v65 = @"Failed to get firmware directory to locate WTF file.";
      }

      else
      {
        if (*(a1 + 64) || (*(a1 + 68) & 1) != 0)
        {
          v73 = kAMAuthInstallBuildIdentityApiBECKey;
        }

        else
        {
          v73 = kAMAuthInstallBuildIdentityApiBSSKey;
        }

        v76 = *v73;
        if (!AMRAuthInstallCopyFileSystemPathForKey(*(a1 + 184), v17, *v73, &v158))
        {
          goto LABEL_134;
        }

        LOBYTE(v148) = v76;
        v65 = @"Failed to locate DFU file for type %@";
      }
    }
  }

  else
  {
    v65 = @"Can't get DFU file for NULL options";
  }

  AMRLog(3, v65, v46, v47, v48, v49, v50, v51, v148);
LABEL_134:
  if (v157)
  {
    CFRelease(v157);
  }

  v109 = v158;
  if (v158)
  {
    v155 = 0;
    if (sub_10002F694(a1, &v155) && (v155 & 2) != 0)
    {
      AMRAuthInstallCopyTicketData(*(a1 + 184), v17, &v156);
    }

    AMRLog(8, @"using DFU file: %@", v110, v111, v112, v113, v114, v115, v109);
    bzero(buffer, 0x400uLL);
    CFStringGetFileSystemRepresentation(v109, buffer, 1024);
    v116 = fopen(buffer, "rb");
    if (v116)
    {
      v123 = v116;
      v124 = libDFU_downloadToDevice(*(a1 + 160), v116, a1);
      if (*(a1 + 180))
      {
        AMRLog(3, @"The user requested cancel restore", v125, v126, v127, v128, v129, v130, v149);
        v27 = 99;
      }

      else
      {
        v27 = v124;
      }

      fclose(v123);
    }

    else
    {
      AMRLog(3, @"failed to get dfuFileHandle", v117, v118, v119, v120, v121, v122, v149);
      v27 = 1;
    }

    v131 = CFDictionaryGetValue(v17, @"OnlyPersonalizeDFUFile");
    if (v131)
    {
      if (CFEqual(v131, kCFBooleanTrue) == 1 && CFDictionaryGetValue(v17, @"PreserveBundle") == kCFBooleanFalse)
      {
        bzero(v167, 0x400uLL);
        if (CFStringGetCString(v109, v167, 1024, 0x8000100u) == 1)
        {
          unlink(v167);
        }
      }
    }

    CFRelease(v109);
  }

  else
  {
    AMRLog(3, @"_copyPathToDFUFile failed", v46, v47, v48, v49, v50, v51, v148);
    v27 = 1;
  }

LABEL_153:
  if (v25)
  {
    v132 = v27 == 0;
  }

  else
  {
    v132 = 1;
  }

  if (!v132)
  {
    AMRAuthInstallDeletePersonalizedBundle(v25, v17);
  }

  if (v17)
  {
    goto LABEL_159;
  }

LABEL_160:
  if (!v27)
  {
    goto LABEL_162;
  }

  AMRLog(3, @"%@: DFU failed (result = %d)", v28, v29, v30, v31, v32, v33, a1);
  return v27;
}

uint64_t AMTADModeDeviceCopyAuthInstallPreflightOptions(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  AMRestoreCaptureSubsystemLogsIfNeeded();
  if (a1 && a2 && a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      if (*(a1 + 184))
      {
        AMRLog(7, @"authinstall has already been configured for this device", v13, v14, v15, v16, v17, v18, v183);
        goto LABEL_7;
      }

      v29 = sub_10002F844(a1);
      if (v29)
      {
        AMRLog(3, @"unable to get firmware info from device: %d", v30, v31, v32, v33, v34, v35, v29);
      }

      valuePtr = 0;
      cf = 0;
      v37 = (a1 + 104);
      v36 = *(a1 + 104);
      if (v36)
      {
        CFRelease(v36);
        *v37 = 0;
      }

      v39 = (a1 + 96);
      v38 = *(a1 + 96);
      if (v38)
      {
        CFRelease(v38);
        *v39 = 0;
      }

      if (!sub_10002FC1C(a1, @"NONC", &cf))
      {
        v47 = cf;
        v48 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, cf, (a1 + 96));
        if (v48)
        {
          v46 = v48;
          AMRLog(3, @"unparsable ap nonce: %@", v40, v41, v42, v43, v44, v45, v47);
          if (*v39)
          {
            CFRelease(*v39);
            *v39 = 0;
          }

LABEL_28:
          LODWORD(v46) = AMAuthInstallToRestoreError(v46);
          goto LABEL_29;
        }
      }

      if (!*(a1 + 143) || (*(a1 + 68) & 4) == 0 || sub_10002FC1C(a1, @"SNON", &valuePtr))
      {
        LODWORD(v46) = 0;
        goto LABEL_29;
      }

      v103 = valuePtr;
      if (valuePtr)
      {
        v46 = AMAuthInstallSupportCopyDataFromHexString(kCFAllocatorDefault, valuePtr, (a1 + 104));
        if (v46)
        {
          AMRLog(3, @"unparsable sep nonce: %@", v40, v41, v42, v43, v44, v45, v103);
          if (*v37)
          {
            CFRelease(*v37);
            *v37 = 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        AMRLog(3, @"sep nonce is NULL", v40, v41, v42, v43, v44, v45, v183);
        LODWORD(v46) = 1;
      }

LABEL_29:
      if (cf)
      {
        CFRelease(cf);
      }

      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      if (v46)
      {
        AMRLog(3, @"unable to get nonce info from device: %d", v40, v41, v42, v43, v44, v45, v46);
      }

      v49 = CFGetAllocator(a1);
      v50 = AMAuthInstallCreate(v49);
      if (v50)
      {
        v57 = v50;
        v58 = CFGetAllocator(a1);
        Mutable = CFDictionaryCreateMutable(v58, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v66 = Mutable;
          AMAuthInstallSupportDictionarySetInteger64(Mutable, @"ECID", *(a1 + 120));
          AMAuthInstallSupportDictionarySetInteger32(v66, @"ApChipID", *(a1 + 40));
          AMAuthInstallSupportDictionarySetInteger32(v66, @"ApBoardID", *(a1 + 44));
          AMAuthInstallSupportDictionarySetInteger32(v66, @"ApSecurityDomain", *(a1 + 132));
          v67 = *(a1 + 144);
          if (v67)
          {
            CFDictionarySetValue(v66, @"ApSikaFuse", v67);
          }

          v68 = *(a1 + 56);
          if (v68)
          {
            CFDictionarySetValue(v66, @"CertificateEpoch", v68);
          }

          v69 = *(a1 + 152);
          if (v69)
          {
            CFDictionarySetValue(v66, @"SerialString", v69);
          }

          if (*(a1 + 138))
          {
            AMAuthInstallSupportDictionarySetBoolean(v66, @"UIDMode", 1);
          }

          AMAuthInstallSupportDictionarySetBoolean(v66, @"ApProductionMode", *(a1 + 136));
          if (sub_10002F844(a1))
          {
            v70 = 0;
          }

          else
          {
            v70 = *(a1 + 137);
          }

          AMAuthInstallSupportDictionarySetBoolean(v66, @"ApSecurityMode", v70);
          if (sub_10002F844(a1))
          {
            v71 = 0;
          }

          else
          {
            v71 = *(a1 + 140);
          }

          AMAuthInstallSupportDictionarySetBoolean(v66, @"ApEffectiveSecurityMode", v71);
          v184 = v57;
          if (sub_10002F844(a1))
          {
            v72 = 0;
          }

          else
          {
            v72 = *(a1 + 139);
          }

          AMAuthInstallSupportDictionarySetBoolean(v66, @"ApEffectiveProductionMode", v72);
          v73 = 1;
          AMAuthInstallSupportDictionarySetBoolean(v66, @"ApInRomDFU", 1);
          Value = CFDictionaryGetValue(v19, @"SkipNoncesForAPSEP");
          if (Value)
          {
            v75 = Value;
            TypeID = CFBooleanGetTypeID();
            if (TypeID == CFGetTypeID(v75))
            {
              v73 = CFBooleanGetValue(v75) != 1;
            }
          }

          v77 = CFDictionaryGetValue(v19, @"AuthInstallRequestTicketWithoutNonce");
          if (v77 && (v78 = v77, v79 = CFBooleanGetTypeID(), v79 == CFGetTypeID(v78)))
          {
            if (CFBooleanGetValue(v78) == 1 || !v73)
            {
LABEL_66:
              if (v73 && *v37)
              {
                CFDictionarySetValue(v66, @"SepNonce", *v37);
              }

LABEL_69:
              v186 = 0;
              if (sub_10002F694(a1, &v186))
              {
                v80 = v186;
                if ((v186 & 4) != 0)
                {
                  CFDictionarySetValue(v66, @"ApSupportsImg4", kCFBooleanTrue);
                  if ((v80 & 0x20) != 0)
                  {
                    CFDictionarySetValue(v66, @"ApImg4DigestType", @"sha2-384");
                  }
                }
              }

              v81 = CFDictionaryGetValue(v19, @"UserLocale");
              v82 = AMAuthInstallSetLocale(v184, v81);
              if (v82)
              {
                v28 = AMAuthInstallToRestoreError(v82);
                goto LABEL_110;
              }

              v83 = CFDictionaryGetValue(v19, @"AuthInstallAllowMixAndMatch");
              if (v83)
              {
                v84 = v83;
                v85 = CFBooleanGetTypeID();
                if (v85 == CFGetTypeID(v84) && CFBooleanGetValue(v84) == 1)
                {
                  CFDictionaryAddValue(v66, @"ApAllowMixAndMatch", kCFBooleanTrue);
                }
              }

              v86 = CFDictionaryGetValue(v19, @"AuthInstallDemotionPolicyOverride");
              if (v86)
              {
                CFDictionarySetValue(v66, @"DemotionPolicy", v86);
              }

              v87 = CFDictionaryGetValue(v19, @"RequiresUIDMode");
              if (v87)
              {
                v88 = v87;
                v89 = CFBooleanGetTypeID();
                if (v89 == CFGetTypeID(v88) && CFBooleanGetValue(v88) == 1)
                {
                  CFDictionarySetValue(v66, @"RequiresUIDMode", kCFBooleanTrue);
                }
              }

              v90 = CFDictionaryGetValue(v19, @"UIDMode");
              if (v90)
              {
                v91 = v90;
                v92 = CFBooleanGetTypeID();
                if (v92 == CFGetTypeID(v91))
                {
                  CFDictionarySetValue(v66, @"UIDMode", v91);
                }
              }

              v93 = CFDictionaryGetValue(v19, @"ApTagOverrides");
              if (v93)
              {
                CFDictionarySetValue(v66, @"APTagOverrides", v93);
              }

              v94 = AMAuthInstallApSetParameters(v184, v66);
              if (v94)
              {
                v101 = v94;
                AMRLog(3, @"Failed to set ap parameters", v95, v96, v97, v98, v99, v100, v183);
                v102 = v101;
LABEL_109:
                v28 = AMAuthInstallToRestoreError(v102);
                CFRelease(v184);
                goto LABEL_110;
              }

              AMRAuthInstallInitOptionalFirmware(v184, v19);
              v104 = AMRAuthInstallCopyVariant(v184, v19);
              v185 = 0;
              if (v104)
              {
                v111 = v104;
                if (AMRAuthInstallCopyBuildIdentity(v184, v19, v104, &v185) || !v185)
                {
                  AMRLog(3, @"Failed to read build identity.", v112, v113, v114, v115, v116, v117, v183);
                }

                else
                {
                  if (AMAuthInstallSupportGetValueForKeyPathInDict(kCFAllocatorDefault, v185, @"Info.RequiresNonceSlot", v113, v114, v115, v116, v117) == kCFBooleanTrue)
                  {
                    LODWORD(cf) = 0;
                    LODWORD(valuePtr) = 2;
                    v125 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &cf);
                    v126 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
                    CFDictionarySetValue(v66, @"ApNonceSlotID", v125);
                    CFDictionarySetValue(v66, @"SepNonceSlotID", v126);
                    CFRelease(v126);
                    CFRelease(v125);
                    v124 = @"Device will use nonce slots";
                  }

                  else
                  {
                    v124 = @"Device will not use nonce slots";
                  }

                  AMRLog(6, v124, v118, v119, v120, v121, v122, v123, v183);
                  CFRelease(v185);
                }

                CFRelease(v111);
              }

              else
              {
                AMRLog(3, @"Failed to read build variant.", v105, v106, v107, v108, v109, v110, v183);
              }

              v127 = AMAuthInstallApSetParameters(v184, v66);
              if (v127)
              {
                v128 = v127;
                LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(v184, v127);
                AMRLog(3, @"Failed to set ap parameters: %@", v130, v131, v132, v133, v134, v135, LocalizedStatusString);
                v102 = v128;
                goto LABEL_109;
              }

              AMRAuthInstallInitOptionalFirmware(v184, v19);
              v137 = CFDictionaryGetValue(v19, @"BuildIdentityOverride");
              if (v137)
              {
                v138 = CFStringGetTypeID();
                if (v138 == CFGetTypeID(v137))
                {
                  v139 = CFGetAllocator(v184);
                  URLFromString = AMAuthInstallSupportCreateURLFromString(v139, v137, v140, v141, v142, v143, v144, v145);
                  if (!URLFromString)
                  {
                    CFRelease(v184);
                    v28 = 18;
                    goto LABEL_110;
                  }

                  v137 = URLFromString;
                  v147 = AMAuthInstallBundleOverrideBuildManifest(v184, URLFromString);
                  if (v147)
                  {
                    v148 = v147;
                    v149 = AMAuthInstallGetLocalizedStatusString(v184, v147);
                    AMRLog(3, @"Failed to build manifest override: %@", v150, v151, v152, v153, v154, v155, v149);
                    v28 = AMAuthInstallToRestoreError(v148);
                    CFRelease(v184);
                    CFRelease(v66);
                    v156 = 0;
LABEL_135:
                    CFRelease(v137);
LABEL_136:
                    v66 = v156;
                    if (!v156)
                    {
LABEL_111:
                      if (!v28)
                      {
LABEL_7:
                        v20 = CFDictionaryGetValue(v19, @"OnlyPersonalizeDFUFile");
                        if (v20 && CFEqual(v20, kCFBooleanTrue) || (v21 = sub_10002A384(*(a1 + 184), v19, (*(a1 + 68) >> 6) & 1), !v21))
                        {
                          v28 = 0;
                          *a3 = CFRetain(v19);
                        }

                        else
                        {
                          v28 = v21;
                          AMRLog(3, @"%s: failed to personalize bundle", v22, v23, v24, v25, v26, v27, "AMTADModeDeviceCopyAuthInstallPreflightOptions");
                        }

                        goto LABEL_113;
                      }

LABEL_112:
                      AMRLog(3, @"%s: failed to configure authinstall", v51, v52, v53, v54, v55, v56, "AMTADModeDeviceCopyAuthInstallPreflightOptions");
LABEL_113:
                      CFRelease(v19);
                      return v28;
                    }

LABEL_110:
                    CFRelease(v66);
                    goto LABEL_111;
                  }
                }

                else
                {
                  v137 = 0;
                }
              }

              v157 = CFDictionaryGetValue(v19, @"RecoveryOSBuildIdentityOverride");
              if (v157 && (v158 = v157, v159 = CFStringGetTypeID(), v159 == CFGetTypeID(v158)))
              {
                v160 = CFGetAllocator(v184);
                v156 = AMAuthInstallSupportCreateURLFromString(v160, v158, v161, v162, v163, v164, v165, v166);
                if (!v156)
                {
                  CFRelease(v184);
                  v28 = 18;
                  goto LABEL_134;
                }

                v167 = AMAuthInstallBundleOverrideRecoveryOSBuildManifest(v184, v156);
                if (v167)
                {
                  v168 = v167;
                  v169 = AMAuthInstallGetLocalizedStatusString(v184, v167);
                  AMRLog(3, @"Failed to override recoveryOS build manifest: %@", v170, v171, v172, v173, v174, v175, v169);
                  v28 = AMAuthInstallToRestoreError(v168);
                  CFRelease(v184);
                  goto LABEL_134;
                }
              }

              else
              {
                v156 = 0;
              }

              v176 = AMRAuthInstallSetFDRTrustObjectHash(v184, v19);
              if (v176)
              {
                v28 = v176;
              }

              else
              {
                v28 = AMRAuthInstallEnablePersonalization(v184, v19);
                if (v28)
                {
                  AMRLog(3, @"%s: AMRAuthInstallEnablePersonalization failed", v177, v178, v179, v180, v181, v182, "_AMRTADModeDeviceConfigureAuthInstall");
                }

                else
                {
                  *(a1 + 184) = v184;
                }
              }

LABEL_134:
              CFRelease(v66);
              if (!v137)
              {
                goto LABEL_136;
              }

              goto LABEL_135;
            }
          }

          else if (!v73)
          {
            goto LABEL_69;
          }

          if (*v39)
          {
            CFDictionarySetValue(v66, @"ApNonce", *v39);
          }

          goto LABEL_66;
        }

        AMRLog(3, @"Failed to create ap parameters dict", v60, v61, v62, v63, v64, v65, v183);
        CFRelease(v57);
      }

      v28 = 18;
      goto LABEL_112;
    }

    AMRLog(3, @"%s: failed to copy options", v13, v14, v15, v16, v17, v18, "AMTADModeDeviceCopyAuthInstallPreflightOptions");
    return 18;
  }

  else
  {
    AMRLog(3, @"%s: bad argument - undefined arguments passed to function, caller passed NULL", v6, v7, v8, v9, v10, v11, "AMTADModeDeviceCopyAuthInstallPreflightOptions");
    return 1;
  }
}

BOOL sub_10002F694(uint64_t a1, _DWORD *a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v3 = sub_10002FD38(a1, &v13, 0);
  if (v3)
  {
    AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, v3);
  }

  v10 = BYTE7(v19);
  if (BYTE7(v19))
  {
    *a2 = HIDWORD(v14);
  }

  v11 = v10 != 0;
  _AMRestoreDestroyDeviceInfo(&v13);
  return v11;
}

uint64_t AMTADModeDeviceGetBoardID(uint64_t a1)
{
  if (!sub_10002F844(a1))
  {
    return *(a1 + 44);
  }

  AMRLog(3, @"unable to get firmware info from device", v2, v3, v4, v5, v6, v7, v9);
  return 0xFFFFFFFFLL;
}

uint64_t AMTADModeDeviceGetChipID(uint64_t a1)
{
  if (sub_10002F844(a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 40);
  }
}

CFStringRef _AMRTADDeviceCopySerialNumber(uint64_t a1)
{
  cStr = 0;
  v1 = libDFU_deviceSerialNumberString(*(a1 + 160), &cStr);
  result = 0;
  if (!v1)
  {
    return CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  }

  return result;
}

uint64_t sub_10002F844(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v3 = sub_10002FD38(a1, a1 + 40, 1);
  v1 = v3;
  if (v3)
  {
    AMRLog(3, @"unable to get firmware info from device: %d", v4, v5, v6, v7, v8, v9, v3);
  }

  else
  {
    *(a1 + 168) = 1;
  }

  return v1;
}

uint64_t AMTADModeDeviceIsBootstrapOnly(uint64_t a1, const __CFDictionary *a2)
{
  if (sub_10002F844(a1))
  {
    AMRLog(3, @"unable to get firmware info from device", v4, v5, v6, v7, v8, v9, v11);
    return 0;
  }

  else
  {

    return AMRestoreDeviceIsBootstrapOnly(a2, (a1 + 40), v4, v5, v6, v7, v8, v9);
  }
}

uint64_t AMTADModeDeviceGetECID(uint64_t a1)
{
  if (sub_10002F844(a1))
  {
    AMRLog(3, @"unable to get firmware info from device", v2, v3, v4, v5, v6, v7, v9);
  }

  return *(a1 + 120);
}

uint64_t AMTADModeDeviceGetProductionMode(uint64_t a1)
{
  if (sub_10002F844(a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 136);
  }
}

uint64_t _AMRTADModeDeviceCreate(uint64_t a1, _DWORD *a2, int a3)
{
  pthread_once(&stru_1000C85A8, sub_10002FAA0);
  v9 = 0;
  v5 = 0;
  if (!libDFU_deviceTransport(a2, &v9) && v9 == 3)
  {
    _AMRestoreLoadAndCacheIOUSBLibBundle();
    pthread_mutex_lock(&stru_1000C85B8);
    if (qword_1000C90A8 && (Value = CFDictionaryGetValue(qword_1000C90A8, a2)) != 0)
    {
      v5 = Value;
      CFRetain(Value);
    }

    else
    {
      Instance = _CFRuntimeCreateInstance();
      v5 = Instance;
      if (Instance)
      {
        *(Instance + 168) = 0;
        *(Instance + 16) = 0;
        *(Instance + 24) = 0;
        *(Instance + 32) = 0;
        *(Instance + 160) = a2;
        *(Instance + 172) = a3;
        *(Instance + 176) = 0;
        *(Instance + 184) = 0;
        *(Instance + 180) = 0;
        CFDictionarySetValue(qword_1000C90A8, a2, Instance);
      }
    }

    pthread_mutex_unlock(&stru_1000C85B8);
  }

  return v5;
}

CFMutableDictionaryRef sub_10002FAA0()
{
  qword_1000C90B0 = _CFRuntimeRegisterClass();
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  qword_1000C90A8 = result;
  return result;
}

uint64_t _AMRTADModeDeviceDisconnected(uint64_t result)
{
  if (qword_1000C90A8)
  {
    v1 = result;
    pthread_mutex_lock(&stru_1000C85B8);
    CFDictionaryRemoveValue(qword_1000C90A8, *(v1 + 160));

    return pthread_mutex_unlock(&stru_1000C85B8);
  }

  return result;
}

uint64_t AMRRestoreInitializeTADNotificationsExternal(uint64_t a1, uint64_t a2)
{
  _AMRestoreLoadAndCacheIOUSBLibBundle();
  NumberOFDeviceIDsToMatch = _AMRestoreGetNumberOFDeviceIDsToMatch();
  if (NumberOFDeviceIDsToMatch < 1)
  {
    return 0;
  }

  v5 = NumberOFDeviceIDsToMatch;
  v6 = 0;
  while (1)
  {
    DeviceIDToMatchAPOnly = _AMRestoreGetDeviceIDToMatchAPOnly(v6);
    if (DeviceIDToMatchAPOnly)
    {
      v17[0] = a1;
      v17[1] = a2;
      started = libDFU_startDeviceDiscoveryForVIDPID(*DeviceIDToMatchAPOnly, *(DeviceIDToMatchAPOnly + 1), v17);
      if (started)
      {
        break;
      }
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  v15 = started;
  AMRLog(3, @"(External) Unable to set up TAD device connected notification: 0x%x", v9, v10, v11, v12, v13, v14, started);
  return v15;
}

uint64_t sub_10002FC1C(uint64_t a1, const void *a2, void *a3)
{
  __s = 0;
  *a3 = 0;
  v5 = libDFU_deviceNonceString(*(a1 + 160));
  if (v5)
  {
    AMRLog(3, @"libDFU_deviceNonceString returned %d", v6, v7, v8, v9, v10, v11, v5);
    return 59;
  }

  else
  {
    theDict = 0;
    v13 = strlen(__s);
    v14 = CFStringCreateWithBytes(kCFAllocatorDefault, __s, v13, 0x8000100u, 0);
    if (v14)
    {
      v21 = v14;
      v12 = copyKeyValuePairsFromIBootString(v14, &theDict);
      if (!v12)
      {
        Value = CFDictionaryGetValue(theDict, a2);
        *a3 = Value;
        if (Value)
        {
          CFRetain(Value);
          v12 = 0;
        }

        else
        {
          AMRLog(7, @"%@ tag not found", v23, v24, v25, v26, v27, v28, a2);
          v12 = 6;
        }

        CFRelease(theDict);
      }

      CFRelease(v21);
    }

    else
    {
      AMRLog(3, @"nonce conversion failure", v15, v16, v17, v18, v19, v20, v30);
      return 31;
    }
  }

  return v12;
}

uint64_t sub_10002FD38(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v34 = 0;
  v6 = libDFU_devicePID(*(a1 + 160), &v34);
  if (!v6)
  {
    v15 = _AMRTADDeviceCopySerialNumber(a1);
    if (!v15)
    {
      v13 = @"unable to get device serial number";
      goto LABEL_3;
    }

    v16 = v15;
    v14 = parseSerialNumberInfo(v15, a2, v34, a3);
    if (!v14)
    {
      v23 = _AMRTADDeviceCopyEpochString(a1);
      if (v23)
      {
        AMRLog(3, @"device has epochs.", v17, v18, v19, v20, v21, v22, v32);
        v14 = parseSerialNumberInfo(v23, a2, v34, a3);
        if (v14)
        {
          goto LABEL_13;
        }
      }

      else
      {
        AMRLog(3, @"device does not have epochs.", v17, v18, v19, v20, v21, v22, v32);
      }

      v24 = _AMRTADDeviceCopySerialNumber(a1);
      *(a2 + 40) = v24;
      if (!v24)
      {
        AMRLog(3, @"unable to get device proudct string", v25, v26, v27, v28, v29, v30, v33);
        v14 = 0xFFFFFFFFLL;
        if (!v23)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v14 = 0;
      if (v23)
      {
LABEL_13:
        CFRelease(v23);
      }
    }

LABEL_14:
    CFRelease(v16);
    return v14;
  }

  v32 = v6;
  v13 = @"unable to get TAD device product ID - %d";
LABEL_3:
  AMRLog(3, v13, v7, v8, v9, v10, v11, v12, v32);
  return 0xFFFFFFFFLL;
}

void sub_10002FE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AMRLog(7, @"%s: %p", a3, a4, a5, a6, a7, a8, "_AMRTADModeDeviceFinalize");
  v9 = *(a1 + 160);
  if (v9)
  {
    libDFU_release(v9);
    *(a1 + 160) = 0;
  }

  v10 = *(a1 + 184);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 184) = 0;
  }

  if (*(a1 + 168) == 1)
  {

    _AMRestoreDestroyDeviceInfo((a1 + 40));
  }
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

BOOL sub_1000309B8(NSError *self, SEL a2)
{
  v3 = [(NSError *)self domain];
  if ([v3 isEqualToString:NSPOSIXErrorDomain])
  {
    v4 = [(NSError *)self code]== 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id UARPPersonalizationTSSRequestWithSigningServer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100030ED0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v13, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = sub_100030ED0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with options %{public}@", &v13, 0x16u);
  }

  v8 = sub_100030F14(v3, v5, 0);
  v9 = sub_100030ED0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_1000315A0();
    }

    v11 = v8;
  }

  else
  {
    if (v10)
    {
      sub_1000315D4();
    }
  }

  return v8;
}

id sub_100030ED0()
{
  if (qword_1000C90B8 != -1)
  {
    sub_100031608();
  }

  v1 = qword_1000C90C0;

  return v1;
}

id sub_100030F14(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_100030ED0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS request to signing server %{public}@", buf, 0xCu);
  }

  AMAuthInstallLogSetHandler(sub_1000314CC);
  v8 = AMAuthInstallCreate(kCFAllocatorDefault);
  if (!v8)
  {
    v13 = sub_100030ED0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000316C8();
    }

    goto LABEL_11;
  }

  v9 = v8;
  v10 = AMAuthInstallSetSigningServerURL(v8, v6);
  v11 = sub_100030ED0();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10003161C();
    }

    CFRelease(v9);
LABEL_11:
    v14 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v15 = @" <AppleConnect>";
    }

    else
    {
      v15 = @" ";
    }

    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "UARP: TSS Request %{public}@%{public}@ is ", buf, 0x16u);
  }

  v16 = sub_100030ED0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  v23 = 0;
  v17 = AMAuthInstallApCreatePersonalizedResponse(v9, v5, &v23);
  v18 = sub_100030ED0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v19 = @" <AppleConnect>";
    }

    else
    {
      v19 = @" ";
    }

    *buf = 138543618;
    v25 = v6;
    v26 = 2114;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "UARP: TSS Response %{public}@%{public}@ is ", buf, 0x16u);
  }

  v20 = sub_100030ED0();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "UARP: %{public}@", buf, 0xCu);
  }

  if (v17)
  {
    v21 = sub_100030ED0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100031650(v17, v21);
    }

    v14 = 0;
  }

  else
  {
    v14 = v23;
  }

  CFRelease(v9);
LABEL_32:

  return v14;
}

id UARPPersonalizationTSSRequestWithSigningServerSSO(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = sub_100030ED0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UARP: TSS Request to default server", &v11, 2u);
    }

    v5 = [NSURL URLWithString:@"https://gs.apple.com:443"];
  }

  v7 = sub_100030ED0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UARP: TSS Request to server %{public}@ with SSO and options %{public}@", &v11, 0x16u);
  }

  v8 = sub_100030F14(v3, v5, 1);
  if (!v8)
  {
    v9 = sub_100030ED0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000316FC();
    }
  }

  return v8;
}

void sub_100031484(id a1)
{
  v1 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
  v2 = qword_1000C90C0;
  qword_1000C90C0 = v1;
}

void sub_1000314CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100030ED0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UARP: Personalization Message >> %{public}s", &v4, 0xCu);
  }
}

void sub_100031578(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100031650(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v2, 8u);
}

BOOL sub_100034800(NSFileHandle *self, SEL a2, const void *a3, unint64_t a4)
{
  v5 = [NSData dataWithBytes:a3 length:a4];
  LOBYTE(self) = [(NSFileHandle *)self ftabWriteData:v5 error:0];

  return self;
}

void sub_100036200(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10003626C()
{
  sub_10003623C();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000362E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v7 = *a1;
  v8 = a2[33];
  v9 = a2[34];
  v10 = a2[35];
  v11 = a2[36];
  v12 = a2[37];
  v13 = a2[38];
  v14 = a2[39];
  sub_100036220();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

void sub_100036448()
{
  sub_100036258();
  sub_100036230();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000364D4()
{
  sub_100036258();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100036558(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_100036230();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x24u);
}

void sub_100036688()
{
  sub_10003623C();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100036704(void *a1)
{
  v1 = [a1 path];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Unable to delete file at %@", v4, v5, v6, v7, v8);
}

void sub_100036790(void *a1)
{
  v1 = [a1 path];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Unable to create file at %@", v4, v5, v6, v7, v8);
}

void sub_10003681C()
{
  sub_10000DC14();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000368D8(void *a1)
{
  v1 = [a1 tag];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to write '%@' header", v4, v5, v6, v7, v8);
}

void sub_1000369A4(void *a1)
{
  v1 = [a1 tag];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to write '%@'", v4, v5, v6, v7, v8);
}

void sub_100036A30(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to open file handle for writing to '%@'", v4, v5, v6, v7, v8);
}

void sub_100036ABC()
{
  sub_10000DC14();
  sub_100036230();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C048(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained superbinary:*(a1 + 32) logString:*(a1 + 40)];
}

id sub_10003C094(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);

  return v4;
}

void sub_10003C0D0(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_10003CA1C(id a1)
{
  v1 = objc_opt_new();
  v2 = +[UARPTLVPersonalizationRequiredBackDeploy metaDataTableEntry];
  [v1 addObject:v2];

  v3 = +[UARPTLVPersonalizationPayloadTagBackDeploy metaDataTableEntry];
  [v1 addObject:v3];

  v4 = +[UARPTLVPersonalizationSuperBinaryAssetIDBackDeploy metaDataTableEntry];
  [v1 addObject:v4];

  v5 = +[UARPTLVPersonalizationManifestPrefixBackDeploy metaDataTableEntry];
  [v1 addObject:v5];

  v6 = +[UARPTLVPersonalizationBoardIDBackDeploy metaDataTableEntry];
  [v1 addObject:v6];

  v7 = +[UARPTLVPersonalizationChipIDBackDeploy metaDataTableEntry];
  [v1 addObject:v7];

  v8 = +[UARPTLVPersonalizationECIDBackDeploy metaDataTableEntry];
  [v1 addObject:v8];

  v9 = +[UARPTLVPersonalizationECIDDataBackDeploy metaDataTableEntry];
  [v1 addObject:v9];

  v10 = +[UARPTLVPersonalizationNonceBackDeploy metaDataTableEntry];
  [v1 addObject:v10];

  v11 = +[UARPTLVPersonalizationNonceHashBackDeploy metaDataTableEntry];
  [v1 addObject:v11];

  v12 = +[UARPTLVPersonalizationSecurityDomainBackDeploy metaDataTableEntry];
  [v1 addObject:v12];

  v13 = +[UARPTLVPersonalizationSecurityModeBackDeploy metaDataTableEntry];
  [v1 addObject:v13];

  v14 = +[UARPTLVPersonalizationProductionModeBackDeploy metaDataTableEntry];
  [v1 addObject:v14];

  v15 = +[UARPTLVPersonalizationChipEpochBackDeploy metaDataTableEntry];
  [v1 addObject:v15];

  v16 = +[UARPTLVPersonalizationEnableMixMatchBackDeploy metaDataTableEntry];
  [v1 addObject:v16];

  v17 = +[UARPTLVPersonalizationSuperBinaryPayloadIndexBackDeploy metaDataTableEntry];
  [v1 addObject:v17];

  v18 = +[UARPTLVPersonalizationChipRevisionBackDeploy metaDataTableEntry];
  [v1 addObject:v18];

  v19 = +[UARPTLVPersonalizationFTABSubfileTagBackDeploy metaDataTableEntry];
  [v1 addObject:v19];

  v20 = +[UARPTLVPersonalizationFTABSubfileLongnameBackDeploy metaDataTableEntry];
  [v1 addObject:v20];

  v21 = +[UARPTLVPersonalizationFTABSubfileDigestBackDeploy metaDataTableEntry];
  [v1 addObject:v21];

  v22 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithmBackDeploy metaDataTableEntry];
  [v1 addObject:v22];

  v23 = +[UARPTLVPersonalizationFTABSubfileESECBackDeploy metaDataTableEntry];
  [v1 addObject:v23];

  v24 = +[UARPTLVPersonalizationFTABSubfileEPROBackDeploy metaDataTableEntry];
  [v1 addObject:v24];

  v25 = +[UARPTLVPersonalizationFTABSubfileTrustedBackDeploy metaDataTableEntry];
  [v1 addObject:v25];

  v26 = +[UARPTLVPersonalizationSoCLiveNonceBackDeploy metaDataTableEntry];
  [v1 addObject:v26];

  v27 = +[UARPTLVPersonalizationPrefixNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v27];

  v28 = +[UARPTLVPersonalizationSuffixNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v28];

  v29 = +[UARPTLVPersonalizationLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v29];

  v30 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumberBackDeploy metaDataTableEntry];
  [v1 addObject:v30];

  v31 = +[UARPTLVHostPersonalizationRequiredBackDeploy metaDataTableEntry];
  [v1 addObject:v31];

  v32 = +[UARPTLVRequiredPersonalizationOptionBackDeploy metaDataTableEntry];
  [v1 addObject:v32];

  v33 = +[UARPTLVPersonalizationFTABPayloadBackDeploy metaDataTableEntry];
  [v1 addObject:v33];

  v34 = +[UARPTLVPersonalizedManifestBackDeploy metaDataTableEntry];
  [v1 addObject:v34];

  v35 = +[UARPTLVPersonalizationLifeBackDeploy metaDataTableEntry];
  [v1 addObject:v35];

  v36 = +[UARPTLVPersonalizationProvisioningBackDeploy metaDataTableEntry];
  [v1 addObject:v36];

  v37 = +[UARPTLVPersonalizationManifestEpochBackDeploy metaDataTableEntry];
  [v1 addObject:v37];

  v38 = +[UARPTLVPersonalizationManifestSuffixBackDeploy metaDataTableEntry];
  [v1 addObject:v38];

  v39 = [NSArray arrayWithArray:v1];
  v40 = qword_1000C90C8;
  qword_1000C90C8 = v39;
}

void sub_1000488EC(uint64_t a1)
{
  Value = CFDictionaryGetValue(qword_1000C90E8, (*(a1 + 42) | (*(a1 + 40) << 16)));
  if (Value)
  {
    v3 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        (**(a1 + 32))(ValueAtIndex);
      }
    }

    v8 = qword_1000C90E8;
    v9 = (*(a1 + 42) | (*(a1 + 40) << 16));

    CFDictionaryRemoveValue(v8, v9);
  }
}

uint64_t sub_1000489A8(uint64_t a1, unsigned __int16 *a2, int *a3, unsigned int *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    *buf = 67109888;
    v30 = v8;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Read config start portal: %d seq: 0x%x index: 0x%x words: %d", buf, 0x1Au);
  }

  v12 = 3758097084;
  v28 = *a4;
  if (!serialize_pcr(a2, a3, &v28))
  {
    v13 = *a2;
    v14 = debug_usb_write(a1);
    if (v14 || (v15 = *a2, v14 = debug_usb_read(a1), v14))
    {
      v12 = v14;
    }

    else
    {
      v16 = a2[3];
      v17 = 4 * v16;
      v18 = *a4;
      if (4 * v16 + 20 <= *a4)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v23 = *a3;
          v24 = a3[1];
          v25 = a3[2];
          v26 = a3 + (v18 & 0xFFFFFFFC);
          v27 = *(v26 - 2);
          LODWORD(v26) = *(v26 - 1);
          *buf = 67110144;
          v30 = v23;
          v31 = 1024;
          v32 = v24;
          v33 = 1024;
          v34 = v25;
          v35 = 1024;
          v36 = v27;
          v37 = 1024;
          v38 = v26;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Read config 0x%x 0x%x 0x%x ... 0x%x 0x%x", buf, 0x20u);
          v16 = a2[3];
          v18 = *a4;
          v17 = 4 * v16;
        }

        if (v17 <= a3[(v18 >> 2) - 2])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v19 = *a2;
            v20 = a2[1];
            v21 = a2[2];
            *buf = 67109888;
            v30 = v19;
            v31 = 1024;
            v32 = v20;
            v33 = 1024;
            v34 = v21;
            v35 = 1024;
            v36 = v16;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Read config end portal: %d seq: 0x%x index: 0x%x words: %d", buf, 0x1Au);
          }

          return 0;
        }
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100049D3C(a2);
  }

  return v12;
}

uint64_t sub_100048C44(uint64_t a1, FILE *a2)
{
  v2 = a1;
  memset(&v33, 0, sizeof(v33));
  v3 = 4294967287;
  if (!a1)
  {
    goto LABEL_17;
  }

  v4 = a2;
  if (!a2)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 40);
  if (!v5 || (v6 = sub_100049768(*v5)) == 0 || (v7 = v6, v8 = fileno(v4), v8 == -1) || fstat(v8, &v33) < 0 || (v33.st_mode & 0xF000) != 0x8000 || (st_size = v33.st_size, !v33.st_size) || v33.st_size > v5[4] || (v10 = malloc_type_malloc(0x4000uLL, 0x714573E3uLL)) == 0)
  {
    v3 = 4294967287;
    goto LABEL_17;
  }

  v11 = v10;
  v31 = v2;
  v32 = v5;
  if ((LODWORD(v33.st_size) + 0x3FFF) >= 0x4000)
  {
    v16 = 0;
    v17 = (LODWORD(v33.st_size) + 0x3FFF) >> 14;
    do
    {
      v18 = fread(v11, 1uLL, 0x4000uLL, v4);
      if (!v18)
      {
        goto LABEL_38;
      }

      v19 = v18;
      v20 = v4;
      v21 = *(v32 + 1);
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v22 = malloc_type_malloc(0x4020uLL, 0x933CC2E0uLL);
      if (!v22)
      {
        goto LABEL_38;
      }

      v23 = v22;
      v24 = v21 + v16;
      LOBYTE(v34) = 16;
      WORD1(v34) = 4337;
      HIDWORD(v34) = 13;
      v35 = v24;
      LODWORD(v36) = v19;
      v37 = v11;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        *&buf[4] = 16;
        v40 = 0x800000010F10400;
        *v41 = v24;
        *&v41[8] = 1024;
        *v42 = v19;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Write data start portal: %d seq: 0x%x addr: 0x%llx bytes: %d", buf, 0x1Eu);
      }

      v38 = 16416;
      if (serialize_paw(&v34, v23, &v38))
      {
        goto LABEL_42;
      }

      if (debug_usb_write(v7))
      {
        goto LABEL_42;
      }

      v38 = 16416;
      if (debug_usb_read(v7) || v38 < 0x14)
      {
        goto LABEL_42;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v26 = *v23;
        v27 = v23[1];
        v28 = v23[2];
        v29 = v23[3];
        v30 = v23[4];
        *buf = 67110144;
        *&buf[4] = v26;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = v27;
        HIWORD(v40) = 1024;
        *v41 = v28;
        *&v41[4] = 1024;
        *&v41[6] = v29;
        *v42 = 1024;
        *&v42[2] = v30;
        _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Write data response 0x%x 0x%x 0x%x 0x%x 0x%x", buf, 0x20u);
      }

      v25 = v36;
      if (v36 > v23[3])
      {
LABEL_42:
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109888;
          *&buf[4] = v34;
          LOWORD(v40) = 1024;
          *(&v40 + 2) = WORD1(v34);
          HIWORD(v40) = 2048;
          *v41 = v35;
          *&v41[8] = 1024;
          *v42 = v36;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Write data error portal: %d seq: 0x%x addr: 0x%llx bytes: %d", buf, 0x1Eu);
        }

        free(v23);
        goto LABEL_38;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 67109888;
        *&buf[4] = v34;
        LOWORD(v40) = 1024;
        *(&v40 + 2) = WORD1(v34);
        HIWORD(v40) = 2048;
        *v41 = v35;
        *&v41[8] = 1024;
        *v42 = v25;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Write data end portal: %d seq: 0x%x addr: 0x%llx bytes: %d", buf, 0x1Eu);
      }

      free(v23);
      v16 += v19;
      --v17;
      v4 = v20;
    }

    while (v17);
  }

  LODWORD(v34) = st_size;
  *buf = 0x1010310F00010;
  v12 = malloc_type_malloc(0x40uLL, 0x9A4A0BBEuLL);
  if (!v12)
  {
LABEL_38:
    free(v11);
    v3 = 4294967287;
    v2 = v31;
LABEL_17:
    fprintf(__stderrp, "failed to restore device %s@%x with error %d\n", *(v2 + 16), *(v2 + 32), v3);
    return v3;
  }

  v13 = v12;
  v40 = &v34;
  v14 = sub_100049118(v7, buf, v12, 0x40u);
  free(v13);
  free(v11);
  if (v14)
  {
    v3 = 4294967287;
  }

  else
  {
    v3 = 0;
  }

  v2 = v31;
  if (v14)
  {
    goto LABEL_17;
  }

  return v3;
}

uint64_t sub_100049118(uint64_t a1, char *a2, unsigned int *a3, unsigned int a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
    *buf = 67109888;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Write config start portal: %d seq: 0x%x index: 0x%x words: %d", buf, 0x1Au);
  }

  v12 = 3758097084;
  v21 = a4;
  if (!serialize_pcw(a2, a3, &v21))
  {
    v13 = *a2;
    v14 = debug_usb_write(a1);
    if (v14 || (v21 = a4, v15 = *a2, v14 = debug_usb_read(a1), v14))
    {
      v12 = v14;
    }

    else if (v21 >= 0x14)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100049DC4(a3);
      }

      v16 = *(a2 + 3);
      if (a3[3] >= 4 * v16)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v17 = *a2;
          v18 = *(a2 + 1);
          v19 = *(a2 + 2);
          *buf = 67109888;
          v23 = v17;
          v24 = 1024;
          v25 = v18;
          v26 = 1024;
          v27 = v19;
          v28 = 1024;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Write config end portal: %d seq: 0x%x index: 0x%x words: %d", buf, 0x1Au);
        }

        return 0;
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100049E54(a2);
  }

  return v12;
}

void sub_100049328(id a1)
{
  qword_1000C90E0 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  qword_1000C90E8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  qword_1000C90D8 = dispatch_queue_create("com.apple.libDFU.libraryOperationQueue", 0);
}

void sub_1000493A4(uint64_t a1)
{
  if (qword_1000C90F0 != -1)
  {
    sub_100049EDC();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *"";
  block[2] = sub_100049A78;
  block[3] = &unk_1000AB8E0;
  block[4] = *(a1 + 32);
  dispatch_async(qword_1000C90D8, block);
}

uint64_t sub_100049468(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100049118(v1, va, v2, 0x800u);
}

void *sub_100049498(io_service_t a1)
{
  v12 = 0;
  if (!taDFU_osSupportsLibrary() || (taDFU_AppleKIS_enabled() & 1) != 0 || taDFU_deviceinterfaced_enabled())
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040C83E1755uLL);
  v3 = v2;
  if (v2)
  {
    v11 = 0;
    *v2 = 3;
    v2[6] = &off_1000AB880;
    v4 = sub_100049768(a1);
    if (v4)
    {
      v5 = v4;
      if (debug_usb_get_location(v4) || (v6 = malloc_type_malloc(0x800uLL, 0x75B4BBuLL)) == 0)
      {
        debug_usb_free(v5);
      }

      else
      {
        v7 = v6;
        LOBYTE(v12) = 16;
        *(&v12 + 2) = 16781313;
        HIWORD(v12) = 256;
        v11 = 2048;
        if (!sub_1000489A8(v5, &v12, v6, &v11))
        {
          v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x101004051C97926uLL);
          if (v8)
          {
            v3[5] = v8;
            *v8 = a1;
            IOObjectRetain(a1);
            v9 = v3[5];
            if (v9)
            {
              if (v7[3] == 1631864405 && *(v7 + 9) << 16 == 0x10000)
              {
                *(v9 + 8) = *(v7 + 7);
                *(v9 + 16) = v7[5];
                *(v3 + 9) = v7[21];
                *(v9 + 24) = sub_1000499A0(*(v7 + 36), (v7 + 3));
                *(v9 + 32) = sub_1000499A0(*(v7 + 40), (v7 + 3));
                v3[1] = sub_1000499A0(*(v7 + 90), (v7 + 3));
                v3[2] = sub_1000499A0(*(v7 + 91), (v7 + 3));
                v3[3] = sub_1000499A0(*(v7 + 92), (v7 + 3));
                debug_usb_free(v5);
                free(v7);
                return v3;
              }
            }
          }
        }

        debug_usb_free(v5);
        free(v7);
      }
    }

    libDFU_release(v3);
    return 0;
  }

  return v3;
}

__CFDictionary *sub_10004969C()
{
  v0 = IOServiceMatching("IOUSBDevice");
  if (v0)
  {
    valuePtr = 1452;
    v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v1)
    {
      v2 = v1;
      CFDictionarySetValue(v0, @"idVendor", v1);
      v6 = 6273;
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v6);
      if (v3)
      {
        v4 = v3;
        CFDictionarySetValue(v0, @"idProduct", v3);
        CFRelease(v2);
        v2 = v4;
      }

      CFRelease(v2);
    }
  }

  return v0;
}

void *sub_100049768(io_service_t a1)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v1 = debug_usb_init_for_service(a1);
  v2 = v1;
  if (v1)
  {
    v8 = 0;
    if (debug_usb_set_endpoint_for_portal(v1, 1, 0))
    {
      goto LABEL_11;
    }

    if (debug_usb_set_endpoint_for_portal(v2, 1, 1u))
    {
      goto LABEL_11;
    }

    v3 = malloc_type_malloc(0x800uLL, 0xD66ECFACuLL);
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    v8 = 33;
    LOBYTE(v9) = 1;
    *(&v9 + 2) = 720641;
    HIWORD(v9) = 1;
    v10 = &v8;
    v5 = sub_100049468(v3);
    if (v5)
    {
      goto LABEL_11;
    }

    v8 = 1;
    LOBYTE(v9) = 1;
    *(&v9 + 2) = 1376002;
    HIWORD(v9) = 1;
    v10 = &v8;
    if (sub_100049468(v5))
    {
      goto LABEL_11;
    }

    LOBYTE(v11) = 0;
    *(&v11 + 2) = 65283;
    HIWORD(v11) = 32;
    v8 = 2048;
    if (sub_1000489A8(v2, &v11, v4, &v8) || (v4[3] & 0xFE0000) != 0x20000 || (v6 = debug_usb_set_endpoint_for_portal(v2, 3, 0x10u), v6) || (v8 = 288000, LOBYTE(v9) = 16, *(&v9 + 2) = 659462, HIWORD(v9) = 1, v10 = &v8, sub_100049468(v6)))
    {
LABEL_11:
      debug_usb_free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1000498E0(uint64_t a1, void *a2)
{
  result = 4294967287;
  if (a1 && a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 24);
    }
  }

  return result;
}

uint64_t sub_100049908(uint64_t a1, void *a2)
{
  result = 4294967287;
  if (a1 && a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 32);
    }
  }

  return result;
}

void sub_100049930(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      if (*v2)
      {
        IOObjectRelease(*v2);
        *v2 = 0;
      }

      v3 = *(v2 + 24);
      if (v3)
      {
        free(v3);
        *(v2 + 24) = 0;
      }

      v4 = *(v2 + 32);
      if (v4)
      {
        free(v4);
        *(v2 + 32) = 0;
      }

      free(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

void *sub_1000499A0(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (a2 + 4 * a1);
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  if (((a1 + (((v3 - 1) & 0xFC) >> 2)) & 0x100) != 0)
  {
    return 0;
  }

  v4 = CFStringCreateWithBytes(kCFAllocatorDefault, v2 + 2, v3 - 2, 0x100u, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Length = CFStringGetLength(v4);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x78DED79CuLL);
  if (v8 && !CFStringGetCString(v5, v8, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    CFRelease(v5);
    free(v8);
    return 0;
  }

  CFRelease(v5);
  return v8;
}

void sub_100049A78(uint64_t a1)
{
  v2 = sub_10004969C();
  if (v2)
  {
    v3 = v2;
    iokitUtils_startDiscovery(v2, sub_100049B48, qword_1000C90E0, sub_100049C50, qword_1000C90E0, *(a1 + 32));

    CFRelease(v3);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to start discovery of Debug USB devices!", v4, 2u);
  }
}

void sub_100049B48(int a1, io_iterator_t iterator)
{
  if (iterator)
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = sub_100049498(v4);
        if (v5)
        {
          v6 = v5;
          sub_100049488();
          Value = CFDictionaryGetValue(v7, v8);
          iokitUtils_setDeviceForService(v4, v6);
          if (Value)
          {
            (*Value)(v6);
          }

          else
          {
            sub_100049488();
            Mutable = CFDictionaryGetValue(v10, v11);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, 0);
              sub_100049488();
              CFDictionarySetValue(v13, v14, Mutable);
              CFRelease(Mutable);
            }

            CFArrayAppendValue(Mutable, v6);
          }
        }

        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
      }

      while (v4);
    }
  }
}

void sub_100049C50(int a1, io_iterator_t iterator)
{
  if (iterator)
  {
    v3 = IOIteratorNext(iterator);
    if (v3)
    {
      v4 = v3;
      do
      {
        v5 = iokitUtils_popDeviceForService(v4);
        if (v5)
        {
          v6 = v5;
          Value = CFDictionaryGetValue(qword_1000C90E0, (v6[19] | (v6[18] << 16)));
          if (Value)
          {
            Value[1](v6);
          }

          else
          {
            v8 = CFDictionaryGetValue(qword_1000C90E8, (v6[19] | (v6[18] << 16)));
            v10.length = CFArrayGetCount(v8);
            v10.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v10, v6);
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(v8, FirstIndexOfValue);
            }

            libDFU_release(v6);
          }
        }

        IOObjectRelease(v4);
        v4 = IOIteratorNext(iterator);
      }

      while (v4);
    }
  }
}

void sub_100049D3C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_100049440();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Read config error portal: %d seq: 0x%x index: 0x%x words: %d", v5, 0x1Au);
}

void sub_100049DC4(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_100049440();
  v9 = v6;
  v10 = v7;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Write config response 0x%x 0x%x 0x%x 0x%x 0x%x", v8, 0x20u);
}

void sub_100049E54(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_100049440();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Write config error portal: %d seq: 0x%x index: 0x%x words: %d", v5, 0x1Au);
}

void sub_100049EF0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = *"";
  block[2] = sub_100049FC4;
  block[3] = &unk_1000AB940;
  block[4] = a1;
  if (qword_1000C9108 != -1)
  {
    dispatch_once(&qword_1000C9108, block);
  }
}

uint64_t sub_100049F78(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), **(a1 + 48));
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(*(a1 + 48) + 4);

  return v3(v2, v4);
}

void sub_100049FC4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    qword_1000C9120 = *(a1 + 32);
    qword_1000C9118 = IONotificationPortCreate(kIOMasterPortDefault);
    IONotificationPortSetDispatchQueue(qword_1000C9118, qword_1000C9120);
  }

  qword_1000C9110 = 0;
}

uint64_t taDFU_startDeviceDiscoveryForVIDPID(unsigned int a1, unsigned int a2, uint64_t *a3, NSObject *a4)
{
  taDFU_AppleKIS_startDeviceDiscoveryForVIDPID(a1, a2, a3, a4);
  taDFU_deviceinterfaced_startDeviceDiscoveryForVIDPID(a1, a2, a3, a4);
  taDFU_Library_startDeviceDiscoveryForVIDPID(a1, a2, a3, a4);
  return 0;
}

void sub_10004A088(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = v2;
  *(a2 + 5) = v3;
  *(a2 + 7) = BYTE2(v3);
}

void sub_10004A0A4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 2) = -96;
  *(a2 + 3) = v3;
}

uint64_t sub_10004A0C8(uint64_t a1, FILE *a2)
{
  memset(&v20, 0, sizeof(v20));
  v18 = 0;
  v19 = 0;
  if (!a1 || (v3 = *(a1 + 40)) == 0)
  {
    Status = 4294967287;
LABEL_29:
    fprintf(__stderrp, "failed to restore device %s@%x with error %d\n", *(a1 + 16), *(a1 + 32), Status);
    return Status;
  }

  if (!a2 || (v5 = *(v3 + 32)) == 0 || (*(v5 + 2) & 1) == 0 || (*(v3 + 64) & 1) != 0 || (v6 = fileno(a2), v6 == -1) || fstat(v6, &v20) < 0 || (v20.st_mode & 0xF000) != 0x8000 || !v20.st_size || usbDFU_appendSuffix(a1, a2) || (v7 = *(a1 + 40)) == 0 || (v8 = *(v7 + 32)) == 0 || (v9 = *(v8 + 5), !*(v8 + 5)))
  {
    v10 = 0;
    goto LABEL_39;
  }

  v10 = malloc_type_malloc(*(v8 + 5), 0xE316D54uLL);
  if (!v10)
  {
LABEL_39:
    Status = 4294967287;
    goto LABEL_26;
  }

  v11 = (*(**(v3 + 8) + 64))(*(v3 + 8));
  if (!v11)
  {
    v11 = usbDFU_clearStatus(a1);
    if (!v11)
    {
      if (-LODWORD(v20.st_size) >= v9)
      {
        v12 = fread(v10, 1uLL, v9, a2);
        if (v12)
        {
          v11 = usbDFU_downloadBlock(a1, 0, v12, v10);
          if (!v11)
          {
            v13 = -10;
            do
            {
              Status = usbDFU_getStatus(a1, &v18);
              if (Status)
              {
                break;
              }

              if (!v13)
              {
                break;
              }

              Status = 4294967277;
              if (v18)
              {
                break;
              }

              ++v13;
            }

            while (v19 == 5);
            goto LABEL_26;
          }

          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v11 = usbDFU_downloadBlock(a1, 0, 0, v10);
      if (!v11)
      {
        v16 = -11;
        while (1)
        {
          v11 = usbDFU_getStatus(a1, &v18);
          if (v11)
          {
            break;
          }

          if (__CFADD__(v16++, 1))
          {
            Status = 16;
            goto LABEL_26;
          }

          Status = 4294967277;
          if (v18 || v19 != 6)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

LABEL_40:
  Status = v11;
LABEL_26:
  (*(**(v3 + 8) + 72))(*(v3 + 8));
  if (v10)
  {
    free(v10);
  }

  if (Status)
  {
    goto LABEL_29;
  }

  return Status;
}

uint64_t sub_10004A338()
{
  result = *(v0 + 8);
  v2 = *(*result + 208);
  return result;
}

uint64_t *sub_10004A358()
{
  result = *(v0 + 8);
  v2 = *result;
  return result;
}

__CFDictionary *sub_10004A384(unsigned int a1, unsigned int a2)
{
  v4 = IOServiceMatching("IOUSBDevice");
  if (v4)
  {
    valuePtr = a1;
    v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(v4, @"idVendor", v5);
      v10 = a2;
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v10);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v4, @"idProduct", v7);
        CFRelease(v6);
        v6 = v8;
      }

      CFRelease(v6);
    }
  }

  return v4;
}

uint64_t sub_10004A458(io_object_t a1)
{
  theInterface = 0;
  if (!a1 || !IOObjectConformsTo(a1, "IOUSBDevice"))
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040C83E1755uLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  theScore = 0;
  *v2 = 1;
  v2[6] = off_1000AB960;
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00404234686BuLL);
  if (!v4)
  {
    goto LABEL_52;
  }

  v5 = v4;
  *(v3 + 40) = v4;
  LODWORD(v4->tv_sec) = a1;
  IOObjectRetain(a1);
  v6 = sub_10004A370();
  v7 = CFUUIDGetConstantUUIDWithBytes(v6, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], 0x61u);
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  if (IOCreatePlugInInterfaceForService(a1, v7, v8, &theInterface, &theScore))
  {
    goto LABEL_52;
  }

  v9 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v11 = sub_10004A370();
  v12 = CFUUIDGetConstantUUIDWithBytes(v11, 0x5Cu, 0x81u, 0x87u, 0xD0u, 0x9Eu, 0xF3u, 0x11u, byte7a[0], byte7a[1], byte7a[2], byte7a[3], byte7a[4], byte7a[5], byte7a[6], byte7a[7], 0x61u);
  v13 = CFUUIDGetUUIDBytes(v12);
  LODWORD(v9) = (QueryInterface)(v9, *&v13.byte0, *&v13.byte8, &v5->tv_nsec);
  IODestroyPlugInInterface(theInterface);
  theInterface = 0;
  if (v9)
  {
    goto LABEL_52;
  }

  if (!*(v3 + 40))
  {
    goto LABEL_52;
  }

  v14 = sub_10004A358();
  if ((*(v15 + 160))(v14, v3 + 32))
  {
    goto LABEL_52;
  }

  v16 = sub_10004A358();
  if ((*(v17 + 104))(v16, v3 + 36))
  {
    goto LABEL_52;
  }

  v18 = sub_10004A358();
  if ((*(v19 + 112))(v18, v3 + 38))
  {
    goto LABEL_52;
  }

  v46 = 0;
  v20 = sub_10004A358();
  if ((*(v21 + 272))(v20, &v46))
  {
    goto LABEL_52;
  }

  if (!v46)
  {
    goto LABEL_52;
  }

  v22 = usbDFU_copyStringDescriptor(v3, v46);
  *(v3 + 8) = v22;
  if (!v22)
  {
    goto LABEL_52;
  }

  v23 = sub_10004A358();
  if ((*(v24 + 280))(v23, &v46))
  {
    goto LABEL_52;
  }

  if (!v46)
  {
    goto LABEL_52;
  }

  v25 = usbDFU_copyStringDescriptor(v3, v46);
  *(v3 + 16) = v25;
  if (!v25 || (v26 = sub_10004A358(), (*(v27 + 288))(v26, &v46)) || !v46 || (v28 = usbDFU_copyStringDescriptor(v3, v46), (*(v3 + 24) = v28) == 0) || (v29 = *(v3 + 40)) == 0 || (*(**(v29 + 8) + 168))(*(v29 + 8), 0, v29 + 16) || (v30 = *(v29 + 16), v31 = &v30[*v30], v32 = &v30[*(v30 + 1)], v31 >= v32))
  {
LABEL_52:
    libDFU_release(v3);
    return 0;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    v35 = v31[1];
    if (v35 == 33)
    {
      *(v29 + 32) = v31;
      if (*(v3 + 36) == 1452 && !strcmp("Apple Mobile Device (DFU Mode)", *(v3 + 16)))
      {
        *(v29 + 32) = &unk_100086C58;
      }

      v36 = *(v3 + 40);
      if (!v36)
      {
        goto LABEL_52;
      }

      v37 = *(v36 + 32);
      if (!v37)
      {
        goto LABEL_52;
      }

      v38 = *(v37 + 7);
      v33 = 1;
      if (v38 != 282 && v38 != 272)
      {
        goto LABEL_52;
      }
    }

    else if (v35 == 4 && v31[5] == 254 && v31[6] == 1)
    {
      if (v31[7] == 1)
      {
        *(v29 + 64) = 1;
      }

      else if (v31[7] - 1 >= 2 && (*(v3 + 36) != 1452 || strcmp("Apple Mobile Device (DFU Mode)", *(v3 + 16))))
      {
        goto LABEL_44;
      }

      if (!*(v29 + 24))
      {
        *(v29 + 24) = v31;
      }

      v34 = 1;
    }

LABEL_44:
    v31 += *v31;
  }

  while (v31 < v32);
  if ((v34 & v33 & 1) == 0)
  {
    goto LABEL_52;
  }

  v39 = *(v3 + 40);
  if (v39)
  {
    v40 = *(v39 + 32);
    if (v40)
    {
      if (*(v40 + 7) == 282)
      {
        stmDFU_parseConfiguration(v3);
      }
    }
  }

  LODWORD(v5[2].tv_nsec) = 0;
  clock_gettime(_CLOCK_REALTIME, v5 + 3);
  return v3;
}

void (*sub_10004A878(void (*result)(const void *), io_iterator_t iterator))(const void *)
{
  if (result)
  {
    if (iterator)
    {
      v3 = result;
      result = IOIteratorNext(iterator);
      if (result)
      {
        v4 = result;
        do
        {
          v5 = sub_10004A458(v4);
          if (v5)
          {
            v6 = v5;
            iokitUtils_setDeviceForService(v4, v5);
            v3(v6);
          }

          IOObjectRelease(v4);
          result = IOIteratorNext(iterator);
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void (*sub_10004A8FC(void (*result)(void), io_iterator_t iterator))(void)
{
  if (result)
  {
    if (iterator)
    {
      v3 = result;
      result = IOIteratorNext(iterator);
      if (result)
      {
        v4 = result;
        do
        {
          if (iokitUtils_popDeviceForService(v4))
          {
            v3();
          }

          IOObjectRelease(v4);
          result = IOIteratorNext(iterator);
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t sub_10004A96C(uint64_t a1, char **a2)
{
  v3 = usbDFU_copyStringDescriptor(a1, 1);
  if (!v3)
  {
    return 4294967287;
  }

  v4 = v3;
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t sub_10004A9AC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return sub_10004AAB4(result, v1, (result + 16));
  }

  return result;
}

CFUUIDRef sub_10004A9E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, UInt8 byte7, int a10, __int16 byte15, char a12, UInt8 a13)
{

  return CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
}

void sub_10004AA34()
{

  _os_log_impl(v1, v0, OS_LOG_TYPE_DEFAULT, v2, (v3 - 96), 8u);
}

uint64_t *sub_10004AA70()
{
  result = *v0;
  v2 = **v0;
  return result;
}

uint64_t *sub_10004AA7C()
{
  result = *(v0 + 16);
  v2 = *result;
  return result;
}

uint64_t *sub_10004AA88()
{
  result = *(v0 + 16);
  v2 = *result;
  return result;
}

uint64_t sub_10004AA94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, timespec __rqtp)
{
  __rqtp = a13;

  return nanosleep(&__rqtp, 0);
}

uint64_t sub_10004AAB4(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 168) & 1) != 0 && !(*(*a2 + 72))(a2))
  {
    *(a1 + 168) = 0;
  }

  result = (*(**a3 + 24))(*a3);
  *a3 = 0;
  return result;
}

void sub_10004AB0C()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136315138;
    v1 = "initServiceDiscoveryGlobals";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s", &v0, 0xCu);
  }

  if (qword_1000C9130 != -1)
  {
    sub_10004D700();
  }
}

uint64_t sub_10004ABE8(int a1, int a2)
{
  v4 = a2 | (a1 << 16);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315906;
    v7 = "keyForVIDPID";
    v8 = 1024;
    v9 = a1;
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s vid %u pid %u keyForVidPid %u", &v6, 0x1Eu);
  }

  return v4;
}

void sub_10004ACC0(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 32), *(a1 + 40));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "YES";
    if (!Value)
    {
      v3 = "NO";
    }

    *buf = 136315394;
    v10 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric_block_invoke";
    v11 = 2080;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s go through the unclaimed devices. array %s", buf, 0x16u);
  }

  if (Value)
  {
    Count = CFArrayGetCount(Value);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric_block_invoke";
      v11 = 2048;
      v12 = Count;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s found count %ld devices", buf, 0x16u);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v7 = "NO";
          if (ValueAtIndex)
          {
            v7 = "YES";
          }

          v10 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric_block_invoke";
          v11 = 2080;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s got device %s from array", buf, 0x16u);
        }

        if (ValueAtIndex)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v10 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric_block_invoke";
            v11 = 2080;
            v12 = "YES";
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s calling callbacks->discoveryCallback on device %s", buf, 0x16u);
          }

          (**(a1 + 48))(ValueAtIndex);
        }
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 136315394;
      v10 = "taDFU_deviceinterfaced_startDeviceDiscoveryGeneric_block_invoke";
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s removing key %lu from map", buf, 0x16u);
    }

    CFDictionaryRemoveValue(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t sub_10004AFA4(uint64_t a1, FILE *a2, __darwin_time_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "YES";
    buf.st_dev = 136315906;
    *&buf.st_mode = "taDFU_KISDaemon_download";
    if (a1)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    *(&buf.st_ino + 6) = v7;
    WORD2(buf.st_ino) = 2080;
    if (!a2)
    {
      v6 = "NO";
    }

    HIWORD(buf.st_gid) = 2080;
    *&buf.st_rdev = v6;
    LOWORD(buf.st_atimespec.tv_sec) = 2048;
    *(&buf.st_atimespec.tv_sec + 2) = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s device %s file %s address %lu.", &buf, 0x2Au);
  }

  memset(&buf, 0, sizeof(buf));
  if (a1 && a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "YES";
      if (!*(a1 + 40))
      {
        v8 = "NO";
      }

      v21 = 136315394;
      v22 = "taDFU_KISDaemon_download";
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s device->_deviceData %s", &v21, 0x16u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = fileno(a2);
      if (v10 != -1 && (fstat(v10, &buf) & 0x80000000) == 0 && (buf.st_mode & 0xF000) == 0x8000)
      {
        st_size = buf.st_size;
        if (buf.st_size)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(v9 + 2);
            v21 = 136315906;
            v22 = "taDFU_KISDaemon_download";
            v23 = 2080;
            v24 = "YES";
            v25 = 2048;
            v26 = st_size;
            v27 = 1024;
            v28 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s file %s validated with transferSize %llu, deviceData->payloadCapacity %u", &v21, 0x26u);
          }

          if (st_size <= *(v9 + 2))
          {
            sub_10004AB0C();
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v13 = "YES";
              if (!qword_1000C9128)
              {
                v13 = "NO";
              }

              v21 = 136315394;
              v22 = "taDFU_KISDaemon_download";
              v23 = 2080;
              v24 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s globalDeviceDiscoveryClient %s", &v21, 0x16u);
            }

            if (&_tadfu_transport_client_download_data && qword_1000C9128)
            {
              v14 = v9[4];
              v15 = *v9;
              v16 = tadfu_transport_client_download_data();
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v21 = 136315394;
                v22 = "taDFU_KISDaemon_download";
                v23 = 1024;
                LODWORD(v24) = v16;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s downloadBlockResult %d", &v21, 0x12u);
              }

              v17 = v16 ^ 1;
              if (!&_tadfu_transport_client_complete_dfu)
              {
                v17 = 1;
              }

              if ((v17 & 1) == 0)
              {
                v19 = v9[4];
                v20 = tadfu_transport_client_complete_dfu();
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = 136315394;
                  v22 = "taDFU_KISDaemon_download";
                  v23 = 1024;
                  LODWORD(v24) = v20 & 1;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s completeDFUResult %d", &v21, 0x12u);
                }

                if (v20)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  sub_10004D728(a1, &v21);
  return v21;
}

void sub_10004B3C4(id a1)
{
  qword_1000C9138 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  qword_1000C9148 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  qword_1000C9140 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  qword_1000C9150 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  if (&_tadfu_transport_client_create_with_device_discovery_callbacks)
  {
    if (&_tadfu_transport_client_usable)
    {
      if (tadfu_transport_client_usable())
      {
        v1 = tadfu_transport_client_create_with_device_discovery_callbacks();
        qword_1000C9128 = v1;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          if (v1)
          {
            v2 = "YES";
          }

          else
          {
            v2 = "NO";
          }

          v9 = 136315394;
          v10 = "initServiceDiscoveryGlobals_block_invoke";
          v11 = 2080;
          v12 = v2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s created tadfu transport client with tadfu_transport_client_create_with_device_discovery_callbacks. globalDeviceDiscoveryClient %s", &v9, 0x16u);
        }
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_1000C9138)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    if (qword_1000C9148)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    if (qword_1000C9140)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    if (qword_1000C9150)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (qword_1000C9128)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v9 = 136316418;
    v10 = "initServiceDiscoveryGlobals_block_invoke";
    v11 = 2080;
    v12 = v3;
    v13 = 2080;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s initialized discovery globals vidPidCallbacksMap %s locationIDCallbacksMap %s unclaimedDevicesMatchingVidPidMap %s unclaimedDevicesMatchingLocationIDMap %s globalDeviceDiscoveryClient %s", &v9, 0x3Eu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_1000C9128)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    v9 = 136315394;
    v10 = "initServiceDiscoveryGlobals_block_invoke";
    v11 = 2080;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s deviceinterfaced enabled: %s.", &v9, 0x16u);
  }
}

const void *sub_10004B76C@<X0>(const void **a1@<X8>)
{
  v3 = *a1;

  return CFDictionaryGetValue(v1, v3);
}

void sub_10004B7D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void *sub_10004B86C(const __CFDictionary *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "handleDevices";
    sub_10004B818();
    sub_10004B73C();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (!a1)
  {
    return 0;
  }

  v7 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  context = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "handleDevices";
    sub_10004B818();
    sub_10004B73C();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  if (!v7)
  {
    return 0;
  }

  *v7 = 0;
  CFDictionaryApplyFunction(a1, sub_10004B9E0, &context);
  return context;
}

void sub_10004B9E0(uint64_t a1, uint64_t a2, void **a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B73C();
    _os_log_impl(v6, v7, v8, v9, v10, 0x2Au);
  }

  if (a1 && a2 && a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B73C();
      _os_log_impl(v11, v12, v13, v14, v15, 0x2Au);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B718();
      sub_10004B73C();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    }

    v21 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040C83E1755uLL);
    if (!v21)
    {
      goto LABEL_69;
    }

    v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x1010040927234F9uLL);
    if (!v22)
    {
      goto LABEL_99;
    }

    v23 = v22;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B718();
      sub_10004B73C();
      _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
    }

    *v21 = 3;
    v21[6] = &off_1000AB9A0;
    if (&TADFU_Device_Manufacturer_String)
    {
      v117 = sub_10004B76C(&TADFU_Device_Manufacturer_String);
      v118 = cfstring_to_c_string(v117);
      v21[1] = v118;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v119, v120, v121, v122, v123, 0x20u);
        v118 = v21[1];
      }

      if (v118 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B6BC();
        sub_10004B73C();
        _os_log_impl(v124, v125, v126, v127, v128, 0x20u);
      }
    }

    if (&TADFU_Device_Product_String)
    {
      v129 = sub_10004B76C(&TADFU_Device_Product_String);
      v130 = cfstring_to_c_string(v129);
      v21[2] = v130;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v131, v132, v133, v134, v135, 0x20u);
        v130 = v21[2];
      }

      if (v130 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B6BC();
        sub_10004B73C();
        _os_log_impl(v136, v137, v138, v139, v140, 0x20u);
      }
    }

    if (&TADFU_Device_Serial_Number_String)
    {
      v141 = sub_10004B76C(&TADFU_Device_Serial_Number_String);
      v142 = cfstring_to_c_string(v141);
      v21[3] = v142;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v143, v144, v145, v146, v147, 0x20u);
        v142 = v21[3];
      }

      if (v142 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B6BC();
        sub_10004B73C();
        _os_log_impl(v148, v149, v150, v151, v152, 0x20u);
      }
    }

    if (&TADFU_Device_LocationID)
    {
      v29 = sub_10004B76C(&TADFU_Device_LocationID);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v30, v31, v32, v33, v34, 0x20u);
      }

      if (v29)
      {
        v35 = sub_10004B80C();
        if (!CFNumberGetValue(v35, kCFNumberSInt32Type, v36))
        {
          goto LABEL_99;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6A4();
          sub_10004B7C4();
          sub_10004B73C();
          _os_log_impl(v37, v38, v39, v40, v41, 0x1Cu);
        }

        *(v21 + 8) = 0;
      }
    }

    if (&TADFU_Device_VendorID)
    {
      v42 = sub_10004B76C(&TADFU_Device_VendorID);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
      }

      if (v42)
      {
        v48 = sub_10004B80C();
        if (!CFNumberGetValue(v48, kCFNumberSInt16Type, v49))
        {
          goto LABEL_99;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6A4();
          sub_10004B7C4();
          sub_10004B73C();
          _os_log_impl(v50, v51, v52, v53, v54, 0x1Cu);
        }

        *(v21 + 18) = 0;
      }
    }

    if (&TADFU_Device_ProductID)
    {
      v55 = sub_10004B76C(&TADFU_Device_ProductID);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v56, v57, v58, v59, v60, 0x20u);
      }

      if (v55)
      {
        v61 = sub_10004B80C();
        if (!CFNumberGetValue(v61, kCFNumberSInt16Type, v62))
        {
          goto LABEL_99;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6A4();
          sub_10004B7C4();
          sub_10004B73C();
          _os_log_impl(v63, v64, v65, v66, v67, 0x1Cu);
        }

        *(v21 + 19) = 0;
      }
    }

    if (&TADFU_Device_InterfaceID)
    {
      v68 = sub_10004B76C(&TADFU_Device_InterfaceID);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v69, v70, v71, v72, v73, 0x20u);
      }

      if (v68)
      {
        v74 = sub_10004B80C();
        if (!CFNumberGetValue(v74, kCFNumberSInt64Type, v75))
        {
          goto LABEL_99;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6A4();
          sub_10004B73C();
          _os_log_impl(v76, v77, v78, v79, v80, 0x20u);
        }

        *(v23 + 4) = 0;
      }
    }

    if (&TADFU_Device_Payload_Base_Address)
    {
      v81 = sub_10004B76C(&TADFU_Device_Payload_Base_Address);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B680();
        sub_10004B73C();
        _os_log_impl(v82, v83, v84, v85, v86, 0x20u);
      }

      if (v81)
      {
        v87 = sub_10004B80C();
        if (!CFNumberGetValue(v87, kCFNumberSInt64Type, v88))
        {
          goto LABEL_99;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6A4();
          sub_10004B73C();
          _os_log_impl(v89, v90, v91, v92, v93, 0x20u);
        }

        *v23 = 0;
      }
    }

    if (!&TADFU_Device_Payload_Capacity)
    {
      goto LABEL_65;
    }

    v94 = sub_10004B76C(&TADFU_Device_Payload_Capacity);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B680();
      sub_10004B73C();
      _os_log_impl(v95, v96, v97, v98, v99, 0x20u);
    }

    if (!v94)
    {
      goto LABEL_65;
    }

    v100 = sub_10004B80C();
    if (CFNumberGetValue(v100, kCFNumberSInt32Type, v101))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B6A4();
        sub_10004B7C4();
        sub_10004B73C();
        _os_log_impl(v102, v103, v104, v105, v106, 0x1Cu);
      }

      *(v23 + 2) = 0;
LABEL_65:
      if (&TADFU_Device_Nonce_String)
      {
        v153 = sub_10004B76C(&TADFU_Device_Nonce_String);
        v154 = cfstring_to_c_string(v153);
        *(v23 + 2) = v154;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B680();
          sub_10004B73C();
          _os_log_impl(v155, v156, v157, v158, v159, 0x20u);
          v154 = *(v23 + 2);
        }

        if (v154 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6BC();
          sub_10004B73C();
          _os_log_impl(v160, v161, v162, v163, v164, 0x20u);
        }
      }

      if (&TADFU_Device_Epoch_String)
      {
        v165 = sub_10004B76C(&TADFU_Device_Epoch_String);
        v166 = cfstring_to_c_string(v165);
        *(v23 + 3) = v166;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B680();
          sub_10004B73C();
          _os_log_impl(v167, v168, v169, v170, v171, 0x20u);
          v166 = *(v23 + 3);
        }

        if (v166 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6BC();
          sub_10004B73C();
          _os_log_impl(v172, v173, v174, v175, v176, 0x20u);
        }
      }

      v21[5] = v23;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B718();
        sub_10004B73C();
        _os_log_impl(v107, v108, v109, v110, v111, 0x16u);
      }

LABEL_69:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B818();
        sub_10004B73C();
        _os_log_impl(v112, v113, v114, v115, v116, 0x20u);
      }

      if (v21)
      {
        v21[7] = **a3;
        **a3 = v21;
      }

      return;
    }

LABEL_99:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B718();
      sub_10004B73C();
      _os_log_impl(v177, v178, v179, v180, v181, 0x16u);
    }

    libDFU_release(v21);
    v21 = 0;
    goto LABEL_69;
  }
}

uint64_t sub_10004C5F8(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B788();
    sub_10004B730();
    _os_log_impl(v4, v5, v6, v7, v8, 0x20u);
  }

  result = 4294967287;
  if (a1 && a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *(a1 + 40);
      sub_10004B6DC();
      sub_10004B730();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }

    v15 = *(a1 + 40);
    if (!v15)
    {
      return 4294967287;
    }

    v16 = *(v15 + 16);
    *a2 = v16;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B6DC();
      sub_10004B730();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      v16 = *a2;
    }

    if (v16)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_10004B758();
      sub_10004B730();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10004C7C8(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B788();
    sub_10004B730();
    _os_log_impl(v4, v5, v6, v7, v8, 0x20u);
  }

  result = 4294967287;
  if (a1 && a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *(a1 + 40);
      sub_10004B6DC();
      sub_10004B730();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }

    v15 = *(a1 + 40);
    if (!v15)
    {
      return 4294967287;
    }

    v16 = *(v15 + 24);
    *a2 = v16;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004B6DC();
      sub_10004B730();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
      v16 = *a2;
    }

    if (v16)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      sub_10004B758();
      sub_10004B730();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    }

    return 0;
  }

  return result;
}

void sub_10004C998(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B6F4();
    sub_10004B730();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  if (a1)
  {
    *(a1 + 48) = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *(a1 + 40);
      sub_10004B6F4();
      sub_10004B730();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *(v12 + 16);
        sub_10004B6F4();
        sub_10004B730();
        _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      }

      v18 = *(v12 + 16);
      if (v18)
      {
        free(v18);
        *(v12 + 16) = 0;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *(v12 + 24);
        sub_10004B6F4();
        sub_10004B730();
        _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
      }

      v24 = *(v12 + 24);
      if (v24)
      {
        free(v24);
        *(v12 + 24) = 0;
      }

      free(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

void sub_10004CBA0(const __CFDictionary *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B840();
    sub_10004B828();
    sub_10004B730();
    _os_log_impl(v2, v3, v4, v5, v6, 0x20u);
  }

  if (a1)
  {
    v7 = sub_10004B86C(a1);
    v8 = sub_10004B86C(a1);
    v9 = *v7;
    if (v9)
    {
      v10 = *v8;
      if (*v8)
      {
        if (!*(v9 + 56) && !*(v10 + 56))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B704();
            sub_10004B730();
            _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B748();
            sub_10004B730();
            _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
          }

          if (qword_1000C9148 && qword_1000C9150)
          {
            v21 = *(v9 + 32);
            sub_10004D038();
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B748();
            sub_10004B730();
            _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
          }

          if (qword_1000C9138)
          {
            if (qword_1000C9140)
            {
              sub_10004ABE8(*(v10 + 36), *(v10 + 38));
              sub_10004D038();
            }
          }
        }
      }
    }
  }
}

void sub_10004CDEC(const __CFDictionary *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B840();
    sub_10004B828();
    sub_10004B730();
    _os_log_impl(v2, v3, v4, v5, v6, 0x20u);
  }

  if (a1)
  {
    v7 = sub_10004B86C(a1);
    v8 = sub_10004B86C(a1);
    v9 = *v7;
    if (v9)
    {
      v10 = *v8;
      if (*v8)
      {
        if (!*(v9 + 56) && !*(v10 + 56))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B704();
            sub_10004B730();
            _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B748();
            sub_10004B730();
            _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
          }

          if (qword_1000C9148 && qword_1000C9150)
          {
            v21 = *(v9 + 32);
            sub_10004D47C();
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            sub_10004B748();
            sub_10004B730();
            _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
          }

          if (qword_1000C9138)
          {
            if (qword_1000C9140)
            {
              sub_10004ABE8(*(v10 + 36), *(v10 + 38));
              sub_10004D47C();
            }
          }
        }
      }
    }
  }
}

void sub_10004D038()
{
  sub_10004B858();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    *buf = 136316162;
    if (v2)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    *&buf[4] = "taDFU_Daemon_deviceAddedGeneric";
    *&buf[12] = 2080;
    *&buf[14] = "YES";
    *&buf[22] = 2080;
    *&buf[24] = v4;
    *v19 = 2080;
    *&v19[2] = v5;
    v20 = 2048;
    v21 = v1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s device %s callbacksMap %s unclaimedDevicesMap %s deviceKey %lu", buf, 0x34u);
  }

  if (v3 && v2)
  {
    Value = CFDictionaryGetValue(v3, v1);
    if (Value && (v7 = Value, (v8 = *Value) != 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "taDFU_Daemon_deviceAddedGeneric";
        *&buf[12] = 2080;
        *&buf[14] = "YES";
        sub_10004B7D4(&_mh_execute_header, &_os_log_default, v9, "%s calling callback->discoveryCallback for device %s", buf);
        v8 = *v7;
      }

      v8(v0);
    }

    else
    {
      Mutable = CFDictionaryGetValue(v2, v1);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B7EC();
        sub_10004B7D4(&_mh_execute_header, &_os_log_default, v11, "%s unclaimed devices array %s", buf);
      }

      if (!Mutable)
      {
        *buf = xmmword_1000ABA00;
        *&buf[16] = *algn_1000ABA10;
        *v19 = sub_10004D30C;
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, buf);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B6F4();
          sub_10004B730();
          _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
        }

        if (Mutable)
        {
          CFDictionarySetValue(v2, v1, Mutable);
          CFRelease(Mutable);
        }
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B7EC();
        sub_10004B7D4(&_mh_execute_header, &_os_log_default, v17, "%s adding unclaimed device to array %s", buf);
      }

      if (Mutable)
      {
        CFArrayAppendValue(Mutable, v0);
      }
    }
  }
}

BOOL sub_10004D30C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B730();
    _os_log_impl(v4, v5, v6, v7, v8, 0x20u);
  }

  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  if (!a2)
  {
    return v9;
  }

  v10 = *(a1 + 40);
  if (!v10)
  {
    return v9;
  }

  v11 = *(a2 + 40);
  if (!v11)
  {
    return 0;
  }

  v9 = *(v10 + 32) == *(v11 + 32);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B7B8();
    sub_10004B730();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
  }

  return v9;
}

void sub_10004D47C()
{
  sub_10004B858();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_10004B730();
    _os_log_impl(v4, v5, v6, v7, v8, 0x34u);
  }

  if (v3 && v2)
  {
    Value = CFDictionaryGetValue(v3, v1);
    if (Value && (v10 = Value, (v11 = Value[1]) != 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B730();
        _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
        v11 = v10[1];
      }

      v11(v0);
    }

    else
    {
      v17 = CFDictionaryGetValue(v2, v1);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        sub_10004B6F4();
        sub_10004B730();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      }

      if (v17)
      {
        v29.length = CFArrayGetCount(v17);
        v29.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v29, v0);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          sub_10004B730();
          _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
        }

        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v17, FirstIndexOfValue);
        }
      }

      libDFU_release(v0);
    }
  }
}

void sub_10004D728(uint64_t a1, _DWORD *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    sub_10004B730();
    _os_log_impl(v4, v5, v6, v7, v8, 0x18u);
  }

  *a2 = -9;
}

uint64_t taDFU_AppleKIS_enabled()
{
  v0 = IOObjectCopyBundleIdentifierForClass(@"AppleKIS");
  if (v0)
  {
    CFRelease(v0);
    v7 = 0;
    v6 = 4;
    if (sysctlbyname("applekis.enabled", &v7, &v6, 0, 0))
    {
      v2 = os_parse_boot_arg_int();
      if (v2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v9 = "taDFU_AppleKIS_enabled";
          v10 = 2080;
          v11 = "off";
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Overriding behavior with boot-arg, KIS kext is forced: %s", buf, 0x16u);
        }

        v1 = 0;
      }

      v3 = v2 ^ 1 | v1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v4 = "on";
        }

        else
        {
          v4 = "off";
        }

        *buf = 136315138;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "KIS kext is %s", buf, 0xCu);
      }

      v3 = v7 != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10004D9B0(char *buffer)
{

  return CFStringGetCString(v1, buffer, v2 + 1, 0x8000100u);
}

void *sub_10004D9EC(uint64_t a1)
{
  v3 = a1 + 1;

  return malloc_type_malloc(v3, v1);
}

CFIndex sub_10004DA08(CFIndex a1)
{

  return CFStringGetMaximumSizeForEncoding(a1, 0x8000100u);
}

__CFDictionary *sub_10004DA20(unsigned int a1, unsigned int a2)
{
  v4 = IOServiceMatching("TADFUDevice");
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      v12 = 0;
      valuePtr = a1;
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(v6, @"idVendor", v7);
        v12 = a2;
        v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v12);
        if (v9)
        {
          v10 = v9;
          CFDictionarySetValue(v6, @"idProduct", v9);
          CFDictionarySetValue(v4, @"IOPropertyMatch", v6);
          CFRelease(v8);
          v8 = v10;
        }

        CFRelease(v8);
      }

      CFRelease(v6);
    }
  }

  return v4;
}

void *sub_10004DB3C(io_object_t a1)
{
  if (!a1 || !IOObjectConformsTo(a1, "TADFUDevice"))
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040C83E1755uLL);
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  *v3 = 3;
  v3[6] = off_1000ABA28;
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A1E51EF2uLL);
  if (!v5 || (v4[5] = v5, *v5 = a1, IOObjectRetain(a1), v36 = 0, properties = 0, (v6 = v4[5]) == 0))
  {
LABEL_38:
    libDFU_release(v4);
    return 0;
  }

  if (!*v6)
  {
    goto LABEL_43;
  }

  if (IORegistryEntryCreateCFProperties(*v6, &properties, kCFAllocatorDefault, 0))
  {
    goto LABEL_43;
  }

  Value = CFDictionaryGetValue(properties, @"idVendor");
  if (!Value)
  {
    goto LABEL_43;
  }

  if (!CFNumberGetValue(Value, kCFNumberLongLongType, &v36))
  {
    goto LABEL_43;
  }

  v8 = properties;
  *(v4 + 18) = v36;
  v9 = CFDictionaryGetValue(v8, @"idProduct");
  if (!v9)
  {
    goto LABEL_43;
  }

  if (!CFNumberGetValue(v9, kCFNumberLongLongType, &v36))
  {
    goto LABEL_43;
  }

  v10 = properties;
  *(v4 + 19) = v36;
  v11 = CFDictionaryGetValue(v10, @"locationID");
  if (!v11 || !CFNumberGetValue(v11, kCFNumberLongLongType, &v36))
  {
    goto LABEL_43;
  }

  v12 = properties;
  *(v4 + 8) = v36;
  v13 = CFDictionaryGetValue(v12, @"Nonce");
  if (v13)
  {
    Length = CFStringGetLength(v13);
    v15 = sub_10004DA08(Length);
    v16 = sub_10004D9EC(v15);
    if (!v16)
    {
      goto LABEL_43;
    }

    if (!sub_10004D9B0(v16))
    {
      goto LABEL_41;
    }

    *(v6 + 8) = v1;
  }

  v17 = CFDictionaryGetValue(properties, @"Epoch");
  if (v17)
  {
    v18 = CFStringGetLength(v17);
    v19 = sub_10004DA08(v18);
    v20 = sub_10004D9EC(v19);
    if (!v20)
    {
      goto LABEL_43;
    }

    if (!sub_10004D9B0(v20))
    {
      goto LABEL_41;
    }

    *(v6 + 16) = v1;
  }

  v21 = CFDictionaryGetValue(properties, @"kUSBVendorString");
  if (v21)
  {
    v22 = CFStringGetLength(v21);
    v23 = sub_10004DA08(v22);
    v24 = sub_10004D9EC(v23);
    if (!v24)
    {
      goto LABEL_43;
    }

    if (!sub_10004D9B0(v24))
    {
      goto LABEL_41;
    }

    v4[1] = v1;
  }

  v25 = CFDictionaryGetValue(properties, @"kUSBProductString");
  if (!v25)
  {
LABEL_30:
    v29 = CFDictionaryGetValue(properties, @"kUSBSerialNumberString");
    if (!v29)
    {
LABEL_34:
      LOBYTE(v33) = 1;
      goto LABEL_35;
    }

    v30 = v29;
    v31 = CFStringGetLength(v29);
    v32 = sub_10004DA08(v31);
    v33 = malloc_type_malloc(v32 + 1, 0x100004077774924uLL);
    if (!v33)
    {
      goto LABEL_35;
    }

    if (CFStringGetCString(v30, v33, v32 + 1, 0x8000100u))
    {
      v4[3] = v33;
      goto LABEL_34;
    }

    v35 = v33;
    goto LABEL_42;
  }

  v26 = CFStringGetLength(v25);
  v27 = sub_10004DA08(v26);
  v28 = sub_10004D9EC(v27);
  if (v28)
  {
    if (sub_10004D9B0(v28))
    {
      v4[2] = v1;
      goto LABEL_30;
    }

LABEL_41:
    v35 = v1;
LABEL_42:
    free(v35);
  }

LABEL_43:
  LOBYTE(v33) = 0;
LABEL_35:
  if (properties)
  {
    CFRelease(properties);
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_38;
  }

  return v4;
}

uint64_t sub_10004DE0C(uint64_t result, io_iterator_t iterator)
{
  if (result)
  {
    if (iterator)
    {
      v3 = result;
      result = IOIteratorNext(iterator);
      if (result)
      {
        v4 = result;
        do
        {
          v5 = sub_10004DB3C(v4);
          if (v5)
          {
            v6 = v5;
            iokitUtils_setDeviceForService(v4, v5);
            v3(v6);
          }

          IOObjectRelease(v4);
          result = IOIteratorNext(iterator);
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void (*sub_10004DE90(void (*result)(void), io_iterator_t iterator))(void)
{
  if (result)
  {
    if (iterator)
    {
      v3 = result;
      result = IOIteratorNext(iterator);
      if (result)
      {
        v4 = result;
        do
        {
          if (iokitUtils_popDeviceForService(v4))
          {
            v3();
          }

          IOObjectRelease(v4);
          result = IOIteratorNext(iterator);
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t sub_10004DF00(uint64_t a1, void *a2)
{
  result = 4294967287;
  if (a1 && a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 8);
    }
  }

  return result;
}

uint64_t sub_10004DF28(uint64_t a1, void *a2)
{
  result = 4294967287;
  if (a1 && a2)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 16);
    }
  }

  return result;
}

uint64_t sub_10004DF50(uint64_t a1, FILE *a2)
{
  bzero(&v18, 0x90uLL);
  v4 = 0;
  connect = 0;
  st_size = 0;
  input = 0;
  v5 = 4294967287;
  if (a1 && a2)
  {
    v6 = *(a1 + 40);
    if (v6 && (v7 = fileno(a2), v7 != -1) && (fstat(v7, &v18) & 0x80000000) == 0 && (v18.st_mode & 0xF000) == 0x8000 && v18.st_size && (st_size = v18.st_size, !IOServiceOpen(*v6, mach_task_self_, 0, &connect)) && (v8 = malloc_type_malloc(0x4000uLL, 0xC014BBA1uLL)) != 0)
    {
      v9 = v8;
      if ((LODWORD(v18.st_size) + 0x3FFF) < 0x4000)
      {
LABEL_15:
        v13 = IOConnectCallMethod(connect, 1u, &st_size, 1u, 0, 0, 0, 0, 0, 0);
        v4 = v13 == 0;
        if (v13)
        {
          v5 = 4294967287;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v10 = (LODWORD(v18.st_size) + 0x3FFF) >> 14;
        while (1)
        {
          v11 = fread(v9, 1uLL, 0x4000uLL, a2);
          if (!v11)
          {
            break;
          }

          v12 = v11;
          if (IOConnectCallMethod(connect, 0, &input, 1u, v9, v11, 0, 0, 0, 0))
          {
            break;
          }

          input += v12;
          if (!--v10)
          {
            goto LABEL_15;
          }
        }

        v4 = 0;
        v5 = 4294967287;
      }

      free(v9);
    }

    else
    {
      v4 = 0;
      v5 = 4294967287;
    }
  }

  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (!v4)
  {
    fprintf(__stderrp, "failed to restore device %s@%x with error %d\n", *(a1 + 16), *(a1 + 32), v5);
  }

  return v5;
}

void sub_10004E134(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      if (*v2)
      {
        IOObjectRelease(*v2);
        *v2 = 0;
      }

      v3 = *(v2 + 8);
      if (v3)
      {
        free(v3);
        *(v2 + 8) = 0;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        free(v4);
        *(v2 + 16) = 0;
      }

      free(*(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

uint64_t libDFU_setDispatchQueueForDiscovery(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = *"";
  block[2] = sub_10004E230;
  block[3] = &unk_1000ABA48;
  block[4] = a1;
  if (qword_1000C9158 != -1)
  {
    dispatch_once(&qword_1000C9158, block);
  }

  return 0;
}

void sub_10004E230(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    qword_1000C9160 = v1;
    dispatch_retain(v1);
  }

  else
  {
    qword_1000C9160 = dispatch_queue_create("com.apple.libDFU.deviceDiscoveryQueue", 0);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    label = dispatch_queue_get_label(qword_1000C9160);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Device discovery queue: %s", &v2, 0xCu);
  }
}

uint64_t libDFU_downloadToDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting DFU Download for device in location 0x%x", v8, 8u);
  }

  return (*(*(a1 + 48) + 16))(a1, a2, a3);
}

void sub_10004E440(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 48) = 0;
    v2 = *(a1 + 40);
    if (v2)
    {
      if (*(v2 + 72))
      {
        releaseMemoryRegions(a1);
        free(*(v2 + 72));
        *(v2 + 72) = 0;
      }
    }
  }

  usbDFU_release(a1);
}

id FormatHex(uint64_t a1, unint64_t a2, int a3)
{
  v6 = [NSMutableString stringWithCapacity:0];
  v7 = v6;
  v48 = 0;
  v47 = 0;
  if (a3)
  {
    v8 = @"00000000  ";
  }

  else
  {
    v8 = @"0000  ";
  }

  [v6 appendFormat:v8];
  v9 = 0;
  if (a2)
  {
    v10 = "%s %s\n%04x  ";
    if (a3)
    {
      v10 = "%s %s\n%08x  ";
    }

    __format = v10;
    do
    {
      if (v9 && (v9 & 0xF) == 0)
      {
        v11 = 0;
        v46 = 0;
        v45 = *(a1 + v9 - 16);
        do
        {
          v12 = *(&v45 + v11);
          if (v12 < 32 || v12 == 127 || *(&v45 + v11) == 32)
          {
            *(&v45 + v11) = 46;
          }

          ++v11;
        }

        while (v11 != 8);
        v13 = 0;
        v44 = 0;
        v43 = *(a1 + v9 - 8);
        do
        {
          v14 = *(&v43 + v13);
          if (v14 < 32 || v14 == 127 || *(&v43 + v13) == 32)
          {
            *(&v43 + v13) = 46;
          }

          ++v13;
        }

        while (v13 != 8);
        snprintf(__str, 0x20uLL, __format, &v45, &v43, v9);
        [v7 appendFormat:@"%s", __str];
      }

      if (v9 + 8 >= a2)
      {
        [v7 appendFormat:@"%02x ", *(a1 + v9++)];
      }

      else
      {
        v15 = *(a1 + v9);
        v16 = *(a1 + v9 + 1);
        v17 = *(a1 + v9 + 2);
        v18 = *(a1 + v9 + 3);
        v19 = *(a1 + v9 + 4);
        v20 = *(a1 + v9 + 5);
        if (((v9 + 8) & 0xF) != 0)
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x  ", v15, v16);
        }

        else
        {
          snprintf(__str, 0x20uLL, "%02x %02x %02x %02x %02x %02x %02x %02x    ", v15, v16);
        }

        [v7 appendFormat:@"%s", __str];
        v9 += 8;
      }
    }

    while (v9 < a2);
    if (a2 >= 0x10)
    {
      a2 &= 0xFu;
      if (!a2)
      {
        [v7 appendString:@"   "];
        v35 = 0;
        v36 = a1 + v9;
        v47 = *(a1 + v9 - 16);
        do
        {
          v37 = *(&v47 + v35);
          if (v37 < 32 || v37 == 127 || *(&v47 + v35) == 32)
          {
            *(&v47 + v35) = 46;
          }

          ++v35;
        }

        while (v35 != 8);
        v38 = [NSString stringWithUTF8String:&v47];
        [v7 appendString:v38];

        [v7 appendString:@" "];
        v39 = 0;
        v47 = *(v36 - 8);
        do
        {
          v40 = *(&v47 + v39);
          if (v40 < 32 || v40 == 127 || *(&v47 + v39) == 32)
          {
            *(&v47 + v39) = 46;
          }

          ++v39;
        }

        while (v39 != 8);
        goto LABEL_58;
      }
    }
  }

  v21 = 3;
  if (a2 < 9)
  {
    v21 = 4;
  }

  v22 = 3 * (16 - a2) + v21;
  do
  {
    [v7 appendString:@" "];
    --v22;
  }

  while (v22);
  v23 = a2 - 8;
  if (a2 >= 8)
  {
    v26 = 0;
    v47 = *(a1 + v9 - a2);
    do
    {
      v27 = *(&v47 + v26);
      if (v27 < 32 || v27 == 127 || *(&v47 + v26) == 32)
      {
        *(&v47 + v26) = 46;
      }

      ++v26;
    }

    while (v26 != 8);
  }

  else
  {
    __memcpy_chk();
    *(&v47 + a2) = 0;
    if (a2)
    {
      v24 = &v47;
      do
      {
        v25 = *v24;
        if (v25 < 32 || v25 == 127 || *v24 == 32)
        {
          *v24 = 46;
        }

        v24 = (v24 + 1);
        --a2;
      }

      while (a2);
    }

    v23 = 0;
  }

  v28 = &v47;
  v29 = [NSString stringWithUTF8String:&v47];
  [v7 appendString:v29];

  if (v23)
  {
    [v7 appendString:@" "];
    __memcpy_chk();
    *(&v47 + v23) = 0;
    v30 = 1;
    do
    {
      v31 = *v28;
      if (v31 < 32 || v31 == 127 || *v28 == 32)
      {
        *v28 = 46;
      }

      v28 = (v28 + 1);
    }

    while (v23 > v30++);
LABEL_58:
    v33 = [NSString stringWithUTF8String:&v47];
    [v7 appendString:v33];
  }

  return v7;
}

void sub_100050C6C()
{
  sub_10003623C();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100050CE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v7 = *a1;
  v8 = a2[33];
  v9 = a2[34];
  v10 = a2[35];
  v11 = a2[36];
  v12 = a2[37];
  v13 = a2[38];
  v14 = a2[39];
  sub_100036220();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Cu);
}

void sub_100050E48()
{
  sub_100036258();
  sub_100036230();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100050ED4()
{
  sub_100036258();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void sub_100050F58(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_100036230();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x24u);
}

void sub_100051088()
{
  sub_10003623C();
  sub_100036220();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100051104(void *a1)
{
  v1 = [a1 path];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Unable to delete file at %@", v4, v5, v6, v7, v8);
}

void sub_100051188(void *a1)
{
  v1 = [a1 path];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Unable to create file at %@", v4, v5, v6, v7, v8);
}

void sub_10005120C(void *a1)
{
  v1 = [a1 tag];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to write '%@' header", v4, v5, v6, v7, v8);
}

void sub_100051290(void *a1)
{
  v1 = [a1 tag];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to write '%@'", v4, v5, v6, v7, v8);
}

void sub_100051314(void *a1)
{
  v1 = [a1 absoluteString];
  sub_10000DC14();
  sub_100036200(&_mh_execute_header, v2, v3, "Failed to open file handle for writing to '%@'", v4, v5, v6, v7, v8);
}

uint64_t lzvn_decode_buffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3 <= a3 + a4 - 8)
    {
      __asm { BR              X17 }
    }

    __asm { BTI             j }

    return 0;
  }

  else
  {
    __asm { BTI             j }

    return 0;
  }
}

int32x4_t **lz4_encode_2gb(int32x4_t **result, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = vdupq_n_s32(0xFFFFFFFF);
  v8 = *result;
  v9 = *a3;
  v10 = (*result)[-8].i64 + a2;
  if (v10 < *result)
  {
    goto LABEL_92;
  }

  v11 = &v9[a5 - 128];
  if (v11 >= v9)
  {
    do
    {
      v12 = v9;
      v13 = &v9[-a4];
      while (1)
      {
        v14 = *v12;
        v15 = (a6 + 8 * ((-1640531535 * *v12) >> 20));
        v16 = *v15;
        v17 = v15[1];
        *v15 = v13;
        v15[1] = v14;
        v18 = v14 >> 8;
        v19 = (a6 + 8 * ((-1640531535 * (v14 >> 8)) >> 20));
        v20 = *v19;
        v21 = v19[1];
        *v19 = v13 + 1;
        v19[1] = v14 >> 8;
        if (v14 == v17)
        {
          v22 = (v13 - v16);
          if (v22 < 0x10000 && v22 != 0)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v24 = v13 + 1;
        v25 = v14 >> 16;
        v26 = (a6 + 8 * ((-1640531535 * v25) >> 20));
        v27 = *v26;
        v28 = v26[1];
        *v26 = v24 + 1;
        v26[1] = v25;
        if (v18 == v21)
        {
          v22 = (v24 - v20);
          if (v22 < 0x10000 && v24 != v20)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v30 = v24 + 1;
        v31 = v25 >> 8;
        v32 = (a6 + 8 * ((-1640531535 * (v25 >> 8)) >> 20));
        v33 = *v32;
        v34 = v32[1];
        *v32 = v30 + 1;
        v32[1] = v25 >> 8;
        if (v25 == v28)
        {
          v22 = (v30 - v27);
          if (v22 < 0x10000 && v30 != v27)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v36 = v30 + 1;
        v37 = v25 >> 16;
        v38 = (a6 + 8 * ((-1640531535 * v37) >> 20));
        v39 = *v38;
        v40 = v38[1];
        *v38 = v36 + 1;
        v38[1] = v37;
        if (v31 == v34)
        {
          v22 = (v36 - v33);
          if (v22 < 0x10000 && v36 != v33)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v42 = v36 + 1;
        if (v37 == v40)
        {
          v22 = (v42 - v39);
          if (v22 < 0x10000 && v42 != v39)
          {
            break;
          }
        }

        v12 = (v12 + 1);
        v13 = v42 + 1;
        if (v12 >= v11)
        {
          goto LABEL_74;
        }
      }

      v44 = v12 + 4;
      v45 = (v12 - v22 + 4);
      while (1)
      {
        v47 = *v44;
        v44 += 8;
        v46 = v47;
        v49 = *v45++;
        v48 = v49;
        if (v46 != v49)
        {
          break;
        }

        if (v44 >= v11)
        {
          goto LABEL_38;
        }
      }

      v44 = &v44[(__clz(__rbit64(v46 ^ v48)) >> 3) - 8];
LABEL_38:
      v50 = v12 - v22;
      while (1)
      {
        v51 = v12 <= v9 || v50 <= a4;
        if (v51)
        {
          break;
        }

        v53 = *(v12 - 1);
        v12 = (v12 - 1);
        v52 = v53;
        v54 = *--v50;
        if (v52 != v54)
        {
          v12 = (v12 + 1);
          break;
        }
      }

      v55 = v44 - v12 - 4;
      v56 = v12 - v9;
      v57 = v12 - v9 + 3;
      v58 = v10 - v8 - v57;
      if (v10 - v8 < v57)
      {
        goto LABEL_92;
      }

      v59 = (v55 & 0xF) + 16 * v56;
      v60 = &v8->i8[1];
      if (v56 >= 0xF)
      {
        v59 |= 0xF0u;
        v61 = v56 - 15;
        v62 = v58-- != 0;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v61 >= 0xFF)
        {
          v63 = v61 / 0xFFuLL;
          v62 = v58 >= v63;
          v58 -= v63;
          if (!v62)
          {
            goto LABEL_92;
          }

          LOBYTE(v61) = v61 + v63;
          do
          {
            *v60++ = v7;
            v51 = v63 > 0x10;
            v63 -= 16;
          }

          while (v51);
          v60 = (v60 + v63);
        }

        v60->i8[0] = v61;
        v60 = (v60 + 1);
      }

      do
      {
        v64 = *v9;
        v9 += 16;
        *v60++ = v64;
        v51 = v56 <= 16;
        v56 -= 16;
      }

      while (!v51);
      v65 = (v60->i16 + v56);
      *v65 = v22;
      v66 = (v65 + 1);
      if (v55 >= 0xF)
      {
        v59 |= 0xFu;
        v67 = v44 - v12 - 19;
        v62 = v58 != 0;
        v68 = v58 - 1;
        if (!v62)
        {
          goto LABEL_92;
        }

        if (v67 >= 0xFF)
        {
          v69 = v67 / 0xFFuLL;
          if (v68 < v69)
          {
            goto LABEL_92;
          }

          LOBYTE(v67) = v67 + v69;
          do
          {
            *v66++ = v7;
            v51 = v69 > 0x10;
            v69 -= 16;
          }

          while (v51);
          v66 = (v66 + v69);
        }

        v66->i8[0] = v67;
        v66 = (v66 + 1);
      }

      v8->i8[0] = v59;
      v8 = v66;
      v9 = v44;
    }

    while (v44 < v11 && v66 < v10);
  }

LABEL_74:
  if (a7)
  {
    goto LABEL_92;
  }

  v71 = (v11 + 128);
  v72 = v71 - v9;
  if (v71 == v9)
  {
    goto LABEL_92;
  }

  v73 = v10 + 128 - v8 - 1;
  v51 = v73 <= v72;
  v74 = v73 - v72;
  if (v51)
  {
    goto LABEL_92;
  }

  if (v72 < 15)
  {
    v8->i8[0] = 16 * v72;
    v8 = (v8 + 1);
    do
    {
LABEL_91:
      v81 = *v9++;
      v8->i8[0] = v81;
      v8 = (v8 + 1);
    }

    while (v9 < v71);
    goto LABEL_92;
  }

  v75 = v74 - 1;
  if (v75 >= 0)
  {
    v8->i8[0] = -16;
    v76 = &v8->i8[1];
    v77 = v72 - 15;
    if ((v72 - 15) >= 0xFF)
    {
      v78 = v77 / 0xFFuLL;
      if (v75 - v78 < 0)
      {
        v8 = (v76 - 1);
        goto LABEL_92;
      }

      LOBYTE(v77) = v77 + v78;
      do
      {
        *v76++ = v7;
        v51 = v78 <= 16;
        v78 -= 16;
      }

      while (!v51);
      v76 = (v76 + v78);
    }

    v76->i8[0] = v77;
    v8 = &v76->i8[1];
    v79 = v72 >> 4;
    if (!(v72 >> 4))
    {
      goto LABEL_91;
    }

    do
    {
      v80 = *v9;
      v9 += 16;
      *v8++ = v80;
      v51 = v79-- <= 1;
    }

    while (!v51);
    if (v9 < v71)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  *result = v8;
  *a3 = v9;
  return result;
}

uint64_t lz4_decode_asm(int8x16_t **a1, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a1;
  while (1)
  {
    v7 = v6;
    v8 = v5;
    if (v5 >= a5 || v6 >= a3)
    {
      break;
    }

    v10 = *v5;
    v9 = v5 + 1;
    v11 = v10 >> 4;
    v12 = (v10 & 0xF) + 4;
    if (v11 > 0xE)
    {
      while (v9 < a5)
      {
        v13 = *v9;
        v9 = (v9 + 1);
        v11 += v13;
        if (v13 != 255)
        {
          v14 = v9;
          v15 = v6;
          v16 = (v9 + v11);
          v17 = (v6 + v11);
          if (v16 < a5 && v17 < a3)
          {
            v19 = *v14;
            v20 = v14[1];
            v18 = v14 + 2;
            *v15 = v19;
            v15[1] = v20;
            v21 = v15 + 2;
            do
            {
              v22 = *v18;
              v23 = v18[1];
              v18 += 2;
              *v21 = v22;
              v21[1] = v23;
              v21 += 2;
            }

            while (v17 > v21);
            goto LABEL_13;
          }

          goto LABEL_36;
        }
      }

      break;
    }

    *v6 = *v9;
    v16 = (v9 + v11);
    v17 = (v6 + v11);
LABEL_13:
    if (v16 >= a5)
    {
      break;
    }

    v25 = *v16;
    v5 = (v16 + 1);
    v24 = v25;
    if (!v25 || (v26 = (v17 - v24), v17 - v24 < a2))
    {
      v47 = -1;
      goto LABEL_37;
    }

    v27 = v17;
    v6 = (v17 + v12);
    if (v12 == 19)
    {
      while (v5 < a5)
      {
        v28 = *v5++;
        v6 = (v6 + v28);
        if (v28 != 255)
        {
          if (v6 >= a3)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }
      }

      break;
    }

    if (v12 > 0x10)
    {
LABEL_24:
      if (v24 > 0x1F)
      {
        v36 = *v26;
        v35 = v26 + 1;
        *v27 = v36;
        v37 = v27 + 1;
        do
        {
          v38 = *v35;
          v39 = v35[1];
          v35 += 2;
          *v37 = v38;
          v37[1] = v39;
          v37 += 2;
        }

        while (v6 > v37);
      }

      else if (v24 > 0xF)
      {
        v41 = *v26;
        v40 = v26 + 1;
        *v27 = v41;
        v42 = v27 + 1;
        do
        {
          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          v45 = v42 + 1;
          v46 = *v43;
          v40 = v43 + 1;
          *v45 = v46;
          v42 = v45 + 1;
        }

        while (v6 > v42);
      }

      else
      {
        v29 = &qword_100054240[4 * v24];
        v30 = vqtbl1q_s8(*v26, *v29);
        v31 = vqtbl1q_s8(*v26, v29[1]);
        v32 = *(qword_100054440 + v24);
        *v27 = v30;
        v27[1] = v31;
        v33 = (v27 + v32);
        do
        {
          *v33 = v30;
          v33[1] = v31;
          v34 = (v33 + v32);
          *v34 = v30;
          v34[1] = v31;
          v33 = (v34 + v32);
        }

        while (v6 > v33);
      }
    }

    else if (v24 <= 0xF)
    {
      *v27 = vqtbl1q_s8(*v26, *&qword_100054240[4 * v24]);
    }

    else
    {
      *v27 = *v26;
    }
  }

LABEL_36:
  v47 = 0;
LABEL_37:
  *a4 = v8;
  *a1 = v7;
  return v47;
}

uint64_t lzfse_decode_lmd(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*a1 + *(a1 + 120));
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 92);
  v8 = *(a1 + 96);
  v9 = *(a1 + 124);
  v10 = *(a1 + 126);
  v11 = *(a1 + 128);
  v12 = *(a1 + 40) - v1 - 32;
  v13 = *(a1 + 80);
  if (v6 | v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 72))
  {
    while (1)
    {
      v2 = (v2 - ((63 - v4) >> 3));
      if (v2 < *(a1 + 8))
      {
        return -3;
      }

      v3 = *v2;
      v14 = (a1 + 136 + 8 * v9);
      v15 = *v14;
      v16 = v4 + ((63 - v4) & 0xFFFFFFFFFFFFFFF8) - v15;
      v17 = *v2 >> v16;
      v18 = v17 & ~(-1 << v15);
      LOBYTE(v15) = v14[1];
      v9 = (v18 >> v15) + *(v14 + 1);
      v6 = (v17 & ~(-1 << v15)) + *(v14 + 1);
      v19 = (a1 + 648 + 8 * v10);
      v20 = *v19;
      v21 = v16 - v20;
      v22 = *v2 >> v21;
      v23 = v22 & ~(-1 << v20);
      LOBYTE(v20) = v19[1];
      v10 = (v23 >> v20) + *(v19 + 1);
      v7 = (v22 & ~(-1 << v20)) + *(v19 + 1);
      v24 = (a1 + 1160 + 8 * v11);
      v25 = *v24;
      v4 = v21 - v25;
      v26 = *v2 >> v4;
      v27 = v26 & ~(-1 << v25);
      LOBYTE(v25) = v24[1];
      v11 = (v27 >> v25) + *(v24 + 1);
      v28 = (v26 & ~(-1 << v25)) + *(v24 + 1);
      if (v28)
      {
        v8 = v28;
      }

      --v5;
LABEL_7:
      if (v8 > v1 + v6 - *(a1 + 32) || a1 + *(a1 + 7304) + 7308 < &v13[v6])
      {
        return -3;
      }

      v29 = v12 < (v6 + v7);
      v12 -= v6 + v7;
      if (v29)
      {
        v40 = v12 + v6 + v7 + 32;
        if (v6)
        {
          do
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              goto LABEL_30;
            }

            v42 = *v13++;
            *v1 = v42;
            v1 = (v1 + 1);
          }

          while (--v6);
        }

        if (v7)
        {
          v43 = v1 - v8;
          while (1)
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              break;
            }

            v44 = *v43++;
            *v1 = v44;
            v1 = (v1 + 1);
            if (!--v7)
            {
              goto LABEL_28;
            }
          }

LABEL_30:
          *(a1 + 24) = v1;
          *(a1 + 120) = v2 - *a1;
          *(a1 + 104) = v3;
          *(a1 + 112) = v4;
          *(a1 + 72) = v5;
          *(a1 + 88) = v6;
          *(a1 + 92) = v7;
          *(a1 + 96) = v8;
          *(a1 + 124) = v9;
          *(a1 + 126) = v10;
          *(a1 + 128) = v11;
          *(a1 + 80) = v13;
          return -2;
        }

LABEL_28:
        v12 = v40 - 32;
        if (!v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        do
        {
          v30 = *v13;
          v31 = *(v13 + 1);
          v13 += 16;
          *v1 = v30;
          v1[1] = v31;
          v1 += 2;
          v29 = v6 > 0x10;
          v6 -= 16;
        }

        while (v29);
        v32 = (v1 + v6);
        v13 += v6;
        v33 = (v32 - v8);
        if (v8 < 0x10)
        {
          v36 = (&unk_100086CA0 + 32 * v8);
          v37 = byte_100086EA0[v8];
          v38 = vqtbl1q_s8(*v33, *v36);
          v39 = vqtbl1q_s8(*v33, v36[1]);
          do
          {
            *v32 = v38;
            v32[1] = v39;
            v32 = (v32 + v37);
            v29 = v7 > v37;
            v7 -= v37;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          do
          {
            v34 = v33->i64[0];
            v35 = v33->i64[1];
            ++v33;
            v32->i64[0] = v34;
            v32->i64[1] = v35;
            ++v32;
            v29 = v7 > 0x10;
            v7 -= 16;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  else
  {
LABEL_29:
    *(a1 + 24) = v1;
    return 0;
  }
}

uint64_t lzfse_decode_literals(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unint64_t a6, double a7)
{
  v7 = LOWORD(a7);
  v8 = WORD1(a7);
  v9 = WORD2(a7);
  v10 = HIWORD(a7);
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a5;
  while (1)
  {
    v15 = *(a2 + 4 * v7);
    v16 = *(a2 + 4 * v8);
    v17 = *(a2 + 4 * v9);
    v18 = *(a2 + 4 * v10);
    *a1++ = (v16 & 0xFF00) + ((v15 & 0xFF00) >> 8) + (((v18 & 0xFF00) + ((v17 & 0xFF00) >> 8)) << 16);
    v19 = (63 - v13) & 0xFFFFFFF8;
    if (((63 - v13) & 0xFFFFFFF8) != 0)
    {
      break;
    }

LABEL_5:
    v20 = v13 - v15;
    v21 = v20 - v16;
    v22 = v12 >> (v13 - v15);
    v23 = v12 & qword_100054820[v20];
    v24 = v21 - v17;
    v7 = v22 + HIWORD(v15);
    v25 = v23 >> (v20 - v16);
    v26 = v23 & qword_100054820[v21];
    v13 = v24 - v18;
    v8 = v25 + HIWORD(v16);
    v27 = v26 >> (v21 - v17);
    v28 = v26 & qword_100054820[v24];
    v9 = v27 + HIWORD(v17);
    v29 = v28 >> (v24 - v18);
    v12 = v28 & qword_100054820[v13];
    v10 = v29 + HIWORD(v18);
    v30 = a3 <= 4;
    a3 -= 4;
    if (v30)
    {
      *a4 = v12;
      *(a4 + 8) = v13;
      *a5 = v14;
      return 0;
    }
  }

  v14 = (v14 - (v19 >> 3));
  if (v14 >= a6)
  {
    v13 += v19;
    v12 = (v12 << v19) | *v14 & qword_100054820[v19];
    goto LABEL_5;
  }

  return -3;
}

id sub_100054CD8(id result, void *a2)
{
  if (a2)
  {
    return [a2 dfuDeviceConnected:result];
  }

  return result;
}

id sub_100054CEC(id result, void *a2)
{
  if (a2)
  {
    return [a2 recoveryDeviceConnected:result];
  }

  return result;
}

id sub_100054D00(id result, void *a2)
{
  if (a2)
  {
    return [a2 dfuDeviceDisconnected:result];
  }

  return result;
}

id sub_100054D14(id result, void *a2)
{
  if (a2)
  {
    return [a2 recoveryDeviceDisconnected:result];
  }

  return result;
}

NSError *sub_100055404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000195C(4001, a2, a3, a4, a5, a6, a7, a8, v13);
  if (result)
  {
    v10 = result;
    [*(a1 + 8) log:3 format:{@"%s - Error: %@ - calling -didDownload:FALSE", "-[Haywire downloadFirmwareWithOptions:]", result}];
    v11 = *(a1 + 8);
    v12 = *(a1 + 16);

    return [v11 didDownload:0 info:v12 error:v10];
  }

  return result;
}

NSError *sub_100055488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_10000195C(4000, a2, a3, a4, a5, a6, a7, a8, v11);
  if (result)
  {
    v10 = *(a1 + 16);

    return v10(a1, result);
  }

  return result;
}

id sub_100055588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10000195C(4001, @"_assetResults are nil", a3, a4, a5, a6, a7, a8, v10);
  v8 = sub_1000034C0();

  return [v8 setError:?];
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      sub_10000379C();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!*(a2 + 80) || (sub_1000037B0(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = *(a2 + 96);
          v5 = a2 + 96;
          if (!v6)
          {
            return 0;
          }

          sub_1000037B0();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000379C();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, unint64_t a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 80);
          v5 = a2 + 80;
          if (!v6)
          {
            return 0;
          }

          sub_1000037B0();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      *(a2 + 16) = v7;
      v8 = v11[3];
      *(a2 + 32) = v11[2];
      *(a2 + 48) = v8;
      v9 = v11[5];
      *(a2 + 64) = v11[4];
      *(a2 + 80) = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      sub_10000379C();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t AMAuthInstallCreate(const __CFAllocator *a1)
{
  v2 = pthread_once(&stru_1000C7DA8, sub_100004904);
  v36 = sub_100004A30(v2, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v36 || (cf = CFURLCreateWithString(a1, @"https://gs.apple.com:443/", 0)) == 0)
  {
    cf = 0;
    goto LABEL_20;
  }

  v39 = CFURLCreateWithString(a1, @"http://vega-dr.apple.com:8080/vegads/fuser", 0);
  if (!v39)
  {
LABEL_20:
    v39 = 0;
    goto LABEL_21;
  }

  v4 = CFURLCreateWithString(a1, @"http://treecko-dr.apple.com:8080/TREECKO/controller", 0);
  v38 = v4;
  if (!v4)
  {
LABEL_21:
    v38 = 0;
    goto LABEL_22;
  }

  v6 = sub_100004A30(v4, v5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v37 = v6;
  if (!v6)
  {
LABEL_22:
    v37 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v8 = sub_100004A30(v6, v7, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = v8;
  if (!v8)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = sub_100004A30(v8, v9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = v11;
  if (!v11)
  {
LABEL_24:
    v31 = 0;
    v16 = 0;
LABEL_25:
    v19 = 0;
LABEL_26:
    v22 = 0;
LABEL_27:
    v25 = 0;
LABEL_28:
    v28 = 0;
LABEL_29:
    v29 = 0;
    goto LABEL_18;
  }

  v14 = sub_100004A30(v11, v12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = v14;
  if (!v14)
  {
    v31 = 0;
    goto LABEL_25;
  }

  v17 = sub_100004A30(v14, v15, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = v17;
  if (!v17)
  {
    v31 = 0;
    goto LABEL_26;
  }

  v20 = sub_100004A30(v17, v18, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = v20;
  if (!v20)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v23 = sub_100004A30(v20, v21, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v25 = v23;
  if (!v23)
  {
    v31 = 0;
    goto LABEL_28;
  }

  v26 = sub_100004A30(v23, v24, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v28 = v26;
  if (!v26)
  {
    v31 = 0;
    goto LABEL_29;
  }

  v29 = sub_100004A30(v26, v27, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v29)
  {
    Instance = _CFRuntimeCreateInstance();
    v31 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x208uLL);
      *(v31 + 520) = 0;
      *(v31 + 57) = 257;
      *(v31 + 72) = CFRetain(cf);
      *(v31 + 80) = 3;
      *(v31 + 352) = CFRetain(v36);
      *(v31 + 376) = CFRetain(v37);
      *(v31 + 384) = CFRetain(v10);
      *(v31 + 416) = CFRetain(v13);
      *(v31 + 160) = CFRetain(v39);
      *(v31 + 296) = CFRetain(v38);
      *(v31 + 88) = @"ApImg4Ticket";
      *(v31 + 200) = CFRetain(v16);
      *(v31 + 208) = CFRetain(v19);
      *(v31 + 216) = CFRetain(v22);
      v32 = calloc(1uLL, 0x30uLL);
      *(v31 + 128) = v32;
      if (v32)
      {
        v33 = CFRetain(v25);
        v34 = *(v31 + 128);
        *v34 = v33;
        *(v34 + 40) = 0;
        *(v34 + 24) = 0u;
        *(v34 + 8) = 0u;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
        *(v31 + 440) = sub_10000435C;
        *(v31 + 448) = sub_100004364;
        *(v31 + 456) = CFRetain(v28);
        *(v31 + 464) = CFRetain(v29);
        *(v31 + 488) = 0;
        *(v31 + 512) = 0;
        *(v31 + 360) = AMAuthInstallLockCreate();
      }

      else
      {
        sub_100004230(v31);
      }
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_18:
  SafeRelease(v36);
  SafeRelease(cf);
  SafeRelease(v39);
  SafeRelease(v38);
  SafeRelease(v37);
  SafeRelease(v10);
  SafeRelease(v13);
  SafeRelease(0);
  SafeRelease(v16);
  SafeRelease(v19);
  SafeRelease(v22);
  SafeRelease(v25);
  SafeRelease(v28);
  SafeRelease(v29);
  return v31;
}

uint64_t AMAuthInstallBasebandPersonalizationEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 58);
  }

  return result;
}

uint64_t AMAuthInstallBasebandEnablePersonalization(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 58) = a2;
  return result;
}

uint64_t AMAuthInstallApPersonalizationEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 57);
  }

  return result;
}

uint64_t AMAuthInstallApEnablePersonalization(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 57) = a2;
  return result;
}

uint64_t AMAuthInstallSetSigningServerURL(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 72);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 72) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetFusingServerURL(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v11 = *(a1 + 160);
    if (v11 != a2)
    {
      SafeRelease(v11);
      *(a1 + 160) = CFRetain(a2);
    }

    AMAuthInstallLog(6, "AMAuthInstallSetFusingServerURL", "fusing server: %@", a4, a5, a6, a7, a8, a2);
    return 0;
  }

  return result;
}

uint64_t AMAuthInstallSetLocale(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if (v4 == a2)
  {
    return 0;
  }

  SafeRelease(v4);
  v5 = SafeRetain(a2);
  result = 0;
  *(a1 + 64) = v5;
  return result;
}

uint64_t AMAuthInstallSetUUID(uint64_t a1, const void *a2)
{
  result = 1;
  if (a1 && a2)
  {
    v5 = *(a1 + 96);
    if (v5 == a2)
    {
      return 0;
    }

    else
    {
      SafeRelease(v5);
      v6 = CFRetain(a2);
      result = 0;
      *(a1 + 96) = v6;
    }
  }

  return result;
}

uint64_t AMAuthInstallSetRequestEntry(CFTypeRef cf, void *key, const void *a3, const void *a4)
{
  Mutable = 0;
  v5 = 1;
  if (cf && key && a3 && a4)
  {
    v10 = *(cf + 53);
    if (v10 || (v11 = CFGetAllocator(cf), v10 = CFDictionaryCreateMutable(v11, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(cf + 53) = v10) != 0))
    {
      Value = CFDictionaryGetValue(v10, key);
      if (Value)
      {
        Mutable = Value;
        CFRetain(Value);
LABEL_11:
        CFDictionarySetValue(Mutable, a3, a4);
        v5 = 0;
        goto LABEL_12;
      }

      v13 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v13, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        CFDictionarySetValue(*(cf + 53), key, Mutable);
        goto LABEL_11;
      }
    }

    else
    {
      Mutable = 0;
    }

    v5 = 2;
  }

LABEL_12:
  SafeRelease(Mutable);
  return v5;
}

uint64_t AMAuthInstallSetRecoveryOSVariant(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 1;
  }

  SafeRelease(*(a1 + 496));
  v4 = SafeRetain(a2);
  result = 0;
  *(a1 + 496) = v4;
  return result;
}

uint64_t AMAuthInstallSetMacOSVariantIsPresent(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 504) = a2;
  return result;
}

uint64_t AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS(void *a1, __CFDictionary *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1;
  if (!a1 || !a2)
  {
    return v8;
  }

  v10 = a4;
  v13 = a1[2];
  if (v13)
  {
    if (*(v13 + 112))
    {
      if (a4)
      {
        v14 = AMAuthInstallApImg4ServerRequestAddRequiredTagsWithRecoveryOS(a1, a2, a3, 1);
      }

      else
      {
        v14 = AMAuthInstallApImg4ServerRequestAddRequiredTags(a1, a2, a3);
      }

      v8 = v14;
      if (v14)
      {
        v20 = "failed to add Ap Img4 tags";
LABEL_14:
        AMAuthInstallLog(3, "AMAuthInstallApServerRequestAddRequiredTagsWithRecoveryOS", v20, v15, v16, v17, v18, v19, v22);
        return v8;
      }

      return v8;
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallApIsImg4");
  }

  v8 = AMAuthInstallApImg3ServerRequestAddRequiredTags(a1, a2, a3, v10);
  if (v8)
  {
    v20 = "failed to add Ap Img3 tags";
    goto LABEL_14;
  }

  return v8;
}

uint64_t AMAuthInstallApSupportsLocalSigning(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      if (*(v11 + 112))
      {
        v12 = AMAuthInstallApImg4SupportsLocalSigning(a1);
LABEL_8:
        v13 = v12;
        result = 0;
        *a2 = v13;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallApIsImg4");
    }

    v12 = AMAuthInstallApImg3SupportsLocalSigning();
    goto LABEL_8;
  }

  return result;
}

uint64_t AMAuthInstallApSupportsGlobalSigning(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      if (*(v11 + 112))
      {
        v12 = AMAuthInstallApImg4SupportsGlobalSigning(a1);
        result = 0;
        *a2 = v12;
        return result;
      }
    }

    else
    {
      AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", a4, a5, a6, a7, a8, "AMAuthInstallApIsImg4");
    }

    return 13;
  }

  return result;
}

uint64_t AMAuthInstallApSetParameters(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = 1;
  if (a1 && theDict)
  {
    if (!*(a1 + 16))
    {
      v5 = calloc(1uLL, 0xD8uLL);
      *(a1 + 16) = v5;
      if (!v5)
      {
        return 2;
      }

      v5[4] = 1;
    }

    Value = CFDictionaryGetValue(theDict, @"ECID");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID() && !CFNumberGetValue(v7, kCFNumberSInt64Type, *(a1 + 16)))
      {
        v140 = v7;
        v139 = "failed to convert ECID %@";
        goto LABEL_128;
      }
    }

    v14 = CFDictionaryGetValue(theDict, @"ApChipID");
    if (v14)
    {
      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFNumberGetTypeID() && !CFNumberGetValue(v15, kCFNumberSInt32Type, (*(a1 + 16) + 8)))
      {
        v140 = v15;
        v139 = "failed to convert chip ID %@";
        goto LABEL_128;
      }
    }

    v17 = CFDictionaryGetValue(theDict, @"ApBoardID");
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFNumberGetTypeID() && !CFNumberGetValue(v18, kCFNumberSInt32Type, (*(a1 + 16) + 12)))
      {
        v140 = v18;
        v139 = "failed to convert board ID %@";
        goto LABEL_128;
      }
    }

    v20 = CFDictionaryGetValue(theDict, @"ApSikaFuse");
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFNumberGetTypeID())
      {
        v23 = *(*(a1 + 16) + 176);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 176) = CFRetain(v21);
      }
    }

    v24 = CFDictionaryGetValue(theDict, @"UIDMode");
    if (v24)
    {
      v25 = v24;
      v26 = CFGetTypeID(v24);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = *(*(a1 + 16) + 184);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 184) = CFRetain(v25);
      }
    }

    v28 = CFDictionaryGetValue(theDict, @"RequiresUIDMode");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFBooleanGetTypeID())
      {
        v31 = *(*(a1 + 16) + 192);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 192) = CFRetain(v29);
      }
    }

    v32 = CFDictionaryGetValue(theDict, @"Ap,EphemeralDataMode");
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFBooleanGetTypeID())
      {
        v35 = *(*(a1 + 16) + 200);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 200) = CFRetain(v33);
      }
    }

    v36 = CFDictionaryGetValue(theDict, @"Ap,DisablePlatformOnlyCode");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFBooleanGetTypeID())
      {
        v39 = *(*(a1 + 16) + 208);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 208) = CFRetain(v37);
      }
    }

    v40 = CFDictionaryGetValue(theDict, @"ApSecurityDomain");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID() && !CFNumberGetValue(v41, kCFNumberSInt32Type, (*(a1 + 16) + 16)))
      {
        v140 = v41;
        v139 = "failed to convert security domain %@";
        goto LABEL_128;
      }
    }

    v43 = CFDictionaryGetValue(theDict, @"CertificateEpoch");
    if (v43)
    {
      v44 = v43;
      v45 = CFGetTypeID(v43);
      if (v45 == CFNumberGetTypeID())
      {
        CFRetain(v44);
        v46 = *(*(a1 + 16) + 64);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 64) = v44;
      }
    }

    v47 = CFDictionaryGetValue(theDict, @"SerialString");
    if (v47)
    {
      v48 = v47;
      v49 = CFGetTypeID(v47);
      if (v49 == CFStringGetTypeID() && !*(*(a1 + 16) + 72))
      {
        CFRetain(v48);
        v50 = *(*(a1 + 16) + 72);
        AMSupportSafeRelease();
        *(*(a1 + 16) + 72) = v48;
      }
    }

    v51 = CFDictionaryGetValue(theDict, @"ApProductionMode");
    if (v51)
    {
      v52 = v51;
      v53 = CFGetTypeID(v51);
      if (v53 == CFBooleanGetTypeID())
      {
        *(*(a1 + 16) + 20) = CFBooleanGetValue(v52);
      }
    }

    v54 = CFDictionaryGetValue(theDict, @"ApSupportsImg4");
    if (v54)
    {
      v55 = v54;
      v56 = CFGetTypeID(v54);
      if (v56 == CFBooleanGetTypeID())
      {
        *(*(a1 + 16) + 112) = CFBooleanGetValue(v55);
      }
    }

    v57 = CFDictionaryGetValue(theDict, @"ApImg4DigestType");
    if (v57 && (v58 = v57, v59 = CFGetTypeID(v57), v59 == CFStringGetTypeID()))
    {
      if (CFStringCompare(v58, @"sha1", 1uLL) == kCFCompareEqualTo)
      {
        *(*(a1 + 16) + 128) = 1;
LABEL_54:
        v67 = CFDictionaryGetValue(theDict, @"ApNonce");
        if (v67)
        {
          v68 = v67;
          v69 = CFGetTypeID(v67);
          if (v69 == CFDataGetTypeID())
          {
            *(*(a1 + 16) + 24) = CFRetain(v68);
          }
        }

        v70 = CFDictionaryGetValue(theDict, @"SepNonce");
        if (v70)
        {
          v71 = CFGetTypeID(v70);
          if (v71 == CFDataGetTypeID())
          {
            v72 = sub_100004EB4();
            v74 = AMAuthInstallApImg4SetSepNonce(v72, v73);
            if (v74)
            {
              return v74;
            }
          }
        }

        v75 = CFDictionaryGetValue(theDict, @"ApNonceSlotID");
        if (v75)
        {
          v76 = CFGetTypeID(v75);
          if (v76 == CFNumberGetTypeID())
          {
            v137 = sub_100004EB4();
            AMAuthInstallApImg4SetApNonceSlotID(v137, v138);
          }
        }

        v77 = CFDictionaryGetValue(theDict, @"SepNonceSlotID");
        if (v77)
        {
          v78 = CFGetTypeID(v77);
          if (v78 == CFNumberGetTypeID())
          {
            v79 = sub_100004EB4();
            AMAuthInstallApImg4SetSepNonceSlotID(v79, v80);
          }
        }

        v81 = CFDictionaryGetValue(theDict, @"Ap,SoftwareNonceForUpdateFreshness");
        if (v81)
        {
          v82 = v81;
          v83 = CFGetTypeID(v81);
          if (v83 == CFDataGetTypeID())
          {
            *(*(a1 + 16) + 40) = CFRetain(v82);
          }
        }

        v84 = CFDictionaryGetValue(theDict, @"ApSecurityMode");
        if (v84)
        {
          v85 = v84;
          v86 = CFGetTypeID(v84);
          if (v86 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 88) = CFBooleanGetValue(v85);
          }
        }

        v87 = CFDictionaryGetValue(theDict, @"ApInRomDFU");
        if (v87)
        {
          v88 = v87;
          v89 = CFGetTypeID(v87);
          if (v89 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 96) = CFBooleanGetValue(v88);
          }
        }

        v90 = CFDictionaryGetValue(theDict, @"ApEffectiveSecurityMode");
        if (v90)
        {
          v91 = v90;
          v92 = CFGetTypeID(v90);
          if (v92 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 98) = CFBooleanGetValue(v91);
          }
        }

        v93 = CFDictionaryGetValue(theDict, @"ApEffectiveProductionMode");
        if (v93)
        {
          v94 = v93;
          v95 = CFGetTypeID(v93);
          if (v95 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 97) = CFBooleanGetValue(v94);
          }
        }

        v96 = CFDictionaryGetValue(theDict, @"DemotionPolicy");
        if (v96 && (v97 = v96, v98 = CFGetTypeID(v96), v98 == CFStringGetTypeID()))
        {
          v99 = CFRetain(v97);
        }

        else
        {
          v99 = &stru_1000ABB18;
        }

        *(*(a1 + 16) + 104) = v99;
        v100 = CFDictionaryGetValue(theDict, @"HardwareModel");
        if (v100)
        {
          v101 = v100;
          v102 = CFGetTypeID(v100);
          if (v102 == CFStringGetTypeID())
          {
            *(*(a1 + 16) + 120) = CFRetain(v101);
          }
        }

        v103 = CFDictionaryGetValue(theDict, @"ApX86");
        if (v103)
        {
          v104 = v103;
          v105 = CFGetTypeID(v103);
          if (v105 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 132) = CFBooleanGetValue(v104);
          }
        }

        v106 = CFDictionaryGetValue(theDict, @"UseGlobalSigning");
        if (v106)
        {
          v107 = v106;
          v108 = CFGetTypeID(v106);
          if (v108 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 95) = CFBooleanGetValue(v107);
          }
        }

        v109 = CFDictionaryGetValue(theDict, @"Ap,InternalUseOnlySW");
        if (v109)
        {
          v110 = v109;
          v111 = CFGetTypeID(v109);
          if (v111 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 91) = CFBooleanGetValue(v110);
          }
        }

        v112 = CFDictionaryGetValue(theDict, @"NoDefaultRequestRules");
        if (v112)
        {
          v113 = v112;
          v114 = CFGetTypeID(v112);
          if (v114 == CFBooleanGetTypeID())
          {
            *(*(a1 + 16) + 168) = CFBooleanGetValue(v113);
          }
        }

        v115 = CFDictionaryGetValue(theDict, @"TagPrefix");
        if (!v115 || (v116 = v115, v117 = CFGetTypeID(v115), v117 != CFStringGetTypeID()))
        {
LABEL_106:
          v122 = CFDictionaryGetValue(theDict, @"APTagOverrides");
          if (v122)
          {
            v129 = v122;
            v130 = CFGetTypeID(v122);
            if (v130 == CFDictionaryGetTypeID())
            {
              SafeRelease(*(*(a1 + 16) + 152));
              v131 = CFRetain(v129);
              *(*(a1 + 16) + 152) = v131;
              v132 = CFDictionaryGetValue(v131, @"@ApImg4Ticket");
              if (v132)
              {
                v133 = v132;
                if (CFStringGetLength(v132) >= 3 && CFStringGetCharacterAtIndex(v133, 0) == 64)
                {
                  SafeRelease(*(a1 + 88));
                  v134 = CFGetAllocator(a1);
                  v141.length = CFStringGetLength(v133) - 1;
                  v141.location = 1;
                  *(a1 + 88) = CFStringCreateWithSubstring(v134, v133, v141);
                }
              }
            }
          }

          v135 = *(a1 + 16);
          if (!v135)
          {
            AMAuthInstallLog(3, "AMAuthInstallApIsImg4", "%s: apParameters is NULL", v124, v125, v126, v127, v128, "AMAuthInstallApIsImg4");
            return 0;
          }

          if (!*(v135 + 112))
          {
            return 0;
          }

          v74 = AMAuthInstallApImg4SetParameters(a1, theDict, v123, v124, v125, v126, v127, v128);
          if (!v74)
          {
            return 0;
          }

          return v74;
        }

        SafeRelease(*(*(a1 + 16) + 160));
        CFStringGetLength(v116);
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v116);
        *(*(a1 + 16) + 160) = MutableCopy;
        if (MutableCopy)
        {
          if (CFStringHasSuffix(v116, @","))
          {
            v119 = *(*(a1 + 16) + 160);
            Length = CFStringGetLength(v119);
            CFStringPad(v119, 0, Length - 1, 0);
          }

          SafeRelease(*(a1 + 88));
          v121 = CFGetAllocator(a1);
          *(a1 + 88) = CFStringCreateWithFormat(v121, 0, @"%@,Ticket", *(*(a1 + 16) + 160));
          goto LABEL_106;
        }

        v140 = v116;
        v139 = "failed to convert TagPrefix %@";
LABEL_128:
        v2 = 3;
        AMAuthInstallLog(3, "AMAuthInstallApSetParameters", v139, v9, v10, v11, v12, v13, v140);
        return v2;
      }

      if (CFStringCompare(v58, @"sha2-256", 1uLL))
      {
        if (CFStringCompare(v58, @"sha2-384", 1uLL))
        {
          AMAuthInstallLog(3, "AMAuthInstallApSetParameters", "unsupported digest type %@", v60, v61, v62, v63, v64, v58);
          goto LABEL_54;
        }

        v65 = *(a1 + 16);
        v66 = 384;
      }

      else
      {
        v65 = *(a1 + 16);
        v66 = 256;
      }
    }

    else
    {
      v65 = *(a1 + 16);
      v66 = 1;
    }

    *(v65 + 128) = v66;
    goto LABEL_54;
  }

  return v2;
}

uint64_t AMAuthInstallApImg4SetApNonceSlotID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 16))
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 1;
  }

  CFRetain(cf);
  SafeRelease(*(*(a1 + 16) + 32));
  result = 0;
  *(*(a1 + 16) + 32) = cf;
  return result;
}

uint64_t AMAuthInstallApCopyParameters(const void **cf, CFTypeRef *a2)
{
  if (!cf)
  {
    Mutable = 0;
    v4 = 1;
    goto LABEL_30;
  }

  Mutable = 0;
  v4 = 1;
  if (a2 && cf[2])
  {
    v6 = CFGetAllocator(cf);
    Mutable = CFDictionaryCreateMutable(v6, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      AMAuthInstallLog(3, "AMAuthInstallApCopyParameters", "failed to allocate parameters dict", v7, v8, v9, v10, v11, v58);
      v4 = 2;
      goto LABEL_30;
    }

    v12 = CFGetAllocator(cf);
    v13 = CFNumberCreate(v12, kCFNumberSInt64Type, cf[2]);
    if (v13)
    {
      v19 = v13;
      sub_100004EC0(v13, @"ECID");
      CFRelease(v19);
      v20 = CFGetAllocator(cf);
      v21 = CFNumberCreate(v20, kCFNumberSInt32Type, cf[2] + 8);
      if (v21)
      {
        v22 = v21;
        sub_100004EC0(v21, @"ApChipID");
        CFRelease(v22);
        v23 = CFGetAllocator(cf);
        v24 = CFNumberCreate(v23, kCFNumberSInt32Type, cf[2] + 12);
        if (v24)
        {
          v25 = v24;
          sub_100004EC0(v24, @"ApBoardID");
          CFRelease(v25);
          v26 = CFGetAllocator(cf);
          v27 = CFNumberCreate(v26, kCFNumberSInt32Type, cf[2] + 16);
          if (v27)
          {
            v28 = v27;
            sub_100004EC0(v27, @"ApSecurityDomain");
            CFRelease(v28);
            v29 = cf[2];
            v30 = v29[8];
            if (v30)
            {
              CFDictionarySetValue(Mutable, @"CertificateEpoch", v30);
              v29 = cf[2];
            }

            v31 = v29[9];
            if (v31)
            {
              CFDictionarySetValue(Mutable, @"SerialString", v31);
              v29 = cf[2];
            }

            v32 = *(v29 + 20);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApProductionMode", v33);
            v34 = *(cf[2] + 112);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApSupportsImg4", v35);
            v36 = cf[2];
            v37 = v36[3];
            if (v37)
            {
              CFDictionarySetValue(Mutable, @"ApNonce", v37);
              v36 = cf[2];
            }

            v38 = v36[6];
            if (v38)
            {
              CFDictionarySetValue(Mutable, @"SepNonce", v38);
              v36 = cf[2];
            }

            v39 = v36[5];
            if (v39)
            {
              CFDictionarySetValue(Mutable, @"Ap,SoftwareNonceForUpdateFreshness", v39);
              v36 = cf[2];
            }

            v40 = *(v36 + 88);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApSecurityMode", v41);
            v42 = *(cf[2] + 96);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApInRomDFU", v43);
            v44 = *(cf[2] + 98);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApEffectiveSecurityMode", v45);
            v46 = *(cf[2] + 97);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"ApEffectiveProductionMode", v47);
            v48 = *(cf[2] + 91);
            sub_100004EA8();
            CFDictionarySetValue(Mutable, @"Ap,InternalUseOnlySW", v49);
            v51 = cf[2];
            v52 = v51[25];
            if (v52)
            {
              CFDictionarySetValue(Mutable, @"Ap,EphemeralDataMode", v52);
              v51 = cf[2];
            }

            v53 = v51[26];
            if (v53)
            {
              CFDictionarySetValue(Mutable, @"Ap,DisablePlatformOnlyCode", v53);
              v51 = cf[2];
            }

            if (*(v51 + 132))
            {
              sub_100004EC0(v50, @"ApX86");
              v51 = cf[2];
            }

            v54 = v51[13];
            if (v54)
            {
              CFDictionarySetValue(Mutable, @"DemotionPolicy", v54);
              v51 = cf[2];
            }

            v55 = v51[15];
            if (v55)
            {
              CFDictionarySetValue(Mutable, @"HardwareModel", v55);
            }

            v4 = 0;
            *a2 = CFRetain(Mutable);
            goto LABEL_30;
          }

          v57 = "failed to convert securityDomain";
        }

        else
        {
          v57 = "failed to convert boardID";
        }
      }

      else
      {
        v57 = "failed to convert chipID";
      }
    }

    else
    {
      v57 = "failed to convert ecid";
    }

    v4 = 3;
    AMAuthInstallLog(3, "AMAuthInstallApCopyParameters", v57, v14, v15, v16, v17, v18, v58);
  }

LABEL_30:
  SafeRelease(Mutable);
  return v4;
}

uint64_t AMAuthInstallApEnableRelaxedImageVerification(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  *(v2 + 80) = a2;
  return result;
}

uint64_t AMAuthInstallApRemoveInfoDict(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = 0;
  v6 = 1;
  if (a2)
  {
    sub_100004EF0();
    if (v10)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v9);
      v5 = MutableCopy;
      if (MutableCopy)
      {
        Count = CFDictionaryGetCount(MutableCopy);
        v3 = malloc(8 * Count);
        v13 = malloc(8 * Count);
        v4 = v13;
        v6 = 2;
        if (v3 && v13)
        {
          CFDictionaryGetKeysAndValues(v5, v3, v13);
          if (Count < 1)
          {
LABEL_14:
            v6 = 0;
            *a3 = CFRetain(v5);
          }

          else
          {
            v14 = 0;
            while (v3[v14])
            {
              v15 = v4[v14];
              if (!v15)
              {
                break;
              }

              v16 = CFGetTypeID(v15);
              if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v4[v14], @"Info"))
              {
                CFDictionaryRemoveValue(v4[v14], @"Info");
              }

              if (Count == ++v14)
              {
                goto LABEL_14;
              }
            }

            v6 = 1;
          }
        }
      }

      else
      {
        sub_100004ED8();
        v6 = 2;
      }
    }
  }

  else
  {
    sub_100004EF0();
  }

  SafeRelease(v5);
  SafeFree(v3);
  SafeFree(v4);
  return v6;
}

CFIndex AMAuthInstallApCreateMeasurementsWithTag(void *cf, const __CFURL *a2, const __CFString *a3, int a4, char a5, int a6, CFTypeRef *a7)
{
  v22 = 0;
  if (!cf)
  {
    Code = 1;
    goto LABEL_16;
  }

  Code = 1;
  if (a7)
  {
    if (a2)
    {
      v10 = cf[2];
      if (v10)
      {
        if (a6 == 2)
        {
          v16 = CFGetAllocator(cf);
          MeasurementsWithTag = AMAuthInstallApFtabCreateMeasurementsWithTag(v16, a2, a3, a4, a7);
        }

        else
        {
          if (a6 == 1)
          {
            v13 = CFGetAllocator(cf);
            v14 = AMAuthInstallSupportCopyTagAndFileURL(v13, a2, 0, &v22);
            if (v14)
            {
              Code = v14;
            }

            else
            {
              v15 = AMAuthInstallApMeasureBinary(v22, 0x100000, a4);
              *a7 = v15;
              if (v15)
              {
                Code = 0;
              }

              else
              {
                Code = CFErrorGetCode(0);
              }
            }

            goto LABEL_16;
          }

          v19 = *(v10 + 112);
          v20 = CFGetAllocator(cf);
          if (v19)
          {
            MeasurementsWithTag = AMAuthInstallApImg4CreateMeasurementsWithTag(v20, a2, a3, a4, a7);
          }

          else
          {
            MeasurementsWithTag = AMAuthInstallApImg3CreateMeasurementsFromURL(v20, a2, a7, a5);
          }
        }

        Code = MeasurementsWithTag;
      }
    }
  }

LABEL_16:
  AMSupportSafeRelease();
  return Code;
}

CFMutableDictionaryRef AMAuthInstallApMeasureBinary(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    AMSupportCreateErrorInternal();
    return 0;
  }

  Digest = AMAuthInstallApCreateDigest(a1, a2, a3);
  if (!Digest)
  {
    return 0;
  }

  v4 = Digest;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = sub_100004EE4();
    CFDictionarySetValue(v6, v7, v8);
  }

  else
  {
    AMSupportCreateErrorInternal();
  }

  CFRelease(v4);
  return Mutable;
}

uint64_t AMAuthInstallApCreatePersonalizedResponse(uint64_t a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  v6 = CFDictionaryContainsKey(theDict, @"Ap,LocalPolicy");
  v13 = 0;
  v68 = 0;
  v66 = 0;
  value = 0;
  v14 = 1;
  if (a1 && theDict && a3)
  {
    v15 = v6;
    if (AMAuthInstallApSupportsLocalSigning(a1, &v68 + 1, v7, v8, v9, v10, v11, v12))
    {
      goto LABEL_31;
    }

    v22 = AMAuthInstallApSupportsGlobalSigning(a1, &v68, v16, v17, v18, v19, v20, v21);
    if (v22 != 13)
    {
      v14 = v22;
      if (v22)
      {
        goto LABEL_31;
      }
    }

    v28 = *(a1 + 16);
    if (v28)
    {
      v29 = *(v28 + 94) != 0;
      if (HIBYTE(v68) && *(v28 + 94))
      {
        AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Forcing server signing\n", v23, v24, v25, v26, v27, v65);
        LOBYTE(v29) = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v29 = 0;
    }

    if (HIBYTE(v68) && !v29)
    {
      v30 = (a1 + 505);
      if (!*(a1 + 505))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_16:
    if (!v15 || !*(a1 + 505))
    {
      if (v68 != 0 && !v29)
      {
        v44 = CFRetain(*(a1 + 40));
        value = v44;
        if (v44)
        {
          v45 = v44;
          v46 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v46, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v13 = Mutable;
          if (Mutable)
          {
            CFDictionaryAddValue(Mutable, *(a1 + 88), v45);
            *a3 = CFRetain(v13);
            AMAuthInstallLog(6, "_AMAuthInstallApCreatePersonalizedResponseInternal", "Using global signing", v48, v49, v50, v51, v52, v65);
            v14 = 0;
            goto LABEL_32;
          }

          goto LABEL_41;
        }

        v58 = "global ticketData is NULL";
LABEL_40:
        AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v58, v37, v38, v39, v40, v41, v65);
        v13 = 0;
        goto LABEL_41;
      }

      v53 = CFGetAllocator(a1);
      v54 = AMAuthInstallApRemoveInfoDict(v53, theDict, &v66);
      if (!v54)
      {
        v14 = AMAuthInstallRequestSendSync(a1, v66, a3);
        if (v14)
        {
          LocalizedStatusString = AMAuthInstallGetLocalizedStatusString(a1, v14);
          AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", "server request error: %@", v60, v61, v62, v63, v64, LocalizedStatusString);
        }

        goto LABEL_31;
      }

      v14 = v54;
      v57 = "could not remove info dicts from request";
      goto LABEL_37;
    }

    v30 = (a1 + 505);
    v28 = *(a1 + 16);
LABEL_19:
    *(v28 + 84) = 1;
    *(v28 + 128) = 384;
LABEL_20:
    v31 = sub_100004EB4();
    SignedManifest = AMAuthInstallApImg4LocalCreateSignedManifest(v31, v32, 0, 0, 0, v33, v34, v35);
    if (!SignedManifest)
    {
      if (value)
      {
        v42 = CFGetAllocator(a1);
        v43 = CFDictionaryCreateMutable(v42, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v13 = v43;
        if (v43)
        {
          CFDictionaryAddValue(v43, *(a1 + 88), value);
          v14 = 0;
          *a3 = CFRetain(v13);
          goto LABEL_32;
        }

LABEL_41:
        v14 = 2;
        goto LABEL_32;
      }

      v58 = "ticketData is NULL";
      goto LABEL_40;
    }

    v14 = SignedManifest;
    if (*v30)
    {
      v56 = "hacktivated";
    }

    else
    {
      v56 = "local";
    }

    v65 = v56;
    v57 = "failed to create a %s Img4 ticket";
LABEL_37:
    AMAuthInstallLog(3, "_AMAuthInstallApCreatePersonalizedResponseInternal", v57, v37, v38, v39, v40, v41, v65);
LABEL_31:
    v13 = 0;
  }

LABEL_32:
  SafeRelease(v13);
  SafeRelease(value);
  SafeRelease(v66);
  return v14;
}

CFStringRef AMAuthInstallApCopyImageTag(const __CFAllocator *a1, CFURLRef anURL)
{
  theData = 0;
  v13 = 0;
  v11 = 0;
  if (anURL)
  {
    v13 = 0;
    v3 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
    if (v3)
    {
      if (!AMAuthInstallApImg4CreateRequestTagFromFileURL(a1, v3, @"=", &v13, &v11) && !AMAuthInstallSupportCreateDataFromMappedFileURL(a1, &theData, v11))
      {
        if (AMAuthInstallApImg3IsImg3Payload(theData))
        {
          SafeRelease(v13);
          if (AMAuthInstallApImg3CopyRequestTag(a1, theData, &v13))
          {
            AMAuthInstallLog(3, "AMAuthInstallApCopyImageTag", "failed to copy img3 tag", v4, v5, v6, v7, v8, v10);
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  SafeRelease(theData);
  SafeRelease(v3);
  SafeRelease(v11);
  return v13;
}

uint64_t AMAuthInstallApCopyDeviceEntryFromDeviceMap(const void *a1, uint64_t a2)
{
  cf = 0;
  if (a2)
  {
    v21 = sub_100004EE4();
    v19 = sub_100057D64(v21, v22, v23);
    goto LABEL_10;
  }

  if (getenv("PLATFORM_DIR"))
  {
    v3 = CFGetAllocator(a1);
    v4 = CFStringCreateWithFormat(v3, 0, @"%s/%@");
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = CFGetAllocator(a1);
    v6 = CFURLCreateWithFileSystemPath(v5, v4, kCFURLPOSIXPathStyle, 0);
    if (!v6)
    {
      goto LABEL_13;
    }

    AMSupportFileURLExists();
    CFRelease(v6);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v7 = CFGetAllocator(a1);
  v8 = CFURLCreateWithFileSystemPath(v7, @"/usr/local/standalone/firmware/device_map.plist", kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
LABEL_13:
    v19 = 2;
    goto LABEL_10;
  }

  v9 = CFGetAllocator(a1);
  v10 = AMAuthInstallPlatformCreateDataFromMappedFileURL(v9, &cf, v8);
  if (v10)
  {
    v19 = v10;
    AMAuthInstallLog(3, "AMAuthInstallApCopyDeviceEntryFromDeviceMap", "Failed to read devicemap from %@", v11, v12, v13, v14, v15, v8);
  }

  else
  {
    v16 = sub_100004EE4();
    v19 = sub_100057D64(v16, v17, v18);
  }

LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v19;
}

uint64_t sub_100057D64(void *cf, const __CFData *a2, CFDictionaryRef *a3)
{
  v3 = 0;
  v4 = @"SecurityDomain";
  error = 0;
  v5 = @"BoardID";
  v6 = 1;
  v7 = @"ChipID";
  if (!cf || !a2)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0;
  if (a3)
  {
    if (!*(cf[2] + 160))
    {
      goto LABEL_8;
    }

    v36 = *(cf[2] + 160);
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,%@");
    if (v7)
    {
      v36 = *(cf[2] + 160);
      v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,%@");
      if (v5)
      {
        v36 = *(cf[2] + 160);
        v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@,%@");
        if (v4)
        {
LABEL_8:
          v18 = CFGetAllocator(cf);
          v19 = CFPropertyListCreateWithData(v18, a2, 0, 0, &error);
          v3 = v19;
          if (!v19)
          {
            v6 = 3;
            AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", "failed to create dictionary from device_map (Not plist/xml data?): %@", v20, v21, v22, v23, v24, error);
            v10 = 0;
            v11 = 0;
            goto LABEL_22;
          }

          Count = CFDictionaryGetCount(v19);
          v26 = malloc(8 * Count);
          if (!v26)
          {
            v10 = 0;
            v11 = 0;
            v6 = 2;
            goto LABEL_22;
          }

          v27 = v26;
          v11 = malloc(8 * Count);
          if (!v11)
          {
            v6 = 2;
            v10 = v27;
            goto LABEL_22;
          }

          v28 = a3;
          v37 = v27;
          CFDictionaryGetKeysAndValues(v3, v27, v11);
          if (Count >= 1)
          {
            v29 = 0;
            while (1)
            {
              v30 = v11[v29];
              if (AMAuthInstallSupportCompareStringToInt32(v30, v7, *(cf[2] + 8)))
              {
                if (AMAuthInstallSupportCompareStringToInt32(v30, v5, *(cf[2] + 12)) && AMAuthInstallSupportCompareStringToInt32(v30, v4, *(cf[2] + 16)))
                {
                  break;
                }
              }

              if (Count == ++v29)
              {
                goto LABEL_20;
              }
            }

            TypeID = CFDictionaryGetTypeID();
            if (TypeID != CFGetTypeID(v30))
            {
              v6 = 14;
              goto LABEL_21;
            }

            v32 = CFGetAllocator(cf);
            Copy = CFDictionaryCreateCopy(v32, v30);
            *v28 = Copy;
            if (!Copy)
            {
              v6 = 0;
              goto LABEL_21;
            }
          }

LABEL_20:
          v6 = 8 * (*v28 == 0);
LABEL_21:
          v10 = v37;
          goto LABEL_22;
        }

        v35 = "failed secdomKey allocation";
      }

      else
      {
        v35 = "failed boardKey allocation";
      }
    }

    else
    {
      v35 = "failed chipKey allocation";
    }

    AMAuthInstallLog(3, "_AMAuthInstallApCopyDeviceEntryFromProvidedDeviceMap", v35, v13, v14, v15, v16, v17, v36);
    v3 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 99;
  }

LABEL_22:
  SafeRelease(v3);
  SafeFree(v10);
  SafeFree(v11);
  SafeRelease(error);
  SafeRelease(v7);
  SafeRelease(v5);
  SafeRelease(v4);
  return v6;
}

uint64_t AMAuthInstallApApplyRequestRules(uint64_t a1, uint64_t a2, const __CFURL *a3, __CFDictionary *a4)
{
  v6 = 0;
  v7 = 1;
  if (a1 && a3)
  {
    sub_100004EF0();
    if (a4)
    {
      v11 = v9;
      v12 = AMAuthInstallApCopyDeviceEntryFromDeviceMap(v9, v10);
      if (v12)
      {
        v7 = v12;
        v6 = 0;
        sub_100004ED8();
      }

      else
      {
        v13 = CFGetAllocator(v11);
        v6 = AMAuthInstallApCopyImageTag(v13, a3);
        if (v6)
        {
          Value = CFDictionaryGetValue(0, @"Manifest");
          if (Value)
          {
            v20 = Value;
            Count = CFDictionaryGetCount(Value);
            v4 = calloc(8uLL, Count);
            v22 = calloc(8uLL, Count);
            v5 = v22;
            v7 = 2;
            if (v4 && v22)
            {
              v40 = v11;
              v41 = v4;
              CFDictionaryGetKeysAndValues(v20, v4, v22);
              if (Count < 1)
              {
LABEL_21:
                AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find RestoreRequestRules property", v23, v24, v25, v26, v27, v40);
                v7 = 8;
              }

              else
              {
                v28 = 0;
                while (1)
                {
                  v29 = CFDictionaryGetValue(v5[v28], v6);
                  if (v29)
                  {
                    v30 = v29;
                    v31 = CFDictionaryGetValue(v29, @"RequiresPartialDigest");
                    if (v31)
                    {
                      v32 = v31;
                      TypeID = CFBooleanGetTypeID();
                      if (TypeID == CFGetTypeID(v32) && !CFBooleanGetValue(v32))
                      {
                        CFDictionaryRemoveValue(a4, @"PartialDigest");
                      }
                    }

                    v34 = CFDictionaryGetValue(v30, @"Trusted");
                    if (v34)
                    {
                      v35 = v34;
                      v36 = CFBooleanGetTypeID();
                      if (v36 == CFGetTypeID(v35))
                      {
                        CFDictionarySetValue(a4, @"Trusted", v35);
                      }
                    }

                    v37 = CFDictionaryGetValue(v30, @"RestoreRequestRules");
                    if (v37)
                    {
                      break;
                    }
                  }

                  if (Count == ++v28)
                  {
                    goto LABEL_21;
                  }
                }

                v7 = AMAuthInstallBundleProcessRules(v40, v37, a4);
              }

              v4 = v41;
            }
          }

          else
          {
            AMAuthInstallLog(3, "AMAuthInstallApApplyRequestRules", "failed to find manifest entry", v15, v16, v17, v18, v19, v39);
            sub_100004ED8();
            v7 = 8;
          }
        }

        else
        {
          sub_100004ED8();
          v7 = 3;
        }
      }
    }
  }

  else
  {
    sub_100004EF0();
  }

  SafeRelease(0);
  SafeRelease(v6);
  SafeFree(v4);
  SafeFree(v5);
  return v7;
}

uint64_t AMAuthInstallApExtractZippedDeviceMap(uint64_t a1, void *a2)
{
  v34 = 0;
  CFAllocatorGetDefault();
  v4 = AMAuthInstallPlatformCopyURLToNewTempDirectory();
  if (v4)
  {
    v31 = v4;
    AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to create temp dir", v5, v6, v7, v8, v9, v33);
    v11 = 0;
  }

  else
  {
    Default = CFAllocatorGetDefault();
    v11 = CFURLCreateCopyAppendingPathComponent(Default, 0, @"device_map", 0);
    if (v11)
    {
      v12 = CFAllocatorGetDefault();
      v13 = AMAuthInstallSupportWriteDataToFileURL(v12, a1, v11, 1);
      if (v13)
      {
        v31 = v13;
        AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to write data to %@", v14, v15, v16, v17, v18, v11);
      }

      else
      {
        v19 = BbfwReaderOpen(v11);
        if (v19)
        {
          v25 = v19;
          v31 = BbfwReaderCopyFileData(v19, &v34);
          if (v31)
          {
            AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to copy data from %@", v26, v27, v28, v29, v30, v11);
          }

          else
          {
            *a2 = v34;
          }

          BbfwReaderClose(v25);
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApExtractZippedDeviceMap", "failed to unzip file", v20, v21, v22, v23, v24, v33);
          v31 = 4;
        }
      }
    }

    else
    {
      v31 = 2;
    }
  }

  SafeRelease(v11);
  SafeRelease(0);
  return v31;
}

uint64_t AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped(void *a1, const __CFURL *a2, CFTypeRef cf, int a4, int a5, CFDictionaryRef *a6)
{
  v6 = 0;
  v46 = 0;
  theDict = 0;
  v7 = 1;
  if (a1 && a2 && a6)
  {
    if (cf && a4)
    {
      v12 = AMAuthInstallApExtractZippedDeviceMap(cf, &v46);
      if (v12)
      {
        v7 = v12;
        AMAuthInstallLog(3, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "failed to extract zipped device map", v13, v14, v15, v16, v17, v44);
        v6 = 0;
        goto LABEL_24;
      }
    }

    else if (cf && (a4 & 1) == 0)
    {
      v46 = CFRetain(cf);
    }

    v18 = *(a1[2] + 128);
    v19 = sub_100004EB4();
    MeasurementsWithTag = AMAuthInstallApCreateMeasurementsWithTag(v19, v20, 0, v21, 0, a5, v22);
    v6 = theDict;
    if (MeasurementsWithTag)
    {
      v7 = MeasurementsWithTag;
    }

    else if (theDict)
    {
      if (AMAuthInstallApApplyRequestRules(a1, v46, a2, theDict))
      {
        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Could not retrieve image properties from devicemap.", v24, v25, v26, v27, v28, v44);
        if (!*(a1[2] + 168))
        {
          CFDictionarySetValue(theDict, @"Trusted", kCFBooleanTrue);
          if (*(a1[2] + 20))
          {
            v34 = kCFBooleanTrue;
          }

          else
          {
            v34 = kCFBooleanFalse;
          }

          CFDictionarySetValue(theDict, @"EPRO", v34);
          if (*(a1[2] + 88))
          {
            v35 = kCFBooleanTrue;
          }

          else
          {
            v35 = kCFBooleanFalse;
          }

          CFDictionarySetValue(theDict, @"ESEC", v35);
          AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Consider setting alternate device_map, ie in a device-specific SDK path.  Setting default RestoreRequestRules to: %@", v36, v37, v38, v39, v40, theDict);
        }

        AMAuthInstallLog(4, "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped", "WARNING: Note: This default behavior may change in the future into a hard error.", v29, v30, v31, v32, v33, v45);
      }

      v41 = CFGetAllocator(a1);
      Copy = CFDictionaryCreateCopy(v41, theDict);
      *a6 = Copy;
      v7 = 2 * (Copy == 0);
      v6 = theDict;
    }

    else
    {
      v7 = 14;
    }
  }

LABEL_24:
  SafeRelease(v6);
  SafeRelease(v46);
  return v7;
}

CFIndex AMAuthInstallApFtabIsValid(const __CFData *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 0x30)
    {
      sub_10000503C();
      v20 = "Encoded header is larger than data.";
    }

    else if (*(BytePtr + 4) == 0x62617466736F6B72)
    {
      v17 = *(BytePtr + 10);
      if (16 * v17 + 48 > Length)
      {
        sub_10000503C();
        v20 = "Encoded metadata is larger than data.";
      }

      else if (v17)
      {
        v18 = (*&BytePtr[16 * (v17 - 1) + 56] + *&BytePtr[16 * (v17 - 1) + 52]);
        v19 = Length < v18;
        v17 = Length >= v18;
        v20 = "FTAB data is smaller than last payload";
        if (!v19)
        {
          LOBYTE(v20) = 0;
        }

        Length = v17;
      }

      else
      {
        Length = 0;
        v20 = "FTAB contains no payloads";
      }
    }

    else
    {
      sub_10000503C();
      v20 = "FTAB contains invalid magic";
    }
  }

  else
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "ftabData is NULL", a4, a5, a6, a7, a8, v22);
    sub_10000503C();
  }

  if (!a2 && (v17 & 1) == 0)
  {
    AMAuthInstallLog(3, "AMAuthInstallApFtabIsValid", "FTAB Error: %s", v12, v13, v14, v15, v16, v20);
  }

  return Length;
}

uint64_t AMAuthInstallApFtabCreateMeasurementsWithTag(const __CFAllocator *a1, uint64_t a2, CFStringRef theString, int a4, CFTypeRef *a5)
{
  value = 0;
  v5 = 1;
  if (a2 && theString && a5)
  {
    v56 = 0;
    if (CFStringGetLength(theString) == 4)
    {
      v16 = sub_100004EFC(a1, a2, &v56, v11, v12, v13, v14, v15);
      v22 = v16;
      if (v16)
      {
        Length = CFDataGetLength(v16);
        BytePtr = CFDataGetBytePtr(v22);
        if (CFStringGetCString(theString, buffer, 5, 0x8000100u))
        {
          v25 = v56;
          if (*(v56 + 10))
          {
            v26 = 0;
            v27 = 0;
            while (1)
            {
              v53 = *&v25[v26 + 56];
              AMAuthInstallLog(7, "AMAuthInstallApFtabCopyDataForTag", "Payload %2d: [%.4s], %7u bytes.", v17, v18, v19, v20, v21, v27);
              v25 = v56;
              v28 = &v56[v26];
              if (*&v56[v26 + 48] == *buffer)
              {
                break;
              }

              ++v27;
              v26 += 16;
              if (v27 >= *(v56 + 10))
              {
                goto LABEL_11;
              }
            }

            v35 = *(v28 + 13);
            v34 = *(v28 + 14);
            if (Length < (v34 + v35))
            {
              v51 = "Encoded payload is larger than data.";
            }

            else
            {
              v36 = CFDataCreate(a1, &BytePtr[v35], v34);
              if (v36)
              {
                v37 = v36;
                AMSupportSafeRelease();
                AMAuthInstallCryptoCreateDigestForDataType(a1, v37, &value, a4);
                if (value)
                {
                  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v49 = Mutable;
                  if (Mutable)
                  {
                    CFDictionarySetValue(Mutable, @"Digest", value);
                    v5 = 0;
                    *a5 = CFRetain(v49);
                    goto LABEL_18;
                  }

                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "failed to create mutable dict measurementDict", v44, v45, v46, v47, v48, v52);
                }

                else
                {
                  AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "created digest is NULL", v38, v39, v40, v41, v42, v52);
                }

                v5 = 2;
                goto LABEL_18;
              }

              v51 = "payload is NULL";
            }

            goto LABEL_25;
          }

LABEL_11:
          v5 = 8;
LABEL_12:
          AMSupportSafeRelease();
          AMAuthInstallLog(3, "AMAuthInstallApFtabCreateMeasurementsWithTag", "AMAuthInstallApFtabCopyDataForTag returned %d", v29, v30, v31, v32, v33, v5);
          goto LABEL_18;
        }

        v51 = "CFStringGetCString failed.";
      }

      else
      {
        v51 = "ftabData is NULL";
      }

LABEL_25:
      AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", v51, v17, v18, v19, v20, v21, v52);
      v5 = 99;
      goto LABEL_12;
    }

    AMAuthInstallLog(3, "AMAuthInstallApFtabCopyDataForTag", "payloadTag is not 4 bytes", v11, v12, v13, v14, v15, v52);
    v5 = 1;
    goto LABEL_12;
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v5;
}

uint64_t AMAuthInstallApFtabStitchTicketData(const void **a1, uint64_t a2, const __CFURL *a3, const __CFDictionary *a4)
{
  v46 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 1;
  if (a2 && a3 && a4)
  {
    v10 = v8;
    Value = CFDictionaryGetValue(a4, a1[11]);
    if (Value)
    {
      v17 = Value;
      Length = CFDataGetLength(Value);
      if (Length > 0)
      {
        v24 = Length;
        v25 = sub_100004EFC(v10, a2, &v46, v19, v20, v21, v22, v23);
        v31 = v25;
        if (v25)
        {
          v32 = CFDataGetLength(v25);
          BytePtr = CFDataGetBytePtr(v17);
          CFDataAppendBytes(v31, BytePtr, v24);
          v34 = v46;
          *(v46 + 4) = v32;
          *(v34 + 5) = v24;
          v35 = CFDataGetLength(v31);
          CFDataIncreaseLength(v31, -v35 & 0xFFFLL);
          v36 = AMAuthInstallSupportWriteDataToFileURL(v10, v31, a3, 1);
          if (v36)
          {
            v43 = v36;
            AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: Failed to copy FTAB file to personalized bundle.", v37, v38, v39, v40, v41, "AMAuthInstallApFtabStitchTicketData");
            v9 = v43;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "ftabData is NULL", v26, v27, v28, v29, v30, v44);
          v9 = 99;
        }

        goto LABEL_9;
      }

      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict has an empty ticket.", v19, v20, v21, v22, v23, "AMAuthInstallApFtabStitchTicketData");
    }

    else
    {
      v45 = a1[11];
      AMAuthInstallLog(3, "AMAuthInstallApFtabStitchTicketData", "%s: responseDict doesn't contain a %@ ticket.", v12, v13, v14, v15, v16, "AMAuthInstallApFtabStitchTicketData");
    }

    v9 = 17;
  }

LABEL_9:
  AMSupportSafeRelease();
  return v9;
}

uint64_t AMAuthInstallApImg3CreateServerRequestDictionary(void *a1, const void *a2, const void *a3, int a4, CFTypeRef *a5)
{
  v5 = 0;
  v6 = 1;
  if (a1 && a2 && a3 && a5)
  {
    v12 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v12, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, a2, a3);
      v6 = AMAuthInstallApServerRequestAddRequiredTags(a1, v5, a4, v14, v15, v16, v17, v18);
      if (!v6)
      {
        *a5 = CFRetain(v5);
      }
    }

    else
    {
      v6 = 2;
    }
  }

  SafeRelease(v5);
  return v6;
}

uint64_t AMAuthInstallApImg3ServerRequestAddRequiredTags(void *a1, __CFDictionary *a2, int a3, int a4)
{
  v28 = a2;
  if (!a1)
  {
    return 1;
  }

  v5 = 1;
  if (!a2)
  {
    return v5;
  }

  v7 = a1[2];
  if (!v7)
  {
    return v5;
  }

  if (*v7)
  {
    _CFDictionarySetInteger64(a2, @"ApECID", *v7);
    v7 = a1[2];
  }

  _CFDictionarySetInteger32(a2, @"ApChipID", *(v7 + 8));
  _CFDictionarySetInteger32(a2, @"ApBoardID", *(a1[2] + 12));
  v10 = a1[2];
  if (!*(v10 + 132))
  {
    _CFDictionarySetBoolean(a2, @"ApProductionMode", *(v10 + 20));
    v10 = a1[2];
  }

  _CFDictionarySetInteger32(a2, @"ApSecurityDomain", *(v10 + 16));
  if (a3)
  {
    CFDictionarySetValue(a2, @"@APTicket", kCFBooleanTrue);
    v11 = a1[2];
    v12 = *(v11 + 24);
    if (v12 && !*(v11 + 132))
    {
      CFDictionarySetValue(a2, @"ApNonce", v12);
      v11 = a1[2];
    }

    if (*(v11 + 80))
    {
      CFDictionarySetValue(a2, @"ApRelaxedImageVerification", kCFBooleanTrue);
    }
  }

  v13 = a1[53];
  if (!a4 && v13)
  {
    Value = CFDictionaryGetValue(v13, @"ApRequestEntries");
    if (Value)
    {
      v15 = Value;
      v16 = CFGetAllocator(a1);
      v5 = AMAuthInstallSupportApplyDictionaryOverrides(v16, v15, &v28, 0);
      if (v5)
      {
        v22 = "failed to set Ap entitlements";
LABEL_24:
        AMAuthInstallLog(3, "AMAuthInstallApImg3ServerRequestAddRequiredTags", v22, v17, v18, v19, v20, v21, v27);
        return v5;
      }

      return v5;
    }

    return 0;
  }

  v5 = 0;
  if (!a4 || !v13)
  {
    return v5;
  }

  v23 = CFDictionaryGetValue(v13, @"RecoveryRequestEntries");
  if (!v23)
  {
    return 0;
  }

  v24 = v23;
  v25 = CFGetAllocator(a1);
  v5 = AMAuthInstallSupportApplyDictionaryOverrides(v25, v24, &v28, 0);
  if (v5)
  {
    v22 = "failed to set recovery entitlements";
    goto LABEL_24;
  }

  return v5;
}

uint64_t AMAuthInstallApImg3CreateMeasurementsFromURL(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, char a4)
{
  v4 = 0;
  theData = 0;
  v5 = 1;
  if (!a2)
  {
    v7 = 0;
    Mutable = 0;
    goto LABEL_11;
  }

  v7 = 0;
  Mutable = 0;
  if (a3)
  {
    v11 = AMAuthInstallPlatformCreateDataFromFileURL(a1, &theData, a2);
    if (v11)
    {
      v5 = v11;
      v4 = 0;
      v7 = 0;
      Mutable = 0;
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      if (tss_get_partial_hash(BytePtr, Length, 64, bytes, v14, v15, v16, v17))
      {
        AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute partial digest for img3 object", v18, v19, v20, v21, v22, theData);
        v4 = 0;
        v7 = 0;
LABEL_8:
        v5 = 5;
        goto LABEL_11;
      }

      v7 = CFDataCreate(a1, bytes, 28);
      if (v7)
      {
        CFDictionarySetValue(Mutable, @"PartialDigest", v7);
        if (a4)
        {
          v4 = 0;
LABEL_15:
          v5 = 0;
          *a3 = CFRetain(Mutable);
          goto LABEL_11;
        }

        v24 = CFDataGetBytePtr(theData);
        v25 = CFDataGetLength(theData);
        if (tss_get_hash(v24, v25, v37, v26, v27, v28, v29, v30))
        {
          AMAuthInstallLog(3, "AMAuthInstallApImg3CreateMeasurementsFromURL", "failed to compute digest for img3 object", v31, v32, v33, v34, v35, theData);
          v4 = 0;
          goto LABEL_8;
        }

        v4 = CFDataCreate(a1, v37, 20);
        if (v4)
        {
          CFDictionarySetValue(Mutable, @"Digest", v4);
          goto LABEL_15;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
      v7 = 0;
    }

    v5 = 2;
  }

LABEL_11:
  SafeRelease(theData);
  SafeRelease(v4);
  SafeRelease(v7);
  SafeRelease(Mutable);
  return v5;
}