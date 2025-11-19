__CFDictionary *MMCSICloudRequestHeadersCopy(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  mmcs_library_init();
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    client_header_value = mmcs_engine_create_client_header_value(a1);
    CFDictionaryAddValue(Mutable, @"x-mme-client-info", client_header_value);
    if (client_header_value)
    {
      CFRelease(client_header_value);
    }

    v5 = MMCSGetDefaultProtocolVersion();
    CFDictionaryAddValue(Mutable, @"x-apple-mmcs-proto-version", v5);
    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"UseEdge", 0);
    if (cfBOOLean_from_cfpreferences_object_for_key)
    {
      if (CFBooleanGetValue(cfBOOLean_from_cfpreferences_object_for_key))
      {
        v7 = @"true";
      }

      else
      {
        v7 = @"false";
      }

      CFDictionaryAddValue(Mutable, @"x-apple-use-edge", v7);
    }

    v8 = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"UseVendorIp", 0);
    if (v8)
    {
      if (CFBooleanGetValue(v8))
      {
        v9 = @"true";
      }

      else
      {
        v9 = @"false";
      }

      CFDictionaryAddValue(Mutable, @"x-apple-use-vendor-ip", v9);
    }

    mmcs_report_initialize();
    cf = 0;
    *value = 0;
    mmcs_report_copy_plist_header_values(value, &cf);
    if (*value)
    {
      CFDictionaryAddValue(Mutable, @"x-apple-mmcs-plist-version", *value);
      if (*value)
      {
        CFRelease(*value);
      }

      *value = 0;
    }

    if (cf)
    {
      CFDictionaryAddValue(Mutable, @"x-apple-mmcs-plist-sha256", cf);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
    }

    mmcs_report_close();
  }

  else
  {
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = CFStringCreateWithFormat(v2, 0, @"Unable to allocate iCloudRequestHeaders");
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *value = 138543362;
        *&value[4] = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_ERROR, "%{public}@", value, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return Mutable;
}

CFStringRef mmcs_engine_create_client_header_value(uint64_t a1)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MMCS");
  if (BundleWithIdentifier)
  {
    BundleWithIdentifier = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, *MEMORY[0x277CBED58]);
  }

  if (BundleWithIdentifier)
  {
    v3 = BundleWithIdentifier;
  }

  else
  {
    v3 = @"unknown";
  }

  return copy_client_info_header(@"com.apple.icloud.content", v3, a1, 0);
}

uint64_t MMCSGetDefaultProtocolVersion()
{
  result = _kMMCSEngineDefaultProtocolVersion;
  if (!_kMMCSEngineDefaultProtocolVersion)
  {
    MMCSGetDefaultProtocolVersion_cold_1();
  }

  return result;
}

CFStringRef copy_client_info_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&copy_client_info_header_once, initClientInfoHeaderTemplate);
  if (!a3)
  {
    return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (UNKNOWN)>", sClientInfoHeaderTemplate, a1, a2);
  }

  if (a4)
  {
    return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (%@/%@)>", sClientInfoHeaderTemplate, a1, a2, a3, a4);
  }

  return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (%@)>", sClientInfoHeaderTemplate, a1, a2, a3);
}

uint64_t mmcs_report_initialize()
{
  v44 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&sReportingInfoInitLock);
  v0 = gMMCS_MobileMeReporting;
  if (gMMCS_MobileMeReporting)
  {
LABEL_52:
    ++*(v0 + 24);
    result = pthread_mutex_unlock(&sReportingInfoInitLock);
    v39 = *MEMORY[0x277D85DE8];
    return result;
  }

  v1 = malloc_type_malloc(0x48uLL, 0x1060040BBC8ADA9uLL);
  gMMCS_MobileMeReporting = v1;
  if (v1)
  {
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = xmmword_25785F9C0;
    v1[3] = 0u;
    *(v1 + 64) = 0;
    Current = 0.0;
    v42 = 0.0;
    v40 = 0;
    CFPreferencesAppSynchronize(@"com.apple.mmcs");
    _getAbsoluteTimeFromPreferences(@"report.LastSuccessfulCheckTime", @"com.apple.mmcs", &v42);
    _getAbsoluteTimeFromPreferences(@"report.LastFailedCheckTime", @"com.apple.mmcs", &Current);
    if (_getAbsoluteTimeFromPreferences(@"report.TTL", @"com.apple.mmcs", &v40))
    {
      *(gMMCS_MobileMeReporting + 40) = v40;
    }

    v2 = CFPreferencesCopyAppValue(@"report.ReportLevels", @"com.apple.mmcs");
    v3 = v2;
    if (v2)
    {
      v4 = CFGetTypeID(v2);
      if (v4 == CFDictionaryGetTypeID())
      {
        v5 = mmcs_logging_logger_default();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          Mutable = v3;
LABEL_44:
          v36 = CFPreferencesCopyAppValue(@"report.sha256", @"com.apple.mmcs");
          v37 = v36;
          if (v36)
          {
            v38 = CFGetTypeID(v36);
            if (v38 != CFStringGetTypeID())
            {
              CFRelease(v37);
              v37 = 0;
            }
          }

          _mmcs_report_setReportingInfo(0, v37, Mutable, 0, 0, v42, Current);
          if (v37)
          {
            CFRelease(v37);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v0 = gMMCS_MobileMeReporting;
          goto LABEL_52;
        }

        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using MobileMe reporting levels from Preferences.");
        v7 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        Mutable = v3;
        if (!v6)
        {
          goto LABEL_44;
        }

LABEL_42:
        CFRelease(v6);
        goto LABEL_44;
      }
    }

    v9 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      *buf = 0x2000000;
      v10 = CFNumberCreate(v9, kCFNumberSInt64Type, buf);
      if (v10)
      {
        v11 = v10;
        CFDictionarySetValue(Mutable, @"chunker.max.fixed.length", v10);
        CFRelease(v11);
      }

      *buf = 2;
      v12 = CFNumberCreate(v9, kCFNumberSInt32Type, buf);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(Mutable, @"max.vendor.upload.connections.override", v12);
        CFRelease(v13);
      }

      *buf = 20;
      v14 = CFNumberCreate(v9, kCFNumberSInt64Type, buf);
      if (v14)
      {
        v15 = v14;
        CFDictionarySetValue(Mutable, @"max.vendor.download.connections.override", v14);
        CFRelease(v15);
      }

      CFDictionarySetValue(Mutable, @"auth.simulcast.response.signing.key.public.current", @"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEAocv/GNpYVOMkps9l8bGHZH8JvMEFQavMbuRpHNch+VpT7abwkns3kA7SnvG6Lv37ko5OkTLJc5ZmtO7fkbonw==");
      v16 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v16)
      {
        v17 = v16;
        v18 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(v16, @"vendor.url", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(v17, @"vendor.response.code", v18);
        CFDictionarySetValue(v17, @"client.error.on.failure", v18);
        CFDictionarySetValue(v17, @"status.line.on.failure", v18);
        v19 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        if (v19)
        {
          v20 = v19;
          CFArrayAppendValue(v19, @"*");
          CFDictionarySetValue(v17, @"vendor.headers.on.success", v20);
          CFRelease(v20);
        }

        v21 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        if (v21)
        {
          v22 = v21;
          CFArrayAppendValue(v21, @"*");
          CFDictionarySetValue(v17, @"vendor.headers.on.failure", v22);
          CFRelease(v22);
        }

        v23 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        if (v23)
        {
          v24 = v23;
          CFArrayAppendValue(v23, @"contentlength.bytes");
          CFArrayAppendValue(v24, @"vendor.roundtrip.millis");
          CFArrayAppendValue(v24, @"vendor.network.interface");
          CFArrayAppendValue(v24, @"vendor.nameresolution.millis");
          CFArrayAppendValue(v24, @"vendor.nameresolution.serverAddress");
          CFArrayAppendValue(v24, @"vendor.request.qos");
          CFDictionarySetValue(v17, @"vendor.kpis", v24);
          CFRelease(v24);
        }

        v25 = CFArrayCreateMutable(v9, 0, MEMORY[0x277CBF128]);
        if (v25)
        {
          v26 = v25;
          CFArrayAppendValue(v25, @"chunking.time.millis");
          CFArrayAppendValue(v26, @"authorizePut.millis");
          CFArrayAppendValue(v26, @"cachingServer.bytes");
          CFArrayAppendValue(v26, @"cachingServer.used");
          CFArrayAppendValue(v26, @"authorizeGetForFiles.millis");
          CFDictionarySetValue(v17, @"client.kpis", v26);
          CFRelease(v26);
        }

        CFDictionarySetValue(Mutable, @"putcomplete.verbosity.0", v17);
        CFDictionarySetValue(Mutable, @"getcomplete.verbosity.0", v17);
        CFRelease(v17);
      }

      v27 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
LABEL_41:
        v6 = v3;
        if (!v3)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v28 = CFStringCreateWithFormat(v9, 0, @"Using default MobileMe reporting levels.");
      v29 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
LABEL_39:
        if (v28)
        {
          CFRelease(v28);
        }

        goto LABEL_41;
      }

      *buf = 138543362;
      *&buf[4] = v28;
      v30 = v29;
      v31 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v34 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v28 = CFStringCreateWithFormat(v9, 0, @"Failed to create default MobileMe reporting levels.");
      v35 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 138543362;
      *&buf[4] = v28;
      v30 = v35;
      v31 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_2577D8000, v30, v31, "%{public}@", buf, 0xCu);
    goto LABEL_39;
  }

  v32 = *MEMORY[0x277D85DE8];

  return pthread_mutex_unlock(&sReportingInfoInitLock);
}

const __CFString *mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(const __CFString *a1, const __CFString *cfBOOLean_from_cftype_using_description)
{
  if (a1)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.mmcs");
    if (v4)
    {
      v5 = v4;
      cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(a1, v4, cfBOOLean_from_cftype_using_description);
      CFRelease(v5);
    }
  }

  return cfBOOLean_from_cftype_using_description;
}

void MMCSOperationMetricCombineMetrics(void *a1, void *a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v45 = a1;
  v44 = a2;
  v51 = [v44 mutableCopy];
  v3 = [v51 sortedArrayUsingSelector:sel_compareStartTime_];
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v46 = [v51 count];
  if (v46)
  {
    v6 = 0;
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    do
    {
      v53 = v6;
      v7 = [v51 objectAtIndexedSubscript:?];
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v8 = [v7 rangesCopy];
      v9 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v9)
      {
        v10 = *v69;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v69 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v68 + 1) + 8 * i);
            v13 = [v12 operationState];
            v14 = v4;
            if (v13 != 1)
            {
              v15 = [v12 operationState];
              v14 = v5;
              if (v15)
              {
                continue;
              }
            }

            [v14 addObject:v12];
          }

          v9 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v9);
      }

      v52 = [v7 bytesUploaded];
      v16 = [v7 bytesDownloaded];
      v17 = [v7 connections];
      v18 = [v7 connectionsCreated];
      v19 = [v7 bytesFulfilledLocally];
      v20 = [v7 bytesResumed];
      v21 = [v7 totalBytesByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v50, v21);

      v22 = [v7 chunkCountByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v49, v22);

      v23 = [v7 fileCountByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v48, v23);

      v24 = [v7 requestUUIDs];
      v25 = [v24 allObjects];
      [v47 addObjectsFromArray:v25];

      v59 += v52;
      v57 += v16;
      v58 += v17;
      v55 += v18;
      v56 += v19;
      v54 += v20;
      v6 = v53 + 1;
    }

    while (v53 + 1 != v46);
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  v26 = v45;
  objc_sync_enter(v26);
  v27 = MMCSOperationStateTimeRangeMergedRanges(v26, v4);

  v28 = MMCSOperationStateTimeRangeMergedRanges(v26, v5);

  v29 = MMCSOperationStateTimeRangeFilteredRanges(v26, v28, v27);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v30 = v27;
  v31 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v31)
  {
    v32 = *v65;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v65 != v32)
        {
          objc_enumerationMutation(v30);
        }

        [v26 addRange:*(*(&v64 + 1) + 8 * j)];
      }

      v31 = [v30 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v31);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v34 = v29;
  v35 = [v34 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v35)
  {
    v36 = *v61;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v61 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [v26 addRange:*(*(&v60 + 1) + 8 * k)];
      }

      v35 = [v34 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v35);
  }

  [v26 setBytesUploaded:{objc_msgSend(v26, "bytesUploaded") + v59}];
  [v26 setBytesDownloaded:{objc_msgSend(v26, "bytesDownloaded") + v57}];
  [v26 setConnections:{objc_msgSend(v26, "connections") + v58}];
  [v26 setConnectionsCreated:{objc_msgSend(v26, "connectionsCreated") + v55}];
  [v26 setBytesFulfilledLocally:{objc_msgSend(v26, "bytesFulfilledLocally") + v56}];
  [v26 setBytesResumed:{objc_msgSend(v26, "bytesResumed") + v54}];
  v38 = [v26 totalBytesByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v38, v50);

  v39 = [v26 chunkCountByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v39, v49);

  v40 = [v26 fileCountByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v40, v48);

  v41 = [v26 requestUUIDs];
  v42 = [v47 allObjects];
  [v41 addObjectsFromArray:v42];

  objc_sync_exit(v26);
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t _getAbsoluteTimeFromPreferences(const __CFString *a1, const __CFString *a2, double *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = DoubleFromCFObject(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t DoubleFromCFObject(const __CFBoolean *a1, double *a2)
{
  if (IsValidCFBoolean(a1))
  {
    Value = CFBooleanGetValue(a1);
LABEL_3:
    *a2 = Value;
    return 1;
  }

  if (IsValidCFNumber(a1))
  {

    return CFNumberGetValue(a1, kCFNumberDoubleType, a2);
  }

  else
  {
    result = IsValidCFString(a1);
    if (result)
    {
      Value = CFStringGetDoubleValue(a1);
      goto LABEL_3;
    }
  }

  return result;
}

const void *IsValidCFBoolean(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFBooleanGetTypeID());
  }

  return result;
}

const void *IsValidCFNumber(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

const void *IsValidCFString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

uint64_t mmcs_logging_logger_default()
{
  if (mmcs_logging_logger_default_once != -1)
  {
    mmcs_logging_logger_default_cold_1();
  }

  return mmcs_logging_logger_default_logger;
}

uint64_t _mmcs_report_setReportingInfo(uint64_t a1, const void *a2, const void *a3, int a4, const void *a5, CFAbsoluteTime a6, CFAbsoluteTime a7)
{
  pthread_mutex_lock(&sReportingInfoAccessLock);
  v14 = gMMCS_MobileMeReporting;
  if (!gMMCS_MobileMeReporting || a1 && *(gMMCS_MobileMeReporting + 16) != a1)
  {

    return pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  v16 = *gMMCS_MobileMeReporting;
  if (*gMMCS_MobileMeReporting)
  {
    v17 = v16 == a3;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    if (v16)
    {
      CFRelease(v16);
      v14 = gMMCS_MobileMeReporting;
    }

    *v14 = 0;
    if (!a3)
    {
      goto LABEL_27;
    }

    CFRetain(a3);
    if (!a1)
    {
      goto LABEL_27;
    }

    if (!mmcs_http_context_get_response_message(a1))
    {
      goto LABEL_27;
    }

    response_message = mmcs_http_context_get_response_message(a1);
    if (!response_message)
    {
      goto LABEL_27;
    }

    v19 = CFHTTPMessageCopyHeaderFieldValue(response_message, @"Cache-Control");
    if (v19)
    {
      v20 = v19;
      v21 = CFStringFind(v19, @"max-age=", 1uLL);
      if (v21.location == -1)
      {
        goto LABEL_25;
      }

      v40.location = 0;
      v40.length = 0;
      v42.length = CFStringGetLength(v20) - (v21.location + v21.length);
      v42.location = v21.location + v21.length;
      v22 = CFStringFindWithOptions(v20, @",", v42, 1uLL, &v40);
      v23 = *MEMORY[0x277CBECE8];
      v24 = v22 ? v40.location : CFStringGetLength(v20);
      v43.length = v24 - (v21.location + v21.length);
      v43.location = v21.location + v21.length;
      v25 = CFStringCreateWithSubstring(v23, v20, v43);
      if (!v25)
      {
LABEL_25:
        CFRelease(v20);
      }

      else
      {
        v26 = v25;
        DoubleValue = CFStringGetDoubleValue(v25);
        *(gMMCS_MobileMeReporting + 40) = DoubleValue;
        CFRelease(v26);
        CFRelease(v20);
        if (DoubleValue != 0.0)
        {
          goto LABEL_27;
        }
      }
    }

    *(gMMCS_MobileMeReporting + 40) = 0x40F5180000000000;
LABEL_27:
    v14 = gMMCS_MobileMeReporting;
    *gMMCS_MobileMeReporting = a3;
    v28 = *(v14 + 8);
    if (v28 != a2)
    {
      if (v28)
      {
        CFRelease(v28);
        v14 = gMMCS_MobileMeReporting;
      }

      *(v14 + 8) = a2;
      if (a2)
      {
        CFRetain(a2);
        v14 = gMMCS_MobileMeReporting;
      }
    }
  }

  *(v14 + 48) = a7;
  *(v14 + 56) = a6;
  v40.location = *(v14 + 40);
  result = pthread_mutex_unlock(&sReportingInfoAccessLock);
  if (!a4)
  {
    return result;
  }

  v29 = CFLocaleCreate(0, @"en_US");
  v30 = *MEMORY[0x277CBECE8];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v29);
  v32 = DateFormatFromTemplate;
  if (v29 && DateFormatFromTemplate)
  {
    v33 = CFDateFormatterCreate(v30, v29, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v34 = v33;
    if (v33)
    {
      CFDateFormatterSetFormat(v33, v32);
    }

    goto LABEL_38;
  }

  v34 = 0;
  v35 = 0;
  if (v29)
  {
LABEL_38:
    CFRelease(v29);
    v35 = v34;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  CFPreferencesSetAppValue(@"report.ReportLevels", a3, @"com.apple.mmcs");
  CFPreferencesSetAppValue(@"report.LastSuccessfulCheckTime", a5, @"com.apple.mmcs");
  CFPreferencesSetAppValue(@"report.sha256", a2, @"com.apple.mmcs");
  if (v35)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v30, v35, a6);
    CFPreferencesSetAppValue(@"report.LastSuccessfulCheckDate", StringWithAbsoluteTime, @"com.apple.mmcs");
    if (StringWithAbsoluteTime)
    {
      CFRelease(StringWithAbsoluteTime);
    }

    CFPreferencesSetAppValue(@"report.LastFailedCheckTime", 0, @"com.apple.mmcs");
    v37 = CFDateFormatterCreateStringWithAbsoluteTime(v30, v35, a7);
    CFPreferencesSetAppValue(@"report.LastFailedCheckDate", v37, @"com.apple.mmcs");
    if (v37)
    {
      CFRelease(v37);
    }

    CFRelease(v35);
  }

  else
  {
    CFPreferencesSetAppValue(@"report.LastSuccessfulCheckDate", 0, @"com.apple.mmcs");
    CFPreferencesSetAppValue(@"report.LastFailedCheckTime", 0, @"com.apple.mmcs");
    CFPreferencesSetAppValue(@"report.LastFailedCheckDate", 0, @"com.apple.mmcs");
  }

  v38 = CFNumberCreate(v30, kCFNumberDoubleType, &v40);
  if (v38)
  {
    v39 = v38;
    CFPreferencesSetAppValue(@"report.TTL", v38, @"com.apple.mmcs");
    CFRelease(v39);
  }

  return CFPreferencesAppSynchronize(@"com.apple.mmcs");
}

void *_mmcs_report_copyConfiguration(void *result, void *a2)
{
  if (gMMCS_MobileMeReporting && *gMMCS_MobileMeReporting)
  {
    v3 = result;
    pthread_mutex_lock(&sReportingInfoAccessLock);
    v4 = gMMCS_MobileMeReporting;
    if (gMMCS_MobileMeReporting)
    {
      if (v3)
      {
        *v3 = 0;
        v5 = *v4;
        if (*v4)
        {
          CFRetain(*v4);
          *v3 = v5;
        }
      }

      if (a2)
      {
        *a2 = 0;
        v6 = *(gMMCS_MobileMeReporting + 8);
        if (v6)
        {
          CFRetain(*(gMMCS_MobileMeReporting + 8));
          *a2 = v6;
        }
      }
    }

    return pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  return result;
}

void mmcs_report_copy_plist_header_values(void *a1, CFTypeRef *a2)
{
  theDict = 0;
  cf = 0;
  if (a1)
  {
    p_theDict = &theDict;
  }

  else
  {
    p_theDict = 0;
  }

  if (a2)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  _mmcs_report_copyConfiguration(p_theDict, p_cf);
  v6 = theDict;
  if (theDict)
  {
    *a1 = 0;
    Value = CFDictionaryGetValue(v6, @"echo.header.plist.version");
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
      v9 = CFGetTypeID(v8);
      if (v9 == CFStringGetTypeID())
      {
        *a1 = v8;
        v8 = 0;
      }
    }

    if (cf && mmcs_get_BOOLean_from_cfdictionary_object_for_key(theDict, @"send.header.plist.sha256", 1))
    {
      *a2 = cf;
      cf = 0;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  theDict = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_get_BOOLean_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, uint64_t a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_get_BOOLean_from_cftype_using_description(key, Value, a3);
}

uint64_t mmcs_get_BOOLean_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(a1, a2, *v3);
  if (!cfBOOLean_from_cftype_using_description)
  {
    mmcs_get_BOOLean_from_cftype_using_description_cold_1();
  }

  return CFBooleanGetValue(cfBOOLean_from_cftype_using_description);
}

const __CFString *mmcs_get_cfBOOLean_from_cftype_using_description(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      a3 = a2;
      goto LABEL_45;
    }

    v7 = CFNumberGetTypeID();
    if (v7 == CFGetTypeID(a2))
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberIntType, &valuePtr))
      {
        v8 = MEMORY[0x277CBED28];
        if (!valuePtr)
        {
          v8 = MEMORY[0x277CBED10];
        }

        goto LABEL_34;
      }

      v19 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert CFNumberRef to integer for key '%@'.", a1);
      v21 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 138543362;
      v30 = v20;
LABEL_29:
      _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_30:
      if (!v20)
      {
        goto LABEL_45;
      }

      v18 = v20;
LABEL_44:
      CFRelease(v18);
      goto LABEL_45;
    }

    v9 = CFStringGetTypeID();
    if (v9 == CFGetTypeID(a2))
    {
      if (CFStringCompare(a2, @"true", 1uLL) && CFStringCompare(a2, @"yes", 1uLL))
      {
        if (CFStringCompare(a2, @"false", 1uLL) && CFStringCompare(a2, @"no", 1uLL))
        {
          v10 = mmcs_copy_cfnumber_from_cftype_using_description(a1, a2, 0);
          if (v10)
          {
            v11 = v10;
            valuePtr = 0;
            if (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
            {
              v12 = MEMORY[0x277CBED28];
              if (!valuePtr)
              {
                v12 = MEMORY[0x277CBED10];
              }

              a3 = *v12;
            }

            else
            {
              v23 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert parsed string to integer for key '%@'.", a1);
                v25 = mmcs_logging_logger_default();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v30 = v24;
                  _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v24)
                {
                  CFRelease(v24);
                }
              }
            }

            v18 = v11;
            goto LABEL_44;
          }

          v22 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to decode string '%@' as BOOLean for key '%@'.", a2, a1);
          v21 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v30 = v20;
          goto LABEL_29;
        }

        v8 = MEMORY[0x277CBED10];
      }

      else
      {
        v8 = MEMORY[0x277CBED28];
      }

