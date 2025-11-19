unint64_t iap2_sessionFileTransfer_findTransferEntryForFeature(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t (*a4)(unsigned __int8 *, uint64_t, uint64_t))
{
  result = 0;
  if (a1 && a3 && a4)
  {
    v8 = *(a1 + 432);
    if (v8)
    {
      if ((a2 & 0x80) != 0)
      {
        if (*v8)
        {
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v13 = *(gLogObjects + 184);
          }

          else
          {
            v13 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v39 = 134218240;
              v40 = v14;
              OUTLINED_FUNCTION_3();
              v41[0] = v15;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v39);
            }
          }

          if (!OUTLINED_FUNCTION_78_0())
          {
            goto LABEL_21;
          }

          v21 = *(a1 + 8);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_3();
          v41[0] = a2;
          v17 = "iap2_sessionFileTransfer_findTransferEntryForFeature: %@ dir=%xh, use outTransferList";
          goto LABEL_33;
        }
      }

      else
      {
        v10 = v8[1];
        ++v8;
        if (v10)
        {
          v11 = gLogObjects;
          v12 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 24)
          {
            v13 = *(gLogObjects + 184);
          }

          else
          {
            v13 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v39 = 134218240;
              v40 = v11;
              OUTLINED_FUNCTION_3();
              v41[0] = v12;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v39);
            }
          }

          if (!OUTLINED_FUNCTION_78_0())
          {
            goto LABEL_21;
          }

          v16 = *(a1 + 8);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_3();
          v41[0] = a2;
          v17 = "iap2_sessionFileTransfer_findTransferEntryForFeature: %@ dir=%xh, use inTransferList";
LABEL_33:
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v17, &v39, 0x12u);
LABEL_21:
          v18 = *v8;
          Item = iAP2ListArrayFindItem(*v8, a3, a4);
          if (Item != 255)
          {
            return iAP2ListArrayItemForIndex(v18, Item);
          }

          if (gLogObjects && gNumLogObjects >= 24)
          {
            v20 = *(gLogObjects + 184);
          }

          else
          {
            v20 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_2_3();
              OUTLINED_FUNCTION_26_0(&_mh_execute_header, v33, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, v39);
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v22 = *a3;
            v23 = *(a3 + 1);
            v24 = *(a3 + 2);
            OUTLINED_FUNCTION_14_6();
            LOWORD(v41[0]) = v25;
            *(v41 + 2) = v26;
            OUTLINED_FUNCTION_15_1();
            _os_log_debug_impl(v27, v28, OS_LOG_TYPE_DEBUG, v29, v30, 0x14u);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void iap2_sessionFileTransfer_deleteFileTransfer_cold_1(uint64_t a1)
{
  v3 = 134218240;
  v4 = a1;
  OUTLINED_FUNCTION_3();
  v5 = v1;
  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v2, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v3);
}

uint64_t platform_iapd_bridge_accessory_processIncomingData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24) == 7)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 7;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_5_9();
          OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14, v15[0]);
        }

        v8 = &_os_log_default;
        v4 = &_os_log_default;
      }

      else
      {
        v8 = *(gLogObjects + 48);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(v2 + 24);
        v15[0] = 67109120;
        v15[1] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[#iapd Bridge] Dropping iAP1 bytes over %{coreacc:ACCEndpoint_TransportType_t}d!", v15, 8u);
      }

      return 1;
    }

    else
    {
      v6 = +[PlatformIAPDBridge sharedPlatformIAPDBridge];
      v7 = [v6 iapdAccessory:v2 dataArrivedFromAccessory:a2];

      return v7;
    }
  }

  return result;
}

void platform_iapd_bridge_accessory_connected_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

dispatch_object_t *audioProductCerts_endpoint_create(uint64_t a1)
{
  if (!a1)
  {
    v32 = logObjectForModule_10();
    if (!OUTLINED_FUNCTION_16(v32))
    {
      return 0;
    }

LABEL_28:
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v34, v35, v36, v37, v38, 2u);
    return 0;
  }

  if (!*a1)
  {
    v33 = logObjectForModule_10();
    if (!OUTLINED_FUNCTION_16(v33))
    {
      return 0;
    }

    goto LABEL_28;
  }

  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10E0040CD29F606uLL);
  if (v2)
  {
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v3 = *(gLogObjects + 456);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_16_6();
      _os_log_error_impl(v22, v23, v24, v25, v26, 0x12u);
    }

    if (OUTLINED_FUNCTION_81())
    {
      v4 = *(a1 + 24);
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 8u);
    }

    v9 = dispatch_queue_create("AudioProductCertsQ", 0);
    v2[6] = v9;
    if (v9)
    {
      dispatch_set_context(v9, v2);
      dispatch_set_finalizer_f(v2[6], _audioProductCerts_endpoint_dispatchQueueFinalizer);
      *v2 = a1;
      _audioProductCerts_endpoint_initSession(v2);
      v15.isa = *a1;
      if (*(*a1 + 16) && *(v15.isa + 2) == 2)
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v16 = *(gLogObjects + 456);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_7_5();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
          v15.isa = *a1;
        }

        if (OUTLINED_FUNCTION_81())
        {
          *v39 = 138412290;
          *&v39[4] = *(v15.isa + 2);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v17, v18, OS_LOG_TYPE_DEFAULT, v19, v20, 0xCu);
          v15.isa = *a1;
        }

        acc_endpoint_setProperty(a1, kCFACCProperties_Endpoint_AACP_MACAddress, *(v15.isa + 2));
      }

      acc_platform_packetLogging_logEvent(*v2, "ATTACH", "AudioProductCerts accessory attached!", v10, v11, v12, v13, v14, *v39);
      acc_platform_audioProductCerts_accessoryAttach(*(a1 + 8), *(a1 + 16));
    }
  }

  return v2;
}

uint64_t audioProductCerts_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (*v2 && **v2)
      {
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v3 = *(gLogObjects + 456);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
          v2 = *v1;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v9 = *(*v2 + 24);
          OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 8u);
          v2 = *v1;
        }

        v14 = *v2;
        v15 = **v2;
        acc_platform_packetLogging_logEvent(v14, "DETACH", "AudioProductCerts accessory detached!", v4, v5, v6, v7, v8, v22);
        acc_platform_audioProductCerts_accessoryDetach(*v15, *(v14 + 16));
        v2 = *v1;
      }

      dispatch_sync(*(v2 + 48), &__block_literal_global_8);
      v16 = *(*v1 + 48);
      *(*v1 + 48) = 0;
      dispatch_release(v16);
      *v1 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t audioProductCerts_endpoint_processIncomingData(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_86_0();
    result = 0;
    if (v3)
    {
      if (*v2)
      {
        CFRetain(v1);
        v4 = v2[6];
        OUTLINED_FUNCTION_44_1();
        v6[1] = 0x40000000;
        v6[2] = __audioProductCerts_endpoint_processIncomingData_block_invoke;
        v6[3] = &__block_descriptor_tmp_9_0;
        v6[4] = v2;
        v6[5] = v1;
        dispatch_async(v5, v6);
        return 1;
      }
    }
  }

  return result;
}

uint64_t _audioProductCerts_endpoint_processIncomingData(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = *v2;
      if (*v2)
      {
        if (*(v3 + 28) == 13)
        {
          if (gLogObjects && gNumLogObjects >= 58)
          {
            v4 = *(gLogObjects + 456);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v11, v12, v13, v14, v15, 0x12u);
          }

          if (OUTLINED_FUNCTION_21())
          {
            v5 = *(v3 + 24);
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t audioProductCerts_endpoint_propertiesDidChange(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    CFRetain(cf);
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v8 = *(gLogObjects + 456);
    }

    else if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v77 = v6;
      OUTLINED_FUNCTION_49_2();
      *v79 = v7;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_56_1();
      *buf = 138412546;
      v77 = v58;
      v78 = 2112;
      *v79 = cf;
      OUTLINED_FUNCTION_59_3();
      _os_log_debug_impl(v59, v60, v61, v62, v63, v64);
    }

    valuePtr = 0;
    v9 = kCFACCProperties_Endpoint_AACP_CertificateSupported;
    Value = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_CertificateSupported);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (acc_userDefaults_BOOLForKey(@"DisableCertSupport"))
      {
        v11 = gLogObjects;
        v12 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 58)
        {
          v13 = *(gLogObjects + 456);
        }

        else if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v77 = v11;
          OUTLINED_FUNCTION_49_2();
          *v79 = v12;
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v70, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_67_0())
        {
          OUTLINED_FUNCTION_56_1();
          OUTLINED_FUNCTION_32_1();
          *&v79[6] = 0;
          OUTLINED_FUNCTION_52_1();
          _os_log_impl(v14, v15, v16, v17, v18, 0x18u);
        }

        valuePtr = 0;
      }
    }

    v19 = valuePtr;
    if (*(a1 + 8) != (valuePtr != 0))
    {
      v20 = gLogObjects;
      v21 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v22 = *(gLogObjects + 456);
      }

      else if (OUTLINED_FUNCTION_18())
      {
        *buf = 134218240;
        v77 = v20;
        OUTLINED_FUNCTION_49_2();
        *v79 = v21;
        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        v19 = valuePtr;
      }

      if (OUTLINED_FUNCTION_67_0())
      {
        OUTLINED_FUNCTION_56_1();
        v23 = *(a1 + 8);
        OUTLINED_FUNCTION_32_1();
        *&v79[6] = v24;
        OUTLINED_FUNCTION_52_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0x18u);
        v19 = valuePtr;
      }

      v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"certRetrievalSupported: %d", v19);
      OUTLINED_FUNCTION_87_1(*a1, v9, @"AudioProductCerts");
      if (v30)
      {
        CFRelease(v30);
      }
    }

    *(a1 + 8) = valuePtr != 0;
    v31 = kCFACCProperties_Endpoint_AACP_FirstConnectionAfterPair;
    v32 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AACP_FirstConnectionAfterPair);
    if (v32)
    {
      v33 = CFBooleanGetValue(v32);
    }

    else
    {
      v33 = 0;
    }

    if (v33 != *(a1 + 9))
    {
      v34 = gLogObjects;
      v35 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v36 = *(gLogObjects + 456);
      }

      else
      {
        v36 = &_os_log_default;
        if (OUTLINED_FUNCTION_19_0())
        {
          *buf = 134218240;
          v77 = v34;
          OUTLINED_FUNCTION_49_2();
          *v79 = v35;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_56_1();
        v37 = *(a1 + 9);
        OUTLINED_FUNCTION_32_1();
        *&v79[6] = v33;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: %@, firstConnectionAfterPair %d -> %d", buf, 0x18u);
      }

      v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"firstConnectionAfterPair: %d", v33);
      acc_platform_packetLogging_logParsedData(*a1, v31, @"AudioProductCerts", v38, 1);
      if (v38)
      {
        CFRelease(v38);
      }
    }

    *(a1 + 9) = v33 != 0;
    v39 = kCFACCProperties_Endpoint_AudioProduct_AuthSupported;
    v40 = CFDictionaryGetValue(cf, kCFACCProperties_Endpoint_AudioProduct_AuthSupported);
    if (v40)
    {
      v41 = v40;
      if (CFArrayGetCount(v40) >= 1)
      {
        v42 = *(a1 + 64);
        if (v42)
        {
          CFRelease(v42);
          *(a1 + 64) = 0;
        }

        v43 = kCFAllocatorDefault;
        *(a1 + 64) = CFArrayCreateCopy(kCFAllocatorDefault, v41);
        if (CFArrayGetCount(v41) >= 1)
        {
          v44 = 0;
          v45 = 0;
          v46 = a1 + 72;
          do
          {
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v41, v44);
              v74 = 0;
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v74);
              v48 = v74;
              if (*(v46 + v74))
              {
                break;
              }

              v72 = v43;
              v73 = v3;
              v49 = gLogObjects;
              v50 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 58)
              {
                v51 = *(gLogObjects + 456);
              }

              else
              {
                v51 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v77 = v49;
                  OUTLINED_FUNCTION_49_2();
                  *v79 = v50;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  v48 = v74;
                }
              }

              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_56_1();
                v52 = *(v46 + v48);
                *buf = 138413058;
                v77 = v53;
                OUTLINED_FUNCTION_49_2();
                *v79 = v48;
                *&v79[4] = v54;
                *&v79[6] = v55;
                v80 = v54;
                v81 = 1;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "PropertiesDidchange: %@, authSupported[%d] = %d -> %d ", buf, 0x1Eu);
                v48 = v74;
              }

              v3 = v73;
              v43 = v72;
              v45 = 1;
              *(v46 + v48) = 1;
              if (++v44 >= CFArrayGetCount(v41))
              {
                goto LABEL_67;
              }
            }

            ++v44;
          }

          while (v44 < CFArrayGetCount(v41));
          if ((v45 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_67:
          v56 = CFStringCreateWithFormat(v43, 0, @"authSupported: %@", v41);
          OUTLINED_FUNCTION_87_1(*a1, v39, @"AudioProductCerts");
          if (v56)
          {
            CFRelease(v56);
          }
        }
      }
    }

LABEL_69:
    CFDictionaryApplyFunction(cf, _CFDictionaryApplierFunction_handlePropertiesChange, a1);
    CFRelease(cf);
  }

  return v3;
}

uint64_t _CFDictionaryApplierFunction_handlePropertiesChange(uint64_t result, uint64_t a2, void *a3)
{
  if (result && a3)
  {
    if (*a3)
    {
      return audioProductCerts_endpoint_propertyDidChange(a3, result, a2);
    }
  }

  return result;
}

uint64_t audioProductCerts_endpoint_setProperty(uint64_t *a1, const void *a2, const __CFArray *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1 && *a1 && *(*a1 + 16))
  {
    PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(a1, 1, a2, a3);
    acc_platform_packetLogging_logParsedData(*a1, a2, @"AudioProductCerts", PropertyDescription, 0);
    if (PropertyDescription)
    {
      CFRelease(PropertyDescription);
    }

    Copy = CFStringCreateCopy(kCFAllocatorDefault, *(*a1 + 16));
    if (a2)
    {
      CFRetain(a2);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    v8 = a1[6];
    OUTLINED_FUNCTION_44_1();
    v12[1] = 0x40000000;
    v12[2] = __audioProductCerts_endpoint_setProperty_block_invoke;
    v12[3] = &unk_100226AB0;
    v12[4] = &v13;
    v12[5] = Copy;
    v12[6] = a2;
    v12[7] = a3;
    dispatch_async(v9, v12);
    v10 = *(v14 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v10 & 1;
}

uint64_t audioProductCerts_endpoint_removeProperty(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_86_0();
    PropertyDescription = _audioProductCerts_endpoint_createPropertyDescription(v3, 0, v1, 0);
    acc_platform_packetLogging_logParsedData(*v2, v1, @"AudioProductCerts", PropertyDescription, 0);
    if (PropertyDescription)
    {
      CFRelease(PropertyDescription);
    }

    v5 = *v2;

    return acc_endpoint_removeProperty(v5, v1);
  }

  return result;
}

void ___audioProductCerts_endpoint_handlePropertiesDidChange_block_invoke(uint64_t a1)
{
  audioProductCerts_endpoint_propertiesDidChange(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void _CFArrayApplierFunction_parseEntries(const void *a1, __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (v5 != CFDictionaryGetTypeID() || (v6 = CFGetTypeID(a2), v6 != CFStringGetTypeID()))
    {
      v2 = 0;
      goto LABEL_18;
    }

    Value = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type);
    v8 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial);
    v9 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
    v10 = CFDictionaryGetValue(a1, kCFACCProperties_Endpoint_AudioProduct_AuthData);
    v11 = gLogObjects;
    v12 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v13 = *(gLogObjects + 456);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        *buf = 134218240;
        v19 = v11;
        v20 = 1024;
        LODWORD(v21) = v12;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v19 = Value;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      OUTLINED_FUNCTION_82_0(&_mh_execute_header, v13, v15, "_CFArrayApplierFunction_parseEntries: type %@, serial %@, data %@, authData %@", buf);
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else if (v9)
    {
LABEL_12:
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, data=%@} \n", Value, v8, v9);
LABEL_17:
      v2 = a2;
      goto LABEL_18;
    }

    if (v10)
    {
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, authData=%@} \n", Value, v8, v10);
    }

    else
    {
      CFStringAppendFormat(a2, 0, @"\t{type=%@, serial=%@, no data} \n", Value, v8);
    }

    goto LABEL_17;
  }

LABEL_18:
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v16 = *(gLogObjects + 456);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v17, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = v2;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_parseEntries: outString %@", buf, 0xCu);
  }
}

CFIndex _audioProductCerts_endpoint_getSerialEntryIndexInCertList(const __CFArray *a1, const __CFString *a2)
{
  v2 = -1;
  if (a1 && a2 && CFArrayGetCount(a1) >= 1)
  {
    v2 = 0;
    v5 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v2);
      Value = CFDictionaryGetValue(ValueAtIndex, v5);
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 58)
      {
        v10 = *(gLogObjects + 456);
      }

      else
      {
        v10 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v22 = v8;
          v23 = 1024;
          LODWORD(v24) = v9;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v10 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        Count = CFArrayGetCount(a1);
        *buf = 134218754;
        v22 = v2;
        v23 = 2048;
        v24 = Count;
        v25 = 2112;
        v26 = Value;
        v27 = 2112;
        v28 = a2;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_CFArrayApplierFunction_parseEntries: [%ld / %ld] serial %@ =?= %@", buf, 0x2Au);
        if (Value)
        {
LABEL_12:
          if (CFStringCompare(Value, a2, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }

      else if (Value)
      {
        goto LABEL_12;
      }

      if (++v2 >= CFArrayGetCount(a1))
      {
        v2 = -1;
        break;
      }
    }
  }

  if (gLogObjects && gNumLogObjects >= 58)
  {
    v12 = *(gLogObjects + 456);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "_audioProductCerts_endpoint_getSerialEntryIndexInCertList";
    v23 = 2048;
    v24 = v2;
    OUTLINED_FUNCTION_59_3();
    _os_log_debug_impl(v14, v15, v16, v17, v18, v19);
  }

  return v2;
}

uint64_t _audioProductCerts_endpoint_generateAuthChallenge(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50(result);
    if (!v3 || !*v3)
    {
      return 0;
    }

    v4 = v2;
    if (acc_userDefaults_BOOLForKey(@"DisableAACPAuth"))
    {
      return 1;
    }

    Count = CFArrayGetCount(*(v1 + 88));
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects <= 57;
    }

    else
    {
      v7 = 1;
    }

    v8 = !v7;
    if (Count < 1)
    {
      if (v8)
      {
        v10 = *(gLogObjects + 456);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        *&v78[14] = v6;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v73, v74, v75, v76, v77, 0x12u);
      }

      if (OUTLINED_FUNCTION_93())
      {
        OUTLINED_FUNCTION_45_2();
        *v78 = 136315394;
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_78(v21, v22, v23, v24, v25);
      }

      return 1;
    }

    if (v8)
    {
      v9 = *(gLogObjects + 456);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        *&v78[14] = v6;
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v68, v69, v70, v71, v72, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      v26 = *(v1 + 88);
      *v78 = 136315650;
      *&v78[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v78[24] = v27;
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_78_1(v28, v29, v30, v31, v32);
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 88), 0);
    if (ValueAtIndex)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, ValueAtIndex);
    }

    else
    {
      MutableCopy = 0;
    }

    v13 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v14 = *(gLogObjects + 456);
    }

    else if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_20_2();
      *&v78[14] = v13;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v78[0]);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_45_2();
      *v78 = 136315650;
      *&v78[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_78_1(v33, v34, v35, v36, v37);
      if (!MutableCopy)
      {
        goto LABEL_33;
      }
    }

    else if (!MutableCopy)
    {
      goto LABEL_33;
    }

    *(v1 + 96) = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, MutableCopy);
    if (v4)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v78 = v15;
      *&v78[16] = v15;
      arc4random_buf(v78, 0x20uLL);
      *(v1 + 104) = CFDataCreate(kCFAllocatorDefault, v78, 32);
    }

    CFDictionaryRemoveValue(MutableCopy, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
    v16 = kCFACCProperties_Endpoint_AudioProduct_AuthData;
    CFDictionarySetValue(MutableCopy, kCFACCProperties_Endpoint_AudioProduct_AuthData, *(v1 + 104));
    CFDictionarySetValue(*(v1 + 96), v16, *(v1 + 104));
LABEL_33:
    CFArrayRemoveValueAtIndex(*(v1 + 88), 0);
    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v18 = *(gLogObjects + 456);
    }

    else
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        *&v78[14] = v17;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v58, v59, v60, v61, v62, 0x12u);
      }
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      v38 = *(v1 + 96);
      *v78 = 136315650;
      *&v78[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v78[24] = v39;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_78_1(v40, v41, v42, v43, v44);
    }

    v19 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 58)
    {
      v20 = *(gLogObjects + 456);
    }

    else
    {
      v20 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        *&v78[14] = v19;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v63, v64, v65, v66, v67, 0x12u);
      }
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_45_2();
      v45 = *(v1 + 104);
      *v78 = 136315650;
      *&v78[4] = "_audioProductCerts_endpoint_generateAuthChallenge";
      OUTLINED_FUNCTION_10_9();
      *&v78[24] = v46;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_78_1(v47, v48, v49, v50, v51);
      if (!MutableCopy)
      {
        return 1;
      }
    }

    else if (!MutableCopy)
    {
      return 1;
    }

    CFRelease(MutableCopy);
    return 1;
  }

  return result;
}

