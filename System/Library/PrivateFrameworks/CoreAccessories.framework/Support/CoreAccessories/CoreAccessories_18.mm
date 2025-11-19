uint64_t _artworkFileTransferEndHandler(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*result)
    {
      return 0;
    }

    if (gLogObjects && gNumLogObjects >= 32)
    {
      v4 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
    }

    v5 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v2[26];
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 8u);
    }

    v12 = *(*v2 + 176);
    if (v12)
    {
      result = *(v12 + 16);
      if (result)
      {
        result = iap2_feature_getFeature(result, 0xEu);
        if (result)
        {
          return _handleFileTransferEnd(@"#Artwork", v2, (result + 64), a2);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _handleFileTransferEnd(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  if (!a3 || !*a2)
  {
    return v5;
  }

  if (gLogObjects && gNumLogObjects >= 32)
  {
    v8 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v40, v41, v42, v43, v44, v45);
  }

  v9 = OUTLINED_FUNCTION_66_2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(a2 + 104);
    v12 = *(a2 + 109);
    v13 = *(a2 + 32);
    v14 = a3[1];
    v15 = *a3;
    v16 = a3[2];
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_48_1();
    _os_log_impl(v17, v18, OS_LOG_TYPE_INFO, v19, v20, 0x34u);
  }

  v21 = *(a2 + 104);
  if ((v21 - 6) >= 2)
  {
    if (v21 == 5)
    {
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v25 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v73, v74, v75, v76, v77, v78);
      }

      v31 = OUTLINED_FUNCTION_76_5();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(a2 + 104);
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_101_1(v34, v35, v36, v37, v38);
      }

      return 0;
    }

    if (v21 != 4)
    {
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v26 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v79, v80, v81, v82, v83, v84);
      }

      if (OUTLINED_FUNCTION_17())
      {
        v54 = *(a2 + 104);
        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v55, v56, v57, v58, v59, v60);
      }

      return 0;
    }
  }

  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  v22 = *(*a2 + 176);
  if (!v22)
  {
    return 0;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    return 0;
  }

  v5 = iap2_sessionFileTransfer_removeTransferForFeature(v23, 14, a2);
  if (!v5)
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v24 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v67, v68, v69, v70, v71, v72);
    }

    if (OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_48_2();
      _os_log_error_impl(v50, v51, OS_LOG_TYPE_ERROR, v52, v53, 0xCu);
    }
  }

  v27 = *(a2 + 109);
  v28 = *(a2 + 64);
  if (v28 == a4)
  {
    if (a4)
    {
      free(v28);
      *(a2 + 64) = 0;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v29 = *(gLogObjects + 248);
    }

    else
    {
      v29 = &_os_log_default;
      if (OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v61, v62, v63, v64, v65, v66);
      }
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v85 = *(a2 + 104);
      v86 = *(a2 + 109);
      v87 = *(a2 + 16);
      v88 = *(a2 + 64);
      OUTLINED_FUNCTION_48_2();
      _os_log_fault_impl(v46, v47, OS_LOG_TYPE_FAULT, v48, v49, 0x3Au);
    }
  }

  if (*a3 == 1 && v27 == a3[1])
  {
    v30 = *(a3 + 1);
    if (v30)
    {
      CFRelease(v30);
      *(a3 + 1) = 0;
    }

    a3[2] = 0;
    *a3 = 0;
  }

  return v5;
}

uint64_t _playbackQueueFileTransferEndHandler(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (!*result)
    {
      return 0;
    }

    if (gLogObjects && gNumLogObjects >= 32)
    {
      v4 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18, v19);
    }

    v5 = OUTLINED_FUNCTION_76_5();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v2[26];
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 8u);
    }

    v12 = *(*v2 + 176);
    if (v12)
    {
      result = *(v12 + 16);
      if (result)
      {
        result = iap2_feature_getFeature(result, 0xEu);
        if (result)
        {
          return _handleFileTransferEnd(@"#PlaybackQueueList", v2, (result + 120), a2);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void logObjectForModule_cold_1_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __iAP2FileTransferSendBufferPacket_cold_4(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *(a1 + 108);
  v8 = *a2;
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
}

void iAP2FileTransferDelete_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_28(a1, __stack_chk_guard);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x54u);
}

void iAP2FileTransferCleanup_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_28(a1, __stack_chk_guard);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x54u);
}

void iAP2FileTransferSuccess_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_28(a1, __stack_chk_guard);
  v7 = *(v1 + 16);
  v8 = *(v1 + 40);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x54u);
}

void iAP2FileTransferSuccess_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_30(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void iAP2FileTransferResume_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x44u);
}

void iAP2FileTransferResume_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_30(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void iAP2FileTransferResume_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_5_30(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void iAP2FileTransferCancel_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x44u);
}

void iAP2FileTransferCancel_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_5_30(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void iAP2FileTransferCancel_cold_7(uint64_t a1, int *a2)
{
  v7 = *(a1 + 109);
  v8 = *a2;
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x24u);
}

void platform_usb_setUSBHostHIDInterface_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _getUSBHostPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformUSBHostPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#USB] Could not find plugin conforming to %@!", &v3, 0xCu);
}

void platform_usb_clearUSBHostHIDInterfaces_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void platform_usb_configureUSBHostNCMInterface_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void platform_usb_setNeedOutZlp_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t genericMFi_appLaunch_create(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (genericMFi_endpoint_getFeature(result, 2u))
    {
      return 0;
    }

    result = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405F07FB98uLL);
    if (result)
    {
      v2 = result;
      if (genericMFi_endpoint_setFeature(v1, 2u, result))
      {
        return 1;
      }

      free(v2);
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_appLaunch_requestAppLaunch(uint64_t result, const __CFString *a2, int a3)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    v30 = logObjectForModule_33();
    result = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315138;
    v42 = "genericMFi_appLaunch_requestAppLaunch";
    v31 = "%s: Missing appBundleID - ignoring request";
    v32 = v30;
    v33 = 12;
    goto LABEL_52;
  }

  v5 = result;
  if ((genericMFi_endpoint_certCapsValidForAppMatchLaunch(result) & 1) == 0)
  {
    v34 = logObjectForModule_33();
    result = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_1_30();
    v44 = a2;
    v31 = "%s: Certificate doesn't allow AppLaunch, Skip!!! appBundleID %@";
    v32 = v34;
    v33 = 22;
LABEL_52:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    return 0;
  }

  result = genericMFi_endpoint_getFeature(v5, 2u);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v9 = *(gLogObjects + 488);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = v7;
      v43 = 1024;
      LODWORD(v44) = v8;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_30();
    v44 = a2;
    v45 = 1024;
    LODWORD(v46) = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: bundleID %@, launchMethod %d", buf, 0x1Cu);
  }

  v10 = SBSCopyFrontmostApplicationDisplayIdentifier();
  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v13 = *(gLogObjects + 488);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v42 = v11;
      v43 = 1024;
      LODWORD(v44) = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_30();
    v44 = v10;
    v45 = v14;
    v46 = a2;
    v47 = 1024;
    v48 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: frontmostApp %@, bundleID %@, launchMethod %d", buf, 0x26u);
  }

  if (v10 && CFStringCompare(a2, v10, 0) == kCFCompareEqualTo)
  {
    v16 = gLogObjects;
    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v18 = *(gLogObjects + 488);
    }

    else
    {
      v18 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v42 = v16;
        v43 = 1024;
        LODWORD(v44) = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }
    }

    a3 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_1_30();
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: Application already in foreground (%@), launching without dialog...", buf, 0x16u);
    }

    v15 = 1;
  }

  else if (a3)
  {
    v15 = 0;
  }

  else
  {
    if (*(v6 + 8) == 1)
    {
      v35 = logObjectForModule_33();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(v5 + 8);
        *buf = 136315394;
        v42 = "genericMFi_appLaunch_requestAppLaunch";
        v43 = 2112;
        v44 = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s: App Launch dialog is already active, ignoring app launch request for endpoint %@...", buf, 0x16u);
      }

      goto LABEL_44;
    }

    a3 = 0;
    v15 = 0;
    *(v6 + 8) = 1;
  }

  v19 = platform_externalAccessory_copyEAProtocolsForEndpointUUID(*(v5 + 8));
  if (v19)
  {
    v20 = v19;
    Count = CFArrayGetCount(v19);
    if (Count < 1)
    {
      v24 = 0;
    }

    else
    {
      v22 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
      v24 = 1;
      if (CFStringCompare(ValueAtIndex, @"com.apple.mfi.launch_notify_previous", 1uLL))
      {
        v25 = 1;
        do
        {
          v26 = v25;
          if (v22 == v25)
          {
            break;
          }

          v27 = CFArrayGetValueAtIndex(v20, v25);
          v28 = CFStringCompare(v27, @"com.apple.mfi.launch_notify_previous", 1uLL);
          v25 = v26 + 1;
        }

        while (v28);
        v24 = v26 < v22;
      }
    }

    CFRelease(v20);
  }

  else
  {
    v24 = 0;
  }

  CFRetain(a2);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __genericMFi_appLaunch_requestAppLaunch_block_invoke;
  block[3] = &__block_descriptor_tmp_6_4;
  v38 = a3;
  v39 = v15;
  v40 = v24;
  block[4] = a2;
  block[5] = v5;
  dispatch_async(global_queue, block);
LABEL_44:
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

CFAbsoluteTime *configStream_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x1020040239C79EBuLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ConfigStreamQ", 0);
      *(v2 + 1) = v3;
      if (v3)
      {
        *v2 = a1;
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 57)
        {
          v6 = *(gLogObjects + 448);
        }

        else
        {
          v6 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            v20 = 134218240;
            v21 = v4;
            OUTLINED_FUNCTION_3();
            v22 = v5;
            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v15, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v20);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "configStream initSession: ", &v20, 2u);
        }

        v2[3] = CFAbsoluteTimeGetCurrent();
        *(v2 + 4) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        *(v2 + 16) = 0;
        if (gLogObjects && gNumLogObjects >= 57)
        {
          v7 = *(gLogObjects + 448);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v17, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v20);
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_16_13(&_mh_execute_header, v8, v9, "configStream initSession: ", v10, v11, v12, v13, 0);
        }
      }
    }
  }

  else
  {
    v19 = logObjectForModule_34();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", &v20, 2u);
    }

    return 0;
  }

  return v2;
}

uint64_t configStream_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v3 = *(gLogObjects + 448);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13);
      }

      if (OUTLINED_FUNCTION_93())
      {
        OUTLINED_FUNCTION_16_13(&_mh_execute_header, v4, v5, "configStream cleanupSession: ", v6, v7, v8, v9, 0);
      }

      v10 = *(v2 + 32);
      if (v10)
      {
        CFRelease(v10);
        *(v2 + 32) = 0;
      }

      dispatch_sync(*(*v1 + 1), &__block_literal_global_31);
      dispatch_release(*(*v1 + 1));
      *(*v1 + 1) = 0;
      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t configStream_endpoint_processIncomingData(uint64_t result)
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
        v4 = v2[1];
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = __configStream_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_2_2;
        v5[4] = v2;
        v5[5] = v1;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

void __configStream_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v6 = *(gLogObjects + 448);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v134 = v4;
      OUTLINED_FUNCTION_17_3();
      *&v134[10] = v5;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v17, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (v3 && *v3)
    {
      v16 = *(*v3 + 6);
    }

    else
    {
      v16 = 18;
    }

    *buf = 67109378;
    *v134 = v16;
    *&v134[4] = 2112;
    *&v134[6] = v2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d dataIn %@", buf, 0x12u);
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  else if (!v3)
  {
    goto LABEL_26;
  }

  if (!v2)
  {
    goto LABEL_26;
  }

  v7 = *v3;
  if (!*v3)
  {
    goto LABEL_26;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_26;
  }

  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  if (!BytePtr || Length < 0xC || Length < *(BytePtr + 3) + 12)
  {
    goto LABEL_26;
  }

  v11 = *BytePtr;
  if (!*BytePtr)
  {
    *(v3 + 16) = 1;
    platform_connectionInfo_configStreamCategoryListReady(*(v7 + 16), *v8);
    goto LABEL_26;
  }

  if (v11 == 5)
  {
    cf = _configStream_endpoint_copyAndRemoveFirstClientForRequest(v3, *(BytePtr + 1), BytePtr[4]);
    if (!cf)
    {
      v68 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v13 = *(gLogObjects + 448);
      }

      else
      {
        v13 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          *v134 = v68;
          OUTLINED_FUNCTION_6_29();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (!OUTLINED_FUNCTION_93())
      {
        goto LABEL_26;
      }

      goto LABEL_106;
    }

    v111 = v8;
    if (!*(BytePtr + 3))
    {
      theDicta = 0;
LABEL_90:
      v77 = v7;
      v78 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v79 = *(gLogObjects + 448);
      }

      else
      {
        v79 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          *v134 = v78;
          OUTLINED_FUNCTION_6_29();
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v81, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        v80 = *(*v3 + 2);
        OUTLINED_FUNCTION_23_8();
        *&v134[8] = 2112;
        *&v134[10] = cf;
        *&v134[18] = 2112;
        v135[0] = theDicta;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "configStream processIncomingData for endpoint: %@, call configStreamPropertyResponse: clientUID %@, categories %@", buf, 0x20u);
      }

      platform_connectionInfo_configStreamCategoriesResponse(cf, *(v77 + 16), *v111, theDicta, *(BytePtr + 2) == 0);
      if (theDicta)
      {
        CFRelease(theDicta);
      }

      if (CFArrayGetCount(v3[4]) >= 1)
      {
        _configStream_endpoint_sendNextClientRequest(v3);
      }

      v76 = cf;
      goto LABEL_102;
    }

    v112 = v1;
    v130 = v3;
    if (*(BytePtr + 6) >= 9u)
    {
      v99 = logObjectForModule_34();
      v100 = OUTLINED_FUNCTION_80(v99);
      if (v100)
      {
        OUTLINED_FUNCTION_18_15(v100, v101, v102, v103, v104, v105, v106, v107, v108, v110, v8, v1, v114, v116, v117, v119, v121, v123, theDict, cf, v127, v128, v3);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_17_3();
        *&v134[10] = 8;
        _os_log_impl(&_mh_execute_header, BytePtr, OS_LOG_TYPE_DEFAULT, "configStream processIncomingData for endpoint: %@, contained more than max number of %d categories", buf, 0x12u);
      }

      v98 = cf;
    }

    else
    {
      theDicta = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!*(BytePtr + 6))
      {
LABEL_70:
        v1 = v112;
        goto LABEL_90;
      }

      v24 = 0;
      v120 = (BytePtr + 14);
      v25 = (BytePtr + 18);
      *&v23 = 138413058;
      v109 = v23;
      *&v23 = 134218240;
      v115 = v23;
      *&v23 = 138413314;
      v122 = v23;
      v118 = v7;
      while (1)
      {
        v129 = v24;
        v26 = (v120 + 20 * v24);
        v132 = *v26;
        v27 = v26[1];
        if (v27 >= 0x11)
        {
          break;
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v26[1], &kCFTypeArrayCallBacks);
        v127 = v25;
        if (v27)
        {
          while (1)
          {
            v36 = *v25++;
            valuePtr = v36;
            v37 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
            CFArrayAppendValue(Mutable, v37);
            v38 = gLogObjects;
            v39 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 57)
            {
              v40 = *(gLogObjects + 448);
            }

            else
            {
              v40 = &_os_log_default;
              if (OUTLINED_FUNCTION_27())
              {
                *buf = v115;
                *v134 = v38;
                OUTLINED_FUNCTION_17_3();
                *&v134[10] = v39;
                OUTLINED_FUNCTION_70_4();
                _os_log_error_impl(v32, v33, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, 0x12u);
                v40 = &_os_log_default;
              }
            }

            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
            if (v41)
            {
              break;
            }

            if (v37)
            {
              goto LABEL_52;
            }

LABEL_53:
            if (!--v27)
            {
              goto LABEL_54;
            }
          }

          OUTLINED_FUNCTION_18_15(v41, v42, v43, v44, v45, v46, v47, v48, v109, *(&v109 + 1), v111, v112, v115, *(&v115 + 1), v118, v120, v122, *(&v122 + 1), theDicta, cf, v127, v129, v130);
          OUTLINED_FUNCTION_23_8();
          *&v134[8] = 2112;
          OUTLINED_FUNCTION_29_7();
          WORD2(v135[0]) = v29;
          *(v135 + 6) = v30;
          WORD1(v135[1]) = v31;
          *(&v135[1] + 4) = Mutable;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "configStream processIncomingData for endpoint: %@, clientUID %@, creating property list for categoryID 0x%x, propertyID %u, properties %@", buf, 0x2Cu);
          if (!v37)
          {
            goto LABEL_53;
          }

LABEL_52:
          CFRelease(v37);
          goto LABEL_53;
        }

LABEL_54:
        v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v132);
        CFDictionarySetValue(theDicta, v49, Mutable);
        v50 = gLogObjects;
        if (gLogObjects && gNumLogObjects >= 57)
        {
          v51 = *(gLogObjects + 448);
        }

        else
        {
          v51 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            *buf = v115;
            *v134 = v50;
            OUTLINED_FUNCTION_6_29();
            OUTLINED_FUNCTION_70_4();
            _os_log_error_impl(v61, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
            v51 = &_os_log_default;
          }
        }

        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG);
        if (v52)
        {
          OUTLINED_FUNCTION_18_15(v52, v53, v54, v55, v56, v57, v58, v59, v109, *(&v109 + 1), v111, v112, v115, *(&v115 + 1), v118, v120, v122, *(&v122 + 1), theDicta, cf, v127, v129, v130);
          OUTLINED_FUNCTION_23_8();
          *&v134[8] = 2112;
          OUTLINED_FUNCTION_29_7();
          WORD2(v135[0]) = v60;
          *(v135 + 6) = theDicta;
          _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "configStream processIncomingData for endpoint: %@, clientUID %@, creating category list, categoryID 0x%x, categories %@", buf, 0x26u);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        v3 = v130;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v24 = v129 + 1;
        v25 = (v127 + 20);
        v7 = v118;
        if (v129 + 1 >= *(BytePtr + 6))
        {
          goto LABEL_70;
        }
      }

      v87 = logObjectForModule_34();
      v88 = OUTLINED_FUNCTION_80(v87);
      if (v88)
      {
        OUTLINED_FUNCTION_18_15(v88, v89, v90, v91, v92, v93, v94, v95, v109, *(&v109 + 1), v111, v112, v115, *(&v115 + 1), v118, v120, v122, *(&v122 + 1), theDicta, cf, v127, v129, v130);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_17_3();
        *&v134[10] = v96;
        *&v134[14] = v97;
        *&v134[16] = 16;
        _os_log_impl(&_mh_execute_header, BytePtr, OS_LOG_TYPE_DEFAULT, "configStream processIncomingData for endpoint: %@, property list for categoryID 0x%x contained more than max number of %d properties", buf, 0x18u);
      }

      CFRelease(cf);
      v98 = theDicta;
      if (!theDicta)
      {
LABEL_115:
        v1 = v112;
        goto LABEL_26;
      }
    }

    CFRelease(v98);
    goto LABEL_115;
  }

  if (v11 == 6)
  {
    v19 = _configStream_endpoint_copyAndRemoveFirstClientForRequest(v3, *(BytePtr + 1), BytePtr[4]);
    if (v19)
    {
      v20 = v19;
      v21 = v7;
      if (*(BytePtr + 3))
      {
        v22 = CFDataCreate(kCFAllocatorDefault, BytePtr + 12, *(BytePtr + 3));
      }

      else
      {
        v22 = 0;
      }

      v113 = v1;
      v69 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v70 = *(gLogObjects + 448);
      }

      else
      {
        v70 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v134 = v69;
          OUTLINED_FUNCTION_6_29();
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v71 = *(*v3 + 2);
        v72 = *(BytePtr + 1);
        v73 = *(BytePtr + 2);
        OUTLINED_FUNCTION_23_8();
        *&v134[8] = 2112;
        *&v134[10] = v20;
        *&v134[18] = 1024;
        LODWORD(v135[0]) = v74;
        WORD2(v135[0]) = 1024;
        *(v135 + 6) = v75;
        WORD1(v135[1]) = 2112;
        *(&v135[1] + 4) = v22;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "configStream processIncomingData for endpoint: %@, call configStreamPropertyResponse: clientUID %@, categoryID 0x%x, propertyID %u, propertyValue %@", buf, 0x2Cu);
      }

      platform_connectionInfo_configStreamPropertyResponse(v20, *(v21 + 16), *v8, *(BytePtr + 1), BytePtr[4], v22, *(BytePtr + 2) == 0);
      if (CFArrayGetCount(v3[4]) >= 1)
      {
        _configStream_endpoint_sendNextClientRequest(v3);
      }

      CFRelease(v20);
      v1 = v113;
      if (!v22)
      {
        goto LABEL_26;
      }

      v76 = v22;
LABEL_102:
      CFRelease(v76);
      goto LABEL_26;
    }

    v67 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v13 = *(gLogObjects + 448);
    }

    else
    {
      v13 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        *v134 = v67;
        OUTLINED_FUNCTION_6_29();
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v83, v84, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_93())
    {
      goto LABEL_26;
    }

LABEL_106:
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_1_31();
    v14 = "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d, No client found, messageID %x, categoryID 0x%x, propertyID %u, paramLen %u";
    goto LABEL_25;
  }

  v12 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v13 = *(gLogObjects + 448);
  }

  else
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      *v134 = v12;
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v65, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_1_31();
    v14 = "configStream processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d, Unknown messageID %x, categoryID 0x%x, propertyID %u, paramLen %u";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
  }