LABEL_34:
      a3 = *v8;
      goto LABEL_45;
    }

    v13 = CFGetTypeID(a2);
    v14 = CFCopyTypeIDDescription(v13);
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to recognized type id '%@' for BOOLean decoding for key '%@'.", v14, a1);
      v17 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v16;
        _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (v14)
    {
      v18 = v14;
      goto LABEL_44;
    }
  }

LABEL_45:
  v26 = *MEMORY[0x277D85DE8];
  return a3;
}

void mmcs_report_close()
{
  pthread_mutex_lock(&sReportingInfoInitLock);
  if (gMMCS_MobileMeReporting && (v0 = *(gMMCS_MobileMeReporting + 24) - 1, (*(gMMCS_MobileMeReporting + 24) = v0) == 0))
  {
    pthread_mutex_lock(&sReportingInfoAccessLock);
    v1 = gMMCS_MobileMeReporting;
    if (*gMMCS_MobileMeReporting)
    {
      CFRelease(*gMMCS_MobileMeReporting);
      v1 = gMMCS_MobileMeReporting;
    }

    *v1 = 0;
    if (v1[1])
    {
      CFRelease(v1[1]);
      v1 = gMMCS_MobileMeReporting;
    }

    v2 = v1[2];
    free(v1);
    gMMCS_MobileMeReporting = 0;
    pthread_mutex_unlock(&sReportingInfoAccessLock);
    pthread_mutex_unlock(&sReportingInfoInitLock);
    if (v2)
    {
      error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, 0, @"Cancelling plist fetch. Engine closing.", v3, v4, v5, v6, v8);
      mmcs_http_context_should_cancel(v2, error_with_underlying_error);
      if (error_with_underlying_error)
      {
        CFRelease(error_with_underlying_error);
      }

      C3BaseRelease(v2);
    }
  }

  else
  {

    pthread_mutex_unlock(&sReportingInfoInitLock);
  }
}

void mmcs_operation_metric_add_uint64_dictionary(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
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
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          mmcs_operation_metric_increment_uint64_dictionary_key(v3, v10, [v11 unsignedLongLongValue]);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

id MMCSOperationStateTimeRangeMergedRanges(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  if (v3 && v4)
  {
    [v4 sortUsingSelector:sel_compareStartTime_];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = v4;
      v9 = 0;
      v10 = *v32;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          if (v9)
          {
            [*(*(&v31 + 1) + 8 * i) absoluteStart];
            if (v14 <= v11)
            {
              [v13 absoluteStop];
              if (v11 < v23)
              {
                v11 = v23;
              }
            }

            else
            {
              v15 = [v9 operationState];
              v16 = MEMORY[0x277CBEAA8];
              [v9 absoluteStart];
              v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
              [v9 absoluteStart];
              v19 = [v3 newRangeWithOperationState:v15 startDate:v17 duration:v11 - v18];
              [v5 addObject:v19];

              v20 = v13;
              [v20 absoluteStop];
              v11 = v21;
              v9 = v20;
            }
          }

          else
          {
            v9 = v13;
            [v9 absoluteStop];
            v11 = v22;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);

      if (!v9)
      {
        v4 = v30;
        goto LABEL_21;
      }

      v24 = [v9 operationState];
      v25 = MEMORY[0x277CBEAA8];
      [v9 absoluteStart];
      v6 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
      [v9 absoluteStart];
      v27 = [v3 newRangeWithOperationState:v24 startDate:v6 duration:v11 - v26];
      [v5 addObject:v27];

      v4 = v30;
    }

    else
    {
      v9 = 0;
    }

LABEL_21:
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

id MMCSOperationStateTimeRangeFilteredRanges(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = a1;
  v5 = a2;
  v6 = a3;
  [v5 sortUsingSelector:sel_compareStartTime_];
  if (MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(v5))
  {
    MMCSOperationStateTimeRangeFilteredRanges_cold_2();
  }

  [v6 sortUsingSelector:sel_compareStartTime_];
  if (MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(v6))
  {
    MMCSOperationStateTimeRangeFilteredRanges_cold_1();
  }

  v54 = [MEMORY[0x277CBEB18] array];
  v7 = [v6 count];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v5;
  v52 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v52)
  {
    v8 = 0;
    v51 = *v57;
    do
    {
      v9 = 0;
      do
      {
        if (*v57 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v9;
        v10 = *(*(&v56 + 1) + 8 * v9);
        while (v8 < v7)
        {
          v11 = [v6 objectAtIndexedSubscript:v8];
          v12 = [v11 compareStartTime:v10];
          v13 = [v11 compareStopTime:v10];
          [v11 absoluteStop];
          v15 = v14;
          [v10 absoluteStart];
          v17 = v16;
          [v11 absoluteStart];
          v19 = v18;
          [v10 absoluteStop];
          if (v12 == 1)
          {
            if (v13 != -1)
            {
              if (v19 >= v20)
              {
                [v54 addObject:v10];
              }

              else
              {
                v41 = [v10 operationState];
                v42 = MEMORY[0x277CBEAA8];
                [v10 absoluteStart];
                v43 = [v42 dateWithTimeIntervalSinceReferenceDate:?];
                [v11 absoluteStart];
                v45 = v44;
                [v10 absoluteStart];
                v47 = [v55 newRangeWithOperationState:v41 startDate:v43 duration:v45 - v46];

                [v54 addObject:v47];
              }

LABEL_22:

              break;
            }

            v21 = [v10 operationState];
            v22 = MEMORY[0x277CBEAA8];
            [v10 absoluteStart];
            v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
            [v11 absoluteStart];
            v25 = v24;
            [v10 absoluteStart];
            v27 = [v55 newRangeWithOperationState:v21 startDate:v23 duration:v25 - v26];

            [v54 addObject:v27];
            v28 = [v10 operationState];
            v29 = MEMORY[0x277CBEAA8];
            [v11 absoluteStart];
            v30 = [v29 dateWithTimeIntervalSinceReferenceDate:?];
            [v10 absoluteStop];
            v32 = v31;
            [v11 absoluteStart];
            v34 = [v55 newRangeWithOperationState:v28 startDate:v30 duration:v32 - v33];

            goto LABEL_16;
          }

          if (v13 != -1)
          {
            goto LABEL_22;
          }

          if (v15 > v17)
          {
            v35 = [v10 operationState];
            v36 = MEMORY[0x277CBEAA8];
            [v11 absoluteStop];
            v37 = [v36 dateWithTimeIntervalSinceReferenceDate:?];
            [v10 absoluteStop];
            v39 = v38;
            [v11 absoluteStop];
            v34 = [v55 newRangeWithOperationState:v35 startDate:v37 duration:v39 - v40];

            ++v8;
LABEL_16:
            v10 = v34;
            goto LABEL_18;
          }

          ++v8;
LABEL_18:
        }

        if (v8 >= v7)
        {
          [v54 addObject:v10];
        }

        ++v9;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v52);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v54;
}

BOOL MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 >= 2)
  {
    v4 = v2;
    v5 = 2;
    do
    {
      v6 = [v1 objectAtIndexedSubscript:v5 - 2];
      v7 = [v1 objectAtIndexedSubscript:v5 - 1];
      [v6 absoluteStop];
      v9 = v8;
      [v7 absoluteStart];
      v11 = v10;
      v3 = v9 > v10;

      if (v5 >= v4)
      {
        break;
      }

      ++v5;
    }

    while (v9 <= v11);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t mmcs_proxy_locator_exists()
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v0 = dispatch_semaphore_create(0);
  dispatch_retain(v0);
  v1 = *MEMORY[0x277CBECE8];
  Options = getLocateOptions();
  MutableCopy = CFDictionaryCreateMutableCopy(v1, 0, Options);
  v11 = MEMORY[0x277D85DD0];
  ACSMightCurrentNetworkHaveCachingServer();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v4 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v0, v4))
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CFStringCreateWithFormat(v1, 0, @"ACSMightCurrentNetworkHaveCachingServer took too long (more than 1 second)", v11, 0x40000000, __mmcs_proxy_locator_exists_block_invoke, &unk_279845550, &v12, v0);
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  dispatch_release(v0);
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t MMCSICloudAuthGetRequestOptions()
{
  if (MMCSICloudAuthGetRequestOptions_onceToken != -1)
  {
    MMCSICloudAuthGetRequestOptions_cold_1();
  }

  return 2 * (mmcs_proxy_locator_exists() != 0);
}

uint64_t getLocateOptions()
{
  pthread_once(&sLocatorVars_once, _LocatorVars_init_once);
  result = sLocateOptions;
  if (!sLocateOptions)
  {
    getLocateOptions_cold_1();
  }

  return result;
}

void __mmcs_proxy_locator_exists_block_invoke(uint64_t a1, char a2, CFErrorRef err)
{
  v16 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!err)
  {
    goto LABEL_13;
  }

  Domain = CFErrorGetDomain(err);
  if (CFEqual(Domain, *MEMORY[0x277CBEE48]) && CFErrorGetCode(err) == 60)
  {
    v6 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"might have caching server returned with error: %@", err);
    v8 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v15 = v7;
    v9 = v8;
    v10 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v11 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"might have caching server returned with error: %@", err);
    v12 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v15 = v7;
    v9 = v12;
    v10 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_2577D8000, v9, v10, "%{public}@", buf, 0xCu);
LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_perform_source_invalidate(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performSourceCallbacks[3 * v1 + 1]();
  }

  return result;
}

uint64_t mmcs_perform_timer_invalidate(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTimerCallbacks[4 * v1 + 2]();
  }

  return result;
}

void mmcs_perform_dispatch_timer_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 8));
    *(v1 + 8) = 0;
  }
}

void _mmcs_read_stream_poolCFFinalize(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  mmcs_read_stream_pool_close(a1);
  v2 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 112))
    {
      v3 = *MEMORY[0x277CBECE8];
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v5 = Mutable;
        CFStringAppendFormat(Mutable, 0, @"=== Read Stream Pool %@ stats\n", *(a1 + 16));
        CFStringAppendFormat(v5, 0, @"\ttotal connections: %llu\n", *(a1 + 80));
        CFStringAppendFormat(v5, 0, @"\t   total requests: %llu\n", *(a1 + 88));
        v6 = *(a1 + 80);
        if (v6)
        {
          CFStringAppendFormat(v5, 0, @"\t  reqs/connection: %.03lf\n", *(a1 + 88) / v6);
        }

        alloc = v3;
        v7 = *(a1 + 28);
        if (v7)
        {
          LODWORD(v8) = 0;
          LODWORD(v9) = 0;
          LODWORD(v10) = 0;
          LODWORD(v11) = 0;
          LODWORD(v12) = 0;
          LODWORD(v13) = 0;
          LODWORD(v14) = 0;
          LODWORD(v15) = 0;
          v16 = *(a1 + 112) + 40;
          v17 = 0.0;
          v18 = 0.0;
          v19 = 0.0;
          v20 = 0.0;
          do
          {
            v8 = (*(v16 - 40) + v8);
            v9 = (*(v16 - 36) + v9);
            v10 = (*(v16 - 32) + v10);
            v11 = (*(v16 - 28) + v11);
            v12 = (*(v16 - 24) + v12);
            v19 = v19 + *(v16 - 16);
            v15 = (*(v16 - 8) + v15);
            v20 = v20 + *v16;
            v14 = (*(v16 + 8) + v14);
            v18 = v18 + *(v16 + 16);
            v13 = (*(v16 + 24) + v13);
            v17 = v17 + *(v16 + 32);
            v16 += 80;
            --v7;
          }

          while (v7);
        }

        else
        {
          v15 = 0;
          v14 = 0;
          v13 = 0;
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v9 = 0;
          v8 = 0;
          v20 = 0.0;
          v19 = 0.0;
          v18 = 0.0;
          v17 = 0.0;
        }

        CFStringAppendFormat(v5, 0, @"\t     still in use: %llu\n", *(a1 + 80) - v8);
        if (v9)
        {
          CFStringAppendFormat(v5, 0, @"\t          timeout: %u\n", v9);
        }

        v21 = (v14 + v15 + v13 + v12);
        if (v10)
        {
          CFStringAppendFormat(v5, 0, @"\t           maxout: %u\n", v10);
        }

        if (v11)
        {
          CFStringAppendFormat(v5, 0, @"\t       excess out: %u\n", v11);
        }

        if (v21)
        {
          CFStringAppendFormat(v5, 0, @"\t      error total: %u\n", v21);
        }

        if (v15)
        {
          CFStringAppendFormat(v5, 0, @"\t       conn reset: %u (avg %.3lf sec remaining)\n", v15, v20 / v15);
        }

        if (v14)
        {
          CFStringAppendFormat(v5, 0, @"\t        ssl error: %u (avg %.3lf sec remaining)\n", v14, v18 / v14);
        }

        if (v12)
        {
          CFStringAppendFormat(v5, 0, @"\t     mmcs timeout: %u (avg %.3lf sec remaining)\n", v12, v19 / v12);
        }

        if (v13)
        {
          CFStringAppendFormat(v5, 0, @"\t      other error: %u (avg %.3lf sec remaining)\n", v13, v17 / v13);
        }

        v22 = *(a1 + 28);
        if (v22)
        {
          v23 = 72;
          v24 = 1;
          do
          {
            v25 = *(a1 + 112);
            v26 = v25 + v23;
            if (*(v25 + v23 - 72))
            {
              if (v24 == v22)
              {
                v27 = "+";
              }

              else
              {
                v27 = "";
              }

              CFStringAppendFormat(v5, 0, @"\n\t  times used: %u%s\n", v24, v27);
              CFStringAppendFormat(v5, 0, @"\t       total: %u\n", *(v26 - 72));
              if (*(v26 - 68))
              {
                CFStringAppendFormat(v5, 0, @"\t     timeout: %u\n", *(v26 - 68));
              }

              if (*(v25 + v23 - 64))
              {
                CFStringAppendFormat(v5, 0, @"\t      maxout: %u\n", *(v25 + v23 - 64));
              }

              if (*(v25 + v23 - 60))
              {
                CFStringAppendFormat(v5, 0, @"\t  excess out: %u\n", *(v25 + v23 - 60));
              }

              v28 = v25 + v23;
              v29 = *(v25 + v23 - 40);
              if (v29)
              {
                CFStringAppendFormat(v5, 0, @"\t  conn reset: %u (avg %.3lf sec remaining)\n", v29, *(v28 - 32) / v29);
              }

              v30 = *(v28 - 24);
              if (v30)
              {
                CFStringAppendFormat(v5, 0, @"\t   ssl error: %u (avg %.3lf sec remaining)\n", v30, *(v25 + v23 - 16) / v30);
              }

              v31 = v25 + v23;
              v32 = *(v25 + v23 - 56);
              if (v32)
              {
                CFStringAppendFormat(v5, 0, @"\tmmcs timeout: %u (avg %.3lf sec remaining)\n", v32, *(v31 - 48) / v32);
              }

              v33 = *(v31 - 8);
              if (v33)
              {
                CFStringAppendFormat(v5, 0, @"\t other error: %u (avg %.3lf sec remaining)\n", v33, *(v25 + v23) / v33);
              }
            }

            v22 = *(a1 + 28);
            v23 += 80;
          }

          while (v24++ < v22);
        }

        v35 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = CFStringCreateWithFormat(alloc, 0, @"%@", v5);
          v37 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v36;
            _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        CFRelease(v5);
      }
    }
  }

  v38 = *(a1 + 16);
  if (v38)
  {
    CFRelease(v38);
  }

  *(a1 + 16) = 0;
  v39 = *(a1 + 104);
  if (v39)
  {
    CFDictionaryApplyFunction(v39, _close_http_session_entry, 0);
    v40 = *(a1 + 104);
    if (v40)
    {
      CFRelease(v40);
    }

    *(a1 + 104) = 0;
  }

  v41 = *(a1 + 112);
  if (v41)
  {
    free(v41);
  }

  *(a1 + 112) = 0;
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t _mmcs_perform_targetCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTargetCallbacks[7 * v1 + 4]();
  }

  return result;
}

void _mmcs_request_queueCFFinalize(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = mmcs_logging_logger_default();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = 0;
  v5 = a1 + 1312;
  v27 = a1;
  v6 = a1 + 1392;
  do
  {
    v7 = mmcs_request_type_as_c_string(v4);
    CFStringAppendFormat(Mutable, 0, @"%s statistics\n", v7);
    CFStringAppend(Mutable, @"Queue Depth Distribution\n  Depth Count\n");
    v8 = 0;
    v9 = *(v5 + 8 * v4);
    while (1)
    {
      v10 = *(v9 + 4 * v8);
      if (v10)
      {
        break;
      }

LABEL_7:
      if (++v8 == 21)
      {
        goto LABEL_10;
      }
    }

    if (v8 != 20)
    {
      CFStringAppendFormat(Mutable, 0, @"%6ld  %u\n", v8, v10);
      goto LABEL_7;
    }

    CFStringAppendFormat(Mutable, 0, @"%6ld+ %u\n", 20, v10);
LABEL_10:
    CFStringAppend(Mutable, @"In-flight Request Count Distribution\n  Depth Count\n");
    v11 = 0;
    v12 = *(v6 + 8 * v4);
    while (2)
    {
      v13 = *(v12 + 4 * v11);
      if (!v13)
      {
LABEL_14:
        if (++v11 == 21)
        {
          goto LABEL_17;
        }

        continue;
      }

      break;
    }

    if (v11 != 20)
    {
      CFStringAppendFormat(Mutable, 0, @"%6ld  %u\n", v11, v13);
      goto LABEL_14;
    }

    CFStringAppendFormat(Mutable, 0, @"%6ld+ %u\n", 20, v13);
LABEL_17:
    CFStringAppend(Mutable, @"\n\n");
    ++v4;
  }

  while (v4 != 10);
  v14 = mmcs_logging_logger_default();
  a1 = v27;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CFStringCreateWithFormat(alloc, 0, @"%@", Mutable);
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v15;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_25:
  v17 = 10;
  v18 = a1;
  do
  {
    v19 = v18[2];
    if (v19)
    {
      CFRelease(v19);
    }

    v18[2] = 0;
    v20 = v18[164];
    if (v20)
    {
      free(v20);
    }

    v18[164] = 0;
    v21 = v18[174];
    if (v21)
    {
      free(v21);
    }

    v18[174] = 0;
    ++v18;
    --v17;
  }

  while (v17);
  v22 = *(a1 + 96);
  if (v22)
  {
    CFRelease(v22);
  }

  *(a1 + 96) = 0;
  v23 = *(a1 + 184);
  if (v23)
  {
    v31.length = CFArrayGetCount(*(a1 + 184));
    v31.location = 0;
    CFArrayApplyFunction(v23, v31, _CFArrayApplierFunction_Free, 0);
    v24 = *(a1 + 184);
    if (v24)
    {
      CFRelease(v24);
    }

    *(a1 + 184) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t MMCSEngineCreateWithTargetDispatchQueue(dispatch_queue_t target, const __CFURL *a2, const void *a3, const __CFString *a4, const __CFDictionary *a5, uint64_t *a6)
{
  v11 = dispatch_queue_create_with_target_V2("com.apple.mmcs", 0, target);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v17 = 0;
  if (!mmcs_perform_dispatch_target_create(&v17, v11))
  {
    v14 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_ERROR, "Couldn't allocate mmcs_perform_target", v16, 2u);
    }

    return 0;
  }

  Internal = _MMCSEngineCreateInternal(v17, a2, a3, a4, a5, a6);
  if (v17)
  {
    C3BaseRelease(v17);
  }

  v17 = 0;
  dispatch_release(v12);
  return Internal;
}