uint64_t **_audioProductCerts_endpoint_validateChallenge(uint64_t **result, const __CFDictionary *a2)
{
  if (result)
  {
    v4 = result;
    v5 = *result;
    if (!*result)
    {
      return 0;
    }

    result = 0;
    if (a2)
    {
      if (*v5)
      {
        valuePtr = 0;
        v7 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Data;
        theDict = v4[12];
        Value = CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AACP_CertificateInfo_Data);
        v257 = v4[13];
        theData = Value;
        if (acc_userDefaults_BOOLForKey(@"UseCertDataPropertyForAuth"))
        {
          v9 = v7;
        }

        else
        {
          v9 = kCFACCProperties_Endpoint_AudioProduct_AuthData;
        }

        v10 = CFDictionaryGetValue(a2, v9);
        v11 = &audioProductCerts_endpoint_publish_onceToken;
        v259 = v10;
        if (v10)
        {
          v3 = v10;
          CFRetain(v10);
          if (CFDataGetLength(v3))
          {
            BytePtr = CFDataGetBytePtr(v3);
            if (BytePtr)
            {
              v13 = BytePtr;
              if (CFDataGetLength(v3) == 72 && *v13 == 48)
              {
                switch(v13[1])
                {
                  case 'B':
                    if (v13[68] || v13[69] || v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 68;
                    goto LABEL_24;
                  case 'C':
                    if (v13[69] || v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 69;
                    goto LABEL_24;
                  case 'D':
                    if (v13[70] || v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 70;
                    goto LABEL_24;
                  case 'E':
                    if (v13[71])
                    {
                      goto LABEL_30;
                    }

                    v14 = 71;
LABEL_24:
                    v15 = CFDataGetBytePtr(v3);
                    Copy = CFDataCreate(kCFAllocatorDefault, v15, v14);
                    v2 = gLogObjects;
                    if (gLogObjects && gNumLogObjects >= 58)
                    {
                      v17 = *(gLogObjects + 456);
                    }

                    else if (OUTLINED_FUNCTION_17())
                    {
                      OUTLINED_FUNCTION_1_10();
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v154, v155, v156, v157, v158, 0x12u);
                    }

                    v3 = v259;
                    if (OUTLINED_FUNCTION_81())
                    {
                      v2 = &audioProductCerts_endpoint_publish_onceToken;
                      *buf = 136315650;
                      v263 = "_audioProductCerts_createTruncatedSignature";
                      v264 = 2048;
                      Length = CFDataGetLength(v259);
                      v266 = 2048;
                      *v267 = CFDataGetLength(Copy);
                      OUTLINED_FUNCTION_26_4();
                      _os_log_impl(v120, v121, v122, v123, v124, 0x20u);
                    }

                    break;
                  default:
LABEL_30:
                    Copy = CFDataCreateCopy(kCFAllocatorDefault, v3);
                    break;
                }

                if (Copy)
                {
                  goto LABEL_40;
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_46_0();
        if (v2 && v3 >= 58)
        {
          v18 = v2[57];
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v125, v126, v127, v128, v129, 0x12u);
        }

        v3 = v259;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 136315394;
          v263 = "_audioProductCerts_createTruncatedSignature";
          v264 = 2112;
          Length = v259;
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v110, v111, v112, v113, v114, 0x16u);
        }

        Copy = 0;
        v19 = 0;
        if (v259)
        {
LABEL_40:
          CFRelease(v3);
          v19 = Copy;
        }

        OUTLINED_FUNCTION_46_0();
        if (v2 && v3 >= 58)
        {
          v20 = v2[57];
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v115, v116, v117, v118, v119, 0x12u);
        }

        v21 = OUTLINED_FUNCTION_9_3();
        v23 = theData;
        if (os_log_type_enabled(v21, v22))
        {
          v24 = v5[2];
          v25 = v4[13];
          *buf = 136315906;
          OUTLINED_FUNCTION_67_1();
          Length = v26;
          v266 = v27;
          *v267 = v28;
          *&v267[8] = v27;
          v268 = v19;
          OUTLINED_FUNCTION_66_0();
          _os_log_impl(v29, v30, v31, v32, v33, 0x2Au);
        }

        v260 = v19;
        if (CFDataGetLength(theData) < 1 || CFDataGetLength(v19) < 1 || CFDataGetLength(v257) < 1)
        {
          goto LABEL_138;
        }

        v253 = v4;
        if (v257 && CFDataGetLength(v257) == 32)
        {
          v34 = platform_systemInfo_copyBluetoothMACAddressData();
          v35 = v34;
          if (v34)
          {
            if (CFDataGetLength(v34) == 6)
            {
              v36 = CFDataGetLength(v257);
              Mutable = CFDataCreateMutable(kCFAllocatorDefault, v36 + 24);
              if (Mutable)
              {
                v38 = Mutable;
                CFDataAppendBytes(Mutable, "auth pairing state", 18);
                v39 = CFDataGetBytePtr(v257);
                v40 = CFDataGetLength(v257);
                CFDataAppendBytes(v38, v39, v40);
                v41 = CFDataGetBytePtr(v35);
                v42 = CFDataGetLength(v35);
                CFDataAppendBytes(v38, v41, v42);
                CFRelease(v35);
                v43 = v257;
                v254 = v38;
                if (!acc_platform_packetLogging_isLogPacketDataAsMsg())
                {
                  v256 = v5;
                  v44 = CFDataGetLength(theData);
                  v45 = CFDataGetBytePtr(theData);
                  CFDataGetLength(v257);
                  CFDataGetLength(v38);
                  CFDataGetLength(v259);
                  CFDataGetLength(v19);
                  if (v44 >= 1)
                  {
                    v46 = 0;
                    v47 = 500;
                    v252 = 134218240;
                    do
                    {
                      if (v47 >= v44 - v46)
                      {
                        v47 = v44 - v46;
                      }

                      v48 = gLogObjects;
                      v49 = *(v11 + 984);
                      if (gLogObjects && v49 >= 58)
                      {
                        v50 = *(gLogObjects + 456);
                      }

                      else
                      {
                        v50 = &_os_log_default;
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134218240;
                          v263 = v48;
                          v264 = 1024;
                          LODWORD(Length) = v49;
                          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                          v50 = &_os_log_default;
                        }
                      }

                      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                      {
                        v51 = v256[2];
                        *buf = 136316674;
                        OUTLINED_FUNCTION_35_1();
                        v266 = 1024;
                        *v267 = v46;
                        *&v267[4] = 1024;
                        *&v267[6] = v44;
                        LOWORD(v268) = 1024;
                        *(&v268 + 2) = v47;
                        HIWORD(v268) = 1040;
                        v269 = v47;
                        v270 = 2096;
                        v271 = v45;
                        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%s: %@, certificate (%d of %d, show %d bytes):\n%{coreacc:bytes}.*P", buf, 0x38u);
                      }

                      v46 += v47;
                      v45 += v47;
                      v11 = &audioProductCerts_endpoint_publish_onceToken;
                    }

                    while (v46 < v44);
                  }

                  v52 = gLogObjects;
                  v53 = *(v11 + 984);
                  if (gLogObjects && v53 >= 58)
                  {
                    v54 = *(gLogObjects + 456);
                    v5 = v256;
                  }

                  else
                  {
                    v5 = v256;
                    if (OUTLINED_FUNCTION_17())
                    {
                      OUTLINED_FUNCTION_1_10();
                      OUTLINED_FUNCTION_11_4();
                      _os_log_error_impl(v132, v133, v134, v135, v136, 0x12u);
                    }
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v52 = v5[2];
                    CFDataGetBytePtr(v257);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v55, v56, v57, v58, v59, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  v23 = theData;
                  if (v52 && v53 >= 58)
                  {
                    v60 = *(v52 + 456);
                  }

                  else if (OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v137, v138, v139, v140, v141, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v52 = v5[2];
                    CFDataGetBytePtr(v254);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v61, v62, v63, v64, v65, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  if (v52 && v53 >= 58)
                  {
                    v66 = *(v52 + 456);
                  }

                  else if (OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v142, v143, v144, v145, v146, 0x12u);
                  }

                  if (OUTLINED_FUNCTION_81())
                  {
                    v52 = v5[2];
                    CFDataGetBytePtr(v259);
                    *buf = 136316162;
                    OUTLINED_FUNCTION_29_0();
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v67, v68, v69, v70, v71, 0x2Cu);
                  }

                  OUTLINED_FUNCTION_46_0();
                  if (v52 && v53 >= 58)
                  {
                    v72 = *(v52 + 456);
                  }

                  else if (OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v147, v148, v149, v150, v151, 0x12u);
                  }

                  v43 = v257;
                  v38 = v254;
                  if (OUTLINED_FUNCTION_81())
                  {
                    v73 = v5[2];
                    CFDataGetBytePtr(v260);
                    *buf = 136316162;
                    v263 = "_audioProductCerts_endpoint_validateChallenge";
                    v264 = 2112;
                    Length = v73;
                    v38 = v254;
                    v266 = 1024;
                    OUTLINED_FUNCTION_14_7();
                    OUTLINED_FUNCTION_26_4();
                    _os_log_impl(v74, v75, v76, v77, v78, 0x2Cu);
                  }
                }

                v79 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v79, v80, v81, v43, -1);
                v82 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v82, v83, v84, v38, -1);
                v85 = OUTLINED_FUNCTION_75_2();
                acc_platform_packetLogging_logData(v85, v86, v87, v259, -1);
                v88 = OUTLINED_FUNCTION_75_2();
                v3 = v38;
                v2 = v260;
                acc_platform_packetLogging_logData(v88, v89, v90, v260, -1);
                v91 = platform_auth_verifyNonceSignature(v23, v3, v260);
                OUTLINED_FUNCTION_46_0();
                v4 = v253;
                if (v260 && v3 >= 58)
                {
                  v92 = *(v260 + 57);
                }

                else if (OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_1_10();
                  OUTLINED_FUNCTION_24_2(&_mh_execute_header, v130, v131, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                if (OUTLINED_FUNCTION_67_0())
                {
                  v93 = v5[2];
                  *buf = 136315650;
                  OUTLINED_FUNCTION_35_1();
                  v266 = 1024;
                  *v267 = v91;
                  OUTLINED_FUNCTION_52_1();
                  _os_log_impl(v94, v95, v96, v97, v98, 0x1Cu);
                }

                if (v91)
                {
                  CFRelease(v254);
LABEL_114:
                  v109 = 2;
                  goto LABEL_139;
                }

                v99 = platform_auth_verifyNonceSignatureForType(v23, v254, v260, 4u);
                OUTLINED_FUNCTION_46_0();
                if (v260 && v3 >= 58)
                {
                  v100 = *(v260 + 57);
                }

                else if (OUTLINED_FUNCTION_18())
                {
                  OUTLINED_FUNCTION_1_10();
                  OUTLINED_FUNCTION_24_2(&_mh_execute_header, v152, v153, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                if (OUTLINED_FUNCTION_67_0())
                {
                  v101 = v5[2];
                  *buf = 136315906;
                  OUTLINED_FUNCTION_67_1();
                  Length = v102;
                  v266 = 1024;
                  *v267 = 4;
                  *&v267[4] = 1024;
                  *&v267[6] = v103;
                  OUTLINED_FUNCTION_52_1();
                  _os_log_impl(v104, v105, v106, v107, v108, 0x22u);
                }

                CFRelease(v254);
                if (v99)
                {
                  goto LABEL_114;
                }

LABEL_138:
                v109 = 1;
LABEL_139:
                *(v4 + 28) = v109;
                if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
                {
                  *(v4 + 28) = 1;
                }

                if (acc_userDefaults_BOOLForKey(@"IgnoreAACPAuthStatus"))
                {
                  OUTLINED_FUNCTION_46_0();
                  if (v2 && v3 >= 58)
                  {
                    v161 = v2[57];
                  }

                  else if (OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_1_10();
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v219, v220, v221, v222, v223, 0x12u);
                  }

                  v162 = OUTLINED_FUNCTION_9_3();
                  if (os_log_type_enabled(v162, v163))
                  {
                    v164 = v5[2];
                    v165 = *(v4 + 28);
                    *buf = 136315906;
                    OUTLINED_FUNCTION_47_0();
                    OUTLINED_FUNCTION_66_0();
                    _os_log_impl(v166, v167, v168, v169, v170, 0x22u);
                  }
                }

                else
                {
                  acc_connection_setAuthStatus(*v5, 1, *(v4 + 28));
                }

                v171 = *(v4 + 28);
                valuePtr = v171 == 2;
                v172 = gLogObjects;
                v173 = *(v11 + 984);
                if (gLogObjects && v173 >= 58)
                {
                  v174 = *(gLogObjects + 456);
                  v175 = v171;
                }

                else
                {
                  v175 = v171;
                  if (OUTLINED_FUNCTION_17())
                  {
                    *buf = 134218240;
                    v263 = v172;
                    v264 = 1024;
                    LODWORD(Length) = v173;
                    OUTLINED_FUNCTION_11_4();
                    _os_log_error_impl(v214, v215, v216, v217, v218, 0x12u);
                    v175 = *(v4 + 28);
                  }
                }

                v176 = OUTLINED_FUNCTION_9_3();
                if (os_log_type_enabled(v176, v177))
                {
                  v183 = v5[2];
                  *buf = 136315906;
                  OUTLINED_FUNCTION_67_1();
                  Length = v184;
                  v266 = 1024;
                  *v267 = v175;
                  *&v267[4] = 1024;
                  *&v267[6] = v185;
                  OUTLINED_FUNCTION_66_0();
                  _os_log_impl(v186, v187, v188, v189, v190, 0x22u);
                  v175 = *(v4 + 28);
                }

                if (v175 == 3)
                {
                  v191 = "AUTH TIMEOUT";
                  v192 = "ACCAuthProtocol accessory authentication Timed Out!";
                }

                else
                {
                  if (v175 != 2)
                  {
                    acc_platform_packetLogging_logEvent(v5, "AUTH FAILED", "ACCAuthProtocol accessory authentication Failed!", v178, v179, v180, v181, v182, v252);
                    CFDictionaryGetValue(theDict, kCFACCProperties_Endpoint_AudioProduct_AuthSerial);
                    v200 = v4[4];
                    if ((platform_auth_removeCertDataEntryFromCache() & 1) == 0)
                    {
                      if (gLogObjects && gNumLogObjects >= 58)
                      {
                        v201 = *(gLogObjects + 456);
                      }

                      else if (OUTLINED_FUNCTION_17())
                      {
                        OUTLINED_FUNCTION_1_10();
                        OUTLINED_FUNCTION_11_4();
                        _os_log_error_impl(v226, v227, v228, v229, v230, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_81())
                      {
                        *buf = 0;
                        OUTLINED_FUNCTION_26_4();
                        _os_log_impl(v209, v210, v211, v212, v213, 2u);
                      }
                    }

                    goto LABEL_162;
                  }

                  v191 = "AUTH PASSED";
                  v192 = "ACCAuthProtocol accessory authentication Passed!";
                }

                acc_platform_packetLogging_logEvent(v5, v191, v192, v178, v179, v180, v181, v182, v252);
LABEL_162:
                v193 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
                if (v193)
                {
                  v194 = v193;
                  if (acc_userDefaults_BOOLForKey(@"IgnoreAACPAuthStatus"))
                  {
                    if (gLogObjects && gNumLogObjects >= 58)
                    {
                      v195 = *(gLogObjects + 456);
                    }

                    else
                    {
                      v195 = &_os_log_default;
                      if (OUTLINED_FUNCTION_18())
                      {
                        OUTLINED_FUNCTION_1_10();
                        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v224, v225, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }
                    }

                    if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                    {
                      v204 = v5[2];
                      v205 = *(v4 + 28);
                      *buf = 136315906;
                      OUTLINED_FUNCTION_47_0();
                      _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_INFO, "%s: %@, Skip setting auth state property: authState %{coreacc:ACCAuthInfo_Status_t}d) -> %d) ", buf, 0x22u);
                    }
                  }

                  v206 = OUTLINED_FUNCTION_75_2();
                  acc_endpoint_setProperty(v206, v207, v208);
                  v198 = v260;
                  CFRelease(v194);
                }

                else
                {
                  v196 = gLogObjects;
                  v197 = gNumLogObjects;
                  v198 = v260;
                  if (gLogObjects && gNumLogObjects >= 58)
                  {
                    v199 = *(gLogObjects + 456);
                  }

                  else
                  {
                    v199 = &_os_log_default;
                    if (OUTLINED_FUNCTION_21())
                    {
                      *buf = 134218240;
                      v263 = v196;
                      v264 = 1024;
                      LODWORD(Length) = v197;
                      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v202, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                    }
                  }

                  if (OUTLINED_FUNCTION_21())
                  {
                    v203 = v5[2];
                    *buf = 136315394;
                    OUTLINED_FUNCTION_35_1();
                    _os_log_error_impl(&_mh_execute_header, v199, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create authState property value!", buf, 0x16u);
                  }
                }

                if (v198)
                {
                  CFRelease(v198);
                }

                return 1;
              }
            }
          }
        }

        else
        {
          v35 = 0;
        }

        OUTLINED_FUNCTION_46_0();
        if (v2 && v3 >= 58)
        {
          v159 = v2[57];
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_10();
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v242, v243, v244, v245, v246, 0x12u);
        }

        if (OUTLINED_FUNCTION_17())
        {
          *buf = 136315650;
          v263 = "_audioProductCerts_createBlobFromNonce";
          v264 = 2112;
          Length = v257;
          v266 = 2112;
          *v267 = v35;
          OUTLINED_FUNCTION_11_4();
          _os_log_error_impl(v231, v232, v233, v234, v235, 0x20u);
          if (!v35)
          {
LABEL_131:
            OUTLINED_FUNCTION_46_0();
            if (v2 && v3 >= 58)
            {
              v160 = v2[57];
              v4 = v253;
            }

            else
            {
              v4 = v253;
              if (OUTLINED_FUNCTION_17())
              {
                OUTLINED_FUNCTION_1_10();
                OUTLINED_FUNCTION_11_4();
                _os_log_error_impl(v247, v248, v249, v250, v251, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_17())
            {
              v236 = v5[2];
              *buf = 136315394;
              OUTLINED_FUNCTION_35_1();
              OUTLINED_FUNCTION_11_4();
              _os_log_error_impl(v237, v238, v239, v240, v241, 0x16u);
            }

            goto LABEL_138;
          }
        }

        else if (!v35)
        {
          goto LABEL_131;
        }

        CFRelease(v35);
        goto LABEL_131;
      }
    }
  }

  return result;
}

void _audioProductCerts_endpoint_handlePropertiesDidChange_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, v5);
}

void _audioProductCerts_endpoint_handlePropertiesDidChange_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_59_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, v5);
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_1()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_2()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_12()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_13()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_14()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_15()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleMissingCertList_cold_16()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_1()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_2()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_7()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_8()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_9()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_10()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_11()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_12()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handleAuthResponseWithMissingCert_cold_13()
{
  v0 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v0))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _CFArrayApplierFunction_handleSerialList_cold_12()
{
  OUTLINED_FUNCTION_86_0();
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v1 = *(gLogObjects + 456);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_16_6();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  if (OUTLINED_FUNCTION_81())
  {
    if (v0)
    {
      v2 = *(v0 + 16);
    }

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78(v3, v4, v5, v6, v7);
  }
}

