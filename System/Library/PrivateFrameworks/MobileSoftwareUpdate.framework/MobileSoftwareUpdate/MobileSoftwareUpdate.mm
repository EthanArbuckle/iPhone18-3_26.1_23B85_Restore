int *logfunctionv(const char *a1, uint64_t a2, const __CFString *a3, va_list a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *__error();
  memcpy(__dst, "Error creating CFString", sizeof(__dst));
  if (logfunctionv_onceToken != -1)
  {
    logfunctionv_cold_1();
  }

  v8 = CFStringCreateWithFormatAndArguments(0, 0, a3, a4);
  if (v8)
  {
    v9 = v8;
    v10 = __dst;
    if (CFStringGetCString(v8, __dst, 1024, 0x8000100u))
    {
      v11 = 0;
    }

    else
    {
      Length = CFStringGetLength(v9);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v11 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6FEB6E8AuLL);
      CFStringGetCString(v9, v11, MaximumSizeForEncoding + 1, 0x8000100u);
      v10 = v11;
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14 = "";
  if (a1)
  {
    v14 = a1;
  }

  fprintf(*MEMORY[0x277D85DF8], "%s: %s", v14, v10);
  free(v11);
  result = __error();
  *result = v7;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *__logfunctionv_block_invoke()
{
  result = getenv("__OSINSTALL_ENVIRONMENT");
  if (result)
  {

    return open("/dev/console", 131082);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

CFErrorRef _vcreate_error_internal_with_userinfo_cf(const __CFString *a1, CFIndex a2, const void *a3, const void *a4, const __CFDictionary *a5, const __CFString *a6, va_list a7)
{
  v14 = *__error();
  v15 = *MEMORY[0x277CBECE8];
  if (a5)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v17 = MutableCopy;
  if (MutableCopy)
  {
    v18 = CFStringCreateWithFormatAndArguments(v15, 0, a6, a7);
    if (v18)
    {
      v24 = v18;
      logfunction("", 1, @"%@ error %ld - %@\n", v19, v20, v21, v22, v23, a1);
      CFDictionaryAddValue(v17, *MEMORY[0x277CBEE58], v24);
      CFRelease(v24);
    }

    if (a3)
    {
      CFDictionaryAddValue(v17, *MEMORY[0x277CBEE78], a3);
    }

    if (a4)
    {
      CFDictionaryAddValue(v17, @"target_update", a4);
    }

    v25 = CFErrorCreate(v15, a1, a2, v17);
    CFRelease(v17);
  }

  else
  {
    v25 = 0;
  }

  *__error() = v14;
  return v25;
}

CFDictionaryRef cferror_to_dictionary_embedded(__CFError *a1, int a2)
{
  v39 = *MEMORY[0x277D85DE8];
  valuePtr = CFErrorGetCode(a1);
  Domain = CFErrorGetDomain(a1);
  v5 = CFErrorCopyUserInfo(a1);
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, &valuePtr);
  if (!v7)
  {
    logfunction("", 1, @"could not create cfnumber\n", v8, v9, v10, v11, v12, v32);
    v24 = 0;
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = v7;
  *keys = xmmword_2798EDAA8;
  v38 = *&off_2798EDAB8;
  values[0] = v7;
  values[1] = Domain;
  v35 = v5;
  v36 = 0;
  if (v5)
  {
    v14 = *MEMORY[0x277CBEE78];
    Value = CFDictionaryGetValue(v5, *MEMORY[0x277CBEE78]);
    v16 = Value;
    if (Value)
    {
      v17 = CFGetTypeID(Value);
      if (v17 != CFErrorGetTypeID() || (v18 = cferror_to_dictionary_embedded(v16, 0)) == 0)
      {
        v16 = 0;
        if (a2)
        {
          goto LABEL_10;
        }

LABEL_17:
        v23 = 3;
        goto LABEL_19;
      }

      v19 = v18;
      MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, v5);
      v16 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionarySetValue(MutableCopy, v14, v19);
        v35 = v16;
      }

      CFRelease(v19);
    }

    if (a2)
    {
LABEL_10:
      v21 = (&v38 + 8);
      v22 = &v36;
      v23 = 4;
LABEL_15:
      *v21 = @"_MSU_Embedded_Error";
      *v22 = *MEMORY[0x277CBED28];
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v16 = 0;
  if (a2)
  {
    v21 = &v38;
    v22 = &v35;
    v23 = 3;
    goto LABEL_15;
  }

  v23 = 2;
LABEL_19:
  v24 = CFDictionaryCreate(v6, keys, values, v23, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    logfunction("", 1, @"could not create cfdictionary\n", v25, v26, v27, v28, v29, v32);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  CFRelease(v13);
  if (v5)
  {
LABEL_24:
    CFRelease(v5);
  }

LABEL_25:
  v30 = *MEMORY[0x277D85DE8];
  return v24;
}

const __CFString *copy_dictionary_to_cferror(const void *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    v23 = @"marshalled cferror is not a dictionary.\n";
LABEL_17:
    logfunction("", 1, v23, v3, v4, v5, v6, v7, v25);
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Code");
  if (!Value)
  {
    v23 = @"marshalled cferror is incomplete. missing code.\n";
    goto LABEL_17;
  }

  if (!CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
  {
    v23 = @"code not convert cfnumber code to cfindex\n";
    goto LABEL_17;
  }

  v14 = CFDictionaryGetValue(a1, @"Domain");
  if (!v14)
  {
    logfunction("", 1, @"marshalled cferror is incomplete. missing domain.\n", v9, v10, v11, v12, v13, v25);
    return v14;
  }

  v15 = CFDictionaryGetValue(a1, @"UserInfo");
  if (!v15)
  {
    v23 = @"marshalled cferror is incomplete. missing UserInfo.\n";
    goto LABEL_17;
  }

  v16 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v15);
  if (!MutableCopy)
  {
    v23 = @"code not create mutable copy of userInfo\n";
    goto LABEL_17;
  }

  v18 = MutableCopy;
  v19 = *MEMORY[0x277CBEE78];
  v20 = CFDictionaryGetValue(MutableCopy, *MEMORY[0x277CBEE78]);
  v21 = copy_dictionary_to_cferror(v20);
  if (v21)
  {
    v22 = v21;
    CFDictionarySetValue(v18, v19, v21);
    CFRelease(v22);
  }

  v14 = CFErrorCreate(v16, v14, valuePtr, v18);
  CFRelease(v18);
  return v14;
}

CFPropertyListRef _MSUPreferencesCopyValueForDomain(const __CFString *a1, const __CFString *a2)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (v4)
  {
    return v4;
  }

  if (_getManagedPreferencesDict_managedPreferencesOnce != -1)
  {
    _MSUPreferencesCopyValueForDomain_cold_1();
  }

  if (_getManagedPreferencesDict__managedPreferencesCache)
  {
    Value = CFDictionaryGetValue(_getManagedPreferencesDict__managedPreferencesCache, a1);
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      return v4;
    }
  }

  v7 = *MEMORY[0x277CBF010];

  return CFPreferencesCopyValue(a1, a2, @"mobile", v7);
}

uint64_t _MSUPreferencesGetAppBooleanValue(const __CFString *a1, _BYTE *a2)
{
  v3 = _MSUPreferencesCopyValueForDomain(a1, @"com.apple.MobileSoftwareUpdate");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v6;
  }

LABEL_4:
  if (v6)
  {
    Value = CFBooleanGetValue(v4);
    if (!v4)
    {
      return Value;
    }

    goto LABEL_8;
  }

  Value = 0;
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

  return Value;
}

uint64_t _MSUPreferencesGetAppBooleanValueWithDefaultValue(const __CFString *a1, unsigned int a2)
{
  v4 = 0;
  LODWORD(result) = _MSUPreferencesGetAppBooleanValue(a1, &v4);
  if (v4)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t _MSUPreferencesGetAppIntegerValue(const __CFString *a1, BOOL *a2)
{
  valuePtr = 0;
  v3 = _MSUPreferencesCopyValueForDomain(a1, @"com.apple.MobileSoftwareUpdate");
  v4 = v3;
  if (!v3 || (v5 = CFGetTypeID(v3), v5 != CFNumberGetTypeID()))
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = CFNumberGetValue(v4, kCFNumberCFIndexType, &valuePtr) != 0;
  if (a2)
  {
LABEL_6:
    *a2 = v6;
  }

LABEL_7:
  if (v4)
  {
    CFRelease(v4);
  }

  return valuePtr;
}

void ___getManagedPreferencesDict_block_invoke()
{
  v0 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%@.plist", @"/Library/Managed Preferences/mobile", @"com.apple.MobileSoftwareUpdate");
  if (v0)
  {
    v1 = v0;
    _getManagedPreferencesDict__managedPreferencesCache = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v0];

    CFRelease(v1);
  }
}

uint64_t qos_class_for_msu_qos(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_259B5F680[a1 - 1];
  }
}

uint64_t MSUPreflightUpdate(uint64_t a1, const void *a2, const __CFString **a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a1 >= 6)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"MSUPhase(%d)", a1];
    }

    else
    {
      v11 = off_2798EE080[a1];
    }

    v12 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    v13 = @"SPECIFIED";
    *buf = 138413314;
    v27 = @"MSUPreflightUpdate";
    v28 = 2114;
    v29 = v11;
    if (a4)
    {
      v14 = @"SPECIFIED";
    }

    else
    {
      v14 = @"NONE";
    }

    v30 = 2114;
    if (!a5)
    {
      v13 = @"NONE";
    }

    v31 = v12;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v13;
    _os_log_impl(&dword_259B51000, v10, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | phase:%{public}@, options:%{public}@, fncallback:%@, context:%@", buf, 0x34u);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"ClientOptions", a2);
    Value = CFDictionaryGetValue(a2, @"__msu-update-attributes-dictionary-key");
    if (Value)
    {
      CFDictionarySetValue(v16, @"AssetProperties", Value);
    }

    v18 = CFDictionaryGetValue(a2, @"SourcePath");
    if (v18)
    {
      CFDictionarySetValue(v16, @"SourcePath", v18);
    }
  }

  else
  {
    Value = 0;
  }

  v19 = objc_autoreleasePoolPush();
  -[__CFDictionary setValue:forKey:](v16, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInt:a1], @"Phase");
  objc_autoreleasePoolPop(v19);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __MSUPreflightUpdate_block_invoke;
  v25[3] = &__block_descriptor_48_e25_i16__0____CFDictionary__8l;
  v25[4] = a4;
  v25[5] = a5;
  v20 = perform_command_with_progress("PreflightUpdate", v16, Value, 0, a3, v25);
  CFRelease(v16);
  v21 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = @"MSUPreflightUpdate";
      _os_log_impl(&dword_259B51000, v22, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    MSUPreflightUpdate_cold_1(a3);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __MSUPreflightUpdate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return v2(a2, *(a1 + 40));
  }

  else
  {
    return 0;
  }
}