uint64_t mmcs_perform_target_create(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_perform_targetGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v6, a3 + 32);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 24) = result + 32;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_dispatch_target_create(uint64_t *a1, const void *a2)
{
  v7 = 0;
  result = mmcs_perform_target_create(&v7, 2, 8);
  if (result)
  {
    v5 = v7;
    if (v7)
    {
      v6 = *(v7 + 24);
      C3BaseRetain(a2);
      *v6 = a2;
      *a1 = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _MMCSEngineCreateInternal(const void *a1, const __CFURL *a2, const void *a3, const __CFString *a4, const __CFDictionary *a5, uint64_t *a6)
{
  v75 = *MEMORY[0x277D85DE8];
  pthread_once(&sOnceForLibrary, _mmcs_init_once_for_library);
  mmcs_proxy_locator_prime();
  v12 = 0;
  if (a2 && a6)
  {
    if (*a6 > 2)
    {
      if (*a6 >= 3 && (a6[2] == 0) == (a6[8] == 0))
      {
        goto LABEL_113;
      }
    }

    else if (!a6[2])
    {
      goto LABEL_113;
    }

    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
    {
      mkdir_recursive(buffer, 0x1C0u);
      mmcs_engine_cleanup_workpath(buffer, @"new");
    }

    v13 = *MEMORY[0x277CBECE8];
    v14 = CKChunkStoreCreate();
    if (v14)
    {
      v15 = v14;
      v16 = C3TypeRegister(&mmcs_engineGetTypeID_typeID);
      Instance = C3TypeCreateInstance_(0, v16, 0xC8uLL);
      if (Instance)
      {
        v12 = Instance;
        *(Instance + 16) = v15;
        CFRetain(v15);
        *(v12 + 56) = a1;
        C3BaseRetain(a1);
        *(v12 + 128) = a2;
        CFRetain(a2);
        *(v12 + 24) = mmcs_job_queue_create();
        *(v12 + 120) = 0;
        *(v12 + 152) = MMCSEngineClientContextCopy(a6);
        callBacks = *byte_2868BF008;
        *(v12 + 160) = CFSetCreateMutable(v13, 0, &callBacks);
        *(v12 + 168) = 1;
        *(v12 + 175) = 1;
        *(v12 + 184) = 1;
        *(v12 + 170) = 0x1000000;
        *(v12 + 72) = a3;
        CFRetain(a3);
        *(v12 + 80) = mmcs_engine_create_client_header_value(a3);
        if (mmcs_request_queue_create((v12 + 48)))
        {
          if (a4)
          {
            *(v12 + 88) = CFStringCreateCopy(v13, a4);
          }

          if (!a5)
          {
            goto LABEL_37;
          }

          *(v12 + 168) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"VerifyPutItemContent", *(v12 + 168));
          *(v12 + 170) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableGetResume", *(v12 + 170));
          *(v12 + 184) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableAttemptedPersistedConnections", *(v12 + 184));
          *(v12 + 171) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableLocallySatisfiedGets", *(v12 + 171));
          *(v12 + 172) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableGetChunks", *(v12 + 172));
          Value = CFDictionaryGetValue(a5, @"kMMCSEnginePropertyTestMaxInflightContainerRequests");
          if (Value)
          {
            v19 = Value;
            v20 = CFGetTypeID(Value);
            if (v20 == CFNumberGetTypeID())
            {
              *valuePtr = 0;
              if (CFNumberGetValue(v19, kCFNumberCFIndexType, valuePtr))
              {
                v21 = *valuePtr;
                if (*valuePtr >= 1)
                {
                  *(v12 + 169) = 1;
                  mmcs_request_queue_set_test_max_requests_inflight(*(v12 + 48), v21);
                  mmcs_request_queue_set_test_requests_inflight(*(v12 + 48), *valuePtr, 1);
                  mmcs_request_queue_set_test_requests_inflight(*(v12 + 48), *valuePtr, 0);
                }
              }
            }
          }

          v22 = CFDictionaryGetValue(a5, @"kMMCSEnginePropertyMaxConsecutiveNetworkErrors");
          if (v22 && (v23 = v22, v24 = CFGetTypeID(v22), v24 == CFNumberGetTypeID()))
          {
            *valuePtr = 0;
            v25 = 3;
            if (CFNumberGetValue(v23, kCFNumberIntType, valuePtr))
            {
              v26 = *valuePtr;
              if ((*valuePtr & 0x80000000) == 0)
              {
                mmcs_request_queue_set_test_max_consecutive_network_errors(*(v12 + 48), *valuePtr);
                v25 = v26;
              }
            }
          }

          else
          {
LABEL_37:
            v25 = 3;
          }

          if (*(v12 + 184))
          {
            mmcs_read_stream_pool_create((v12 + 32), @"icloud_pool_", 20, 0xAu, 1.0);
            mmcs_read_stream_pool_create((v12 + 40), @"vendor_pool_", 20, 0xAu, 1.0);
            v32 = *(v12 + 32);
            if (v32)
            {
              mmcs_read_stream_pool_schedule(v32, *(v12 + 56));
            }

            v33 = *(v12 + 40);
            if (v33)
            {
              mmcs_read_stream_pool_schedule(v33, *(v12 + 56));
            }
          }

          if (!_kMMCSEngineDefaultProtocolVersion)
          {
            MMCSGetDefaultProtocolVersion_cold_1();
          }

          *(v12 + 64) = _kMMCSEngineDefaultProtocolVersion;
          *(v12 + 174) = 1;
          v34 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = CFStringCreateWithFormat(v13, 0, @"Created mmcs engine (%p) '%@' %@ DebugLevel:%ld", v12, a3, a4, gMMCS_DebugLevel);
            v36 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v35;
              _os_log_impl(&dword_2577D8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v35)
            {
              CFRelease(v35);
            }
          }

          v37 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v12 + 168))
            {
              v38 = "true";
            }

            else
            {
              v38 = "false";
            }

            v39 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine verifySentChunks: %s", v38);
            v40 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v39;
              _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v39)
            {
              CFRelease(v39);
            }
          }

          v41 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine maxConsecutiveNetworkErrors: %lu", v25);
            v43 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v42;
              _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v42)
            {
              CFRelease(v42);
            }
          }

          v44 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v12 + 170))
            {
              v45 = "true";
            }

            else
            {
              v45 = "false";
            }

            v46 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableGetResume: %s", v45);
            v47 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v46;
              _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v46)
            {
              CFRelease(v46);
            }
          }

          v48 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v12 + 171))
            {
              v49 = "true";
            }

            else
            {
              v49 = "false";
            }

            v50 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableLocallySatisfiedGets: %s", v49);
            v51 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v50;
              _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v50)
            {
              CFRelease(v50);
            }
          }

          v52 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v12 + 172))
            {
              v53 = "true";
            }

            else
            {
              v53 = "false";
            }

            v54 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableGetChunks: %s", v53);
            v55 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v54;
              _os_log_impl(&dword_2577D8000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v54)
            {
              CFRelease(v54);
            }
          }

          v56 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v12 + 184))
            {
              v57 = "true";
            }

            else
            {
              v57 = "false";
            }

            v58 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableAttemptedPersistedConnections: %s", v57);
            v59 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v58;
              _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v58)
            {
              CFRelease(v58);
            }
          }

          if (!*(v12 + 170))
          {
            v60 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = CFStringCreateWithFormat(v13, 0, @"Cleaning up orphaned temporary files");
              v62 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138543362;
                *&valuePtr[4] = v61;
                _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
              }

              if (v61)
              {
                CFRelease(v61);
              }
            }

            mmcs_engine_cleanup_workpath(buffer, @"tmpm");
          }

          mmcs_report_initialize();
          cf = 0;
          if (mmcs_engine_detect_working_directory_attributes(a2, (v12 + 144), (v12 + 136), (v12 + 137), &cf))
          {
            CFRelease(v15);
            goto LABEL_114;
          }

          v67 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = mmcs_cferror_copy_description(cf);
            *valuePtr = 138543362;
            *&valuePtr[4] = v68;
            _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_ERROR, "Couldn't detect working directory attributes with error: %{public}@", valuePtr, 0xCu);
          }

          v66 = cf;
          if (!cf)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v63 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          v64 = CFStringCreateWithFormat(v13, 0, @"Couldn't allocate requestQueue");
          v65 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v64;
            _os_log_impl(&dword_2577D8000, v65, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (!v64)
          {
            goto LABEL_112;
          }

          v66 = v64;
        }

        CFRelease(v66);
LABEL_112:
        CFRelease(v15);
        C3BaseRelease(v12);
        goto LABEL_113;
      }

      v29 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = CFStringCreateWithFormat(v13, 0, @"Couldn't allocate mmcs_engine");
        v31 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LODWORD(callBacks.version) = 138543362;
          *(&callBacks.version + 4) = v30;
          _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", &callBacks, 0xCu);
        }

        if (v30)
        {
          CFRelease(v30);
        }
      }
    }

    else
    {
      v27 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_113;
      }

      v15 = CFStringCreateWithFormat(v13, 0, @"The chunk store is NULL");
      v28 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(callBacks.version) = 138543362;
        *(&callBacks.version + 4) = v15;
        _os_log_impl(&dword_2577D8000, v28, OS_LOG_TYPE_ERROR, "%{public}@", &callBacks, 0xCu);
      }

      if (!v15)
      {
        goto LABEL_113;
      }
    }

    CFRelease(v15);
LABEL_113:
    v12 = 0;
  }

LABEL_114:
  v69 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t C3TypeCreateInstance_(uint64_t a1, uint64_t a2, size_t a3)
{
  if (HIDWORD(a3))
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a3);
  }

  return v3;
}

uint64_t C3TypeRegister(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    pthread_mutex_lock(&C3TypeRegister_lock);
    if (!*a1)
    {
      *a1 = _CFRuntimeRegisterClass();
    }

    pthread_mutex_unlock(&C3TypeRegister_lock);
    return *a1;
  }

  return result;
}

CFTypeRef C3BaseRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t mmcs_proxy_locator_prime()
{
  pthread_once(&sLocatorVars_once, _LocatorVars_init_once);
  if (!sDummyURL)
  {
    mmcs_proxy_locator_prime_cold_1();
  }

  getLocateOptions();

  return ACSLocateCachingServer();
}

uint64_t mkdir_recursive(uint64_t a1, mode_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(path, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
    v3 = 63;
LABEL_4:
    *__error() = v3;
    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  result = mkpath_np(path, a2);
  v3 = result;
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mmcs_engine_cleanup_workpath(char *a1, const __CFString *a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v32[0] = a1;
  v32[1] = 0;
  v3 = fts_open(v32, 28, 0);
  v4 = fts_read(v3);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = v4;
  v6 = *MEMORY[0x277CBECE8];
  while (1)
  {
    fts_info = v5->fts_info;
    if (fts_info > 0xA)
    {
      if (fts_info != 11)
      {
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    if (fts_info != 8)
    {
      break;
    }

LABEL_12:
    v9 = CFStringCreateWithCString(v6, v5->fts_path, 0x8000100u);
    if (v9)
    {
      v10 = v9;
      PathComponent = XCFStringCopyLastPathComponent(v9);
      if (PathComponent)
      {
        v12 = PathComponent;
        if (CFStringHasPrefix(PathComponent, a2))
        {
          v13 = unlink(v5->fts_path);
          v14 = mmcs_logging_logger_default();
          if (v13)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              fts_path = v5->fts_path;
              v16 = *__error();
              v17 = __error();
              v18 = strerror(*v17);
              v19 = CFStringCreateWithFormat(v6, 0, @"error cleaning up file %s: (%d)%s", fts_path, v16, v18);
              v20 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v31 = v19;
                v21 = v20;
                v22 = OS_LOG_TYPE_ERROR;
                goto LABEL_22;
              }

              goto LABEL_23;
            }
          }

          else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v19 = CFStringCreateWithFormat(v6, 0, @"cleaning up file %s", v5->fts_path);
            v23 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v31 = v19;
              v21 = v23;
              v22 = OS_LOG_TYPE_DEFAULT;
LABEL_22:
              _os_log_impl(&dword_2577D8000, v21, v22, "%{public}@", buf, 0xCu);
            }

LABEL_23:
            if (v19)
            {
              CFRelease(v19);
            }
          }
        }

        CFRelease(v12);
      }

      CFRelease(v10);
    }

LABEL_27:
    v5 = fts_read(v3);
    if (!v5)
    {
      goto LABEL_34;
    }
  }

  if (fts_info != 4 && fts_info != 7)
  {
    goto LABEL_27;
  }

  v24 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v26 = CFStringCreateWithFormat(v6, 0, @"Error in enumeration: fts_errno => %d", v5->fts_errno);
    v27 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

LABEL_34:
  result = fts_close(v3);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef XCFStringCopyLastPathComponent(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  PathComponent = CFURLCopyLastPathComponent(v1);
  CFRelease(v1);
  return PathComponent;
}

uint64_t mmcs_job_queue_create()
{
  v0 = C3TypeRegister(&mmcs_job_queueGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v0, 0x60uLL);
  v2 = Instance;
  if (Instance)
  {
    v3 = pthread_mutex_init((Instance + 16), 0);
    *(v2 + 80) = v3 == 0;
    if (v3 || (*(v2 + 104) = 0, v5 = dispatch_queue_create("com.apple.mmcs.chunking", 0), (*(v2 + 88) = v5) == 0) || (v6 = dispatch_group_create(), (*(v2 + 96) = v6) == 0))
    {
      C3BaseRelease(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t MMCSEngineClientContextCopy(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 > 0xAuLL)
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v7 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v8 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v2 = *(&MMCSEngineClientContextClasses)[*a1];
    v3 = *MEMORY[0x277D85DE8];

    return v2();
  }
}

__n128 MMCSEngineClientContextCopy10(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1080040B4ECD51FuLL);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v2[4] = *(a1 + 64);
    v2[5] = v6;
    v2[2] = result;
    v2[3] = v5;
  }

  return result;
}

uint64_t mmcs_request_queue_create(void *a1)
{
  *a1 = 0;
  v2 = C3TypeRegister(&mmcs_request_queueGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v2, 0x5F8uLL);
  if (result)
  {
    v4 = result;
    if (mmcs_request_queue_init(result))
    {
      *a1 = v4;
      return 1;
    }

    else
    {
      C3BaseRelease(v4);
      return 0;
    }
  }

  return result;
}

BOOL mmcs_request_queue_init(uint64_t a1)
{
  *(a1 + 1480) = 20;
  *(a1 + 1472) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1296) = 3;
  *(a1 + 1528) = mmcs_get_cfindex_from_options(@"throughput.bytesPerPeriod", 0, 3750000);
  v2 = 0;
  *(a1 + 1536) = mmcs_get_cfindex_from_options(@"throughput.period", 0, 30);
  v3 = *MEMORY[0x277CBECE8];
  v4 = 1312;
  v11 = *&off_2868BF230;
  v12 = xmmword_2868BF220;
  v5 = off_2868BF240;
  while (1)
  {
    v6 = (a1 + 4 * v2);
    v6[26] = 0;
    v6[36] = mmcs_request_queue_max_requests_inflight_for_request_type(v2);
    v6[371] = mmcs_request_queue_max_requests_inflight_for_request_type(v2);
    *&callBacks.version = v12;
    *&callBacks.release = v11;
    callBacks.compare = v5;
    v7 = a1 + 8 * v2;
    *(v7 + 16) = CFBinaryHeapCreate(v3, 0, &callBacks, 0);
    *(a1 + v4) = malloc_type_calloc(1uLL, 0x54uLL, 0x100004052888210uLL);
    v8 = malloc_type_calloc(1uLL, 0x54uLL, 0x100004052888210uLL);
    *(a1 + v4 + 80) = v8;
    if (!*(v7 + 16) || !v8 || !*(a1 + v4))
    {
      break;
    }

    ++v2;
    v4 += 8;
    if (v2 == 10)
    {
      valueCallBacks = *byte_2868BF248;
      v9 = CFDictionaryCreateMutable(v3, 0, 0, &valueCallBacks);
      *(a1 + 96) = v9;
      return v9 != 0;
    }
  }

  return 0;
}

uint64_t mmcs_get_cfindex_from_options(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = mmcs_copy_cftype_from_options_object_for_key(a1, a2, 0);
  cfindex_from_cftype_using_description = mmcs_get_cfindex_from_cftype_using_description(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return cfindex_from_cftype_using_description;
}

CFTypeRef mmcs_copy_cftype_from_options_object_for_key(CFStringRef key, CFDictionaryRef theDict, CFTypeRef cf)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!key)
  {
    goto LABEL_11;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      v6 = Value;
      CFRetain(Value);
      goto LABEL_14;
    }
  }

  v7 = CFPreferencesCopyAppValue(key, @"com.apple.mmcs");
  if (v7)
  {
    v6 = v7;
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found UserDefaults Override: %@:%@", key, v6);
      v10 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
LABEL_11:
    if (cf)
    {
      CFRetain(cf);
      v6 = cf;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mmcs_get_cfindex_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v4 = mmcs_copy_cfnumber_from_cftype_using_description(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    valuePtr = 0;
    if (!CFNumberGetValue(v4, kCFNumberCFIndexType, &valuePtr))
    {
      valuePtr = a3;
    }

    CFRelease(v5);
    return valuePtr;
  }

  return a3;
}

CFNumberRef mmcs_copy_cfnumber_from_cftype_using_description(uint64_t a1, const __CFString *a2, CFTypeRef cf)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_23;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    CFRetain(a2);
    NumberFromString = a2;
    goto LABEL_26;
  }

  v8 = CFBooleanGetTypeID();
  if (v8 == CFGetTypeID(a2))
  {
    *valuePtr = CFBooleanGetValue(a2);
    NumberFromString = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, valuePtr);
    goto LABEL_26;
  }

  v9 = CFStringGetTypeID();
  if (v9 != CFGetTypeID(a2))
  {
    v18 = CFGetTypeID(a2);
    v19 = CFCopyTypeIDDescription(v18);
    v20 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to recognized type id '%@' for BOOLean decoding for key '%@'.", v19, a1);
      v22 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v21;
        _os_log_impl(&dword_2577D8000, v22, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    if (!v19)
    {
      goto LABEL_23;
    }

    v17 = v19;
LABEL_22:
    CFRelease(v17);
LABEL_23:
    if (cf)
    {
      CFRetain(cf);
      NumberFromString = cf;
    }

    else
    {
      NumberFromString = 0;
    }

    goto LABEL_26;
  }

  v10 = CFLocaleCreate(0, @"en_US");
  if (!v10 || (v11 = v10, v12 = *MEMORY[0x277CBECE8], v13 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v10, kCFNumberFormatterNoStyle), CFRelease(v11), !v13) || (NumberFromString = CFNumberFormatterCreateNumberFromString(v12, v13, a2, 0, 1uLL), CFRelease(v13), !NumberFromString))
  {
    v14 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Option %@ had CFStringRef %@ but couldn't parse as a number.", a1, a2);
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138543362;
      *&valuePtr[4] = v15;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
    }

    if (!v15)
    {
      goto LABEL_23;
    }

    v17 = v15;
    goto LABEL_22;
  }

LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
  return NumberFromString;
}

uint64_t mmcs_request_queue_max_requests_inflight_for_request_type(uint64_t a1)
{
  activity_type = mmcs_request_type_get_activity_type(a1);
  if (activity_type == 1)
  {
    behavior_type = mmcs_request_type_get_behavior_type(a1);
    if (behavior_type >= 5)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_1();
    }
  }

  else
  {
    if (activity_type)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_3();
    }

    behavior_type = mmcs_request_type_get_behavior_type(a1);
    if (behavior_type >= 5)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_2();
    }
  }

  return dword_25785FB40[behavior_type];
}

uint64_t mmcs_request_type_get_activity_type(uint64_t a1)
{
  if (a1 >= 0)
  {
    return a1 & 1;
  }

  else
  {
    return -(a1 & 1);
  }
}

uint64_t mmcs_read_stream_pool_create(void *a1, const void *a2, int a3, unsigned int a4, double a5)
{
  *a1 = 0;
  v10 = C3TypeRegister(&mmcs_read_stream_poolGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v10, 0x68uLL);
  if (result)
  {
    v12 = result;
    if (mmcs_read_stream_pool_init(result, a2, a3, a4, a5))
    {
      *a1 = v12;
      return 1;
    }

    else
    {
      C3BaseRelease(v12);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_read_stream_pool_init(uint64_t a1, CFTypeRef cf, int a3, unsigned int a4, double a5)
{
  if (!a3)
  {
    return 0;
  }

  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *byte_2868BF1F8;
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &v11);
  *(a1 + 104) = result;
  if (result)
  {
    v10 = mmcs_logging_logger_default();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    result = malloc_type_calloc(1uLL, 80 * a4, 0x1000040B065FA3FuLL);
    *(a1 + 112) = result;
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mmcs_read_stream_pool_schedule(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return 0;
  }

  *(a1 + 40) = cf;
  C3BaseRetain(cf);
  v4 = *(a1 + 40);
  v9 = 0;
  v8 = a1;
  v10 = mmcs_read_stream_pool_discard_recycled_streams;
  result = mmcs_perform_target_create_source(v4, a1 + 48, &v8, v5);
  if (result)
  {
    if (!*(a1 + 48))
    {
      return 0;
    }

    v7 = *(a1 + 40);
    v9 = 0;
    v8 = a1;
    v10 = mmcs_read_stream_pool_gc_timer_fired;
    result = mmcs_perform_target_create_timer(v7, a1 + 56, &v8, v6);
    if (result)
    {
      mmcs_read_stream_pool_update_gc_fire_date(a1, 0);
      return 1;
    }
  }

  return result;
}

uint64_t mmcs_perform_dispatch_source_create(void **a1, _OWORD *a2, NSObject *a3)
{
  *a1 = 0;
  context = 0;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = mmcs_perform_source_create(&context, 2, 8, v10);
  v7 = context;
  if (v6 && context)
  {
    v8 = *(context + 7);
    *v8 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, a3);
    C3BaseRetain(context);
    dispatch_set_context(*v8, context);
    dispatch_set_finalizer_f(*v8, mmcs_perform_source_context_finalize_callback);
    dispatch_source_set_event_handler_f(*v8, mmcs_perform_dispatch_source_perform_callback);
    dispatch_resume(*v8);
    C3BaseRetain(context);
    v7 = context;
    *a1 = context;
  }

  if (v7)
  {
    C3BaseRelease(v7);
  }

  return v6;
}

uint64_t mmcs_perform_dispatch_target_create_source(uint64_t a1, void **a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_dispatch_target_create_source_cold_1();
  }

  v4 = *v3;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return mmcs_perform_dispatch_source_create(a2, v7, v4);
}

uint64_t mmcs_perform_source_create(uint64_t *a1, int a2, uint64_t a3, _OWORD *a4)
{
  *a1 = 0;
  v8 = C3TypeRegister(&mmcs_perform_sourceGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v8, a3 + 64);
  if (result)
  {
    v10 = result;
    *(result + 16) = a2;
    v11 = a4[1];
    *(result + 24) = *a4;
    *(result + 40) = v11;
    v12 = *(result + 32);
    if (v12)
    {
      if (*(result + 24))
      {
        v12();
      }
    }

    *(v10 + 56) = v10 + 64;
    *a1 = v10;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_target_create_source(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = _performTargetCallbacks[7 * v4 + 5];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return (v5)(a1, a2, v8, a4);
}

void C3BaseRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_perform_target_create_timer(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = _performTargetCallbacks[7 * v4 + 6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return (v5)(a1, a2, v8, a4);
}

uint64_t mmcs_perform_timer_create(uint64_t *a1, int a2, uint64_t a3, _OWORD *a4)
{
  *a1 = 0;
  v8 = C3TypeRegister(&mmcs_perform_timerGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v8, a3 + 64);
  if (result)
  {
    v10 = result;
    *(result + 16) = a2;
    v11 = a4[1];
    *(result + 24) = *a4;
    *(result + 40) = v11;
    v12 = *(result + 32);
    if (v12)
    {
      if (*(result + 24))
      {
        v12();
      }
    }

    *(v10 + 56) = v10 + 64;
    *a1 = v10;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_dispatch_timer_create(CFTypeRef *a1, _OWORD *a2, NSObject *a3)
{
  *a1 = 0;
  cf = 0;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = mmcs_perform_timer_create(&cf, 2, 24, v10);
  v7 = cf;
  if (v6 && cf)
  {
    v8 = *(cf + 7);
    dispatch_retain(a3);
    *v8 = a3;
    mmcs_perform_timer_set_next_fire_date(cf);
    C3BaseRetain(cf);
    v7 = cf;
    *a1 = cf;
  }

  if (v7)
  {
    C3BaseRelease(v7);
  }

  return v6;
}

uint64_t mmcs_perform_dispatch_target_create_timer(uint64_t a1, CFTypeRef *a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_dispatch_target_create_timer_cold_1();
  }

  v4 = *v3;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return mmcs_perform_dispatch_timer_create(a2, v7, v4);
}

uint64_t mmcs_perform_timer_set_next_fire_date(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTimerCallbacks[4 * v1 + 1]();
  }

  return result;
}

void mmcs_perform_dispatch_timer_set_next_fire_date(void *a1, CFAbsoluteTime a2)
{
  v3 = a1[7];
  *(v3 + 16) = a2;
  if (a2 >= 6.3113904e10)
  {
    v6 = -1;
  }

  else
  {
    if (CFAbsoluteTimeGetCurrent() >= a2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(v3 + 16);
      v5 = ((v4 - CFAbsoluteTimeGetCurrent()) * 1000000000.0);
    }

    v6 = dispatch_time(0, v5);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    *(v3 + 8) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *v3);
    C3BaseRetain(a1);
    dispatch_set_context(*(v3 + 8), a1);
    dispatch_set_finalizer_f(*(v3 + 8), mmcs_perform_timer_context_finalize_callback);
    dispatch_source_set_event_handler_f(*(v3 + 8), mmcs_perform_dispatch_timer_perform_callback);
    dispatch_source_set_timer(*(v3 + 8), v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = *(v3 + 8);

    dispatch_resume(v8);
  }
}

void mmcs_read_stream_pool_update_gc_fire_date(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((CFDictionaryGetCount(*(a1 + 104)) > 0 || (v12 = *(a1 + 64)) != 0 && CFArrayGetCount(v12) >= 1) && (v4 = (a1 + 56), *(a1 + 56)))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = Current + 30.0;
    if (a2 || ((next_fire_date = mmcs_perform_timer_get_next_fire_date(*v4), next_fire_date >= Current) ? (v8 = next_fire_date <= v6) : (v8 = 0), !v8))
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v9 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@ setting next fire date %lf (%.3lf sec)", *(a1 + 16), Current + 30.0, v6 - Current);
          v11 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

LABEL_18:
          *buf = 138543362;
          v16 = v10;
          _os_log_impl(&dword_2577D8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_19:
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_21;
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v4 = (a1 + 56);
    if (*(a1 + 56))
    {
      if (gMMCS_DebugLevel >= 4)
      {
        v13 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@ setting next fire date to the distant future since there is no potential garbage.", *(a1 + 16));
          v11 = mmcs_logging_logger_default();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

LABEL_21:
      mmcs_perform_timer_set_next_fire_date(*v4);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_engine_detect_working_directory_attributes(const __CFURL *a1, uint64_t *a2, BOOL *a3, _BYTE *a4, CFErrorRef *a5)
{
  v60 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4)
  {
    mmcs_engine_detect_working_directory_attributes_cold_1();
  }

  bzero(buffer, 0x400uLL);
  if (!a1)
  {
    v29 = @"Working Directory Required";
    v30 = 40;
LABEL_19:
    v31 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v30, v29, v10, v11, v12, v13, v14, f_fstypename);
    goto LABEL_20;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v31 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Error Retrieving File System Path for Working Directory, %@", v15, v16, v17, v18, v19, a1);
LABEL_20:
    v28 = v31;
LABEL_21:
    result = 0;
    if (a5)
    {
      *a5 = v28;
    }

    goto LABEL_23;
  }

  bzero(&v58, 0x878uLL);
  if (statfs(buffer, &v58))
  {
    v20 = __error();
    v21 = *v20;
    v22 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v20, 0);
    strerror(v21);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v22, @"Stating File System for Working Directory (%s) Failed with Error (%s)", v23, v24, v25, v26, buffer);
    goto LABEL_8;
  }

  if (!v58.f_bsize)
  {
    LOBYTE(f_fstypename) = 0;
    v29 = @"Invalid File System Block Size: %llu";
LABEL_18:
    v30 = 39;
    goto LABEL_19;
  }

  *a2 = v58.f_bsize;
  v49 = 0;
  v48 = xmmword_25785F8A0;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  if (getattrlist(v58.f_mntonname, &v48, &v45, 0x24uLL, 0))
  {
    v32 = __error();
    v33 = *v32;
    v22 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v32, 0);
    v44 = strerror(v33);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v22, @"Retrieving File System Attributes of working directory failed: %s", v34, v35, v36, v37, v44);
LABEL_8:
    v28 = error_with_underlying_error;
    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_21;
  }

  if ((BYTE4(v46) & 0x40) == 0)
  {
    f_fstypename = v58.f_fstypename;
    v29 = @"Unknown Support of VOL_CAP_FMT_SPARSE_FILES for %s";
    goto LABEL_18;
  }

  *a4 = BYTE4(v45) & 0x40;
  *a3 = (*v58.f_fstypename ^ 0x73667061 | v58.f_fstypename[4]) == 0;
  v40 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = "Supported";
    v42 = *a2;
    if (!*a4)
    {
      v41 = "Not Supported";
    }

    *buf = 136446978;
    v51 = v58.f_fstypename;
    v52 = 2082;
    v53 = v41;
    v54 = 2048;
    v55 = v42;
    v56 = 2048;
    f_bfree = v58.f_bfree;
    _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_DEFAULT, "File System %{public}s, Sparse Files %{public}s, Block Size %llu, Free Blocks %llu", buf, 0x2Au);
  }

  result = 1;
LABEL_23:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void MMCSEngineDestroy(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 120))
  {
    if (*(a1 + 16))
    {
      CKCommitDatabaseTransactions();
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      ++*(a1 + 112);
    }

    v2 = mmcs_logging_logger_default();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    v4 = MEMORY[0x277CBECE8];
    if (v3)
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Closing mmcs (%p)", a1);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 120) = 1;
    mmcs_report_close();
    CFSetApplyFunction(*(a1 + 160), _log_in_use, 0);
    _mmcs_engine_cancel_requests(a1, 0);
    v7 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFStringCreateWithFormat(*v4, 0, @"Waiting for mmcs job queue");
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    mmcs_job_queue_sync_halt(*(a1 + 24));
    v10 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CFStringCreateWithFormat(*v4, 0, @"mmcs job queue halted");
      v12 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    if (*(a1 + 16))
    {
      CKChunkStoreInvalidate();
    }

    C3BaseRelease(a1);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void _mmcs_engine_cancel_requests(uint64_t a1, void *a2)
{
  if (CFSetGetCount(*(a1 + 160)) >= 1)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 160));
    CFSetApplyFunction(Copy, mmcs_request_cancel_with_requestor, a2);
    if (Copy)
    {

      CFRelease(Copy);
    }
  }
}