LABEL_26:
  v15 = *(v1 + 40);
  if (v15)
  {
    CFRelease(v15);
  }
}

uint64_t **configStream_endpoint_sendOutgoingData(uint64_t **a1, __int16 a2, __int16 a3, __int16 a4, const UInt8 *a5, unsigned int a6)
{
  v6 = a1;
  if (a1)
  {
    *bytes = a2;
    v13 = a3;
    v14 = a4;
    v15 = a6;
    v16 = 0;
    v9 = a6;
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, a6 + 12);
    CFDataAppendBytes(Mutable, bytes, 12);
    if (a5 && a6)
    {
      CFDataAppendBytes(Mutable, a5, v9);
    }

    v6 = acc_endpoint_sendOutgoingData(*v6, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v6;
}

uint64_t _configStream_endpoint_addClientRequest(uint64_t a1, uint64_t a2, int a3, int a4)
{
  OUTLINED_FUNCTION_86_0();
  valuePtr = v8;
  v33 = v9;
  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v12 = *(gLogObjects + 448);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      *buf = 134218240;
      v36 = v10;
      v37 = 1024;
      v38 = v11;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      v26 = *v5;
      if (*v5)
      {
        v26 = *(v26 + 2);
      }
    }

    else
    {
      v26 = 0;
    }

    *buf = 138413058;
    v36 = v26;
    OUTLINED_FUNCTION_28_9();
    v39 = a3;
    v40 = v32;
    v41 = a4;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "configStream addClientRequest for endpoint: %@, client %@, categoryID 0x%x, propertyID %u", buf, 0x22u);
  }

  v15 = 0;
  if (v5 && v4 && v5[4])
  {
    keys[0] = @"ClientUID";
    keys[1] = @"CategoryID";
    keys[2] = @"PropertyID";
    values[0] = CFStringCreateCopy(kCFAllocatorDefault, v4);
    values[1] = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    values[2] = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v33);
    v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFArrayAppendValue(v5[4], v16);
    if (v16)
    {
      CFRelease(v16);
    }

    v15 = 1;
  }

  v17 = gLogObjects;
  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v19 = *(gLogObjects + 448);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v36 = v17;
      v37 = 1024;
      v38 = v18;
      OUTLINED_FUNCTION_70_4();
      _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
    }
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    if (v5)
    {
      if (*v5)
      {
        v20 = *(*v5 + 2);
      }

      else
      {
        v20 = 0;
      }

      v21 = valuePtr;
      v22 = v33;
      CFArrayGetCount(v5[4]);
    }

    else
    {
      v20 = 0;
      v21 = valuePtr;
      v22 = v33;
    }

    *buf = 138413570;
    v36 = v20;
    OUTLINED_FUNCTION_28_9();
    v39 = v21;
    v40 = v23;
    v41 = v22;
    v42 = v23;
    v43 = v15;
    v44 = 2048;
    v45 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "configStream addClientRequest for endpoint: %@, client %@, categoryID 0x%x, propertyID %u, success %d, requestList count %ld", buf, 0x32u);
  }

  return v15;
}

uint64_t **_configStream_endpoint_sendNextClientRequest(CFArrayRef *a1)
{
  if (!a1 || !*a1)
  {
    goto LABEL_41;
  }

  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v4 = *(gLogObjects + 448);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v38 = v2;
      v39 = 1024;
      *v40 = v3;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(*a1 + 2);
    *buf = 138412290;
    v38 = v17;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "configStream sendNextClientRequest for endpoint: %@", buf, 0xCu);
  }

  v7 = a1[4];
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v9 = *(gLogObjects + 448);
  }

  else
  {
    v9 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_3_31();
      *v40 = v8;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      v7 = a1[4];
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(*a1 + 2);
    Count = CFArrayGetCount(v7);
    *buf = 138412546;
    v38 = v18;
    v39 = 2048;
    *v40 = Count;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "configStream sendNextClientRequest for endpoint: %@, requestList count %ld", buf, 0x16u);
    v7 = a1[4];
  }

  if (CFArrayGetCount(v7) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1[4], 0);
    v11 = ValueAtIndex;
    if (ValueAtIndex)
    {
      valuePtr = -21846;
      v35 = -86;
      Value = CFDictionaryGetValue(ValueAtIndex, @"CategoryID");
      v21 = CFDictionaryGetValue(v11, @"PropertyID");
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      CFNumberGetValue(v21, kCFNumberIntType, &v35);
      v22 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 57)
      {
        v23 = *(gLogObjects + 448);
      }

      else
      {
        v23 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3_31();
          *v40 = v22;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v30 = *(*a1 + 2);
        v31 = valuePtr;
        v32 = v35;
        CFDictionaryGetValue(v11, @"ClientUID");
        OUTLINED_FUNCTION_3_31();
        *v40 = v31;
        *&v40[4] = v33;
        *&v40[6] = v32;
        *&v40[10] = 2112;
        *&v40[12] = v34;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "configStream sendNextClientRequest for endpoint: %@, send RequestGetProperty: categoryID 0x%x, propertyID %u, client %@", buf, 0x22u);
      }

      v11 = configStream_endpoint_sendOutgoingData(a1, 3, valuePtr, v35, 0, 0);
    }
  }

  else
  {
LABEL_41:
    v11 = 0;
  }

  v12 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v13 = *(gLogObjects + 448);
  }

  else
  {
    v13 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3_31();
      *v40 = v12;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v24, v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      if (*a1)
      {
        v14 = *(*a1 + 2);
      }

      CFArrayGetCount(a1[4]);
    }

    OUTLINED_FUNCTION_3_31();
    *v40 = v11;
    *&v40[4] = 2048;
    *&v40[6] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "configStream sendNextClientRequest for endpoint: %@, success %d, requestList count %ld", buf, 0x1Cu);
  }

  return v11;
}

uint64_t **configStream_setPropertyValue()
{
  OUTLINED_FUNCTION_86_0();
  if (!v2 || !*v1)
  {
    goto LABEL_33;
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v42 = logObjectForModule_34();
    if (OUTLINED_FUNCTION_80(v42))
    {
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v43, v44, v45, v46, v47, 0x1Cu);
    }

    goto LABEL_33;
  }

  if (!v0)
  {
LABEL_33:
    v18 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (*v0)
  {
    if (gLogObjects && gNumLogObjects >= 57)
    {
      v3 = *(gLogObjects + 448);
    }

    else
    {
      v3 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48);
      }
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_19_12();
      v6 = *v0;
      OUTLINED_FUNCTION_9_0();
      v49 = v7;
      OUTLINED_FUNCTION_6_19();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }

    v13 = *(v0 + 4);
    v14 = *(v0 + 10);
    BytePtr = CFDataGetBytePtr(v0[2]);
    Length = CFDataGetLength(v0[2]);
    v17 = configStream_endpoint_sendOutgoingData(v1, 4, v13, v14, BytePtr, Length);
  }

  else
  {
    v17 = 0;
  }

  v18 = v0;
LABEL_15:
  v19 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v20 = *(gLogObjects + 448);
  }

  else if (OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_7_22();
    LODWORD(v49) = v19;
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v38, v39, v40, v41, v48[0]);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    if (v1)
    {
      if (*v1)
      {
        v21 = *(*v1 + 16);
      }

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    else if (!v18)
    {
      goto LABEL_27;
    }

    v22 = *v18;
    v23 = *(v18 + 4);
    v24 = *(v18 + 10);
    v25 = v18[2];
LABEL_27:
    OUTLINED_FUNCTION_9_0();
    v49 = v26;
    v50 = 1024;
    v51 = v27;
    v52 = 1024;
    v53 = v28;
    v54 = v29;
    v55 = v30;
    v56 = 1024;
    v57 = v17;
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v31, v32, OS_LOG_TYPE_INFO, v33, v34, 0x32u);
  }

  if (v17)
  {
    platform_configStream_deleteParams(v0);
  }

  return v17;
}

const void *_configStream_endpoint_copyAndRemoveFirstClientForRequest(CFArrayRef *a1, int a2, int a3)
{
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v5 = *(gLogObjects + 448);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_5_24();
      *v51 = v4;
      OUTLINED_FUNCTION_70_4();
      _os_log_error_impl(v25, v26, v27, v28, v29, 0x12u);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      v24 = *a1;
      if (*a1)
      {
        v24 = *(v24 + 2);
      }
    }

    else
    {
      v24 = 0;
    }

    *buf = 138412802;
    v49 = v24;
    v50 = 1024;
    OUTLINED_FUNCTION_27_7();
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "configStream copyAndRemoveFirstClientForRequest for endpoint: %@, categoryID 0x%x, propertyID %u", buf, 0x18u);
  }

  v6 = &off_1001C3000;
  if (!a1)
  {
    goto LABEL_47;
  }

  v7 = a1[4];
  if (!v7)
  {
    goto LABEL_47;
  }

  if (CFArrayGetCount(a1[4]) < 1)
  {
    LODWORD(v8) = -1;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        valuePtr = -21846;
        v46 = -86;
        Value = CFDictionaryGetValue(ValueAtIndex, @"ClientUID");
        v12 = CFDictionaryGetValue(v10, @"CategoryID");
        v13 = CFDictionaryGetValue(v10, @"PropertyID");
        CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        CFNumberGetValue(v13, kCFNumberIntType, &v46);
        v14 = gNumLogObjects;
        if (!gLogObjects)
        {
          goto LABEL_15;
        }

        if (gNumLogObjects >= 57)
        {
          v15 = *(gLogObjects + 448);
        }

        else
        {
LABEL_15:
          v15 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_5_24();
            *v51 = v14;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v15 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = *a1;
          if (*a1)
          {
            v17 = *(v17 + 2);
          }

          *buf = 138413826;
          v49 = v17;
          v50 = 2112;
          *v51 = Value;
          *&v51[8] = 2112;
          *v52 = 0;
          *&v52[8] = 1024;
          *&v52[10] = valuePtr;
          *&v52[14] = 1024;
          *&v52[16] = a2;
          v53 = 1024;
          v54 = v46;
          v55 = 1024;
          v56 = a3;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "configStream findClientRequest for endpoint: %@, clientUID %@ ?= %@, categoryID 0x%x ?= %u, propertyID %u ?= %u", buf, 0x38u);
        }

        if (valuePtr == a2 && v46 == a3)
        {
          break;
        }
      }

      if (CFArrayGetCount(v7) <= ++v8)
      {
        LODWORD(v8) = -1;
        break;
      }
    }

    v6 = &off_1001C3000;
  }

  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v19 = *(gLogObjects + 448);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_24();
      *v51 = v18;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v30, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    if (*a1)
    {
      v32 = *(*a1 + 2);
    }

    CFArrayGetCount(a1[4]);
    v33 = *(v6 + 79);
    OUTLINED_FUNCTION_5_24();
    *v51 = a2;
    *&v51[4] = v34;
    *&v51[6] = a3;
    *v52 = v34;
    *&v52[2] = v8;
    *&v52[6] = 2048;
    *&v52[8] = v35;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "configStream findClientRequest for endpoint: %@, categoryID 0x%x, propertyID %u, foundIndex %d, requestList count %ld", buf, 0x28u);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }
  }

  else if ((v8 & 0x80000000) != 0)
  {
LABEL_47:
    v23 = 0;
    goto LABEL_48;
  }

  v20 = a1[4];
  v21 = v8;
  v22 = CFArrayGetValueAtIndex(v20, v8);
  if (!v22)
  {
    goto LABEL_47;
  }

  v23 = CFDictionaryGetValue(v22, @"ClientUID");
  CFRetain(v23);
  CFArrayRemoveValueAtIndex(v20, v21);
LABEL_48:
  v36 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 57)
  {
    v37 = *(gLogObjects + 448);
  }

  else
  {
    v37 = &_os_log_default;
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_24();
      *v51 = v36;
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      if (*a1)
      {
        v38 = *(*a1 + 2);
      }

      CFArrayGetCount(a1[4]);
    }

    v39 = *(v6 + 79);
    OUTLINED_FUNCTION_5_24();
    OUTLINED_FUNCTION_27_7();
    *v52 = 2112;
    *&v52[2] = v23;
    *&v52[10] = 2048;
    *&v52[12] = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "configStream copyAndRemoveFirstClientForRequest for endpoint: %@, categoryID 0x%x, propertyID %u, client %@, requestList count %ld", buf, 0x2Cu);
  }

  return v23;
}

void logObjectForModule_cold_1_6(uint64_t a1)
{
  v2 = 134218240;
  v3 = a1;
  OUTLINED_FUNCTION_3();
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v2, 0x12u);
}

void qiAuth_protocol_start_cold_3(uint64_t a1)
{
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_initMsg_GET_DIGESTS_cold_2()
{
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_protocol_timeoutForRequest_cold_2(uint64_t a1, int a2, NSObject *a3)
{
  v5 = *(a1 + 12);
  qiAuth_protocol_msgTypeString(a2);
  *v8 = 136316162;
  OUTLINED_FUNCTION_17_8();
  *&v8[7] = 2616;
  v8[9] = v6;
  v9 = v5;
  v10 = v6;
  v11 = a2;
  v12 = 2080;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s:%d TX: Unexpected MsgType!!! ver %d, msgType %d(%s)", v8, 0x28u);
}

void _qiAuth_protocol_timeoutCallback_cold_4()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_timeoutCallback_cold_6(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_processIncomingData_cold_2(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x34u);
}

void qiAuth_protocol_processIncomingData_cold_4(int a1, NSObject *a2)
{
  qiAuth_protocol_msgTypeString(a1);
  *v6 = 136315906;
  OUTLINED_FUNCTION_17_8();
  *&v6[7] = 425;
  v6[9] = v4;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d SendData, outMsgType %u(%s)", v6, 0x22u);
}

void _qiAuth_protocol_handleResponse_DIGESTS_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_13(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_DIGESTS_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_CERTIFICATE_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_13(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_CERTIFICATE_cold_7()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_handleResponse_CHALLENGE_AUTH_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_13(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_ERROR_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_13(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void _qiAuth_protocol_handleResponse_ERROR_cold_8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 2);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x24u);
}

void qiAuth_protocol_authStateString_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void qiAuth_protocol_saveDigest_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void qiAuth_protocol_saveCertNextSegment_cold_3()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_33();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void qiAuth_protocol_calculateChallengeHash_cold_2(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_4(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_6(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_8(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_10(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void qiAuth_protocol_calculateChallengeHash_cold_12(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void _qiAuth_protocol_getCachedCertLengthFromHeader_cold_2(unsigned int *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void _qiAuth_protocol_getCachedCertLengthFromHeader_cold_4()
{
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_13(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_4(unsigned int *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15(a1, a2, __stack_chk_guard);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_6()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_finishAuth_cold_9(uint64_t a1)
{
  v1 = *(a1 + 44);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_18_16();
  OUTLINED_FUNCTION_3_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void _qiAuth_protocol_finishAuth_cold_11()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _qiAuth_protocol_finishAuth_cold_12()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

uint64_t iap2_features_createFeatures(unsigned int *a1, int a2)
{
  v2 = a2;
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects)
  {
    v5 = gNumLogObjects <= 18;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (a2)
  {
    if (v6)
    {
      v7 = *(gLogObjects + 144);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_11_15();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v116, v117, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v9 = "Creating required features...";
  }

  else
  {
    if (v6)
    {
      v7 = *(gLogObjects + 144);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_11_15();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v118, v119, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v9 = "Creating optional features that have been identified for...";
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
LABEL_21:
  v10 = a1 + 50;
  v11 = &off_1002298E0;
  v12 = 29;
  *&v8 = 67109120;
  v123 = v8;
  *&v8 = 134218240;
  v120 = v8;
  HIDWORD(v122) = v2;
  do
  {
    v13 = *v11;
    if (*v11 && *v13 && *(v13 + 34) == v2)
    {
      v14 = *(v11 - 2);
      if (a1 && *&v10[2 * v14])
      {
        v15 = v4[491];
        v16 = gNumLogObjects;
        if (v15 && gNumLogObjects >= 19)
        {
          v17 = *(v15 + 144);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            *buf = v120;
            v125 = v15;
            v126 = 1024;
            v127 = v16;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v95, v96, v97, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v98, 0x12u);
          }
        }

        v25 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
        if (v25)
        {
          OUTLINED_FUNCTION_1_33(v25, v26, v27, v28, v29, v30, v31, v32, v120, *(&v120 + 1), v121, v122, v123);
          v34 = v17;
          v35 = OS_LOG_TYPE_INFO;
          v36 = "Feature already created: %{coreacc:iAP2Feature_t}d!";
LABEL_39:
          _os_log_impl(&_mh_execute_header, v34, v35, v36, v33, 8u);
        }
      }

      else if ((v2 & 1) != 0 || (v18 = *(v11 - 2), iap2_identification_isIdentifiedForFeature(a1)))
      {
        v19 = a1;
        v20 = v10;
        v21 = v4;
        v22 = v4[491];
        v23 = gNumLogObjects;
        if (v22 && gNumLogObjects >= 19)
        {
          v24 = *(v22 + 144);
        }

        else
        {
          v24 = &_os_log_default;
          v37 = OUTLINED_FUNCTION_19_0();
          if (v37)
          {
            OUTLINED_FUNCTION_3_0(v37, v38, v39, v40, v41, v42, v43, v44, v120);
            v127 = v23;
            OUTLINED_FUNCTION_11_11();
            _os_log_error_impl(v99, v100, v101, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v102, 0x12u);
          }
        }

        v45 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
        if (v45)
        {
          OUTLINED_FUNCTION_1_33(v45, v46, v47, v48, v49, v50, v51, v52, v120, *(&v120 + 1), v121, v122, v123);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Creating feature: %{coreacc:iAP2Feature_t}d...", v53, 8u);
        }

        v54 = **v13;
        v4 = v21;
        if (v54)
        {
          v55 = v19;
          v56 = (v54)(v19);
          v10 = v20;
          if (v56)
          {
            a1 = v19;
            v2 = HIDWORD(v122);
            if (v55)
            {
              *&v10[2 * v14] = v56;
            }
          }

          else
          {
            v60 = v4[491];
            v61 = gNumLogObjects;
            if (v60 && gNumLogObjects >= 19)
            {
              v62 = *(v60 + 144);
              a1 = v19;
            }

            else
            {
              v79 = OUTLINED_FUNCTION_19_0();
              a1 = v19;
              if (v79)
              {
                OUTLINED_FUNCTION_3_0(v79, v80, v81, v82, v83, v84, v85, v86, v120);
                v127 = v61;
                OUTLINED_FUNCTION_11_11();
                _os_log_error_impl(v111, v112, v113, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v114, 0x12u);
              }
            }

            v87 = OUTLINED_FUNCTION_19_0();
            v2 = HIDWORD(v122);
            if (v87)
            {
              OUTLINED_FUNCTION_1_33(v87, v88, v89, v90, v91, v92, v93, v94, v120, *(&v120 + 1), v121, v122, v123);
              OUTLINED_FUNCTION_11_11();
              _os_log_error_impl(v103, v104, v105, "Error creating feature: %{coreacc:iAP2Feature_t}d!", v106, 8u);
            }
          }
        }

        else
        {
          v57 = v21[491];
          v58 = gNumLogObjects;
          v10 = v20;
          if (v57 && gNumLogObjects >= 19)
          {
            v59 = *(v57 + 144);
            a1 = v19;
          }

          else
          {
            v59 = &_os_log_default;
            v63 = OUTLINED_FUNCTION_19_0();
            a1 = v19;
            if (v63)
            {
              OUTLINED_FUNCTION_3_0(v63, v64, v65, v66, v67, v68, v69, v70, v120);
              v127 = v58;
              OUTLINED_FUNCTION_11_11();
              _os_log_error_impl(v107, v108, v109, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v110, 0x12u);
            }
          }

          v71 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
          v2 = HIDWORD(v122);
          if (v71)
          {
            OUTLINED_FUNCTION_1_33(v71, v72, v73, v74, v75, v76, v77, v78, v120, *(&v120 + 1), v121, v122, v123);
            v34 = v59;
            v35 = OS_LOG_TYPE_DEFAULT;
            v36 = "No create function for feature: %{coreacc:iAP2Feature_t}d!";
            goto LABEL_39;
          }
        }
      }
    }

    v11 += 2;
    --v12;
  }

  while (v12);
  return 0;
}

uint64_t iap2_features_createFeature(uint64_t a1, unsigned int a2)
{
  v3 = &off_1002298E0;
  v4 = 29;
  while (1)
  {
    v5 = *v3;
    v6 = *(v3 - 2) != a2 || v5 == 0;
    if (!v6 && *v5)
    {
      break;
    }

    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  v8 = a1 + 8 * a2;
  if (a1 && *(v8 + 200))
  {
    if (gLogObjects && gNumLogObjects >= 19)
    {
      v9 = *(gLogObjects + 144);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v33, v34, v35, v36, v37, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_14_14();
      v15 = "Feature already created: %{coreacc:iAP2Feature_t}d!";
      v16 = v9;
      v17 = OS_LOG_TYPE_INFO;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, &v48, 8u);
    }
  }

  else
  {
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 19;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        v48 = 134218240;
        v49 = v10;
        v50 = 1024;
        v51 = v11;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v48);
      }
    }

    else
    {
      v18 = *(gLogObjects + 144);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v19, v20, v21, v22, v23, 8u);
    }

    v24 = **v5;
    if (v24)
    {
      v25 = (v24)(a1);
      if (v25)
      {
        if (a1)
        {
          *(v8 + 200) = v25;
        }
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 19)
        {
          v27 = *(gLogObjects + 144);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v43, v44, v45, v46, v47, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_14_14();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v28, v29, v30, v31, v32, 8u);
        }
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 19)
      {
        v26 = *(gLogObjects + 144);
      }

      else
      {
        v26 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v38, v39, v40, v41, v42, 0x12u);
        }
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_14();
        v15 = "No create function for feature: %{coreacc:iAP2Feature_t}d!";
        v16 = v26;
        v17 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_25;
      }
    }
  }

  return 0;
}

uint64_t iap2_features_startFeaturesFromDevice(unsigned int *a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 18;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (a2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v8 = "Auto-starting required features...";
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 144);
    }

    else
    {
      v6 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (!OUTLINED_FUNCTION_81())
    {
      goto LABEL_21;
    }

    *buf = 0;
    v8 = "Auto-starting optional features...";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
LABEL_21:
  v9 = &off_1002298E0;
  v10 = 29;
  *&v7 = 67109120;
  v61 = v7;
  *&v7 = 134218240;
  v60 = v7;
  do
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = *v11;
      if (*v11)
      {
        if (*(v11 + 34) == a2)
        {
          if ((a2 & 1) == 0)
          {
            v13 = *(v9 - 2);
            if (!iap2_identification_isIdentifiedForFeature(a1))
            {
              goto LABEL_48;
            }

            v12 = *v11;
          }

          v14 = v12[2];
          if (gLogObjects)
          {
            v15 = gNumLogObjects <= 18;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (v14)
          {
            if (v16)
            {
              v17 = *(gLogObjects + 144);
            }

            else
            {
              v19 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v17 = &_os_log_default;
              if (v19)
              {
                OUTLINED_FUNCTION_7_25(v19, v20, v21, v22, v23, v24, v25, v26, v60);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v53, 0x12u);
                v17 = &_os_log_default;
              }
            }

            v27 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
            if (v27)
            {
              OUTLINED_FUNCTION_17_17(v27, v28, v29, v30, v31, v32, v33, v34, v60, *(&v60 + 1), v61);
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Auto-starting feature: %{coreacc:iAP2Feature_t}d...", v35, 8u);
            }

            (v14)(a1);
          }

          else
          {
            if (v16)
            {
              v18 = *(gLogObjects + 144);
            }

            else
            {
              v36 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              v18 = &_os_log_default;
              if (v36)
              {
                OUTLINED_FUNCTION_7_25(v36, v37, v38, v39, v40, v41, v42, v43, v60);
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, 0x12u);
                v18 = &_os_log_default;
              }
            }

            v44 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (v44)
            {
              OUTLINED_FUNCTION_17_17(v44, v45, v46, v47, v48, v49, v50, v51, v60, *(&v60 + 1), v61);
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No auto-start function for feature: %{coreacc:iAP2Feature_t}d!", v52, 8u);
            }
          }
        }
      }
    }

LABEL_48:
    v9 += 2;
    --v10;
  }

  while (v10);
  return 0;
}

uint64_t iap2_features_startFeatureFromDevice(unsigned int *a1, int a2)
{
  v4 = &off_1002298E0;
  v5 = 29;
  while (1)
  {
    v6 = *v4;
    if (*(v4 - 2) == a2 && v6 != 0)
    {
      v8 = *v6;
      if (*v6)
      {
        break;
      }
    }

    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  if ((*(v6 + 34) & 1) == 0)
  {
    if (!iap2_identification_isIdentifiedForFeature(a1))
    {
      return 0;
    }

    v8 = *v6;
  }

  v9 = v8[2];
  if (v9)
  {
    v10 = gLogObjects;
    v11 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 19)
    {
      v12 = *(gLogObjects + 144);
    }

    else
    {
      v12 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        v21 = 134218240;
        v22 = v10;
        v23 = 1024;
        v24 = v11;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v21);
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = 67109120;
      LODWORD(v22) = a2;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v15, v16, v17, v18, v19, 8u);
    }

    (v9)(a1);
  }

  return 0;
}

_BYTE *iap2_feature_getFeatureInfoEntries(_BYTE *result)
{
  if (result)
  {
    *result = 29;
    return &_kiAP2FeatureInfoEntries;
  }

  return result;
}

void iap2_features_registerMessageHandlers_cold_2(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(&_kiAP2FeatureInfoEntries + 4 * a2);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Registering message handlers for %{coreacc:iAP2Feature_t}d...", buf, 8u);
}

void iap2_features_registerMessageHandlers_cold_3()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_15_20();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_features_registerMessageHandlers_cold_4()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_15_20();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_features_registerIdentificationParamHandlers_cold_2(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(&_kiAP2FeatureInfoEntries + 4 * a2);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Registering identification param handlers for %{coreacc:iAP2Feature_t}d...", buf, 8u);
}

void iap2_features_registerIdentificationParamHandlers_cold_3()
{
  v1 = OUTLINED_FUNCTION_8_25();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_16(*v0, 1.5047e-36);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_15_20();
    _os_log_impl(v2, v3, v4, v5, v6, v7);
  }
}

void iap2_sessionRouter_processSessionData_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 1);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received incoming packet for session type: %{coreacc:iAP2PacketServiceType_t}d", v3, 8u);
}