BOOL MSUPrepareUpdateWithAsset(void *a1, const void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v13 = @"SPECIFIED";
    }

    else
    {
      v13 = @"NONE";
    }

    v14 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    *buf = 138413314;
    v30 = @"MSUPrepareUpdateWithAsset";
    if (a5)
    {
      v15 = @"SPECIFIED";
    }

    else
    {
      v15 = @"NONE";
    }

    if (a6)
    {
      v16 = @"SPECIFIED";
    }

    else
    {
      v16 = @"NONE";
    }

    v31 = 2114;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | update_asset:%{public}@, options:%{public}@, fncallback:%@, context:%@", buf, 0x34u);
  }

  v17 = [objc_msgSend(a1 "localURL")];
  if (!v17)
  {
    v22 = [a1 state];
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Could not get local URL for update asset; state is %ld", v23, v24, v25, v22);
    if (a4)
    {
      *a4 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
    }

    result = os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    MSUPrepareUpdateWithAsset_cold_2(a4 == 0, a4);
LABEL_24:
    result = 0;
    goto LABEL_28;
  }

  v18 = perform_prepare_command(v17, a2, [a1 attributes], a3, a4, a5, a6);
  v19 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v20 = v19;
  if (!v18)
  {
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    MSUPrepareUpdateWithAsset_cold_1(a4);
    goto LABEL_24;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v21 = *a3;
    }

    else
    {
      v21 = -1;
    }

    *buf = 138412546;
    v30 = @"MSUPrepareUpdateWithAsset";
    v31 = 2048;
    v32 = v21;
    _os_log_impl(&dword_259B51000, v20, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | session:%ld", buf, 0x16u);
  }

  result = 1;
LABEL_28:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t perform_prepare_command(__CFString *a1, const void *a2, void *a3, void *a4, const __CFString **a5, uint64_t a6, uint64_t a7)
{
  v43 = *MEMORY[0x277D85DE8];
  number = 0;
  v13 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = @"NONE";
    }

    v15 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:{a2, v14}];
    v16 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a3];
    v17 = @"SPECIFIED";
    *buf = 138413570;
    v32 = @"perform_prepare_command";
    if (a6)
    {
      v18 = @"SPECIFIED";
    }

    else
    {
      v18 = @"NONE";
    }

    if (!a7)
    {
      v17 = @"NONE";
    }

    v33 = 2114;
    v34 = v27;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    v39 = 2112;
    v40 = v18;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&dword_259B51000, v13, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | source_path:%{public}@, prepare_options:%{public}@, update_attributes:%{public}@, fncallback:%@, context:%@", buf, 0x3Eu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v20 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"SourcePath", a1);
  }

  if (a2)
  {
    CFDictionarySetValue(v20, @"ClientOptions", a2);
  }

  if (a3)
  {
    CFDictionarySetValue(v20, @"AssetProperties", a3);
  }

  CFDictionarySetValue(v20, @"ClientRepliesToProgress", *MEMORY[0x277CBED28]);
  v21 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = @"perform_prepare_command";
    _os_log_impl(&dword_259B51000, v21, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | PERFORM_WITH_PROGRESS | PrepareUpdate...", buf, 0xCu);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __perform_prepare_command_block_invoke;
  v29[3] = &unk_2798EE010;
  v29[5] = a6;
  v29[6] = a7;
  v29[4] = @"perform_prepare_command";
  v22 = perform_command_with_progress("PrepareUpdate", v20, a3, &number, a5, v29);
  if (v22)
  {
    CFNumberGetValue(number, kCFNumberLongType, a4);
    v23 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v24 = *a4;
      }

      else
      {
        v24 = -1;
      }

      *buf = 138412546;
      v32 = @"perform_prepare_command";
      v33 = 2048;
      v34 = v24;
      _os_log_impl(&dword_259B51000, v23, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | ...PrepareUpdate | SUCCESS | session:%ld", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    perform_prepare_command_cold_1(a5);
  }

  CFRelease(v20);
  if (number)
  {
    CFRelease(number);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL MSUPrepareUpdateWithMAAsset(void *a1, const void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v13 = [a1 absoluteAssetId];
      if (v13)
      {
        v14 = [v13 summary];
      }

      else
      {
        v14 = @"SPECIFIED";
      }
    }

    else
    {
      v14 = @"NONE";
    }

    v15 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    *buf = 138413314;
    v31 = @"MSUPrepareUpdateWithMAAsset";
    if (a5)
    {
      v16 = @"SPECIFIED";
    }

    else
    {
      v16 = @"NONE";
    }

    if (a6)
    {
      v17 = @"SPECIFIED";
    }

    else
    {
      v17 = @"NONE";
    }

    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | update_asset:%{public}@, options:%{public}@, fncallback:%@, context:%@", buf, 0x34u);
  }

  v18 = [objc_msgSend(a1 "getLocalUrl")];
  if (!v18)
  {
    v23 = [a1 state];
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"Could not get local URL for update asset; state is %ld", v24, v25, v26, v23);
    if (a4)
    {
      *a4 = error_internal_cf;
    }

    else
    {
      CFRelease(error_internal_cf);
    }

    result = os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_30;
    }

    MSUPrepareUpdateWithMAAsset_cold_2(a4 == 0, a4);
LABEL_26:
    result = 0;
    goto LABEL_30;
  }

  v19 = perform_prepare_command(v18, a2, [a1 attributes], a3, a4, a5, a6);
  v20 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v21 = v20;
  if (!v19)
  {
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_30;
    }

    MSUPrepareUpdateWithMAAsset_cold_1(a4);
    goto LABEL_26;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v22 = *a3;
    }

    else
    {
      v22 = -1;
    }

    *buf = 138412546;
    v31 = @"MSUPrepareUpdateWithMAAsset";
    v32 = 2048;
    v33 = v22;
    _os_log_impl(&dword_259B51000, v21, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | session:%ld", buf, 0x16u);
  }

  result = 1;
LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSUPrepareUpdate(__CFString *a1, const __CFDictionary *a2, uint64_t *a3, const __CFString **a4, uint64_t a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = @"NONE";
    }

    v14 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    v24 = 138413314;
    v25 = @"MSUPrepareUpdate";
    v15 = @"SPECIFIED";
    v27 = v13;
    if (a5)
    {
      v16 = @"SPECIFIED";
    }

    else
    {
      v16 = @"NONE";
    }

    v26 = 2114;
    if (!a6)
    {
      v15 = @"NONE";
    }

    v28 = 2114;
    v29 = v14;
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | source_path:%{public}@, options:%{public}@, fncallback:%@, context:%@", &v24, 0x34u);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"__msu-update-attributes-dictionary-key");
  }

  else
  {
    Value = 0;
  }

  v18 = perform_prepare_command(a1, a2, Value, a3, a4, a5, a6);
  v19 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v21 = *a3;
      }

      else
      {
        v21 = -1;
      }

      v24 = 138412546;
      v25 = @"MSUPrepareUpdate";
      v26 = 2048;
      v27 = v21;
      _os_log_impl(&dword_259B51000, v20, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | session:%ld", &v24, 0x16u);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    MSUPrepareUpdate_cold_1(a4);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

__CFDictionary *copyDictionaryAddingLocale(CFDictionaryRef theDict, const void *a2, const void *a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
  v6 = MutableCopy;
  if (a2)
  {
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"CurrentLanguageCode", a2);
      if (a3)
      {
        CFDictionarySetValue(v6, @"CurrentExpandedLanguageCode", a3);
      }
    }
  }

  return v6;
}

uint64_t MSUApplyUpdate(uint64_t a1, const __CFDictionary *a2, const __CFString **a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    v11 = @"SPECIFIED";
    *buf = 138413314;
    v33 = @"MSUApplyUpdate";
    v34 = 2048;
    if (a4)
    {
      v12 = @"SPECIFIED";
    }

    else
    {
      v12 = @"NONE";
    }

    v35 = a1;
    v36 = 2114;
    if (!a5)
    {
      v11 = @"NONE";
    }

    v37 = v10;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | session:%ld, options:%{public}@, fncallback:%@, context:%@", buf, 0x34u);
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = [objc_msgSend(MEMORY[0x277CBEAF8] "preferredLanguages")];
  v17 = [objc_msgSend(MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v16), "languageCode"}];
  v18 = [objc_msgSend(MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v16), "languageIdentifier"}];
  if (v17)
  {
    v19 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = @"MSUApplyUpdate";
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      _os_log_impl(&dword_259B51000, v19, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | Current LanguageCode: %{public}@ ExpandedLanguageCode: %{public}@", buf, 0x20u);
    }
  }

  CFDictionarySetValue(Mutable, @"SessionHandle", v14);
  if (a2)
  {
    v20 = copyDictionaryAddingLocale(a2, v17, v18);
    CFDictionarySetValue(Mutable, @"ClientOptions", v20);
    CFRelease(v20);
    Value = CFDictionaryGetValue(a2, @"__msu-update-attributes-dictionary-key");
  }

  else if (v17 | v18)
  {
    v22 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Value = v22;
    if (v22)
    {
      if (v17)
      {
        CFDictionaryAddValue(v22, @"CurrentLanguageCode", v17);
      }

      if (v18)
      {
        CFDictionaryAddValue(Value, @"CurrentExpandedLanguageCode", v18);
      }

      CFDictionarySetValue(Mutable, @"ClientOptions", Value);
      CFRelease(Value);
      Value = 0;
    }
  }

  else
  {
    Value = 0;
  }

  CFDictionarySetValue(Mutable, @"ClientRepliesToProgress", *MEMORY[0x277CBED28]);
  v23 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = @"MSUApplyUpdate";
    _os_log_impl(&dword_259B51000, v23, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | PERFORM_WITH_PROGRESS | ApplyUpdate...", buf, 0xCu);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __MSUApplyUpdate_block_invoke;
  v30[3] = &unk_2798EE010;
  v30[5] = a4;
  v30[6] = a5;
  v30[4] = @"MSUApplyUpdate";
  v24 = perform_command_with_progress("ApplyUpdate", Mutable, Value, 0, a3, v30);
  CFRelease(v14);
  CFRelease(Mutable);
  v25 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v26 = v25;
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = @"MSUApplyUpdate";
      _os_log_impl(&dword_259B51000, v26, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    MSUApplyUpdate_cold_1(a3);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __MSUApplyUpdate_block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (v4)
  {
    v5 = v4(a2, a1[6]);
    v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      if (v5 == -1)
      {
        v8 = @"ClientSendError";
      }

      else if (v5 == 2)
      {
        v8 = @"Cancel";
      }

      else if (v5)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MSUOperation(%d)", v5];
      }

      else
      {
        v8 = @"Continue";
      }

      *buf = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2114;
      v18 = a2;
      _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | ApplyUpdate | PROGRESS (%@) | state:%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v5 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = @"Continue";
      v17 = 2114;
      v18 = a2;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | ApplyUpdate | PROGRESS (no progress handler - %@) | state:%{public}@", buf, 0x20u);
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t MSUSuspendUpdate(uint64_t a1, CFTypeRef *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = @"MSUSuspendUpdate";
    v18 = 2048;
    v19 = a1;
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | session:%ld", buf, 0x16u);
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberLongType, &valuePtr);
  values = v6;
  keys = @"SessionHandle";
  v7 = CFDictionaryCreate(v5, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = perform_command("SuspendUpdate", v7, 0, 0, a2);
  CFRelease(v6);
  CFRelease(v7);
  v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = @"MSUSuspendUpdate";
      _os_log_impl(&dword_259B51000, v10, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    MSUSuspendUpdate_cold_1(a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t MSUResumeUpdateWithOptions(const __CFDictionary *a1, void *a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  number = 0;
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = @"MSUResumeUpdateWithOptions";
    v16 = 2114;
    v17 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | options:%{public}@", buf, 0x16u);
  }

  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"__msu-update-attributes-dictionary-key");
  }

  else
  {
    Value = 0;
  }

  v8 = perform_command("ResumeUpdate", a1, Value, &number, a3);
  if (v8)
  {
    CFNumberGetValue(number, kCFNumberLongType, a2);
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v10 = *a2;
      }

      else
      {
        v10 = -1;
      }

      *buf = 138412546;
      v15 = @"MSUResumeUpdateWithOptions";
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | session:%ld", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUResumeUpdateWithOptions_cold_1(a3);
  }

  if (number)
  {
    CFRelease(number);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL MSUBrainIsLoadable(void *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = @"MSUBrainIsLoadable";
    v16 = 2114;
    v17 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetAttributes:%{public}@", &v14, 0x16u);
  }

  if (!a1)
  {
    result = os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }

    MSUBrainIsLoadable_cold_2();
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  if (!perform_command("BrainIsLoadable", 0, a1, 0, a2))
  {
    if (a2)
    {
      v7 = *a2;
      v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      v9 = v8;
      if (v7)
      {
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_20;
        }

        MSUBrainIsLoadable_cold_1(a2);
        goto LABEL_19;
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        goto LABEL_20;
      }

      v14 = 138412290;
      v15 = @"MSUBrainIsLoadable";
      v11 = "[SPI] %@ | SUCCESS | Brain not loadable";
      v12 = v9;
    }

    else
    {
      v10 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        goto LABEL_20;
      }

      v14 = 138412290;
      v15 = @"MSUBrainIsLoadable";
      v11 = "[SPI] %@ | DONE | Brain not loadable";
      v12 = v10;
    }

    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
    goto LABEL_19;
  }

  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"MSUBrainIsLoadable";
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | Brain loadable", &v14, 0xCu);
  }

  result = 1;
LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSUPurgeSuspendedUpdate(CFTypeRef *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"MSUPurgeSuspendedUpdate";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v8, 0xCu);
  }

  v3 = perform_command("PurgeSuspendedUpdate", 0, 0, 0, a1);
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"MSUPurgeSuspendedUpdate";
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    MSUPurgeSuspendedUpdate_cold_1(a1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void MSUCloseUpdateHandle()
{
  if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUCloseUpdateHandle_cold_1();
  }
}

BOOL MSUAssetCalculateInstallationSize(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = @"MSUAssetCalculateInstallationSize";
    v16 = 2114;
    v17 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetprops:%{public}@", buf, 0x16u);
  }

  if (a1)
  {
    if (MSUAssetCalculatePrepareSizes(a1, &v13, 0, a3) && MSUAssetCalculateApplySizes(a1, &v12, 0, a3))
    {
      v7 = v12 + v13;
      if (a2)
      {
        *a2 = v7;
        v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = @"MSUAssetCalculateInstallationSize";
          v16 = 2048;
          v17 = v7;
          v9 = "[SPI] %@ | SUCCESS | installation size:%llu bytes";
LABEL_16:
          _os_log_impl(&dword_259B51000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
        }
      }

      else
      {
        v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = @"MSUAssetCalculateInstallationSize";
          v16 = 2048;
          v17 = v7;
          v9 = "[SPI] %@ | SUCCESS | installation size:%llu bytes (not returned - no output location)";
          goto LABEL_16;
        }
      }

      result = 1;
      goto LABEL_18;
    }

    result = os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (result)
    {
      MSUAssetCalculateInstallationSize_cold_1(a3);
LABEL_13:
      result = 0;
    }
  }

  else
  {
    result = os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR);
    if (result)
    {
      MSUAssetCalculateInstallationSize_cold_2();
      goto LABEL_13;
    }
  }

LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSUAssetCalculatePrepareSizes(void *a1, uint64_t *a2, uint64_t *a3, CFTypeRef *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  valuePtr = 0;
  cf = 0;
  v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = @"MSUAssetCalculatePrepareSize";
    v40 = 2114;
    v41 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v8, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetprops:%{public}@", buf, 0x16u);
  }

  if (!a1)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset properties provided", v9, v10, v11, v32);
    if (a4)
    {
      v12 = 0;
LABEL_20:
      v21 = 0;
      *a4 = error_internal_cf;
      goto LABEL_23;
    }

    CFRelease(error_internal_cf);
    v12 = 0;
LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  values = a1;
  keys = @"AssetProperties";
  v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!perform_command("CalculatePrepareSize", v12, 0, &cf, a4))
  {
    goto LABEL_22;
  }

  if (!cf || (v16 = CFGetTypeID(cf), v16 != CFDictionaryGetTypeID()))
  {
    v23 = @"No prepare sizes dictionary in response";
LABEL_19:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v23, v13, v14, v15, v32);
    if (a4)
    {
      goto LABEL_20;
    }

    CFRelease(error_internal_cf);
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(cf, @"Size");
  CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  if (a2)
  {
    *a2 = valuePtr;
  }

  v18 = CFDictionaryGetValue(cf, @"SnapshotSize");
  if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFNumberGetTypeID()))
  {
    v23 = @"No snapshot prepare size in response";
    goto LABEL_19;
  }

  CFNumberGetValue(v19, kCFNumberSInt64Type, &v34);
  if (a3)
  {
    *a3 = v34;
  }

  v21 = 1;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (!v21)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUAssetCalculatePrepareSizes_cold_1(a4);
    }

    goto LABEL_42;
  }

  v24 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    *buf = 138412546;
    v39 = @"MSUAssetCalculatePrepareSize";
    v40 = 2048;
    v41 = valuePtr;
    v26 = "[SPI] %@ | SUCCESS | prepare size:%llu bytes";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    *buf = 138412546;
    v39 = @"MSUAssetCalculatePrepareSize";
    v40 = 2048;
    v41 = valuePtr;
    v26 = "[SPI] %@ | SUCCESS | prepare size:%llu bytes (not returned - no output location)";
  }

  _os_log_impl(&dword_259B51000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
LABEL_36:
  v27 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v28)
    {
      *buf = 138412546;
      v39 = @"MSUAssetCalculatePrepareSize";
      v40 = 2048;
      v41 = v34;
      v29 = "[SPI] %@ | SUCCESS | snapshot prepare size:%llu bytes";
LABEL_41:
      _os_log_impl(&dword_259B51000, v27, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }
  }

  else if (v28)
  {
    *buf = 138412546;
    v39 = @"MSUAssetCalculatePrepareSize";
    v40 = 2048;
    v41 = v34;
    v29 = "[SPI] %@ | SUCCESS | snapshot prepare size:%llu bytes (not returned - no output location)";
    goto LABEL_41;
  }

LABEL_42:
  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t MSUAssetCalculateApplySizes(void *a1, uint64_t *a2, void *a3, CFTypeRef *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v31 = 0;
  valuePtr = 0;
  cf = 0;
  v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = @"MSUAssetCalculateApplySize";
    v37 = 2114;
    v38 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v8, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetprops:%{public}@", buf, 0x16u);
  }

  if (!a1)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset properties provided", v9, v10, v11, v29);
    if (a4)
    {
      v12 = 0;
LABEL_20:
      v21 = 0;
      *a4 = error_internal_cf;
      goto LABEL_23;
    }

    CFRelease(error_internal_cf);
    v12 = 0;
LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  values = a1;
  keys = @"AssetProperties";
  v12 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!perform_command("CalculateApplySize", v12, 0, &cf, a4))
  {
    goto LABEL_22;
  }

  if (!cf || (v16 = CFGetTypeID(cf), v16 != CFDictionaryGetTypeID()))
  {
    v23 = @"No apply sizes dictionary in response";
LABEL_19:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v23, v13, v14, v15, v29);
    if (a4)
    {
      goto LABEL_20;
    }

    CFRelease(error_internal_cf);
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(cf, @"Size");
  CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  if (a2)
  {
    *a2 = valuePtr;
  }

  v18 = CFDictionaryGetValue(cf, @"SnapshotSize");
  if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFNumberGetTypeID()))
  {
    v23 = @"No snapshot apply size in response";
    goto LABEL_19;
  }

  CFNumberGetValue(v19, kCFNumberSInt64Type, &v31);
  if (a3)
  {
    *a3 = v31;
  }

  v21 = 1;
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v21)
  {
    v24 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v25)
      {
        *buf = 138412546;
        v36 = @"MSUAssetCalculateApplySize";
        v37 = 2048;
        v38 = valuePtr;
        v26 = "[SPI] %@ | SUCCESS | apply size:%llu bytes";
LABEL_35:
        _os_log_impl(&dword_259B51000, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
      }
    }

    else if (v25)
    {
      *buf = 138412546;
      v36 = @"MSUAssetCalculateApplySize";
      v37 = 2048;
      v38 = valuePtr;
      v26 = "[SPI] %@ | SUCCESS | apply size:%llu bytes (not returned - no output location)";
      goto LABEL_35;
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUAssetCalculateApplySizes_cold_1(a4);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t MSUCheckPreparationSize(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  cf = 0;
  valuePtr = 0;
  v34 = 0;
  v35 = 0;
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = @"MSUAssetCalculateApplySize";
    v40 = 2114;
    v41 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetprops:%{public}@", buf, 0x16u);
  }

  if (!a1)
  {
    v25 = @"No asset properties provided";
    v26 = 9;
LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  if ((MSUAssetCalculatePrepareSizes(a1, &valuePtr, 0, &v34) & 1) == 0)
  {
    v27 = v34;
    v25 = @"MSUAssetCalculatePrepareSize failed";
    v26 = 7;
LABEL_20:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", v26, v27, 0, v25, v7, v8, v9, v34);
    if (a3)
    {
      v16 = 0;
      v11 = 0;
      goto LABEL_22;
    }

    CFRelease(error_internal_cf);
    v16 = 0;
    v11 = 0;
    goto LABEL_24;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v25 = @"Failed to allocate command_options";
    v26 = 14;
    goto LABEL_19;
  }

  v11 = Mutable;
  v12 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (!v12)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 14, 0, 0, @"Failed to allocate requiredPrepSize_cf", v13, v14, v15, v34);
    if (a3)
    {
      v16 = 0;
      goto LABEL_22;
    }

    CFRelease(error_internal_cf);
    v16 = 0;
    goto LABEL_24;
  }

  v16 = v12;
  CFDictionarySetValue(v11, @"ClientOptions", v12);
  if (!perform_command("CheckPreparationSize", v11, 0, &cf, a3))
  {
LABEL_24:
    v23 = 0;
    goto LABEL_25;
  }

  if (!cf || (v20 = CFGetTypeID(cf), v20 != CFDictionaryGetTypeID()))
  {
    v33 = @"No results dict in response";
LABEL_46:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v33, v17, v18, v19, v34);
    if (a3)
    {
      goto LABEL_22;
    }

    CFRelease(error_internal_cf);
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(cf, @"RequiredSize");
  if (!Value)
  {
    v33 = @"No prep size in response";
    goto LABEL_46;
  }

  CFNumberGetValue(Value, kCFNumberSInt64Type, &v35);
  if (a2)
  {
    *a2 = v35;
  }

  v22 = CFDictionaryGetValue(cf, @"ErrorInfo");
  v23 = 1;
  if (a3 && v22)
  {
    error_internal_cf = copy_dictionary_to_cferror(v22);
LABEL_22:
    v23 = 0;
    *a3 = error_internal_cf;
  }