intptr_t mmcs_job_queue_sync_halt(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 104))
  {
    *(a1 + 104) = 1;
  }

  pthread_mutex_unlock((a1 + 16));
  v2 = *(a1 + 96);
  v3 = dispatch_time(0, 60000000000);
  result = dispatch_group_wait(v2, v3);
  if (result)
  {
    v5 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "Timed out in mmcs_job_queue_sync_halt. Exiting the process.", v6, 2u);
    }

    exit(1);
  }

  return result;
}

void _mmcs_engineCFFinalize(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[20] = 0;
  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[10] = 0;
  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[9] = 0;
  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[11] = 0;
  v6 = a1[7];
  if (v6)
  {
    C3BaseRelease(v6);
  }

  a1[7] = 0;
  v7 = a1[16];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[19];
  if (v8)
  {
    MMCSEngineClientContextFree(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[2] = 0;
  v10 = a1[3];
  if (v10)
  {
    C3BaseRelease(v10);
  }

  a1[3] = 0;
  v11 = a1[22];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[22] = 0;
  v12 = a1[4];
  if (v12)
  {
    mmcs_read_stream_pool_close(v12);
    v13 = a1[4];
    if (v13)
    {
      C3BaseRelease(v13);
    }

    a1[4] = 0;
  }

  v14 = a1[5];
  if (v14)
  {
    mmcs_read_stream_pool_close(v14);
    v15 = a1[5];
    if (v15)
    {
      C3BaseRelease(v15);
    }

    a1[5] = 0;
  }

  v16 = a1[6];
  if (v16)
  {
    C3BaseRelease(v16);
  }

  a1[6] = 0;
  a1[8] = 0;
  a1[24] = 0;
  a1[25] = 0;
}

void MMCSEngineClientContextFree(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*a1 > 0xAuLL)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v2 = (&MMCSEngineClientContextClasses)[*a1][1];
    v3 = *MEMORY[0x277D85DE8];

    v2();
  }
}

void _mmcs_job_queueCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 96) = 0;
  }

  if (*(a1 + 80))
  {
    pthread_mutex_destroy((a1 + 16));
    *(a1 + 80) = 0;
  }
}

uint64_t mmcs_read_stream_pool_close(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    mmcs_perform_source_invalidate(v2);
    v3 = a1[6];
    if (v3)
    {
      C3BaseRelease(v3);
    }

    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    mmcs_perform_timer_invalidate(v4);
    v5 = a1[7];
    if (v5)
    {
      C3BaseRelease(v5);
    }

    a1[7] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    C3BaseRelease(v6);
  }

  a1[5] = 0;
  return 1;
}

void mmcs_perform_dispatch_source_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    dispatch_source_cancel(*v1);
    dispatch_release(*v1);
    *v1 = 0;
  }
}

void mmcs_perform_dispatch_target_finalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*v1)
  {
    dispatch_release(*v1);
    *v1 = 0;
  }
}

char *mmcs_request_type_as_c_string(uint64_t a1)
{
  v1 = a1 / 2;
  if (a1 % 2 == 1)
  {
    if (v1 >= 5)
    {
      mmcs_request_type_as_c_string_cold_1();
    }

    v2 = off_279846970;
  }

  else
  {
    if (a1 % 2)
    {
      mmcs_request_type_as_c_string_cold_3();
    }

    if (v1 >= 5)
    {
      mmcs_request_type_as_c_string_cold_2();
    }

    v2 = off_279846948;
  }

  return v2[v1];
}

void mmcs_perform_source_context_finalize_callback(CFTypeRef cf)
{
  if (cf)
  {
    C3BaseRelease(cf);
  }
}

uint64_t _mmcs_perform_sourceCFFinalize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = (_performSourceCallbacks[3 * v2 + 2])(result);
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    result = *(v1 + 24);
    if (result)
    {

      return v3();
    }
  }

  return result;
}

void mmcs_perform_dispatch_source_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_timer_context_finalize_callback(CFTypeRef cf)
{
  if (cf)
  {
    C3BaseRelease(cf);
  }
}

void mmcs_perform_dispatch_timer_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1[1];
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(v1[1]);
    v1[1] = 0;
  }

  if (*v1)
  {
    dispatch_release(*v1);
    *v1 = 0;
  }
}

uint64_t _mmcs_perform_timerCFFinalize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = (_performTimerCallbacks[4 * v2 + 3])(result);
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    result = *(v1 + 24);
    if (result)
    {

      return v3();
    }
  }

  return result;
}

void mmcs_warm(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, CFDictionaryRef))
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_2577D8000, "mmcs-warm", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "mmcs_warm starting", buf, 2u);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"kMMCSWarmContainerState");
    if (Value)
    {
      v14 = Value;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v14))
      {
        v16 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
        if (v16)
        {
          if (v6)
          {
            os_retain(v6);
          }

          *v16 = v6;
          v16[1] = a1;
          v16[2] = a3;
        }

        mmcs_http_warm(v14, v16, mmcs_warm_complete);
        if (!v6)
        {
          goto LABEL_21;
        }

LABEL_20:
        os_release(v6);
        goto LABEL_21;
      }
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"kMMCSWarmContainerHostname required but not provided.", v9, v10, v11, v12, v13, v22);
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 40, @"Missing required parameters.");
  }

  v18 = error;
  if (!error)
  {
    mmcs_warm_cold_2();
  }

  if (a3)
  {
    Domain = CFErrorGetDomain(error);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      mmcs_warm_cold_1();
    }

    values = v18;
    *buf = @"kMMCSResultError";
    v20 = CFDictionaryCreate(*MEMORY[0x277CBECE8], buf, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a3(a1, v20);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  CFRelease(v18);
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  os_activity_scope_leave(&state);
  v21 = *MEMORY[0x277D85DE8];
}

void mmcs_warm_complete(uint64_t a1, const void *a2)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*a1, &state);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"kMMCSResultError", a2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v6(*(a1 + 8), v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
  v7 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_DEFAULT, "mmcs_warm complete", v8, 2u);
  }

  os_activity_scope_leave(&state);
}

void mmcs_http_warm(void *a1, uint64_t a2, void (*a3)(uint64_t, CFErrorRef))
{
  v5 = a1;
  v6 = [C2WarmRequest alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __mmcs_http_warm_block_invoke;
  v9[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v9[5] = a2;
  v7 = [(C2WarmRequest *)v6 initWithData:v5 callback:v9];

  if (v7)
  {
    [(C2WarmRequest *)v7 send];
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"Error generating C2WarmRequest.");
    a3(a2, error);
    if (error)
    {
      CFRelease(error);
    }
  }
}

void mmcs_register_request_abort(uint64_t a1, CFErrorRef err, void (*a3)(uint64_t, CFDictionaryRef))
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (err && a3)
  {
    Domain = CFErrorGetDomain(err);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      mmcs_register_request_abort_cold_1();
    }

    values = err;
    keys[0] = @"kMMCSResultError";
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a3(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t mmcs_register_request_is_using_itemid(uint64_t a1, uint64_t a2)
{
  result = CFArrayGetCount(*(*(a1 + 304) + 8));
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      if (*(a2 + 8))
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), i);
      valuePtr = 0;
      result = CFNumberGetValue(ValueAtIndex[2], kCFNumberSInt64Type, &valuePtr);
      if (result)
      {
        if (valuePtr == *a2)
        {
          *(a2 + 8) = 1;
        }
      }
    }
  }

  return result;
}

void mmcs_register_request_append_description(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = _mmcs_request_copy_description(*a1);
    if (v2)
    {
      v3 = v2;
      CFStringAppend(*(a1 + 16), v2);

      CFRelease(v3);
    }
  }
}

void mmcs_register_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 304);
  }

  *(v2 + 8) = 0;
  v4 = *(a1 + 304);
  v5 = *(v4 + 40);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 304);
  }

  *(v4 + 40) = 0;
  v6 = *(a1 + 304);
  v7 = *(v6 + 24);
  if (v7)
  {
    C3BaseRelease(v7);
    v6 = *(a1 + 304);
  }

  *(v6 + 24) = 0;
}

uint64_t mmcs_register_request_stop_with_error(uint64_t a1, const void *a2)
{
  if (*(a1 + 144))
  {
    return 0;
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (a2)
  {
    CFRetain(a2);
    *(a1 + 152) = a2;
    v5 = (a1 + 152);
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Register request was cancelled.");
    CFRetain(error);
    *(a1 + 152) = error;
    v5 = (a1 + 152);
    if (error)
    {
      CFRelease(error);
    }
  }

  v7 = *(*(a1 + 304) + 24);
  if (v7)
  {
    v8 = *v5;
    mmcs_chunk_job_cancel(v7);
  }

  mmcs_register_request_cleanup(a1);
  C3BaseRelease(a1);
  return 1;
}

void mmcs_register_request_cleanup(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 200), &state);
  mmcs_engine_commit_if_anything_outstanding(*(a1 + 32));
  *(*(a1 + 304) + 32) = 0;
  v28.opaque[0] = 0;
  v28.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1);
  os_activity_scope_enter(request_activity_marker, &v28);
  v3 = mmcs_request_copy_description(a1);
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"(");
  v6 = *(*(a1 + 304) + 8);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), i);
        v11 = mmcs_register_item_copy_short_description(ValueAtIndex);
        if (i)
        {
          CFStringAppend(Mutable, @", ");
        }

        CFStringAppend(Mutable, v11);
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  CFStringAppend(Mutable, @""));
  v12 = CFStringCreateWithFormat(v4, 0, @"%@ %@", v3, Mutable);
  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v13 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CFStringCreateWithFormat(v4, 0, @"Engine %p completed request %@", *(a1 + 32), v12);
    v15 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v16 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = v16;
  v18 = *(*(a1 + 304) + 40);
  if (v18)
  {
    goto LABEL_23;
  }

  if (*(a1 + 144))
  {
    v18 = *(a1 + 152);
    if (!v18)
    {
      mmcs_register_request_cleanup_cold_1();
    }

LABEL_23:
    CFDictionarySetValue(v16, @"kMMCSResultError", v18);
    goto LABEL_24;
  }

  v23 = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
  v24 = *(*(a1 + 304) + 8);
  v34.length = CFArrayGetCount(v24);
  v34.location = 0;
  CFArrayApplyFunction(v24, v34, _add_item_result, v23);
  CFDictionarySetValue(v17, @"kMMCSRequestOptionItemOptions", v23);
  if (v23)
  {
    CFRelease(v23);
  }

  if (*(*(a1 + 304) + 48))
  {
    AuthorizePutRequestBody = mmcs_register_request_create_AuthorizePutRequestBody(a1);
    if (AuthorizePutRequestBody)
    {
      v26 = AuthorizePutRequestBody;
      CFDictionarySetValue(v17, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", AuthorizePutRequestBody);
      CFRelease(v26);
    }
  }

LABEL_24:
  v19 = mmcs_request_copy_description(a1);
  v20 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 32);
    *buf = 134218242;
    v30 = v21;
    v31 = 2114;
    v32 = v19;
    _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_INFO, "Engine %p request will notify request %{public}@ done", buf, 0x16u);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  (**(a1 + 304))(*(a1 + 40), v17);
  if (v17)
  {
    CFRelease(v17);
  }

  os_activity_scope_leave(&v28);
  mmcs_engine_remove_request(*(a1 + 32), a1);
  os_activity_scope_leave(&state);
  v22 = *MEMORY[0x277D85DE8];
}

void mmcs_register_items(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(uint64_t, CFDictionaryRef))
{
  v130 = *MEMORY[0x277D85DE8];
  v8 = _os_activity_create(&dword_2577D8000, "mmcs-register-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v126 = 0;
  v124.opaque[0] = 0;
  if (!mmcs_request_allocate(&v124, 5, 64) || (v14 = v124.opaque[0]) == 0)
  {
    v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Cannot allocate register request", v9, v10, v11, v12, v13, v112);
    v25 = v24;
    v14 = 0;
LABEL_106:
    v126 = v24;
    goto LABEL_107;
  }

  if (!_mmcs_request_init(v124.opaque[0], a1, a2, a3, 0, 0, v8, &v126))
  {
    v26 = @"Cannot initialize register request";
    v27 = 37;
LABEL_105:
    v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v27, v26, v15, v16, v17, v18, v19, v112);
    v25 = v24;
    goto LABEL_106;
  }

  **(v14 + 304) = a4;
  allocator = *MEMORY[0x277CBECE8];
  *(*(v14 + 304) + 8) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &_register_items_array_callbacks);
  *(*(v14 + 304) + 48) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", 0);
  v20 = 1;
  *(*(v14 + 304) + 49) = 1;
  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionUseFORD", 0);
  Value = CFDictionaryGetValue(a3, @"kMMCSRequestOptionReturnOpaqueCloneContext");
  if (Value)
  {
    v22 = Value;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v22))
    {
      CFRetain(v22);
      v20 = 0;
      *(*(v14 + 304) + 56) = v22;
    }

    else
    {
      v20 = 1;
    }
  }

  v28 = CFDictionaryGetValue(a3, @"kMMCSRequestOptionItemOptions");
  if (!v28 || (v29 = v28, v30 = CFArrayGetTypeID(), v30 != CFGetTypeID(v29)))
  {
    v112 = a3;
    v26 = @"expected item options array in request options %@";
LABEL_104:
    v27 = 40;
    goto LABEL_105;
  }

  Count = CFArrayGetCount(v29);
  if (!Count)
  {
    v112 = a3;
    v26 = @"did not expect empty item options array in request options %@";
    goto LABEL_104;
  }

  v32 = Count;
  v113 = a2;
  v114 = v20;
  v117 = a1;
  v115 = a4;
  if (Count < 1)
  {
LABEL_42:
    v71 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionRetrievePastRegistration", 0);
    v72 = *(v14 + 304);
    if (!v71)
    {
      *(v72 + 32) = 0;
      *(v14 + 224) = voucher_copy();
      mmcs_engine_add_request(v117, v14);
      mmcs_register_items_schedule_job(v14);
      goto LABEL_110;
    }

    *(v72 + 32) = 1;
    mmcs_engine_add_request(v117, v14);
    v73 = CFArrayGetCount(*(*(v14 + 304) + 8));
    a2 = v113;
    if (v73 < 1)
    {
LABEL_102:
      mmcs_register_request_cleanup(v14);
      goto LABEL_109;
    }

    v74 = v73;
    v75 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(v14 + 304) + 8), v75);
      v124.opaque[0] = 0;
      v124.opaque[1] = 0;
      os_activity_scope_enter(*(ValueAtIndex + 18), &v124);
      v125 = 0;
      if (!CFNumberGetValue(*(ValueAtIndex + 2), kCFNumberSInt64Type, &v125))
      {
        v96 = @"Error with itemID.";
LABEL_72:
        *(ValueAtIndex + 16) = mmcs_cferror_create_error(@"com.apple.mmcs", 8, v96);
        os_activity_scope_leave(&v124);
        goto LABEL_101;
      }

      v77 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v125;
        v78 = CFStringCreateWithFormat(allocator, 0, @"Attempting to retrieve past-registration for itemId:%lld");
        v79 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v129 = v78;
          _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v78)
        {
          CFRelease(v78);
        }
      }

      valuePtr = 0;
      v80 = *(v117 + 16);
      if ((CKGetRegisteredFileMetadata() & 1) == 0)
      {
        v96 = @"Error occurred locating file signature.";
        goto LABEL_72;
      }

      v81 = CKFileDigestResultsFileVerificationKey();
      mmcs_register_item_set_file_verification_key(ValueAtIndex, v81);
      v82 = CKFileDigestResultsFileSignature();
      v83 = CKFileSchemeAndSignatureCopyCString();
      v84 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v83;
        v85 = CFStringCreateWithFormat(allocator, 0, @"sig:%s");
        v86 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v129 = v85;
          _os_log_impl(&dword_2577D8000, v86, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v85)
        {
          CFRelease(v85);
        }
      }

      v87 = v74;
      if (v83)
      {
        free(v83);
      }

      v88 = CKFileSchemeAndSignatureSize();
      *(ValueAtIndex + 12) = CFDataCreate(allocator, v82, v88);
      v122 = CKFileDigestResultsFileLength();
      *(ValueAtIndex + 13) = CFNumberCreate(allocator, kCFNumberSInt64Type, &v122);
      v89 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v112 = v122;
        v90 = CFStringCreateWithFormat(allocator, 0, @"len:%llu");
        v91 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v129 = v90;
          _os_log_impl(&dword_2577D8000, v91, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v90)
        {
          CFRelease(v90);
        }
      }

      v120 = 0;
      v121 = 0;
      v92 = *(v117 + 16);
      v93 = CKGetRegisteredChunksForItemID();
      if (v93 && v121)
      {
        if (v120)
        {
          v94 = 0;
          v95 = 0;
          do
          {
            v95 += CKRegisteredChunkLength();
            CKRegisteredChunkSize();
            ++v94;
          }

          while (v94 < v120);
        }

        else
        {
          v95 = 0;
        }

        if (((v97 = CKFileDigestResultsFileSignature()) != 0 && (*v97 & 0x7F) == 4 || CKFileDigestResultsHasFileLength()) && v95 != CKFileDigestResultsFileLength())
        {
          v98 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_FAULT, "fileLengthCheck != CKFileDigestResultsFileLength(fileDigestResults)", buf, 2u);
          }
        }
      }

      v99 = v121;
      if (!*(ValueAtIndex + 137))
      {
        break;
      }

      if (v121)
      {
        v100 = v93;
      }

      else
      {
        v100 = 0;
      }

      a4 = v115;
      if (v100 != 1)
      {
        *(ValueAtIndex + 16) = mmcs_cferror_create_error(@"com.apple.mmcs", 8, @"Error occurred locating chunk list.");
        v99 = v121;
LABEL_88:
        if (v99)
        {
          free(v99);
        }

        goto LABEL_90;
      }

      mmcs_print_registered_chunk_list(v121, v120);
      *(ValueAtIndex + 15) = CFNumberCreate(allocator, kCFNumberSInt64Type, &v120);
      *(ValueAtIndex + 10) = v121;
LABEL_90:
      v121 = 0;
      if (*(ValueAtIndex + 6) || *(*(v14 + 304) + 49))
      {
        v119 = mmcs_register_item_padded_length(ValueAtIndex);
        if (!v119)
        {
          v126 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Error Calculating Padded File Size", v101, v102, v103, v104, v105, v112);
          goto LABEL_129;
        }

        *(ValueAtIndex + 14) = CFNumberCreate(allocator, kCFNumberSInt64Type, &v119);
        v106 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          v112 = v119;
          v107 = CFStringCreateWithFormat(allocator, 0, @"padLen:%llu");
          v108 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v129 = v107;
            _os_log_impl(&dword_2577D8000, v108, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v107)
          {
            CFRelease(v107);
          }
        }
      }

      if (valuePtr)
      {
        C3BaseRelease(valuePtr);
      }

      os_activity_scope_leave(&v124);
      v74 = v87;