void _CFArrayApplierFunction_handleCertList_cold_16()
{
  OUTLINED_FUNCTION_86_0();
  if (gLogObjects && gNumLogObjects >= 58)
  {
    v1 = *(gLogObjects + 456);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_16_6();
    _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  if (OUTLINED_FUNCTION_81())
  {
    if (v0)
    {
      v2 = *(v0 + 16);
    }

    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_78(v3, v4, v5, v6, v7);
  }
}

void _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_1(uint64_t a1)
{
  *(a1 + 40) = 5;
  v1 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

void _audioProductCerts_endpoint_handlePrimaryBudMismatch_cold_2(uint64_t a1)
{
  *(a1 + 40) = 5;
  v1 = logObjectForModule_10();
  if (OUTLINED_FUNCTION_21_0(v1))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_38_1();
}

uint64_t oobPairing_control_sendPairingInfo(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1 == 3)
        {
          if (gLogObjects && gNumLogObjects >= 11)
          {
            v4 = *(gLogObjects + 80);
          }

          else if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v14, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, v20);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v5, v6, "Send OOBPairing Info for endpoint: %@ bleUUID: %@", v7, v8, v9, v10, v20);
          }

          v11 = oobPairing_bleToOobPairingType(*(v1 + 16));
          BytePtr = CFDataGetBytePtr(*(v1 + 24));
          Length = CFDataGetLength(*(v1 + 24));
          oobPairing_endpoint_sendOutgoingData(v2, 2u, v11, BytePtr, Length);
          platform_blePairing_deleteParams(v1);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_sendPairingData(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1 == 2)
        {
          if (gLogObjects && gNumLogObjects >= 11)
          {
            v4 = *(gLogObjects + 80);
          }

          else if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v14, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, v20);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v5, v6, "Send OOBPairing Data for endpoint: %@ bleUUID: %@", v7, v8, v9, v10, v20);
          }

          v11 = oobPairing_bleToOobPairingType(*(v1 + 16));
          BytePtr = CFDataGetBytePtr(*(v1 + 24));
          Length = CFDataGetLength(*(v1 + 24));
          oobPairing_endpoint_sendOutgoingData(v2, 3u, v11, BytePtr, Length);
          platform_blePairing_deleteParams(v1);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_start(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_4_11();
    if (v3)
    {
      if (*v2)
      {
        if (*v1)
        {
          return 0;
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 11)
          {
            v4 = *(gLogObjects + 80);
          }

          else if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, v14, v15, v16, v17);
          }

          if (OUTLINED_FUNCTION_81())
          {
            OUTLINED_FUNCTION_5_10();
            OUTLINED_FUNCTION_0_7();
            OUTLINED_FUNCTION_2_16(&_mh_execute_header, v5, v6, "OOBPairing start for endpoint: %@ bleUUID: %@", v7, v8, v9, v10, v17);
          }

          oobPairing_endpoint_sendOutgoingData(v2, 0, 2, 0, 0);
          platform_blePairing_deleteParams(v1);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t oobPairing_control_stop(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (!a2 || !*a1)
  {
    return v3;
  }

  if (*a2 != 4)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 11)
  {
    v5 = *(gLogObjects + 80);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_2_16(&_mh_execute_header, v6, v7, "OOBPairing stop for endpoint: %@ bleUUID: %@", v8, v9, v10, v11, v19);
  }

  v3 = 1;
  oobPairing_endpoint_sendOutgoingData(a1, 1u, 2, 0, 0);
  platform_blePairing_deleteParams(a2);
  return v3;
}

uint64_t oobPairing_control_deviceStateUpdate(uint64_t result, void *a2)
{
  if (result)
  {
    if (*result)
    {
      if (gLogObjects)
      {
        v3 = gNumLogObjects < 11;
      }

      else
      {
        v3 = 1;
      }

      if (v3)
      {
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9, v17);
        }
      }

      else
      {
        v10 = *(gLogObjects + 80);
      }

      if (OUTLINED_FUNCTION_81())
      {
        OUTLINED_FUNCTION_5_10();
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_16(&_mh_execute_header, v11, v12, "OOBPairing deviceStateUpdate for endpoint: %@ bleUUID: %@", v13, v14, v15, v16, v17);
      }

      platform_blePairing_deleteParams(a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *systemInfo_copyProductType()
{
  result = MGCopyAnswer();
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void iAP2LinkProcessInOrderPacketCMD_cold_3(int a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "iAP2LinkProcessInOrderPacketCMD";
  v4 = 1024;
  v5 = 119;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d Unsupported control packet type=%d", &v2, 0x18u);
}

void iAP2LinkProcessInOrderPacketCMD_cold_5(unsigned __int8 *a1, unsigned __int8 a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136316162;
  v5 = "iAP2LinkProcessInOrderPacketCMD";
  v6 = 1024;
  v7 = 100;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = a2;
  v12 = 1024;
  v13 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%d linkVer=%d cmdID=%xh(%d) not supported link version!", &v4, 0x24u);
}

void mfi4Auth_protocol_cleanupNVMContext(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 48) = 0;
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 64) = 0;
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 72) = 0;
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 80) = 0;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 88) = 0;
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 96) = 0;
    }

    v10 = *(a1 + 104);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 104) = 0;
    }

    v11 = *(a1 + 112);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 112) = 0;
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      free(v12);
      *(a1 + 120) = 0;
    }
  }
}

uint64_t mfi4Auth_protocol_initMessage_RequestUserNVMRead(uint64_t a1, void *a2, uint64_t a3, int a4, char *a5, char *a6)
{
  if (!a2)
  {
    return 1;
  }

  LODWORD(v8) = a4;
  v11 = *(a1 + 200);
  v12 = OUTLINED_FUNCTION_6_7();
  *a2 = v12;
  if (!v12)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v13, v11, 20784, v14, v15);
  if (*(a1 + 144) == 2)
  {
    if (a5)
    {
      v16 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v16, v17, 0, a5, 0x40u);
    }

    if (a6)
    {
      v18 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v18, v19, 1, a6, 0x10u);
    }
  }

  v20 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v20, v21);
  if (v8)
  {
    v8 = v8;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v8;
    }

    while (v8);
  }

  result = 0;
  *(a1 + 28) = 20784;
  return result;
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMAuthStart(uint64_t a1)
{
  if (!a1)
  {
    v25 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v25))
    {
LABEL_17:

      return 1;
    }

    v33 = 136315138;
    v34 = "mfi4Auth_protocol_initMessage_RequestNVMAuthStart";
LABEL_21:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v27, v28, v29, v30, v31, v32);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v4)
  {
    v26 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v26))
    {
      goto LABEL_17;
    }

    v33 = 136315138;
    v34 = "mfi4Auth_protocol_initMessage_RequestNVMAuthStart";
    goto LABEL_21;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1[100];
  v8 = HIDWORD(gLogObjects);
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v10 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v34) = v8;
      OUTLINED_FUNCTION_3();
      v35 = v9;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v21, v22, v23, v24, 0);
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v10, v12, "initMessage_RequestNVMAuthStart", &v33);
  }

  if (!v6)
  {
    return 1;
  }

  v13 = OUTLINED_FUNCTION_6_7();
  *v6 = v13;
  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v14, v7, 20797, v15, v16);
  v17 = OUTLINED_FUNCTION_19_4();
  iAP2MsgAddU16Param(v17, v18, 0, v5);
  result = 0;
  v1[14] = 20797;
  return result;
}

const __CFData *_generateUserSignature(__SecKey *a1, __int128 *a2, __int128 *a3)
{
  error = 0;
  data = 2;
  v10 = *a2;
  v11 = *a3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v4;
  v8 = v4;
  CC_SHA256(&data, 0x21u, md);
  if (!a1)
  {
    return 0;
  }

  result = CFDataCreate(kCFAllocatorDefault, md, 32);
  if (result)
  {
    return SecKeyCreateSignature(a1, kSecKeyAlgorithmECDSASignatureRFC4754, result, &error);
  }

  return result;
}

UInt8 *_extractPublicKey(__SecKey *a1)
{
  error = 0;
  if (!a1)
  {
    return 0;
  }

  v1 = SecKeyCopyPublicKey(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v3 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v3, v5, "_extractPublicKey: SecKeyCopyExternalRepresentation", buf);
  }

  v6 = SecKeyCopyExternalRepresentation(v2, &error);
  if (error)
  {
    v20 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_18_2(v20))
    {
      Code = CFErrorGetCode(error);
      *buf = 134217984;
      v25 = Code;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "cfError: 0x%ld", buf, 0xCu);
    }

    return 0;
  }

  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v8 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v8, v10, "_extractPublicKey: CFDataGetLength", buf);
  }

  Length = CFDataGetLength(v7);
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v25 = v12;
      v26 = 1024;
      v27 = v13;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v14 = &_os_log_default;
    v16 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = Length;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_extractPublicKey: keyDataLength:%ld", buf, 0xCu);
  }

  if (Length != 65)
  {
    return 0;
  }

  v17 = malloc_type_calloc(0x40uLL, 1uLL, 0x795296FCuLL);
  v28.location = 1;
  v28.length = 64;
  CFDataGetBytes(v7, v28, v17);
  return v17;
}

void mfi4Auth_protocol_initMessage_RequestUserNVMWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  OUTLINED_FUNCTION_43_1();
  if (!v24)
  {
    v52 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v52))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v25 = v24;
  OUTLINED_FUNCTION_16_7(v24);
  if (v33)
  {
    v53 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v53))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v34 = v28;
  if (!v28)
  {
    v54 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v54))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v35 = v29;
  if (!v29)
  {
    v55 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v55))
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v23 = v30;
  if (!v30)
  {
    v56 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v56))
    {
LABEL_27:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v57, v58, v59, v60, v61, v62);
    }

LABEL_28:

    goto LABEL_17;
  }

  v36 = v27;
  if (v27)
  {
    v37 = v32;
    v38 = v31;
    v39 = v26;
    v40 = OUTLINED_FUNCTION_6_7();
    *v36 = v40;
    if (v40)
    {
      OUTLINED_FUNCTION_29_1(v40, v39, 20787, *(v25 + 16), *(v25 + 24));
      if (*(v25 + 144) == 2)
      {
        if (v37)
        {
          v41 = *v36;
          OUTLINED_FUNCTION_20_3();
          iAP2MsgAddArrayU8Param(v42, v43, v44, v37, 0x40u);
        }

        if (a23)
        {
          iAP2MsgAddArrayU8Param(*v36, 0, 1, a23, 0x10u);
        }
      }

      v45 = _convertUserNVMWrite(v25, 2);
      if (v38)
      {
        v46 = v45;
        v47 = v38;
        do
        {
          v48 = iAP2MsgAddGroupParam(*v36, v46);
          v49 = *v34++;
          iAP2MsgAddU16Param(*v36, v48, 0, v49);
          v51 = *v35++;
          v50 = v51;
          LODWORD(v51) = *v23++;
          iAP2MsgAddArrayU8Param(*v36, v48, 1, v50, v51);
          --v47;
        }

        while (v47);
      }

      *(v25 + 28) = 20787;
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_44_2();
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMWritePublicKey(uint64_t a1)
{
  if (!a1)
  {
    v26 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v26))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v8)
  {
    v27 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v27))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = v4;
  if (!v4)
  {
    v28 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v28))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v10 = v6;
  if (!v6)
  {
    v29 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v29))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v11 = v7;
  if (!v7)
  {
    v30 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v30))
    {
LABEL_18:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v31, v32, v33, v34, v35, v36);
    }

LABEL_19:

    return 1;
  }

  v12 = v2;
  if (!v2)
  {
    return 1;
  }

  v13 = v5;
  v14 = v3;
  v15 = v1[100];
  v16 = OUTLINED_FUNCTION_6_7();
  *v12 = v16;
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v17, v15, 20795, v18, v19);
  v20 = *v12;
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddU16Param(v21, v22, v23, v14);
  iAP2MsgAddArrayU8Param(*v12, 0, 1, v11, 0x40u);
  iAP2MsgAddArrayU8Param(*v12, 0, 2, v10, 0x10u);
  v24 = iAP2MsgAddGroupParam(*v12, 3);
  iAP2MsgAddU16Param(*v12, v24, 0, v14);
  iAP2MsgAddArrayU8Param(*v12, v24, 1, v9, v13);
  result = 0;
  v1[14] = 20795;
  return result;
}

void mfi4Auth_protocol_initMessage_RequestNVMErasePublicKey()
{
  OUTLINED_FUNCTION_43_1();
  if (!v1)
  {
    v27 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v27))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_6(v1);
  if (v8)
  {
    v28 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v28))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = v6;
  if (!v6)
  {
    v29 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v29))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v10 = v7;
  if (!v7)
  {
    v30 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v30))
    {
LABEL_16:
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v31, v32, v33, v34, v35, v36);
    }

LABEL_17:

    goto LABEL_8;
  }

  v11 = v3;
  if (v3)
  {
    v12 = v5;
    v13 = v4;
    v14 = v2;
    v15 = OUTLINED_FUNCTION_6_7();
    *v11 = v15;
    if (v15)
    {
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_29_1(v16, v14, 20796, v17, v18);
      v19 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddU16Param(v19, v20, 0, v13);
      v21 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v21, v22, 1, v10, 0x40u);
      v23 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddArrayU8Param(v23, v24, 2, v9, 0x10u);
      v25 = OUTLINED_FUNCTION_19_4();
      iAP2MsgAddU16Param(v25, v26, 3, v12);
      v0[14] = 20796;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_44_2();
}

uint64_t mfi4Auth_protocol_handle_NVMAuthStart(uint64_t a1)
{
  inited = 1;
  v35 = 0;
  v39 = 0;
  __dst = 0u;
  v38 = 0u;
  if (!a1)
  {
    v30 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v30))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  v2 = OUTLINED_FUNCTION_16_7(a1);
  if (v5)
  {
    v31 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v31))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  v6 = v3;
  if (!v3)
  {
    v32 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v32))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
    goto LABEL_47;
  }

  if (!v4)
  {
    v33 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v33))
    {
      goto LABEL_35;
    }

    *buf = 136315138;
    v41 = "mfi4Auth_protocol_handle_NVMAuthStart";
LABEL_47:
    OUTLINED_FUNCTION_2_17();
LABEL_38:
    _os_log_error_impl(v24, v25, v26, v27, v28, v29);
LABEL_35:

    return inited;
  }

  v34 = v2;
  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v8 = 0;
  v9 = 0;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v11 = gLogObjects;
    v12 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v41 = v11;
        v42 = 1024;
        v43 = v12;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v14 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v41) = ParamID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthStart: paramID: %d", buf, 8u);
    }

    switch(ParamID)
    {
      case 2:
        DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, &__dst, 33);
        if (inited || DataAsArrayU8 != 33)
        {
          return inited;
        }

        v9 |= 4u;
        break;
      case 1:
        DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          return inited;
        }

        v8 = DataAsU16;
        v9 |= 2u;
        break;
      case 0:
        iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          return inited;
        }

        v9 |= 1u;
        break;
    }

    FirstParam = iAP2MsgGetNextParamWithError(v6, 0, FirstParam, &v35);
    if (v35)
    {
      return inited;
    }
  }

  if (v9 == 7)
  {
    v17 = *(v34 + 712);
    *(v17 + 136) = v8;
    v18 = v38;
    *(v17 + 138) = __dst;
    *(v17 + 154) = v18;
    *(v17 + 170) = v39;
    inited = mfi4Auth_protocol_initSigmaContextNvm(v34);
    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v1 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v41 = v19;
        v42 = 1024;
        v43 = v20;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v1 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    *buf = 0;
    OUTLINED_FUNCTION_13_0();
    v29 = 2;
    goto LABEL_38;
  }

  return inited;
}

uint64_t mfi4Auth_protocol_handle_NVMAuthFinish(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  inited = 1;
  HIBYTE(v380) = 0;
  v386 = 0u;
  memset(v387, 0, sizeof(v387));
  v384 = 0u;
  v385 = 0u;
  *bytes = 0u;
  memcpy(__dst, &unk_1001C37B0, sizeof(__dst));
  if (!a1)
  {
    v318 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v318))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (*(a1 + 30) == 1)
  {
    v319 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v319))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (!a2)
  {
    v320 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v320))
    {
      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (!a4)
  {
    v321 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v321))
    {
LABEL_170:
      v388 = 136315138;
      OUTLINED_FUNCTION_35_2();
      OUTLINED_FUNCTION_2_17();
      _os_log_error_impl(v322, v323, v324, v325, v326, v327);
    }