LABEL_25:
  if (v34)
  {
    CFRelease(v34);
    v34 = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v23)
  {
    v28 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v29)
      {
        *buf = 138412546;
        v39 = @"MSUAssetCalculateApplySize";
        v40 = 2048;
        v41 = v35;
        v30 = "[SPI] %@ | SUCCESS | required size:%llu bytes";
LABEL_41:
        _os_log_impl(&dword_259B51000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);
      }
    }

    else if (v29)
    {
      *buf = 138412546;
      v39 = @"MSUAssetCalculateApplySize";
      v40 = 2048;
      v41 = v35;
      v30 = "[SPI] %@ | SUCCESS | required size:%llu bytes (not returned - no output location)";
      goto LABEL_41;
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUAssetCalculateApplySizes_cold_1(a3);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t MSUCheckInstallationSize(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = 0;
  cf = 0;
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = @"MSUCheckInstallationSize";
    v32 = 2114;
    v33 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a1];
    _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | assetprops:%{public}@", buf, 0x16u);
  }

  if (a1)
  {
    values = a1;
    keys = @"AssetProperties";
    v10 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (perform_command("CheckInstallationSize", v10, 0, &cf, a3))
    {
      if (cf && (v14 = CFGetTypeID(cf), v14 == CFDictionaryGetTypeID()))
      {
        Value = CFDictionaryGetValue(cf, @"RequiredSize");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt64Type, &v26);
          if (a2)
          {
            *a2 = v26;
          }

          v16 = CFDictionaryGetValue(cf, @"ErrorInfo");
          v17 = 1;
          if (!a3 || !v16)
          {
LABEL_18:
            if (!v10)
            {
              goto LABEL_24;
            }

LABEL_23:
            CFRelease(v10);
            goto LABEL_24;
          }

          error_internal_cf = copy_dictionary_to_cferror(v16);
LABEL_17:
          v17 = 0;
          *a3 = error_internal_cf;
          goto LABEL_18;
        }

        v20 = @"No apply size in response";
      }

      else
      {
        v20 = @"No results dict in response";
      }

      error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v20, v11, v12, v13, v26);
      if (a3)
      {
        goto LABEL_17;
      }

      CFRelease(error_internal_cf);
    }

    v17 = 0;
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 9, 0, 0, @"No asset properties provided", v7, v8, v9, v26);
  if (a3)
  {
    v17 = 0;
    *a3 = v19;
  }

  else
  {
    CFRelease(v19);
    v17 = 0;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v17)
  {
    v21 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v22)
      {
        *buf = 138412546;
        v31 = @"MSUCheckInstallationSize";
        v32 = 2048;
        v33 = v26;
        v23 = "[SPI] %@ | SUCCESS | required size:%llu bytes";
LABEL_34:
        _os_log_impl(&dword_259B51000, v21, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
      }
    }

    else if (v22)
    {
      *buf = 138412546;
      v31 = @"MSUCheckInstallationSize";
      v32 = 2048;
      v33 = v26;
      v23 = "[SPI] %@ | SUCCESS | required size:%llu bytes (not returned - no output location)";
      goto LABEL_34;
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUCheckInstallationSize_cold_1(a3);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t MSURetrievePreviousUpdateResults(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  cf = 0;
  v12 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = @"MSURetrievePreviousUpdateResults";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = perform_command("RetrieveLastUpdateResult", Mutable, 0, &cf, &v12);
  if (v4 && cf)
  {
    v5 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    if (a1 && v5 == TypeID)
    {
      *a1 = copy_dictionary_to_cferror(cf);
    }

    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = @"MSURetrievePreviousUpdateResults";
      _os_log_impl(&dword_259B51000, v8, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    MSURetrievePreviousUpdateResults_cold_1(a1);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSURetrievePreviousUpdateState(_DWORD *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  cf = 0;
  v14 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = @"MSURetrievePreviousUpdateState";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = perform_command("RetrievePreviousUpdateState", Mutable, 0, &cf, &v14);
  if (!v4 || !cf)
  {
    v7 = 0;
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID())
  {
    v6 = [cf intValue];
    v7 = v6;
    if (a1)
    {
      *a1 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(cf);
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v9 = v8;
  if (v4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 >= 4)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"MSUPreviousUpdateState(%d)", v7];
      }

      else
      {
        v10 = off_2798EE0B0[v7];
      }

      *buf = 138412546;
      v16 = @"MSURetrievePreviousUpdateState";
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | previous update state:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    MSURetrievePreviousUpdateState_cold_1(&v14);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

id MSUCopyPreviousUpdateAllToleratedFailures()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"MSUCopyPreviousUpdateAllToleratedFailures";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v6, 0xCu);
  }

  v1 = copyPreviousToleratedFailures(1);
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v1];
    v6 = 138412546;
    v7 = @"MSUCopyPreviousUpdateAllToleratedFailures";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | DONE | toleratedFailures:%{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id copyPreviousToleratedFailures(int a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/lastOTA/ota_tolerated_failures.plist"];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3052000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __retrieve_previous_update_first_tolerated_failure_block_invoke;
    v16[3] = &unk_2798EE038;
    v16[4] = &v17;
    v16[5] = &v23;
    [v6 enumerateKeysAndObjectsUsingBlock:v16];
    v7 = *(v18 + 40);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __retrieve_previous_update_first_tolerated_failure_block_invoke_2;
      v15[3] = &unk_2798EE038;
      v15[4] = &v17;
      v15[5] = &v23;
      [v6 enumerateKeysAndObjectsUsingBlock:v15];
      v7 = *(v18 + 40);
      v8 = v7 != 0;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{@"StepName", "compare:", @"update_baseband"}];
    v10 = kMSUUpdateToleratedStepValueUpdateBaseband;
    if (v9)
    {
      v10 = kMSUUpdateToleratedStepValueUnrecognizedStep;
    }

    v11 = *v10;
    if (*v10)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v3 setObject:v11 forKeyedSubscript:@"StepIdentifier"];
      [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"StepName"}];
      [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", v24[5]), @"EventUnique"}];
      if (v8)
      {
        [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RebootRetry"];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryFailureNumber", @"FailureNumber"}];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryResult", @"Result"}];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryError", @"Error"}];
        v12 = @"RetrySkipped";
      }

      else
      {
        [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"RebootRetry"];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialFailureNumber", @"FailureNumber"}];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialResult", @"Result"}];
        [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialError", @"Error"}];
        v12 = @"InitialSkipped";
      }

      [v3 setObject:objc_msgSend(*(v18 + 40) forKeyedSubscript:{"objectForKeyedSubscript:", v12), @"Skipped"}];
      goto LABEL_16;
    }

LABEL_13:
    v3 = 0;
LABEL_16:
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v17, 8);
    goto LABEL_17;
  }

  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/private/var/MobileSoftwareUpdate/lastOTA/ota_tolerated_failures.plist"];
  if (v1)
  {
    v2 = v1;
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __retrieve_previous_update_all_tolerated_failures_block_invoke;
    v20 = &unk_2798EE060;
    v21 = @"retrieve_previous_update_all_tolerated_failures";
    v22 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:&v17];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"Index" ascending:1];
    v23 = v5;
    [v3 setObject:objc_msgSend(v4 forKeyedSubscript:{"sortedArrayUsingDescriptors:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v23, 1)), @"toleratedStepsArray"}];
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_259B57A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 104), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MSURetrievePreviousUpdateFirstToleratedFailure()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"MSURetrievePreviousUpdateFirstToleratedFailure";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v6, 0xCu);
  }

  v1 = copyPreviousToleratedFailures(0);
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v1];
    v6 = 138412546;
    v7 = @"MSURetrievePreviousUpdateFirstToleratedFailure";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | DONE | toleratedFailures:%{public}@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id MSUCopyToleratedStatusForStep(__CFString *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NONE";
    if (a1)
    {
      v3 = a1;
    }

    *buf = 138412546;
    v28 = @"MSUCopyToleratedStatusForStep";
    v29 = 2114;
    v30 = v3;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | step:%{public}@", buf, 0x16u);
  }

  if (a1)
  {
    updated = MSUCopyPreviousUpdateAllToleratedFailures();
    if (updated)
    {
      v5 = updated;
      v6 = [objc_msgSend(updated objectForKey:{@"toleratedStepsArray", "mutableCopy"}];
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x277CCAB58] indexSet];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v23;
          do
          {
            v13 = 0;
            do
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v7);
              }

              if (([objc_msgSend(*(*(&v22 + 1) + 8 * v13) objectForKeyedSubscript:{@"CheckPoint", "isEqualToString:", a1}] & 1) == 0)
              {
                [v8 addIndex:v11];
              }

              ++v11;
              ++v13;
            }

            while (v10 != v13);
            v10 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v10);
        }

        [v7 removeObjectsAtIndexes:v8];
        if ([v7 count])
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
          if (v14)
          {
            v15 = v14;
            [v14 setObject:v7 forKeyedSubscript:@"toleratedStepsArray"];
            v16 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = @"MSUCopyToleratedStatusForStep";
              _os_log_impl(&dword_259B51000, v16, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | providing tolerated failure array", buf, 0xCu);
            }

            goto LABEL_34;
          }

          if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
          {
            MSUCopyToleratedStatusForStep_cold_1();
          }
        }

        else
        {
          v19 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v28 = @"MSUCopyToleratedStatusForStep";
            _os_log_impl(&dword_259B51000, v19, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | empty failure array", buf, 0xCu);
          }
        }

        v15 = 0;