uint64_t _startCallStateUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      v5 = Feature;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v6 = *(gLogObjects + 312);
      }

      else
      {
        v6 = &_os_log_default;
        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_24_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v85, v86, v87, v88, v89, v90);
        }
      }

      if (OUTLINED_FUNCTION_65())
      {
        *buf = 0;
        OUTLINED_FUNCTION_38_3(&_mh_execute_header, v6, v7, "Start Call State Updates!", buf);
      }

      theSet = CFSetCreateMutable(kCFAllocatorDefault, 13, 0);
      v8 = OUTLINED_FUNCTION_21_1();
      FirstParam = iAP2MsgGetFirstParam(v8, v9);
      if (FirstParam)
      {
        NextParam = FirstParam;
        v105 = v5;
        v13 = 0;
        v14 = 0;
        *&v11 = 67109120;
        v107 = v11;
        *&v11 = 67109376;
        v108 = v11;
        *&v11 = 134218240;
        v106 = v11;
        do
        {
          ParamID = iAP2MsgGetParamID(NextParam);
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v16 = *(gLogObjects + 312);
          }

          else
          {
            v17 = OUTLINED_FUNCTION_13();
            v16 = &_os_log_default;
            if (v17)
            {
              OUTLINED_FUNCTION_31_10(v17, v18, v19, v20, v21, v22, v23, v24, v104, v105, v106);
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v44, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v47, 0x12u);
              v16 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v107;
            LODWORD(v111) = ParamID;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "paramID: %d", buf, 8u);
          }

          if (ParamID > 0xC)
          {
            if (gLogObjects && gNumLogObjects >= 40)
            {
              v25 = *(gLogObjects + 312);
            }

            else
            {
              v26 = OUTLINED_FUNCTION_13();
              v25 = &_os_log_default;
              if (v26)
              {
                OUTLINED_FUNCTION_31_10(v26, v27, v28, v29, v30, v31, v32, v33, v104, v105, v106);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v48, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, 0x12u);
                v25 = &_os_log_default;
              }
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              MsgID = iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_39_6(MsgID, v35, v36, v37, v38, v39, v40, v41, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
            }
          }

          else
          {
            if (!iAP2MsgIsDataVoid(NextParam))
            {
              v84 = logObjectForModule_37();
              if (OUTLINED_FUNCTION_16(v84))
              {
                v91 = iAP2MsgGetMsgID(a2);
                OUTLINED_FUNCTION_39_6(v91, v92, v93, v94, v95, v96, v97, v98, v104, v105, v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
                OUTLINED_FUNCTION_13_0();
                _os_log_error_impl(v99, v100, v101, v102, v103, 0xEu);
              }

              v2 = 0;
              goto LABEL_60;
            }

            CFSetAddValue(theSet, ParamID);
            v14 |= ParamID == 5;
            v13 |= ParamID != 5;
          }

          v42 = OUTLINED_FUNCTION_21_1();
          NextParam = iAP2MsgGetNextParam(v42, v43, NextParam);
        }

        while (NextParam);
        if (v13)
        {
          v52 = 0;
          v5 = v105;
          v53 = theSet;
          goto LABEL_35;
        }

        v5 = v105;
      }

      else
      {
        v14 = 0;
      }

      v53 = theSet;
      v54 = OUTLINED_FUNCTION_22();
      CFSetAddValue(v54, v55);
      v52 = 1;
      CFSetAddValue(theSet, 1);
      CFSetAddValue(theSet, 2);
      CFSetAddValue(theSet, 3);
      CFSetAddValue(theSet, 4);
LABEL_35:
      _removeSubscriberForSubFeature(v5, 0);
      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      if (v53)
      {
        v56 = CFRetain(v53);
      }

      else
      {
        v56 = 0;
      }

      *v5 = v56;
      *(v5 + 10) = 1;
      *(v5 + 8) = v52;
      *(v5 + 9) = v14 & 1;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v57 = *(gLogObjects + 312);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_24_9();
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v58, v59, v60, v61, v62, v63);
      }

      if (OUTLINED_FUNCTION_82())
      {
        v64 = "NO";
        if (*(v5 + 8))
        {
          v65 = "YES";
        }

        else
        {
          v65 = "NO";
        }

        if (*(v5 + 9))
        {
          v64 = "YES";
        }

        *buf = 136315394;
        v111 = v65;
        v112 = 2080;
        v113 = v64;
        OUTLINED_FUNCTION_6_16();
        _os_log_impl(v66, v67, OS_LOG_TYPE_INFO, v68, v69, 0x16u);
      }

      if (gLogObjects && gNumLogObjects >= 40)
      {
        v70 = *(gLogObjects + 312);
      }

      else
      {
        v70 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_24_9();
          OUTLINED_FUNCTION_6_16();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v71, v72, v73, v74, v75, v76);
        }
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        Count = CFSetGetCount(*v5);
        *buf = 134217984;
        v111 = Count;
        OUTLINED_FUNCTION_6_16();
        OUTLINED_FUNCTION_30_7(v78, v79, v80, v81, v82);
      }

      _addSubscriberForSubFeature(v5, 0);
      v2 = 1;
LABEL_60:
      if (theSet)
      {
        CFRelease(theSet);
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void _removeSubscriberForSubFeature(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  if (a2 != 3)
  {
    if (a2 == 1)
    {
      if (*(a1 + 24) != 1)
      {
        return;
      }

      v5 = *(a1 + 16);
      if (!v5 || CFSetGetCount(v5) <= 0)
      {
        return;
      }

      v4 = kCFACCCommunications_SubscriberList_CommunicationsUpdates;
    }

    else
    {
      if (a2)
      {
        return;
      }

      if (*(a1 + 10) != 1)
      {
        return;
      }

      v3 = *a1;
      if (!*a1 || CFSetGetCount(v3) <= 0)
      {
        return;
      }

      v4 = kCFACCCommunications_SubscriberList_CallStateUpdates;
    }

    goto LABEL_20;
  }

  if (*(a1 + 67) == 1)
  {
    if (*(a1 + 46) == 1)
    {
      v6 = kCFACCCommunications_SubscriberList_ListUpdates_Recents_Coalesced;
      if (!*(a1 + 42))
      {
        v6 = kCFACCCommunications_SubscriberList_ListUpdates_Recents;
      }

      platform_communications_removeSubscriber(*v6);
    }

    if (*(a1 + 61) == 1)
    {
      v4 = kCFACCCommunications_SubscriberList_ListUpdates_Favorites;
LABEL_20:
      v7 = *v4;

      platform_communications_removeSubscriber(v7);
    }
  }
}

void _addSubscriberForSubFeature(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 == 3)
    {
      if (*(a1 + 67) == 1)
      {
        if (*(a1 + 46) == 1)
        {
          v5 = kCFACCCommunications_SubscriberList_ListUpdates_Recents_Coalesced;
          if (!*(a1 + 42))
          {
            v5 = kCFACCCommunications_SubscriberList_ListUpdates_Recents;
          }

          platform_communications_addSubscriber(*v5);
          platform_communications_triggerListUpdate(0, *(a1 + 42));
        }

        if (*(a1 + 61) == 1)
        {
          platform_communications_addSubscriber(@"ListUpdates_Favorites");

          platform_communications_triggerListUpdate(1, 0);
        }
      }
    }

    else if (a2 == 1)
    {
      if (*(a1 + 24) == 1)
      {
        v4 = *(a1 + 16);
        if (v4)
        {
          if (CFSetGetCount(v4) >= 1)
          {
            platform_communications_addSubscriber(@"CommunicationsUpdates");

            platform_communications_triggerCommunicationsUpdate();
          }
        }
      }
    }

    else if (!a2 && *(a1 + 10) == 1)
    {
      v3 = *a1;
      if (*a1)
      {
        if (CFSetGetCount(v3) >= 1)
        {
          platform_communications_addSubscriber(@"CallStateUpdates");

          platform_communications_triggerCallStateUpdates();
        }
      }
    }
  }
}

uint64_t _stopCallStateUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 6u);
      if (result)
      {
        v4 = result;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v5 = *(gLogObjects + 312);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v6, v7, v8, v9, v10, v11);
        }

        if (OUTLINED_FUNCTION_65())
        {
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_38_3(v12, v13, v14, v15, v16);
        }

        _removeSubscriberForSubFeature(v4, 0);
        *(v4 + 10) = 0;
        result = 1;
        *(v4 + 8) = 1;
        if (*v4)
        {
          CFRelease(*v4);
          *v4 = 0;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _startCommunicationsUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  Feature = iap2_feature_getFeature(a1, 6u);
  if (!Feature)
  {
    return 0;
  }

  v5 = Feature;
  if (gLogObjects && gNumLogObjects >= 40)
  {
    v6 = *(gLogObjects + 312);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v68, v69, v70, v71, v72, v73);
    }
  }

  v88 = v5;
  if (OUTLINED_FUNCTION_65())
  {
    *buf = 0;
    OUTLINED_FUNCTION_38_3(&_mh_execute_header, v6, v7, "Start Communications Updates!", buf);
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 18, 0);
  v9 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  if (!FirstParam)
  {
LABEL_31:
    v51 = OUTLINED_FUNCTION_66_2();
    _removeSubscriberForSubFeature(v51, v52);
    v53 = *(v88 + 16);
    if (v53)
    {
      CFRelease(v53);
      *(v88 + 16) = 0;
    }

    if (Mutable)
    {
      v54 = CFRetain(Mutable);
    }

    else
    {
      v54 = 0;
    }

    *(v88 + 16) = v54;
    *(v88 + 24) = 1;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v55 = *(gLogObjects + 312);
    }

    else
    {
      v55 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_49_6();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v56, v57, v58, v59, v60, v61);
      }
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      Count = CFSetGetCount(*(v88 + 16));
      *buf = 134217984;
      v93 = Count;
      OUTLINED_FUNCTION_30_7(&_mh_execute_header, v55, v63, "paramCount: %ld", buf);
    }

    v2 = 1;
    v64 = OUTLINED_FUNCTION_66_2();
    _addSubscriberForSubFeature(v64, v65);
    if (!Mutable)
    {
      return v2;
    }

    goto LABEL_44;
  }

  NextParam = FirstParam;
  *&v12 = 67109120;
  v90 = v12;
  *&v12 = 67109376;
  v91 = v12;
  *&v12 = 134218240;
  v89 = v12;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v15 = *(gLogObjects + 312);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_13();
      v15 = &_os_log_default;
      if (v16)
      {
        OUTLINED_FUNCTION_32_6(v16, v17, v18, v19, v20, v21, v22, v23, v87, v88, v89);
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v43, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, 0x12u);
        v15 = &_os_log_default;
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = v90;
      LODWORD(v93) = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "paramID: %d", buf, 8u);
    }

    if (ParamID > 0x11)
    {
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v24 = *(gLogObjects + 312);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_13();
        v24 = &_os_log_default;
        if (v25)
        {
          OUTLINED_FUNCTION_32_6(v25, v26, v27, v28, v29, v30, v31, v32, v87, v88, v89);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v47, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
          v24 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_40_7(MsgID, v34, v35, v36, v37, v38, v39, v40, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }

      goto LABEL_30;
    }

    if (!iAP2MsgIsDataVoid(NextParam))
    {
      break;
    }

    CFSetAddValue(Mutable, ParamID);
LABEL_30:
    v41 = OUTLINED_FUNCTION_21_1();
    NextParam = iAP2MsgGetNextParam(v41, v42, NextParam);
    if (!NextParam)
    {
      goto LABEL_31;
    }
  }

  v67 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v67))
  {
    v74 = iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_40_7(v74, v75, v76, v77, v78, v79, v80, v81, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v82, v83, v84, v85, v86, 0xEu);
  }

  v2 = 0;
  if (Mutable)
  {
LABEL_44:
    CFRelease(Mutable);
  }

  return v2;
}

uint64_t _stopCommunicationsUpdatesHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      v4 = Feature;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v5 = *(gLogObjects + 312);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v6, v7, v8, v9, v10, v11);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_38_3(v12, v13, v14, v15, v16);
      }

      v2 = 1;
      _removeSubscriberForSubFeature(v4, 1);
      *(v4 + 24) = 0;
      v17 = *(v4 + 16);
      if (v17)
      {
        CFRelease(v17);
        *(v4 + 16) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

id _initiateCallHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v7 = 0;
    v2 = 4;
    DataAsU8 = 3;
    *&v5 = 67109376;
    v68 = v5;
    *&v5 = 134218240;
    v67 = v5;
    while (2)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      switch(ParamID)
      {
        case 0:
          v10 = OUTLINED_FUNCTION_68_6();
          DataAsU8 = iAP2MsgGetDataAsU8(v10, v11);
          goto LABEL_20;
        case 1:
          if (v7)
          {
            CFRelease(v7);
          }

          v17 = OUTLINED_FUNCTION_68_6();
          v7 = iAP2MsgCopyDataAsCFString(v17, v18);
          goto LABEL_20;
        case 2:
          v12 = OUTLINED_FUNCTION_68_6();
          v2 = iAP2MsgGetDataAsU8(v12, v13);
          goto LABEL_20;
        case 3:
          v14 = OUTLINED_FUNCTION_68_6();
          iAP2MsgCopyDataAsCFString(v14, v15);
          OUTLINED_FUNCTION_51_3();
          if (!v16)
          {
            goto LABEL_20;
          }

          v56 = logObjectForModule_37();
          if (!OUTLINED_FUNCTION_13_9(v56))
          {
            goto LABEL_43;
          }

          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_57_5(MsgID, v59, v60, v61, v62, v63, v64, v65, v67, *(&v67 + 1), v68);
          LODWORD(v70) = 3;
          OUTLINED_FUNCTION_10_2();
          OUTLINED_FUNCTION_12_16();
          goto LABEL_42;
        default:
          v19 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v20 = *(gLogObjects + 312);
          }

          else
          {
            v20 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v67;
              v70 = v19;
              OUTLINED_FUNCTION_34_2();
              OUTLINED_FUNCTION_67_6();
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, 0x12u);
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_57_5(v21, v22, v23, v24, v25, v26, v27, v28, v67, *(&v67 + 1), v68);
            LODWORD(v70) = ParamID;
            OUTLINED_FUNCTION_10_2();
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
          }

LABEL_20:
          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
          if (NextParam)
          {
            continue;
          }

          if (DataAsU8 >= 3)
          {
            goto LABEL_28;
          }

          if (!DataAsU8)
          {
            if (v7 && (v2 - 4) > 0xFFFFFFFC)
            {
              v38 = platform_communications_initiateCallToDestination(v7, v2, 0);
              goto LABEL_44;
            }

            v39 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 40)
            {
              v40 = *(gLogObjects + 312);
            }

            else
            {
              v41 = OUTLINED_FUNCTION_27();
              if (v41)
              {
                OUTLINED_FUNCTION_3_0(v41, v42, v43, v44, v45, v46, v47, v48, v67);
                v71 = v39;
                OUTLINED_FUNCTION_13_16();
                _os_log_error_impl(v50, v51, v52, v53, v54, v55);
              }
            }

            if (OUTLINED_FUNCTION_27())
            {
              *buf = 138412546;
              v70 = v7;
              OUTLINED_FUNCTION_34_2();
              v71 = v2;
              OUTLINED_FUNCTION_13_16();
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          if (!v7 && v2 == 4)
          {
            if (DataAsU8 == 2)
            {
              return platform_communications_initiateRedial();
            }

            else
            {
              return platform_communications_initiateCallToVoicemail();
            }
          }

          v66 = logObjectForModule_37();
          if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          *buf = 138412802;
          v70 = v7;
          OUTLINED_FUNCTION_34_2();
          v71 = v2;
          v72 = 2112;
          v73 = 0;
          v32 = &_mh_execute_header;
          v33 = "Call type is not destination with destination ID: %@, service type: %d, addressBookID: %@ - ignoring message";
          v34 = buf;
          v35 = v66;
          v36 = OS_LOG_TYPE_ERROR;
          v37 = 28;
          break;
      }

      goto LABEL_42;
    }
  }

  v7 = 0;
  DataAsU8 = 3;
LABEL_28:
  v31 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_13_9(v31))
  {
    *buf = 67109120;
    LODWORD(v70) = DataAsU8;
    v32 = &_mh_execute_header;
    v33 = "Invalid call type: %d - ignoring message";
    v34 = buf;
    v35 = v2;
    v36 = OS_LOG_TYPE_ERROR;
    v37 = 8;
LABEL_42:
    _os_log_error_impl(v32, v35, v36, v33, v34, v37);
  }

LABEL_43:
  v38 = 0;
  v2 = 0;
  if (v7)
  {
LABEL_44:
    CFRelease(v7);
    return v38;
  }

  return v2;
}