LABEL_101:
      if (++v75 == v74)
      {
        goto LABEL_102;
      }
    }

    a4 = v115;
    goto LABEL_88;
  }

  v33 = 0;
  while (1)
  {
    v34 = CFArrayGetValueAtIndex(v29, v33);
    v35 = CFGetTypeID(v34);
    if (v35 != CFDictionaryGetTypeID())
    {
      v112 = v34;
      v110 = @"expected item option to be a dictionary %@";
      goto LABEL_120;
    }

    v41 = v32;
    v42 = CFDictionaryGetValue(v34, @"kMMCSItemID");
    if (!v42 || (v43 = v42, v44 = CFGetTypeID(v42), v44 != CFNumberGetTypeID()))
    {
      v112 = v34;
      v110 = @"expected item option dictionary to include an itemID. Got: %@";
LABEL_120:
      v111 = 40;
LABEL_122:
      v25 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v111, v110, v36, v37, v38, v39, v40, v112);
      v126 = v25;
      a2 = v113;
      goto LABEL_107;
    }

    v125 = 0;
    if (!mmcs_register_item_create(&v125, v43))
    {
      v110 = @"unable to create register item";
      v111 = 1;
      goto LABEL_122;
    }

    request_activity_marker = mmcs_request_get_request_activity_marker(v14);
    v46 = _os_activity_create(&dword_2577D8000, "mmcs-register-item", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    *(v125 + 144) = v46;
    v124.opaque[0] = 0;
    v124.opaque[1] = 0;
    os_activity_scope_enter(v46, &v124);
    v47 = v125;
    *(v125 + 64) = BOOLean_from_cfdictionary_object_for_key;
    *(v47 + 40) = 0;
    v48 = CFDictionaryGetValue(v34, @"kMMCSBoundaryKey");
    if (v48)
    {
      v49 = v48;
      v50 = CFDataGetTypeID();
      v51 = CFGetTypeID(v49);
      v52 = v125;
      if (v50 == v51)
      {
        mmcs_register_item_set_boundary_key(v125, v49);
        v52 = v125;
        *(v125 + 64) = 1;
        *(v52 + 137) = v114;
        *(v52 + 40) = 2;
      }

      a4 = v115;
    }

    else
    {
      v52 = v125;
    }

    cfindex_from_options = mmcs_get_cfindex_from_options(@"kMMCSPaddingPolicy", v34, *(v52 + 40));
    *(v125 + 40) = cfindex_from_options;
    *(*(v14 + 304) + 49) = cfindex_from_options != 0;
    v54 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRegisterFileOptionPublic", 0) == 0;
    v55 = v125;
    *(v125 + 136) = v54;
    v56 = *(*(v14 + 304) + 48);
    *(v55 + 137) = v56;
    *(v55 + 137) = *(*(v14 + 304) + 49) | v56;
    v57 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRegisterFileOptionChunk", 0);
    *(v125 + 137) |= v57;
    v58 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRequestOptionReturnRegisteredChunks", 0);
    *(v125 + 138) = v58;
    valuePtr = 0;
    CFNumberGetValue(v43, kCFNumberSInt64Type, &valuePtr);
    cached_ranged_items = mmcs_engine_get_cached_ranged_items(v117, valuePtr);
    if (cached_ranged_items)
    {
      *(v125 + 152) = cached_ranged_items;
      CFRetain(cached_ranged_items);
    }

    if (!mmcs_wrapping_state_init_with_option_dict(v125 + 24, v34, @"kMMCSWrappingState", &v126))
    {
      break;
    }

    v32 = v41;
    v65 = *(v14 + 304);
    if ((*(v65 + 48) || *(v65 + 49)) && !*(v125 + 137))
    {
      v121 = 0;
      v122 = 0;
      v120 = 0;
      if (CFNumberGetValue(*(v125 + 16), kCFNumberSInt64Type, &v120))
      {
        v66 = *(v117 + 16);
        if (CKGetRegisteredChunksForItemID())
        {
          *(v125 + 80) = v122;
          v67 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v121);
          *(v125 + 120) = v67;
        }

        else
        {
          v68 = mmcs_logging_logger_default();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v112 = v120;
            v69 = CFStringCreateWithFormat(allocator, 0, @"Could not get chunk list for itemId:%lld");
            v70 = mmcs_logging_logger_default();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v129 = v69;
              _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }
        }
      }

      v65 = *(v14 + 304);
    }

    CFArrayAppendValue(*(v65 + 8), v125);
    if (v125)
    {
      C3BaseRelease(v125);
    }

    v125 = 0;
    os_activity_scope_leave(&v124);
    if (v41 == ++v33)
    {
      goto LABEL_42;
    }
  }

  a2 = v113;
  if (!v126)
  {
    v126 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"unable to initialize wrapping state", v60, v61, v62, v63, v64, v112);
  }

  if (v125)
  {
    C3BaseRelease(v125);
  }

  v125 = 0;
LABEL_129:
  os_activity_scope_leave(&v124);
  v25 = v126;
LABEL_107:
  if (!v25)
  {
    mmcs_register_items_cold_1();
  }

  mmcs_register_request_abort(a2, v25, a4);
LABEL_109:
  if (v14)
  {
LABEL_110:
    C3BaseRelease(v14);
  }

  if (v126)
  {
    CFRelease(v126);
  }

  if (v8)
  {
    os_release(v8);
  }

  os_activity_scope_leave(&state);
  v109 = *MEMORY[0x277D85DE8];
}

void mmcs_register_items_schedule_job(uint64_t a1)
{
  v2 = mmcs_chunk_instance_offset(a1);
  while (1)
  {
    v3 = *(a1 + 304);
    v4 = *(v3 + 16);
    if (v4 >= CFArrayGetCount(*(v3 + 8)))
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), *(*(a1 + 304) + 16));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(ValueAtIndex + 18), &state);
    itemid = mmcs_register_item_get_itemid(ValueAtIndex);
    v34 = 0;
    *v35 = 0;
    v7 = mmcs_engine_owner(v2);
    requestor = mmcs_request_get_requestor(a1);
    if (mmcs_engine_get_item_reader_writer_for_item_callback(v2, v7, requestor, itemid, v35, &v34) && MMCSItemReaderWriterOpen(*v35, &v34))
    {
      FileTypeHint = MMCSItemReaderWriterGetFileTypeHint(*v35);
      v16 = mmcs_fixed_chunk_size_for_item_type_hint(FileTypeHint);
      *&v29 = 0;
      *(&v29 + 1) = a1;
      v30 = C3BaseRetain;
      v31 = C3BaseRelease;
      v32 = 0;
      v33 = mmcs_register_request_did_chunk_item;
      v17 = mmcs_register_and_chunk_job_create(&v29, v2, *v35, itemid, v16, ValueAtIndex[137], ValueAtIndex[136], *(ValueAtIndex + 6), 0, *(ValueAtIndex + 18));
      if (v17)
      {
        v23 = v17;
        v24 = *(a1 + 184);
        if (v24)
        {
          v25 = *(v23 + 200);
          if (v25)
          {
            mmcs_metrics_request_add_chunking_info(v24, v25);
          }
        }

        *(*(a1 + 304) + 24) = v23;
        mmcs_engine_chunk_job_dispatch_async(v23, *(v2 + 24));
        v26 = 0;
        goto LABEL_12;
      }

      file_error_wrapping_error_to_release = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"NULL chunk job", v18, v19, v20, v21, v22, cf);
    }

    else
    {
      file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(v34, @"Unable to register item", v9, v10, v11, v12, v13, v14);
    }

    *(ValueAtIndex + 16) = file_error_wrapping_error_to_release;
    v34 = 0;
    ++*(*(a1 + 304) + 16);
    v26 = 1;
LABEL_12:
    if (*v35)
    {
      C3BaseRelease(*v35);
    }

    os_activity_scope_leave(&state);
    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  mmcs_register_request_cleanup(a1);
}

void _add_item_result(uint64_t a1, __CFArray *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = *(a1 + 16);
  if (!v6)
  {
    _add_item_result_cold_3();
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"kMMCSItemID", v6);
  v8 = *(a1 + 96);
  if (v8)
  {
    CFDictionarySetValue(v7, @"kMMCSSignature", v8);
    v9 = *(a1 + 104);
    if (v9)
    {
      CFDictionarySetValue(v7, @"kMMCSFileSize", v9);
    }

    v10 = *(a1 + 112);
    if (v10)
    {
      CFDictionarySetValue(v7, @"kMMCSPaddedFileSize", v10);
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      CFDictionarySetValue(v7, @"kMMCSChunkCount", v11);
    }

    if (*(a1 + 138))
    {
      if (*(a1 + 80))
      {
        valuePtr = 0;
        if (CFNumberGetValue(*(a1 + 120), kCFNumberCFIndexType, &valuePtr))
        {
          v35 = a2;
          v12 = CFArrayCreateMutable(v4, valuePtr, MEMORY[0x277CBF128]);
          if (valuePtr >= 1)
          {
            v13 = 0;
            v14 = MEMORY[0x277CBF138];
            v15 = MEMORY[0x277CBF150];
            v16 = *(a1 + 80);
            do
            {
              v17 = CFDictionaryCreateMutable(v4, 0, v14, v15);
              v36 = CKRegisteredChunkItemID();
              v18 = CFNumberCreate(v4, kCFNumberSInt64Type, &v36);
              if (v18)
              {
                v19 = v18;
                CFDictionaryAddValue(v17, @"itemID", v18);
                CFRelease(v19);
              }

              LODWORD(v36) = CKRegisteredChunkLength();
              v20 = CFNumberCreate(v4, kCFNumberSInt32Type, &v36);
              if (v20)
              {
                v21 = v20;
                CFDictionaryAddValue(v17, @"length", v20);
                CFRelease(v21);
              }

              v22 = CKRegisteredChunkLocation();
              v23 = CFStringCreateWithFormat(v4, 0, @"%c", v22);
              if (v23)
              {
                v24 = v23;
                CFDictionaryAddValue(v17, @"location", v23);
                CFRelease(v24);
              }

              v36 = CKRegisteredChunkOffset();
              v25 = CFNumberCreate(v4, kCFNumberSInt64Type, &v36);
              if (v25)
              {
                v26 = v25;
                CFDictionaryAddValue(v17, @"offset", v25);
                CFRelease(v26);
              }

              v36 = CKRegisteredChunkRowID();
              v27 = CFNumberCreate(v4, kCFNumberSInt64Type, &v36);
              if (v27)
              {
                v28 = v27;
                CFDictionaryAddValue(v17, @"rowID", v27);
                CFRelease(v28);
              }

              v29 = CKRegisteredChunkSignature();
              CKRegisteredChunkSignature();
              v30 = CKChunkSchemeAndSignatureSize();
              v31 = CFDataCreate(v4, v29, v30);
              if (v31)
              {
                v32 = v31;
                CFDictionaryAddValue(v17, @"signature", v31);
                CFRelease(v32);
              }

              CFArrayAppendValue(v12, v17);
              if (v17)
              {
                CFRelease(v17);
              }

              CKRegisteredChunkSize();
              ++v13;
            }

            while (v13 < valuePtr);
          }

          CFDictionarySetValue(v7, @"kMMCSRegisteredChunks", v12);
          a2 = v35;
          if (v12)
          {
            CFRelease(v12);
          }
        }
      }
    }
  }

  else
  {
    v33 = *(a1 + 128);
    if (!v33)
    {
      _add_item_result_cold_2();
    }

    Domain = CFErrorGetDomain(v33);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      _add_item_result_cold_1();
    }

    CFDictionarySetValue(v7, @"kMMCSResultError", *(a1 + 128));
  }

  CFArrayAppendValue(a2, v7);
  if (v7)
  {
    CFRelease(v7);
  }
}

void mmcs_register_request_did_chunk_item(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a2 + 288), &state);
  if (*(a1 + 144))
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 304);
  if (*(v5 + 24) == a2)
  {
    *(v5 + 24) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), *(*(a1 + 304) + 16));
    if (ValueAtIndex[15])
    {
      mmcs_register_request_did_chunk_item_cold_1();
    }

    v10 = ValueAtIndex;
    if (ValueAtIndex[10])
    {
      mmcs_register_request_did_chunk_item_cold_2();
    }

    itemid = mmcs_register_item_get_itemid(ValueAtIndex);
    if (*(a2 + 160) != itemid)
    {
      v13 = itemid;
      v14 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Job itemID %llu does not match register itemID %llu", *(a2 + 160), v13);
      v16 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        v17 = v16;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_2577D8000, v17, v18, "%{public}@", buf, 0xCu);
      }

LABEL_18:
      if (v15)
      {
        CFRelease(v15);
      }

      goto LABEL_46;
    }

    v12 = *(a2 + 280);
    if (v12)
    {
      CFRetain(v12);
      v10[16] = *(a2 + 280);
LABEL_46:
      C3BaseRelease(a2);
      ++*(*(a1 + 304) + 16);
      mmcs_register_items_schedule_job(a1);
      goto LABEL_2;
    }

    v19 = *(a2 + 176);
    v20 = CKFileDigestResultsFileSignature();
    v10[12] = MMCSSignatureCopyData(v20);
    v21 = *(a2 + 176);
    valuePtr = CKFileDigestResultsFileLength();
    v22 = *MEMORY[0x277CBECE8];
    v10[13] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    v23 = *(a2 + 176);
    v24 = CKFileDigestResultsFileVerificationKey();
    mmcs_register_item_set_file_verification_key(v10, v24);
    if (*(a2 + 82))
    {
      v30 = *(a2 + 264);
      if (v30)
      {
        *buf = 0;
        if (mmcs_chunking_profile_create(buf, *(a2 + 256), v30))
        {
          if (*buf)
          {
            if (v10[9])
            {
              mmcs_register_request_did_chunk_item_cold_3();
            }

            v10[9] = CFArrayCreateMutable(v22, 0, &kC3BaseArrayCallBacks);
            v31 = *buf;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          if (*buf)
          {
            C3BaseRelease(*buf);
          }

          v31 = 0;
          *buf = 0;
        }

        v32 = v10[9];
        if (v32)
        {
          CFArrayAppendValue(v32, v31);
          v31 = *buf;
        }

        if (v31)
        {
          C3BaseRelease(v31);
        }
      }

      v10[15] = CFNumberCreate(v22, kCFNumberSInt64Type, (a2 + 256));
      v10[10] = *(a2 + 248);
      *(a2 + 248) = 0;
    }

    if (v10[6])
    {
      *buf = mmcs_register_item_padded_length(v10);
      if (!*buf)
      {
        v36 = @"Error Calculating Padded File Size";
        v37 = 1;
        goto LABEL_45;
      }

      v10[14] = CFNumberCreate(v22, kCFNumberSInt64Type, buf);
    }

    if (!*(a2 + 256))
    {
      goto LABEL_46;
    }

    if ((valuePtr & 0x8000000000000000) == 0)
    {
      mmcs_engine_add_bytes_chunked(*(a2 + 144), valuePtr);
      mmcs_engine_commit_if_over_threshold(*(a2 + 144));
      v33 = mmcs_logging_logger_default();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_46;
      }

      v34 = *(a2 + 256);
      v15 = CFStringCreateWithFormat(v22, 0, @"Got %llu chunks for %lld", v34, *(a2 + 160));
      v35 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        v17 = v35;
        v18 = OS_LOG_TYPE_DEBUG;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v38 = valuePtr;
    v39 = *(a2 + 160);
    v36 = @"Calculated item size was too large (%llu) for item %lld";
    v37 = 17;
LABEL_45:
    v10[16] = mmcs_cferror_create_with_format(@"com.apple.mmcs", v37, v36, v25, v26, v27, v28, v29, v38);
    goto LABEL_46;
  }

  v6 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
    v8 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

LABEL_2:
  os_activity_scope_leave(&state);
  v4 = *MEMORY[0x277D85DE8];
}

BOOL mmcs_local_chunk_satisfyer_create(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = 0;
  v12 = C3TypeRegister(&mmcs_local_chunk_satisfyerGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v12, 0x40uLL);
  if (!Instance)
  {
    return *a1 != 0;
  }

  v14 = Instance;
  *(Instance + 16) = a2;
  MMCSEngineRetain(a2);
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  result = 1;
  *a1 = v14;
  return result;
}

uint64_t mmcs_local_chunk_satisfyer_perform(void *a1, uint64_t a2, uint64_t a3, int a4, int8x16_t *a5, unint64_t a6, CFTypeRef *a7)
{
  v12 = 0;
  v13 = 0;
  v96 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v89 = 0;
  do
  {
    v88 = dword_25785F2C8[v13];
    v14 = *(a1[2] + 16);
    CKRegisteredChunkSignature();
    if ((CKGetRegisteredChunks() & 1) == 0)
    {
      v80 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to CKGetRegisteredChunks");
        v82 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v95 = v81;
          _os_log_impl(&dword_2577D8000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v81)
        {
          CFRelease(v81);
        }
      }

LABEL_94:
      v79 = 1;
      v78 = v89;
      if (v89)
      {
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    v15 = CKRegisteredChunkSignatureCopyCString();
    v16 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v95 = v88;
      *&v95[4] = 2048;
      *&v95[6] = v90;
      *&v95[14] = 2080;
      *&v95[16] = v15;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "CKGetRegisteredChunks returned %d chunks in chunk list %p for signature %s", buf, 0x1Cu);
    }

    if (v15)
    {
      free(v15);
    }

    if (!v90 || !v88)
    {
      goto LABEL_94;
    }

    v86 = v12;
    if (v88 < 1)
    {
      v35 = 0;
      v74 = 0;
      goto LABEL_81;
    }

    v17 = 0;
    v18 = 1;
    while (1)
    {
      if (v18 == 1)
      {
        v17 = v90;
      }

      else
      {
        v17 += CKRegisteredChunkSize();
      }

      v19 = CKRegisteredChunkLength();
      if (v19 != CKRegisteredChunkLength())
      {
        if (**(a2 + 56))
        {
          mmcs_local_chunk_satisfyer_perform_cold_1();
        }

        v20 = CKRegisteredChunkLength();
        v21 = *(a2 + 56);
        *(v21 + 4) = v20;
        *(v21 + 64) = 1;
        *(*(a2 + 56) + 16) = CKRegisteredChunkKey();
        *(a2 + 64) = CKRegisteredChunkLength();
        CKRegisteredChunkLength();
        CKRegisteredChunkSetLength();
      }

      if (CKRegisteredChunkLocation() != 116 && CKRegisteredChunkLocation() != 114)
      {
        v35 = 0;
        goto LABEL_72;
      }

      if (a1[8] && CKRegisteredChunkItemID() == a1[7])
      {
        v22 = 0;
        goto LABEL_66;
      }

      mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
      file_error_with_format = 0;
      if (CKRegisteredChunkLocation() == 116)
      {
        cf = 0;
        v92 = 0;
        v23 = a1[2];
        v24 = CKRegisteredChunkItemID();
        if (mmcs_engine_file_path(v23, "tmpm", v24, &v92, &cf))
        {
          v25 = open(v92, 0);
          if ((v25 & 0x80000000) != 0)
          {
            v51 = *__error();
            v52 = CKRegisteredChunkSignatureCopyCString();
            v53 = v92;
            CKRegisteredChunkItemID();
            file_error_with_format = mmcs_cferror_create_file_error_with_format(v51, @"Unable to open temporary file %s for item %lld while looking for chunk %s", v54, v55, v56, v57, v58, v59, v53);
            if (v52)
            {
              free(v52);
            }
          }

          else
          {
            v26 = v25;
            v27 = MMCSItemReaderWriterCreateWithFileDescriptor(v25, 0, 0, 0, &file_error_with_format);
            a1[8] = v27;
            if (v27)
            {
              v28 = 0;
              goto LABEL_50;
            }

            Current = CFAbsoluteTimeGetCurrent();
            if (close(v26))
            {
              v61 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                v62 = *__error();
                v63 = __error();
                v64 = strerror(*v63);
                *buf = 67109634;
                *v95 = v26;
                *&v95[4] = 1024;
                *&v95[6] = v62;
                *&v95[10] = 2080;
                *&v95[12] = v64;
                _os_log_impl(&dword_2577D8000, v61, OS_LOG_TYPE_ERROR, "error closing file descriptor (%d) : posix error %d (%s)", buf, 0x18u);
              }
            }

            v65 = CFAbsoluteTimeGetCurrent() - Current;
            if (v65 > 0.25)
            {
              v66 = mmcs_logging_logger_default();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *v95 = v26;
                *&v95[4] = 2048;
                *&v95[6] = v65;
                _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "closing fd (%d) took %.3f seconds!", buf, 0x12u);
              }
            }
          }
        }

        else
        {
          v44 = CKRegisteredChunkSignatureCopyCString();
          v45 = cf;
          v46 = CKRegisteredChunkItemID();
          file_error_with_format = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 9, v45, @"Unable to open file descriptor for item %lld while looking for chunk %s", v47, v48, v49, v50, v46);
          if (v44)
          {
            free(v44);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
        }

        v28 = 1;
LABEL_50:
        if (v92)
        {
          free(v92);
        }

        if ((v28 & 1) == 0)
        {
LABEL_53:
          if (MMCSItemReaderWriterOpen(a1[8], &file_error_with_format))
          {
            v22 = 0;
            v67 = 0;
            v68 = file_error_with_format;
            if (file_error_with_format)
            {
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          v69 = a1[8];
          if (v69)
          {
            C3BaseRelease(v69);
          }

          a1[8] = 0;
        }

        goto LABEL_59;
      }

      if (CKRegisteredChunkLocation() == 114)
      {
        v29 = a1[2];
        v30 = mmcs_engine_owner(v29);
        v31 = a1[3];
        v32 = CKRegisteredChunkItemID();
        item_reader_writer_for_item_callback = mmcs_engine_get_item_reader_writer_for_item_callback(v29, v30, v31, v32, a1 + 8, &file_error_with_format);
        v34 = a1[8];
        if (item_reader_writer_for_item_callback)
        {
          if (!v34)
          {
            mmcs_local_chunk_satisfyer_perform_cold_2();
          }

          a1[7] = CKRegisteredChunkItemID();
          goto LABEL_53;
        }

        if (v34)
        {
          mmcs_local_chunk_satisfyer_perform_cold_3();
        }

        a1[7] = 0;
LABEL_59:
        v43 = file_error_with_format;
        goto LABEL_60;
      }

      v36 = CKRegisteredChunkSignatureCopyCString();
      v37 = a1[7];
      CKRegisteredChunkLocation();
      v43 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Source item %lld had invalid registered chunk location %c for chunk %s", v38, v39, v40, v41, v42, v37);
      file_error_with_format = v43;
      if (v36)
      {
        free(v36);
      }

LABEL_60:
      if (!v43)
      {
        mmcs_local_chunk_satisfyer_perform_cold_5();
      }

      CFRetain(v43);
      v67 = 1;
      v22 = file_error_with_format;
      v68 = file_error_with_format;
      if (file_error_with_format)
      {
LABEL_62:
        CFRelease(v68);
      }

LABEL_63:
      if (v67)
      {
        v70 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = CKRegisteredChunkItemID();
          *buf = 134218242;
          *v95 = v71;
          *&v95[8] = 2112;
          *&v95[10] = v22;
          _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_DEBUG, "Failed to get fd for item %lld : %@", buf, 0x16u);
        }

LABEL_70:
        v35 = 0;
        if (!v22)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

LABEL_66:
      LOBYTE(file_error_with_format) = 0;
      v72 = mmcs_local_chunk_satisfyer_copy_chunk(a1, a2, a3, v17, a4, a5, a6, &file_error_with_format, &v89);
      if (file_error_with_format)
      {
        v73 = *(a1[2] + 16);
        CKRegisteredChunkItemID();
        CKUnregisterFile();
        mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
      }

      if (v72)
      {
        break;
      }

      v76 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = CKRegisteredChunkItemID();
        *buf = 134218242;
        *v95 = v77;
        *&v95[8] = 2114;
        *&v95[10] = v89;
        _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_ERROR, "Failed to write chunk to item %lld with error: %{public}@", buf, 0x16u);
      }

      v35 = 1;
      if (!v22)
      {
        goto LABEL_72;
      }

LABEL_71:
      CFRelease(v22);
LABEL_72:
      v74 = 0;
      if (!v35 && v18++ < v88)
      {
        continue;
      }

      goto LABEL_81;
    }

    if (file_error_with_format)
    {
      goto LABEL_70;
    }

    v35 = 0;
    v74 = 1;
LABEL_81:
    if (v90)
    {
      free(v90);
    }

    v90 = 0;
    v12 = 1;
    v13 = 1;
  }

  while (((v35 | v74 | v86) & 1) == 0);
  if (!v35)
  {
    goto LABEL_94;
  }

  v78 = v89;
  if (!v89)
  {
    mmcs_local_chunk_satisfyer_perform_cold_4();
  }

  if (a7)
  {
    CFRetain(v89);
    v79 = 0;
    v78 = v89;
    *a7 = v89;
    if (!v78)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v79 = 0;
  }