LABEL_34:
        CFRelease(v5);
        CFRelease(v7);
        goto LABEL_35;
      }

      v18 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = @"MSUCopyToleratedStatusForStep";
        _os_log_impl(&dword_259B51000, v18, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | No tolerated failure array", buf, 0xCu);
      }

      CFRelease(v5);
    }

    else
    {
      v17 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = @"MSUCopyToleratedStatusForStep";
        _os_log_impl(&dword_259B51000, v17, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | No tolerated failures found", buf, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    MSUCopyToleratedStatusForStep_cold_2();
  }

  v15 = 0;
LABEL_35:
  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t MSUParsedToleratedFailureForStep(__CFString *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NONE";
    if (a1)
    {
      v3 = a1;
    }

    *buf = 138412546;
    v25 = @"MSUParsedToleratedFailureForStep";
    v26 = 2114;
    v27 = v3;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | step:%{public}@", buf, 0x16u);
  }

  if (a1)
  {
    v4 = MSUCopyToleratedStatusForStep(a1);
    if (v4)
    {
      cf = v4;
      v5 = [v4 objectForKey:@"toleratedStepsArray"];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v20;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v20 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v19 + 1) + 8 * i);
            v11 = [v10 objectForKeyedSubscript:@"Attempt"];
            v12 = [objc_msgSend(v10 objectForKeyedSubscript:{@"rcode", "intValue"}];
            if ([v11 isEqualToString:@"initial"])
            {
              v13 = v12 != 0;
            }

            else
            {
              if (![v11 isEqualToString:@"reboot-retry"])
              {
                if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
                {
                  MSUParsedToleratedFailureForStep_cold_1();
                }

                CFRelease(cf);
                goto LABEL_23;
              }

              v13 = 2 * (v12 != 0);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(cf);
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = off_2798EE0D0[v13];
      *buf = 138412546;
      v25 = @"MSUParsedToleratedFailureForStep";
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_259B51000, v14, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | Tolerated failure status:%{public}@", buf, 0x16u);
    }
  }

  else
  {
LABEL_23:
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUParsedToleratedFailureForStep_cold_2();
    }

    v13 = 3;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t MSUIsFirstBootAfterUpdate(_BYTE *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  cf = 0;
  v15 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = @"MSUIsFirstBootAfterUpdate";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = perform_command("IsFirstBootAfterUpdate", Mutable, 0, &cf, &v15);
  if (!v4 || !cf)
  {
    goto LABEL_13;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    v6 = CFGetTypeID(cf);
    if (v6 != CFBooleanGetTypeID())
    {
      CFRelease(cf);
      goto LABEL_13;
    }
  }

  v7 = [cf BOOLValue];
  v8 = v7;
  if (a1)
  {
    *a1 = v7 & 1;
  }

  CFRelease(cf);
  if ((v8 & 1) == 0)
  {
LABEL_13:
    v9 = @"NO";
    if (!Mutable)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = @"YES";
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

LABEL_15:
  v10 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v11 = v10;
  if (v4)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = @"MSUIsFirstBootAfterUpdate";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_259B51000, v11, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | first boot after update:%@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    MSUIsFirstBootAfterUpdate_cold_1(&v15);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSURetrievePreviousUpdateDate(CFTypeRef *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  cf = 0;
  v11 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = @"MSURetrievePreviousUpdateDate";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = perform_command("RetrievePreviousUpdateDate", Mutable, 0, &cf, &v11);
  if (!v4 || !cf || (v5 = CFGetTypeID(cf), v5 != CFDateGetTypeID()))
  {
LABEL_8:
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a1)
  {
    *a1 = cf;
    goto LABEL_8;
  }

  CFRelease(cf);
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = @"MSURetrievePreviousUpdateDate";
      v14 = 2114;
      v15 = cf;
      _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | previous update date:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    MSURetrievePreviousUpdateDate_cold_1(&v11);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSURetrievePreviousRestoreDate(CFTypeRef *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  cf = 0;
  v11 = 0;
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = @"MSURetrievePreviousRestoreDate";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = perform_command("RetrievePreviousRestoreDate", Mutable, 0, &cf, &v11);
  if (!v4 || !cf || (v5 = CFGetTypeID(cf), v5 != CFDateGetTypeID()))
  {
LABEL_8:
    if (!Mutable)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a1)
  {
    *a1 = cf;
    goto LABEL_8;
  }

  CFRelease(cf);
  if (Mutable)
  {
LABEL_9:
    CFRelease(Mutable);
  }

LABEL_10:
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = @"MSURetrievePreviousRestoreDate";
      v14 = 2114;
      v15 = cf;
      _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | previous restore date:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    MSURetrievePreviousRestoreDate_cold_1(&v11);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSUCopyEnvInfoForNeRD()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"MSUCopyEnvInfoForNeRD";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", "BootedOSState.plist"];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = @"MSUCopyEnvInfoForNeRD";
    v11 = 2112;
    v12 = v1;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | Attempting to load bootedOS state from %@", buf, 0x16u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v1];

  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v3];
      *buf = 138412546;
      v10 = @"MSUCopyEnvInfoForNeRD";
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | envDict:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    MSUCopyEnvInfoForNeRD_cold_1();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MSUCopyStashedAccessibilityPrefs()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"MSUCopyStashedAccessibilityPrefs";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/%s/%s", "/private/var/MobileSoftwareUpdate/", "Controller/NeRD", "AccessibilityDomains.plist"];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = @"MSUCopyStashedAccessibilityPrefs";
    v11 = 2112;
    v12 = v1;
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | Attempting to load accessibility domains from %@", buf, 0x16u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v1];

  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v3];
      *buf = 138412546;
      v10 = @"MSUCopyStashedAccessibilityPrefs";
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | accessibilityDict:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    MSUCopyStashedAccessibilityPrefs_cold_1();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

CFTypeRef MSUCopyConnectivityData()
{
  v13 = *MEMORY[0x277D85DE8];
  cf = 0;
  v8 = 0;
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = @"MSUCopyConnectivityData";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  if ((perform_command("GetStashedConnectivityData", 0, 0, &cf, &v8) & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUCopyConnectivityData_cold_1(&v8);
    }

    goto LABEL_14;
  }

  if (!cf)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUCopyConnectivityData_cold_3();
    }

    goto LABEL_14;
  }

  v1 = CFGetTypeID(cf);
  if (v1 != CFDictionaryGetTypeID())
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUCopyConnectivityData_cold_2();
    }

LABEL_14:
    v2 = 0;
    goto LABEL_15;
  }

  v2 = cf;
  v3 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v2];
    *buf = 138412546;
    v10 = @"MSUCopyConnectivityData";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_259B51000, v3, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | connectivityData:%@", buf, 0x16u);
  }

LABEL_15:
  if (v8)
  {
    CFRelease(v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL MSUReportAndCleanupPreviousUpdateState()
{
  v14 = *MEMORY[0x277D85DE8];
  cf = 0;
  v9 = 0;
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = @"MSUReportAndCleanupPreviousUpdateState";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  if ((perform_command("PerformReportAndCleanup", 0, 0, &cf, &v9) & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUReportAndCleanupPreviousUpdateState_cold_1();
    }

    goto LABEL_16;
  }

  if (!cf)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUReportAndCleanupPreviousUpdateState_cold_3();
    }

    goto LABEL_16;
  }

  v1 = CFGetTypeID(cf);
  if (v1 != CFBooleanGetTypeID())
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUReportAndCleanupPreviousUpdateState_cold_2();
    }

LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  Value = CFBooleanGetValue(cf);
  v3 = Value != 0;
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (Value)
    {
      v5 = @"YES";
    }

    *buf = 138412546;
    v11 = @"MSUReportAndCleanupPreviousUpdateState";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | perform cleanup command response value:%@", buf, 0x16u);
  }

LABEL_17:
  if (v9)
  {
    CFRelease(v9);
    v9 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MSUCopyInstalledRecoveryOSVersion()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = @"MSUCopyInstalledRecoveryOSVersion";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/MobileSoftwareUpdate/%s", "recoveryOSVersion.plist"];
  if (!v1)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUCopyInstalledRecoveryOSVersion_cold_2();
    }

    goto LABEL_12;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v1];
  if (!v2)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUCopyInstalledRecoveryOSVersion_cold_1();
    }

LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:{objc_msgSend(v2, "objectForKeyedSubscript:", @"BuildNumber"}];
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = @"MSUCopyInstalledRecoveryOSVersion";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | Installed recovery OS version:%{public}@", buf, 0x16u);
  }

  CFRelease(v3);
LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t RVGetNeRDInfo()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = @"RVGetNeRDInfo";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/MobileSoftwareUpdate/%s", "recoveryOSVersion.plist"];
  v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v1];
  v3 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = @"RVGetNeRDInfo";
      _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    RVGetNeRDInfo_cold_1();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RVTriggerNeRDUpdate(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"RVTriggerNeRDUpdate";
    _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v9, 0xCu);
  }

  v3 = perform_command("RVTriggerNeRDUpdate", a1, 0, 0, 0);
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v9 = 138412290;
      v10 = @"RVTriggerNeRDUpdate";
      v6 = "[SPI] %@ | SUCCESS";
LABEL_8:
      _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v5)
  {
    v9 = 138412290;
    v10 = @"RVTriggerNeRDUpdate";
    v6 = "[SPI] %@ | FAILURE";
    goto LABEL_8;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

CFTypeRef MSUGetUpdateInfo(__CFString *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  cf = 0;
  v18 = 0;
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = @"NONE";
    }

    *buf = 138412802;
    v20 = @"MSUGetUpdateInfo";
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:a2];
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN | targetUUID:%{public}@, options:%{public}@", buf, 0x20u);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"TargetUUID", a1);
  }

  if (!a2)
  {
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v20 = @"MSUGetUpdateInfo";
    v10 = "[SPI] %@ | No options in the updateInfo request";
    goto LABEL_15;
  }

  v8 = [a2 objectForKeyedSubscript:@"AssetProperties"];
  if (v8)
  {
    CFDictionarySetValue(v7, @"AssetProperties", v8);
    goto LABEL_16;
  }

  v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = @"MSUGetUpdateInfo";
    v10 = "[SPI] %@ | No kAssetProperties in the updateInfo request";
LABEL_15:
    _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
  }

LABEL_16:
  if ((perform_command("GetUpdateInformation", v7, 0, &cf, &v18) & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUGetUpdateInfo_cold_1(&v18);
    }

    goto LABEL_27;
  }

  if (!cf)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUGetUpdateInfo_cold_3();
    }

    goto LABEL_27;
  }

  v11 = CFGetTypeID(cf);
  if (v11 != CFDictionaryGetTypeID())
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUGetUpdateInfo_cold_2();
    }

LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  v12 = cf;
  v13 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277CBEAC0] safeSummaryForDictionary:v12];
    *buf = 138412546;
    v20 = @"MSUGetUpdateInfo";
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_259B51000, v13, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | update info:%{public}@", buf, 0x16u);
  }