id _swapCallHandler(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return platform_communications_swapCalls();
  }

  else
  {
    return 0;
  }
}

id _mergeCallHandler(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return platform_communications_mergeCalls();
  }

  else
  {
    return 0;
  }
}

uint64_t _stopListUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 6u);
      if (result)
      {
        v4 = result;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v5 = *(gLogObjects + 312);
        }

        else
        {
          v5 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v6, v7, v8, v9, v10, v11);
          }
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v12, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
        }

        _removeSubscriberForSubFeature(v4, 3);
        v18 = *(v4 + 32);
        v17 = v4 + 32;
        v16 = v18;
        *(v17 + 35) = 0;
        *(v17 + 14) = 0;
        *(v17 + 29) = 0;
        if (v18)
        {
          CFRelease(v16);
          *v17 = 0;
        }

        v19 = *(v17 + 16);
        if (v19)
        {
          CFRelease(v19);
        }

        *v17 = 0;
        *(v17 + 8) = 0;
        result = 1;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
      }
    }
  }

  return result;
}

void iap2_communications_callStateUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v24;
  if (v22)
  {
    v25 = v23;
    if (v23)
    {
      OUTLINED_FUNCTION_50(v22);
      if (v26)
      {
        v27 = &audioProductCerts_endpoint_publish_onceToken;
        v28 = gLogObjects;
        v29 = gNumLogObjects;
        v30 = &off_1001C3000;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v31 = *(gLogObjects + 312);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          *v152 = 134218240;
          *&v152[4] = v28;
          OUTLINED_FUNCTION_17_0();
          v153 = v29;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v108, v109, v110, v111, v112, v113);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v34 = *(v20 + 8);
          *v152 = 138412290;
          *&v152[4] = v34;
          OUTLINED_FUNCTION_43_7(&_mh_execute_header, v32, v33, "Received call state update for endpoint: %@", v152);
        }

        v35 = OUTLINED_FUNCTION_34_4();
        Feature = iap2_feature_getFeature(v35, v36);
        if (Feature)
        {
          v38 = Feature;
          if (*(Feature + 10) == 1)
          {
            iAP2MsgInit(v20 + 120, 16725, *(v20 + 192), 0xFFFF, 0, 0);
            if (*v38)
            {
              Count = CFSetGetCount(*v38);
              v148 = &v132;
              OUTLINED_FUNCTION_63_1();
              __chkstk_darwin(v40);
              OUTLINED_FUNCTION_27_8();
              v44 = (v42 - v43);
              if (v45)
              {
                memset((v42 - v43), 170, v41);
              }

              CFSetGetValues(*v38, v44);
              v46 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 40)
              {
                v47 = *(gLogObjects + 312);
              }

              else if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_6_32(3.8521e-34);
                v153 = v46;
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v114, v115, v116, v117, v118, v119);
              }

              if (OUTLINED_FUNCTION_99())
              {
                RawValuesString = CFSetCreateRawValuesString(*v38, 0);
                v49 = gLogObjects;
                v50 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 40)
                {
                  v51 = *(gLogObjects + 312);
                }

                else
                {
                  v51 = &_os_log_default;
                  if (OUTLINED_FUNCTION_11())
                  {
                    *v152 = 134218240;
                    *&v152[4] = v49;
                    OUTLINED_FUNCTION_17_0();
                    v153 = v50;
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v120, v121, v122, v123, v124, v125);
                  }
                }

                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  *v152 = 138412290;
                  *&v152[4] = RawValuesString;
                  OUTLINED_FUNCTION_30_7(&_mh_execute_header, v51, v52, "callStateUpdates.subscriptionList:\n%@", v152);
                }

                v27 = &audioProductCerts_endpoint_publish_onceToken;
                if (RawValuesString)
                {
                  CFRelease(RawValuesString);
                }

                v53 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 40)
                {
                  v54 = *(gLogObjects + 312);
                  v30 = &off_1001C3000;
                }

                else
                {
                  v54 = &_os_log_default;
                  v30 = &off_1001C3000;
                  if (OUTLINED_FUNCTION_19_0())
                  {
                    OUTLINED_FUNCTION_6_32(3.8521e-34);
                    v153 = v53;
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v126, v127, v128, v129, v130, v131);
                  }
                }

                if (OUTLINED_FUNCTION_99())
                {
                  *v152 = 138412290;
                  *&v152[4] = v25;
                  OUTLINED_FUNCTION_30_7(&_mh_execute_header, v54, v55, "callState:\n%@", v152);
                }
              }

              Value = CFDictionaryGetValue(v25, @"Status");
              if (Value)
              {
                v151 = -1431655766;
                v57 = CFNumberGetValue(Value, kCFNumberIntType, &v151);
                v58 = v57 != 0;
                if (v57)
                {
                  v59 = CFDictionaryGetValue(v25, @"CallUUID");
                  v60 = CFDictionaryGetValue(v25, @"IsConferenced");
                  v149 = v60 && CFBooleanGetValue(v60) != 0;
                  if (Count >= 1)
                  {
                    v142 = v58;
                    v62 = 0;
                    v141 = @"StartTimestamp";
                    v137 = @"DisconnectReason";
                    v136 = @"ConferenceGroup";
                    v140 = @"Service";
                    v139 = @"Label";
                    v138 = @"AddressBookID";
                    v147 = @"Direction";
                    v146 = @"DisplayName";
                    v145 = @"RemoteID";
                    *&v61 = 67109376;
                    v135 = v61;
                    *&v61 = *(v30 + 71);
                    v134 = v61;
                    v143 = v38;
                    v144 = v20;
                    while (2)
                    {
                      v63 = *v44++;
                      switch(v63)
                      {
                        case 0:
                          if (v59 && CFStringGetLength(v59) > 0 || (OUTLINED_FUNCTION_72_4(), v64))
                          {
                            if (CFDictionaryGetValue(v25, v145))
                            {
                              v65 = OUTLINED_FUNCTION_8();
                              v68 = 0;
                              goto LABEL_95;
                            }

                            v94 = OUTLINED_FUNCTION_6_11();
                            v96 = 0;
                            goto LABEL_110;
                          }

                          goto LABEL_131;
                        case 1:
                          if (v59 && CFStringGetLength(v59) > 0 || (OUTLINED_FUNCTION_72_4(), v64))
                          {
                            if (CFDictionaryGetValue(v25, v146))
                            {
                              v65 = OUTLINED_FUNCTION_8();
                              v68 = 1;
                              goto LABEL_95;
                            }

                            v94 = OUTLINED_FUNCTION_6_11();
                            v96 = 1;
                            goto LABEL_110;
                          }

                          goto LABEL_131;
                        case 2:
                          v73 = v151;
                          if (*(v38 + 8) == 1)
                          {
                            v74 = v25;
                            if ((v151 - 1) > 5)
                            {
                              v75 = 0;
                            }

                            else
                            {
                              v75 = dword_1001C4008[v151 - 1];
                            }

                            v97 = v27[491];
                            v98 = gNumLogObjects;
                            if (v97 && gNumLogObjects >= 40)
                            {
                              v99 = *(v97 + 312);
                            }

                            else
                            {
                              v99 = &_os_log_default;
                              if (OUTLINED_FUNCTION_114())
                              {
                                OUTLINED_FUNCTION_9_23(&a15);
                                v153 = v98;
                                OUTLINED_FUNCTION_62_2();
                                _os_log_error_impl(v100, v101, v102, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v103, 0x12u);
                              }
                            }

                            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
                            {
                              OUTLINED_FUNCTION_25_3(&a17);
                              *&v152[4] = v73;
                              OUTLINED_FUNCTION_66_3();
                              *&v152[10] = v75;
                              _os_log_debug_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEBUG, "Converted callStatus %d, to legacyCallStatus: %d", v152, 0xEu);
                            }

                            v25 = v74;
                            v38 = v143;
                            v20 = v144;
                            v27 = &audioProductCerts_endpoint_publish_onceToken;
                          }

                          else
                          {
                            LOBYTE(v75) = v151;
                          }

                          v90 = v20 + 120;
                          v93 = v75;
                          v91 = 0;
                          v92 = 2;
                          goto LABEL_128;
                        case 3:
                          if (!v59 || CFStringGetLength(v59) <= 0)
                          {
                            OUTLINED_FUNCTION_72_4();
                            if (!v64)
                            {
                              goto LABEL_131;
                            }
                          }

                          v81 = CFDictionaryGetValue(v25, v147);
                          if (v81)
                          {
                            v150 = -1431655766;
                            if (!CFNumberGetValue(v81, kCFNumberIntType, &v150))
                            {
                              goto LABEL_131;
                            }

                            v82 = v150;
                            if (*(v38 + 8) == 1)
                            {
                              v83 = v25;
                              v84 = 2 * (v150 != 1);
                              if (v150 == 2)
                              {
                                v84 = 1;
                              }

                              v133 = v84;
                              v85 = v27;
                              v86 = v27[491];
                              v87 = gNumLogObjects;
                              if (v86 && gNumLogObjects >= 40)
                              {
                                v88 = *(v86 + 312);
                              }

                              else
                              {
                                v88 = &_os_log_default;
                                if (OUTLINED_FUNCTION_114())
                                {
                                  OUTLINED_FUNCTION_9_23(&a15);
                                  v153 = v87;
                                  OUTLINED_FUNCTION_62_2();
                                  _os_log_error_impl(v104, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v107, 0x12u);
                                }
                              }

                              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                              {
                                OUTLINED_FUNCTION_25_3(&a17);
                                *&v152[4] = v82;
                                OUTLINED_FUNCTION_66_3();
                                LOBYTE(v82) = v133;
                                *&v152[10] = v133;
                                _os_log_debug_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEBUG, "Converted direction %d, to legacyDirection: %d", v152, 0xEu);
                                v25 = v83;
                                v27 = v85;
                                v38 = v143;
                                v20 = v144;
                              }

                              else
                              {
                                v25 = v83;
                                v27 = v85;
                                v38 = v143;
                                v20 = v144;
                                LOBYTE(v82) = v133;
                              }
                            }

                            v90 = v20 + 120;
                            v93 = v82;
                            v91 = 0;
                            v92 = 3;
                          }

                          else
                          {
                            v90 = OUTLINED_FUNCTION_6_11();
                            v92 = 3;
                            v93 = 2;
                          }

                          goto LABEL_128;
                        case 4:
                          if (v59 && CFStringGetLength(v59) >= 1)
                          {
                            v65 = OUTLINED_FUNCTION_6_11();
                            v68 = 4;
                            v67 = v59;
LABEL_95:
                            v80 = iAP2MsgAddCFStringParam(v65, v66, v68, v67);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_72_4();
                            if (!v64)
                            {
                              goto LABEL_131;
                            }

                            v94 = OUTLINED_FUNCTION_6_11();
                            v96 = 4;
LABEL_110:
                            v80 = iAP2MsgAddStringParam(v94, v95, v96, "");
                          }

LABEL_129:
                          if (v80)
                          {
                            ++v62;
                          }

LABEL_131:
                          if (--Count)
                          {
                            continue;
                          }

                          if (v62)
                          {
                            OUTLINED_FUNCTION_53_2();
                          }

                          break;
                        case 6:
                          if (!v59 || CFStringGetLength(v59) < 1)
                          {
                            goto LABEL_131;
                          }

                          CFDictionaryGetValue(v25, v138);
                          v65 = OUTLINED_FUNCTION_8();
                          v68 = 6;
                          goto LABEL_95;
                        case 7:
                          if (!v59 || CFStringGetLength(v59) < 1)
                          {
                            goto LABEL_131;
                          }

                          CFDictionaryGetValue(v25, v139);
                          v65 = OUTLINED_FUNCTION_8();
                          v68 = 7;
                          goto LABEL_95;
                        case 8:
                          if (!v59 || CFStringGetLength(v59) < 1)
                          {
                            goto LABEL_131;
                          }

                          CFDictionaryGetValue(v25, v140);
                          v69 = OUTLINED_FUNCTION_8();
                          v72 = 8;
                          goto LABEL_100;
                        case 9:
                          if (!v59 || CFStringGetLength(v59) < 1)
                          {
                            goto LABEL_131;
                          }

                          v90 = OUTLINED_FUNCTION_6_11();
                          v92 = 9;
                          v93 = v149;
                          goto LABEL_128;
                        case 10:
                          if (!v59)
                          {
                            goto LABEL_131;
                          }

                          v89 = CFStringGetLength(v59) > 0;
                          if (!v89 || !v149)
                          {
                            goto LABEL_131;
                          }

                          if (CFDictionaryGetValue(v25, v136))
                          {
                            v69 = OUTLINED_FUNCTION_6_11();
                            v72 = 10;
LABEL_100:
                            v80 = iAP2MsgAddCFU8Param(v69, v70, v72, v71);
                          }

                          else
                          {
                            v90 = OUTLINED_FUNCTION_6_11();
                            v92 = 10;
LABEL_128:
                            v80 = iAP2MsgAddU8Param(v90, v91, v92, v93);
                          }

                          goto LABEL_129;
                        case 11:
                          if (!v59 || CFStringGetLength(v59) < 1 || v151)
                          {
                            goto LABEL_131;
                          }

                          CFDictionaryGetValue(v25, v137);
                          v69 = OUTLINED_FUNCTION_8();
                          v72 = 11;
                          goto LABEL_100;
                        case 12:
                          if (!v59)
                          {
                            goto LABEL_131;
                          }

                          if (CFStringGetLength(v59) < 1)
                          {
                            goto LABEL_131;
                          }

                          v76 = CFDictionaryGetValue(v25, v141);
                          if (!v76)
                          {
                            goto LABEL_131;
                          }

                          *v152 = 0;
                          if (!CFNumberGetValue(v76, kCFNumberLongLongType, v152) || !*v152)
                          {
                            goto LABEL_131;
                          }

                          v77 = OUTLINED_FUNCTION_6_11();
                          v80 = iAP2MsgAddU64Param(v77, v78, 12, v79);
                          goto LABEL_129;
                        default:
                          goto LABEL_131;
                      }

                      break;
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

  OUTLINED_FUNCTION_29();
}

void iap2_communications_communicationsUpdateHandler()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v2 = v1;
    v3 = v0;
    if (v1)
    {
      if (*v0)
      {
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v6 = *(gLogObjects + 312);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          v82 = 134218240;
          v83 = v4;
          v84 = 1024;
          v85 = v5;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v44, v45, v46, v47, v48, v49);
        }

        if (OUTLINED_FUNCTION_82())
        {
          v9 = v3[1];
          v82 = 138412290;
          v83 = v9;
          OUTLINED_FUNCTION_43_7(&_mh_execute_header, v7, v8, "Received communications update for endpoint: %@", &v82);
        }

        v10 = OUTLINED_FUNCTION_34_4();
        Feature = iap2_feature_getFeature(v10, v11);
        if (Feature)
        {
          v13 = Feature;
          if (*(Feature + 24) == 1)
          {
            iAP2MsgInit((v3 + 15), 16728, v3[24], 0xFFFF, 0, 0);
            v14 = *(v13 + 16);
            if (v14)
            {
              Count = CFSetGetCount(v14);
              v81 = &v68;
              OUTLINED_FUNCTION_63_1();
              __chkstk_darwin(v16);
              OUTLINED_FUNCTION_27_8();
              v20 = (v18 - v19);
              if (v21)
              {
                memset((v18 - v19), 170, v17);
              }

              CFSetGetValues(*(v13 + 16), v20);
              if (gLogObjects && gNumLogObjects >= 40)
              {
                v22 = *(gLogObjects + 312);
              }

              else if (OUTLINED_FUNCTION_19_0())
              {
                OUTLINED_FUNCTION_52_6(3.8521e-34);
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v50, v51, v52, v53, v54, v55);
              }

              if (!OUTLINED_FUNCTION_99())
              {
                goto LABEL_37;
              }

              RawValuesString = CFSetCreateRawValuesString(*(v13 + 16), 0);
              if (gLogObjects && gNumLogObjects >= 40)
              {
                v24 = *(gLogObjects + 312);
              }

              else
              {
                v24 = &_os_log_default;
                if (OUTLINED_FUNCTION_19_0())
                {
                  OUTLINED_FUNCTION_52_6(3.8521e-34);
                  OUTLINED_FUNCTION_4_21();
                  _os_log_error_impl(v56, v57, v58, v59, v60, v61);
                }
              }

              if (OUTLINED_FUNCTION_99())
              {
                v82 = 138412290;
                v83 = RawValuesString;
                OUTLINED_FUNCTION_30_7(&_mh_execute_header, v24, v25, "communicationsUpdates.subscriptionList:\n%@", &v82);
                if (!RawValuesString)
                {
LABEL_30:
                  v26 = gLogObjects;
                  v27 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 40)
                  {
                    v28 = *(gLogObjects + 312);
                  }

                  else
                  {
                    v28 = &_os_log_default;
                    if (OUTLINED_FUNCTION_18())
                    {
                      v82 = 134218240;
                      v83 = v26;
                      v84 = 1024;
                      v85 = v27;
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v62, v63, v64, v65, v66, v67);
                    }
                  }

                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                  {
                    v82 = 138412290;
                    v83 = v2;
                    OUTLINED_FUNCTION_30_7(&_mh_execute_header, v28, v29, "commStatus:\n%@", &v82);
                  }

LABEL_37:
                  if (Count >= 1)
                  {
                    v30 = 0;
                    v80 = @"HoldAvailable";
                    v79 = @"MergeAvailable";
                    v78 = @"SwapAvailable";
                    v77 = @"HoldAndAcceptAvailable";
                    v76 = @"EndAndAcceptAvailable";
                    v75 = @"InitiateCallAvailable";
                    v74 = @"NewVoicemailCount";
                    v73 = @"CurrentCallCount";
                    v72 = @"MuteStatus";
                    v71 = @"FaceTimeVideoEnabled";
                    v70 = @"FaceTimeAudioEnabled";
                    v69 = @"TelephonyEnabled";
                    v68 = @"CellularSupported";
                    do
                    {
                      v31 = *v20++;
                      switch(v31)
                      {
                        case 0:
                          CFDictionaryGetValue(v2, @"SignalStrength");
                          v32 = OUTLINED_FUNCTION_8();
                          v35 = 0;
                          goto LABEL_57;
                        case 1:
                          CFDictionaryGetValue(v2, @"RegistrationStatus");
                          v32 = OUTLINED_FUNCTION_8();
                          v35 = 1;
                          goto LABEL_57;
                        case 2:
                          CFDictionaryGetValue(v2, @"AirplaneModeStatus");
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 2;
                          goto LABEL_59;
                        case 3:
                          CFDictionaryGetValue(v2, @"TTYStatus");
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 3;
                          goto LABEL_59;
                        case 4:
                          CFDictionaryGetValue(v2, @"CarrierName");
                          v40 = OUTLINED_FUNCTION_8();
                          v43 = iAP2MsgAddCFStringParam(v40, v41, 4, v42);
                          goto LABEL_60;
                        case 5:
                          CFDictionaryGetValue(v2, v68);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 5;
                          goto LABEL_59;
                        case 6:
                          CFDictionaryGetValue(v2, v69);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 6;
                          goto LABEL_59;
                        case 7:
                          CFDictionaryGetValue(v2, v70);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 7;
                          goto LABEL_59;
                        case 8:
                          CFDictionaryGetValue(v2, v71);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 8;
                          goto LABEL_59;
                        case 9:
                          CFDictionaryGetValue(v2, v72);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 9;
                          goto LABEL_59;
                        case 10:
                          CFDictionaryGetValue(v2, v73);
                          v32 = OUTLINED_FUNCTION_8();
                          v35 = 10;
                          goto LABEL_57;
                        case 11:
                          CFDictionaryGetValue(v2, v74);
                          v32 = OUTLINED_FUNCTION_8();
                          v35 = 11;
LABEL_57:
                          v43 = iAP2MsgAddCFU8Param(v32, v33, v35, v34);
                          goto LABEL_60;
                        case 12:
                          CFDictionaryGetValue(v2, v75);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 12;
                          goto LABEL_59;
                        case 13:
                          CFDictionaryGetValue(v2, v76);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 13;
                          goto LABEL_59;
                        case 14:
                          CFDictionaryGetValue(v2, v77);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 14;
                          goto LABEL_59;
                        case 15:
                          CFDictionaryGetValue(v2, v78);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 15;
                          goto LABEL_59;
                        case 16:
                          CFDictionaryGetValue(v2, v79);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 16;
                          goto LABEL_59;
                        case 17:
                          CFDictionaryGetValue(v2, v80);
                          v36 = OUTLINED_FUNCTION_8();
                          v39 = 17;
LABEL_59:
                          v43 = iAP2MsgAddCFBooleanParam(v36, v37, v39, v38);
LABEL_60:
                          if (v43)
                          {
                            ++v30;
                          }

                          break;
                        default:
                          break;
                      }

                      --Count;
                    }

                    while (Count);
                    if (v30)
                    {
                      OUTLINED_FUNCTION_53_2();
                    }
                  }

                  goto LABEL_65;
                }
              }

              else if (!RawValuesString)
              {
                goto LABEL_30;
              }

              CFRelease(RawValuesString);
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

LABEL_65:
  OUTLINED_FUNCTION_29();
}

void iap2_communications_recentsListUpdateHandler(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v6 = *(gLogObjects + 312);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *v22 = 134218240;
      *&v22[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v22[14] = v5;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v16, v17, v18, v19, v20, v21);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v9 = a1[1];
      *v22 = 138412290;
      *&v22[4] = v9;
      OUTLINED_FUNCTION_43_7(&_mh_execute_header, v7, v8, "Received recents list update for endpoint: %@", v22);
    }

    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      if ((*(Feature + 42) & 1) == 0)
      {
        _recentsListUpdateHandler(a1, a2, 0, v11, v12, v13, v14, v15, *v22, *&v22[8], *&v22[16], v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
      }
    }
  }
}