LABEL_95:
  CFRelease(v78);
LABEL_96:
  v83 = *MEMORY[0x277D85DE8];
  return v79;
}

uint64_t mmcs_local_chunk_satisfyer_copy_chunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t *a6, unint64_t a7, _BYTE *a8, void *a9)
{
  v83 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  v15 = CKRegisteredChunkItemID();
  cf = 0;
  if (*(a2 + 48))
  {
    mmcs_local_chunk_satisfyer_copy_chunk_cold_1();
  }

  v16 = v15;
  v17 = mmcs_chunk_instance_chunk_coder_create(a2, a5);
  if (!v17)
  {
    v28 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Error creating chunk coder for chunkInstance.", v18, v19, v20, v21, v22, v72);
    goto LABEL_81;
  }

  v23 = v17;
  v73 = v16;
  v74 = a8;
  v24 = CKRegisteredChunkLength();
  v25 = CKRegisteredChunkOffset();
  v26 = CKRegisteredChunkOffset();
  while (1)
  {
    if (v24 >= a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = v24;
    }

    v77 = 0;
    if (!MMCSItemReaderWriterRead(*(a1 + 64), v25, a6, v27, &v77, &cf))
    {
      goto LABEL_25;
    }

    if (!v77)
    {
      v28 = CKRegisteredChunkSignatureCopyCString();
      v32 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v38 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s was not found locally from item %lld which has been truncated. Unregistering item %lld", v28, v73, v73);
        v39 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v80 = v38;
          _os_log_impl(&dword_2577D8000, v39, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v38)
        {
          CFRelease(v38);
        }
      }

      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s was not found locally from item %lld which has been truncated. Unregistering item %lld", v33, v34, v35, v36, v37, v28);
      if (v28)
      {
        free(v28);
LABEL_25:
        v28 = 0;
      }

      v29 = 1;
      v31 = 1;
      goto LABEL_35;
    }

    CKChunkCoderUpdate();
    v75 = 0;
    v76 = 0;
    MMCSItemReaderWriterWrite(*(a1 + 32), *(a1 + 40), v26, a6, v77, &v76, &v75);
    if (v75)
    {
      v40 = *__error();
      v41 = CKRegisteredChunkSignatureCopyCString();
      v42 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = *MEMORY[0x277CBECE8];
        v44 = strerror(v40);
        v45 = CFStringCreateWithFormat(v43, 0, @"Chunk %s could not be written: %s(%d)", v41, v44, v40);
        v46 = mmcs_logging_logger_default();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v80 = v45;
          _os_log_impl(&dword_2577D8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v45)
        {
          CFRelease(v45);
        }
      }

      v28 = v75;
      if (!v41)
      {
        goto LABEL_34;
      }

LABEL_33:
      free(v41);
      goto LABEL_34;
    }

    if (v76 != v77)
    {
      break;
    }

    v26 += v76;
    v25 += v76;
    v24 -= v76;
    if (!v24)
    {
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 1;
      goto LABEL_36;
    }
  }

  v41 = CKRegisteredChunkSignatureCopyCString();
  v56 = mmcs_logging_logger_default();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    v62 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s could not be completely written", v41);
    v63 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v80 = v62;
      _os_log_impl(&dword_2577D8000, v63, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v62)
    {
      CFRelease(v62);
    }
  }

  v28 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s could not be completely written", v57, v58, v59, v60, v61, v41);
  if (v41)
  {
    goto LABEL_33;
  }

LABEL_34:
  v29 = 0;
  v31 = 0;
LABEL_35:
  v30 = v24 == 0;
LABEL_36:
  v47 = CKRegisteredChunkSuccessorOffset();
  v48 = v47;
  if (v29)
  {
    v49 = 0;
  }

  else
  {
    v49 = v31;
  }

  v50 = v30 & v49;
  if (v26 != v47)
  {
    v50 = 0;
  }

  if (v31 && !v29 && !v50)
  {
    mmcs_local_chunk_satisfyer_copy_chunk_cold_3();
  }

  if ((!v30 | v29))
  {
    goto LABEL_70;
  }

  if (!CKChunkCoderFinish())
  {
    v64 = CKRegisteredChunkSignatureCopyCString();
    v65 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v66 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s was found locally from item %lld but the data does not match. Unregistering item %lld", v64, v73, v73);
      v67 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v80 = v66;
        _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v66)
      {
        CFRelease(v66);
      }
    }

    if (v64)
    {
      free(v64);
    }

LABEL_70:
    C3BaseRelease(v23);
    v55 = 0;
LABEL_71:
    v52 = v74;
    goto LABEL_72;
  }

  C3BaseRelease(v23);
  if (v26 == v48)
  {
    v51 = v31;
  }

  else
  {
    v51 = 0;
  }

  if (v51 != 1)
  {
    v55 = 1;
    goto LABEL_71;
  }

  v52 = v74;
  if (gMMCS_DebugLevel >= 4)
  {
    v53 = CKRegisteredChunkSignatureCopyCString();
    v54 = mmcs_logging_logger_chunk();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v80 = v53;
      v81 = 2048;
      v82 = v73;
      _os_log_impl(&dword_2577D8000, v54, OS_LOG_TYPE_DEFAULT, "Chunk %{public}s was found locally from item %lld", buf, 0x16u);
    }

    if (v53)
    {
      free(v53);
    }
  }

  *(a1 + 72) += CKRegisteredChunkLength();
  v55 = 1;
  *(a2 + 48) = 1;