LABEL_28:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t MSUCommitStash(void *Value, const void **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  cf = 0;
  v20 = 0;
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = @"MSUCommitStash";
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  if (Value)
  {
    CFDictionarySetValue(Mutable, @"ClientOptions", Value);
    Value = CFDictionaryGetValue(Value, @"__msu-update-attributes-dictionary-key");
    if (Value)
    {
      CFDictionarySetValue(v6, @"AssetProperties", Value);
    }
  }

  if ((perform_command("CommitStash", v6, Value, &cf, &v20) & 1) == 0)
  {
    v10 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138412546;
    v22 = @"MSUCommitStash";
    v23 = 2112;
    v24 = v20;
    v11 = "[SPI] %@ | FAILURE | Failed to perform kCommandCommitStash command with error: %@";
    v12 = v10;
    v13 = 22;
    goto LABEL_21;
  }

  if (!cf)
  {
    v14 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138412290;
    v22 = @"MSUCommitStash";
    v11 = "[SPI] %@ | FAILURE | NULL response from kCommandCommitStash command";
    goto LABEL_20;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFDictionaryGetTypeID())
  {
    if (a2)
    {
      *a2 = copy_dictionary_to_cferror(cf);
    }

    v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = @"MSUCommitStash";
      _os_log_impl(&dword_259B51000, v8, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS", buf, 0xCu);
    }

    v9 = 1;
    goto LABEL_31;
  }

  v14 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = @"MSUCommitStash";
    v11 = "[SPI] %@ | FAILURE | Unexpected response type to kCommandCommitStash command";
LABEL_20:
    v12 = v14;
    v13 = 12;
LABEL_21:
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
  }

LABEL_22:
  if (a2 && !*a2 && v20)
  {
    *a2 = CFRetain(v20);
  }

  v15 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v9 = 0;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v16 = *a2;
    }

    else
    {
      v16 = 0;
    }

    *buf = 138412546;
    v22 = @"MSUCommitStash";
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_259B51000, v15, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | FAILURE | Failed with error: %@", buf, 0x16u);
    v9 = 0;
  }

LABEL_31:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL MSUPerformSemiSplat(const void *a1, CFTypeRef *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  cf = 0;
  v16 = 0;
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = @"MSUPerformSemiSplat";
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"TargetVolume", a1);
  }

  if ((perform_command("PerformCryptegraftSemiSplat", v6, 0, &cf, &v16) & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformSemiSplat_cold_1();
    }

    goto LABEL_18;
  }

  if (!cf)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformSemiSplat_cold_3();
    }

    goto LABEL_18;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformSemiSplat_cold_2();
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  Value = CFBooleanGetValue(cf);
  v9 = Value != 0;
  v10 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (Value)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v18 = @"MSUPerformSemiSplat";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_259B51000, v10, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | cryptegraft SemiSplat command response value:%@", buf, 0x16u);
  }

LABEL_19:
  v12 = v16;
  if (a2 && v16)
  {
    *a2 = CFRetain(v16);
    v12 = v16;
  }

  if (v12)
  {
    CFRelease(v12);
    v16 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL MSUPerformDownlevel(const void *a1, const void *a2, CFTypeRef *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  cf = 0;
  v18 = 0;
  v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = @"MSUPerformDownlevel";
    _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", buf, 0xCu);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (a1)
  {
    CFDictionarySetValue(Mutable, @"TargetVolume", a1);
  }

  if (a2)
  {
    CFDictionarySetValue(v8, @"SourcePath", a2);
  }

  if ((perform_command("PerformCryptegraftDownlevel", v8, 0, &cf, &v18) & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformDownlevel_cold_1(&v18);
    }

    goto LABEL_20;
  }

  if (!cf)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformDownlevel_cold_3();
    }

    goto LABEL_20;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFBooleanGetTypeID())
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      MSUPerformDownlevel_cold_2();
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  Value = CFBooleanGetValue(cf);
  v11 = Value != 0;
  v12 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (Value)
    {
      v13 = @"YES";
    }

    *buf = 138412546;
    v20 = @"MSUPerformDownlevel";
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | SUCCESS | cryptegraft downlevel command response value:%@", buf, 0x16u);
  }

LABEL_21:
  v14 = v18;
  if (a3 && v18)
  {
    *a3 = CFRetain(v18);
    v14 = v18;
  }

  if (v14)
  {
    CFRelease(v14);
    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t MSURebootToNerd()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = @"MSURebootToNerd";
    _os_log_impl(&dword_259B51000, v0, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | BEGIN", &v7, 0xCu);
  }

  v1 = perform_command("RebootToNerd", 0, 0, 0, 0);
  v2 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      v7 = 138412290;
      v8 = @"MSURebootToNerd";
      v4 = "[SPI] %@ | SUCCESS";
LABEL_8:
      _os_log_impl(&dword_259B51000, v2, OS_LOG_TYPE_DEFAULT, v4, &v7, 0xCu);
    }
  }

  else if (v3)
  {
    v7 = 138412290;
    v8 = @"MSURebootToNerd";
    v4 = "[SPI] %@ | FAILURE";
    goto LABEL_8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t __perform_prepare_command_block_invoke(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (v4)
  {
    v5 = v4(a2, a1[6]);
    v6 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      if (v5 == -1)
      {
        v8 = @"ClientSendError";
      }

      else if (v5 == 2)
      {
        v8 = @"Cancel";
      }

      else if (v5)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"MSUOperation(%d)", v5];
      }

      else
      {
        v8 = @"Continue";
      }

      *buf = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2114;
      v18 = a2;
      _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | PrepareUpdate | PROGRESS (%@) | state:%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v5 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138412802;
      v14 = v10;
      v15 = 2112;
      v16 = @"Continue";
      v17 = 2114;
      v18 = a2;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[SPI] %@ | PrepareUpdate | PROGRESS (no progress handler - %@) | state:%{public}@", buf, 0x20u);
      v5 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __retrieve_previous_update_first_tolerated_failure_block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isEqualToString:@"uuid"];
  if ((result & 1) == 0)
  {
    result = [objc_msgSend(a3 objectForKeyedSubscript:{@"InitialAttempted", "BOOLValue"}];
    if (result)
    {
      v7 = *(*(a1 + 32) + 8);
      v9 = *(v7 + 40);
      v8 = (v7 + 40);
      result = v9;
      if (v9)
      {
        v10 = [result objectForKeyedSubscript:@"InitialFailureNumber"];
        v11 = [a3 objectForKeyedSubscript:@"InitialFailureNumber"];
        LODWORD(v10) = [v10 intValue];
        result = [v11 intValue];
        if (result > v10)
        {
          return result;
        }

        v8 = (*(*(a1 + 32) + 8) + 40);
      }

      *v8 = a3;
      *(*(*(a1 + 40) + 8) + 40) = a2;
    }
  }

  return result;
}

void *__retrieve_previous_update_first_tolerated_failure_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 objectForKeyedSubscript:{@"RetryAttempted", "BOOLValue"}];
  if (result)
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    result = v9;
    if (v9)
    {
      v10 = [result objectForKeyedSubscript:@"RetryFailureNumber"];
      v11 = [a3 objectForKeyedSubscript:@"RetryFailureNumber"];
      LODWORD(v10) = [v10 intValue];
      result = [v11 intValue];
      if (result > v10)
      {
        return result;
      }

      v8 = (*(*(a1 + 32) + 8) + 40);
    }

    *v8 = a3;
    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  return result;
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (([a2 isEqualToString:@"uuid"] & 1) == 0)
  {
    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"InitialAttempted", "BOOLValue"}])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (v5)
      {
        v6 = v5;
        [v5 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"CheckPoint"}];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialFailureNumber", @"Index"}];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialError", @"Description"}];
        [v6 setObject:@"initial" forKeyedSubscript:@"Attempt"];
        [v6 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"InitialResult", @"rcode"}];
        [*(a1 + 40) addObject:v6];
      }

      else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_1(a1);
      }
    }

    if ([objc_msgSend(a3 objectForKeyedSubscript:{@"RetryAttempted", "BOOLValue"}])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (v7)
      {
        v8 = v7;
        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"StepName", @"CheckPoint"}];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryFailureNumber", @"Index"}];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryError", @"Description"}];
        [v8 setObject:@"reboot-retry" forKeyedSubscript:@"Attempt"];
        [v8 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"RetryResult", @"rcode"}];
        [*(a1 + 40) addObject:v8];
      }

      else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_2(a1);
      }
    }
  }
}

uint64_t *OUTLINED_FUNCTION_2_0(uint64_t *result)
{
  if (*result)
  {
    v1 = *result;
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_3_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void addSeObjectToMessage(uint64_t a1, void *a2, void *a3)
{
  if (a1 && a3)
  {
    v6 = [a3 stringByAppendingString:@"Length"];
    v7 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [v7 encodeObject:a1 forKey:*MEMORY[0x277CCA308]];
    v9 = [v7 encodedData];
    v8 = [v9 length];
    xpc_dictionary_set_data(a2, [a3 UTF8String], objc_msgSend(v9, "bytes"), v8);
    xpc_dictionary_set_double(a2, [v6 UTF8String], v8);
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    addSeObjectToMessage_cold_1();
  }
}

uint64_t perform_se_command(const char *a1, void *a2, void *a3, uint64_t a4, const __CFString **a5, CFTypeRef *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v40 = a1;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[CLIENT_IPC] Performing se command: %{public}s", buf, 0xCu);
  }

  cf = 0;
  v16 = copy_connection_for_command(a1, a2, a3, 1, &cf);
  if (v16)
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v17, "Command", a1);
    if (a2)
    {
      msu_serialize_cf_object_into_xpc_dict(v17, "CommandParameters", a2, v18, v19, v20, v21, v22);
    }

    if (a3)
    {
      msu_serialize_cf_object_into_xpc_dict(v17, "UpdateAttributes", a3, v18, v19, v20, v21, v22);
    }

    if (a4)
    {
      addSeObjectToMessage(a4, v17, @"SecureEncodedObjects");
    }

    context = xpc_connection_get_context(v16);
    v24 = context;
    if (context)
    {
      objc_sync_enter(context);
      [v24 addObject:v17];
      objc_sync_exit(v24);
    }

    v25 = xpc_connection_send_message_with_reply_sync(v16, v17);
    v26 = xpc_connection_get_context(v16);
    v31 = v26;
    if (v26)
    {
      objc_sync_enter(v26);
      [v31 removeObject:v17];
      objc_sync_exit(v31);
    }

    v32 = msu_demux_reply(v25, a5, 0, &cf, v27, v28, v29, v30);
    if (v17)
    {
      xpc_release(v17);
    }

    if (v25)
    {
      xpc_release(v25);
    }

    xpc_release(v16);
    if (v32)
    {
      v33 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v40 = a1;
        _os_log_impl(&dword_259B51000, v33, OS_LOG_TYPE_DEFAULT, "[CLIENT_IPC] Performed se command: %{public}s | SUCCESS", buf, 0xCu);
      }

      v34 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 27, 0, 0, @"Could not create connection to update brain service", v13, v14, v15, v37);
  }

  if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    perform_se_command_cold_1();
  }

  v34 = 0;