void _recentsListUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v23;
  if (!v22)
  {
    goto LABEL_121;
  }

  OUTLINED_FUNCTION_50(v22);
  if (!v26)
  {
    goto LABEL_121;
  }

  v27 = v25;
  v28 = v24;
  v29 = OUTLINED_FUNCTION_34_4();
  Feature = iap2_feature_getFeature(v29, v30);
  if (!Feature)
  {
    goto LABEL_121;
  }

  v32 = Feature;
  if (*(Feature + 67) != 1)
  {
    goto LABEL_121;
  }

  if (*(Feature + 66))
  {
    v33 = &audioProductCerts_endpoint_publish_onceToken;
    v34 = &audioProductCerts_endpoint_publish_onceToken;
    v35 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v36 = *(gLogObjects + 312);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_6_32(3.8521e-34);
      *v192 = v35;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v64, v65, v66, v67, v68, v69);
    }

    v37 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = "YES";
      if (!v28)
      {
        v39 = "NO";
      }

      v190 = 136315138;
      *v191 = v39;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_73_0(v40, v41, v42, v43, v44);
    }

    v45 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v46 = *(gLogObjects + 312);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_6_32(3.8521e-34);
      *v192 = v45;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v70, v71, v72, v73, v74, v75);
    }

    v47 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v47, v48))
    {
      if (v28)
      {
        Count = CFArrayGetCount(v28);
      }

      else
      {
        Count = 0;
      }

      v190 = 134217984;
      *v191 = Count;
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_73_0(v50, v51, v52, v53, v54);
    }

    if (!v28)
    {
      OUTLINED_FUNCTION_3_32();
      v55 = OUTLINED_FUNCTION_6_11();
      if (iAP2MsgAddU8Param(v55, v56, 0, 0))
      {
        OUTLINED_FUNCTION_53_2();
      }

      goto LABEL_121;
    }

    v57 = _calculateListCap_0(v20, v32, v28, 0);
    OUTLINED_FUNCTION_3_32();
    v58 = OUTLINED_FUNCTION_6_11();
    v60 = iAP2MsgAddU8Param(v58, v59, 0, 1);
    v61 = v60;
    if (*(v32 + 44) == 1)
    {
      v62 = OUTLINED_FUNCTION_6_11();
      if (!(iAP2MsgAddU16Param(v62, v63, 2, v57) | v61))
      {
        goto LABEL_33;
      }
    }

    else if (!v60)
    {
LABEL_33:
      if (*(v32 + 45) != 1)
      {
        goto LABEL_121;
      }

      v171 = v57;
      CFSetGetCount(*(v32 + 32));
      v167 = v166;
      OUTLINED_FUNCTION_63_1();
      __chkstk_darwin(v76);
      OUTLINED_FUNCTION_27_8();
      v80 = (v78 - v79);
      v179 = v81;
      if (v81)
      {
        memset((v78 - v79), 170, v77);
      }

      v82 = *(v32 + 32);
      v173 = v80;
      CFSetGetValues(v82, v80);
      v83 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v84 = *(gLogObjects + 312);
      }

      else
      {
        v84 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_6_32(3.8521e-34);
          *v192 = v83;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v146, v147, v148, v149, v150, v151);
        }
      }

      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_50;
      }

      RawValuesString = CFSetCreateRawValuesString(*(v32 + 32), 0);
      v86 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 40)
      {
        v87 = *(gLogObjects + 312);
      }

      else
      {
        v87 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          OUTLINED_FUNCTION_6_32(3.8521e-34);
          *v192 = v86;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v160, v161, v162, v163, v164, v165);
        }
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
      {
        v190 = 138412290;
        *v191 = RawValuesString;
        OUTLINED_FUNCTION_33_9();
        OUTLINED_FUNCTION_30_7(v152, v153, v154, v155, v156);
        if (!RawValuesString)
        {
          goto LABEL_50;
        }
      }

      else if (!RawValuesString)
      {
LABEL_50:
        v177 = _iAP2MessageCutoffSize_0(v20);
        OUTLINED_FUNCTION_3_32();
        if (!v171)
        {
          v174 = 1;
          goto LABEL_121;
        }

        v89 = 0;
        v172 = 0;
        v90 = 0;
        v188 = @"Occurrences";
        v180 = @"Duration";
        v187 = @"UnixTimestamp";
        v186 = @"Type";
        v168 = @"Service";
        v185 = @"AddressBookID";
        v184 = @"Label";
        v175 = v171 - 1;
        v170 = v175;
        v183 = @"DisplayName";
        v178 = v171;
        v182 = @"RemoteID";
        *&v88 = 67109120;
        v166[0] = v88;
        *&v88 = 134218240;
        v166[2] = v88;
        *&v88 = 67109376;
        v166[1] = v88;
        *&v88 = 67109632;
        v169 = v88;
        v174 = 1;
        v176 = v28;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v28, v89);
          if (ValueAtIndex)
          {
            v92 = ValueAtIndex;
            v93 = iAP2MsgAddGroupParam((v20 + 15), 1);
            if (v93)
            {
              ++v90;
            }

            v181 = v90;
            if (v179 >= 1)
            {
              v94 = v93;
              v95 = v179;
              v96 = v173;
              while (2)
              {
                v97 = *v96++;
                switch(v97)
                {
                  case 0:
                    iAP2MsgAddU16Param((v20 + 15), v94, 0, v89);
                    goto LABEL_86;
                  case 1:
                    CFDictionaryGetValue(v92, v182);
                    v101 = OUTLINED_FUNCTION_15_21();
                    v104 = 1;
                    goto LABEL_68;
                  case 2:
                    CFDictionaryGetValue(v92, v183);
                    v101 = OUTLINED_FUNCTION_15_21();
                    v104 = 2;
                    goto LABEL_68;
                  case 3:
                    CFDictionaryGetValue(v92, v184);
                    v101 = OUTLINED_FUNCTION_15_21();
                    v104 = 3;
                    goto LABEL_68;
                  case 4:
                    CFDictionaryGetValue(v92, v185);
                    v101 = OUTLINED_FUNCTION_15_21();
                    v104 = 4;
LABEL_68:
                    iAP2MsgAddCFStringParam(v101, v102, v104, v103);
                    goto LABEL_86;
                  case 5:
                    Value = CFDictionaryGetValue(v92, v168);
                    v124 = _convertACCCallServiceToiAP2CallService(Value);
                    v114 = (v20 + 15);
                    v117 = v124;
                    v115 = v94;
                    v116 = 5;
                    goto LABEL_85;
                  case 6:
                    v105 = CFDictionaryGetValue(v92, v186);
                    v189 = 0;
                    if (v105 && CFNumberGetValue(v105, kCFNumberIntType, &v189))
                    {
                      if ((v189 - 1) >= 3)
                      {
                        v118 = v27;
                        v119 = v34;
                        v120 = v33[491];
                        v121 = *(v119 + 984);
                        if (v120 && v121 >= 40)
                        {
                          v122 = *(v120 + 312);
                        }

                        else if (OUTLINED_FUNCTION_114())
                        {
                          OUTLINED_FUNCTION_9_23(&a9);
                          *v192 = v121;
                          OUTLINED_FUNCTION_62_2();
                          _os_log_error_impl(v129, v130, v131, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v132, 0x12u);
                        }

                        if (OUTLINED_FUNCTION_114())
                        {
                          v190 = v166[0];
                          *v191 = v189;
                          OUTLINED_FUNCTION_62_2();
                          _os_log_error_impl(v125, v126, v127, "Invalid ACCCommunications_ListUpdate_Recents_CallType_t: %d!", v128, 8u);
                        }

                        v106 = 0;
                        v27 = v118;
                        v33 = &audioProductCerts_endpoint_publish_onceToken;
                        v34 = &audioProductCerts_endpoint_publish_onceToken;
                      }

                      else
                      {
                        v106 = v189;
                      }
                    }

                    else
                    {
                      v106 = 0;
                    }

                    v114 = (v20 + 15);
                    v117 = v106;
                    v115 = v94;
                    v116 = 6;
                    goto LABEL_85;
                  case 7:
                    CFDictionaryGetValue(v92, v187);
                    v98 = OUTLINED_FUNCTION_15_21();
                    iAP2MsgAddCFU64Param(v98, v99, 7, v100);
                    goto LABEL_86;
                  case 8:
                    LOBYTE(v190) = 1;
                    if (!v27 || (v110 = CFDictionaryGetValue(v92, v188)) == 0 || (CFNumberGetValue(v110, kCFNumberCharType, &v190), v190 == 1))
                    {
                      CFDictionaryGetValue(v92, v180);
                      v111 = OUTLINED_FUNCTION_15_21();
                      iAP2MsgAddCFU32Param(v111, v112, 8, v113);
                    }

                    goto LABEL_86;
                  case 9:
                    if (v27)
                    {
                      CFDictionaryGetValue(v92, v188);
                      v107 = OUTLINED_FUNCTION_15_21();
                      iAP2MsgAddCFU8Param(v107, v108, 9, v109);
                    }

                    else
                    {
                      v114 = (v20 + 15);
                      v115 = v94;
                      v116 = 9;
                      v117 = 1;
LABEL_85:
                      iAP2MsgAddU8Param(v114, v115, v116, v117);
                    }

LABEL_86:
                    if (!--v95)
                    {
                      break;
                    }

                    continue;
                  default:
                    goto LABEL_86;
                }

                break;
              }
            }

            MsgLen = iAP2MsgGetMsgLen((v20 + 15));
            v134 = v33[491];
            v135 = *(v34 + 984);
            if (v134 && v135 >= 40)
            {
              v136 = *(v134 + 312);
            }

            else
            {
              v136 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_25_3(&a9);
                *v191 = v134;
                OUTLINED_FUNCTION_17_0();
                *v192 = v135;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v142, v143, v144, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v145, 0x12u);
              }
            }

            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_25_3(&v193);
              *v191 = MsgLen;
              OUTLINED_FUNCTION_66_3();
              *&v191[6] = v177;
              _os_log_debug_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", &v190, 0xEu);
            }

            v28 = v176;
            v137 = MsgLen > v177 || v89 == v175;
            v90 = v181;
            if (v137)
            {
              v138 = v33[491];
              v139 = gNumLogObjects;
              if (v138 && gNumLogObjects >= 40)
              {
                v140 = *(v138 + 312);
              }

              else
              {
                v140 = &_os_log_default;
                if (OUTLINED_FUNCTION_19_0())
                {
                  OUTLINED_FUNCTION_9_23(&a9);
                  *v192 = v139;
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v190, 0x12u);
                }
              }

              if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
              {
                v141 = v172 + 1;
                OUTLINED_FUNCTION_30_9(v172, *&v169);
                *&v192[2] = v171;
                _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_INFO, "Sending ListUpdate message (RecentsList %d, entry: %d/%d)", &v190, 0x14u);
                v172 = v141;
              }

              v33 = &audioProductCerts_endpoint_publish_onceToken;
              v34 = &audioProductCerts_endpoint_publish_onceToken;
              if (!v90)
              {
                goto LABEL_112;
              }

              v174 &= OUTLINED_FUNCTION_53_2();
              if (v89 < v170)
              {
                OUTLINED_FUNCTION_3_32();
LABEL_112:
                v90 = 0;
              }
            }

            else
            {
              v34 = &audioProductCerts_endpoint_publish_onceToken;
            }
          }

          if (++v89 == v178)
          {
            goto LABEL_121;
          }
        }
      }

      CFRelease(RawValuesString);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_33;
  }

  v157 = logObjectForModule_37();
  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v190) = 0;
    OUTLINED_FUNCTION_74_3(&_mh_execute_header, v158, v159, "Accessory is not paired to CarPlay, list updates are unavailable!");
  }

LABEL_121:
  OUTLINED_FUNCTION_29();
}

void iap2_communications_recentsListUpdateCoalescedHandler(void *a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    v4 = gLogObjects;
    v5 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v6 = *(gLogObjects + 312);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *v22 = 134218240;
      *&v22[4] = v4;
      OUTLINED_FUNCTION_3();
      *&v22[14] = v5;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v16, v17, v18, v19, v20, v21);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v9 = a1[1];
      *v22 = 138412290;
      *&v22[4] = v9;
      OUTLINED_FUNCTION_43_7(&_mh_execute_header, v7, v8, "Received recents list update (coalesced) for endpoint: %@", v22);
    }

    Feature = iap2_feature_getFeature(a1, 6u);
    if (Feature)
    {
      if (*(Feature + 42) == 1)
      {
        _recentsListUpdateHandler(a1, a2, 1, v11, v12, v13, v14, v15, *v22, *&v22[8], *&v22[16], v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
      }
    }
  }
}

void iap2_communications_favoritesListUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v23;
  if (!v22)
  {
    goto LABEL_98;
  }

  OUTLINED_FUNCTION_50(v22);
  if (!v25)
  {
    goto LABEL_98;
  }

  v26 = v24;
  v27 = OUTLINED_FUNCTION_34_4();
  Feature = iap2_feature_getFeature(v27, v28);
  if (!Feature)
  {
    goto LABEL_98;
  }

  v30 = Feature;
  if (*(Feature + 67) != 1)
  {
    goto LABEL_98;
  }

  if (*(Feature + 66))
  {
    v31 = &audioProductCerts_endpoint_publish_onceToken;
    if (gLogObjects && gNumLogObjects >= 40)
    {
      v32 = *(gLogObjects + 312);
    }

    else
    {
      v32 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_10_19(3.8521e-34);
        OUTLINED_FUNCTION_13_16();
        _os_log_error_impl(v48, v49, v50, v51, v52, v53);
      }
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = "YES";
      if (!v26)
      {
        v34 = "NO";
      }

      v132 = 136315138;
      *v133 = v34;
      OUTLINED_FUNCTION_73_0(&_mh_execute_header, v32, v33, "favoritesListAvailable: %s", &v132);
    }

    if (gLogObjects && gNumLogObjects >= 40)
    {
      v35 = *(gLogObjects + 312);
    }

    else
    {
      v35 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_10_19(3.8521e-34);
        OUTLINED_FUNCTION_13_16();
        _os_log_error_impl(v54, v55, v56, v57, v58, v59);
      }
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      if (v26)
      {
        Count = CFArrayGetCount(v26);
      }

      else
      {
        Count = 0;
      }

      v132 = 134217984;
      *v133 = Count;
      OUTLINED_FUNCTION_73_0(&_mh_execute_header, v35, v36, "favoritesListCount: %ld", &v132);
    }

    if (!v26)
    {
      OUTLINED_FUNCTION_3_32();
      v38 = OUTLINED_FUNCTION_6_11();
      if (iAP2MsgAddU8Param(v38, v39, 5, 0))
      {
        OUTLINED_FUNCTION_53_2();
      }

      goto LABEL_98;
    }

    v40 = _calculateListCap_0(v20, v30, v26, 1);
    OUTLINED_FUNCTION_3_32();
    v41 = OUTLINED_FUNCTION_6_11();
    v43 = iAP2MsgAddU8Param(v41, v42, 5, 1);
    v44 = v43;
    if (*(v30 + 59) == 1)
    {
      v45 = OUTLINED_FUNCTION_6_11();
      v46 = v40;
      if (!(iAP2MsgAddU16Param(v45, v47, 7, v40) | v44))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v46 = v40;
      if (!v43)
      {
LABEL_33:
        if (*(v30 + 60) != 1)
        {
          goto LABEL_98;
        }

        CFSetGetCount(*(v30 + 48));
        v117 = v116;
        OUTLINED_FUNCTION_63_1();
        __chkstk_darwin(v60);
        OUTLINED_FUNCTION_27_8();
        v64 = (v62 - v63);
        v127 = v65;
        if (v65)
        {
          memset((v62 - v63), 170, v61);
        }

        v66 = *(v30 + 48);
        v123 = v64;
        CFSetGetValues(v66, v64);
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v67 = *(gLogObjects + 312);
        }

        else
        {
          v67 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_10_19(3.8521e-34);
            OUTLINED_FUNCTION_13_16();
            _os_log_error_impl(v101, v102, v103, v104, v105, v106);
          }
        }

        if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

        RawValuesString = CFSetCreateRawValuesString(*(v30 + 48), 0);
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v69 = *(gLogObjects + 312);
        }

        else
        {
          v69 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_10_19(3.8521e-34);
            OUTLINED_FUNCTION_13_16();
            _os_log_error_impl(v110, v111, v112, v113, v114, v115);
          }
        }

        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v132 = 138412290;
          *v133 = RawValuesString;
          OUTLINED_FUNCTION_30_7(&_mh_execute_header, v69, v70, "subscriptionListString:\n%@", &v132);
          if (!RawValuesString)
          {
            goto LABEL_50;
          }
        }

        else if (!RawValuesString)
        {
LABEL_50:
          v125 = _iAP2MessageCutoffSize_0(v20);
          OUTLINED_FUNCTION_3_32();
          if (!v46)
          {
            goto LABEL_98;
          }

          v72 = 0;
          v122 = 0;
          v128 = 0;
          v118 = @"Service";
          v131 = @"AddressBookID";
          v130 = @"Label";
          v129 = @"DisplayName";
          v124 = v46 - 1;
          v121 = v124;
          v120 = v46;
          v126 = v46;
          v73 = 1;
          *&v71 = 67109376;
          v116[1] = v71;
          *&v71 = 67109632;
          v119 = v71;
          *&v71 = 134218240;
          v116[0] = v71;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v26, v72);
            if (!ValueAtIndex)
            {
              goto LABEL_90;
            }

            v75 = ValueAtIndex;
            v76 = v31;
            v77 = iAP2MsgAddGroupParam((v20 + 15), 6);
            v78 = v128;
            if (v77)
            {
              v78 = v128 + 1;
            }

            v128 = v78;
            if (v127 >= 1)
            {
              v79 = v77;
              v80 = v127;
              v81 = v123;
              do
              {
                v82 = *v81++;
                switch(v82)
                {
                  case 0:
                    iAP2MsgAddU16Param((v20 + 15), v79, 0, v72);
                    break;
                  case 1:
                    CFDictionaryGetValue(v75, @"RemoteID");
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 1;
                    goto LABEL_63;
                  case 2:
                    CFDictionaryGetValue(v75, v129);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 2;
                    goto LABEL_63;
                  case 3:
                    CFDictionaryGetValue(v75, v130);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 3;
                    goto LABEL_63;
                  case 4:
                    CFDictionaryGetValue(v75, v131);
                    v83 = OUTLINED_FUNCTION_46_3();
                    v85 = v79;
                    v86 = 4;
LABEL_63:
                    iAP2MsgAddCFStringParam(v83, v85, v86, v84);
                    break;
                  case 5:
                    Value = CFDictionaryGetValue(v75, v118);
                    v88 = _convertACCCallServiceToiAP2CallService(Value);
                    iAP2MsgAddU8Param((v20 + 15), v79, 5, v88);
                    break;
                  default:
                    break;
                }

                --v80;
              }

              while (v80);
            }

            MsgLen = iAP2MsgGetMsgLen((v20 + 15));
            v90 = gLogObjects;
            v91 = *(v76 + 984);
            if (gLogObjects && v91 >= 40)
            {
              v92 = *(gLogObjects + 312);
            }

            else
            {
              v92 = &_os_log_default;
              if (OUTLINED_FUNCTION_11())
              {
                OUTLINED_FUNCTION_25_3(&a15);
                *v133 = v90;
                OUTLINED_FUNCTION_17_0();
                *v134 = v91;
                OUTLINED_FUNCTION_10_6();
                _os_log_error_impl(v97, v98, v99, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v100, 0x12u);
              }
            }

            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
            {
              OUTLINED_FUNCTION_25_3(&a17);
              *v133 = MsgLen;
              OUTLINED_FUNCTION_66_3();
              *&v133[6] = v125;
              _os_log_debug_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", &v132, 0xEu);
            }

            v93 = MsgLen > v125 || v72 == v124;
            v31 = v76;
            if (!v93)
            {
              goto LABEL_90;
            }

            v94 = *(v76 + 984);
            if (gLogObjects && v94 >= 40)
            {
              v95 = *(gLogObjects + 312);
            }

            else
            {
              v95 = &_os_log_default;
              if (OUTLINED_FUNCTION_27())
              {
                OUTLINED_FUNCTION_6_32(*v116);
                *v134 = v94;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v132, 0x12u);
              }
            }

            if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
            {
              v96 = v122 + 1;
              OUTLINED_FUNCTION_30_9(v122, *&v119);
              *&v134[2] = v120;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Sending ListUpdate message (FavoritesList %d, entry: %d/%d)", &v132, 0x14u);
              v122 = v96;
            }

            if (!v128)
            {
              goto LABEL_89;
            }

            v73 &= OUTLINED_FUNCTION_53_2();
            if (v72 < v121)
            {
              break;
            }

LABEL_90:
            if (++v72 == v126)
            {
              goto LABEL_98;
            }
          }

          OUTLINED_FUNCTION_3_32();
LABEL_89:
          v128 = 0;
          goto LABEL_90;
        }

        CFRelease(RawValuesString);
        goto LABEL_50;
      }
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_33;
  }

  v107 = logObjectForModule_37();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v132) = 0;
    OUTLINED_FUNCTION_74_3(&_mh_execute_header, v108, v109, "Accessory is not paired to CarPlay, list updates are unavailable!");
  }

LABEL_98:
  OUTLINED_FUNCTION_29();
}