LABEL_171:

    v29 = 0;
    goto LABEL_91;
  }

  v360 = a3;
  v362 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  allocator = kCFAllocatorDefault;
  *&v12 = 67109120;
  *v374 = v12;
  *&v12 = 67109378;
  *v367 = v12;
  *&v12 = 134218240;
  *v364 = v12;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        OUTLINED_FUNCTION_18_1(v16, v17, v18, v19, v20, v21, v22, v23, v356, v358, v360, v362, v24);
        OUTLINED_FUNCTION_39_1();
        *(v48 + 158) = v14;
        v49 = OUTLINED_FUNCTION_38_2();
        _os_log_error_impl(v49, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
      }

      v25 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (OUTLINED_FUNCTION_24())
    {
      v388 = v374[0];
      *v389 = ParamID;
      v26 = OUTLINED_FUNCTION_38_2();
      _os_log_impl(v26, v15, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthFinish: paramID: %d", v27, 8u);
    }

    if (ParamID == 2)
    {
      if (v10)
      {
        free(v10);
      }

      if ((v11 & 4) != 0)
      {
LABEL_158:
        inited = 22;
        goto LABEL_162;
      }

      ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
      v31 = ParamValueLen;
      if (ParamValueLen <= 0x15)
      {
        v308 = logObjectForModule_12();
        if (OUTLINED_FUNCTION_18_2(v308))
        {
          v388 = 67109376;
          *v389 = v31;
          *&v389[4] = 1024;
          *&v389[6] = 22;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v309, v310, v311, v312, v313, 0xEu);
        }

        goto LABEL_161;
      }

      v10 = OUTLINED_FUNCTION_34_1(ParamValueLen);
      DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v10, v31);
      if (inited || DataAsArrayU8 != v31)
      {
        goto LABEL_162;
      }

      v33 = CFDataCreate(kCFAllocatorDefault, v10, v31);
      v29 = _dumpSimpleHex(v33);

      v34 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v35 = *(gLogObjects + 440);
      }

      else
      {
        v36 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          OUTLINED_FUNCTION_18_1(v36, v37, v38, v39, v40, v41, v42, v43, v356, v358, v360, v362, v44);
          OUTLINED_FUNCTION_39_1();
          *(v51 + 158) = v34;
          v52 = OUTLINED_FUNCTION_38_2();
          _os_log_error_impl(v52, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, 0x12u);
        }

        v45 = &_os_log_default;
        v35 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v388 = v367[0];
        *v389 = v31;
        *&v389[4] = 2112;
        *&v389[6] = v29;
        v46 = OUTLINED_FUNCTION_38_2();
        _os_log_impl(v46, v35, OS_LOG_TYPE_DEFAULT, "handle_NVMAuthFinish: A_c1[%d]: %@", v47, 0x12u);
      }

      v11 |= 4u;
    }

    else
    {
      if (ParamID == 1)
      {
        if ((v11 & 2) != 0)
        {
          goto LABEL_158;
        }

        v28 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v387, 80);
        if (inited || v28 != 80)
        {
          goto LABEL_162;
        }

        v11 |= 2u;
      }

      else if (!ParamID)
      {
        if (v11)
        {
          goto LABEL_158;
        }

        iAP2MsgGetDataAsU16(FirstParam, &inited);
        if (inited)
        {
          goto LABEL_162;
        }

        v11 |= 1u;
      }

      v29 = v9;
    }

    FirstParam = iAP2MsgGetNextParamWithError(a2, 0, FirstParam, &v380 + 7);
    v9 = v29;
    if (HIBYTE(v380))
    {
      goto LABEL_91;
    }
  }

  if (v11 != 7)
  {
    goto LABEL_162;
  }

  v54 = v362;
  v55 = *(v362 + 712);
  v56 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v15 = *(gLogObjects + 440);
  }

  else
  {
    v57 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v57)
    {
      OUTLINED_FUNCTION_1_11(v57, v58, v59, v60, v61, v62, v63, v64, v356, v358, v360, v362, v65);
      *(v156 + 158) = v56;
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v157, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v15 = &_os_log_default;
    v66 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    LOWORD(v388) = 0;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
  }

  if (inited)
  {
    v328 = logObjectForModule_12();
    v329 = OUTLINED_FUNCTION_16(v328);
    if (!v329)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_3_15(v329, v330, v331, v332, v333, v334, v335, v336, v356, v358, v360, v362, v364[0], v364[1], v367[0], v367[1], v370, kCFAllocatorDefault, v337, v374[0], v374[1], v377, v379);
    OUTLINED_FUNCTION_13_0();
    v343 = 8;
  }

  else
  {
    v72 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      v73 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        OUTLINED_FUNCTION_1_11(v73, v74, v75, v76, v77, v78, v79, v80, v356, v358, v360, v362, v81);
        *(v158 + 158) = v72;
        OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v159, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
      }

      v15 = &_os_log_default;
      v82 = &_os_log_default;
    }

    if (OUTLINED_FUNCTION_24())
    {
      LOWORD(v388) = 0;
      OUTLINED_FUNCTION_7_6();
      _os_log_impl(v83, v84, v85, v86, v87, 2u);
    }

    inited = ccsigma_import_peer_verification_key(*v55, 65, __dst);
    if (!inited)
    {
      v88 = *(v54 + 712);
      printSessionKeys(*v88, 1);
      v89 = CFDataCreate(kCFAllocatorDefault, bytes, 64);
      v29 = _dumpSimpleHex(v89);

      v90 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v91 = *(gLogObjects + 440);
      }

      else
      {
        v92 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v92)
        {
          OUTLINED_FUNCTION_1_11(v92, v93, v94, v95, v96, v97, v98, v99, v356, v358, v360, v362, v100);
          *(v160 + 158) = v90;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v161, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v91 = &_os_log_default;
        v101 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v388 = 138412290;
        *v389 = v29;
        OUTLINED_FUNCTION_7_6();
        _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
      }

      v107 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v108 = *(gLogObjects + 440);
      }

      else
      {
        v109 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v109)
        {
          OUTLINED_FUNCTION_1_11(v109, v110, v111, v112, v113, v114, v115, v116, v356, v358, v360, v362, v117);
          *(v162 + 158) = v107;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v163, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v108 = &_os_log_default;
        v118 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        LOWORD(v388) = 0;
        OUTLINED_FUNCTION_7_6();
        _os_log_impl(v119, v120, v121, v122, v123, 2u);
      }

      inited = ccsigma_verify(*v88, bytes, 64, &__dst[1]);
      if (inited)
      {
        v345 = logObjectForModule_12();
        v276 = OUTLINED_FUNCTION_16(v345);
        if (v276)
        {
          goto LABEL_181;
        }
      }

      else
      {
        v124 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v108 = *(gLogObjects + 440);
        }

        else
        {
          v125 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v125)
          {
            OUTLINED_FUNCTION_1_11(v125, v126, v127, v128, v129, v130, v131, v132, v356, v358, v360, v362, v133);
            *(v164 + 158) = v124;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v165, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v108 = &_os_log_default;
          v134 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          LOWORD(v388) = 0;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v135, v136, v137, v138, v139, 2u);
        }

        if (!inited)
        {
          v140 = *(v54 + 32);
          if (v140 == 8)
          {
            v153 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v108 = *(gLogObjects + 440);
            }

            else
            {
              v185 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v185)
              {
                OUTLINED_FUNCTION_1_11(v185, v186, v187, v188, v189, v190, v191, v192, v356, v358, v360, v362, v193);
                *(v194 + 158) = v153;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v195, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v108 = &_os_log_default;
              v196 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_24())
            {
              LOWORD(v388) = 0;
              OUTLINED_FUNCTION_7_6();
              _os_log_impl(v197, v198, v199, v200, v201, 2u);
            }

            mfi4Auth_protocol_initMessage_RequestUserNVMWrite(v54, *(v55 + 136), &v379, *(v54 + 40), *(v54 + 48), *(v54 + 56), *(v54 + 36), 0, 0, v358, v360, v362, v364[0], v364[1], v367[0], v367[1], v370, kCFAllocatorDefault, v374[0], v374[1], v377, 0, v380);
            inited = v202;
            if (v202)
            {
              v353 = logObjectForModule_12();
              v299 = OUTLINED_FUNCTION_16(v353);
              if (!v299)
              {
                goto LABEL_180;
              }
            }

            else
            {
              v203 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v108 = *(gLogObjects + 440);
              }

              else
              {
                v233 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                if (v233)
                {
                  OUTLINED_FUNCTION_1_11(v233, v234, v235, v236, v237, v238, v239, v240, v357, v359, v361, v363, v241);
                  *(v316 + 158) = v203;
                  OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v317, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                }

                v108 = &_os_log_default;
                v242 = &_os_log_default;
              }

              if (OUTLINED_FUNCTION_24())
              {
                LOWORD(v388) = 0;
                OUTLINED_FUNCTION_7_6();
                _os_log_impl(v243, v244, v245, v246, v247, 2u);
              }

              if (inited)
              {
                v355 = logObjectForModule_12();
                v299 = OUTLINED_FUNCTION_16(v355);
                if (!v299)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                MsgLen = iAP2MsgGetMsgLen(v379);
                v249 = OUTLINED_FUNCTION_30_1(MsgLen);
                v251 = malloc_type_calloc(v249, v250, 0xEDA7B82EuLL);
                OUTLINED_FUNCTION_41_1(v251, v252, v253, v254, v255, v256, v257, v258, v357, v359, v361, v363, v365, v366, v368, v369, v371, allocatora, v375, v376, v378, v379);
                v259 = gLogObjects;
                v260 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 56)
                {
                  v261 = *(gLogObjects + 440);
                }

                else
                {
                  v285 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                  if (v285)
                  {
                    OUTLINED_FUNCTION_18_1(v285, v286, v287, v288, v289, v290, v291, v292, v357, v359, v361, v363, v293);
                    *v389 = v259;
                    OUTLINED_FUNCTION_17_0();
                    *(v294 + 158) = v260;
                    OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v295, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                  }

                  v261 = &_os_log_default;
                  v296 = &_os_log_default;
                }

                if (OUTLINED_FUNCTION_26())
                {
                  LOWORD(v388) = 0;
                  OUTLINED_FUNCTION_9(&_mh_execute_header, v261, v297, "handle_NVMAuthFinish: initMessage_RequestNVMOperation", &v388);
                }

                inited = OUTLINED_FUNCTION_42_1();
                if (!inited)
                {
                  goto LABEL_90;
                }

                v298 = logObjectForModule_12();
                v299 = OUTLINED_FUNCTION_16(v298);
                if (!v299)
                {
                  goto LABEL_180;
                }
              }
            }

            OUTLINED_FUNCTION_3_15(v299, v300, v301, v302, v303, v304, v305, v306, v357, v359, v361, v363, v365, v366, v368, v369, v371, allocatora, v307, v375, v376, v378, v379);
            goto LABEL_182;
          }

          if (v140 != 5)
          {
LABEL_90:
            inited = 0;
            goto LABEL_91;
          }

          v152 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v108 = *(gLogObjects + 440);
          }

          else
          {
            v166 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
            if (v166)
            {
              OUTLINED_FUNCTION_1_11(v166, v167, v168, v169, v170, v171, v172, v173, v356, v358, v360, v362, v174);
              *(v175 + 158) = v152;
              OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v176, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            v108 = &_os_log_default;
            v177 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_24())
          {
            LOWORD(v388) = 0;
            OUTLINED_FUNCTION_7_6();
            _os_log_impl(v178, v179, v180, v181, v182, 2u);
          }

          v379 = 0;
          v183 = *(v55 + 136);
          inited = mfi4Auth_protocol_initMessage_RequestNVMPublicKeyChallenge(v54);
          if (inited)
          {
            v352 = logObjectForModule_12();
            v276 = OUTLINED_FUNCTION_16(v352);
            if (!v276)
            {
              goto LABEL_180;
            }
          }

          else
          {
            v184 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v108 = *(gLogObjects + 440);
            }

            else
            {
              v204 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v204)
              {
                OUTLINED_FUNCTION_1_11(v204, v205, v206, v207, v208, v209, v210, v211, v356, v358, v360, v362, v212);
                *(v314 + 158) = v184;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v315, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v108 = &_os_log_default;
              v213 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_24())
            {
              LOWORD(v388) = 0;
              OUTLINED_FUNCTION_7_6();
              _os_log_impl(v214, v215, v216, v217, v218, 2u);
            }

            if (inited)
            {
              v354 = logObjectForModule_12();
              v276 = OUTLINED_FUNCTION_16(v354);
              if (!v276)
              {
                goto LABEL_180;
              }
            }

            else
            {
              v219 = iAP2MsgGetMsgLen(v379);
              v220 = OUTLINED_FUNCTION_30_1(v219);
              v222 = malloc_type_calloc(v220, v221, 0x8932F791uLL);
              OUTLINED_FUNCTION_41_1(v222, v223, v224, v225, v226, v227, v228, v229, v356, v358, v360, v362, v364[0], v364[1], v367[0], v367[1], v370, kCFAllocatorDefault, v374[0], v374[1], v377, v379);
              v230 = gLogObjects;
              v231 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v232 = *(gLogObjects + 440);
              }

              else
              {
                v262 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
                if (v262)
                {
                  OUTLINED_FUNCTION_18_1(v262, v263, v264, v265, v266, v267, v268, v269, v356, v358, v360, v362, v270);
                  *v389 = v230;
                  OUTLINED_FUNCTION_17_0();
                  *(v271 + 158) = v231;
                  OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v272, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
                }

                v232 = &_os_log_default;
                v273 = &_os_log_default;
              }

              if (OUTLINED_FUNCTION_26())
              {
                LOWORD(v388) = 0;
                OUTLINED_FUNCTION_9(&_mh_execute_header, v232, v274, "handle_NVMAuthFinish: initMessage_RequestNVMOperation", &v388);
              }

              inited = OUTLINED_FUNCTION_42_1();
              if (!inited)
              {
                goto LABEL_90;
              }

              v275 = logObjectForModule_12();
              v276 = OUTLINED_FUNCTION_16(v275);
              if (!v276)
              {
                goto LABEL_180;
              }
            }
          }

LABEL_181:
          OUTLINED_FUNCTION_3_15(v276, v277, v278, v279, v280, v281, v282, v283, v356, v358, v360, v362, v364[0], v364[1], v367[0], v367[1], v370, allocator, v284, v374[0], v374[1], v377, v379);
LABEL_182:
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v347, v348, v349, v350, v351, 8u);
          goto LABEL_180;
        }

        v346 = logObjectForModule_12();
        v276 = OUTLINED_FUNCTION_16(v346);
        if (v276)
        {
          goto LABEL_181;
        }
      }

LABEL_180:

      goto LABEL_91;
    }

    v344 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v344))
    {
      goto LABEL_161;
    }

    LOWORD(v388) = 0;
    OUTLINED_FUNCTION_13_0();
    v343 = 2;
  }

  _os_log_error_impl(v338, v339, v340, v341, v342, v343);
LABEL_161:

LABEL_162:
  v29 = v9;
LABEL_91:
  v141 = gLogObjects;
  v142 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v143 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v388 = 134218240;
      *v389 = v141;
      OUTLINED_FUNCTION_17_0();
      *(v154 + 158) = v142;
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v155, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v143 = &_os_log_default;
    v144 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    LOWORD(v388) = 0;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v145, v146, v147, v148, v149, 2u);
  }

  v150 = inited;
  return v150;
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMPublicKeyChallenge(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v16))
    {
LABEL_9:

      return 1;
    }

LABEL_12:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v18, v19, v20, v21, v22, v23);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = v3;
  if (!v3)
  {
    return 1;
  }

  v7 = v4;
  v8 = v2;
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20793, v11, v12);
  v13 = OUTLINED_FUNCTION_19_4();
  iAP2MsgAddU16Param(v13, v14, 0, v7);
  result = 0;
  v1[14] = 20793;
  return result;
}

uint64_t mfi4Auth_protocol_initMessage_RequestNVMOperation(uint64_t a1)
{
  if (!a1)
  {
    v19 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v19))
    {
      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v5)
  {
    v20 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v20))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v6 = v3;
  if (!v3)
  {
    v21 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v21))
    {
      goto LABEL_12;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v22, v23, v24, v25, v26, v27);
    goto LABEL_12;
  }

  v7 = v2;
  if (!v2)
  {
    return 1;
  }

  v8 = v4;
  v9 = v1[100];
  v10 = OUTLINED_FUNCTION_6_7();
  *v7 = v10;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v11, v9, 20809, v12, v13);
  v14 = *v7;
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddArrayU8Param(v15, v16, v17, v6, v8);
  return OUTLINED_FUNCTION_36_1();
}

uint64_t mfi4Auth_protocol_handle_NVMOperationResponse(uint64_t a1)
{
  inited = 1;
  if (!a1)
  {
    v37 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v37))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  v2 = OUTLINED_FUNCTION_16_7(a1);
  if (v5)
  {
    v38 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v38))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  v6 = v3;
  if (!v3)
  {
    v39 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v39))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
    goto LABEL_48;
  }

  if (!v4)
  {
    v40 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v40))
    {
      goto LABEL_59;
    }

    *buf = 136315138;
    *&buf[4] = "mfi4Auth_protocol_handle_NVMOperationResponse";
LABEL_48:
    OUTLINED_FUNCTION_2_17();
    goto LABEL_49;
  }

  v57 = v4;
  v58 = v2;
  v60 = 0;
  FirstParam = iAP2MsgGetFirstParam(v3, 0);
  v8 = 0;
  v9 = 0;
  LOWORD(ParamValueLen) = -21846;
  while (FirstParam)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v12 = gLogObjects;
    v13 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v14 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v13;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v17, v18, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20, 0x12u);
      }

      v15 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = ParamID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "handle_NVMOperationResponse: paramID: %d", buf, 8u);
    }

    if (ParamID || (ParamValueLen = iAP2MsgGetParamValueLen(FirstParam), v9 = 1, v8 = OUTLINED_FUNCTION_34_1(ParamValueLen), DataAsArrayU8 = iAP2MsgGetDataAsArrayU8(FirstParam, &inited, v8, ParamValueLen), !inited) && DataAsArrayU8 == ParamValueLen)
    {
      FirstParam = iAP2MsgGetNextParamWithError(v6, 0, FirstParam, &v60);
      if ((v60 & 1) == 0)
      {
        continue;
      }
    }

    return inited;
  }

  if (v9 == 1)
  {
    v1 = CFDataCreate(kCFAllocatorDefault, v8, ParamValueLen);
    v65 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63 = v21;
    v64 = v21;
    *buf = v21;
    *&buf[16] = v21;
    v59 = 0;
    v22 = *(v58 + 712);
    v23 = *(v22 + 136);
    v24 = mfi4Auth_protocol_parse(v58, buf, v1, *(v22 + 136));
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v26 = gLogObjects;
      v27 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v28 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v66 = 134218240;
          *&v66[4] = v26;
          OUTLINED_FUNCTION_17_0();
          v67 = v27;
          OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
        }

        v28 = &_os_log_default;
        v29 = &_os_log_default;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v66 = 67109120;
        *&v66[4] = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "handle_NVMOperationResponse: Found no message starting with: %x", v66, 8u);
      }

      v30 = mfi4Auth_protocol_parse(v58, buf, v1, 0);
      if (!v30)
      {
        inited = -1;
        v47 = logObjectForModule_12();
        if (OUTLINED_FUNCTION_18_2(v47))
        {
          *v66 = 67109120;
          OUTLINED_FUNCTION_7_6();
          _os_log_impl(v48, v49, v50, v51, v52, 8u);
        }

        goto LABEL_59;
      }

      v25 = v30;
      v23 = 0;
    }

    if (inited)
    {
      v53 = logObjectForModule_12();
      if (!OUTLINED_FUNCTION_16(v53))
      {
        goto LABEL_59;
      }

      *v66 = 0;
    }

    else if (mfi4Auth_protocol_processIncomingMessageExtra(v58, v23, v25, &v59, v57))
    {
      if (!v59)
      {
        return 0;
      }

      if (inited)
      {
        v55 = logObjectForModule_12();
        if (!OUTLINED_FUNCTION_16(v55))
        {
          goto LABEL_59;
        }

        *v66 = 0;
      }

      else
      {
        MsgLen = iAP2MsgGetMsgLen(v59);
        v32 = OUTLINED_FUNCTION_30_1(MsgLen);
        v34 = malloc_type_calloc(v32, v33, 0xD15EB07BuLL);
        memcpy(v34, *(v59 + 24), v1);
        inited = mfi4Auth_protocol_initMessage_RequestNVMOperation(v58);
        if (!inited)
        {
          return 0;
        }

        v56 = logObjectForModule_12();
        if (!OUTLINED_FUNCTION_16(v56))
        {
LABEL_59:

          return inited;
        }

        *v66 = 0;
      }
    }

    else
    {
      v54 = logObjectForModule_12();
      if (!OUTLINED_FUNCTION_16(v54))
      {
        goto LABEL_59;
      }

      *v66 = 0;
    }

    OUTLINED_FUNCTION_13_0();
    v46 = 2;
LABEL_49:
    _os_log_error_impl(v41, v42, v43, v44, v45, v46);
    goto LABEL_59;
  }

  return inited;
}

uint64_t mfi4Auth_protocol_initMessage_RequestVendorNVMRead(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_18;
    }

LABEL_15:

    return 1;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    v18 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    goto LABEL_15;
  }

  v6 = v2;
  if (!v2)
  {
    return 1;
  }

  LODWORD(v7) = v4;
  v8 = v1[100];
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20785, v11, v12);
  v13 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v13, v14);
  if (v7)
  {
    v7 = v7;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v7;
    }

    while (v7);
  }

  return OUTLINED_FUNCTION_36_1();
}

uint64_t mfi4Auth_protocol_initMessage_RequestManufacturerNVMRead(uint64_t a1)
{
  if (!a1)
  {
    v16 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_18;
    }

LABEL_15:

    return 1;
  }

  OUTLINED_FUNCTION_8_6(a1);
  if (v5)
  {
    v17 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    v18 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_15;
    }

LABEL_18:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
    goto LABEL_15;
  }

  v6 = v2;
  if (!v2)
  {
    return 1;
  }

  LODWORD(v7) = v4;
  v8 = v1[100];
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_29_1(v10, v8, 20802, v11, v12);
  v13 = OUTLINED_FUNCTION_80_0();
  _convertUserVendorNVMRead(v13, v14);
  if (v7)
  {
    v7 = v7;
    do
    {
      OUTLINED_FUNCTION_27_2();
      --v7;
    }

    while (v7);
  }

  return OUTLINED_FUNCTION_36_1();
}