LABEL_72:
  if (v29)
  {
    v55 = 0;
  }

  if (v52 && (v55 & 1) == 0)
  {
    if (CKRegisteredChunkItemID() && CKRegisteredChunkItemID())
    {
      v68 = *(*(a1 + 16) + 16);
      CKRegisteredChunkItemID();
      CKUnregisterFile();
    }

    *v52 = 1;
  }

  if (v31)
  {
LABEL_81:
    v69 = 1;
  }

  else
  {
    if (!v28)
    {
      mmcs_local_chunk_satisfyer_copy_chunk_cold_2();
    }

    if (a9)
    {
      CFRetain(v28);
      v69 = 0;
      *a9 = v28;
    }

    else
    {
      v69 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  v70 = *MEMORY[0x277D85DE8];
  return v69;
}

void mmcs_local_chunk_satisfyer_clear_source_fd_cache(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    MMCSItemReaderWriterEnsureClosed(v2);
    v3 = *(a1 + 64);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 64) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t mmcs_external_chunk_satisfyer_perform(void *a1, uint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5, void *a6)
{
  v12 = *MEMORY[0x277CBECE8];
  v13 = CKRegisteredChunkSignature();
  v14 = CKRegisteredChunkSignature();
  v15 = mmcs_chunk_signature_size_with_scheme(v14);
  v16 = CFDataCreate(v12, v13, v15);
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v28 = 0;
  cf = 0;
  v18 = a1[2];
  v19 = *(v18 + 152);
  v20 = mmcs_engine_owner(v18);
  ItemReaderWriterForChunkSignature = MMCSEngineClientContextGetItemReaderWriterForChunkSignature(v19, v20, a1[3], v17, &v28, &cf);
  v22 = v28;
  if (ItemReaderWriterForChunkSignature)
  {
    v23 = v28 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v25 = 1;
  }

  else
  {
    a1[7] = 0;
    a1[8] = v22;
    RegisteredChunk = mmcs_chunk_reference_create_RegisteredChunk(*(a2 + 56));
    CKRegisteredChunkSetItemID();
    v25 = mmcs_local_chunk_satisfyer_copy_chunk(a1, a2, a3, RegisteredChunk, 2, a4, a5, &v27, a6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v17);
  return v25;
}

void _mmcs_local_chunk_satisfyerCFFinalize(uint64_t a1)
{
  mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    MMCSEngineRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef mmcs_url_copy_query_value_for_tag(const __CFURL *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@=", a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  String = CFURLCopyQueryString(a1, 0);
  if (!String)
  {
    CFRelease(v6);
    return 0;
  }

  v8 = String;
  v9 = CFStringFind(String, v6, 1uLL);
  if (v9.location == -1)
  {
    v13 = 0;
  }

  else
  {
    v16.length = CFStringGetLength(v8) - (v9.location + v9.length);
    result.location = 0;
    result.length = 0;
    v16.location = v9.location + v9.length;
    v10 = CFStringFindWithOptions(v8, @"&", v16, 0, &result);
    location = result.location;
    if (v10)
    {
      v12 = result.location == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      location = CFStringGetLength(v8);
      result.location = location;
      result.length = 0;
    }

    v17.length = location - (v9.location + v9.length);
    v17.location = v9.location + v9.length;
    v13 = CFStringCreateWithSubstring(v4, v8, v17);
    if (v13)
    {
      v2 = CFURLCreateStringByReplacingPercentEscapes(v4, v13, &stru_2868BF3F0);
      goto LABEL_18;
    }
  }

  v2 = 0;
LABEL_18:
  CFRelease(v6);
  CFRelease(v8);
  if (v13)
  {
    CFRelease(v13);
  }

  return v2;
}

double chunkserver__chunk_info__init(_OWORD *a1)
{
  a1[2] = xmmword_279841628;
  a1[3] = unk_279841638;
  a1[4] = xmmword_279841648;
  result = dbl_279841618[0];
  *a1 = chunkserver__chunk_info__init_init_value;
  a1[1] = *dbl_279841618;
  return result;
}

double chunkserver__ford_info__init(uint64_t a1)
{
  result = *&chunkserver__ford_info__init_init_value;
  *a1 = chunkserver__ford_info__init_init_value;
  *(a1 + 16) = unk_279841668;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__container_element__init(uint64_t a1)
{
  result = *&chunkserver__container_element__init_init_value;
  *a1 = chunkserver__container_element__init_init_value;
  *(a1 + 16) = *algn_279841690;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__name_value_pair__init(uint64_t a1)
{
  result = *&chunkserver__name_value_pair__init_init_value;
  *a1 = chunkserver__name_value_pair__init_init_value;
  *(a1 + 16) = unk_2798416B8;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__host_info__init(uint64_t a1)
{
  *(a1 + 96) = xmmword_279841730;
  *(a1 + 112) = unk_279841740;
  *(a1 + 128) = xmmword_279841750;
  *(a1 + 144) = 0;
  *(a1 + 32) = xmmword_2798416F0;
  *(a1 + 48) = unk_279841700;
  *(a1 + 64) = xmmword_279841710;
  *(a1 + 80) = unk_279841720;
  result = *&chunkserver__host_info__init_init_value;
  *a1 = chunkserver__host_info__init_init_value;
  *(a1 + 16) = unk_2798416E0;
  return result;
}

double chunkserver__put_complete_at_edge_payload_trailer__init(_OWORD *a1)
{
  *a1 = chunkserver__put_complete_at_edge_payload_trailer__init_init_value;
  a1[1] = unk_279841778;
  result = 0.0;
  a1[2] = xmmword_279841788;
  a1[3] = unk_279841798;
  return result;
}

uint64_t chunkserver__put_complete_at_edge_payload_trailer__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
  {
    chunkserver__put_complete_at_edge_payload_trailer__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__put_complete_at_edge_payload_trailer__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
  {
    chunkserver__put_complete_at_edge_payload_trailer__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__put_complete_at_edge_payload_trailer__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
    {
      chunkserver__put_complete_at_edge_payload_trailer__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__error_response__init(_OWORD *a1)
{
  a1[2] = xmmword_2798417C8;
  a1[3] = unk_2798417D8;
  a1[4] = xmmword_2798417E8;
  result = dbl_2798417B8[0];
  *a1 = chunkserver__error_response__init_init_value;
  a1[1] = *dbl_2798417B8;
  return result;
}

void **chunkserver__error_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__error_response__descriptor)
    {
      chunkserver__error_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_error__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841818;
  *(a1 + 48) = unk_279841828;
  *(a1 + 64) = 0;
  result = dbl_279841808[0];
  *a1 = chunkserver__file_error__init_init_value;
  *(a1 + 16) = *dbl_279841808;
  return result;
}

double chunkserver__file_success__init(_OWORD *a1)
{
  a1[2] = xmmword_279841860;
  a1[3] = unk_279841870;
  a1[4] = xmmword_279841880;
  a1[5] = unk_279841890;
  result = *&chunkserver__file_success__init_init_value;
  *a1 = chunkserver__file_success__init_init_value;
  a1[1] = *algn_279841850;
  return result;
}

double chunkserver__chunk_error_index__init(uint64_t a1)
{
  *a1 = chunkserver__chunk_error_index__init_init_value;
  *(a1 + 16) = *algn_2798418B0;
  result = 0.0;
  *(a1 + 32) = xmmword_2798418C0;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__file_chunk_error__init(_OWORD *a1)
{
  a1[2] = xmmword_2798418F8;
  a1[3] = unk_279841908;
  a1[4] = xmmword_279841918;
  result = dbl_2798418E8[0];
  *a1 = chunkserver__file_chunk_error__init_init_value;
  a1[1] = *dbl_2798418E8;
  return result;
}

double chunkserver__storage_container_error__init(_OWORD *a1)
{
  *a1 = chunkserver__storage_container_error__init_init_value;
  a1[1] = unk_279841938;
  result = 0.0;
  a1[2] = xmmword_279841948;
  return result;
}

double chunkserver__method_completion_info__init(uint64_t a1)
{
  *(a1 + 128) = xmmword_2798419D8;
  *(a1 + 144) = unk_2798419E8;
  *(a1 + 160) = xmmword_2798419F8;
  *(a1 + 176) = 0;
  *(a1 + 64) = xmmword_279841998;
  *(a1 + 80) = unk_2798419A8;
  *(a1 + 96) = xmmword_2798419B8;
  *(a1 + 112) = unk_2798419C8;
  *a1 = chunkserver__method_completion_info__init_init_value;
  *(a1 + 16) = unk_279841968;
  result = 0.0;
  *(a1 + 32) = xmmword_279841978;
  *(a1 + 48) = unk_279841988;
  return result;
}

uint64_t chunkserver__method_completion_info__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__method_completion_info__descriptor)
  {
    chunkserver__method_completion_info__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__method_completion_info__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info__descriptor)
  {
    chunkserver__method_completion_info__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__method_completion_info__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__method_completion_info__descriptor)
    {
      chunkserver__method_completion_info__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__method_completion_info_list__init(_OWORD *a1)
{
  *a1 = chunkserver__method_completion_info_list__init_init_value;
  a1[1] = unk_279841A20;
  result = 0.0;
  a1[2] = xmmword_279841A30;
  a1[3] = unk_279841A40;
  return result;
}

uint64_t chunkserver__method_completion_info_list__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__method_completion_info_list__descriptor)
  {
    chunkserver__method_completion_info_list__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__method_completion_info_list__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info_list__descriptor)
  {
    chunkserver__method_completion_info_list__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__method_completion_info_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__method_completion_info_list__descriptor)
    {
      chunkserver__method_completion_info_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_chunk_list__chunking_profile__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841A70;
  *(a1 + 48) = unk_279841A80;
  *(a1 + 64) = 0;
  result = dbl_279841A60[0];
  *a1 = chunkserver__file_chunk_list__chunking_profile__init_init_value;
  *(a1 + 16) = *dbl_279841A60;
  return result;
}

double chunkserver__file_chunk_list__init(_OWORD *a1)
{
  a1[4] = xmmword_279841AD8;
  a1[5] = unk_279841AE8;
  a1[6] = xmmword_279841AF8;
  a1[7] = unk_279841B08;
  *a1 = chunkserver__file_chunk_list__init_init_value;
  a1[1] = unk_279841AA8;
  result = 0.0;
  a1[2] = xmmword_279841AB8;
  a1[3] = unk_279841AC8;
  return result;
}

double chunkserver__file_chunk_lists__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841B38;
  *(a1 + 48) = unk_279841B48;
  *(a1 + 64) = xmmword_279841B58;
  *(a1 + 80) = 0;
  result = *&chunkserver__file_chunk_lists__init_init_value;
  *a1 = chunkserver__file_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841B28;
  return result;
}

uint64_t chunkserver__file_chunk_lists__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__file_chunk_lists__descriptor)
  {
    chunkserver__file_chunk_lists__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__file_chunk_lists__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_chunk_lists__descriptor)
  {
    chunkserver__file_chunk_lists__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

double chunkserver__storage_container_chunk_list__container_upload_element__init(uint64_t a1)
{
  *a1 = chunkserver__storage_container_chunk_list__container_upload_element__init_init_value;
  *(a1 + 16) = unk_279841B80;
  result = 0.0;
  *(a1 + 32) = xmmword_279841B90;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__storage_container_chunk_list__init(_OWORD *a1)
{
  a1[2] = xmmword_279841BC8;
  a1[3] = unk_279841BD8;
  a1[4] = xmmword_279841BE8;
  result = dbl_279841BB8[0];
  *a1 = chunkserver__storage_container_chunk_list__init_init_value;
  a1[1] = *dbl_279841BB8;
  return result;
}

double chunkserver__storage_container_chunk_lists__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841C38;
  *(a1 + 80) = unk_279841C48;
  *(a1 + 96) = 0;
  *a1 = chunkserver__storage_container_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841C08;
  result = dbl_279841C28[0];
  *(a1 + 32) = xmmword_279841C18;
  *(a1 + 48) = *dbl_279841C28;
  return result;
}

void **chunkserver__storage_container_chunk_lists__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__storage_container_chunk_lists__descriptor)
    {
      chunkserver__storage_container_chunk_lists__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__authorize_simulcast_response__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841C80;
  *(a1 + 48) = unk_279841C90;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__authorize_simulcast_response__init_init_value;
  *(a1 + 16) = *algn_279841C70;
  return result;
}

double chunkserver__storage_container_error_list__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841CC8;
  *(a1 + 48) = unk_279841CD8;
  *(a1 + 64) = 0;
  result = dbl_279841CB8[0];
  *a1 = chunkserver__storage_container_error_list__init_init_value;
  *(a1 + 16) = *dbl_279841CB8;
  return result;
}

void **chunkserver__storage_container_error_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__storage_container_error_list__descriptor)
    {
      chunkserver__storage_container_error_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_checksum_authorization__init(_OWORD *a1)
{
  a1[2] = xmmword_279841D10;
  a1[3] = unk_279841D20;
  a1[4] = xmmword_279841D30;
  a1[5] = unk_279841D40;
  result = *&chunkserver__file_checksum_authorization__init_init_value;
  *a1 = chunkserver__file_checksum_authorization__init_init_value;
  a1[1] = unk_279841D00;
  return result;
}

double chunkserver__file_checksum_authorization_list__init(uint64_t a1)
{
  *a1 = chunkserver__file_checksum_authorization_list__init_init_value;
  *(a1 + 16) = unk_279841D60;
  result = 0.0;
  *(a1 + 32) = xmmword_279841D70;
  *(a1 + 48) = 0;
  return result;
}

uint64_t chunkserver__file_checksum_authorization_list__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__file_checksum_authorization_list__descriptor)
  {
    chunkserver__file_checksum_authorization_list__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__file_checksum_authorization_list__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_checksum_authorization_list__descriptor)
  {
    chunkserver__file_checksum_authorization_list__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__file_checksum_authorization_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__file_checksum_authorization_list__descriptor)
    {
      chunkserver__file_checksum_authorization_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__container_element_reference__init(uint64_t a1)
{
  result = *&chunkserver__container_element_reference__init_init_value;
  *a1 = chunkserver__container_element_reference__init_init_value;
  *(a1 + 16) = unk_279841D98;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__file_checksum_chunk_references__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841DF0;
  *(a1 + 80) = unk_279841E00;
  *(a1 + 96) = 0;
  *a1 = chunkserver__file_checksum_chunk_references__init_init_value;
  *(a1 + 16) = unk_279841DC0;
  result = dbl_279841DE0[0];
  *(a1 + 32) = xmmword_279841DD0;
  *(a1 + 48) = *dbl_279841DE0;
  return result;
}

double chunkserver__file_checksum_storage_host_chunk_lists__init(uint64_t a1)
{
  *a1 = chunkserver__file_checksum_storage_host_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841E28;
  result = 0.0;
  *(a1 + 32) = xmmword_279841E38;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__file_groups__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841E90;
  *(a1 + 80) = unk_279841EA0;
  *(a1 + 96) = 0;
  *a1 = chunkserver__file_groups__init_init_value;
  *(a1 + 16) = unk_279841E60;
  result = dbl_279841E80[0];
  *(a1 + 32) = xmmword_279841E70;
  *(a1 + 48) = *dbl_279841E80;
  return result;
}

void **chunkserver__file_groups__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__file_groups__descriptor)
    {
      chunkserver__file_groups__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__storage_host_chunk_list__init(_OWORD *a1)
{
  a1[2] = xmmword_279841ED8;
  a1[3] = unk_279841EE8;
  a1[4] = xmmword_279841EF8;
  a1[5] = unk_279841F08;
  result = *&chunkserver__storage_host_chunk_list__init_init_value;
  *a1 = chunkserver__storage_host_chunk_list__init_init_value;
  a1[1] = unk_279841EC8;
  return result;
}

double chunkserver__chunk_key__init(_OWORD *a1)
{
  a1[2] = xmmword_279841F38;
  a1[3] = unk_279841F48;
  a1[4] = xmmword_279841F58;
  result = dbl_279841F28[0];
  *a1 = chunkserver__chunk_key__init_init_value;
  a1[1] = *dbl_279841F28;
  return result;
}

double chunkserver__get_file_chunk_keys__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841F88;
  *(a1 + 48) = unk_279841F98;
  *(a1 + 64) = 0;
  result = dbl_279841F78[0];
  *a1 = chunkserver__get_file_chunk_keys__init_init_value;
  *(a1 + 16) = *dbl_279841F78;
  return result;
}

double chunkserver__get_chunk_keys_request__init(_OWORD *a1)
{
  *a1 = chunkserver__get_chunk_keys_request__init_init_value;
  a1[1] = unk_279841FC0;
  result = 0.0;
  a1[2] = xmmword_279841FD0;
  return result;
}

uint64_t chunkserver__get_chunk_keys_request__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__get_chunk_keys_request__descriptor)
  {
    chunkserver__get_chunk_keys_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__get_chunk_keys_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__get_chunk_keys_request__descriptor)
  {
    chunkserver__get_chunk_keys_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__get_chunk_keys_request__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__get_chunk_keys_request__descriptor)
    {
      chunkserver__get_chunk_keys_request__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_chunk_keys__init(_OWORD *a1)
{
  a1[2] = xmmword_279842000;
  a1[3] = unk_279842010;
  a1[4] = xmmword_279842020;
  result = 0.0;
  *a1 = chunkserver__file_chunk_keys__init_init_value;
  a1[1] = *algn_279841FF0;
  return result;
}

double chunkserver__get_chunk_keys_response__init(_OWORD *a1)
{
  a1[2] = xmmword_279842050;
  a1[3] = unk_279842060;
  a1[4] = xmmword_279842070;
  result = dbl_279842040[0];
  *a1 = chunkserver__get_chunk_keys_response__init_init_value;
  a1[1] = *dbl_279842040;
  return result;
}

void **chunkserver__get_chunk_keys_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__get_chunk_keys_response__descriptor)
    {
      chunkserver__get_chunk_keys_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_file_chunk_keys__init(_OWORD *a1)
{
  a1[2] = xmmword_2798420A0;
  a1[3] = unk_2798420B0;
  a1[4] = xmmword_2798420C0;
  a1[5] = unk_2798420D0;
  result = *&chunkserver__put_file_chunk_keys__init_init_value;
  *a1 = chunkserver__put_file_chunk_keys__init_init_value;
  a1[1] = *algn_279842090;
  return result;
}

void **chunkserver__put_file_chunk_keys__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_file_chunk_keys__descriptor)
    {
      chunkserver__put_file_chunk_keys__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_chunk_keys_request__init(uint64_t a1)
{
  result = *&chunkserver__put_chunk_keys_request__init_init_value;
  *a1 = chunkserver__put_chunk_keys_request__init_init_value;
  *(a1 + 16) = *algn_2798420F0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t chunkserver__put_chunk_keys_request__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__put_chunk_keys_request__descriptor)
  {
    chunkserver__put_chunk_keys_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__put_chunk_keys_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_chunk_keys_request__descriptor)
  {
    chunkserver__put_chunk_keys_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__put_chunk_keys_request__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_chunk_keys_request__descriptor)
    {
      chunkserver__put_chunk_keys_request__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_chunk_keys_response__init(uint64_t a1)
{
  *a1 = chunkserver__put_chunk_keys_response__init_init_value;
  *(a1 + 16) = unk_279842118;
  result = 0.0;
  *(a1 + 32) = xmmword_279842128;
  *(a1 + 48) = 0;
  return result;
}

void **chunkserver__put_chunk_keys_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_chunk_keys_response__descriptor)
    {
      chunkserver__put_chunk_keys_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__clone_complete_request__init(uint64_t a1)
{
  result = *&chunkserver__clone_complete_request__init_init_value;
  *a1 = chunkserver__clone_complete_request__init_init_value;
  *(a1 + 16) = *algn_279842150;
  *(a1 + 32) = 0;
  return result;
}

uint64_t chunkserver__clone_complete_request__get_packed_size(void **a1)
{
  if (*a1 != &chunkserver__clone_complete_request__descriptor)
  {
    chunkserver__clone_complete_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__clone_complete_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__clone_complete_request__descriptor)
  {
    chunkserver__clone_complete_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

double chunkserver__clone_complete_response__init(uint64_t a1)
{
  *a1 = chunkserver__clone_complete_response__init_init_value;
  *(a1 + 16) = unk_279842178;
  result = 0.0;
  *(a1 + 32) = xmmword_279842188;
  *(a1 + 48) = 0;
  return result;
}

void **chunkserver__clone_complete_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__clone_complete_response__descriptor)
    {
      chunkserver__clone_complete_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

uint64_t mmcs_case_insensitive_set_create(void *a1, CFStringRef *a2, int64_t a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_case_insensitive_setGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v6, 0x10uLL);
  if (result)
  {
    v8 = result;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v9 = (result + 16);
    v10 = CFLocaleCreate(0, @"en_US");
    *v9 = v10;
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = malloc_type_calloc(a3, 8uLL, 0x6004044C4A2DFuLL);
    v12 = *MEMORY[0x277CBECE8];
    if (a3 < 1)
    {
      v8[3] = CFSetCreate(*MEMORY[0x277CBECE8], v11, 0, MEMORY[0x277CBF158]);
    }

    else
    {
      v13 = 0;
      do
      {
        if (*a2)
        {
          MutableCopy = CFStringCreateMutableCopy(v12, 0, *a2);
          if (MutableCopy)
          {
            v15 = MutableCopy;
            CFStringLowercase(MutableCopy, *v9);
            v11[v13++] = v15;
          }
        }

        ++a2;
        --a3;
      }

      while (a3);
      v8[3] = CFSetCreate(v12, v11, v13, MEMORY[0x277CBF158]);
      if (v13 >= 1)
      {
        v16 = v11;
        do
        {
          if (*v16)
          {
            CFRelease(*v16);
          }

          *v16++ = 0;
          --v13;
        }

        while (v13);
      }
    }

    free(v11);
    if (v8[3])
    {
      *a1 = v8;
      return 1;
    }

    else
    {
LABEL_18:
      C3BaseRelease(v8);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_case_insensitive_set_contains(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    return 0;
  }

  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v4 = MutableCopy;
  CFStringLowercase(MutableCopy, *(a1 + 16));
  v5 = CFSetContainsValue(*(a1 + 24), v4);
  CFRelease(v4);
  return v5;
}

void _mmcs_case_insensitive_setCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 16) = 0;
}

CFIndex mmcs_base64_encode_cfdata_to_cstring(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFDataGetBytePtr(result);
    if (result)
    {
      v2 = result;
      result = CFDataGetLength(v1);
      if (result)
      {
        v3 = result / 3;
        v4 = result % 3 ? result % 3 + 1 : 0;
        result = malloc_type_calloc(1uLL, (4 * (result / 3) + 4 * (result % 3 != 0)) | 1, 0x100004077774924uLL);
        if (result)
        {
          v5 = v4 + 4 * v3;
          v6 = v5 + 3;
          if (v5 >= 0)
          {
            v6 = v4 + 4 * v3;
          }

          v7 = v6 >> 2;
          v8 = (v4 & 3) != 0 ? v7 + 1 : v7;
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = v5 - 1;
            v11 = (v2 + 1);
            v12 = result + 1;
            while (1)
            {
              *(result + v9) = base64ValueLookupArray[*(v11 - 1) >> 2];
              if (v10 == v9)
              {
                mmcs_base64_encode_cfdata_to_cstring_cold_1();
              }

              if (v5 - 2 == v9)
              {
                *(result + v10) = base64ValueLookupArray[16 * (*(v11 - 1) & 3)];
                v10 = v9 + 2;
                v14 = 61;
                goto LABEL_22;
              }

              *(v12 + v9) = base64ValueLookupArray[(16 * (*(v11 - 1) & 3)) | (*v11 >> 4)];
              if (v5 - 3 == v9)
              {
                break;
              }

              v13 = v12 + v9;
              *(v13 + 1) = base64ValueLookupArray[(4 * (*v11 & 0xF)) | (v11[1] >> 6)];
              *(v13 + 2) = base64ValueLookupArray[v11[1] & 0x3F];
              v9 += 4;
              v11 += 3;
              if (!--v8)
              {
                return result;
              }
            }

            v14 = base64ValueLookupArray[4 * (*v11 & 0xF)];
LABEL_22:
            *(result + v10) = v14;
            *(result + v9 + 3) = 61;
          }
        }
      }
    }
  }

  return result;
}

CFDataRef mmcs_base64_encoded_cstring_to_cfdata(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if ((v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v7 = v5 - 43;
        v8 = v7 > 0x34;
        v9 = (1 << v7) & 0x10000000000015;
        if (v8 || v9 == 0)
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        v4 = v2;
        goto LABEL_14;
      }
    }

    if (v4)
    {
LABEL_14:
      v11 = v4 & 3;
      if ((v4 & 3) != 0)
      {
        v12 = (v4 >> 2) + 1;
      }

      else
      {
        v12 = v4 >> 2;
      }

      v13 = malloc_type_calloc(1uLL, 3 * v12, 0x100004077774924uLL);
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      if (!v12)
      {
        goto LABEL_46;
      }

      v15 = 0;
      v16 = v12 - 1;
      if (v11 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v11;
      }

      if (v11)
      {
        v18 = v17;
      }

      else
      {
        v18 = 4;
      }

      v35 = 3 * v12;
      while (2)
      {
        v19 = 3 * v15;
        v36 = 0;
        if (v15 < v16)
        {
          v20 = 0;
          while (1)
          {
            v21 = decimalValueFromBase64CString(a1, v3, v15, v20);
            *(&v36 + v20) = v21;
            if (v21 == 255)
            {
              break;
            }

            if (++v20 == 4)
            {
              goto LABEL_30;
            }
          }

LABEL_46:
          free(v14);
          return 0;
        }

        for (i = 0; i != v18; ++i)
        {
          v27 = decimalValueFromBase64CString(a1, v3, v15, i);
          *(&v36 + i) = v27;
          if (v27 == 255)
          {
            goto LABEL_46;
          }
        }

        if (v11 > 1)
        {
          v30 = &v14[v19];
          if (v11 == 2)
          {
            *v30 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            *(v30 + 1) = 0;
            v29 = v35 - 2;
          }

          else
          {
            v31 = BYTE1(v36);
            *v30 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            v30[1] = (BYTE2(v36) >> 2) & 0xF | v14[v19 + 1] | (16 * v31);
            v30[2] = 0;
            v29 = v35 - 1;
          }
        }

        else
        {
          if (!v11)
          {
LABEL_30:
            v22 = &v14[v19];
            v23 = BYTE1(v36);
            *v22 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            v24 = v14[v19 + 1] | (16 * v23);
            v25 = BYTE2(v36);
            v22[1] = (BYTE2(v36) >> 2) & 0xF | v24;
            v22[2] = HIBYTE(v36) & 0x3F | v14[v19 + 2] | (v25 << 6);
            goto LABEL_41;
          }

          v28 = &v14[v19];
          *v28 = 0;
          v28[2] = 0;
          v29 = v35 - 3;
        }

        v35 = v29;
LABEL_41:
        v16 = v12 - 1;
        if (++v15 != v12)
        {
          continue;
        }

        break;
      }

      if (v35)
      {
        v32 = *MEMORY[0x277CBECE8];
        v33 = *MEMORY[0x277CBECF0];

        return XCFDataCreateWithBytesNoCopy(v32, v14, v35, v33);
      }

      goto LABEL_46;
    }
  }

  return 0;
}

uint64_t decimalValueFromBase64CString(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 4 * a3;
  if (v4 >= a2)
  {
    return 0;
  }

  v5 = *(a1 + v4);
  v6 = v5 - 65;
  if ((v5 - 65) >= 0x1A)
  {
    if ((v5 - 97) <= 0x19)
    {
      return (v5 - 71);
    }

    if ((v5 - 48) <= 9)
    {
      return (v5 + 4);
    }

    if (v5 > 46)
    {
      if (v5 == 47 || v5 == 95)
      {
        return 63;
      }

      return -1;
    }

    v6 = 62;
    if (v5 != 43 && v5 != 45)
    {
      return -1;
    }
  }

  return v6;
}

uint64_t MMCSItemFDReaderWriterCreateWithFileDescriptor(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) != 0)
  {
    v4 = mmcs_logging_logger_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Attempted to create MMCSItemFDReaderWriter with invalid file descriptor (%d)", a1);
      v6 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    result = 0;
  }

  else
  {
    v2 = C3TypeRegister(&MMCSItemFDReaderWriterGetTypeID_typeID);
    result = C3TypeCreateInstance_(0, v2, 8uLL);
    if (result)
    {
      *(result + 16) = a1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *MMCSItemReaderWriterCreateWithPlainFileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MMCSItemFDReaderWriterCreateWithFileDescriptor(a1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v11[0] = 7;
  v11[1] = v7;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = C3BaseRetain;
  v11[5] = C3BaseRelease;
  v11[6] = MMCSItemFDReaderWriterStat1;
  v11[7] = MMCSItemFDReaderWriterOpen;
  v11[8] = MMCSItemFDReaderWriterRead;
  v11[9] = MMCSItemFDReaderWriterClose;
  v11[10] = MMCSItemFDReaderWriterGetCacheBlobWithName;
  v11[11] = MMCSItemFDReaderWriterSetCacheBlobWithName;
  v11[12] = MMCSItemFDReaderWriterInvalidate;
  v11[13] = MMCSItemFDReaderWriterWrite;
  v11[14] = MMCSItemFDReaderWriterCopyAndClearProperty;
  v11[15] = MMCSItemFDReaderWriterSeek;
  v11[16] = a4;
  v11[17] = MMCSItemFDReaderWriterCopyProperty;
  v11[18] = MMCSItemFDReaderWriterSync;
  v11[19] = MMCSItemFDReaderWriterValidated;
  v9 = MMCSItemReaderWriterCreate(v11);
  C3BaseRelease(v8);
  return v9;
}

uint64_t MMCSItemFDReaderWriterStat1(uint64_t a1, uint64_t a2, __CFDictionary **a3, CFErrorRef *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  memset(&v33, 0, sizeof(v33));
  if (fstat(*(a2 + 16), &v33) == -1)
  {
    v14 = __error();
    v15 = *v14;
    v16 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v14, 0);
    v17 = *(a2 + 16);
    strerror(v15);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v16, @"Stating the fd (%d) readerWriter failed: %s", v18, v19, v20, v21, v17);
    if (v16)
    {
      CFRelease(v16);
    }

    Mutable = 0;
    if (!a4)
    {
LABEL_25:
      v28 = 0;
      v29 = 0;
      if (!Mutable)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:
    CFRetain(error_with_underlying_error);
    *a4 = error_with_underlying_error;
    goto LABEL_25;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v23 = @"MMCSItemFDReaderStat1 create statsDict";
    goto LABEL_23;
  }

  valuePtr = v33.st_size;
  v9 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v9;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileSize", v9);
    CFRelease(v11);
  }

  valuePtr = v33.st_ino;
  v12 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  if (v12)
  {
    v13 = v12;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileSystemFileNumber", v12);
    CFRelease(v13);
  }

  else
  {
    v10 = 1;
  }

  valuePtr = v33.st_mtimespec.tv_sec;
  v24 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  if (v24)
  {
    v25 = v24;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileModificationTime", v24);
    CFRelease(v25);
  }

  else
  {
    v10 = 1;
  }

  st_gen = v33.st_gen;
  v26 = CFNumberCreate(v7, kCFNumberSInt32Type, &st_gen);
  if (!v26 || (v27 = v26, CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileGenerationNumber", v26), CFRelease(v27), v10))
  {
    v23 = @"MMCSItemFDReaderStat1 create number failed";
LABEL_23:
    error_with_underlying_error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, v23);
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a3)
  {
    CFRetain(Mutable);
    error_with_underlying_error = 0;
    *a3 = Mutable;
  }

  else
  {
    error_with_underlying_error = 0;
  }

  v28 = 1;
LABEL_26:
  CFRelease(Mutable);
  v29 = v28;
LABEL_27:
  if (error_with_underlying_error)
  {
    CFRelease(error_with_underlying_error);
  }

  return v29;
}

uint64_t MMCSItemFDReaderWriterOpen(uint64_t a1, uint64_t a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if ((v8 & 0x80000000) == 0)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Opening the fd (%d) reader writer failed: invalid file descriptor", a4, a5, a6, a7, a8, v8);
  result = 0;
  *a3 = v11;
  return result;
}

uint64_t MMCSItemFDReaderWriterRead(int a1, uint64_t a2, off_t a3, void *__buf, size_t __nbyte, ssize_t *a6, CFErrorRef *a7)
{
  v10 = pread(*(a2 + 16), __buf, __nbyte, a3);
  if (v10 == -1)
  {
    v12 = __error();
    if (a7)
    {
      v13 = *v12;
      v14 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v12, 0);
      v15 = *(a2 + 16);
      strerror(v13);
      *a7 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v14, @"Reading from the fd (%d) readerWriter failed: %s", v16, v17, v18, v19, v15);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    return 0;
  }

  else
  {
    *a6 = v10;
    return 1;
  }
}

uint64_t MMCSItemFDReaderWriterClose(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v3 = *(a2 + 16);
  if (v3 < 0)
  {
    return 1;
  }

  if (close(v3) == -1)
  {
    v7 = __error();
    if (a3)
    {
      v8 = *v7;
      v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v7, 0);
      v10 = *(a2 + 16);
      strerror(v8);
      *a3 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v9, @"Closing the fd (%d) reader failed: %s", v11, v12, v13, v14, v10);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  *(a2 + 16) = -1;
  return result;
}

uint64_t MMCSItemFDReaderWriterGetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    MMCSItemFDReaderWriterGetCacheBlobWithName_cold_2();
  }

  if (!a2)
  {
    MMCSItemFDReaderWriterGetCacheBlobWithName_cold_1();
  }

  v9 = *(a2 + 16);
  v10 = *(*(a1 + 24) + 24);
  if (v10)
  {
    CStringWithCFString = createCStringWithCFString(v10);
  }

  else
  {
    CStringWithCFString = 0;
  }

  if (v9 == -1)
  {
    v17 = 0;
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderGetCacheBlobWithName fd==-1", a4, a5, a6, a7, a8, v20);
    if (!CStringWithCFString)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = CKGetCacheBlobFd();
  if (CStringWithCFString)
  {
LABEL_8:
    free(CStringWithCFString);
  }

LABEL_9:
  v18 = cf;
  if (a5 && (v17 & 1) == 0)
  {
    if (!cf)
    {
      v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderGetCacheBlobWithName no error provided", v12, v13, v14, v15, v16, v20);
      cf = v18;
    }

    CFRetain(v18);
    v18 = cf;
    *a5 = cf;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t MMCSItemFDReaderWriterSetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    MMCSItemFDReaderWriterSetCacheBlobWithName_cold_2();
  }

  if (!a2)
  {
    MMCSItemFDReaderWriterSetCacheBlobWithName_cold_1();
  }

  v9 = *(a2 + 16);
  v10 = *(*(a1 + 24) + 24);
  if (v10)
  {
    CStringWithCFString = createCStringWithCFString(v10);
  }

  else
  {
    CStringWithCFString = 0;
  }

  if (v9 == -1)
  {
    v17 = 0;
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderWriterSetCacheBlobWithName fd==-1", a4, a5, a6, a7, a8, v20);
    if (!CStringWithCFString)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = CKSetCacheBlobFd();
  if (CStringWithCFString)
  {
LABEL_8:
    free(CStringWithCFString);
  }

LABEL_9:
  v18 = cf;
  if (a5 && (v17 & 1) == 0)
  {
    if (!cf)
    {
      v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderWriterSetCacheBlobWithName no error provided", v12, v13, v14, v15, v16, v20);
      cf = v18;
    }

    CFRetain(v18);
    v18 = cf;
    *a5 = cf;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t MMCSItemFDReaderWriterWrite(int a1, uint64_t a2, off_t a3, void *__buf, size_t __nbyte, ssize_t *a6, CFErrorRef *a7)
{
  v7 = *(a2 + 16);
  if (v7 == -1)
  {
    MMCSItemFDReaderWriterWrite_cold_1();
  }

  v11 = pwrite(v7, __buf, __nbyte, a3);
  if (v11 < 0)
  {
    v13 = __error();
    if (a7)
    {
      v14 = *v13;
      v15 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v13, 0);
      v16 = *(a2 + 16);
      strerror(v14);
      *a7 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v15, @"Writing to the fd (%d) readerWriter failed: %s", v17, v18, v19, v20, v16);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    return 0;
  }

  else
  {
    *a6 = v11;
    return 1;
  }
}

CFNumberRef MMCSItemFDReaderWriterCopyAndClearProperty(int a1, uint64_t a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"kMMCSItemReaderWriterPropertyUnderlyingFileDescriptor", 0))
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v5 = (a2 + 16);
  if (v6 == -1)
  {
    return 0;
  }

  result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, v5);
  *v5 = -1;
  return result;
}

uint64_t MMCSItemFDReaderWriterSeek(int a1, uint64_t a2, off_t a3, CFErrorRef *a4)
{
  v7 = lseek(*(a2 + 16), a3, 0);
  if (v7 == -1)
  {
    v14 = __error();
    if (a4)
    {
      v15 = *v14;
      v16 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v14, 0);
      v17 = *(a2 + 16);
      strerror(v15);
      *a4 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v16, @"Seeking from the fd (%d) readerWriter failed: %s", v18, v19, v20, v21, v17);
      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  else
  {
    if (v7 == a3)
    {
      return 1;
    }

    if (a4)
    {
      v22 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Seeking from the fd (%d) readerWriter failed. Offset requested %lld. Offset returned %lld.", v8, v9, v10, v11, v12, *(a2 + 16));
      result = 0;
      *a4 = v22;
      return result;
    }
  }

  return 0;
}

uint64_t MMCSItemFDReaderWriterSync(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (!fcntl(*(a2 + 16), 51))
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *__error();
  v7 = __error();
  strerror(*v7);
  v13 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"fcntl F_FULLFSYNC for fd (%d) readerWriter failed. %d %s"), v8, v9, v10, v11, v12, v5);
  result = 0;
  *a3 = v13;
  return result;
}

void _MMCSItemFDReaderWriterCFFinalize(uint64_t a1)
{
  *&v15[7] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (close(*(a1 + 16)))
    {
      v3 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 16);
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v12 = 67109634;
        v13 = v4;
        v14 = 1024;
        *v15 = v5;
        v15[2] = 2080;
        *&v15[3] = v7;
        _os_log_impl(&dword_2577D8000, v3, OS_LOG_TYPE_ERROR, "error closing file descriptor (%d) : posix error %d (%s)", &v12, 0x18u);
      }
    }

    v8 = CFAbsoluteTimeGetCurrent() - Current;
    if (v8 > 0.25)
    {
      v9 = mmcs_logging_logger_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 16);
        v12 = 67109376;
        v13 = v10;
        v14 = 2048;
        *v15 = v8;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_ERROR, "closing fd (%d) took %.3f seconds!", &v12, 0x12u);
      }
    }

    *(a1 + 16) = -1;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void mmcs_operation_metric_reference_time()
{
  if (*&mmcs_operation_metric_reference_time_origin == 0.0)
  {
    mmcs_operation_metric_reference_time_origin = CFAbsoluteTimeGetCurrent();
  }
}

void mmcs_operation_metric_increment_uint64_dictionary_key(void *a1, void *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = [v7 unsignedLongLongValue];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8 + a3];
    [v6 setObject:v9 forKeyedSubscript:v5];
  }
}