uint64_t _calculateListCap_0(void *a1, uint64_t a2, const __CFArray *a3, int a4)
{
  if (a1)
  {
    v5 = 50;
    if (a2 && *a1)
    {
      isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
      v9 = 56;
      if (!a4)
      {
        v9 = 40;
      }

      v10 = *(a2 + v9);
      Count = CFArrayGetCount(a3);
      if (isIdentifiedForCarPlay)
      {
        v12 = 12;
      }

      else
      {
        v12 = 50;
      }

      if (v12 >= Count)
      {
        v13 = Count;
      }

      else
      {
        v13 = v12;
      }

      v14 = v13;
      if (v13 >= v10)
      {
        v14 = v10;
      }

      if (v10)
      {
        v5 = v14;
      }

      else
      {
        v5 = v13;
      }

      if (gLogObjects && gNumLogObjects >= 40)
      {
        v15 = *(gLogObjects + 312);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v21, v22, v23, v24, v25, v26);
      }

      if (OUTLINED_FUNCTION_65())
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v17, v18, OS_LOG_TYPE_DEBUG, v19, v20, 0x1Eu);
      }
    }
  }

  else
  {
    return 50;
  }

  return v5;
}

const __CFNumber *_convertACCCallServiceToiAP2CallService(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (result)
    {
      result = valuePtr;
      if (valuePtr - 1 >= 3)
      {
        v1 = gLogObjects;
        v2 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 40)
        {
          v3 = *(gLogObjects + 312);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          v16 = 134218240;
          v17 = v1;
          v18 = 1024;
          v19 = v2;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v9, v10, v11, v12, v13, v14);
        }

        result = OUTLINED_FUNCTION_13();
        if (result)
        {
          v16 = 67109120;
          LODWORD(v17) = valuePtr;
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_communications_carPlayPairedVehiclesDidChangeHandler(uint64_t *a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50(a1);
    if (v3)
    {
      v4 = v2;
      v5 = OUTLINED_FUNCTION_34_4();
      Feature = iap2_feature_getFeature(v5, v6);
      if (Feature)
      {
        v8 = Feature;
        if ((v4 & 1) == 0)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v11 = *(gLogObjects + 312);
          }

          else
          {
            v11 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              v39 = 134218240;
              v40 = v9;
              OUTLINED_FUNCTION_3();
              v41 = v10;
              OUTLINED_FUNCTION_13_16();
              _os_log_error_impl(v33, v34, v35, v36, v37, v38);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v39) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CarPlay paired vehicles did change!", &v39, 2u);
          }
        }

        v12 = iap2_accAuthentication_copyCertificateSerial(v1);
        if (v12)
        {
          v13 = v12;
          isCarPlayPairedWithCertSerial = platform_CarPlay_isCarPlayPairedWithCertSerial(v12);
          CFRelease(v13);
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 40)
          {
            v17 = *(gLogObjects + 312);
          }

          else
          {
            v17 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              v39 = 134218240;
              v40 = v15;
              OUTLINED_FUNCTION_3();
              v41 = v16;
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v27, v28, v29, v30, v31, v32);
            }
          }

          v18 = OUTLINED_FUNCTION_66_2();
          if (os_log_type_enabled(v18, v19))
          {
            v21 = "NO";
            if (isCarPlayPairedWithCertSerial)
            {
              v21 = "YES";
            }

            v39 = 136315138;
            v40 = v21;
            OUTLINED_FUNCTION_73_0(&_mh_execute_header, v17, v20, "carPlayPaired: %s", &v39);
          }

          if (v8[66] != isCarPlayPairedWithCertSerial || v4)
          {
            v8[66] = isCarPlayPairedWithCertSerial;
            if (!isCarPlayPairedWithCertSerial || (v4 & 1) != 0)
            {
              OUTLINED_FUNCTION_3_32();
              v22 = OUTLINED_FUNCTION_6_11();
              iAP2MsgAddU8Param(v22, v23, 0, 0);
              OUTLINED_FUNCTION_53_2();
              OUTLINED_FUNCTION_3_32();
              v24 = OUTLINED_FUNCTION_6_11();
              iAP2MsgAddU8Param(v24, v25, 5, 0);
              OUTLINED_FUNCTION_53_2();
            }

            else
            {
              if (v8[46] == 1)
              {
                platform_communications_triggerListUpdate(0, v8[42]);
              }

              if (v8[61] == 1)
              {
                platform_communications_triggerListUpdate(1, 0);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void *_createFeature_20(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x48uLL, 0x10600405CCB10DDuLL);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    v1[1] = 0;
    *(v1 + 8) = 1;
    *(v1 + 1) = 0u;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    v1[8] = 0;
    platform_communications_incrementUserCount();
  }

  return v2;
}

void **_destroyFeature_20(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      for (i = 0; i != 4; ++i)
      {
        _removeSubscriberForSubFeature(v2, i);
      }

      platform_communications_decrementUserCount();
      if (*v2)
      {
        CFRelease(*v2);
        *v2 = 0;
      }

      v4 = *(v2 + 16);
      if (v4)
      {
        CFRelease(v4);
        *(v2 + 16) = 0;
      }

      v5 = *(v2 + 32);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 32) = 0;
      }

      v6 = *(v2 + 48);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 48) = 0;
      }

      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_22(uint64_t a1)
{
  v9 = 0;
  result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCallStateList, 3u, &v9);
  if (!result)
  {
    v3 = v9;
    result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCommunicationsList, 3u, &v9);
    if (!result)
    {
      v4 = v9;
      result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgCallControlList, 0xBu, &v9);
      if (!result)
      {
        v5 = v9;
        result = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo_kMsgListUpdatesList, 3u, &v9);
        if (!result)
        {
          if (v4 | v3 | v5 | v9)
          {
            v6 = OUTLINED_FUNCTION_34_4();
            iap2_features_createFeature(v6, v7);
            v8 = OUTLINED_FUNCTION_34_4();
            iap2_identification_setIdentifiedForFeature(v8);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void _startListUpdatesHandler_cold_2(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_3(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_4(uint64_t a1, uint64_t a2)
{
  v3 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v3))
  {
    iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x14u);
  }
}

void _startListUpdatesHandler_cold_5(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_6(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_7(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_8(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_7_26();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void _startListUpdatesHandler_cold_9(uint64_t a1, uint64_t a2)
{
  v3 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v3))
  {
    iAP2MsgGetMsgID(a2);
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x14u);
  }
}

void _startListUpdatesHandler_cold_10(uint64_t a1)
{
  v2 = logObjectForModule_37();
  if (OUTLINED_FUNCTION_16(v2))
  {
    iAP2MsgGetMsgID(a1);
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void iAP2MsgGetNextParamWithError_cold_1(int a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "iAP2MsgGetNextParamWithError";
  v4 = 1024;
  v5 = 427;
  v6 = 1024;
  v7 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d reached end of message buffer (%d bytes)\n", &v2, 0x18u);
}

void iAP2MsgGetNextParamWithError_cold_3(int a1, int a2, os_log_t log)
{
  v3 = 136315906;
  v4 = "iAP2MsgGetNextParamWithError";
  v5 = 1024;
  v6 = 422;
  v7 = 1024;
  v8 = a1;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s:%d reached end of parameter (%d bytes), grplen %d\n", &v3, 0x1Eu);
}

void _getSystemPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformSystemPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#System] Could not find plugin conforming to %@!", &v3, 0xCu);
}

id _dataToUTF8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 length], (v4 = malloc_type_malloc((v3 + 1), 0x5503F490uLL)) != 0))
  {
    v5 = v4;
    memcpy(v4, [v2 bytes], v3);
    v3[v5] = 0;
    v6 = [NSString stringWithUTF8String:v5];
    free(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_1()
{
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_2(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 67109120;
  v3[1] = a1;
  OUTLINED_FUNCTION_3_33(&_mh_execute_header, &_os_log_default, a3, "Failed to retrieve next TLV!!! err %d", v3);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_3(uint8_t *a1, int a2, _DWORD *a3)
{
  *a1 = 67109120;
  *a3 = a2;
  OUTLINED_FUNCTION_3_33(&_mh_execute_header, &_os_log_default, a3, "Failed to retrieve next TLV!!! err %d", a1);
}

void _genericMFi_util_createTLVDescriptionForProperty_cold_4()
{
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _genericMFi_util_createTLVDescriptionForMessage_cold_1()
{
  OUTLINED_FUNCTION_2_37();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _genericMFi_util_createTLVDescriptionForMessage_cold_4()
{
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void mfi4Auth_util_unpackFromTunnelDataiAP2Msg_cold_2(uint64_t a1, NSObject *a2)
{
  v4[0] = 67109376;
  v4[1] = iAP2MsgGetMsgID(a1);
  v5 = 1024;
  MsgLen = iAP2MsgGetMsgLen(a1);
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "mfi4Auth_util_unpackFromTunnelDataiAP2Msg: message 0x%04X, length %d", v4, 0xEu);
}

void *accAuthProtocol_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040E8ABEAB4uLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ACCAuthProtocolQ", 0);
      v2[7] = v3;
      if (v3)
      {
        dispatch_set_context(v3, v2);
        dispatch_set_finalizer_f(v2[7], _accAuthProtocol_endpoint_dispatchQueueFinalizer);
        *v2 = a1;
        _accAuthProtocol_endpoint_initSession(v2);
        v4 = acc_auth_protocol_maxSizeofMessageData();
        *(v2 + 8) = v4;
        v2[3] = malloc_type_calloc(1uLL, v4, 0x1000040931E79F6uLL);
        *(v2 + 72) = 0;
      }
    }
  }

  else
  {
    v6 = logObjectForModule_1(54);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v7, v8, "pProtocolEndpoint = NULL", v9);
    }

    return 0;
  }

  return v2;
}

uint64_t accAuthProtocol_endpoint_publish(uint64_t result, __int128 *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  result = *result;
  if (!result)
  {
    return result;
  }

  Protocol = acc_endpoint_getProtocol(result);
  v5 = acc_policies_allowACCAuthProtocolOnTransport(*(*v2 + 24));
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v8 = *(gLogObjects + 432);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v54 = v6;
      *&v54[8] = 1024;
      *v55 = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*v2 + 24);
    *buf = 67109376;
    *v54 = v10;
    *&v54[4] = 1024;
    *&v54[6] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accAuthProtocol publish: transportType %{coreacc:ACCEndpoint_TransportType_t}d, allowed %d ", buf, 0xEu);
  }

  if (Protocol != 10)
  {
    return 0;
  }

  isPublished = acc_endpoint_isPublished(*v2);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  if (*v2)
  {
    v13 = *(*v2 + 16);
  }

  else
  {
    v13 = 0;
  }

  cf = Mutable;
  CFArrayAppendValue(Mutable, v13);
  v14 = acc_accInfo_copyAccessoryInfoDictionary(a2);
  if (v14)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v16 = MutableCopy;
  valuePtr = *(*(v2 + 16) + 1132);
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(v16, @"NegotiatedAuthType", v17);
  v51 = *(*(v2 + 16) + 1128);
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v51);
  CFDictionaryAddValue(v16, @"NegotiatedCharacteristics", v18);
  AuthStatus = acc_connection_getAuthStatus(**v2, 1u);
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v20 = *(gLogObjects + 432);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_23();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v2 + 16);
    v22 = *(v21 + 1132);
    LODWORD(v21) = *(v21 + 1128);
    *buf = 67110146;
    *v54 = isPublished;
    *&v54[4] = 1024;
    *&v54[6] = v22;
    *v55 = 1024;
    *&v55[2] = v21;
    v56 = 2112;
    v57 = v16;
    v58 = 1024;
    v59 = AuthStatus;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "accAuthProtocol publish: wasPublished = %d, authType %d, characteristics %#10x, accInfoDict = %@, curAuthStatus %d ", buf, 0x24u);
  }

  if (AuthStatus == 1)
  {
    v23 = isPublished;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    if (*(v2 + 8) == 1)
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v24 = *(gLogObjects + 432);
      }

      else
      {
        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_23();
          OUTLINED_FUNCTION_9_24();
          OUTLINED_FUNCTION_10(v43, v44, v45, v46, v47);
        }
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_8_26();
        *buf = 67109120;
        *v54 = v38;
        OUTLINED_FUNCTION_9_24();
        _os_log_debug_impl(v39, v40, OS_LOG_TYPE_DEBUG, v41, v42, 8u);
      }

      _accAuthProtocol_endpoint_cleanupSession(v2);
    }

    _accAuthProtocol_endpoint_initSession(v2);
    if (!OUTLINED_FUNCTION_7_27())
    {
      LOBYTE(isPublished) = 0;
      goto LABEL_47;
    }

    goto LABEL_69;
  }

  if (!OUTLINED_FUNCTION_7_27())
  {
    goto LABEL_47;
  }

  if ((isPublished & 1) == 0)
  {
LABEL_69:
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v27 = *(gLogObjects + 104);
    }

    else
    {
      v27 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_23();
        OUTLINED_FUNCTION_9_24();
        OUTLINED_FUNCTION_10(v29, v30, v31, v32, v33);
      }
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v54 = "accAuthProtocol_endpoint_publish";
      *&v54[8] = 1024;
      *v55 = 2;
      OUTLINED_FUNCTION_9_24();
      _os_log_impl(v34, v35, OS_LOG_TYPE_DEFAULT, v36, v37, 0x12u);
    }

    accAuthProtocol_endpoint_notifyAuthStatus(v2, 2);
    LOBYTE(isPublished) = 0;
    goto LABEL_35;
  }

  LOBYTE(isPublished) = 1;
LABEL_35:
  if (*(v2 + 8) == 1 && (acc_userDefaults_BOOLForKey(@"DontSkipInductiveAuthOnCTA") & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v25 = *(gLogObjects + 432);
    }

    else
    {
      v25 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_23();
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_8_26();
      *buf = 67109120;
      *v54 = v48;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "accAuthProtocol publish: acc_auth_protocol_endSession sessionID %d", buf, 8u);
    }

    _accAuthProtocol_endpoint_cleanupSession(v2);
  }

LABEL_47:
  if (OUTLINED_FUNCTION_7_27())
  {
    v26 = acc_userDefaults_BOOLForKey(@"DontSkipInductiveAuthOnCTA") & v5;
  }

  else
  {
    v26 = v5;
  }

  if (!(isPublished & 1 | ((v26 & 1) == 0)) && *(v2 + 8) == 1)
  {
    if (*(*v2 + 24) == 13)
    {
      if (accAuthProtocol_endpoint_publish_onceToken == -1)
      {
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      else
      {
        dispatch_once(&accAuthProtocol_endpoint_publish_onceToken, &__block_literal_global_37);
        if (!v14)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_58;
    }

    _accAuthProtocol_endpoint_sendAuthSetupStart(v2);
  }

  if (v14)
  {
LABEL_58:
    CFRelease(v14);
  }

LABEL_59:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

uint64_t accAuthProtocol_endpoint_notifyAuthStatus(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      v4 = *v3;
      if (*v3)
      {
        v10 = CFAbsoluteTimeGetCurrent() - *(v3 + 64);
        if (a2 == 3)
        {
          acc_platform_packetLogging_logEvent(v4, "AUTH TIMEOUT", "ACCAuthProtocol accessory authentication Timed Out! (in %lf seconds)", v5, v6, v7, v8, v9, *&v10);
        }

        else if (a2 == 2)
        {
          acc_platform_packetLogging_logEvent(v4, "AUTH PASSED", "ACCAuthProtocol accessory authentication Passed! (in %lf seconds)", v5, v6, v7, v8, v9, *&v10);
        }

        else
        {
          acc_platform_packetLogging_logEvent(v4, "AUTH FAILED", "ACCAuthProtocol accessory authentication Failed! (in %lf seconds)", v5, v6, v7, v8, v9, *&v10);
        }

        if (*(v4 + 24) == 13)
        {
          v11 = kCFACCProperties_Endpoint_NFC_RequestSessionOpen;

          return acc_endpoint_setProperty(v4, v11, kCFBooleanFalse);
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t accAuthProtocol_endpoint_destroy(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  acc_platform_packetLogging_logEvent(**a1, "DETACH", "ACCAuthProtocol accessory detached!", a4, a5, a6, a7, a8, v13);
  v9 = (*a1)[7];
  (*a1)[7] = 0;
  v10 = *a1;
  v11 = 1;
  *(v10 + 72) = 1;
  *a1 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __accAuthProtocol_endpoint_destroy_block_invoke;
  block[3] = &__block_descriptor_tmp_11_0;
  block[4] = v10;
  dispatch_sync(v9, block);
  dispatch_release(v9);
  return v11;
}

uint64_t accAuthProtocol_endpoint_processIncomingData(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v2 = result;
    if (!*result || !*(result + 16) || *(result + 8) != 1)
    {
      return 0;
    }

    if (*(result + 72) != 1)
    {
      if (cf)
      {
        CFRetain(cf);
        v4 = *(v2 + 56);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 0x40000000;
        v8[2] = __accAuthProtocol_endpoint_processIncomingData_block_invoke;
        v8[3] = &__block_descriptor_tmp_12_0;
        v8[4] = v2;
        v8[5] = cf;
        dispatch_async(v4, v8);
        return 1;
      }

      return 0;
    }

    v5 = logObjectForModule_1(54);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v9 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v6, v7, "protocol shutting down", v9);
      return 0;
    }
  }

  return result;
}

uint64_t _accAuthProtocol_endpoint_processIncomingData(uint64_t a1, const __CFData *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v8 = *(gLogObjects + 432);
      }

      else
      {
        v8 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v50 = v6;
          OUTLINED_FUNCTION_2_1();
          *&v50[10] = v7;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(v5 + 24);
        v34 = **(a1 + 16);
        OUTLINED_FUNCTION_4_34();
        *&v50[10] = 2112;
        *&v50[12] = a2;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "accAuthProtocol processIncomingData: %{coreacc:ACCEndpoint_TransportType_t}d sessionID %d, dataIn %@", buf, 0x18u);
      }

      if (!acc_policies_allowACCAuthProtocolOnTransport(*(v5 + 24)))
      {
        return 0;
      }

      if (acc_policies_allowACCAuthProtocolOnAllTransport() && (__s2 = 39190527, v47 = -22016, v48 = 84, v9 = CFDataGetBytePtr(a2), v10 = CFDataGetLength(a2), v9) && v10 >= 6 && (v10 >= 7 && !memcmp(v9, &__s2, 7uLL) || !memcmp(v9, &__s2 + 1, 6uLL)))
      {
        v37 = gLogObjects;
        v38 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 15)
        {
          v39 = *(gLogObjects + 112);
        }

        else
        {
          v39 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v50 = v37;
            OUTLINED_FUNCTION_2_1();
            *&v50[10] = v38;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v5 + 28);
          v43 = *(v5 + 16);
          *buf = 67109378;
          *v50 = v42;
          *&v50[4] = 2112;
          *&v50[6] = v43;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Protocol %{coreacc:ACCEndpoint_Protocol_t}d... got DETECT for endpoint %@! don't propagate.", buf, 0x12u);
        }

        return accAuthProtocol_endpoint_publish(*(v5 + 56), *(v5 + 64));
      }

      else
      {
        if (*v5 && *(a1 + 48))
        {
          platform_connectionInfo_handleInterceptData(*(v5 + 8), *(v5 + 16), a2);
          v11 = *(a1 + 48);
          v12 = __OFSUB__(v11, 1);
          v13 = v11 - 1;
          if (v13 < 0 == v12)
          {
            v3 = 0;
            *(a1 + 48) = v13;
            return v3;
          }

          return 0;
        }

        if (!*(a1 + 40))
        {
          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          *(a1 + 40) = Mutable;
          if (!Mutable)
          {
            return 0;
          }
        }

        BytePtr = CFDataGetBytePtr(a2);
        Length = CFDataGetLength(a2);
        if (!BytePtr)
        {
          return 0;
        }

        CFDataAppendBytes(*(a1 + 40), BytePtr, Length);
        v17 = CFDataGetBytePtr(*(a1 + 40));
        v18 = CFDataGetLength(*(a1 + 40));
        if (v18 < 4)
        {
          return 1;
        }

        v19 = v18;
        if (v18 < acc_auth_protocol_sizeofMessage(v17, v18, 0, 0))
        {
          return 1;
        }

        acc_platform_packetLogging_logAccAuthProtocolMsg(*a1, **(a1 + 16), a2, 1);
        range = 0;
        v20 = acc_auth_protocol_checkMessage(*(a1 + 16), v17, v19, &range);
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v23 = *(gLogObjects + 432);
        }

        else
        {
          v23 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v50 = v21;
            OUTLINED_FUNCTION_2_1();
            *&v50[10] = v22;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v40, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_8_26();
          OUTLINED_FUNCTION_4_34();
          *&v50[10] = v35;
          *&v50[12] = v20;
          *&v50[16] = 2112;
          *&v50[18] = a2;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "accAuthProtocol processIncomingData: after checkMessage, sessionID %d, skipBytes %d, msgLen %d,dataIn %@", buf, 0x1Eu);
        }

        v24.length = range;
        if (range)
        {
          v24.location = 0;
          CFDataDeleteBytes(*(a1 + 40), v24);
        }

        if (v20 < 4)
        {
          return 1;
        }

        if (acc_userDefaults_BOOLForKey(@"ForceAuthTimeout"))
        {
          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v27 = *(gLogObjects + 432);
          }

          else
          {
            v27 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v50 = v25;
              OUTLINED_FUNCTION_2_1();
              *&v50[10] = v26;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_8_26();
            *buf = 67109120;
            *v50 = v31;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "accAuthProtocol processIncomingData: ForceAuthTimeout, ignore incoming messages for sessionID %d, allow timeout to occur, if any", buf, 8u);
          }

          return 1;
        }

        v3 = 1;
        ACCAuthProtocol_PrintMessage(v17, v19, "\n----------------\n**** ACCAuthProtocol incoming handler ****: \nACCESSORY", 0, 1);
        v28 = acc_auth_protocol_handleMessage(*(a1 + 16), v17, v19, *(a1 + 24), *(a1 + 32));
        v51.length = v20;
        v51.location = 0;
        CFDataDeleteBytes(*(a1 + 40), v51);
        if (!v28)
        {
          v29 = OUTLINED_FUNCTION_6_33();
          ACCAuthProtocol_PrintMessage(v28, v29, "\n----------------\n**** ACCAuthProtocol outgoing handler ****: \nHOST", 0, 1);
          v30 = OUTLINED_FUNCTION_6_33();
          accAuthProtocol_endpoint_sendOutgoingData(a1, v28, v30);
        }
      }
    }
  }

  return v3;
}