void mfi4Auth_protocol_requestNvmErasePublicKey(uint64_t a1)
{
  if (!a1)
  {
    v10 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v10))
    {
LABEL_13:

      return;
    }

    v21 = 136315138;
    v22 = "mfi4Auth_protocol_requestNvmErasePublicKey";
LABEL_16:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v12, v13, v14, v15, v16, v17);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_7(a1);
  if (v6)
  {
    v11 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v11))
    {
      goto LABEL_13;
    }

    v21 = 136315138;
    v22 = "mfi4Auth_protocol_requestNvmErasePublicKey";
    goto LABEL_16;
  }

  *buffer = 0;
  v20 = 0;
  memset(v18, 0, sizeof(v18));
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      v8 = v4;
      if (v4)
      {
        if (CFDataGetLength(v3) == 16 && CFDataGetLength(v8) == 64)
        {
          v23.location = 0;
          v23.length = 16;
          CFDataGetBytes(v7, v23, buffer);
          v24.location = 0;
          v24.length = 64;
          CFDataGetBytes(v8, v24, v18);
          v9 = *(a1 + 200);
          mfi4Auth_protocol_initMessage_RequestNVMErasePublicKey();
        }
      }
    }
  }
}

void _generateUserAccessoryInfoPayload(uint64_t a1)
{
  if (!a1)
  {
    v15 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v15))
    {
      goto LABEL_15;
    }

LABEL_13:

    return;
  }

  OUTLINED_FUNCTION_16_7(a1);
  if (v6)
  {
    v16 = logObjectForModule_12();
    if (OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v7 = v5;
  if (!v5)
  {
    v17 = logObjectForModule_12();
    if (!OUTLINED_FUNCTION_16(v17))
    {
      goto LABEL_13;
    }

LABEL_15:
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v18, v19, v20, v21, v22, v23);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = v3;
  v10 = OUTLINED_FUNCTION_6_7();
  *v7 = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_29_1(v10, 0, 0, *(a1 + 16), *(a1 + 24));
    v11 = *v7;
    OUTLINED_FUNCTION_20_3();

    iAP2MsgAddArrayU8Param(v12, v13, v14, v9, v8);
  }
}

void _convertUserVendorNVMRead_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertUserVendorNVMRead_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_11()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_12()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMEraseResponse_cold_13()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMEraseResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMEraseResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_1(int *a1)
{
  v3 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v3))
  {
    v9 = *a1;
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

BOOL mfi4Auth_protocol_handle_NVMReadResponse_cold_11(_WORD *a1, uint64_t a2, void *a3)
{
  *v3 = OUTLINED_FUNCTION_24_4(a1, a2, a3);
  free(v4);
  return *v3 == 0;
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_18()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_19()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMReadResponse_cold_20()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMReadResponse_cold_3()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMReadResponse_cold_4()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _handleNvmReadAccessoryInfo_cold_15()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _handleNvmReadAccessoryInfo_cold_16()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _copyOrCreateUserPublicKeyForSerialNumber_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_6()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_7()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMWriteResponse_cold_8(_DWORD *a1, _DWORD *a2)
{
  v4 = HIDWORD(gLogObjects);
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14[2] = v4;
      OUTLINED_FUNCTION_3();
      *(&v14[3] + 2) = v5;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, 0);
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    OUTLINED_FUNCTION_9(&_mh_execute_header, v6, v8, "mfi4Auth_protocol_handle_NVMWriteResponse: error", v14);
  }

  *a2 = *a1;
}

void _convertNVMWriteResponse_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertNVMWriteResponse_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_2(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_3(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_5()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_7(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_9(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_13(a1);
  v4(v3);
  v5 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_21_0(v5))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v6, v7, v8, v9, v10, 2u);
  }

  *v1 = v2;
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_10()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_13()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_14()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v2))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_17()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_18_2(v1))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_18()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_19()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_20()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_21()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_NVMPublicKeyChallenge_cold_22(int *a1, int *a2)
{
  v4 = HIDWORD(gLogObjects);
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v6 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14[2] = v4;
      OUTLINED_FUNCTION_3();
      *(&v14[3] + 2) = v5;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13, 0);
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = *a1;
    v14[0] = 67109120;
    v14[1] = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "handle_NVMPublicKeyChallenge: failed: %d", v14, 8u);
  }

  *a2 = *a1;
}

void _convertUserNVMWrite_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _convertUserNVMWrite_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_nvm_copyUserPublicKeyForSerialNumber_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void _getCachedUserPublicKey_cold_1()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void _getCachedUserPublicKey_cold_2()
{
  v1 = logObjectForModule_12();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_2_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

_BYTE *_createFeature_5(_BYTE *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_5(_BYTE **a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *a1;
      if (v3)
      {
        if (*v3 != 1 || (platform_digitalAudio_accessoryDetached(*(a2 + 8)), (v3 = *a1) != 0))
        {
          free(v3);
          *a1 = 0;
        }
      }
    }
  }

  return 0;
}

uint64_t _startFeatureFromDevice_2(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = iap2_feature_getFeature(result, 9u);
    if (result)
    {
      v2 = *(v1 + 8);
      EndpointSampleRates = _getEndpointSampleRates(v1);
      platform_digitalAudio_accessoryAttached(v2, EndpointSampleRates);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_digitalAudio_start(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 9u);
    if (Feature)
    {
      *Feature = 1;
      v2 = platform_digitalAudio_start();
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v5 = *(gLogObjects + 296);
      }

      else
      {
        v5 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
        }
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v20 = HIDWORD(*(a1 + 8));
        OUTLINED_FUNCTION_2_18(&_mh_execute_header, v6, v7, "Digital Audio started for EndpointUUID: %@", v8, v9, v10, v11, 2u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_digitalAudio_stop(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 9u);
    if (Feature)
    {
      *Feature = 0;
      v2 = platform_digitalAudio_stop();
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v5 = *(gLogObjects + 296);
      }

      else
      {
        v5 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
        }
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v20 = HIDWORD(*(a1 + 8));
        OUTLINED_FUNCTION_2_18(&_mh_execute_header, v6, v7, "Digital Audio stopped for EndpointUUID: %@", v8, v9, v10, v11, 2u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_digitalAudio_sendInformationUpdate(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 38)
  {
    v5 = *(gLogObjects + 296);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10_0();
      *&v22[10] = v4;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v15, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20, v21);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    *v22 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attributes: %@", &v21, 0xCu);
  }

  result = 0;
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a2, @"SampleRate");
    v8 = CFDictionaryGetValue(a2, @"VolumeLevel");
    v9 = CFDictionaryGetValue(a2, @"SoundCheck");
    iAP2MsgInit((a1 + 15), 55809, a1[24], 0xFFFF, 0, 0);
    if (Value)
    {
      LOBYTE(v21) = 0;
      CFNumberGetValue(Value, kCFNumberCharType, &v21);
      LODWORD(Value) = iAP2MsgAddU8Param((a1 + 15), 0, 0, v21) != 0;
    }

    if (v8)
    {
      v21 = 0;
      CFNumberGetValue(v8, kCFNumberIntType, &v21);
      iAP2MsgAddU32Param((a1 + 15), 0, 1, v21);
    }

    if (v9)
    {
      v21 = 0;
      CFNumberGetValue(v9, kCFNumberIntType, &v21);
      iAP2MsgAddU32Param((a1 + 15), 0, 2, v21);
    }

    if (Value)
    {
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 38)
      {
        v12 = *(gLogObjects + 296);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v21 = 134218240;
          *v22 = v10;
          *&v22[8] = 1024;
          *&v22[10] = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21, 0x12u);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        MsgID = iAP2MsgGetMsgID((a1 + 15));
        v14 = a1[1];
        v21 = 67109378;
        *v22 = MsgID;
        *&v22[4] = 2112;
        *&v22[6] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Digital Audio sending msg: %xh for endpoint: %@", &v21, 0x12u);
      }

      return iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _getEndpointSampleRates_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "transportComponent is NULL", buf, 2u);
}

void t56_util_callbackOnTimer_cold_3()
{
  *v2 = 136315650;
  OUTLINED_FUNCTION_17_8();
  *&v2[7] = 241;
  v2[9] = v0;
  v3 = 4;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s:%d ERROR: All available timers running!!!! %d", v2, 0x18u);
}

void t56_util_cancelTimer_cold_2()
{
  *v3 = 136315650;
  OUTLINED_FUNCTION_17_8();
  *&v3[7] = 261;
  v3[9] = v0;
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s:%d ERROR: Timer %d not running!!!!", v3, 0x18u);
}

const char *acc_connection_copyDescription(const char *result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    v16 = *v1;
    v2 = *(v1 + 8);
    if (v2 >= 0xA)
    {
      v3 = &kACCConnection_Type_Strings[11];
    }

    else
    {
      v3 = &kACCConnection_Type_Strings[v2];
    }

    v14 = *(v1 + 16);
    v15 = *v3;
    if (*(v1 + 24))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = *(v1 + 32);
    CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
    v7 = *(v1 + 32);
    NumEndpoints = acc_connection_getNumEndpoints(v1);
    if (acc_authInfo_isAuthenticated(v1 + 48, 6u))
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v10 = "YES";
    if (!*(v1 + 120))
    {
      v10 = "NO";
      if (*(v1 + 137) == 1)
      {
        acc_connection_mapAccessoryInfo(v1);
        if (*(v1 + 120))
        {
          v10 = "YES";
        }
      }
    }

    v11 = CurrentUnixTimeMS - v7;
    Count = *(v1 + 128);
    if (Count)
    {
      Count = CFDictionaryGetCount(Count);
    }

    if (*(v1 + 138))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<ACCConnection_t: %@; connectionType: [%s]; identifier: %@; dataOutHandler: %s; creationTimestampMS: %llu; durationMS: %llu; numEndpoints: %ld; authenticated: %s; accessoryInfo: %s; numProperties: %ld; published: %s>", v16, v15, v14, v4, v5, v11, NumEndpoints, v9, v10, Count, v13);
    OUTLINED_FUNCTION_52_2();
    return "NO";
  }

  return result;
}

uint64_t acc_connection_publish(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_28_2(result);
  if (!v2 || (*(v1 + 142) & 1) != 0)
  {
    return 0;
  }

  v3 = *(v1 + 138);
  if ((v3 & 1) == 0)
  {
    platform_analytics_connectionWillBePublished(v1);
    platform_connectionInfo_accessoryConnectionAttached(*v1, *(v1 + 8));
  }

  LODWORD(v4) = gNumLogObjects;
  v5 = &off_1001C3000;
  if (gLogObjects && gNumLogObjects >= 14)
  {
    v6 = *(gLogObjects + 104);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_5_13();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  if (OUTLINED_FUNCTION_76())
  {
    v12 = *v1;
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_73_0(v13, v14, v15, v16, v17);
  }

  pthread_mutex_lock((v1 + 144));
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(v1 + 40));
  pthread_mutex_unlock((v1 + 144));
  CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_publishEndpoint, 0);
  if (Copy)
  {
    CFRelease(Copy);
  }

  NumEndpoints = acc_connection_getNumEndpoints(v1);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, NumEndpoints, &kCFTypeArrayCallBacks);
  acc_connection_endpointIterateForConnection(v1);
  if (*(v1 + 140))
  {
    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v21 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v103, v104, v105, v106, v107, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      *buf = 0;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v22, v23, OS_LOG_TYPE_INFO, v24, v25, 2u);
    }

    platform_externalAccessory_removeEAAccessoryForPrimaryEndpoints(theArray);
    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v26 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v108, v109, v110, v111, v112, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      *buf = 134217984;
      *v164 = CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_73_0(v27, v28, v29, v30, v31);
    }

    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v32 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v113, v114, v115, v116, v117, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_73_0(v33, v34, v35, v36, v37);
    }

    pthread_mutex_lock((v1 + 208));
    v38 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
    if (acc_properties_containsProperty(*(v1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
    {
      v39 = acc_properties_copyProperty(*(v1 + 128), v38);
    }

    else
    {
      v39 = 0;
    }

    pthread_mutex_unlock((v1 + 208));
    platform_externalAccessory_addEAAccessoryForEAEndpoints(theArray, v39);
    if (v39)
    {
      CFRelease(v39);
    }

    if (theArray)
    {
      *(v1 + 140) = CFArrayGetCount(theArray);
    }

    else
    {
      OUTLINED_FUNCTION_27_3();
      if (Copy && v4 >= 14)
      {
        v40 = *(Copy + 13);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_0_8();
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v135, v136, v137, v138, v139, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v125, v126, v127, v128, v129, 2u);
      }
    }

    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v41 = *(Copy + 13);
    }

    else
    {
      v41 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_0_8();
        OUTLINED_FUNCTION_5_13();
        _os_log_error_impl(v118, v119, v120, v121, v122, 0x12u);
      }
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v84 = *(v1 + 140);
      v85 = *v1;
      *buf = 67109378;
      *v164 = v84;
      *&v164[4] = 2112;
      *&v164[6] = v85;
      OUTLINED_FUNCTION_15_8();
      _os_log_debug_impl(v86, v87, OS_LOG_TYPE_DEBUG, v88, v89, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v20 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v140, v141, v142, v143, v144, 0x12u);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v62 = *(v1 + 140);
      *buf = 67109632;
      *v164 = 0;
      *&v164[4] = 1024;
      *&v164[6] = 0;
      *&v164[10] = 1024;
      *&v164[12] = v62;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v63, v64, OS_LOG_TYPE_INFO, v65, v66, 0x14u);
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if ((*(v1 + 142) & 1) == 0 && *v1 && *(v1 + 8) == 6)
  {
    pthread_mutex_lock((v1 + 208));
    v42 = acc_properties_copyProperty(*(v1 + 128), kCFACCProperties_Connection_ManagerParent);
    Copy = acc_properties_copyProperty(*(v1 + 128), kCFACCProperties_Connection_IsAdapter);
    pthread_mutex_unlock((v1 + 208));
    v43 = gLogObjects;
    v44 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v4 = *(gLogObjects + 104);
    }

    else
    {
      v4 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        *v164 = v43;
        OUTLINED_FUNCTION_20_4();
        *&v164[10] = v44;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v95, v96, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v45 = *v1;
      OUTLINED_FUNCTION_56_2();
      *&v164[10] = 1715;
      *&v164[14] = 2112;
      *&v164[16] = v46;
      v165 = 2112;
      v166 = v42;
      v167 = 2112;
      v168[0] = Copy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%d connection %@, managerParent %@, isAdapter %@", buf, 0x30u);
    }

    if (!v42)
    {
      goto LABEL_117;
    }

    if (*(v1 + 120))
    {
      valuePtr = 0;
      if (Copy && (CFNumberGetValue(Copy, kCFNumberIntType, &valuePtr), valuePtr))
      {
        ConnectionsThroughAdapter = acc_manager_findConnectionsThroughAdapter(*v1);
        if (ConnectionsThroughAdapter)
        {
          v4 = ConnectionsThroughAdapter;
          Count = CFArrayGetCount(ConnectionsThroughAdapter);
          if (Count)
          {
            v49 = Count;
            v158 = v3;
            values = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
            v50 = acc_accInfo_retainedProperty(*(v1 + 120), 11, 0);
            v51 = acc_accInfo_retainedProperty(*(v1 + 120), 12, 0);
            v52 = gLogObjects;
            v53 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 14)
            {
              v54 = *(gLogObjects + 104);
            }

            else
            {
              v54 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v164 = v52;
                OUTLINED_FUNCTION_20_4();
                *&v164[10] = v53;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v149, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }
            }

            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v67 = *v1;
              OUTLINED_FUNCTION_14_1();
              *&v164[8] = 2048;
              *&v164[10] = v49;
              OUTLINED_FUNCTION_57_2();
              WORD1(v168[0]) = v68;
              *(v168 + 4) = v4;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%@ isAdapter: Found connectionsThroughAdapter count %ld, adapterVID %@, adapterPID %@, connectionUUIDs %@", buf, 0x34u);
            }

            cf = v50;
            if (v50 && v51 && values)
            {
              v169.location = 0;
              v169.length = v49;
              CFArrayGetValues(v4, v169, values);
              if (v49 >= 1)
              {
                v156 = kCFACCProperties_Connection_AdapterVID;
                v69 = kCFACCProperties_Connection_AdapterPID;
                v70 = values;
                do
                {
                  v71 = *v70++;
                  ConnectionWithUUID = acc_manager_getConnectionWithUUID(v71);
                  acc_connection_setProperty(ConnectionWithUUID, v156);
                  acc_connection_setProperty(ConnectionWithUUID, v69);
                  --v49;
                }

                while (v49);
              }
            }

            else if (!values)
            {
LABEL_111:
              v5 = &off_1001C3000;
              v3 = v158;
              goto LABEL_112;
            }

            free(values);
            goto LABEL_111;
          }

          v51 = v4;
LABEL_115:
          CFRelease(v51);
        }
      }

      else
      {
        AdapterForConnection = acc_manager_findAdapterForConnection(*v1);
        if (AdapterForConnection)
        {
          v4 = AdapterForConnection;
          v56 = acc_manager_getConnectionWithUUID(AdapterForConnection);
          if (v56)
          {
            v57 = v56;
            v58 = v56[15];
            if (v58)
            {
              v159 = v3;
              v130 = acc_accInfo_retainedProperty(v58, 11, 0);
              v51 = acc_accInfo_retainedProperty(v57[15], 12, 0);
              v131 = gLogObjects;
              v132 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 14)
              {
                v133 = *(gLogObjects + 104);
              }

              else
              {
                v133 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v164 = v131;
                  OUTLINED_FUNCTION_20_4();
                  *&v164[10] = v132;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v145, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
              {
                v146 = *v57;
                v147 = *v1;
                OUTLINED_FUNCTION_14_1();
                *&v164[8] = 2112;
                *&v164[10] = v148;
                OUTLINED_FUNCTION_57_2();
                _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "Found adapter %@ for connection %@, adapterVID %@, adapterPID %@", buf, 0x2Au);
              }

              cf = v130;
              acc_connection_setProperty(v1, kCFACCProperties_Connection_AdapterVID);
              acc_connection_setProperty(v1, kCFACCProperties_Connection_AdapterPID);
              v3 = v159;
              v5 = &off_1001C3000;
LABEL_112:
              CFRelease(v4);
              if (cf)
              {
                CFRelease(cf);
              }

              if (!v51)
              {
                goto LABEL_116;
              }

              goto LABEL_115;
            }
          }

          v59 = gLogObjects;
          v60 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v61 = *(gLogObjects + 104);
          }

          else
          {
            v61 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              *buf = 134218240;
              *v164 = v59;
              OUTLINED_FUNCTION_20_4();
              *&v164[10] = v60;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v134, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (OUTLINED_FUNCTION_18())
          {
            v123 = *v1;
            OUTLINED_FUNCTION_56_2();
            *&v164[10] = 1776;
            *&v164[14] = 2112;
            *&v164[16] = v4;
            v165 = 2112;
            v166 = v124;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%s:%d Could not get adapterConnection for UUID %@ !!!  connection %@", buf, 0x26u);
          }

          v51 = v4;
          v5 = &off_1001C3000;
          goto LABEL_115;
        }
      }
    }

LABEL_116:
    CFRelease(v42);
LABEL_117:
    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  *(v1 + 138) = 1;
  if (v3)
  {
    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v73 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      v97 = *(v5 + 71);
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v98, v99, v100, v101, v102, 0x12u);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v76 = *v1;
      v77 = acc_connection_getNumEndpoints(v1);
      *buf = 138412546;
      *v164 = v76;
      *&v164[8] = 2048;
      *&v164[10] = v77;
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_58_1();
      _os_log_impl(v78, v79, v80, v81, v82, v83);
    }
  }

  else
  {
    v74 = acc_connection_copyDescription(v1);
    OUTLINED_FUNCTION_27_3();
    if (Copy && v4 >= 14)
    {
      v75 = *(Copy + 13);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      v150 = *(v5 + 71);
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_5_13();
      _os_log_error_impl(v151, v152, v153, v154, v155, 0x12u);
    }

    if (OUTLINED_FUNCTION_93())
    {
      *buf = 138412290;
      *v164 = v74;
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_79_0(v90, v91, v92, v93, v94);
    }

    if (v74)
    {
      CFRelease(v74);
    }
  }

  return 1;
}