LABEL_26:
  if (a6)
  {
    *a6 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

xpc_connection_t copy_connection_for_command(const char *a1, void *a2, void *a3, int a4, const __CFString **a5)
{
  v10 = 0;
  while (1)
  {
    v11 = strlen((&copy_connection_for_command_CONNECTION_TABLE)[v10]);
    if (!strncmp(a1, (&copy_connection_for_command_CONNECTION_TABLE)[v10], v11))
    {
      break;
    }

    v10 += 3;
    if (v10 == 75)
    {
      if (a4)
      {
        if (get_shared_update_brain_connection_queue_update_brain_queue_once != -1)
        {
          copy_connection_for_command_cold_1();
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __copy_shared_update_brain_connection_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = a2;
        block[5] = a3;
        block[6] = a5;
        dispatch_sync(get_shared_update_brain_connection_queue_update_brain_queue, block);
        return copy_shared_update_brain_connection_brain_connection;
      }

      else
      {

        return create_brain_connection(a2, a3, a5);
      }
    }
  }

  if (a4)
  {

    return copy_shared_softwareupdated_connection(a5);
  }

  else
  {

    return xpc_connection_create_mach_service("com.apple.mobile.softwareupdated", 0, 2uLL);
  }
}

uint64_t perform_se_command_with_progress(const char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, const __CFString **a6, uint64_t a7)
{
  v48 = *MEMORY[0x277D85DE8];
  v14 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_259B51000, v14, OS_LOG_TYPE_DEFAULT, "[CLIENT_IPC] Performing se command with progress: %{public}s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x2020000000;
  v47 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v15 = dispatch_semaphore_create(0);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v16, "Command", a1);
  if (a2)
  {
    msu_serialize_cf_object_into_xpc_dict(v16, "CommandParameters", a2, v17, v18, v19, v20, v21);
  }

  if (a4)
  {
    addSeObjectToMessage(a4, v16, @"SecureEncodedObjects");
  }

  v22 = copy_connection_for_command(a1, a2, a3, 0, v36 + 3);
  v26 = v22;
  if (!v22)
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 27, 0, 0, @"Could not create connection to update brain service", v23, v24, v25, v33);
    v36[3] = error_internal_cf;
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __perform_se_command_with_progress_block_invoke;
  handler[3] = &unk_2798EE0F0;
  handler[4] = v22;
  handler[5] = v16;
  handler[8] = v39;
  handler[9] = v41;
  handler[10] = &v35;
  handler[11] = &buf;
  handler[12] = a5;
  handler[6] = v15;
  handler[7] = a7;
  xpc_connection_set_event_handler(v22, handler);
  xpc_connection_resume(v26);
  xpc_connection_send_message(v26, v16);
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (v16)
  {
LABEL_11:
    xpc_release(v16);
  }

LABEL_12:
  if (v26)
  {
    xpc_connection_set_event_handler(v26, &__block_literal_global_1);
    xpc_release(v26);
  }

  dispatch_release(v15);
  if (*(*(&buf + 1) + 24) == 1)
  {
    v28 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 136446210;
      v44 = a1;
      _os_log_impl(&dword_259B51000, v28, OS_LOG_TYPE_DEFAULT, "[CLIENT_IPC] Performed se command with progress: %{public}s | SUCCESS", v43, 0xCu);
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    perform_se_command_with_progress_cold_1();
  }

  v29 = v36[3];
  if (a6)
  {
    *a6 = v29;
  }

  else if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&buf, 8);
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void __perform_se_command_with_progress_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x259CAF5F0](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0] && (v9 = *(*(a1 + 64) + 8), *(v9 + 24) == 1))
    {
      *(v9 + 24) = 0;
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);

      xpc_connection_send_message(v10, v11);
    }

    else if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
    {
      string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
      *(*(*(a1 + 80) + 8) + 24) = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Received XPC error %s", v13, v14, v15, string);
      *(*(*(a1 + 88) + 8) + 24) = 0;
      v16 = *(a1 + 48);

      dispatch_semaphore_signal(v16);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_string(a2, "Command");
    if (v17 && !strncmp(v17, "ResendMessage", 0xDuLL))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
      v18 = xpc_dictionary_get_string(a2, "IPCStatus");
      cf = 0;
      *(*(*(a1 + 88) + 8) + 24) = msu_demux_reply(a2, *(a1 + 96), &cf, (*(*(a1 + 80) + 8) + 24), v19, v20, v21, v22);
      if (cf)
      {
        v23 = *(a1 + 56);
        if (v23)
        {
          v24 = (*(v23 + 16))();
          reply = xpc_dictionary_create_reply(a2);
          if (reply)
          {
            v26 = reply;
            v27 = "kMSUOperationClientSendError";
            if (v24 == 2)
            {
              v27 = "kMSUOperationCancel";
            }

            if (v24)
            {
              v28 = v27;
            }

            else
            {
              v28 = "kMSUOperationContinue";
            }

            xpc_dictionary_set_string(reply, "CallbackReturn", v28);
            remote_connection = xpc_dictionary_get_remote_connection(a2);
            if (remote_connection)
            {
              xpc_connection_send_message(remote_connection, v26);
            }

            else
            {
              *(*(*(a1 + 80) + 8) + 24) = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Could not retrieve XPC remote connection for reply", v30, v31, v32, v33);
            }

            xpc_release(v26);
          }
        }

        CFRelease(cf);
      }

      else if (!v18 || strncmp(v18, "Callback", 8uLL))
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        xpc_connection_cancel(*(a1 + 32));
        dispatch_semaphore_signal(*(a1 + 48));
      }
    }
  }

  else
  {
    v5 = MEMORY[0x259CAF550](a2);
    *(*(*(a1 + 80) + 8) + 24) = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Unexpected XPC object %s", v6, v7, v8, v5);

    free(v5);
  }
}

uint64_t copy_shared_softwareupdated_connection(uint64_t a1)
{
  if (get_shared_softwareupdated_connection_queue_softwareupdated_queue_once != -1)
  {
    copy_shared_softwareupdated_connection_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __copy_shared_softwareupdated_connection_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(get_shared_softwareupdated_connection_queue_softwareupdated_queue, block);
  return copy_shared_softwareupdated_connection_softwareupdated_connection;
}

xpc_connection_t create_brain_connection(void *a1, void *a2, const __CFString **a3)
{
  v6 = copy_shared_softwareupdated_connection(a3);
  if (v6)
  {
    v7 = v6;
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "Command", "CreateUpdateBrainConnection");
    if (a1)
    {
      msu_serialize_cf_object_into_xpc_dict(v8, "CommandParameters", a1, v9, v10, v11, v12, v13);
    }

    if (a2)
    {
      msu_serialize_cf_object_into_xpc_dict(v8, "UpdateAttributes", a2, v9, v10, v11, v12, v13);
    }

    v14 = xpc_connection_send_message_with_reply_sync(v7, v8);
    v15 = MEMORY[0x259CAF5F0]();
    if (v15 == MEMORY[0x277D86480])
    {
      v16 = MEMORY[0x259CAF550](v14);
      if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        create_brain_connection_cold_4();
      }
    }

    else
    {
      if (v15 == MEMORY[0x277D86468])
      {
        value = xpc_dictionary_get_value(v14, "UpdateBrainServiceEndPoint");
        if (value)
        {
          v17 = xpc_connection_create_from_endpoint(value);
          if (!v8)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
        {
          create_brain_connection_cold_2();
        }

        v20 = msu_deserialize_cf_object_from_xpc_dict(v14, "ErrorInfo");
        if (v20)
        {
          v21 = v20;
          if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
          {
            create_brain_connection_cold_3();
          }

          *a3 = copy_dictionary_to_cferror(v21);
          CFRelease(v21);
        }

LABEL_16:
        v17 = 0;
        if (!v8)
        {
LABEL_18:
          if (v14)
          {
            xpc_release(v14);
          }

          xpc_release(v7);
          return v17;
        }

LABEL_17:
        xpc_release(v8);
        goto LABEL_18;
      }

      v16 = MEMORY[0x259CAF550](v14);
      if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        create_brain_connection_cold_1();
      }
    }

    free(v16);
    goto LABEL_16;
  }

  if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    create_brain_connection_cold_5();
  }

  return 0;
}

void __copy_shared_softwareupdated_connection_block_invoke(uint64_t a1)
{
  v2 = copy_shared_softwareupdated_connection_softwareupdated_connection;
  if (copy_shared_softwareupdated_connection_softwareupdated_connection)
  {
LABEL_6:

    xpc_retain(v2);
    return;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.mobile.softwareupdated", 0, 2uLL);
  copy_shared_softwareupdated_connection_softwareupdated_connection = mach_service;
  if (mach_service)
  {
    xpc_connection_set_context(mach_service, objc_alloc_init(MEMORY[0x277CBEB18]));
    xpc_connection_set_finalizer_f(copy_shared_softwareupdated_connection_softwareupdated_connection, finalize_shared_softwareupdated_connection);
    v7 = copy_shared_softwareupdated_connection_softwareupdated_connection;
    if (get_shared_softwareupdated_connection_queue_softwareupdated_queue_once != -1)
    {
      copy_shared_softwareupdated_connection_cold_1();
    }

    xpc_connection_set_target_queue(v7, get_shared_softwareupdated_connection_queue_softwareupdated_queue);
    xpc_connection_set_event_handler(copy_shared_softwareupdated_connection_softwareupdated_connection, &__block_literal_global_56);
    xpc_connection_resume(copy_shared_softwareupdated_connection_softwareupdated_connection);
    v2 = copy_shared_softwareupdated_connection_softwareupdated_connection;
    goto LABEL_6;
  }

  error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 40, 0, 0, @"Could not create connection to service %s", v4, v5, v6, "com.apple.mobile.softwareupdated");
  v9 = *(a1 + 32);
  if (v9)
  {
    *v9 = error_internal_cf;
  }

  else
  {

    CFRelease(error_internal_cf);
  }
}