uint64_t accAuthProtocol_endpoint_sendOutgoingData(uint64_t a1, const UInt8 *a2, unsigned int a3)
{
  if (!a1 || !*(a1 + 16))
  {
    return 0;
  }

  v5 = 0;
  if (!a2 || (*(a1 + 8) & 1) == 0)
  {
    return v5;
  }

  if (*(a1 + 72) == 1)
  {
    v10 = logObjectForModule_1(54);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      OUTLINED_FUNCTION_5_32(&_mh_execute_header, v11, v12, "protocol shutting down", v13);
    }

    return 0;
  }

  if (a3 < 4)
  {
    return 0;
  }

  v7 = *a1;
  if (!acc_auth_protocol_validMessageID(*a2) || acc_auth_protocol_sizeofMessage(a2, a3, 0, 0) > a3)
  {
    return 0;
  }

  v8 = CFDataCreate(kCFAllocatorDefault, a2, a3);
  acc_platform_packetLogging_logAccAuthProtocolMsg(v7, **(a1 + 16), v8, 0);
  v5 = acc_endpoint_sendOutgoingData(v7, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

uint64_t ___accAuthProtocol_endpoint_sendAuthSetupStart_block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = acc_auth_protocol_sizeofMessage(v2, *(a1 + 32), 0, 0);
  return accAuthProtocol_endpoint_sendOutgoingData(a1, v2, v3);
}

unint64_t platform_usb_send_notification(uint64_t a1, const void *a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"USBMode", a2);
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"USBFaultState", a3);
    }

    v3 = accFeatureHandlers_invokeHandler(a1, 12, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v3;
}

void qiAuth_util_generateNonce_cold_2(uint64_t a1)
{
  v1 = *(a1 + 8);
  LODWORD(v4) = 136315906;
  *(&v4 + 4) = "qiAuth_util_generateNonce";
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_27(&_mh_execute_header, v2, v3, "%s:%d role %d, nonceSize %d", v4, "qiAuth_util_generateNonce" >> 32, v5, v6);
}

void qiAuth_util_verifyCertificateChain_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_5()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_8()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_verifyChallengeSignature_cold_10()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void qiAuth_util_policy_preferredSlot_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d PreferredSlot: %d", v2, v3, v4, v5, 2u);
}

void qiAuth_util_callbackOnTimer_cold_3()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void qiAuth_util_cancelTimer_cold_2()
{
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void platform_CarPlay_startSession_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#CarPlay] platform_CarPlay_startSession: startSessionProperties %@", &v2, 0xCu);
}

char *acc_accInfo_create()
{
  v0 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1060040C7FDF64DuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 112), 0);
  }

  return v1;
}

BOOL acc_accInfo_destroy(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = acc_accInfo_reset(v2);
  pthread_mutex_destroy((*a1 + 112));
  if (*a1)
  {
    free(*a1);
    *a1 = 0;
  }

  return v3;
}

BOOL acc_accInfo_reset(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 112));
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 32) = 0;
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 56) = 0;
    }

    v9 = *(a1 + 72);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 72) = 0;
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 64) = 0;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 80) = 0;
    }

    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 88) = 0;
    }

    v13 = *(a1 + 96);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 96) = 0;
    }

    pthread_mutex_unlock((a1 + 112));
  }

  return a1 != 0;
}

uint64_t acc_accInfo_setAccessoryInfo(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    acc_accInfo_reset(a1);
    pthread_mutex_lock((a2 + 112));
    pthread_mutex_lock((a1 + 112));
    if (*a2)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a2);
      v7 = ACCConnectionInfoCopyLocalizedAccessoryNameCFPrivate();
      if (v7)
      {
        v8 = v7;
        if (Copy)
        {
          CFRelease(Copy);
        }
      }

      else
      {
        v8 = Copy;
      }

      *a1 = v8;
    }

    v9 = *(a2 + 8);
    if (v9)
    {
      *(a1 + 8) = CFStringCreateCopy(kCFAllocatorDefault, v9);
    }

    v10 = *(a2 + 16);
    if (v10)
    {
      *(a1 + 16) = CFStringCreateCopy(kCFAllocatorDefault, v10);
    }

    v11 = *(a2 + 24);
    if (v11)
    {
      *(a1 + 24) = CFStringCreateCopy(kCFAllocatorDefault, v11);
    }

    v12 = *(a2 + 32);
    if (v12)
    {
      *(a1 + 32) = CFStringCreateCopy(kCFAllocatorDefault, v12);
    }

    v13 = *(a2 + 40);
    if (v13)
    {
      *(a1 + 40) = CFStringCreateCopy(kCFAllocatorDefault, v13);
    }

    v14 = *(a2 + 48);
    if (v14)
    {
      *(a1 + 48) = CFStringCreateCopy(kCFAllocatorDefault, v14);
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      *(a1 + 56) = CFStringCreateCopy(kCFAllocatorDefault, v15);
    }

    v16 = *(a2 + 72);
    if (v16)
    {
      *(a1 + 72) = CFStringCreateCopy(kCFAllocatorDefault, v16);
    }

    v17 = *(a2 + 64);
    if (v17)
    {
      *(a1 + 64) = CFStringCreateCopy(kCFAllocatorDefault, v17);
    }

    v18 = *(a2 + 80);
    if (v18)
    {
      *(a1 + 80) = CFRetain(v18);
    }

    v19 = *(a2 + 88);
    if (v19)
    {
      *(a1 + 88) = CFRetain(v19);
    }

    v20 = *(a2 + 96);
    if (v20)
    {
      *(a1 + 96) = CFRetain(v20);
    }

    v21 = *(a2 + 104);
    if (v21)
    {
      *(a1 + 104) = CFRetain(v21);
    }

    v22 = gLogObjects;
    v23 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 12)
    {
      v24 = *(gLogObjects + 88);
    }

    else
    {
      v24 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v40 = 134218240;
        v41 = v22;
        v42 = 1024;
        v43 = v23;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v40, 0x12u);
      }
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v28 = *(a1 + 24);
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v33 = *(a1 + 64);
      v34 = *(a1 + 72);
      v35 = *(a1 + 80);
      v36 = *(a1 + 88);
      v37 = *(a1 + 96);
      v38 = *(a1 + 104);
      v40 = 136318978;
      v41 = "acc_accInfo_setAccessoryInfo";
      v42 = 1024;
      v43 = 211;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v26;
      v48 = 2112;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      v52 = 2112;
      v53 = v29;
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      v58 = 2112;
      v59 = v32;
      v60 = 2112;
      v61 = v34;
      OUTLINED_FUNCTION_0_21(v36, v37, v38, &v40);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[#Accessory Info] %s:%d Set accessory info: name: %@, manufacturer: %@, model: %@, serialNumber: %@, hardwareVersion: %@, firmwareVersionActive: %@, firmwareVersionPending: %@, ppid: %@ regionCode: %@, deviceUID: %@, deviceCompatibility: %@, vid/pid: %@/%@, accessoryPlatformID: %@", &v40, 0x9Eu);
    }

    pthread_mutex_unlock((a1 + 112));
    pthread_mutex_unlock((a2 + 112));
  }

  return v3;
}

uint64_t acc_accInfo_setAccessoryInfoWithDictionary(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  acc_accInfo_reset(a1);

  return acc_accInfo_updateAccessoryInfoWithDictionary(a1, a2);
}

uint64_t acc_accInfo_updateAccessoryInfoWithDictionary(uint64_t a1, const __CFDictionary *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    pthread_mutex_lock((a1 + 112));
    Value = CFDictionaryGetValue(a2, kCFACCInfo_Name);
    if (Value)
    {
      v7 = CFRetain(Value);
      v8 = ACCConnectionInfoCopyLocalizedAccessoryNameCFPrivate();
      if (v8)
      {
        v9 = v8;
        if (v7)
        {
          CFRelease(v7);
        }
      }

      else
      {
        v9 = v7;
      }

      if (*a1)
      {
        CFRelease(*a1);
      }

      *a1 = v9;
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_Manufacturer))
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 8) = 0;
      }

      *(a1 + 8) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_Model))
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        CFRelease(v11);
        *(a1 + 16) = 0;
      }

      *(a1 + 16) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_SerialNumber))
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 24) = 0;
      }

      *(a1 + 24) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_HardwareVersion))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 32) = 0;
      }

      *(a1 + 32) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_FirmwareVersionActive))
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 40) = 0;
      }

      *(a1 + 40) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_FirmwareVersionPending))
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 48) = 0;
      }

      *(a1 + 48) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_PPID))
    {
      v16 = *(a1 + 56);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 56) = 0;
      }

      *(a1 + 56) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_RegionCode))
    {
      v17 = *(a1 + 72);
      if (v17)
      {
        CFRelease(v17);
        *(a1 + 72) = 0;
      }

      *(a1 + 72) = OUTLINED_FUNCTION_1_38();
    }

    if (CFDictionaryGetValue(a2, kCFACCInfo_AccessoryDeviceUID))
    {
      v18 = *(a1 + 64);
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 64) = 0;
      }

      *(a1 + 64) = OUTLINED_FUNCTION_1_38();
    }

    v19 = CFDictionaryGetValue(a2, kCFACCInfo_DeviceCompatibility);
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + 80);
      if (v21)
      {
        CFRelease(v21);
        *(a1 + 80) = 0;
      }

      *(a1 + 80) = CFRetain(v20);
    }

    v22 = CFDictionaryGetValue(a2, kCFACCInfo_VendorID);
    if (v22)
    {
      v23 = v22;
      v24 = *(a1 + 88);
      if (v24)
      {
        CFRelease(v24);
        *(a1 + 88) = 0;
      }

      *(a1 + 88) = CFRetain(v23);
    }

    v25 = CFDictionaryGetValue(a2, kCFACCInfo_ProductID);
    if (v25)
    {
      v26 = v25;
      v27 = *(a1 + 96);
      if (v27)
      {
        CFRelease(v27);
        *(a1 + 96) = 0;
      }

      *(a1 + 96) = CFRetain(v26);
    }

    v28 = CFDictionaryGetValue(a2, kCFACCInfo_AccessoryPlatformID);
    if (v28)
    {
      v29 = v28;
      v30 = *(a1 + 104);
      if (v30)
      {
        CFRelease(v30);
        *(a1 + 104) = 0;
      }

      *(a1 + 104) = CFRetain(v29);
    }

    v31 = gLogObjects;
    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 12)
    {
      v33 = *(gLogObjects + 88);
    }

    else
    {
      v33 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v49 = 134218240;
        v50 = v31;
        v51 = 1024;
        v52 = v32;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v49, 0x12u);
      }
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a1;
      v36 = *(a1 + 8);
      v37 = *(a1 + 16);
      v38 = *(a1 + 24);
      v39 = *(a1 + 32);
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      v44 = *(a1 + 72);
      v45 = *(a1 + 80);
      v46 = *(a1 + 88);
      v47 = *(a1 + 96);
      v48 = *(a1 + 104);
      v49 = 136318978;
      v50 = "acc_accInfo_updateAccessoryInfoWithDictionary";
      v51 = 1024;
      v52 = 381;
      v53 = 2112;
      v54 = v35;
      v55 = 2112;
      v56 = v36;
      v57 = 2112;
      v58 = v37;
      v59 = 2112;
      v60 = v38;
      v61 = 2112;
      v62 = v39;
      v63 = 2112;
      v64 = v40;
      v65 = 2112;
      v66 = v41;
      v67 = 2112;
      v68 = v42;
      v69 = 2112;
      v70 = v44;
      OUTLINED_FUNCTION_0_21(v46, v47, v48, &v49);
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[#Accessory Info] %s:%d Set accessory info: name: %@, manufacturer: %@, model: %@, serialNumber: %@, hardwareVersion: %@, firmwareVersionActive: %@, firmwareVersionPending: %@, ppid: %@ regionCode: %@, deviceUID: %@, deviceCompatibility: %@, vid/pid: %@/%@, accessoryPlatformID: %@", &v49, 0x9Eu);
    }

    pthread_mutex_unlock((a1 + 112));
  }

  return v3;
}

CFDictionaryRef acc_accInfo_copyAccessoryInfoDictionary(__int128 *a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 7));
  v2 = &kCFNull;
  v3 = *a1;
  v4 = a1[1];
  vld1q_dup_f64(v2);
  OUTLINED_FUNCTION_2_39();
  v18[0] = v5;
  v18[1] = v6;
  v7 = a1[2];
  v8 = a1[3];
  OUTLINED_FUNCTION_2_39();
  v18[2] = v9;
  v18[3] = v10;
  v11 = a1[4];
  v12 = a1[5];
  OUTLINED_FUNCTION_2_39();
  keys[0] = kCFACCInfo_Name;
  keys[1] = kCFACCInfo_Manufacturer;
  keys[2] = kCFACCInfo_Model;
  keys[3] = kCFACCInfo_SerialNumber;
  keys[4] = kCFACCInfo_HardwareVersion;
  keys[5] = kCFACCInfo_FirmwareVersionActive;
  keys[6] = kCFACCInfo_FirmwareVersionPending;
  keys[7] = kCFACCInfo_PPID;
  keys[8] = kCFACCInfo_AccessoryDeviceUID;
  keys[9] = kCFACCInfo_RegionCode;
  keys[10] = kCFACCInfo_DeviceCompatibility;
  keys[11] = kCFACCInfo_VendorID;
  v18[4] = v13;
  v18[5] = v14;
  keys[12] = kCFACCInfo_ProductID;
  keys[13] = kCFACCInfo_AccessoryPlatformID;
  v18[6] = vbslq_s8(vceqzq_s64(*(a1 + 6)), v15, *(a1 + 6));
  v16 = CFDictionaryCreate(kCFAllocatorDefault, keys, v18, 14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  pthread_mutex_unlock((a1 + 7));
  return v16;
}

CFStringRef acc_accInfo_copyAccessoryInfoDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(&result[3].data);
    v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<ACCAccessoryInfo_t: name: %@; manufacturer: %@; model: %@; serialNumber: %@; hardwareVersion: %@; firmwareVersionActive: %@; firmwareVersionPending: %@; ppid: %@, regionCode: %@; deviceUID: %@>; deviceCompatibility: %@; vid/pid: %@/%@, accessoryPlatformID: %@", v1->isa, v1->info, v1->data, v1->length, v1[1].isa, v1[1].info, v1[1].data, v1[1].length, v1[2].info, v1[2].isa, v1[2].data, v1[2].length, v1[3].isa, v1[3].info);
    pthread_mutex_unlock(&v1[3].data);
    return v2;
  }

  return result;
}

CFTypeRef acc_accInfo_retainedProperty(uint64_t a1, int a2, CFTypeRef a3)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 112));
  switch(a2)
  {
    case 0:
      v6 = *a1;
      if (*a1)
      {
        goto LABEL_25;
      }

      break;
    case 1:
      v6 = *(a1 + 8);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 2:
      v6 = *(a1 + 16);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 3:
      v6 = *(a1 + 24);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 4:
      v6 = *(a1 + 32);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 5:
      v6 = *(a1 + 40);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 6:
      v6 = *(a1 + 48);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 7:
      v6 = *(a1 + 56);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 8:
      v6 = *(a1 + 64);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 9:
      v6 = *(a1 + 72);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 10:
      v6 = *(a1 + 80);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 11:
      v6 = *(a1 + 88);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 12:
      v6 = *(a1 + 96);
      if (v6)
      {
LABEL_25:
        a3 = CFRetain(v6);
      }

      break;
    default:
      a3 = 0;
      break;
  }

  pthread_mutex_unlock((a1 + 112));
  return a3;
}

uint64_t acc_accInfo_isConsideredEmpty(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  pthread_mutex_lock((a1 + 112));
  v2 = !*a1 && !*(a1 + 8) && *(a1 + 16) == 0;
  pthread_mutex_unlock((a1 + 112));
  return v2;
}

void _getPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformLightningPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#Lightning] Could not find plugin conforming to %@!", &v3, 0xCu);
}

void platform_oobBtPairing2_startOobBtPairingHandler_cold_3(uint64_t a1, void *a2)
{
  v3 = [a2 componentUID];
  v9 = [a2 componentID];
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void platform_oobBtPairing2_accessoryAttached_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __platform_oobBtPairing2_completionStatus_block_invoke_2_cold_2(uint64_t a1)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void _sendStartOOBBTPairing_cold_3(void *a1)
{
  v1 = [a1 accessoryUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

uint64_t iap2_identification_setIdentificationInfo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (iap2_feature_getFeature(a1, 1u))
    {
      v4 = OUTLINED_FUNCTION_66_1();
      if (*(iap2_feature_getFeature(v4, v5) + 8))
      {
        v6 = OUTLINED_FUNCTION_66_1();
        Feature = iap2_feature_getFeature(v6, v7);
        iap2_identification_releaseIdentInfo(*(Feature + 8));
        v9 = OUTLINED_FUNCTION_66_1();
        if (*(iap2_feature_getFeature(v9, v10) + 8))
        {
          v11 = OUTLINED_FUNCTION_66_1();
          v13 = iap2_feature_getFeature(v11, v12);
          free(*(v13 + 8));
          v14 = OUTLINED_FUNCTION_66_1();
          *(iap2_feature_getFeature(v14, v15) + 8) = 0;
        }
      }

      v2 = 1;
      v16 = OUTLINED_FUNCTION_66_1();
      *(iap2_feature_getFeature(v16, v17) + 8) = a2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_identification_createRejectMessage(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  *(a1 + 136) = malloc_type_calloc(1uLL, 0x48uLL, 0x109004066C3AFE2uLL);
  v2 = malloc_type_malloc(0xFFFFuLL, 0x170039DBuLL);
  *(a1 + 144) = v2;
  iAP2MsgInit(*(a1 + 136), 7427, v2, 0xFFFF, _iap2_identification_cleanupRejectMsg, 0);
  v3 = OUTLINED_FUNCTION_22();
  *(a1 + 152) = CFDataCreateMutable(v3, v4);
  v5 = OUTLINED_FUNCTION_22();
  *(a1 + 160) = CFDataCreateMutable(v5, v6);
  *(a1 + 168) = 0;
  v7 = OUTLINED_FUNCTION_22();
  *(a1 + 176) = CFSetCreateMutable(v7, v8, 0);
  v9 = OUTLINED_FUNCTION_22();
  *(a1 + 184) = CFSetCreateMutable(v9, v10, 0);
  v11 = OUTLINED_FUNCTION_22();
  *(a1 + 120) = CFSetCreateMutable(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_22();
  *(a1 + 192) = CFStringCreateMutable(v14, v15);
  v16 = OUTLINED_FUNCTION_22();
  *(a1 + 200) = CFStringCreateMutable(v16, v17);
  v18 = OUTLINED_FUNCTION_22();
  Mutable = CFStringCreateMutable(v18, v19);
  *(a1 + 208) = Mutable;
  if (!*(a1 + 136) || !*(a1 + 144) || !*(a1 + 152) || !*(a1 + 160) || !*(a1 + 176) || !*(a1 + 184) || !*(a1 + 120))
  {
    return 12;
  }

  v21 = Mutable;
  result = 12;
  if (*(a1 + 200) && v21)
  {
    v23 = *(a1 + 192);
    if (v23)
    {
      CFStringAppend(v23, @"iapreject: Identification Rejected Details:\n");
      CFStringAppendFormat(*(a1 + 200), 0, @"iapreject:  Param: %s", "MessagesSentByAccessory");
      CFStringAppendFormat(*(a1 + 208), 0, @"iapreject:  Param: %s", "MessagesRcvdFromDevice");
      return 0;
    }

    return 12;
  }

  return result;
}

uint64_t iap2_identification_processMessagesSet(uint64_t a1, unsigned __int16 *a2, unsigned int a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v4 = a4;
  if (a3)
  {
    if (a4)
    {
      v13 = 6;
    }

    else
    {
      v13 = 7;
    }

    _addRejectParam(a1, v13, 7u);
    return 22;
  }

  else
  {
    v8 = a3 >> 1;
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, v8, 0);
    if (a3)
    {
      do
      {
        v10 = *a2++;
        CFSetAddValue(Mutable, (bswap32(v10) >> 16));
        --v8;
      }

      while (v8);
    }

    if (v4)
    {
      v11 = *(a1 + 96);
      if (v11)
      {
        CFRelease(v11);
      }

      result = 0;
      *(a1 + 96) = Mutable;
    }

    else
    {
      v14 = *(a1 + 104);
      if (v14)
      {
        CFRelease(v14);
      }

      result = 0;
      *(a1 + 104) = Mutable;
    }
  }

  return result;
}

uint64_t iap2_identification_cbIdentificationInfoParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (!a1 || !a3 || !a4)
  {
    return v4;
  }

  ParamID = iAP2MsgGetParamID(a3);
  v9 = gLogObjects;
  v10 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 26)
  {
    v11 = *(gLogObjects + 200);
  }

  else
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v57 = v9;
      OUTLINED_FUNCTION_2_1();
      v58 = v10;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_21_9();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Checking identification info group for paramID: %u...", buf, 8u);
  }

  ParamHandler = iap2_identification_getParamHandler(ParamID);
  if (ParamHandler)
  {
    if (ParamHandler(a4, a1, a3))
    {
      valuePtr = ParamID;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayGetCount(_giAP2RequiredIdentificationParams);
      v15 = OUTLINED_FUNCTION_26_1();
      if (CFArrayContainsValue(v15, v59, v14))
      {
        IdentificationInfo = iap2_identification_getIdentificationInfo(a4);
        if (!IdentificationInfo)
        {
          v26 = 0;
          if (!v14)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        CFSetAddValue(*(IdentificationInfo + 120), v14);
        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v19 = *(gLogObjects + 200);
        }

        else
        {
          v19 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            *buf = 134218240;
            *v57 = v17;
            OUTLINED_FUNCTION_2_1();
            v58 = v18;
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v45, v46, v47, v48, v49, 0x12u);
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v57 = valuePtr;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Added identification paramID: 0x%04X to received params set!", buf, 8u);
        }
      }

      v26 = 1;
      if (!v14)
      {
LABEL_40:
        if ((v26 & 1) == 0)
        {
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v27 = *(gLogObjects + 200);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_13_1();
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v50, v51, v52, v53, v54, 0x12u);
          }

          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_21_9();
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v40, v41, v42, v43, v44, 8u);
          }
        }

        return 0;
      }