const void *_CFDictionaryApplierFunction_publishEndpoint(const void *a1)
{
  result = acc_manager_getEndpointWithUUID(a1);
  if (result)
  {

    return acc_endpoint_publish(result);
  }

  return result;
}

CFIndex acc_connection_getNumEndpoints(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2(a1);
  if (!v2)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 144));
  Count = CFDictionaryGetCount(*(v1 + 40));
  pthread_mutex_unlock((v1 + 144));
  return Count;
}

uint64_t acc_connection_endpointIterateForConnection(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_28_2(result);
    if (v4)
    {
      v5 = v3;
      v6 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryApplyFunction(*(v1 + 40), v6, v5);

      return pthread_mutex_unlock((v1 + 144));
    }
  }

  return result;
}

void _CFDictionaryApplierFunction_countEAServiceEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3 && (acc_endpoint_getProtocol(a2) == 5 || acc_endpoint_getProtocol(a2) == 7))
  {
    ++*a3;
    if (acc_endpoint_isPublished(a2))
    {
      ++*(a3 + 2);
    }

    v5 = *(a3 + 8);
    if (v5)
    {
      v6 = *(a2 + 16);

      CFArrayAppendValue(v5, v6);
    }
  }
}

uint64_t acc_connection_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = gLogSignpostObjects;
      v4 = gNumLogSignpostObjects;
      if (gLogSignpostObjects)
      {
        v5 = gNumLogSignpostObjects < 2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        v11 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_7_8();
          *&v93[6] = v3;
          OUTLINED_FUNCTION_34();
          *&v93[16] = v4;
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
          v3 = gLogSignpostObjects;
          v4 = gNumLogSignpostObjects;
        }
      }

      else
      {
        v11 = *(gLogSignpostObjects + 8);
      }

      if (v3 && v4 >= 2)
      {
        v12 = *(v3 + 8);
      }

      else
      {
        v12 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_7_8();
          *&v93[6] = v3;
          OUTLINED_FUNCTION_34();
          *&v93[16] = v4;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v13, v14, v15, v16, v17, 0x18u);
        }
      }

      v18 = os_signpost_id_make_with_pointer(v12, v2);
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v18;
        if (os_signpost_enabled(v11))
        {
          v20 = *v2;
          OUTLINED_FUNCTION_38();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Connection", "Create connection %@", &v92, 0xCu);
        }
      }

      v21 = acc_connection_copyDescription(v2);
      v22 = gLogObjects;
      v23 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v24 = *(gLogObjects + 104);
      }

      else
      {
        v24 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          v92 = 134218240;
          *v93 = v22;
          OUTLINED_FUNCTION_3();
          *&v93[10] = v23;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v25, v26, v27, v28, v29, 0x12u);
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v92 = 138412290;
        *v93 = v21;
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_79_0(v30, v31, v32, v33, v34);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      *(v2 + 142) = 1;
      acc_connection_setDataOutHandler(*v1, 0);
      if (*(v2 + 2) == 2)
      {
        OUTLINED_FUNCTION_44_3();
      }

      CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
      v36 = v2[4];
      v37 = gLogObjects;
      v38 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v39 = *(gLogObjects + 104);
      }

      else
      {
        v39 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          v92 = 134218240;
          *v93 = v37;
          OUTLINED_FUNCTION_3();
          *&v93[10] = v38;
          OUTLINED_FUNCTION_16_8();
          _os_log_error_impl(v40, v41, v42, v43, v44, 0x12u);
        }
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v45 = *v2;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_73_0(v46, v47, v48, v49, v50);
      }

      ACCUNManagerDismissNotificationsWithGroupIdentifier(*v2);
      acc_connection_removeAllEndpoints(v2);
      if (*(v2 + 138) == 1)
      {
        platform_analytics_connectionWillBeDestroyed();
        platform_connectionInfo_accessoryConnectionDetached(*v2);
      }

      if (*v2)
      {
        v51 = CFRetain(*v2);
      }

      else
      {
        v51 = 0;
      }

      pthread_mutex_lock((v2 + 34));
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      pthread_mutex_unlock((v2 + 34));
      pthread_mutex_destroy((v2 + 34));
      v52 = v2[2];
      if (v52)
      {
        CFRelease(v52);
        v2[2] = 0;
      }

      pthread_mutex_lock((v2 + 18));
      v53 = v2[5];
      if (v53)
      {
        CFRelease(v53);
        v2[5] = 0;
      }

      pthread_mutex_unlock((v2 + 18));
      pthread_mutex_destroy((v2 + 18));
      pthread_mutex_lock((v2 + 26));
      v54 = v2[16];
      if (v54)
      {
        CFRelease(v54);
        v2[16] = 0;
      }

      pthread_mutex_unlock((v2 + 26));
      pthread_mutex_destroy((v2 + 26));
      acc_nvmInfo_init(v2 + 28);
      acc_authInfo_cleanup((v2 + 6), 1);
      acc_accInfo_destroy(v2 + 15);
      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      v55 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v56 = *(gLogObjects + 104);
      }

      else
      {
        v56 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v93[10] = v55;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v77, v78, v79, v80, v81);
        }
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v92 = 138412546;
        *v93 = v51;
        *&v93[8] = 2048;
        *&v93[10] = (CurrentUnixTimeMS - v36) / 1000.0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_58_1();
        _os_log_impl(v57, v58, v59, v60, v61, v62);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      v63 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v64 = *(gLogObjects + 104);
      }

      else
      {
        v64 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v93[10] = v63;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v82, v83, v84, v85, v86);
        }
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v92) = 0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_38_3(v67, v68, v69, v70, v71);
      }

      acc_manager_checkForWirelessCTA();
      v65 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v66 = *(gLogObjects + 104);
      }

      else
      {
        v66 = &_os_log_default;
        if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_3();
          *&v93[10] = v65;
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_10(v87, v88, v89, v90, v91);
        }
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v92) = 0;
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_38_3(v72, v73, v74, v75, v76);
      }

      acc_manager_checkForInductiveCTA();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL acc_connection_setDataOutHandler(uint64_t a1, const void *a2)
{
  if (a1)
  {
    pthread_rwlock_wrlock(&_gAccConnectionLock);
    v4 = *(a1 + 24);
    if (v4)
    {
      _Block_release(v4);
    }

    if (a2)
    {
      v5 = _Block_copy(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 24) = v5;
    pthread_rwlock_unlock(&_gAccConnectionLock);
  }

  return a1 != 0;
}

unint64_t acc_connection_getDurationMS(unint64_t result)
{
  if (result)
  {
    return systemInfo_getCurrentUnixTimeMS() - *(result + 32);
  }

  return result;
}

void acc_connection_removeAllEndpoints(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2(a1);
    if (v2)
    {
      pthread_rwlock_wrlock(&_gAccConnectionLock);
      pthread_mutex_lock((v1 + 144));
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(v1 + 40));
      CFDictionaryRemoveAllValues(*(v1 + 40));
      pthread_mutex_unlock((v1 + 144));
      pthread_rwlock_unlock(&_gAccConnectionLock);
      CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_destroyEndpoint, 0);
      if (Copy)
      {

        CFRelease(Copy);
      }
    }
  }
}

CFSetRef acc_connection_copyEndpointUUIDs(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2(a1);
  if (!v2)
  {
    return 0;
  }

  pthread_mutex_lock((v1 + 144));
  Count = CFDictionaryGetCount(*(v1 + 40));
  if (Count < 1)
  {
    v7 = CFSetCreate(kCFAllocatorDefault, 0, 0, &kCFTypeSetCallBacks);
  }

  else
  {
    v4 = Count;
    __chkstk_darwin();
    v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v5);
    CFDictionaryGetKeysAndValues(*(v1 + 40), v6, 0);
    v7 = CFSetCreate(kCFAllocatorDefault, v6, v4, &kCFTypeSetCallBacks);
  }

  pthread_mutex_unlock((v1 + 144));
  return v7;
}

void **_CFDictionaryApplierFunction_destroyEndpoint(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    return acc_endpoint_destroy(&v3);
  }

  return result;
}

BOOL acc_connection_containsEndpointUUID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_2(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  pthread_mutex_lock((v1 + 144));
  v5 = CFDictionaryContainsKey(*(v1 + 40), v4) != 0;
  pthread_mutex_unlock((v1 + 144));
  return v5;
}

uint64_t acc_connection_addEndpoint(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_28_2(result);
    if (v4)
    {
      v5 = v3;
      v6 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryAddValue(*(v1 + 40), v6, v5);

      return pthread_mutex_unlock((v1 + 144));
    }
  }

  return result;
}

uint64_t acc_connection_removeEndpointUUID(uint64_t result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_28_2(result);
    if (v3)
    {
      v4 = v2;
      pthread_mutex_lock((v1 + 144));
      CFDictionaryRemoveValue(*(v1 + 40), v4);

      return pthread_mutex_unlock((v1 + 144));
    }
  }

  return result;
}

BOOL acc_connection_setAuthCertData(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 14;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      v10 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }
    }

    else
    {
      v10 = *(gLogObjects + 104);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v3;
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_79_0(v12, v13, v14, v15, v16);
    }

    return acc_authInfo_setCertData((v3 + 6), a2);
  }

  return result;
}

uint64_t acc_connection_setAuthStatus(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = acc_connection_copyUUID(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 14;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      *buf = 134218240;
      v41 = v8;
      OUTLINED_FUNCTION_2_1();
      v43 = v9;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  else
  {
    v12 = *(gLogObjects + 104);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v7;
    OUTLINED_FUNCTION_2_1();
    v43 = a2;
    v44 = v13;
    v45 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "acc_connection_setAuthStatus: %@, authType %{coreacc:ACCAuthInfo_Type_t}d, authStatus %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x18u);
  }

  Status = acc_authInfo_getStatus(a1 + 48, a2);
  v15 = OUTLINED_FUNCTION_62_0();
  v16 = acc_authInfo_setStatus(a1 + 48, a2, a3);
  if (v16)
  {
    v17 = acc_authInfo_getStatus(a1 + 48, a2);
    v18 = OUTLINED_FUNCTION_62_0();
    if (v17 != Status)
    {
      v20 = v18;
      v21 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v22 = *(gLogObjects + 104);
      }

      else
      {
        v39 = gNumLogObjects;
        v22 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v41 = v21;
          OUTLINED_FUNCTION_2_1();
          v43 = v39;
          v22 = &_os_log_default;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = "NO";
        *buf = 138413570;
        v41 = v7;
        if (v15)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        if (v20)
        {
          v24 = "YES";
        }

        v42 = 1024;
        v43 = Status;
        v44 = 1024;
        v45 = v17;
        v46 = 1024;
        v47 = a2;
        v48 = 2080;
        v49 = v25;
        v50 = 2080;
        v51 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Authentication status changed for connection %@! oldAuthStatus: %{coreacc:ACCAuthInfo_Status_t}d, newAuthStatus: %{coreacc:ACCAuthInfo_Status_t}d, authType: %{coreacc:ACCAuthInfo_Type_t}d, wasAuthenticated: %s, isAuthenticated: %s", buf, 0x32u);
      }

      platform_notifications_authenticationStatusDidChangeForConnectionUUID(v7, Status, v17, a2, v20, v15);
      acc_connection_endpointIterateForConnection(a1);
      if ((v17 & 0xFFFFFFFD) == 1)
      {
        platform_analytics_connectionAuthUnsuccessful(a1, v17);
      }

      else if (v17 == 2)
      {
        platform_analytics_connectionPassedAuth(a1);
        goto LABEL_34;
      }

      if (v17 != 2)
      {
LABEL_52:
        if (*(a1 + 138) == 1)
        {
          platform_connectionInfo_accessoryConnectionInfoPropertyChanged(v7);
        }

        goto LABEL_14;
      }

LABEL_34:
      v26 = *(a1 + 8);
      if (v26 == 2)
      {
        v27 = gLogObjects;
        v28 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 14)
        {
          v29 = *(gLogObjects + 104);
        }

        else
        {
          v29 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            v41 = v27;
            OUTLINED_FUNCTION_2_1();
            v43 = v28;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v35, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          *buf = 0;
          OUTLINED_FUNCTION_38_3(&_mh_execute_header, v29, v30, "acc_connection_setAuthStatus: auth passed for BT connection, call acc_manager_checkForWirelessCTA", buf);
        }

        acc_manager_checkForWirelessCTA();
        v26 = *(a1 + 8);
      }

      if (v26 == 9)
      {
        v31 = gLogObjects;
        v32 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 14)
        {
          v33 = *(gLogObjects + 104);
        }

        else
        {
          v33 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = 134218240;
            v41 = v31;
            OUTLINED_FUNCTION_2_1();
            v43 = v32;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (OUTLINED_FUNCTION_79())
        {
          *buf = 0;
          OUTLINED_FUNCTION_38_3(&_mh_execute_header, v33, v34, "acc_connection_setAuthStatus: auth passed for NFC connection, call acc_manager_checkForInductiveCTA", buf);
        }

        acc_manager_checkForInductiveCTA();
      }

      goto LABEL_52;
    }
  }

LABEL_14:
  CFRelease(v7);
  return v16;
}

CFTypeRef acc_connection_copyUUID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 272));
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  pthread_mutex_unlock((a1 + 272));
  return v2;
}

void _CFDictionaryApplierFunction_findiAP2Endpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) == 4 && !*a3)
  {
    *a3 = a2;
  }
}

BOOL acc_connection_setAuthCTAAAllowed(_BOOL8 result, char a2)
{
  if (result)
  {
    return acc_authInfo_setCTAAllowed(result + 48, a2);
  }

  return result;
}

uint64_t acc_connection_getAuthStatus(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return acc_authInfo_getStatus(result + 48, a2);
  }

  return result;
}

BOOL acc_connection_isAuthenticated(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    return acc_authInfo_isAuthenticated(result + 48, a2);
  }

  return result;
}

uint64_t acc_connection_isAuthenticatedForInductivePowerIn(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  if (!OUTLINED_FUNCTION_62_0())
  {
    return 0;
  }

  v2 = acc_authInfo_copyCertCapabilities(v1 + 48);
  if (!v2)
  {
    v6 = logObjectForModule_3(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_79_0(v7, v8, v9, v10, v11);
    }

    return 0;
  }

  v3 = v2;
  CFDataGetBytePtr(v2);
  if (CFDataGetLength(v3) < 32)
  {
    v1 = 0;
  }

  else
  {
    if (*(v1 + 68) == 4)
    {
      canChargeInductiveFromAccessory = platform_auth_mfi4_canChargeInductiveFromAccessory();
    }

    else
    {
      canChargeInductiveFromAccessory = platform_auth_canChargeInductive();
    }

    v1 = canChargeInductiveFromAccessory;
  }

  CFRelease(v3);
  return v1;
}

uint64_t acc_connection_isAuthenticatedForAppMatchLaunch(uint64_t a1)
{
  if (!a1 || !acc_authInfo_isAuthenticated(a1 + 48, 6u))
  {
    return 0;
  }

  v2 = acc_authInfo_copyCertCapabilities(a1 + 48);
  if (!v2)
  {
    v8 = logObjectForModule_3(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_79_0(v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v3 = v2;
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v3);
  canAppMatchAppLaunch = 0;
  if (BytePtr && Length >= 32)
  {
    if (*(a1 + 68) == 4)
    {
      canAppMatchAppLaunch = platform_auth_mfi4_canAppMatchAppLaunch();
    }

    else
    {
      canAppMatchAppLaunch = 0;
    }
  }

  CFRelease(v3);
  return canAppMatchAppLaunch;
}

uint64_t acc_connection_getAccessoryInfo(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 120);
    if (!result)
    {
      OUTLINED_FUNCTION_33_3();
      if (v2)
      {
        acc_connection_mapAccessoryInfo(v1);
        return *(v1 + 120);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeRef acc_connection_copyIdentifier(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

void acc_connection_mapAccessoryInfo(uint64_t a1)
{
  if (a1)
  {
    if (!gLogObjects || gNumLogObjects < 14)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_19_5(3.8521e-34);
        OUTLINED_FUNCTION_6_9();
        _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
      }
    }

    else
    {
      v8 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v9 = *a1;
      v80 = 138412290;
      v81 = v9;
      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_73_0(v10, v11, v12, v13, v14);
    }

    if (acc_connection_getNumEndpoints(a1) >= 1)
    {
      if (*(a1 + 142) == 1)
      {
        v65 = logObjectForModule_3(13);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          LOWORD(v80) = 0;
          v33 = &_mh_execute_header;
          v36 = "Skipped mapping accessory info since connection is being destroyed.";
          v37 = &v80;
          v34 = v65;
          v35 = OS_LOG_TYPE_INFO;
          goto LABEL_57;
        }
      }

      else
      {
        v79 = 0;
        pthread_mutex_lock((a1 + 208));
        v15 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
        if (acc_properties_containsProperty(*(a1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
        {
          v16 = acc_properties_copyProperty(*(a1 + 128), v15);
          EndpointWithUUID = acc_manager_getEndpointWithUUID(v16);
          v79 = EndpointWithUUID;
          if (v16)
          {
            CFRelease(v16);
            EndpointWithUUID = v79;
          }

          if (gLogObjects)
          {
            v18 = gNumLogObjects <= 13;
          }

          else
          {
            v18 = 1;
          }

          v19 = !v18;
          if (EndpointWithUUID)
          {
            if (v19)
            {
              v20 = *(gLogObjects + 104);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_9_7(3.8521e-34);
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
            }

            if (OUTLINED_FUNCTION_93())
            {
              LOWORD(v80) = 0;
              OUTLINED_FUNCTION_18_7();
              _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 2u);
            }
          }

          else
          {
            if (v19)
            {
              v21 = *(gLogObjects + 104);
            }

            else if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_9_7(3.8521e-34);
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v58, v59, v60, v61, v62, 0x12u);
            }

            if (OUTLINED_FUNCTION_21())
            {
              LOWORD(v80) = 0;
              OUTLINED_FUNCTION_6_9();
              _os_log_error_impl(v47, v48, v49, v50, v51, 2u);
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_45_3();
        }

        pthread_mutex_unlock((a1 + 208));
        v26 = v79;
        if (v79)
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_45_3();
        if (gLogObjects && gNumLogObjects > 13)
        {
          v66 = *(gLogObjects + 104);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_9_7(3.8521e-34);
          OUTLINED_FUNCTION_6_9();
          _os_log_error_impl(v67, v68, v69, v70, v71, 0x12u);
        }

        if (OUTLINED_FUNCTION_76())
        {
          LOWORD(v80) = 0;
          OUTLINED_FUNCTION_18_7();
          _os_log_impl(v72, v73, OS_LOG_TYPE_INFO, v74, v75, 2u);
        }

        if (acc_connection_getNumEndpoints(a1) >= 1)
        {
          __chkstk_darwin();
          v77 = (&v78 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
          memset(v77, 170, v76);
          pthread_mutex_lock((a1 + 144));
          CFDictionaryGetKeysAndValues(*(a1 + 40), 0, v77);
          pthread_mutex_unlock((a1 + 144));
          v79 = *v77;
        }

        v26 = v79;
        if (v79)
        {
LABEL_36:
          v27 = *(a1 + 120);
          if (!v27)
          {
            v27 = acc_accInfo_create();
            *(a1 + 120) = v27;
            v26 = v79;
          }

          acc_accInfo_setAccessoryInfo(v27, v26[8]);
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v30 = *(gLogObjects + 104);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            v80 = 134218240;
            v81 = v28;
            v82 = 1024;
            LODWORD(v83) = v29;
            OUTLINED_FUNCTION_6_9();
            _os_log_error_impl(v39, v40, v41, v42, v43, 0x12u);
          }

          if (OUTLINED_FUNCTION_93())
          {
            v31 = *a1;
            v32 = v79[2];
            v80 = 138412546;
            v81 = v31;
            v82 = 2112;
            v83 = v32;
            OUTLINED_FUNCTION_18_7();
            OUTLINED_FUNCTION_58_1();
LABEL_45:
            _os_log_impl(v33, v34, v35, v36, v37, v38);
          }
        }

        else
        {
          v44 = gLogObjects;
          v45 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 14)
          {
            v46 = *(gLogObjects + 104);
          }

          else
          {
            v46 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              v80 = 134218240;
              v81 = v44;
              v82 = 1024;
              LODWORD(v83) = v45;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v80);
            }
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v80) = 0;
            v33 = &_mh_execute_header;
            v36 = "Couldn't find an endpoint to map accessory info to!";
            v37 = &v80;
            v34 = v46;
            v35 = OS_LOG_TYPE_DEFAULT;
LABEL_57:
            v38 = 2;
            goto LABEL_45;
          }
        }
      }
    }
  }
}