void __copy_shared_softwareupdated_connection_block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x259CAF5F0](a2);
  if (v3 != MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D86468] && xpc_dictionary_get_string(a2, "Command") && (string = xpc_dictionary_get_string(a2, "Command"), !strncmp(string, "ResendMessage", 0xDuLL)))
    {
      _block_invoke_softwareupdated_did_self_destruct = 1;
    }

    else
    {
      v4 = MEMORY[0x259CAF550](a2);
      v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = v4;
        _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[CLIENT_IPC] softwareupdated connection event handler | %{public}s", buf, 0xCu);
      }

      free(v4);
    }

    goto LABEL_23;
  }

  if (a2 != MEMORY[0x277D863F0])
  {
    xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    logfunction("", 1, @"XPC error on connection to %s: %s\n", v6, v7, v8, v9, v10, "com.apple.mobile.softwareupdated");
    goto LABEL_21;
  }

  if (_block_invoke_softwareupdated_did_self_destruct != 1)
  {
LABEL_21:
    if (copy_shared_softwareupdated_connection_softwareupdated_connection)
    {
      xpc_release(copy_shared_softwareupdated_connection_softwareupdated_connection);
      copy_shared_softwareupdated_connection_softwareupdated_connection = 0;
    }

    goto LABEL_23;
  }

  context = xpc_connection_get_context(copy_shared_softwareupdated_connection_softwareupdated_connection);
  if (context)
  {
    v13 = context;
    objc_sync_enter(context);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          xpc_connection_send_message(copy_shared_softwareupdated_connection_softwareupdated_connection, *(*(&v18 + 1) + 8 * i));
        }

        v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v14);
    }

    objc_sync_exit(v13);
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
}

dispatch_queue_t __get_shared_softwareupdated_connection_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mobile.softwareupdated", 0);
  get_shared_softwareupdated_connection_queue_softwareupdated_queue = result;
  return result;
}

void __copy_shared_update_brain_connection_block_invoke(uint64_t a1)
{
  v1 = copy_shared_update_brain_connection_brain_connection;
  if (copy_shared_update_brain_connection_brain_connection)
  {
LABEL_4:

    xpc_retain(v1);
    return;
  }

  brain_connection = create_brain_connection(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  copy_shared_update_brain_connection_brain_connection = brain_connection;
  if (brain_connection)
  {
    xpc_connection_set_event_handler(brain_connection, &__block_literal_global_66);
    xpc_connection_resume(copy_shared_update_brain_connection_brain_connection);
    v1 = copy_shared_update_brain_connection_brain_connection;
    goto LABEL_4;
  }

  if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    __copy_shared_update_brain_connection_block_invoke_cold_1();
  }
}

void __copy_shared_update_brain_connection_block_invoke_64(uint64_t a1, void *a2)
{
  if (MEMORY[0x259CAF5F0](a2) == MEMORY[0x277D86480])
  {
    if (a2 != MEMORY[0x277D863F0])
    {
      v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __copy_shared_update_brain_connection_block_invoke_64_cold_2(a2, v4);
      }
    }

    if (copy_shared_update_brain_connection_brain_connection)
    {
      xpc_release(copy_shared_update_brain_connection_brain_connection);
      copy_shared_update_brain_connection_brain_connection = 0;
    }
  }

  else
  {
    v3 = MEMORY[0x259CAF550](a2);
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __copy_shared_update_brain_connection_block_invoke_64_cold_1();
    }

    free(v3);
  }
}

dispatch_queue_t __get_shared_update_brain_connection_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mobile.softwareupdated", 0);
  get_shared_update_brain_connection_queue_update_brain_queue = result;
  return result;
}

void msu_process_dictionary_values_for_xpc_serialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_for_xpc_serialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

CFDictionaryRef msu_process_cf_object_for_xpc_serialization(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID())
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_for_xpc_serialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      MutableCopy = 0;
      v7 = *MEMORY[0x277CBECE8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v9 = msu_process_cf_object_for_xpc_serialization(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(v7, 0, a1);
          }

          CFArraySetValueAtIndex(MutableCopy, v6, v10);
          CFRelease(v10);
        }

        ++v6;
      }

      while (v5 != v6);
      return MutableCopy;
    }

    return 0;
  }

  if (v2 != CFErrorGetTypeID())
  {
    return 0;
  }

  return cferror_to_dictionary_embedded(a1, 1);
}

void msu_serialize_cf_object_into_xpc_dict(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    logfunction("", 1, @"%s: API misuse - object is NULL\n", a4, a5, a6, a7, a8, "msu_serialize_cf_object_into_xpc_dict");
    return;
  }

  v10 = msu_process_cf_object_for_xpc_serialization(a3);
  if (!v10)
  {
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    logfunction("", 1, @"could not create object for key %s:%@\n", v13, v14, v15, v16, v17, a2);
    return;
  }

  v11 = v10;
  v12 = _CFXPCCreateXPCObjectFromCFObject();
  CFRelease(v11);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  xpc_dictionary_set_value(a1, a2, v12);

  xpc_release(v12);
}

void msu_process_dictionary_values_from_xpc_deserialization(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  v5 = msu_process_cf_object_from_xpc_deserialization(a2);
  if (v5)
  {
    v6 = v5;
    if (a3 && !*a3)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *a3 = Mutable;
      CFDictionarySetValue(Mutable, a1, v6);
    }

    CFRelease(v6);
  }
}

const __CFString *msu_process_cf_object_from_xpc_deserialization(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    if (v2 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count;
        v6 = 0;
        MutableCopy = 0;
        v8 = *MEMORY[0x277CBECE8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
          v10 = msu_process_cf_object_from_xpc_deserialization(ValueAtIndex);
          if (v10)
          {
            v11 = v10;
            if (!MutableCopy)
            {
              MutableCopy = CFArrayCreateMutableCopy(v8, 0, a1);
            }

            CFArraySetValueAtIndex(MutableCopy, v6, v11);
            CFRelease(v11);
          }

          ++v6;
        }

        while (v5 != v6);
        return MutableCopy;
      }
    }

    return 0;
  }

  if (!CFDictionaryContainsKey(a1, @"_MSU_Embedded_Error"))
  {
    context = 0;
    CFDictionaryApplyFunction(a1, msu_process_dictionary_values_from_xpc_deserialization, &context);
    if (context)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a1);
      CFDictionaryApplyFunction(context, msu_merge_dictionary_values, MutableCopy);
      CFRelease(context);
      return MutableCopy;
    }

    return 0;
  }

  return copy_dictionary_to_cferror(a1);
}

const __CFString *msu_deserialize_cf_object_from_xpc_dict(void *a1, const char *a2)
{
  if (!xpc_dictionary_get_value(a1, a2))
  {
    return 0;
  }

  v2 = _CFXPCCreateCFObjectFromXPCObject();
  v3 = msu_process_cf_object_from_xpc_deserialization(v2);
  if (v3)
  {
    v4 = v3;
    CFRelease(v2);
    return v4;
  }

  return v2;
}

uint64_t msu_demux_reply(void *a1, const __CFString **a2, __CFDictionary **a3, const __CFString **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = @"No reply from daemon";
LABEL_9:
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, v18, a6, a7, a8, v28);
LABEL_10:
    v19 = error_internal_cf;
    if (a4)
    {
      result = 0;
      *a4 = v19;
      return result;
    }

    goto LABEL_12;
  }

  string = xpc_dictionary_get_string(a1, "IPCStatus");
  if (!string)
  {
    v18 = @"No status key in reply from daemon";
    goto LABEL_9;
  }

  v13 = string;
  if (!strncmp(string, "Complete", 8uLL))
  {
    if (a2)
    {
      *a2 = msu_deserialize_cf_object_from_xpc_dict(a1, "Results");
    }

    return 1;
  }

  if (!strncmp(v13, "Callback", 8uLL))
  {
    if (a3)
    {
      v21 = msu_deserialize_cf_object_from_xpc_dict(a1, "CallbackStatus");
      Value = CFDictionaryGetValue(v21, @"StallError");
      if (Value)
      {
        v23 = Value;
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v21);
        if (v21)
        {
          CFRelease(v21);
        }

        v25 = copy_dictionary_to_cferror(v23);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(MutableCopy, @"StallError", v25);
          CFRelease(v26);
        }
      }

      else
      {
        MutableCopy = v21;
      }

      *a3 = MutableCopy;
    }

    return 1;
  }

  if (strncmp(v13, "Error", 5uLL))
  {
    error_internal_cf = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 7, 0, 0, @"Unexpected IPC status %s in reply hander", v14, v15, v16, v13);
    goto LABEL_10;
  }

  if (!a4)
  {
    return 0;
  }

  result = msu_deserialize_cf_object_from_xpc_dict(a1, "ErrorInfo");
  if (result)
  {
    v27 = result;
    *a4 = copy_dictionary_to_cferror(result);
    error_internal_cf = v27;
LABEL_12:
    CFRelease(error_internal_cf);
    return 0;
  }

  return result;
}

void MSUPreflightUpdate_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUPrepareUpdateWithAsset_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUPrepareUpdateWithAsset_cold_2(char a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    v2 = *a2;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_259B51000, v3, v4, "[SPI] %@ | FAILURE | error:%{public}@", 138412546);
  v5 = *MEMORY[0x277D85DE8];
}

void perform_prepare_command_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUPrepareUpdateWithMAAsset_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUPrepareUpdateWithMAAsset_cold_2(char a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    v2 = *a2;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_259B51000, v3, v4, "[SPI] %@ | FAILURE | error:%{public}@", 138412546);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPrepareUpdate_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUApplyUpdate_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUSuspendUpdate_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUResumeUpdateWithOptions_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUBrainIsLoadable_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUBrainIsLoadable_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPurgeSuspendedUpdate_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUCloseUpdateHandle_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUAssetCalculateInstallationSize_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUAssetCalculateInstallationSize_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUAssetCalculatePrepareSizes_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUAssetCalculateApplySizes_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSUCheckInstallationSize_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSURetrievePreviousUpdateResults_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void MSURetrievePreviousUpdateState_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUCopyToleratedStatusForStep_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyToleratedStatusForStep_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUParsedToleratedFailureForStep_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUParsedToleratedFailureForStep_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUIsFirstBootAfterUpdate_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSURetrievePreviousUpdateDate_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSURetrievePreviousRestoreDate_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUCopyEnvInfoForNeRD_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyStashedAccessibilityPrefs_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyConnectivityData_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUCopyConnectivityData_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyConnectivityData_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUReportAndCleanupPreviousUpdateState_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUReportAndCleanupPreviousUpdateState_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUReportAndCleanupPreviousUpdateState_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyInstalledRecoveryOSVersion_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUCopyInstalledRecoveryOSVersion_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void RVGetNeRDInfo_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUGetUpdateInfo_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUGetUpdateInfo_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUGetUpdateInfo_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPerformSemiSplat_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPerformSemiSplat_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPerformSemiSplat_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPerformDownlevel_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void MSUPerformDownlevel_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSUPerformDownlevel_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void addSeObjectToMessage_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void perform_se_command_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void perform_se_command_with_progress_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void create_brain_connection_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void create_brain_connection_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void create_brain_connection_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void create_brain_connection_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void create_brain_connection_cold_5()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __copy_shared_update_brain_connection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __copy_shared_update_brain_connection_block_invoke_64_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __copy_shared_update_brain_connection_block_invoke_64_cold_2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_259B51000, a2, OS_LOG_TYPE_ERROR, "[CLIENT_IPC] XPC error on service connection: %{public}s", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}