LABEL_39:
      CFRelease(v14);
      goto LABEL_40;
    }

    if (gLogObjects && gNumLogObjects >= 26)
    {
      v23 = *(gLogObjects + 200);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_17();
      _os_log_error_impl(v35, v36, v37, v38, v39, 0x12u);
    }

    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_7_17();
      _os_log_error_impl(v29, v30, v31, v32, v33, 8u);
    }

    return 1;
  }

  else
  {
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v22 = *(gLogObjects + 200);
    }

    else
    {
      v22 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        *v57 = v20;
        OUTLINED_FUNCTION_2_1();
        v58 = v21;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      iAP2MsgGetMsgID(a1);
      OUTLINED_FUNCTION_21_9();
      *&v57[4] = 1024;
      *&v57[6] = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X", buf, 0xEu);
    }

    v25 = iap2_identification_getIdentificationInfo(a4);
    v4 = 1;
    _addRejectParam(v25, ParamID, 1u);
  }

  return v4;
}

void *iap2_identification_getParamHandler(void *key)
{
  value = 0;
  if (_giAP2IdentificationParamHandlers)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(_giAP2IdentificationParamHandlers, key, &value);
    if (!value)
    {
      if (ValueIfPresent)
      {
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v2 = *(gLogObjects + 200);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_21_9();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
        }
      }
    }
  }

  return value;
}

BOOL iap2_identification_cancelIdentificationHandler(uint64_t *a1)
{
  if (a1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 26;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
      }
    }

    else
    {
      v8 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

    if ((iap2_identification_getState(a1) & 0xFFFFFFFD) == 1)
    {
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v13 = *(gLogObjects + 200);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
      }

      v14 = OUTLINED_FUNCTION_66_1();
      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 2u);
      }

      iap2_identification_setIdentificationState(a1, 4);
      AccessoryNotSupportedCF = acc_userNotifications_createAccessoryNotSupportedCF();
      Identifier = acc_userNotifications_createIdentifier(@"identification", a1[1]);
      ACCUNSetIdentifier(AccessoryNotSupportedCF, Identifier);
      if (Identifier)
      {
        CFRelease(Identifier);
      }

      ParentConnection = acc_endpoint_getParentConnection(*a1);
      v23 = acc_endpoint_getParentConnection(ParentConnection);
      ACCUNSetGroupIdentifier(AccessoryNotSupportedCF, v23);
      v24 = OUTLINED_FUNCTION_22();
      ACCUNManagerPresentNotification(v24, v25);
      if (AccessoryNotSupportedCF)
      {
        CFRelease(AccessoryNotSupportedCF);
      }
    }
  }

  return a1 != 0;
}

_BYTE *iap2_identification_handleIdentificationRejected(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v15 = 0;
    result = iap2_feature_getFeatureInfoEntries(&v15);
    if (result)
    {
      v2 = v15;
      if (v15)
      {
        v3 = 0;
        v4 = (result + 8);
        do
        {
          v5 = **v4;
          if (v5 && *(v5 + 32))
          {
            v6 = gLogObjects;
            v7 = gNumLogObjects;
            if (gLogObjects)
            {
              v8 = gNumLogObjects < 26;
            }

            else
            {
              v8 = 1;
            }

            if (v8)
            {
              v13 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                *buf = 134218240;
                v17 = v6;
                v18 = 1024;
                v19 = v7;
                OUTLINED_FUNCTION_8_0();
                _os_log_error_impl(v9, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, 0x12u);
                v13 = &_os_log_default;
              }
            }

            else
            {
              v13 = *(gLogObjects + 200);
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = *(v4 - 2);
              *buf = 67109120;
              LODWORD(v17) = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Clearing feature data for feature: %{coreacc:iAP2Feature_t}d...", buf, 8u);
            }

            result = (*(**v4 + 32))(v1);
            v2 = v15;
          }

          ++v3;
          v4 += 2;
        }

        while (v3 < v2);
      }
    }
  }

  return result;
}

void iap2_identification_identificationRejected()
{
  OUTLINED_FUNCTION_28_10();
  if (v0)
  {
    v2 = v1;
    if (v1)
    {
      v3 = v0;
      v4 = (v1 + 136);
      if (*(v1 + 136))
      {
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 26;
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
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v6, v7, v8, v9, v10);
          }
        }

        else
        {
          v11 = *(gLogObjects + 200);
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          CFStringGetCStringPtr(*(v2 + 192), 0x8000100u);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v12, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 0xCu);
        }

        if (!iap2_sessionControl_sendOutgoingMessage(v3, *v4))
        {
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v16 = *(gLogObjects + 200);
          }

          else
          {
            v16 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_15_1();
            _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 8u);
          }

          goto LABEL_16;
        }

        *v4 = 0;
        *(v2 + 144) = 0;
      }

      iap2_identification_setIdentificationState(v3, 3);
LABEL_16:
      iap2_identification_handleIdentificationRejected(v3);
    }
  }

  OUTLINED_FUNCTION_29_8();
}

BOOL iap2_identification_checkRequiredTransportComponentParam(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v6 = *a1;
    if (v6)
    {
      result = 0;
      switch(a3)
      {
        case 14:
          if (*(v6 + 24) != 6)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_20_10();
          if (v9 >= 0xF)
          {
            if (*(*v8 + 56))
            {
              goto LABEL_32;
            }
          }

          goto LABEL_27;
        case 15:
          if (!*(v6 + 24))
          {
            OUTLINED_FUNCTION_20_10();
            if (v11 < 0x10 || !*(*v10 + 60))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 16:
          if (*(v6 + 24) == 8)
          {
            OUTLINED_FUNCTION_20_10();
            if (v16 < 0x11 || !*(*v15 + 64))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 17:
          if ((*(v6 + 24) & 0xFFFFFFFE) == 2)
          {
            OUTLINED_FUNCTION_20_10();
            if (v18 < 0x12 || !*(*v17 + 68))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 24:
          if (*(v6 + 24) != 4)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_20_10();
          if (v13 > 0x18)
          {
            if (*(*v12 + 96))
            {
              goto LABEL_32;
            }
          }

LABEL_27:
          _addRejectParam(a2, v7, 2u);
          result = 1;
          *(a2 + 132) = 1;
          break;
        case 26:
          return result;
        default:
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v14 = *(gLogObjects + 200);
          }

          else if (OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
          }

          result = OUTLINED_FUNCTION_13();
          if (!result)
          {
            return result;
          }

          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v19, v20, v21, v22, v23, 2u);
LABEL_32:
          result = 0;
          break;
      }
    }
  }

  return result;
}

uint64_t iap2_identification_checkIdentificationInfoForRequiredTransportParam(void *a1, uint64_t a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v4 = OUTLINED_FUNCTION_17_18();
      v6 = iap2_identification_checkRequiredTransportComponentParam(v4, v5, 14);
      v7 = OUTLINED_FUNCTION_17_18();
      v9 = iap2_identification_checkRequiredTransportComponentParam(v7, v8, 15) || v6;
      OUTLINED_FUNCTION_8_0();
      v13 = iap2_identification_checkRequiredTransportComponentParam(v10, v11, v12);
      v14 = OUTLINED_FUNCTION_17_18();
      v16 = v9 | v13 | iap2_identification_checkRequiredTransportComponentParam(v14, v15, 17);
      v17 = OUTLINED_FUNCTION_17_18();
      return v16 | iap2_identification_checkRequiredTransportComponentParam(v17, v18, 24) | (*a1 == 0);
    }
  }

  return result;
}

uint64_t iap2_identification_checkIdentificationInfo(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  v2 = OUTLINED_FUNCTION_1_0();
  v4 = iap2_identification_checkIdentificationInfoFeatures(v2, v3);
  v5 = OUTLINED_FUNCTION_1_0();
  v6 = iap2_identification_checkMsgIDList(v5) | v4;
  if (v6)
  {
    iap2_identification_addMsgListParamWithDirection(IdentificationInfo, 0);
    iap2_identification_addMsgListParamWithDirection(IdentificationInfo, 1);
  }

  return v6;
}

uint64_t iap2_identification_checkIdentificationInfoAll(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (Feature)
  {
    v4 = Feature;
    v5 = *(*(Feature + 8) + 112);
    if (v5)
    {
      CFSetRemoveAllValues(v5);
    }

    else
    {
      *(*(v4 + 8) + 112) = CFSetCreateMutable(kCFAllocatorDefault, 0, 0);
    }
  }

  return iap2_identification_checkIdentificationInfo(a1);
}

void _CFSetValidateRequiredIdentificationParamsApplierFunction(const __CFNumber *a1, uint64_t a2)
{
  if (a2)
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (!CFSetContainsValue(*(a2 + 120), a1))
    {
      _addRejectParam(a2, valuePtr, 2u);
      *(a2 + 132) = 1;
    }
  }
}

uint64_t iap2_identification_identificationInfoHandler(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*result)
  {
    return 0;
  }

  if ((iap2_identification_getState(result) & 0xFFFFFFFD) == 1)
  {
    IdentificationInfo = iap2_identification_createIdentificationInfo();
    if (!IdentificationInfo)
    {
      v3 = gLogObjects;
      v4 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v5 = *(gLogObjects + 200);
      }

      else if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v86 = v3;
        OUTLINED_FUNCTION_14_16();
        v87 = v4;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v25, v26, v27, v28, v29, 0x12u);
      }

      result = OUTLINED_FUNCTION_13();
      if (!result)
      {
        return result;
      }

      *buf = 0;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v15, v16, v17, v18, v19, 2u);
      return 0;
    }

    v9 = IdentificationInfo;
    v10 = OUTLINED_FUNCTION_1_0();
    if (!iap2_identification_setIdentificationInfo(v10, v11))
    {
      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v14 = *(gLogObjects + 200);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v86 = v12;
        OUTLINED_FUNCTION_14_16();
        v87 = v13;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v43, v44, v45, v46, v47, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v38, v39, v40, v41, v42, 2u);
      }

      free(v9);
      return 0;
    }

    RejectMessage = iap2_identification_createRejectMessage(v9);
    if (RejectMessage)
    {
LABEL_39:
      v48 = gLogObjects;
      v49 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v50 = *(gLogObjects + 200);
      }

      else
      {
        v50 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          *buf = 134218240;
          v86 = v48;
          OUTLINED_FUNCTION_14_16();
          v87 = v49;
          OUTLINED_FUNCTION_25_4();
          OUTLINED_FUNCTION_10(v56, v57, v58, v59, v60);
        }
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v86) = RejectMessage;
        OUTLINED_FUNCTION_25_4();
        _os_log_impl(v51, v52, OS_LOG_TYPE_DEFAULT, v53, v54, 8u);
      }

      v55 = *(v9 + 8);
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 0x40000000;
      v84[2] = __iap2_identification_identificationInfoHandler_block_invoke;
      v84[3] = &__block_descriptor_tmp_20;
      v84[4] = v1;
      v84[5] = v9;
      iap2_sessionControl_authorizationHook_identification(v1, v55, v84);
      return 0;
    }

    v31 = OUTLINED_FUNCTION_26_1();
    v34 = iAP2MsgForEachParamDo(v31, v32, v33, v1);
    if (v34)
    {
      RejectMessage = v34;
      v35 = gLogObjects;
      v36 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v37 = *(gLogObjects + 200);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        v86 = v35;
        OUTLINED_FUNCTION_14_16();
        v87 = v36;
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_10(v69, v70, v71, v72, v73);
      }

      if (OUTLINED_FUNCTION_27())
      {
        *buf = 67109120;
        LODWORD(v86) = RejectMessage;
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v65, v66, OS_LOG_TYPE_ERROR, v67, v68, 8u);
      }

      goto LABEL_39;
    }

    v61 = _giAP2RequiredIdentificationParams;
    v88.length = CFArrayGetCount(_giAP2RequiredIdentificationParams);
    v88.location = 0;
    CFArrayApplyFunction(v61, v88, _CFSetValidateRequiredIdentificationParamsApplierFunction, v9);
    v62 = OUTLINED_FUNCTION_1_0();
    v64 = iap2_identification_checkIdentificationInfoForRequiredTransportParam(v62, v63);
    if (*(v9 + 132))
    {
      RejectMessage = -1;
      goto LABEL_39;
    }

    if (v64)
    {
      RejectMessage = 1;
      goto LABEL_39;
    }

    v74 = gLogObjects;
    v75 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v76 = *(gLogObjects + 200);
    }

    else
    {
      v76 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v86 = v74;
        OUTLINED_FUNCTION_14_16();
        v87 = v75;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "IdentificationInfo params processed, checking identification info...", buf, 2u);
    }

    v78 = OUTLINED_FUNCTION_1_0();
    v80 = iap2_identification_checkIdentificationInfoAll(v78, v79);
    v81 = *(v9 + 8);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 0x40000000;
    v82[2] = __iap2_identification_identificationInfoHandler_block_invoke_76;
    v82[3] = &__block_descriptor_tmp_77;
    v83 = v80;
    v82[4] = v1;
    v82[5] = v9;
    iap2_sessionControl_authorizationHook_identification(v1, v81, v82);
    return v80 == 0;
  }

  else
  {
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v8 = *(gLogObjects + 200);
    }

    else
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v86 = v6;
        OUTLINED_FUNCTION_14_16();
        v87 = v7;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v20, v21, v22, v23, v24, 0x12u);
      }
    }

    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "After accessory has already completed Identify process once, any subsequent IdentificationInfo is ignored.", buf, 2u);
      return 0;
    }
  }

  return result;
}

unsigned int *iap2_identification_isIdentifiedForFeature(unsigned int *result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_30_10(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_18_17(result);
      if (v3 && (v4 = *(v2 + 1)) != 0)
      {
        result = *(v4 + 112);
        if (result)
        {
          return (CFSetContainsValue(result, v1) != 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t iap2_identification_isIdentifiedForCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (!Feature)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_18_17(Feature);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    if (!*(v4 + 112))
    {
LABEL_9:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    LOBYTE(v4) = *(v4 + 128);
  }

  return v4 & 1;
}

uint64_t iap2_identification_isIdentifiedForWirelessCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (!Feature)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_18_17(Feature);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    if (!*(v4 + 112))
    {
LABEL_9:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    LOBYTE(v4) = *(v4 + 129);
  }

  return v4 & 1;
}

uint64_t iap2_identification_isIdentifiedForUSBCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (!Feature)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_18_17(Feature);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    if (!*(v4 + 112))
    {
LABEL_9:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    LOBYTE(v4) = *(v4 + 130);
  }

  return v4 & 1;
}

uint64_t iap2_identification_isIdentifiedForThemeAssets(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (!Feature)
  {
    goto LABEL_9;
  }

  v2 = OUTLINED_FUNCTION_18_17(Feature);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 1);
  if (v4)
  {
    if (!*(v4 + 112))
    {
LABEL_9:
      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    LOBYTE(v4) = *(v4 + 131);
  }

  return v4 & 1;
}

void iap2_identification_setIdentifiedForFeature(uint64_t a1)
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_30_10(a1);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 112);
        if (v4)
        {
          CFSetAddValue(v4, v1);
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v5 = *(gLogObjects + 200);
          }

          else
          {
            v5 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
            }
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_15_1();
            _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 8u);
          }
        }
      }
    }
  }
}

void *iap2_identification_getTransportComponent(void *result)
{
  if (!result)
  {
    return result;
  }

  result = OUTLINED_FUNCTION_30_10(result);
  if (!result)
  {
    return result;
  }

  v4 = result[1];
  if (!v4 || !*(v4 + 72))
  {
    return 0;
  }

  CFDictionaryGetCount(*(v4 + 72));
  OUTLINED_FUNCTION_27_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_23_9();
  if (!v6)
  {
    v9 = OUTLINED_FUNCTION_26_1();
    CFDictionaryGetKeysAndValues(v9, v10, v3);
    return 0;
  }

  memset(v3, 170, v5);
  v7 = OUTLINED_FUNCTION_26_1();
  CFDictionaryGetKeysAndValues(v7, v8, v3);
  if (v2 < 1)
  {
    return 0;
  }

  while (1)
  {
    result = *v3;
    if (*v3)
    {
      if (*(result + 5) == v1)
      {
        break;
      }
    }

    ++v3;
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

CFDataRef iap2_identification_copyMacAddressForComponentID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  if (!IdentificationInfo)
  {
    return 0;
  }

  if (!*(IdentificationInfo + 72))
  {
    return 0;
  }

  Count = CFDictionaryGetCount(*(IdentificationInfo + 72));
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_26_1();
  CFDictionaryGetKeysAndValues(v8, v9, v7);
  if (v5 < 1)
  {
LABEL_26:
    v18 = 0;
    goto LABEL_35;
  }

  v10 = v7;
  while (1)
  {
    v11 = *v10;
    if (!*v10)
    {
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects)
      {
        v16 = gNumLogObjects < 26;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          *buf = 134218240;
          *v26 = v14;
          OUTLINED_FUNCTION_2_1();
          *&v26[10] = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v17 = &_os_log_default;
        }
      }

      else
      {
        v17 = *(gLogObjects + 200);
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "transportComponent is NULL!", buf, 2u);
      }

      goto LABEL_25;
    }

    if (*v11 == a2)
    {
      v12 = *(v11 + 5);
      if (v12 == 5 || v12 == 3)
      {
        break;
      }
    }

LABEL_25:
    ++v10;
    if (!--v5)
    {
      goto LABEL_26;
    }
  }

  v18 = CFDataCreate(kCFAllocatorDefault, v11 + 24, 6);
  v19 = gLogObjects;
  v20 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 26)
  {
    v21 = *(gLogObjects + 200);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v26 = v19;
      OUTLINED_FUNCTION_2_1();
      *&v26[10] = v20;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = *v11;
    *buf = 67109378;
    *v26 = v23;
    *&v26[4] = 2112;
    *&v26[6] = v18;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "iap2_identification_copyMacAddressForComponentID: componentID=%d macAddr=%@", buf, 0x12u);
  }

LABEL_35:
  free(v7);
  return v18;
}

void iap2_identification_setParamHandler()
{
  OUTLINED_FUNCTION_28_10();
  v1 = v0;
  v3 = v2;
  v4 = _giAP2IdentificationParamHandlers;
  if (_giAP2IdentificationParamHandlers)
  {
    goto LABEL_12;
  }

  _giAP2IdentificationParamHandlers = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  if (!gLogObjects || gNumLogObjects < 26)
  {
    v11 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_10(v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_3(v23, v24, v25, v26, v27);
  }

  v4 = _giAP2IdentificationParamHandlers;
  if (_giAP2IdentificationParamHandlers)
  {
LABEL_12:
    CFDictionarySetValue(v4, v3, v1);
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 26;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
      }
    }

    else
    {
      v18 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_debug_impl(v19, v20, OS_LOG_TYPE_DEBUG, v21, v22, 8u);
    }
  }

  OUTLINED_FUNCTION_29_8();
}

uint64_t iap2_identification_setRequiredIdentificationParam(int a1)
{
  valuePtr = a1;
  if (!_giAP2RequiredIdentificationParams)
  {
    _giAP2RequiredIdentificationParams = CFArrayCreateMutable(kCFAllocatorDefault, 243, &kCFTypeArrayCallBacks);
    v1 = gLogObjects;
    v2 = gNumLogObjects;
    if (!gLogObjects || gNumLogObjects < 26)
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v24 = v1;
        OUTLINED_FUNCTION_2_1();
        v25 = v2;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
      }
    }

    else
    {
      v9 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      OUTLINED_FUNCTION_38_3(&_mh_execute_header, v9, v10, "Initialized required identification params set!", buf);
    }

    if (!_giAP2RequiredIdentificationParams)
    {
      return 0;
    }
  }

  v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(_giAP2RequiredIdentificationParams, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 26;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v20 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v24 = v12;
      OUTLINED_FUNCTION_2_1();
      v25 = v13;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v15, v16, v17, v18, v19, 0x12u);
    }
  }

  else
  {
    v20 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v24) = valuePtr;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Added identification paramID: 0x%04X to required params set!", buf, 8u);
  }

  return 1;
}