void *acc_connection_setProperties(uint64_t a1, const __CFDictionary *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 14;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v2 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
      }
    }

    else
    {
      v2 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v13 = *a1;
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_12_8(&_mh_execute_header, v14, v15, "Setting properties for connection %@: %@", v16, v17, v18, v19, v57);
    }

    pthread_mutex_lock((a1 + 208));
    acc_properties_copyProperties(*(a1 + 128));
    v20 = OUTLINED_FUNCTION_17_9();
    acc_properties_setProperties(v20, v21);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_50_0();
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v22 = *(gLogObjects + 104);
    }

    else if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      _os_log_error_impl(v32, v33, v34, v35, v36, 0x12u);
    }

    if (OUTLINED_FUNCTION_95())
    {
      v23 = *a1;
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_40();
      _os_log_impl(v24, v25, OS_LOG_TYPE_INFO, v26, v27, 0x16u);
    }

    OUTLINED_FUNCTION_33_3();
    if (v28 && (*(a1 + 142) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v29 = *(gLogObjects + 104);
      }

      else if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v47, v48, v49, v50, v51, 0x12u);
      }

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_3(v37, v38, v39, v40, v41);
      }

      acc_manager_checkForWirelessCTA();
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v30 = *(gLogObjects + 104);
      }

      else if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
      }

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_3(v42, v43, v44, v45, v46);
      }

      acc_manager_checkForInductiveCTA();
      if (acc_properties_containsProperty(a2, kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
      {
        acc_connection_mapAccessoryInfo(a1);
      }

      OUTLINED_FUNCTION_31_1();
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    OUTLINED_FUNCTION_40_3();
    if (v28)
    {
      platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*a1);
    }
  }

  return v2;
}

uint64_t acc_connection_copyProperty(uint64_t result, const void *a2)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    acc_properties_copyProperty(*(v2 + 128), a2);
    OUTLINED_FUNCTION_52_2();
    return a2;
  }

  return result;
}

uint64_t acc_connection_copyProperties(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    acc_properties_copyProperties(*(v1 + 128));
    OUTLINED_FUNCTION_52_2();
    return v2;
  }

  return result;
}

BOOL acc_connection_setSupervisedTransportsRestricted(uint64_t *a1, int a2)
{
  if (a1)
  {
    v3 = a2;
    if (*(a1 + 136) != a2)
    {
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 14;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
        }
      }

      else
      {
        v10 = *(gLogObjects + 104);
      }

      if (OUTLINED_FUNCTION_82())
      {
        v11 = *a1;
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_12_8(&_mh_execute_header, v12, v13, "Setting supervisedTransportsRestricted... (supervisedTransportsRestricted: %s, connectionUUID: %@)", v14, v15, v16, v17, v20);
      }

      *(a1 + 136) = v3;
      pthread_mutex_lock((a1 + 18));
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, a1[5]);
      pthread_mutex_unlock((a1 + 18));
      CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_supervisedTransportsRestrictedDidChange, 0);
    }
  }

  return a1 != 0;
}

void _CFDictionaryApplierFunction_supervisedTransportsRestrictedDidChange(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (EndpointWithUUID)
  {

    acc_endpoint_supervisedTransportsRestrictedDidChange(EndpointWithUUID);
  }
}

uint64_t acc_connection_isPublished(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 138);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void _CFDictionaryApplierFunction_findiAPEndpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) - 3 <= 1 && !*a3)
  {
    *a3 = a2;
  }
}

void _CFDictionaryApplierFunction_findEAServiceEndpoint(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    Protocol = acc_endpoint_getProtocol(a2);
    v6 = 11;
    if (*a2)
    {
      if (*(*a2 + 8) <= 9u)
      {
        v6 = *(*a2 + 8);
      }

      else
      {
        v6 = 11;
      }
    }

    if (Protocol != 5 || v6 == 6)
    {
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v8 = *(gLogObjects + 104);
      }

      else
      {
        v8 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v18 = a2[2];
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x22u);
      }
    }

    else if (!*a3)
    {
      *a3 = a2;
    }
  }
}

void _CFDictionaryApplierFunction_findInternalInfoEndpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) == 2 && !*a3)
  {
    *a3 = a2;
  }
}

void acc_connection_updateAcccessoryInfoIfNeeded(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v4 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
  if (!acc_properties_containsProperty(*(a1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
  {
    goto LABEL_19;
  }

  v5 = acc_properties_copyProperty(*(a1 + 128), v4);
  if (CFEqual(v5, a2))
  {
    EndpointWithUUID = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (v5)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:
  if (EndpointWithUUID)
  {
    v7 = *(a1 + 120);
    if (!v7)
    {
      v7 = acc_accInfo_create();
      *(a1 + 120) = v7;
    }

    acc_accInfo_setAccessoryInfo(v7, EndpointWithUUID[8]);
    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v9 = *(gLogObjects + 104);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        LODWORD(v30) = v8;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v23, v24, v25, v26, v27, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a1;
      v11 = EndpointWithUUID[2];
      OUTLINED_FUNCTION_9_0();
      v30 = v12;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_58_1();
      _os_log_impl(v13, v14, v15, v16, v17, v18);
    }

    return;
  }

LABEL_19:
  v19 = gLogObjects;
  v20 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 14)
  {
    v21 = *(gLogObjects + 104);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v28 = 134218240;
      v29 = v19;
      OUTLINED_FUNCTION_3();
      LODWORD(v30) = v20;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v28);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Couldn't find an endpoint to update accessory info with! Try mapAccessoryInfo", &v28, 2u);
  }

  acc_connection_mapAccessoryInfo(a1);
}

BOOL acc_connection_isConnectedThroughAdapter(_BOOL8 result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    Value = CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterVID);
    v3 = CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterPID);
    pthread_mutex_unlock((v1 + 208));
    if (Value)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    return !v4;
  }

  return result;
}

uint64_t acc_connection_getAdapterVID(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterVID);
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t acc_connection_getAdapterPID(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterPID);
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void platform_analytics_connectionWillBePublished(uint64_t *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50(a1);
    if (v2)
    {
      v3 = gLogObjects;
      v4 = gNumLogObjects;
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 7;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v42 = 134218240;
          v43 = v3;
          v44 = 1024;
          LODWORD(v45) = v4;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v42);
        }

        v8 = &_os_log_default;
        v7 = &_os_log_default;
      }

      else
      {
        v8 = *(gLogObjects + 48);
      }

      if (OUTLINED_FUNCTION_93())
      {
        v9 = *v1;
        v42 = 138412290;
        v43 = v9;
        OUTLINED_FUNCTION_15();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }

      v46[0] = @"connectionUUID";
      v15 = *v1;
      if (*v1)
      {
        v15 = CFRetain(v15);
      }

      v41 = v15;
      v40 = NSObjectIfNotNull(v15);
      OUTLINED_FUNCTION_39_2();
      v47[0] = v16;
      v46[1] = @"connectionType";
      v39 = [NSString stringWithUTF8String:acc_connection_getTypeString(v1)];
      v17 = NSObjectIfNotNull(v39);
      OUTLINED_FUNCTION_39_2();
      v47[1] = v18;
      v46[2] = @"unlockedSinceBoot";
      v19 = [NSNumber numberWithBool:platform_system_unlockedSinceBoot()];
      v47[2] = v19;
      v46[3] = @"deviceIsPowered";
      platform_power_getCurrentLimit(*v1);
      OUTLINED_FUNCTION_18_8();
      v20 = [NSNumber numberWithBool:?];
      v47[3] = v20;
      v46[4] = @"screenIsLocked";
      platform_system_isDeviceLocked();
      v21 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
      v47[4] = v21;
      v46[5] = @"ConnectedThroughAdapter";
      acc_connection_isConnectedThroughAdapter(v1);
      v22 = [OUTLINED_FUNCTION_37_1() numberWithBool:?];
      v47[5] = v22;
      v46[6] = @"AdapterVID";
      acc_connection_getAdapterVID(v1);
      v23 = [OUTLINED_FUNCTION_14_9() numberWithInt:?];
      v47[6] = v23;
      v46[7] = @"AdapterPID";
      acc_connection_getAdapterPID(v1);
      v24 = [OUTLINED_FUNCTION_14_9() numberWithInt:?];
      v47[7] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:8];
      v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

      v27 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_DigitalID);
      v28 = convertNSDataToNSString(v27, @"%02X");

      if (v28)
      {
        [v26 setObject:v28 forKey:@"lightningDigitalID"];
      }

      v29 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_PrimaryPortNumber);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        OUTLINED_FUNCTION_44_4();
      }

      CableType = platform_power_getCableType(*v1);
      if ((CableType - 1) <= 0xFFFFFFFD)
      {
        v31 = [NSNumber numberWithInt:CableType];
        [v26 setObject:v31 forKey:@"lightningCableType"];
      }

      v32 = gLogObjects;
      v33 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v34 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v42 = 134218240;
          v43 = v32;
          v44 = 1024;
          LODWORD(v45) = v33;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v42);
        }

        v34 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v42 = 138412546;
        v43 = @"com.apple.accessories.connection.added";
        v44 = 2112;
        v45 = v26;
        OUTLINED_FUNCTION_16_9(&_mh_execute_header, v37, v38, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v42);
      }

      AnalyticsSendEvent();
    }
  }
}

void platform_analytics_endpointWillBePublished(uint64_t a1)
{
  if (!a1 || !*a1 || !*(a1 + 8))
  {
    return;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_20(3.8521e-34);
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (OUTLINED_FUNCTION_24())
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    v91 = 138412546;
    v92 = v5;
    OUTLINED_FUNCTION_13_7();
    *(v8 + 14) = v7;
    OUTLINED_FUNCTION_16_9(&_mh_execute_header, v9, v10, "[#EventLogger] Endpoint will be published: %@ (connection %@)", &v91);
  }

  v89[0] = @"endpointUUID";
  v11 = *(a1 + 16);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  v86 = v11;
  v12 = NSObjectIfNotNull(v11);
  v84 = v12;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_10022D360;
  }

  v90[0] = v13;
  v89[1] = @"connectionUUID";
  v14 = *(a1 + 8);
  if (v14)
  {
    v14 = CFRetain(v14);
  }

  v82 = v14;
  v81 = NSObjectIfNotNull(v14);
  OUTLINED_FUNCTION_5_14();
  v90[1] = v15;
  v89[2] = @"connectionType";
  acc_connection_getTypeString(*a1);
  v78 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v77 = NSObjectIfNotNull(v78);
  OUTLINED_FUNCTION_5_14();
  v90[2] = v16;
  v89[3] = @"transportType";
  acc_endpoint_getTransportTypeString(a1);
  v76 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v75 = NSObjectIfNotNull(v76);
  OUTLINED_FUNCTION_5_14();
  v90[3] = v17;
  v89[4] = @"protocol";
  acc_endpoint_getProtocolString(a1);
  v74 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v18 = NSObjectIfNotNull(v74);
  OUTLINED_FUNCTION_5_14();
  v90[4] = v19;
  v89[5] = @"unlockedSinceBoot";
  platform_system_unlockedSinceBoot();
  v73 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
  v90[5] = v73;
  v89[6] = @"deviceIsPowered";
  platform_power_getCurrentLimit(*(a1 + 8));
  OUTLINED_FUNCTION_18_8();
  v20 = [NSNumber numberWithBool:?];
  v90[6] = v20;
  v89[7] = @"screenIsLocked";
  platform_system_isDeviceLocked();
  v21 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
  v90[7] = v21;
  v89[8] = @"ConnectedThroughAdapter";
  acc_connection_isConnectedThroughAdapter(*a1);
  v22 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
  v90[8] = v22;
  v89[9] = @"AdapterVID";
  acc_connection_getAdapterVID(*a1);
  v23 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
  v90[9] = v23;
  v89[10] = @"AdapterPID";
  acc_connection_getAdapterPID(*a1);
  v24 = [OUTLINED_FUNCTION_20_5() numberWithInt:?];
  v90[10] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:11];
  v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

  v27 = acc_connection_copyProperty(*a1, kCFACCProperties_Connection_PrimaryPortNumber);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v26 setObject:v27 forKey:@"lightningPrimaryPortNumber"];
  }

  if (acc_endpoint_getTransportType(a1) == 13)
  {
    v28 = v26;
    v29 = acc_endpoint_copyIdentifier(a1);
    if (!v29)
    {
      v33 = 0;
      v32 = 0;
      v31 = 0;
      goto LABEL_67;
    }

    [v28 setValue:v29 forKey:@"nfcTagId"];
    v30 = acc_endpoint_copyProperty(a1);
    v31 = v30;
    if (!v30)
    {
      v33 = 0;
      v32 = 0;
      goto LABEL_67;
    }

    v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%02x", [v30 charValue]);
    if (!v32)
    {
      v33 = 0;
      goto LABEL_67;
    }

    [v28 setValue:v32 forKey:@"nfcAccessoryType"];
    v33 = [NSMutableArray arrayWithObject:v32];
    if (!v33)
    {
      goto LABEL_67;
    }

    v85 = v31;
    v34 = acc_manager_copyAllEndpoints();
    if (!v34)
    {
      goto LABEL_67;
    }

    v35 = v34;
    v83 = v32;
    Count = CFDictionaryGetCount(v34);
    if (!Count || (v37 = Count, (v38 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL)) == 0))
    {
LABEL_66:
      CFRelease(v35);
      v32 = v83;
      v31 = v85;
LABEL_67:

      goto LABEL_68;
    }

    v79 = v29;
    v80 = v27;
    v87 = v38;
    CFDictionaryGetKeysAndValues(v35, 0, v38);
    if (v37 >= 1)
    {
      v39 = v87;
      do
      {
        v40 = *v39;
        if (*v39)
        {
          if (acc_endpoint_getTransportType(*v39) == 13 && !CFEqual(*(a1 + 16), v40[2]))
          {
            v41 = acc_endpoint_copyProperty(v40);
            if (v41)
            {
              v42 = v41;
              v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%02x", [v41 charValue]);
              [v33 addObject:v43];
            }
          }
        }

        ++v39;
        --v37;
      }

      while (v37);
    }

    if ([v33 count] > 1)
    {
      [v33 sortUsingSelector:"compare:"];
      v44 = [v33 componentsJoinedByString:{@", "}];
      [v28 setValue:v44 forKey:@"nfcStackedType"];
    }

    memset(v88, 170, sizeof(v88));
    [v33 count];
    v45 = [OUTLINED_FUNCTION_20_5() numberWithUnsignedLong:?];
    [v28 setValue:v45 forKey:@"nfcAttachedCount"];

    v46 = +[NSDate date];
    _getWeekAndMonth(v46, &v88[3], &v88[2]);

    v47 = +[ACCUserDefaults sharedDefaults];
    v48 = [v47 objectForKey:@"NFCAnalyticsDate"];

    _getWeekAndMonth(v48, &v88[1], v88);
    if (v88[3] == v88[1])
    {
      if (v88[2] == v88[0])
      {
LABEL_47:
        v29 = v79;
        v27 = v80;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v54 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_20(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v54 = &_os_log_default;
          v55 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          OUTLINED_FUNCTION_12_9(@"com.apple.accessories.nfc.endpoint.added", 5.778e-34);
          *(v56 + 14) = v28;
          OUTLINED_FUNCTION_16_9(&_mh_execute_header, v57, v58, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v91);
        }

        AnalyticsSendEvent();
        if ([v33 count] >= 2)
        {
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v59 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_2_20(3.8521e-34);
              OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v72, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            v59 = &_os_log_default;
            v60 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_24())
          {
            OUTLINED_FUNCTION_12_9(@"com.apple.accessories.nfc.stack", 5.778e-34);
            *(v61 + 14) = v28;
            OUTLINED_FUNCTION_16_9(&_mh_execute_header, v62, v63, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v91);
          }

          AnalyticsSendEvent();
        }

        free(v87);
        goto LABEL_66;
      }
    }

    else
    {
      v49 = [NSNumber numberWithBool:1];
      [v28 setValue:v49 forKey:@"nfcAttachedThisWeek"];

      if (v88[2] == v88[0])
      {
LABEL_46:
        v51 = +[ACCUserDefaults sharedDefaults];
        v52 = +[NSDate date];
        [v51 setObject:v52 forKey:@"NFCAnalyticsDate"];

        v53 = +[ACCUserDefaults sharedDefaults];
        [v53 synchronize];

        goto LABEL_47;
      }
    }

    v50 = [NSNumber numberWithBool:1];
    [v28 setValue:v50 forKey:@"nfcAttachedThisMonth"];

    goto LABEL_46;
  }

LABEL_68:
  if (gLogObjects && gNumLogObjects >= 7)
  {
    v64 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_20(3.8521e-34);
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v64 = &_os_log_default;
    v65 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    OUTLINED_FUNCTION_12_9(@"com.apple.accessories.endpoint.added", 5.778e-34);
    *(v66 + 14) = v26;
    OUTLINED_FUNCTION_16_9(&_mh_execute_header, v67, v68, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v91);
  }

  AnalyticsSendEvent();
}

void platform_analytics_endpointProtocolDidChange(uint64_t *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50(a1);
    if (v2)
    {
      if (*(v1 + 8))
      {
        if (gLogObjects)
        {
          v3 = gNumLogObjects < 7;
        }

        else
        {
          v3 = 1;
        }

        if (v3)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v5 = &_os_log_default;
          v4 = &_os_log_default;
        }

        else
        {
          v5 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v6 = *(v1 + 8);
          OUTLINED_FUNCTION_4_16(*(v1 + 16), 5.778e-34);
          v47 = v7;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v8, v9, "[#EventLogger] Protocol changed for endpoint: %@ (connection %@)");
        }

        v45[0] = @"endpointUUID";
        v10 = *(v1 + 16);
        if (v10)
        {
          v10 = CFRetain(v10);
        }

        v44 = v10;
        v11 = NSObjectIfNotNull(v10);
        v43 = v11;
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = &stru_10022D360;
        }

        v46[0] = v12;
        v45[1] = @"connectionUUID";
        v13 = *(v1 + 8);
        if (v13)
        {
          v13 = CFRetain(v13);
        }

        v42 = v13;
        v41 = NSObjectIfNotNull(v13);
        OUTLINED_FUNCTION_5_14();
        v46[1] = v14;
        v45[2] = @"connectionType";
        v15 = OUTLINED_FUNCTION_41_2();
        acc_connection_getTypeString(v15);
        v40 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v39 = NSObjectIfNotNull(v40);
        OUTLINED_FUNCTION_5_14();
        v46[2] = v16;
        v45[3] = @"transportType";
        v17 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getTransportTypeString(v17);
        v38 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v18 = NSObjectIfNotNull(v38);
        OUTLINED_FUNCTION_5_14();
        v46[3] = v19;
        v45[4] = @"protocol";
        v20 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getProtocolString(v20);
        v37 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v21 = NSObjectIfNotNull(v37);
        OUTLINED_FUNCTION_5_14();
        v46[4] = v22;
        v45[5] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v23 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v46[5] = v23;
        v45[6] = @"deviceIsPowered";
        platform_power_getCurrentLimit(*(v1 + 8));
        OUTLINED_FUNCTION_18_8();
        v24 = [NSNumber numberWithBool:?];
        v46[6] = v24;
        v45[7] = @"ConnectedThroughAdapter";
        acc_connection_isConnectedThroughAdapter(*v1);
        v25 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
        v46[7] = v25;
        v45[8] = @"AdapterVID";
        acc_connection_getAdapterVID(*v1);
        v26 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v46[8] = v26;
        v45[9] = @"AdapterPID";
        acc_connection_getAdapterPID(*v1);
        v27 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v46[9] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:10];
        v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

        v30 = acc_connection_copyProperty(*v1, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 setObject:v30 forKey:@"lightningPrimaryPortNumber"];
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v31 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v31 = &_os_log_default;
          v32 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(@"com.apple.accessories.endpoint.protocolChanged", 5.778e-34);
          v47 = v29;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v33, v34, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }
}