void mmcs_operation_metric_test()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = create(1, 0.0, 1.0);
  [v0 addObject:v1];

  v2 = [MMCSOperationMetric alloc];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(MMCSOperationMetric *)v2 initWithDate:v3];

  v5 = MMCSOperationStateTimeRangeMergedRanges(v4, v0);
  if ([v5 count] != 1)
  {
    mmcs_operation_metric_test_cold_1();
  }

  v6 = [v5 firstObject];
  [v6 relativeStart];
  if (v7 != 0.0)
  {
    mmcs_operation_metric_test_cold_38();
  }

  [v6 duration];
  if (v8 != 1.0)
  {
    mmcs_operation_metric_test_cold_37();
  }

  v9 = MMCSOperationStateTimeRangeMergedRanges(0, v0);

  if (!v9)
  {
    mmcs_operation_metric_test_cold_36();
  }

  if ([v9 count])
  {
    mmcs_operation_metric_test_cold_2();
  }

  v10 = MMCSOperationStateTimeRangeMergedRanges(v4, 0);

  if (!v10)
  {
    mmcs_operation_metric_test_cold_35();
  }

  if ([v10 count])
  {
    mmcs_operation_metric_test_cold_3();
  }

  v11 = MMCSOperationStateTimeRangeMergedRanges(0, 0);

  if (!v11)
  {
    mmcs_operation_metric_test_cold_34();
  }

  if ([v11 count])
  {
    mmcs_operation_metric_test_cold_4();
  }

  v12 = [MEMORY[0x277CBEB18] array];

  v13 = create(1, 0.0, 1.0);
  [v12 addObject:v13];

  v14 = create(1, 2.0, 1.0);
  [v12 addObject:v14];

  v15 = MMCSOperationStateTimeRangeMergedRanges(v4, v12);

  if ([v15 count] != 2)
  {
    mmcs_operation_metric_test_cold_5();
  }

  v16 = [v15 firstObject];

  [v16 relativeStart];
  if (v17 != 0.0)
  {
    mmcs_operation_metric_test_cold_33();
  }

  [v16 duration];
  if (v18 != 1.0)
  {
    mmcs_operation_metric_test_cold_32();
  }

  v19 = [v15 objectAtIndexedSubscript:1];

  [v19 relativeStart];
  if (v20 != 2.0)
  {
    mmcs_operation_metric_test_cold_31();
  }

  [v19 duration];
  if (v21 != 1.0)
  {
    mmcs_operation_metric_test_cold_30();
  }

  v22 = [MEMORY[0x277CBEB18] array];

  v23 = create(1, 0.0, 1.0);
  [v22 addObject:v23];

  v24 = create(1, 1.0, 1.0);
  [v22 addObject:v24];

  v25 = MMCSOperationStateTimeRangeMergedRanges(v4, v22);

  if ([v25 count] != 1)
  {
    mmcs_operation_metric_test_cold_6();
  }

  v26 = [v25 firstObject];

  [v26 relativeStart];
  if (v27 != 0.0)
  {
    mmcs_operation_metric_test_cold_29();
  }

  [v26 duration];
  if (v28 != 2.0)
  {
    mmcs_operation_metric_test_cold_28();
  }

  v29 = [MEMORY[0x277CBEB18] array];

  v30 = create(1, 0.0, 1.0);
  [v29 addObject:v30];

  v31 = create(1, 0.5, 1.0);
  [v29 addObject:v31];

  v32 = MMCSOperationStateTimeRangeMergedRanges(v4, v29);

  if ([v32 count] != 1)
  {
    mmcs_operation_metric_test_cold_7();
  }

  v33 = [v32 firstObject];

  [v33 relativeStart];
  if (v34 != 0.0)
  {
    mmcs_operation_metric_test_cold_27();
  }

  [v33 duration];
  if (v35 != 1.5)
  {
    mmcs_operation_metric_test_cold_26();
  }

  v36 = [MMCSOperationMetric alloc];
  v37 = [MEMORY[0x277CBEAA8] date];
  v38 = [(MMCSOperationMetric *)v36 initWithDate:v37];

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = create(0, 0.5, 1.0);
  [v40 addObject:v41];

  v42 = create(1, 0.0, 1.0);
  [v39 addObject:v42];

  v43 = MMCSOperationStateTimeRangeFilteredRanges(v38, v40, v39);
  if ([v43 count] != 1)
  {
    mmcs_operation_metric_test_cold_8();
  }

  v44 = [v43 firstObject];
  [v44 relativeStart];
  if (v45 != 1.0)
  {
    mmcs_operation_metric_test_cold_25();
  }

  [v44 duration];
  if (v46 != 0.5)
  {
    mmcs_operation_metric_test_cold_24();
  }

  v47 = [MEMORY[0x277CBEB18] array];

  v48 = [MEMORY[0x277CBEB18] array];

  v49 = create(0, 0.5, 1.0);
  [v48 addObject:v49];

  v50 = create(1, 1.0, 0.25);
  [v47 addObject:v50];

  v51 = MMCSOperationStateTimeRangeFilteredRanges(v38, v48, v47);

  if ([v51 count] != 2)
  {
    mmcs_operation_metric_test_cold_9();
  }

  v52 = [v51 objectAtIndexedSubscript:0];

  [v52 relativeStart];
  if (v53 != 0.5)
  {
    mmcs_operation_metric_test_cold_23();
  }

  [v52 duration];
  if (v54 != 0.5)
  {
    mmcs_operation_metric_test_cold_22();
  }

  v55 = [v51 objectAtIndexedSubscript:1];

  [v55 relativeStart];
  if (v56 != 1.25)
  {
    mmcs_operation_metric_test_cold_21();
  }

  [v55 duration];
  if (v57 != 0.25)
  {
    mmcs_operation_metric_test_cold_20();
  }

  v58 = [MEMORY[0x277CBEB18] array];

  v59 = [MEMORY[0x277CBEB18] array];

  v60 = create(0, 0.5, 1.0);
  [v59 addObject:v60];

  v61 = create(1, 1.0, 1.0);
  [v58 addObject:v61];

  v62 = MMCSOperationStateTimeRangeFilteredRanges(v38, v59, v58);

  if ([v62 count] != 1)
  {
    mmcs_operation_metric_test_cold_10();
  }

  v63 = [v62 firstObject];

  [v63 relativeStart];
  if (v64 != 0.5)
  {
    mmcs_operation_metric_test_cold_19();
  }

  [v63 duration];
  if (v65 != 0.5)
  {
    mmcs_operation_metric_test_cold_18();
  }

  v66 = [MEMORY[0x277CBEB18] array];

  v67 = [MEMORY[0x277CBEB18] array];

  v68 = create(0, 0.5, 1.0);
  [v67 addObject:v68];

  v69 = create(1, 0.0, 2.0);
  [v66 addObject:v69];

  v70 = MMCSOperationStateTimeRangeFilteredRanges(v38, v67, v66);

  if ([v70 count])
  {
    mmcs_operation_metric_test_cold_11();
  }

  v71 = [MEMORY[0x277CBEB18] array];

  v72 = [MEMORY[0x277CBEB18] array];

  v73 = create(0, 0.5, 1.0);
  [v72 addObject:v73];

  v74 = create(1, 0.0, 0.25);
  [v71 addObject:v74];

  v75 = MMCSOperationStateTimeRangeFilteredRanges(v38, v72, v71);

  if ([v75 count] != 1)
  {
    mmcs_operation_metric_test_cold_12();
  }

  v76 = [v75 firstObject];

  [v76 relativeStart];
  if (v77 != 0.5)
  {
    mmcs_operation_metric_test_cold_17();
  }

  [v76 duration];
  if (v78 != 1.0)
  {
    mmcs_operation_metric_test_cold_16();
  }

  v79 = [MEMORY[0x277CBEB18] array];

  v86 = [MEMORY[0x277CBEB18] array];

  v80 = create(0, 0.5, 1.0);
  [v86 addObject:v80];

  v81 = create(1, 2.0, 0.25);
  [v79 addObject:v81];

  v82 = MMCSOperationStateTimeRangeFilteredRanges(v38, v86, v79);

  if ([v82 count] != 1)
  {
    mmcs_operation_metric_test_cold_13();
  }

  v83 = [v82 firstObject];

  [v83 relativeStart];
  if (v84 != 0.5)
  {
    mmcs_operation_metric_test_cold_15();
  }

  [v83 duration];
  if (v85 != 1.0)
  {
    mmcs_operation_metric_test_cold_14();
  }
}

MMCSOperationMetric *mmcs_metrics_create_metric_object(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    v3 = CFEqual(@"put", v2);
    v4 = *(a1 + 16);
    if (v3)
    {
      v5 = 1;
      if (!v4)
      {
        goto LABEL_7;
      }

LABEL_46:
      if (CFEqual(@"get", v4))
      {
        v6 = 1;
      }

      else
      {
        v6 = CFEqual(@"getSection", *(a1 + 16)) != 0;
      }

      goto LABEL_8;
    }

    v5 = CFEqual(@"putSection", v4) != 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [MMCSOperationMetric alloc];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 32)];
  v9 = [(MMCSOperationMetric *)v7 initWithDate:v8];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = v11 <= 0.0 || v10 <= 0.0 || v10 > v11;
  v14 = v11 - v10;
  if (v13)
  {
    v14 = 0.0;
  }

  [(MMCSOperationMetric *)v9 setDuration:v14];
  if (*(a1 + 136))
  {
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = *(a1 + 136);
    v32.length = CFArrayGetCount(v16);
    v32.location = 0;
    CFArrayApplyFunction(v16, v32, add_chunking_metric, v15);
    if ([v15 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v15);
    }
  }

  if (*(a1 + 72))
  {
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = *(a1 + 72);
    v33.length = CFArrayGetCount(v18);
    v33.location = 0;
    CFArrayApplyFunction(v18, v33, add_http_metric, v17);
    if ([v17 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v17);
    }
  }

  if (*(a1 + 80))
  {
    v19 = [MEMORY[0x277CBEB18] array];
    v20 = *(a1 + 80);
    v34.length = CFArrayGetCount(v20);
    v34.location = 0;
    CFArrayApplyFunction(v20, v34, add_http_metric, v19);
    if ([v19 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v19);
    }
  }

  if (*(a1 + 88) != 0 && v5)
  {
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = *(a1 + 88);
    v35.length = CFArrayGetCount(v22);
    v35.location = 0;
    CFArrayApplyFunction(v22, v35, add_http_metric, v21);
    v23 = [(MMCSOperationMetric *)v9 ranges];
    v24 = v23;
    if (v23 && [v23 count])
    {
      v25 = [v24 lastObject];
      if ([v21 count])
      {
        v26 = 0;
        do
        {
          v27 = [v21 objectAtIndexedSubscript:v26];
          [v27 absoluteStop];
          v29 = v28;
          [v25 absoluteStop];
          if (v29 >= v30)
          {
            ++v26;
          }

          else
          {
            [v21 removeObjectAtIndex:v26];
          }
        }

        while (v26 < [v21 count]);
      }
    }

    else
    {
      v25 = 0;
    }

    if ([v21 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v21);
    }
  }

  if (v6)
  {
    [(MMCSOperationMetric *)v9 setBytesFulfilledByPeers:*(a1 + 104)];
    [(MMCSOperationMetric *)v9 setBytesFulfilledLocally:*(a1 + 112)];
    [(MMCSOperationMetric *)v9 setBytesResumed:*(a1 + 120)];
  }

  [(MMCSOperationMetric *)v9 rangesCompleted];
  return v9;
}

void add_chunking_metric(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) > 0.0 && !*(a1 + 72) && !*(a1 + 64))
  {
    v16 = v3;
    v4 = [MMCSOperationMetric alloc];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
    v6 = [(MMCSOperationMetric *)v4 initWithDate:v5];

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = v8 <= 0.0 || v7 <= 0.0 || v7 > v8;
    v11 = v8 - v7;
    if (v10)
    {
      v11 = 0.0;
    }

    [(MMCSOperationMetric *)v6 setDuration:v11];
    v12 = *(a1 + 40);
    v13 = [(MMCSOperationMetric *)v6 totalBytesByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v13, v12, *(a1 + 24));

    v14 = [(MMCSOperationMetric *)v6 chunkCountByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v14, v12, *(a1 + 32));

    v15 = [(MMCSOperationMetric *)v6 fileCountByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v15, v12, 1);

    [v16 addObject:v6];
    v3 = v16;
  }
}

void add_http_metric(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[3];
  if (*(v4 + 56) > 0.0)
  {
    v29 = v3;
    v5 = [MMCSOperationMetric alloc];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1[3] + 56)];
    v7 = [(MMCSOperationMetric *)v5 initWithDate:v6];

    v8 = *(v4 + 56);
    v9 = 0.0;
    if (*(v4 + 224))
    {
      v10 = *(v4 + 232);
      v12 = v8 <= 0.0 || v10 <= 0.0 || v10 > v8;
      v13 = v8 - v10;
      if (v12)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 > 0.0)
      {
        v15 = [MMCSOperationStateTimeRange alloc];
        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 232)];
        v17 = [(MMCSOperationStateTimeRange *)v15 initWithOperationState:0 startDate:v16 duration:v14];

        [(MMCSOperationMetric *)v7 addRange:v17];
        v8 = *(v4 + 56);
      }
    }

    else
    {
      v14 = 0.0;
    }

    v18 = *(v4 + 104);
    v20 = v18 <= 0.0 || v8 <= 0.0 || v8 > v18;
    v21 = v18 - v8;
    if (!v20)
    {
      v9 = v21;
    }

    if (v9 > 0.0)
    {
      v22 = [MMCSOperationStateTimeRange alloc];
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 56)];
      v24 = [(MMCSOperationStateTimeRange *)v22 initWithOperationState:1 startDate:v23 duration:v9];

      [(MMCSOperationMetric *)v7 addRange:v24];
    }

    [(MMCSOperationMetric *)v7 setDuration:v14 + v9];
    [(MMCSOperationMetric *)v7 rangesCompleted];
    if (*(v4 + 112) >= 1)
    {
      [(MMCSOperationMetric *)v7 setBytesUploaded:?];
    }

    if (*(v4 + 168))
    {
      [(MMCSOperationMetric *)v7 setBytesDownloaded:*(v4 + 176)];
    }

    [(MMCSOperationMetric *)v7 setConnections:1];
    [(MMCSOperationMetric *)v7 setConnectionsCreated:*(a1[7] + 44) == 0];
    v25 = a1[5];
    if (v25)
    {
      v26 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v25);
      if (v26)
      {
        v27 = v26;
        v28 = [(MMCSOperationMetric *)v7 requestUUIDs];
        [v28 addObject:v27];

        CFRelease(v27);
      }
    }

    [v29 addObject:v7];

    v3 = v29;
  }
}

MMCSOperationStateTimeRange *create(uint64_t a1, double a2, double a3)
{
  v6 = [MMCSOperationStateTimeRange alloc];
  v7 = MEMORY[0x277CBEAA8];
  Current = *&mmcs_operation_metric_reference_time_origin;
  if (*&mmcs_operation_metric_reference_time_origin == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    mmcs_operation_metric_reference_time_origin = *&Current;
  }

  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:Current + a2];
  v10 = [(MMCSOperationStateTimeRange *)v6 initWithOperationState:a1 startDate:v9 duration:a3];

  return v10;
}

uint64_t mmcs_perform_run_loop_timer_create(void *a1, _OWORD *a2, uint64_t a3, const __CFArray *a4)
{
  *a1 = 0;
  v15 = 0;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = mmcs_perform_timer_create(&v15, 1, 8, v14);
  v9 = v15;
  if (v8 && v15)
  {
    v10 = v15[7];
    context.version = 0;
    context.info = v15;
    context.retain = C3BaseRetain;
    context.release = C3BaseRelease;
    context.copyDescription = 0;
    v11 = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], 6.3113904e10, 6.3113904e10, 0, 0, mmcs_perform_run_loop_timer_perform_callback, &context);
    *v10 = v11;
    XCFRunLoopAddTimerToModes(a3, v11, a4);
    C3BaseRetain(v15);
    v9 = v15;
    *a1 = v15;
  }

  if (v9)
  {
    C3BaseRelease(v9);
  }

  return v8;
}

void mmcs_perform_run_loop_timer_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_run_loop_timer_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRunLoopTimerInvalidate(*v1);
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
  }
}

__CFString *MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279844D08[a1];
  }
}

void mmcs_http_request_options_append_description(uint64_t a1, __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  if (*(a1 + 96))
  {
    v7 = @"allowsRetry";
  }

  else
  {
    v7 = @"!allowsRetry";
  }

  CFArrayAppendValue(Mutable, v7);
  v8 = *(a1 + 104);
  if (v8)
  {
    if (CFBooleanGetValue(v8))
    {
      v9 = @"privacyProxyFailClosedOverride";
    }

    else
    {
      v9 = @"!privacyProxyFailClosedOverride";
    }

    CFArrayAppendValue(v6, v9);
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    if (CFBooleanGetValue(v10))
    {
      v11 = @"useNWLoaderOverride";
    }

    else
    {
      v11 = @"!useNWLoaderOverride";
    }

    CFArrayAppendValue(v6, v11);
  }

  v12 = *(a1 + 80);
  if (v12 <= 2)
  {
    CFArrayAppendValue(v6, off_279844D20[v12]);
  }

  v13 = *(a1 + 88);
  if (v13 <= 2)
  {
    CFArrayAppendValue(v6, off_279844D38[v13]);
  }

  if (*(a1 + 16))
  {
    v14 = CFStringCreateWithFormat(v4, 0, @"if=%@", *(a1 + 16));
    CFArrayAppendValue(v6, v14);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (*(a1 + 74))
  {
    v15 = @"allowsCell";
  }

  else
  {
    v15 = @"!allowsCell";
  }

  CFArrayAppendValue(v6, v15);
  if (*(a1 + 72))
  {
    v16 = @"powerPluggedIn";
  }

  else
  {
    v16 = @"!powerPluggedIn";
  }

  CFArrayAppendValue(v6, v16);
  if (*(a1 + 73))
  {
    v17 = @"allowsPowerNapScheduling";
  }

  else
  {
    v17 = @"!allowsPowerNapScheduling";
  }

  CFArrayAppendValue(v6, v17);
  if (*(a1 + 48))
  {
    v18 = CFStringCreateWithFormat(v4, 0, @"connectionPoolName=%@", *(a1 + 48));
    CFArrayAppendValue(v6, v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    valuePtr = -1;
    if (CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr))
    {
      v20 = CFStringCreateWithFormat(v4, 0, @"networkServiceType=%lld", valuePtr);
      CFArrayAppendValue(v6, v20);
      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  if (*(a1 + 24))
  {
    v21 = CFStringCreateWithFormat(v4, 0, @"app=%@", *(a1 + 24));
    CFArrayAppendValue(v6, v21);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (*(a1 + 32))
  {
    v22 = CFStringCreateWithFormat(v4, 0, @"app2=%@", *(a1 + 32));
    CFArrayAppendValue(v6, v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (*(a1 + 40))
  {
    CFArrayAppendValue(v6, @"auditToken=Y");
  }

  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v24 = Count;
    for (i = 0; i != v24; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      CFStringAppend(a2, @" ");
      CFStringAppend(a2, ValueAtIndex);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL caseInsensitveStringEqualCallBack(const __CFString *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1) && (v5 = CFStringGetTypeID(), v5 == CFGetTypeID(a2)))
  {
    return CFStringCompare(a1, a2, 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    return 0;
  }
}

CFHashCode caseInsensitiveStringHashCallBack(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  CFStringFold(MutableCopy, 1uLL, 0);
  v2 = CFHash(MutableCopy);
  CFRelease(MutableCopy);
  return v2;
}

uint64_t mmcs_http_request_options_create_with_dictionary(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = C3TypeRegister(&mmcs_http_request_optionsGetTypeID_typeID);
  result = C3TypeCreateInstance_(0, v4, 0x88uLL);
  if (result)
  {
    v6 = result;
    *(result + 80) = 0;
    v7 = (result + 80);
    *(result + 74) = 257;
    *(result + 78) = 0;
    *(result + 104) = 0;
    v8 = (result + 104);
    *(result + 144) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 112) = 0;
    if (a2)
    {
      *(result + 72) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionRequiresPowerPluggedIn", *(result + 72));
      BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsCellularAccess", *(v6 + 74));
      *(v6 + 74) = BOOLean_from_cfdictionary_object_for_key;
      *(v6 + 75) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsExpensiveAccess", BOOLean_from_cfdictionary_object_for_key);
      *(v6 + 76) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsUCA", *(v6 + 76));
      *(v6 + 73) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsPowerNapScheduling", *(v6 + 73));
      Value = CFDictionaryGetValue(a2, @"kMMCSRequestOptionDiscretionaryNetworkBehavior");
      if (Value)
      {
        v11 = Value;
        v12 = CFGetTypeID(Value);
        if (v12 == CFNumberGetTypeID())
        {
          valuePtr = -1;
          if (CFNumberGetValue(v11, kCFNumberCFIndexType, &valuePtr))
          {
            *v7 = valuePtr;
          }
        }
      }

      v13 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionDuetPreClearedMode");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == CFNumberGetTypeID())
        {
          valuePtr = -1;
          if (CFNumberGetValue(v14, kCFNumberCFIndexType, &valuePtr))
          {
            *(v6 + 88) = valuePtr;
          }
        }
      }

      v16 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionAllowsRetryForBackgroundDataTasks");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFBooleanGetTypeID())
        {
          *(v6 + 96) = CFBooleanGetValue(v17);
        }
      }

      v19 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionPrivacyProxyFailClosedOverride");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFBooleanGetTypeID())
        {
          *v8 = CFRetain(v20);
        }
      }

      v22 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionUseNWLoaderOverride");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFBooleanGetTypeID())
        {
          *(v6 + 112) = CFRetain(v23);
        }
      }

      v25 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionMetricOptions");
      if (v25)
      {
        v26 = v25;
        CFRetain(v25);
        *(v6 + 120) = v26;
      }

      v27 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionNetworkingDelegate");
      if (v27)
      {
        v28 = v27;
        CFRetain(v27);
        *(v6 + 128) = v28;
      }

      v29 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationBundleIdentifier");
      if (v29)
      {
        v30 = v29;
        v31 = CFGetTypeID(v29);
        if (v31 == CFStringGetTypeID())
        {
          *(v6 + 24) = CFRetain(v30);
        }
      }

      v32 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationSecondaryBundleIdentifier");
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          *(v6 + 32) = CFRetain(v33);
        }
      }

      v35 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationAuditTokenData");
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFDataGetTypeID())
        {
          *(v6 + 40) = CFRetain(v36);
        }
      }

      v38 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionBackgroundConnectionPoolName");
      if (v38)
      {
        v39 = v38;
        v40 = CFGetTypeID(v38);
        if (v40 == CFStringGetTypeID())
        {
          *(v6 + 48) = CFRetain(v39);
        }
      }

      v41 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionBoundInterfaceIdentifier");
      if (v41)
      {
        v42 = v41;
        v43 = CFGetTypeID(v41);
        if (v43 == CFStringGetTypeID())
        {
          *(v6 + 16) = CFRetain(v42);
        }
      }

      v44 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionNetworkServiceType");
      if (v44)
      {
        v45 = v44;
        v46 = CFGetTypeID(v44);
        if (v46 == CFNumberGetTypeID())
        {
          *(v6 + 56) = CFRetain(v45);
        }
      }

      v47 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionInsertHeaders");
      if (v47)
      {
        v48 = v47;
        v49 = CFGetTypeID(v47);
        if (v49 == CFDictionaryGetTypeID())
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &_myCFStringCaseInsensitiveKeyCallbacks, MEMORY[0x277CBF150]);
          CFDictionaryApplyFunction(v48, _add_values, Mutable);
          *(v6 + 64) = Mutable;
        }
      }

      v51 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionContainerType");
      if (v51)
      {
        v52 = v51;
        v53 = CFGetTypeID(v51);
        if (v53 == CFNumberGetTypeID())
        {
          *(v6 + 136) = CFRetain(v52);
        }
      }
    }

    if (a1)
    {
      *a1 = v6;
    }

    else
    {
      C3BaseRelease(v6);
    }

    return 1;
  }

  return result;
}

uint64_t mmcs_http_request_options_create_copy(uint64_t a1)
{
  v2 = C3TypeRegister(&mmcs_http_request_optionsGetTypeID_typeID);
  Instance = C3TypeCreateInstance_(0, v2, 0x88uLL);
  if (Instance)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277CBECE8];
    if (v4)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v4);
    }

    else
    {
      Copy = 0;
    }

    *(Instance + 16) = Copy;
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = CFStringCreateCopy(*v5, v7);
    }

    else
    {
      v8 = 0;
    }

    *(Instance + 24) = v8;
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = CFStringCreateCopy(*v5, v9);
    }

    else
    {
      v10 = 0;
    }

    *(Instance + 32) = v10;
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *(Instance + 40) = v11;
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = CFStringCreateCopy(*v5, v12);
    }

    else
    {
      v13 = 0;
    }

    *(Instance + 48) = v13;
    v14 = *(a1 + 56);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(Instance + 56) = v14;
    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = CFDictionaryCreateCopy(*v5, v15);
    }

    else
    {
      v16 = 0;
    }

    *(Instance + 64) = v16;
    *(Instance + 72) = *(a1 + 72);
    *(Instance + 76) = *(a1 + 76);
    *(Instance + 78) = *(a1 + 78);
    *(Instance + 80) = *(a1 + 80);
    *(Instance + 96) = *(a1 + 96);
    v17 = *(a1 + 104);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(Instance + 104) = v17;
    v18 = *(a1 + 112);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    *(Instance + 112) = v18;
    v19 = *(a1 + 120);
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(Instance + 120) = v19;
    v20 = *(a1 + 128);
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *(Instance + 128) = v20;
    v21 = *(a1 + 136);
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(Instance + 136) = v21;
    *(Instance + 144) = *(a1 + 144);
  }

  return Instance;
}