void platform_analytics_endpointAccessoryInfoDidChange()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v3 = v0;
    if (*v0)
    {
      if (v0[1])
      {
        v4 = v2;
        v5 = v1;
        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if (gLogObjects)
        {
          v8 = gNumLogObjects < 7;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v133 = 134218240;
            v134 = v6;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v135) = v7;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v10 = &_os_log_default;
          v9 = &_os_log_default;
        }

        else
        {
          v10 = *(gLogObjects + 48);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v3[1];
          v11 = v3[2];
          v133 = 138412546;
          v134 = v11;
          OUTLINED_FUNCTION_13_7();
          v135 = v13;
          OUTLINED_FUNCTION_78(&_mh_execute_header, v10, v14, "[#EventLogger] Accessory info changed for endpoint: %@ (connection %@)", &v133);
        }

        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v17 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v133 = 134218240;
            v134 = v15;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v135) = v16;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v17 = &_os_log_default;
          v18 = &_os_log_default;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v133 = 138412546;
          v134 = v5;
          OUTLINED_FUNCTION_13_7();
          v135 = v4;
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[#EventLogger] oldAccessoryInfo: %@, newAccessoryInfo: %@", &v133, 0x16u);
        }

        v19 = [(__CFString *)v4 isEqualToDictionary:v5];
        if (v4 == v5)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v23 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v133 = 134218240;
            v134 = v21;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v135) = v22;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v23 = &_os_log_default;
          v24 = &_os_log_default;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v80 = "YES";
          if (v20)
          {
            v80 = "NO";
          }

          v133 = 136315138;
          v134 = v80;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "[#EventLogger] accInfoIsDifferent: %s", &v133, 0xCu);
        }

        if ((v20 & 1) == 0)
        {
          AccessoryInfo = acc_endpoint_getAccessoryInfo(v3);
          v26 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
          if (v26)
          {
            v131[0] = @"endpointUUID";
            v27 = v3[2];
            if (v27)
            {
              v28 = CFRetain(v27);
            }

            else
            {
              v28 = 0;
            }

            NSObjectIfNotNull(v28);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_11_6();
            v132[0] = v29;
            v131[1] = @"connectionUUID";
            v30 = v3[1];
            v122 = v4;
            v116 = v31;
            v118 = v28;
            if (v30)
            {
              v30 = CFRetain(v30);
            }

            v114 = v30;
            v112 = NSObjectIfNotNull(v30);
            OUTLINED_FUNCTION_11_6();
            v132[1] = v32;
            v131[2] = @"connectionType";
            acc_connection_getTypeString(*v3);
            v110 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v108 = NSObjectIfNotNull(v110);
            OUTLINED_FUNCTION_11_6();
            v132[2] = v33;
            v131[3] = @"transportType";
            acc_endpoint_getTransportTypeString(v3);
            v106 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v104 = NSObjectIfNotNull(v106);
            OUTLINED_FUNCTION_11_6();
            v132[3] = v34;
            v131[4] = @"protocol";
            acc_endpoint_getProtocolString(v3);
            v102 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v101 = NSObjectIfNotNull(v102);
            OUTLINED_FUNCTION_11_6();
            v132[4] = v35;
            v131[5] = @"accessoryName";
            v100 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_Name];
            v99 = NSObjectIfNotNull(v100);
            OUTLINED_FUNCTION_11_6();
            v132[5] = v36;
            v131[6] = @"accessoryManufacturer";
            v98 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_Manufacturer];
            v97 = NSObjectIfNotNull(v98);
            OUTLINED_FUNCTION_11_6();
            v132[6] = v37;
            v131[7] = @"accessoryModel";
            v96 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_Model];
            v95 = NSObjectIfNotNull(v96);
            OUTLINED_FUNCTION_11_6();
            v132[7] = v38;
            v131[8] = @"accessoryHardwareVersion";
            v94 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_HardwareVersion];
            v93 = NSObjectIfNotNull(v94);
            OUTLINED_FUNCTION_11_6();
            v132[8] = v39;
            v131[9] = @"accessoryFirmwareVersionActive";
            v92 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
            v91 = NSObjectIfNotNull(v92);
            OUTLINED_FUNCTION_11_6();
            v132[9] = v40;
            v131[10] = @"accessoryFirmwareVersionPending";
            v90 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
            v89 = NSObjectIfNotNull(v90);
            OUTLINED_FUNCTION_11_6();
            v132[10] = v41;
            v131[11] = @"accessoryVID";
            v88 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_VendorID];
            v87 = NSObjectIfNotNull(v88);
            OUTLINED_FUNCTION_11_6();
            v132[11] = v42;
            v131[12] = @"accessoryPID";
            v120 = v26;
            v86 = [(__CFDictionary *)v26 objectForKeyedSubscript:kACCInfo_ProductID];
            v43 = NSObjectIfNotNull(v86);
            OUTLINED_FUNCTION_11_6();
            v132[12] = v44;
            v131[13] = @"unlockedSinceBoot";
            platform_system_unlockedSinceBoot();
            v85 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v132[13] = v85;
            v131[14] = @"deviceIsPowered";
            platform_power_getCurrentLimit(v3[1]);
            OUTLINED_FUNCTION_18_8();
            v45 = [NSNumber numberWithBool:?];
            v132[14] = v45;
            v131[15] = @"screenIsLocked";
            platform_system_isDeviceLocked();
            v46 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v132[15] = v46;
            v131[16] = @"authState";
            acc_authInfo_isAuthenticated(*v3 + 48, 6u);
            v47 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v132[16] = v47;
            v131[17] = @"authVersion";
            v48 = [NSNumber numberWithInt:*(*v3 + 68)];
            v132[17] = v48;
            v131[18] = @"ConnectedThroughAdapter";
            v49 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v3)];
            v132[18] = v49;
            v131[19] = @"AdapterVID";
            acc_connection_getAdapterVID(*v3);
            v50 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
            v132[19] = v50;
            v131[20] = @"AdapterPID";
            acc_connection_getAdapterPID(*v3);
            v51 = [OUTLINED_FUNCTION_20_5() numberWithInt:?];
            v132[20] = v51;
            v52 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:21];
            v124 = [NSMutableDictionary dictionaryWithDictionary:v52];

            v53 = acc_connection_copyProperty(*v3, kCFACCProperties_Connection_PrimaryPortNumber);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(__CFString *)v124 setObject:v53 forKey:@"lightningPrimaryPortNumber"];
            }

            v54 = gLogObjects;
            v55 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v56 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v133 = 134218240;
                v134 = v54;
                OUTLINED_FUNCTION_17_0();
                LODWORD(v135) = v55;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v56 = &_os_log_default;
              v57 = &_os_log_default;
            }

            v26 = v120;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v133 = 138412546;
              v134 = @"com.apple.accessories.endpoint.accessoryInfoChanged";
              OUTLINED_FUNCTION_13_7();
              v135 = v124;
              OUTLINED_FUNCTION_78(&_mh_execute_header, v56, v58, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v133);
            }

            AnalyticsSendEvent();
            v4 = v122;
          }

          v59 = v4;
          if (v59)
          {
            v130[0] = &__kCFBooleanTrue;
            v129[0] = IAPAppAccessoryConnectedKey;
            v129[1] = IAPAppAccessoryNameKey;
            v60 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v123 = isNSObjectNull(v60);
            if (v123)
            {
              v61 = &stru_10022D360;
            }

            else
            {
              v61 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v109 = v61;
            v130[1] = v61;
            v129[2] = IAPAppAccessoryManufacturerKey;
            v62 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v119 = isNSObjectNull(v62);
            if (v119)
            {
              v63 = &stru_10022D360;
            }

            else
            {
              v63 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v107 = v63;
            v130[2] = v63;
            v129[3] = IAPAppAccessoryModelNumberKey;
            v64 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v115 = isNSObjectNull(v64);
            if (v115)
            {
              v65 = &stru_10022D360;
            }

            else
            {
              v65 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v105 = v65;
            v130[3] = v65;
            v129[4] = IAPAppAccessorySerialNumberKey;
            v113 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v117 = v64;
            v111 = isNSObjectNull(v113);
            if (v111)
            {
              v66 = &stru_10022D360;
            }

            else
            {
              v66 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v103 = v66;
            v130[4] = v66;
            v129[5] = IAPAppAccessoryFirmwareRevisionKey;
            v67 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v68 = isNSObjectNull(v67);
            v121 = v62;
            if (v68)
            {
              v69 = &stru_10022D360;
            }

            else
            {
              v69 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v130[5] = v69;
            v129[6] = IAPAppAccessoryHardwareRevisionKey;
            v70 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v71 = isNSObjectNull(v70);
            v72 = v60;
            if (v71)
            {
              v73 = &stru_10022D360;
            }

            else
            {
              v73 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v130[6] = v73;
            v129[7] = IAPAppAccessoryConnectionTimeInSecKey;
            v125 = v3;
            v74 = [NSNumber numberWithLong:acc_endpoint_getCreationTimestampMS(v3) / 0x3E8uLL];
            v130[7] = v74;
            v75 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:8];

            if ((v71 & 1) == 0)
            {
            }

            if ((v68 & 1) == 0)
            {
            }

            if ((v111 & 1) == 0)
            {
            }

            if ((v115 & 1) == 0)
            {
            }

            if ((v119 & 1) == 0)
            {
            }

            if ((v123 & 1) == 0)
            {
            }

            v76 = [NSString stringWithString:v125[2]];
            v77 = _powerLogQueue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __platform_analytics_endpointAccessoryInfoDidChange_block_invoke;
            block[3] = &unk_100225A08;
            v127 = v76;
            v128 = v75;
            v78 = v75;
            v79 = v76;
            dispatch_async(v77, block);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void platform_analytics_endpointWillBeDestroyed()
{
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_50(v1);
    if (v2)
    {
      if (v0[2] && v0[1])
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v3 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v3 = &_os_log_default;
          v4 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v5 = v0[1];
          OUTLINED_FUNCTION_4_16(v0[2], 5.778e-34);
          v125 = v6;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v7, v8, "[#EventLogger] Endpoint will be destroyed: %@ (connection %@)");
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(v0);
        v10 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v121[0] = @"endpointUUID";
        v11 = v0[2];
        if (v11)
        {
          v12 = CFRetain(v11);
        }

        else
        {
          v12 = 0;
        }

        NSObjectIfNotNull(v12);
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_5_14();
        v122[0] = v13;
        v121[1] = @"connectionUUID";
        v14 = v0[1];
        v111 = v15;
        v113 = v12;
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v109 = v14;
        v107 = NSObjectIfNotNull(v14);
        OUTLINED_FUNCTION_5_14();
        v122[1] = v16;
        v121[2] = @"connectionType";
        v17 = OUTLINED_FUNCTION_41_2();
        acc_connection_getTypeString(v17);
        v105 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v103 = NSObjectIfNotNull(v105);
        OUTLINED_FUNCTION_5_14();
        v122[2] = v18;
        v121[3] = @"transportType";
        v19 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getTransportTypeString(v19);
        v101 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v99 = NSObjectIfNotNull(v101);
        OUTLINED_FUNCTION_5_14();
        v122[3] = v20;
        v121[4] = @"protocol";
        v21 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getProtocolString(v21);
        v96 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v94 = NSObjectIfNotNull(v96);
        OUTLINED_FUNCTION_5_14();
        v122[4] = v22;
        v121[5] = @"accessoryName";
        v71 = kACCInfo_Name;
        v92 = [(__CFDictionary *)v10 objectForKeyedSubscript:?];
        v90 = NSObjectIfNotNull(v92);
        OUTLINED_FUNCTION_5_14();
        v122[5] = v23;
        v121[6] = @"accessoryManufacturer";
        v72 = kACCInfo_Manufacturer;
        v89 = [(__CFDictionary *)v10 objectForKeyedSubscript:?];
        v88 = NSObjectIfNotNull(v89);
        OUTLINED_FUNCTION_5_14();
        v122[6] = v24;
        v121[7] = @"accessoryModel";
        v87 = [(__CFDictionary *)v10 objectForKeyedSubscript:?];
        v86 = NSObjectIfNotNull(v87);
        OUTLINED_FUNCTION_5_14();
        v122[7] = v25;
        v121[8] = @"accessoryHardwareVersion";
        v85 = [(__CFDictionary *)v10 objectForKeyedSubscript:?];
        v84 = NSObjectIfNotNull(v85);
        OUTLINED_FUNCTION_5_14();
        v122[8] = v26;
        v121[9] = @"accessoryFirmwareVersionActive";
        v73 = kACCInfo_FirmwareVersionActive;
        v83 = [(__CFDictionary *)v10 objectForKeyedSubscript:?];
        v82 = NSObjectIfNotNull(v83);
        OUTLINED_FUNCTION_5_14();
        v122[9] = v27;
        v121[10] = @"accessoryFirmwareVersionPending";
        v81 = [(__CFDictionary *)v10 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v80 = NSObjectIfNotNull(v81);
        OUTLINED_FUNCTION_5_14();
        v122[10] = v28;
        v121[11] = @"accessoryVID";
        v79 = [(__CFDictionary *)v10 objectForKeyedSubscript:kACCInfo_VendorID];
        v78 = NSObjectIfNotNull(v79);
        OUTLINED_FUNCTION_5_14();
        v122[11] = v29;
        v121[12] = @"accessoryPID";
        v115 = v10;
        v77 = [(__CFDictionary *)v10 objectForKeyedSubscript:kACCInfo_ProductID];
        v76 = NSObjectIfNotNull(v77);
        OUTLINED_FUNCTION_5_14();
        v122[12] = v30;
        v121[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v75 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v122[13] = v75;
        v121[14] = @"deviceIsPowered";
        platform_power_getCurrentLimit(v0[1]);
        OUTLINED_FUNCTION_18_8();
        v74 = [NSNumber numberWithBool:?];
        v122[14] = v74;
        v121[15] = @"duration";
        v31 = [NSNumber numberWithInt:(acc_endpoint_getDurationMS(v0) / 1000)];
        v122[15] = v31;
        v121[16] = @"screenIsLocked";
        platform_system_isDeviceLocked();
        v32 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v122[16] = v32;
        v121[17] = @"authState";
        acc_authInfo_isAuthenticated(*v0 + 48, 6u);
        v33 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v122[17] = v33;
        v121[18] = @"authVersion";
        v34 = [NSNumber numberWithInt:*(*v0 + 68)];
        v122[18] = v34;
        v121[19] = @"ConnectedThroughAdapter";
        v35 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v0)];
        v122[19] = v35;
        v121[20] = @"AdapterVID";
        acc_connection_getAdapterVID(*v0);
        v36 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
        v122[20] = v36;
        v121[21] = @"AdapterPID";
        acc_connection_getAdapterPID(*v0);
        v37 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
        v122[21] = v37;
        v38 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:22];
        v39 = [NSMutableDictionary dictionaryWithDictionary:v38];

        v40 = acc_connection_copyProperty(*v0, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 setObject:v40 forKey:@"lightningPrimaryPortNumber"];
        }

        v41 = gLogObjects;
        v42 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v43 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v123 = 134218240;
            v124 = v41;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v125) = v42;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v43 = &_os_log_default;
          v44 = &_os_log_default;
        }

        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v123 = 138412546;
          v124 = @"com.apple.accessories.endpoint.removed";
          OUTLINED_FUNCTION_13_7();
          v125 = v39;
          OUTLINED_FUNCTION_78(&_mh_execute_header, v43, v45, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v123);
        }

        AnalyticsSendEvent();
        v46 = acc_endpoint_getAccessoryInfo(v0);
        v47 = acc_accInfo_copyAccessoryInfoDictionary(v46);
        v48 = v47;
        if (v47)
        {
          v120[0] = &__kCFBooleanFalse;
          v119[0] = IAPAppAccessoryConnectedKey;
          v119[1] = IAPAppAccessoryNameKey;
          v49 = [(__CFDictionary *)v47 objectForKeyedSubscript:v71];
          v114 = isNSObjectNull(v49);
          if (v114)
          {
            v50 = &stru_10022D360;
          }

          else
          {
            v50 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v120[1] = v50;
          v119[2] = IAPAppAccessoryManufacturerKey;
          v51 = [(__CFDictionary *)v48 objectForKeyedSubscript:v72];
          v110 = isNSObjectNull(v51);
          if (v110)
          {
            v52 = &stru_10022D360;
          }

          else
          {
            v52 = [(__CFDictionary *)v48 objectForKeyedSubscript:v72];
          }

          v97 = v52;
          v120[2] = v52;
          v119[3] = IAPAppAccessoryModelNumberKey;
          v53 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v106 = isNSObjectNull(v53);
          if (v106)
          {
            v54 = &stru_10022D360;
          }

          else
          {
            v54 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v95 = v54;
          v120[3] = v54;
          v119[4] = IAPAppAccessorySerialNumberKey;
          v55 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v112 = v51;
          v102 = isNSObjectNull(v55);
          if (v102)
          {
            v56 = &stru_10022D360;
          }

          else
          {
            v56 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v93 = v56;
          v120[4] = v56;
          v119[5] = IAPAppAccessoryFirmwareRevisionKey;
          v100 = [(__CFDictionary *)v48 objectForKeyedSubscript:v73];
          v57 = isNSObjectNull(v100);
          v104 = v55;
          if (v57)
          {
            v58 = &stru_10022D360;
          }

          else
          {
            v58 = [(__CFDictionary *)v48 objectForKeyedSubscript:v73];
          }

          v91 = v58;
          v120[5] = v58;
          v119[6] = IAPAppAccessoryHardwareRevisionKey;
          v59 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v60 = isNSObjectNull(v59);
          v98 = v50;
          v108 = v53;
          if (v60)
          {
            v61 = &stru_10022D360;
          }

          else
          {
            v61 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v120[6] = v61;
          v119[7] = IAPAppAccessoryConnectionTimeInSecKey;
          v62 = [NSNumber numberWithLong:acc_endpoint_getCreationTimestampMS(v0) / 0x3E8uLL];
          v120[7] = v62;
          v119[8] = IAPAppAccessoryUsageTimeInSecsKey;
          v63 = [NSNumber numberWithLong:acc_endpoint_getDurationMS(v0) / 0x3E8];
          v120[8] = v63;
          v64 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:9];

          if ((v60 & 1) == 0)
          {
          }

          if ((v57 & 1) == 0)
          {
          }

          if ((v102 & 1) == 0)
          {
          }

          if ((v106 & 1) == 0)
          {
          }

          if ((v110 & 1) == 0)
          {
          }

          if ((v114 & 1) == 0)
          {
          }

          v65 = [NSString stringWithString:v0[2]];
          v66 = _powerLogQueue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __platform_analytics_endpointWillBeDestroyed_block_invoke;
          block[3] = &unk_100225A08;
          v117 = v65;
          v118 = v64;
          v67 = v64;
          v68 = v65;
          dispatch_async(v66, block);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29();
}