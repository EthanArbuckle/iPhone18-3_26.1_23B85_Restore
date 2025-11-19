const __CFNumber *iap2_usbHostMode_USBModeChangeNotification(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 34)
  {
    v6 = *(gLogObjects + 264);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      v24 = v4;
      OUTLINED_FUNCTION_2_1();
      LODWORD(v26) = v5;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a1)
    {
      v7 = *a1;
      if (*a1)
      {
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "USBModeChangeNotification: %@ attributes=%@", buf, 0x16u);
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(a2, @"USBMode");
      valuePtr = -1;
      if (result)
      {
        result = CFNumberGetValue(result, kCFNumberCharType, &valuePtr);
        if (result)
        {
          OUTLINED_FUNCTION_8_15();
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v11 = *(gLogObjects + 264);
          }

          else
          {
            v11 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              *buf = 134218240;
              v24 = v9;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v26) = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = a1[1];
            *buf = 138412546;
            v24 = v12;
            OUTLINED_FUNCTION_2_1();
            LODWORD(v26) = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "USBModeChangeNotification: %@ usbMode=%d", buf, 0x12u);
          }

          if (valuePtr)
          {
            if (valuePtr != 1)
            {
              return 0;
            }

            v14 = 1;
          }

          else
          {
            v14 = 0;
          }

          iAP2MsgAddVoidParam((a1 + 15), 0, v14);
          if (iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15)))
          {
            return 1;
          }

          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 34)
          {
            v17 = *(gLogObjects + 264);
          }

          else
          {
            v17 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              *buf = 134218240;
              v24 = v15;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v26) = v16;
              OUTLINED_FUNCTION_32(&_mh_execute_header, v20, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          result = OUTLINED_FUNCTION_13();
          if (result)
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to send usb mode notification!!", buf, 2u);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _requestAppLaunchHandler(void *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!**a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 2u);
  if (!Feature)
  {
    return 0;
  }

  v6 = gNumLogObjects;
  v54 = Feature;
  if (gLogObjects && gNumLogObjects >= 29)
  {
    v7 = *(gLogObjects + 224);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_18(3.8521e-34);
      v63 = v6;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    MsgID = iAP2MsgGetMsgID(a2);
    *buf = 67109120;
    *&buf[4] = MsgID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Request App Launch message (0x%04X)!", buf, 8u);
  }

  v55 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (FirstParam)
  {
    NextParam = FirstParam;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects)
      {
        v16 = gNumLogObjects < 29;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v14;
          v62 = 1024;
          v63 = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v17 = &_os_log_default;
        }
      }

      else
      {
        v17 = *(gLogObjects + 224);
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = ParamID;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "msgParamID: %d", buf, 8u);
      }

      if (ParamID == 1)
      {
        v60 = -1431655766;
        DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v60);
        if (v60)
        {
          v46 = logObjectForModule_2(28);
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_85;
          }

          v51 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *&buf[4] = 1;
          OUTLINED_FUNCTION_3_25(v51);
          goto LABEL_94;
        }

        if (DataAsU8 <= 1)
        {
          v12 = DataAsU8;
        }

        else
        {
          v12 = 0;
        }
      }

      else if (ParamID)
      {
        v19 = gLogObjects;
        v20 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v21 = *(gLogObjects + 248);
        }

        else
        {
          v21 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v19;
            v62 = 1024;
            v63 = v20;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v21 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          *&buf[4] = ParamID;
          OUTLINED_FUNCTION_3_25(v22);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        v60 = -1431655766;
        if (v11)
        {
          CFRelease(v11);
        }

        v11 = iAP2MsgCopyDataAsCFString(NextParam, &v60);
        if (v60)
        {
          v46 = logObjectForModule_2(28);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v48 = iAP2MsgGetMsgID(a2);
            *buf = 67109376;
            OUTLINED_FUNCTION_3_25(v48);
LABEL_94:
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          }

LABEL_85:
          v27 = 0;
LABEL_86:
          v2 = 0;
          if (v11)
          {
            goto LABEL_87;
          }

          if (!v27)
          {
            return v2;
          }

LABEL_88:
          CFRelease(v27);
          return v2;
        }
      }

      NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
      if (!NextParam)
      {
        goto LABEL_44;
      }
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_44:
  v23 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 29)
  {
    v24 = *(gLogObjects + 224);
    v25 = v55;
    v26 = v12;
  }

  else
  {
    v24 = &_os_log_default;
    v25 = v55;
    v26 = v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0_18(3.8521e-34);
      v63 = v23;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v11;
    v62 = 1024;
    v63 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Request app launch for %@: %{coreacc:iAP2ParamID_RequestAppLaunch_AppLaunchMethod_t}d!", buf, 0x12u);
  }

  if (!v11)
  {
    v50 = logObjectForModule_2(28);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Missing AppBundleID - ignoring message", buf, 2u);
    }

    return 0;
  }

  v27 = SBSCopyFrontmostApplicationDisplayIdentifier();
  if (v27 && CFStringCompare(v11, v27, 0) == kCFCompareEqualTo)
  {
    v29 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 29)
    {
      v30 = *(gLogObjects + 224);
    }

    else
    {
      v30 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_0_18(3.8521e-34);
        v63 = v29;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v26 = 1;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Application already in foreground (%@), launching without dialog...", buf, 0xCu);
    }

    v28 = 1;
  }

  else if (v26)
  {
    v28 = 0;
  }

  else
  {
    if (*v54 == 1)
    {
      v52 = logObjectForModule_2(28);
      v2 = 1;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = v25[1];
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "App Launch dialog is already active, ignoring app launch request for endpoint %@...", buf, 0xCu);
      }

      goto LABEL_87;
    }

    v26 = 0;
    v28 = 0;
    *v54 = 1;
  }

  v31 = platform_externalAccessory_copyEAProtocolsForEndpointUUID(v25[1]);
  if (v31)
  {
    v32 = v31;
    Count = CFArrayGetCount(v31);
    if (Count < 1)
    {
      v36 = 0;
    }

    else
    {
      v34 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);
      v36 = 1;
      if (CFStringCompare(ValueAtIndex, @"com.apple.mfi.launch_notify_previous", 1uLL))
      {
        v37 = 1;
        do
        {
          v38 = v37;
          if (v34 == v37)
          {
            break;
          }

          v39 = CFArrayGetValueAtIndex(v32, v37);
          v40 = CFStringCompare(v39, @"com.apple.mfi.launch_notify_previous", 1uLL);
          v37 = v38 + 1;
        }

        while (v40);
        v36 = v38 < v34;
      }
    }

    CFRelease(v32);
  }

  else
  {
    v36 = 0;
  }

  v41 = v25[1];
  if (!v41)
  {
    goto LABEL_86;
  }

  v2 = CFRetain(v41);
  if (v2)
  {
    CFRetain(v11);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = ___requestAppLaunchHandler_block_invoke;
    block[3] = &__block_descriptor_tmp_20_1;
    v57 = v26;
    v58 = v28;
    v59 = v36;
    block[4] = v11;
    block[5] = v2;
    block[6] = v25;
    dispatch_async(global_queue, block);
    v2 = 1;
  }

LABEL_87:
  CFRelease(v11);
  if (v27)
  {
    goto LABEL_88;
  }

  return v2;
}

void ___requestAppLaunchHandler_block_invoke(uint64_t a1)
{
  if (platform_system_isAppInstalledWithBundleID(*(a1 + 32)))
  {
    if (*(a1 + 56) == 1)
    {
      v2 = platform_system_isLockScreenUIDisplayed();
      if (v2)
      {
        v3 = *(a1 + 60) ^ 1;
      }

      else
      {
        v3 = 0;
      }

      v12 = gLogObjects;
      v13 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 29)
      {
        v14 = *(gLogObjects + 224);
      }

      else
      {
        v14 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v62 = v12;
          v63 = 1024;
          LODWORD(v64) = v13;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = "NO";
        if (v3)
        {
          v17 = "YES";
        }

        else
        {
          v17 = "NO";
        }

        v18 = *(a1 + 60);
        if (v2)
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        *buf = 136315650;
        v62 = v17;
        v63 = 2080;
        v64 = v19;
        if (v18)
        {
          v16 = "YES";
        }

        v65 = 2080;
        v66 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "launchToBackground: %s (lockScreenDisplayed: %s, alreadyInForeground: %s)", buf, 0x20u);
      }

      if (v3)
      {
        if (gLogObjects && gNumLogObjects >= 29)
        {
          v20 = *(gLogObjects + 224);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_4_27();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v35 = *(a1 + 32);
          *buf = 138412290;
          v62 = v35;
          OUTLINED_FUNCTION_15();
          _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        }

        platform_system_launchApplicationToBackground(*(a1 + 32));
      }

      else if ((*(a1 + 60) & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 29)
        {
          v21 = *(gLogObjects + 224);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_4_27();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        if (OUTLINED_FUNCTION_93())
        {
          v41 = *(a1 + 32);
          v42 = *(a1 + 61);
          *buf = 138412546;
          v62 = v41;
          v63 = 1024;
          LODWORD(v64) = v42;
          OUTLINED_FUNCTION_15();
          _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
        }

        platform_system_launchApplication(*(a1 + 32), *(a1 + 61));
      }
    }

    else
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
      if (EndpointWithUUID)
      {
        AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
        v6 = platform_system_copyAppNameForBundleID(*(a1 + 32));
        v7 = acc_strings_copyPlaceholder_Unknown();
        v8 = acc_accInfo_retainedProperty(AccessoryInfo, 1, v7);
        v9 = acc_strings_copyPlaceholder_Unknown();
        v10 = acc_accInfo_retainedProperty(AccessoryInfo, 0, v9);
        if (v6)
        {
          v11 = CFRetain(v6);
        }

        else
        {
          v11 = 0;
        }

        v22 = acc_strings_bundleCF();
        v23 = CFBundleCopyLocalizedString(v22, @"%@ would like to communicate with the %@ %@.", @"%@ would like to communicate with the %@ %@.", 0);
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v23, v6, v8, v10);
        v25 = acc_strings_bundleCF();
        v26 = CFBundleCopyLocalizedString(v25, @"Allow", @"Allow", 0);
        v27 = acc_strings_bundleCF();
        v28 = CFBundleCopyLocalizedString(v27, @"Ignore", @"Ignore", 0);
        cf = acc_userNotifications_createIdentifier(@"app-launch", *(*(a1 + 48) + 8));
        if (v6)
        {
          v55 = v10;
          v56 = v8;
          v54 = v11;
          v29 = ACCUNCreate(1, v11, v24, v26, v28, 0, 1, cf, 0.0, *(*(a1 + 48) + 16));
          CFRetain(*(a1 + 32));
          CFRetain(*(a1 + 40));
          v30 = gLogObjects;
          v31 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 29)
          {
            v32 = *(gLogObjects + 224);
          }

          else
          {
            v32 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v62 = v30;
              v63 = 1024;
              LODWORD(v64) = v31;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 32);
            *buf = 138412290;
            v62 = v34;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Prompting user to launch application: %@...", buf, 0xCu);
          }

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 0x40000000;
          v58[2] = ___requestAppLaunchHandler_block_invoke_15;
          v58[3] = &__block_descriptor_tmp_19_0;
          v60 = *(a1 + 61);
          v59 = *(a1 + 32);
          ACCUNManagerPresentNotification(v29, v58);
          v10 = v55;
          v8 = v56;
          v11 = v54;
          if (v29)
          {
            CFRelease(v29);
          }
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v6)
        {
          CFRelease(v6);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  v48 = *(a1 + 32);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(a1 + 40);
  if (v49)
  {
    CFRelease(v49);
  }
}

void ___requestAppLaunchHandler_block_invoke_15(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 28;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (a2)
  {
    if (v4)
    {
      v5 = *(gLogObjects + 224);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v31);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v7 = *(a1 + 32);
      v31 = 138412290;
      v32 = v7;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 224);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v31);
    }

    if (OUTLINED_FUNCTION_93())
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v31 = 138412546;
      v32 = v13;
      v33 = 1024;
      v34 = v14;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v15, v16, v17, v18, v19, 0x12u);
    }

    platform_system_launchApplication(*(a1 + 32), *(a1 + 48));
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*(a1 + 40));
  if (EndpointWithUUID)
  {
    v21 = EndpointWithUUID;
    if (acc_endpoint_getProtocol(EndpointWithUUID) == 4)
    {
      v22 = v21[7];
      if (v22)
      {
        v23 = *(v22 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___requestAppLaunchHandler_block_invoke_16;
        block[3] = &__block_descriptor_tmp_12;
        block[4] = v22;
        dispatch_sync(v23, block);
      }
    }
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    CFRelease(v25);
  }
}

_BYTE *_createFeature_16(_BYTE *result)
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

BOOL _destroyFeature_16(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

void *accSNTPTimeSync_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200403C432F0CuLL);
    if (v2)
    {
      v3 = dispatch_queue_create("ACCSNTPTimeSyncQ", 0);
      v2[3] = v3;
      if (v3)
      {
        *v2 = a1;
        _accSNTPTimeSync_endpoint_initSession(v2);
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, platform_timeSync_getAccessoryTime, @"com.apple.coreaccessories.ACCTimeSyncTest", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        platform_timeSync_startServer();
      }
    }
  }

  else
  {
    v6 = logObjectForModule_25();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v7, 2u);
    }

    return 0;
  }

  return v2;
}

uint64_t accSNTPTimeSync_endpoint_publish(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      Protocol = acc_endpoint_getProtocol(result);
      if (gLogObjects && gNumLogObjects >= 59)
      {
        v3 = *(gLogObjects + 464);
      }

      else
      {
        v3 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_6_0();
          _os_log_error_impl(v8, v9, OS_LOG_TYPE_ERROR, v10, v11, 0x12u);
        }
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*v1 + 24);
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 8u);
      }

      if (Protocol == 15)
      {
        if (acc_endpoint_isPublished(*v1))
        {
          _accSNTPTimeSync_endpoint_cleanupSession();
          _accSNTPTimeSync_endpoint_initSession(v1);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t accSNTPTimeSync_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      _accSNTPTimeSync_endpoint_cleanupSession();
      dispatch_sync(*(*v1 + 3), &__block_literal_global_22);
      dispatch_release(*(*v1 + 3));
      *(*v1 + 3) = 0;
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

uint64_t accSNTPTimeSync_endpoint_processIncomingData(uint64_t result, CFTypeRef cf)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (cf)
    {
      if (*v3)
      {
        CFRetain(cf);
        v4 = v3[3];
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 0x40000000;
        v5[2] = __accSNTPTimeSync_endpoint_processIncomingData_block_invoke;
        v5[3] = &__block_descriptor_tmp_3_1;
        v5[4] = v3;
        v5[5] = cf;
        dispatch_async(v4, v5);
        return 1;
      }
    }
  }

  return result;
}

BOOL _accSNTPTimeSync_endpoint_processIncomingData(_BOOL8 result, CFDataRef theData)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = 0;
  if (!theData || !*v3)
  {
    return result;
  }

  if (!**v3)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr)
  {
    v16 = logObjectForModule_25();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    return 0;
  }

  if (Length != 48)
  {
    return 0;
  }

  if (gLogObjects && gNumLogObjects >= 59)
  {
    v6 = *(gLogObjects + 464);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_6_0();
      _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x12u);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    if (*v3)
    {
      v11 = *(*v3 + 24);
    }

    OUTLINED_FUNCTION_6_0();
    _os_log_debug_impl(v12, v13, OS_LOG_TYPE_DEBUG, v14, v15, 0x12u);
  }

  platform_timeSync_setSystemTime(theData);
  return 1;
}

uint64_t accSNTPTimeSync_endpoint_sendOutgoingData(uint64_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  acc_platform_packetLogging_logSNTPTimeSyncMsg(*a1, a2, 0);

  return acc_endpoint_sendOutgoingData(v3, a2);
}

void accSNTPTimeSync_endpoint_getAccessoryTime_cold_1(UInt8 *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_24(a1, a2, 12289);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 50);
  if (Mutable)
  {
    v8 = Mutable;
    CFDataAppendBytes(Mutable, a1, 50);
    v9 = accSNTPTimeSync_endpoint_sendOutgoingData(a3, v8);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;

  free(a1);
}

void accSNTPTimeSync_endpoint_getAccessoryTime_cold_2()
{
  v0 = logObjectForModule_25();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void accSNTPTimeSync_endpoint_sendAccessoryTime_cold_1(UInt8 *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_1_24(a1, a2, 12291);
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 50);
  if (Mutable)
  {
    v8 = Mutable;
    CFDataAppendBytes(Mutable, a1, 50);
    v9 = accSNTPTimeSync_endpoint_sendOutgoingData(a3, v8);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;

  free(a1);
}

void accSNTPTimeSync_endpoint_sendAccessoryTime_cold_2()
{
  v0 = logObjectForModule_25();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_5_12();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void ___presentShareWiFiCredentialsNotification_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "userDeclinedWiFiNetworkSharing WiFi Configuration Information %@", &v2, 0xCu);
}

void ___presentShareWiFiCredentialsNotification_block_invoke_cold_6(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "device WiFi Configuration Information %@", &v2, 0xCu);
}

uint64_t iap2_appLinks_start(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  Feature = iap2_feature_getFeature(a1, 0x18u);
  if (!Feature || (*(Feature + 104) & 1) != 0)
  {
    return 0;
  }

  v171 = Feature;
  v166 = a1;
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v10 = 0;
    Mutable = 0;
LABEL_79:
    if (Mutable | v10)
    {
      _removeSubscribers(v166, v171);
      if (*v171)
      {
        CFRelease(*v171);
        *v171 = 0;
      }

      if (Mutable)
      {
        *v171 = CFRetain(Mutable);
        if (CFSetGetCount(Mutable))
        {
          *(v171 + 20) = 1;
        }
      }

      else
      {
        *v171 = 0;
      }

      v126 = *(v171 + 24);
      if (v126)
      {
        CFRelease(v126);
        *(v171 + 24) = 0;
      }

      if (v10)
      {
        *(v171 + 24) = CFRetain(v10);
        if (CFSetGetCount(v10))
        {
          *(v171 + 44) = 1;
        }
      }

      else
      {
        *(v171 + 24) = 0;
      }

      if (*v166)
      {
        if (*(v171 + 20) == 1 && *v171 && CFSetGetCount(*v171) >= 1)
        {
          v127 = iap2_accAuthentication_copyCertificateSerial(v166);
          if (!v127)
          {
            v128 = 0;
LABEL_114:
            *(v171 + 104) = v128 | v127;
            v141 = gLogObjects;
            v142 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 50)
            {
              v143 = *(gLogObjects + 392);
            }

            else if (OUTLINED_FUNCTION_27())
            {
              *buf = 134218240;
              *v177 = v141;
              *&v177[8] = 1024;
              v178[0] = v142;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v144, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v2 = 1;
            if (OUTLINED_FUNCTION_76_1())
            {
              v145 = v166[1];
              *buf = 138412290;
              *v177 = v145;
              OUTLINED_FUNCTION_40_5();
              _os_log_impl(v146, v147, v148, v149, v150, 0xCu);
            }

            goto LABEL_121;
          }

          v128 = platform_appLinks_addSubscriberForSubFeature(v166[1], 0, *v171, *(v171 + 18), v127);
          CFRelease(v127);
        }

        else
        {
          v128 = 0;
        }

        if (*(v171 + 44) == 1)
        {
          v129 = *(v171 + 24);
          if (v129)
          {
            if (CFSetGetCount(v129) >= 1)
            {
              v130 = iap2_accAuthentication_copyCertificateSerial(v166);
              if (v130)
              {
                v131 = v130;
                LOBYTE(v127) = platform_appLinks_addSubscriberForSubFeature(v166[1], 1, *(v171 + 24), *(v171 + 42), v130);
                CFRelease(v131);
                goto LABEL_114;
              }
            }
          }
        }
      }

      else
      {
        v128 = 0;
      }

      LOBYTE(v127) = 0;
      goto LABEL_114;
    }

    return 0;
  }

  v8 = FirstParam;
  v169 = 0;
  v170 = 0;
  Mutable = 0;
  v10 = 0;
  *&v7 = 67109120;
  v172 = v7;
  *&v7 = 67109376;
  v164 = v7;
  *&v7 = 134218240;
  v167 = v7;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v8);
    v175 = 0;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v12 = *(gLogObjects + 392);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_75();
      if (v13)
      {
        OUTLINED_FUNCTION_2_31(v13, v14, v15, v16, v17, v18, v19, v20, v164, *(&v164 + 1), v165, v166, v167);
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v118, v119, v120, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v121, 0x12u);
      }
    }

    v21 = OUTLINED_FUNCTION_106();
    if (v21)
    {
      *buf = v172;
      *v177 = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v114, v115, v116, "msgParamID: %d", v117, 8u);
    }

    switch(ParamID)
    {
      case 0:
        if (Mutable)
        {
          goto LABEL_107;
        }

        v29 = OUTLINED_FUNCTION_47_4();
        v31 = iAP2MsgGetFirstParam(v29, v30);
        if (!v31)
        {
          Mutable = 0;
          break;
        }

        NextParam = v31;
        Mutable = 0;
        while (1)
        {
          HIWORD(v174) = iAP2MsgGetParamID(NextParam);
          if (gLogObjects && gNumLogObjects >= 50)
          {
            v33 = *(gLogObjects + 392);
          }

          else
          {
            v34 = OUTLINED_FUNCTION_75();
            if (v34)
            {
              OUTLINED_FUNCTION_2_31(v34, v35, v36, v37, v38, v39, v40, v41, v164, *(&v164 + 1), v165, v166, v167);
              OUTLINED_FUNCTION_39_5();
              _os_log_error_impl(v57, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, 0x12u);
            }
          }

          v42 = OUTLINED_FUNCTION_106();
          if (v42)
          {
            OUTLINED_FUNCTION_31_8(v42, v43, v44, v45, v46, v47, v48, v49, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172);
            OUTLINED_FUNCTION_74_0();
            _os_log_debug_impl(v53, v54, v55, "msgSubParamID: %d", v56, 8u);
          }

          if (!iAP2MsgIsDataVoid(NextParam))
          {
            break;
          }

          v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &v174 + 2);
          if (Mutable || (Mutable = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks)) != 0)
          {
            CFSetAddValue(Mutable, v50);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          v51 = OUTLINED_FUNCTION_47_4();
          NextParam = iAP2MsgGetNextParam(v51, v52, NextParam);
          if (!NextParam)
          {
            goto LABEL_76;
          }
        }

        v136 = logObjectForModule_26();
        if (!OUTLINED_FUNCTION_13_9(v136))
        {
          goto LABEL_107;
        }

        iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_43_6();
        *&v177[6] = 0;
        LOWORD(v178[0]) = v137;
        *(v178 + 2) = v138;
        v135 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
        goto LABEL_109;
      case 1:
        if ((v170 & 0x100000000) != 0)
        {
          goto LABEL_62;
        }

        v94 = OUTLINED_FUNCTION_50_3(v21, v22, v23, v24, v25, v26, v27, v28, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172, *(&v172 + 1), v173, v174, v175);
        if (v175)
        {
          v153 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v153))
          {
            goto LABEL_107;
          }

LABEL_133:
          MsgID = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_28_8(MsgID, v157, v158, v159, v160, v161, v162, v163, v164);
          OUTLINED_FUNCTION_8_16();
          v135 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          v139 = ParamID;
          v140 = 14;
          goto LABEL_110;
        }

        *(v171 + 16) = v94;
LABEL_62:
        HIDWORD(v170) = 1;
        break;
      case 2:
        if (v170)
        {
          goto LABEL_40;
        }

        v62 = OUTLINED_FUNCTION_50_3(v21, v22, v23, v24, v25, v26, v27, v28, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172, *(&v172 + 1), v173, v174, v175);
        if (v175)
        {
          v154 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v154))
          {
            goto LABEL_107;
          }

          goto LABEL_133;
        }

        *(v171 + 18) = v62;
LABEL_40:
        LODWORD(v170) = 1;
        break;
      case 3:
        if (v10)
        {
          goto LABEL_107;
        }

        v63 = OUTLINED_FUNCTION_47_4();
        v65 = iAP2MsgGetFirstParam(v63, v64);
        if (v65)
        {
          NextParam = v65;
          v10 = 0;
          while (1)
          {
            HIWORD(v174) = iAP2MsgGetParamID(NextParam);
            if (gLogObjects && gNumLogObjects >= 50)
            {
              v66 = *(gLogObjects + 392);
            }

            else
            {
              v67 = OUTLINED_FUNCTION_75();
              if (v67)
              {
                OUTLINED_FUNCTION_2_31(v67, v68, v69, v70, v71, v72, v73, v74, v164, *(&v164 + 1), v165, v166, v167);
                OUTLINED_FUNCTION_39_5();
                _os_log_error_impl(v90, v91, v92, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v93, 0x12u);
              }
            }

            v75 = OUTLINED_FUNCTION_106();
            if (v75)
            {
              OUTLINED_FUNCTION_31_8(v75, v76, v77, v78, v79, v80, v81, v82, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172);
              OUTLINED_FUNCTION_74_0();
              _os_log_debug_impl(v86, v87, v88, "msgSubParamID: %d", v89, 8u);
            }

            if (!iAP2MsgIsDataVoid(NextParam))
            {
              break;
            }

            v83 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &v174 + 2);
            if (v10 || (v10 = CFSetCreateMutable(kCFAllocatorDefault, 1, &kCFTypeSetCallBacks)) != 0)
            {
              CFSetAddValue(v10, v83);
            }

            if (v83)
            {
              CFRelease(v83);
            }

            v84 = OUTLINED_FUNCTION_47_4();
            NextParam = iAP2MsgGetNextParam(v84, v85, NextParam);
            if (!NextParam)
            {
              goto LABEL_76;
            }
          }

          v132 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v132))
          {
            goto LABEL_107;
          }

          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_43_6();
          *&v177[6] = 3;
          LOWORD(v178[0]) = v133;
          *(v178 + 2) = v134;
          v135 = "Subparam ID: %d parse error in Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_109:
          v139 = NextParam;
          v140 = 20;
LABEL_110:
          _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, v135, buf, v140);
          goto LABEL_107;
        }

        v10 = 0;
        break;
      case 4:
        if ((v169 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

        v61 = OUTLINED_FUNCTION_50_3(v21, v22, v23, v24, v25, v26, v27, v28, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172, *(&v172 + 1), v173, v174, v175);
        if (v175)
        {
          v152 = logObjectForModule_26();
          if (!OUTLINED_FUNCTION_13_9(v152))
          {
            goto LABEL_107;
          }

          goto LABEL_133;
        }

        *(v171 + 40) = v61;
LABEL_36:
        HIDWORD(v169) = 1;
        break;
      case 5:
        if (v169)
        {
          goto LABEL_66;
        }

        v95 = OUTLINED_FUNCTION_50_3(v21, v22, v23, v24, v25, v26, v27, v28, v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, v169, v170, v171, v172, *(&v172 + 1), v173, v174, v175);
        if (!v175)
        {
          *(v171 + 42) = v95;
LABEL_66:
          LODWORD(v169) = 1;
          break;
        }

        v155 = logObjectForModule_26();
        if (OUTLINED_FUNCTION_13_9(v155))
        {
          goto LABEL_133;
        }

LABEL_107:
        v2 = 0;
LABEL_121:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        return v2;
      default:
        if (gLogObjects && gNumLogObjects >= 50)
        {
          v96 = *(gLogObjects + 392);
        }

        else
        {
          v97 = OUTLINED_FUNCTION_75();
          v96 = &_os_log_default;
          if (v97)
          {
            OUTLINED_FUNCTION_2_31(v97, v98, v99, v100, v101, v102, v103, v104, v164, *(&v164 + 1), v165, v166, v167);
            OUTLINED_FUNCTION_39_5();
            _os_log_error_impl(v122, v123, v124, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v125, 0x12u);
            v96 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v105 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_28_8(v105, v106, v107, v108, v109, v110, v111, v112, v164);
          *v177 = ParamID;
          *&v177[4] = 1024;
          *&v177[6] = v113;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }

        break;
    }

LABEL_76:
    v8 = iAP2MsgGetNextParam(a2, 0, v8);
    if (!v8)
    {
      goto LABEL_79;
    }
  }
}

id _removeSubscribers(void *a1, CFSetRef *a2)
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

  v3 = *a2 && CFSetGetCount(*a2) >= 1 ? platform_appLinks_removeSubscriberForSubFeature(a1[1], 0) : 0;
  v5 = a2[3];
  if (!v5 || CFSetGetCount(v5) < 1)
  {
    return v3;
  }

  v6 = a1[1];

  return platform_appLinks_removeSubscriberForSubFeature(v6, 1);
}

id iap2_appLinks_stop(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    Feature = iap2_feature_getFeature(a1, 0x18u);
    if (Feature && (v5 = Feature, OUTLINED_FUNCTION_32_5(Feature), v6))
    {
      *(v5 + 104) = 0;
      *(v5 + 20) = 0;
      *(v5 + 44) = 0;
      v2 = _removeSubscribers(a1, v5);
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v8 = *(gLogObjects + 392);
      }

      else if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        v25 = v7;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v23);
      }

      if (OUTLINED_FUNCTION_76_1())
      {
        v9 = a1[1];
        v23 = 138412290;
        v24 = v9;
        OUTLINED_FUNCTION_40_5();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }

      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v15 = *(v5 + 24);
      if (v15)
      {
        CFRelease(v15);
        *(v5 + 24) = 0;
      }

      v16 = *(v5 + 80);
      if (v16)
      {
        CFRelease(v16);
        *(v5 + 80) = 0;
      }

      v17 = *(v5 + 72);
      if (v17)
      {
        CFRelease(v17);
        *(v5 + 72) = 0;
      }

      v18 = *(v5 + 96);
      if (v18)
      {
        CFRelease(v18);
        *(v5 + 96) = 0;
      }

      v19 = *(v5 + 56);
      if (v19)
      {
        CFRelease(v19);
        *(v5 + 56) = 0;
      }

      v20 = *(v5 + 64);
      if (v20)
      {
        CFRelease(v20);
        *(v5 + 64) = 0;
      }

      *(v5 + 90) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_appLinks_requestAppIcons(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v5 = OUTLINED_FUNCTION_21_7();
  result = iap2_feature_getFeature(v5, v6);
  if (!result)
  {
    return result;
  }

  v7 = result;
  OUTLINED_FUNCTION_32_5(result);
  if (!v8)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_26_1();
  result = iAP2MsgGetFirstParam(v9, v10);
  if (!result)
  {
    return result;
  }

  NextParam = result;
  v84 = a1;
  v85 = v7;
  v13 = 0;
  *&v11 = 134218240;
  v86 = v11;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    valuePtr = ParamID;
    v87 = 0;
    v15 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v16 = *(gLogObjects + 392);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_75();
      if (v17)
      {
        OUTLINED_FUNCTION_32_3(v17, v18, v19, v20, v21, v22, v23, v24, v84, v85, v86);
        *v90 = v15;
        OUTLINED_FUNCTION_17_14();
        OUTLINED_FUNCTION_39_5();
        _os_log_error_impl(v57, v58, v59, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60, 0x12u);
        ParamID = valuePtr;
      }
    }

    if (OUTLINED_FUNCTION_106())
    {
      *buf = 67109120;
      *v90 = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v53, v54, v55, "msgParamID: %d", v56, 8u);
      ParamID = valuePtr;
    }

    if (ParamID > 1)
    {
      v28 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v29 = *(gLogObjects + 392);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_75();
        v29 = &_os_log_default;
        if (v30)
        {
          OUTLINED_FUNCTION_32_3(v30, v31, v32, v33, v34, v35, v36, v37, v84, v85, v86);
          *v90 = v28;
          OUTLINED_FUNCTION_17_14();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v61, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, 0x12u);
          v29 = &_os_log_default;
        }
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v38 = valuePtr;
        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v90 = v38;
        *&v90[4] = 1024;
        *&v90[6] = MsgID;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
      }
    }

    else
    {
      v25 = iAP2MsgCopyDataAsCFString(NextParam, &v87);
      if (!v87)
      {
        goto LABEL_30;
      }

      v26 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v27 = *(gLogObjects + 392);
      }

      else
      {
        v40 = OUTLINED_FUNCTION_75();
        v27 = &_os_log_default;
        if (v40)
        {
          OUTLINED_FUNCTION_32_3(v40, v41, v42, v43, v44, v45, v46, v47, v84, v85, v86);
          *v90 = v26;
          OUTLINED_FUNCTION_17_14();
          OUTLINED_FUNCTION_39_5();
          _os_log_error_impl(v65, v66, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v68, 0x12u);
          v27 = &_os_log_default;
        }
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_30:
        if (!v25)
        {
          goto LABEL_41;
        }

LABEL_31:
        if (v13 || (v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) != 0)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberShortType, &valuePtr);
          v50 = v49;
          if (Mutable && v49)
          {
            CFDictionaryAddValue(Mutable, @"CARApplicationBundleIdentifierKey", v25);
            CFDictionaryAddValue(Mutable, @"appLinksSubFeature", v50);
            CFArrayAppendValue(v13, Mutable);
            goto LABEL_37;
          }

          if (Mutable)
          {
LABEL_37:
            CFRelease(Mutable);
          }

          if (v50)
          {
            CFRelease(v50);
          }
        }

        CFRelease(v25);
        goto LABEL_41;
      }

      *buf = 67109120;
      *v90 = v87;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "iAP2MsgCopyDataAsCFString failed with err: %x", buf, 8u);
      if (v25)
      {
        goto LABEL_31;
      }
    }

LABEL_41:
    v51 = OUTLINED_FUNCTION_26_1();
    NextParam = iAP2MsgGetNextParam(v51, v52, NextParam);
  }

  while (NextParam);
  v69 = v85;
  if (!v13)
  {
    return 0;
  }

  result = CFArrayGetCount(v13);
  if (result)
  {
    v70 = *(v85 + 72);
    if (v70)
    {
      CFRelease(v70);
    }

    *(v85 + 72) = v13;
    v71 = gLogObjects;
    v72 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v73 = *(gLogObjects + 392);
    }

    else
    {
      v73 = &_os_log_default;
      v74 = OUTLINED_FUNCTION_13();
      if (v74)
      {
        OUTLINED_FUNCTION_32_3(v74, v75, v76, v77, v78, v79, v80, v81, v84, v85, v86);
        *v90 = v71;
        *&v90[8] = 1024;
        LODWORD(v91) = v72;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        v13 = *(v69 + 72);
      }
    }

    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      v82 = *(v84 + 8);
      *buf = 138412546;
      *v90 = v82;
      *&v90[8] = 2112;
      v91 = v13;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "EndpointUUID: %@ received app icon list: %@", buf, 0x16u);
      v13 = *(v69 + 72);
    }

    return platform_appLinks_requestAppIcons(*(v84 + 8), v13);
  }

  return result;
}

uint64_t iap2_appLinks_appLinksUpdateHandler(void *a1, CFDictionaryRef theDict)
{
  v213 = 0;
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"appLinksState");
  theArray = CFDictionaryGetValue(theDict, @"appList");
  v5 = CFDictionaryGetValue(theDict, @"appLinksSubFeature");
  if (!Value)
  {
    return 0;
  }

  v6 = v5;
  if (!v5)
  {
    return 0;
  }

  if (!theArray)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
  CFNumberGetValue(v6, kCFNumberIntType, &v213);
  v7 = OUTLINED_FUNCTION_21_7();
  Feature = iap2_feature_getFeature(v7, v8);
  if (!Feature)
  {
    return 0;
  }

  v10 = v213;
  if (v213 == 1)
  {
    *(Feature + 32) = valuePtr;
    v11 = 1;
  }

  else if (v213)
  {
    v12 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v13 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v215 = v12;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v172, v173, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_17())
    {
      *buf = 136315394;
      *v215 = "_setStateForSubFeature";
      OUTLINED_FUNCTION_17_0();
      v216[0] = v10;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v168, v169, "%s Invalid subFeature: %d", buf);
    }

    v11 = v213;
  }

  else
  {
    v11 = 0;
    *(Feature + 8) = valuePtr;
  }

  if (!*a1)
  {
    return 0;
  }

  v14 = gLogObjects;
  if (gLogObjects)
  {
    v15 = gNumLogObjects <= 49;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v11 == 1)
  {
    if (v16)
    {
      v18 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v215 = v14;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v176, v177, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v35 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a1[1];
      *buf = 138412290;
      *v215 = v37;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    }

    v43 = OUTLINED_FUNCTION_21_7();
    v45 = iap2_feature_getFeature(v43, v44);
    if (!v45)
    {
      return 0;
    }

    v46 = v45;
    OUTLINED_FUNCTION_32_5(v45);
    if (!v96 || *(v46 + 44) != 1)
    {
      return 0;
    }

    v47 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v48 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      *v215 = v47;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v179, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      Count = CFArrayGetCount(theArray);
      *buf = 134217984;
      *v215 = Count;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    }

    if (CFArrayGetCount(theArray))
    {
      v170 = OUTLINED_FUNCTION_9_3();
      LODWORD(v206) = _calculateListCap(v170, v171, theArray);
    }

    else
    {
      LODWORD(v206) = 0;
    }

    OUTLINED_FUNCTION_3_28();
    v56 = *(v46 + 32);
    v57 = OUTLINED_FUNCTION_6_11();
    v60 = iAP2MsgAddU8Param(v57, v58, 3, v59);
    v61 = v60;
    if (*(v46 + 32) == 2)
    {
      v62 = OUTLINED_FUNCTION_6_11();
      if (!(iAP2MsgAddU16Param(v62, v63, 5, v206) | v61))
      {
LABEL_73:
        if (!CFArrayGetCount(theArray))
        {
          return 0;
        }

        v209 = _iAP2MessageCutoffSize(a1);
        OUTLINED_FUNCTION_3_28();
        if (!v206)
        {
          return 0;
        }

        v65 = 0;
        HIDWORD(v205) = 0;
        v66 = 0;
        allocator = kCFAllocatorDefault;
        v67 = (v206 - 1);
        v204 = v67;
        v68 = v206;
        *&v64 = 67109376;
        *v193 = v64;
        *&v64 = 67109632;
        v199 = v64;
        *&v64 = 134218240;
        *cfa = v64;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v65);
          if (!ValueAtIndex)
          {
            goto LABEL_108;
          }

          v70 = ValueAtIndex;
          v71 = iAP2MsgAddGroupParam((a1 + 15), 4);
          if (v71)
          {
            ++v66;
          }

          iAP2MsgAddU16Param((a1 + 15), v71, 0, v65);
          CFDictionaryGetValue(v70, @"CARApplicationBundleIdentifierKey");
          OUTLINED_FUNCTION_46_3();
          OUTLINED_FUNCTION_40_5();
          iAP2MsgAddCFStringParam(v72, v73, v74, v75);
          CFDictionaryGetValue(v70, @"CARApplicationLocalizedNameKey");
          v76 = OUTLINED_FUNCTION_46_3();
          iAP2MsgAddCFStringParam(v76, v71, 2, v77);
          if (*(v46 + 42))
          {
            v78 = CFDictionaryGetValue(v70, @"iconDataHash");
            if (v78)
            {
              v79 = v78;
              BytePtr = CFDataGetBytePtr(v78);
              Length = CFDataGetLength(v79);
              iAP2MsgAddDataParam((a1 + 15), v71, 4, BytePtr, Length);
            }

            Mutable = *(v46 + 64);
            if (!Mutable)
            {
              Mutable = CFSetCreateMutable(allocator, 1, &kCFTypeSetCallBacks);
              *(v46 + 64) = Mutable;
            }

            v83 = CFDictionaryGetValue(v70, @"CARApplicationBundleIdentifierKey");
            CFSetAddValue(Mutable, v83);
          }

          MsgLen = iAP2MsgGetMsgLen((a1 + 15));
          v85 = gLogObjects;
          v86 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 50)
          {
            v87 = *(gLogObjects + 392);
          }

          else
          {
            v87 = &_os_log_default;
            if (OUTLINED_FUNCTION_27())
            {
              *buf = cfa[0];
              *v215 = v85;
              OUTLINED_FUNCTION_17_0();
              v216[0] = v86;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }
          }

          v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG);
          if (v88)
          {
            *buf = v193[0];
            *v215 = MsgLen;
            OUTLINED_FUNCTION_30_8(v88, v89, v90, v91, v92, v93, v94, v95, v184, v186, v187, v189, cfa[0], cfa[1], v193[0], v193[1], allocator, allocator_8, v199, *(&v199 + 1), v202, v204, v205, v206, v208, v209);
            _os_log_debug_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", v105, 0xEu);
          }

          v96 = MsgLen > v209 || v67 == v65;
          if (!v96)
          {
            goto LABEL_108;
          }

          v97 = gLogObjects;
          v98 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 50)
          {
            v99 = *(gLogObjects + 392);
          }

          else if (OUTLINED_FUNCTION_27())
          {
            *buf = cfa[0];
            *v215 = v97;
            OUTLINED_FUNCTION_17_0();
            v216[0] = v98;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          if (OUTLINED_FUNCTION_76_1())
          {
            OUTLINED_FUNCTION_33_7(WORD2(v205), *&v199);
            *&v215[6] = v65 + 1;
            LOWORD(v216[0]) = v100;
            *(v216 + 2) = v206;
            OUTLINED_FUNCTION_40_5();
            _os_log_impl(v101, v102, v103, "Sending AppLinksUpdate message (%d, entry: %d/%d)", v104, 0x14u);
            ++HIDWORD(v205);
          }

          if (!v66)
          {
            goto LABEL_107;
          }

          OUTLINED_FUNCTION_53_2();
          if (v65 < v204)
          {
            break;
          }

LABEL_108:
          if (v68 == ++v65)
          {
            return 0;
          }
        }

        OUTLINED_FUNCTION_3_28();
LABEL_107:
        v66 = 0;
        goto LABEL_108;
      }
    }

    else if (!v60)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_53_2();
    goto LABEL_73;
  }

  if (v11)
  {
    if (v16)
    {
      v19 = *(gLogObjects + 392);
    }

    else
    {
      v19 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *v215 = v14;
        OUTLINED_FUNCTION_5_27();
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v178, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 136315394;
      *v215 = "_sendAppLinksUpdateForSubFeature";
      OUTLINED_FUNCTION_17_0();
      v216[0] = v11;
      OUTLINED_FUNCTION_10(&_mh_execute_header, v19, v49, "%s Invalid subFeature: %d", buf);
    }
  }

  else
  {
    if (v16)
    {
      v17 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v215 = v14;
      OUTLINED_FUNCTION_5_27();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v174, v175, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v20 = OUTLINED_FUNCTION_9_3();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = a1[1];
      *buf = 138412290;
      *v215 = v22;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    }

    v28 = OUTLINED_FUNCTION_21_7();
    v30 = iap2_feature_getFeature(v28, v29);
    if (v30)
    {
      v31 = v30;
      OUTLINED_FUNCTION_32_5(v30);
      if (v96 && *(v31 + 20) == 1)
      {
        v32 = iap2_accAuthentication_copyCertificateSerial(a1);
        if (v32)
        {
          cf = v32;
          if ((platform_CarPlay_isCarPlayPairedWithCertSerial(v32) & 1) == 0)
          {
            v182 = logObjectForModule_26();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "Accessory is not paired to CarPlay, app links are unavailable!", buf, 2u);
            }

LABEL_186:
            CFRelease(cf);
            return 0;
          }

          v33 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 50)
          {
            v34 = *(gLogObjects + 392);
          }

          else if (OUTLINED_FUNCTION_17())
          {
            *buf = 134218240;
            *v215 = v33;
            OUTLINED_FUNCTION_5_27();
            OUTLINED_FUNCTION_35(&_mh_execute_header, v180, v181, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v106 = OUTLINED_FUNCTION_9_3();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = CFArrayGetCount(theArray);
            *buf = 134217984;
            *v215 = v108;
            OUTLINED_FUNCTION_33_5();
            _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
          }

          if (CFArrayGetCount(theArray))
          {
            HIDWORD(v205) = _calculateListCap(v31, 0, theArray);
          }

          else
          {
            HIDWORD(v205) = 0;
          }

          OUTLINED_FUNCTION_3_28();
          v114 = *(v31 + 8);
          v115 = OUTLINED_FUNCTION_6_11();
          v118 = iAP2MsgAddU8Param(v115, v116, 0, v117);
          v119 = v118;
          if (*(v31 + 8) == 2)
          {
            v120 = OUTLINED_FUNCTION_6_11();
            if (!(iAP2MsgAddU16Param(v120, v121, 2, HIDWORD(v205)) | v119))
            {
              goto LABEL_121;
            }
          }

          else if (!v118)
          {
LABEL_121:
            if (CFArrayGetCount(theArray))
            {
              v210 = _iAP2MessageCutoffSize(a1);
              OUTLINED_FUNCTION_3_28();
              if (HIDWORD(v205))
              {
                v123 = 0;
                LODWORD(v203) = 0;
                v124 = 0;
                v194 = kCFAllocatorDefault;
                v207 = (HIDWORD(v205) - 1);
                v200 = v207;
                v125 = HIDWORD(v205);
                *&v122 = 67109376;
                v188 = v122;
                *&v122 = 67109632;
                *allocatora = v122;
                *&v122 = 134218240;
                v185 = v122;
                while (1)
                {
                  v126 = CFArrayGetValueAtIndex(theArray, v123);
                  if (v126)
                  {
                    v127 = v126;
                    v128 = iAP2MsgAddGroupParam((a1 + 15), 1);
                    if (v128)
                    {
                      ++v124;
                    }

                    v129 = CFDictionaryGetValue(v127, @"CARApplicationCategoryKey");
                    if (!v129)
                    {
                      goto LABEL_186;
                    }

                    v130 = v129;
                    iAP2MsgAddU16Param((a1 + 15), v128, 0, v123);
                    if (CFStringCompare(v130, @"audio", 0))
                    {
                      if (CFStringCompare(v130, @"calling", 0))
                      {
                        if (CFStringCompare(v130, @"messaging", 0))
                        {
                          if (CFStringCompare(v130, @"navigation", 0))
                          {
                            if (CFStringCompare(v130, @"automaker", 0))
                            {
                              if (CFStringCompare(v130, @"quick ordering", 0))
                              {
                                if (CFStringCompare(v130, @"charging", 0))
                                {
                                  if (CFStringCompare(v130, @"parking", 0))
                                  {
                                    if (CFStringCompare(v130, @"productivity", 0))
                                    {
                                      if (CFStringCompare(v130, @"fueling", 0))
                                      {
                                        if (CFStringCompare(v130, @"driving task", 0))
                                        {
                                          v131 = 0;
                                        }

                                        else
                                        {
                                          v131 = 12;
                                        }
                                      }

                                      else
                                      {
                                        v131 = 11;
                                      }
                                    }

                                    else
                                    {
                                      v131 = 10;
                                    }
                                  }

                                  else
                                  {
                                    v131 = 9;
                                  }
                                }

                                else
                                {
                                  v131 = 8;
                                }
                              }

                              else
                              {
                                v131 = 7;
                              }
                            }

                            else
                            {
                              v131 = 5;
                            }
                          }

                          else
                          {
                            v131 = 3;
                          }
                        }

                        else
                        {
                          v131 = 1;
                        }
                      }

                      else
                      {
                        v131 = 2;
                      }
                    }

                    else
                    {
                      v131 = 4;
                    }

                    iAP2MsgAddU16Param((a1 + 15), v128, 3, v131);
                    CFDictionaryGetValue(v127, @"CARApplicationBundleIdentifierKey");
                    OUTLINED_FUNCTION_46_3();
                    OUTLINED_FUNCTION_33_5();
                    iAP2MsgAddCFStringParam(v132, v133, v134, v135);
                    CFDictionaryGetValue(v127, @"CARApplicationLocalizedNameKey");
                    v136 = OUTLINED_FUNCTION_46_3();
                    iAP2MsgAddCFStringParam(v136, v128, 2, v137);
                    if (*(v31 + 18))
                    {
                      v138 = CFDictionaryGetValue(v127, @"iconDataHash");
                      if (v138)
                      {
                        v139 = v138;
                        v140 = CFDataGetBytePtr(v138);
                        v141 = CFDataGetLength(v139);
                        iAP2MsgAddDataParam((a1 + 15), v128, 4, v140, v141);
                      }

                      v142 = *(v31 + 56);
                      if (!v142)
                      {
                        v142 = CFSetCreateMutable(v194, 1, &kCFTypeSetCallBacks);
                        *(v31 + 56) = v142;
                      }

                      v143 = CFDictionaryGetValue(v127, @"CARApplicationBundleIdentifierKey");
                      CFSetAddValue(v142, v143);
                    }

                    v144 = iAP2MsgGetMsgLen((a1 + 15));
                    v145 = gLogObjects;
                    v146 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 50)
                    {
                      v147 = *(gLogObjects + 392);
                    }

                    else
                    {
                      v147 = &_os_log_default;
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        *buf = v185;
                        *v215 = v145;
                        OUTLINED_FUNCTION_17_0();
                        v216[0] = v146;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }
                    }

                    v148 = os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG);
                    if (v148)
                    {
                      *buf = v188;
                      *v215 = v144;
                      OUTLINED_FUNCTION_30_8(v148, v149, v150, v151, v152, v153, v154, v155, v185, *(&v185 + 1), v188, *(&v188 + 1), cf, cf_8, v194, v195, allocatora[0], allocatora[1], v200, v201, v202, v203, v205, v207, v208, v210);
                      _os_log_debug_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEBUG, "messageSize: %d bytes, messageCutoffSize: %d bytes", v167, 0xEu);
                    }

                    if (v144 > v210 || v207 == v123)
                    {
                      v157 = gLogObjects;
                      v158 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 50)
                      {
                        v159 = *(gLogObjects + 392);
                      }

                      else if (OUTLINED_FUNCTION_17())
                      {
                        *buf = v185;
                        *v215 = v157;
                        OUTLINED_FUNCTION_17_0();
                        v216[0] = v158;
                        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                      }

                      v160 = OUTLINED_FUNCTION_9_3();
                      if (os_log_type_enabled(v160, v161))
                      {
                        OUTLINED_FUNCTION_33_7(v203, *allocatora);
                        *&v215[6] = v123 + 1;
                        LOWORD(v216[0]) = v162;
                        *(v216 + 2) = HIDWORD(v205);
                        OUTLINED_FUNCTION_33_5();
                        _os_log_impl(v163, v164, v165, "Sending AppLinksUpdate message (%d, entry: %d/%d)", v166, 0x14u);
                        LODWORD(v203) = v203 + 1;
                      }

                      if (!v124)
                      {
                        goto LABEL_179;
                      }

                      OUTLINED_FUNCTION_53_2();
                      if (v123 < v200)
                      {
                        break;
                      }
                    }
                  }

LABEL_180:
                  if (v125 == ++v123)
                  {
                    goto LABEL_186;
                  }
                }

                OUTLINED_FUNCTION_3_28();
LABEL_179:
                v124 = 0;
                goto LABEL_180;
              }
            }

            goto LABEL_186;
          }

          OUTLINED_FUNCTION_53_2();
          goto LABEL_121;
        }
      }
    }
  }

  return 0;
}

uint64_t iap2_appLinks_appLinksAppIconHandler(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      result = iap2_feature_getFeature(v5, v6);
      if (result)
      {
        v7 = result;
        Mutable = *(result + 96);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          *(v7 + 96) = Mutable;
        }

        CFArrayAppendValue(Mutable, a2);
        _appLinksProcessAppIcon(a1);
        return 1;
      }
    }
  }

  return result;
}

uint64_t _appLinksProcessAppIcon(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = iap2_feature_getFeature(result, 0x18u);
    if (result)
    {
      v2 = result;
      pthread_mutex_lock(&_gIconLock);
      if (CFArrayGetCount(*(v2 + 96)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 96), 0);
        v4 = CFRetain(ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(v2 + 96), 0);
        v5 = *(v2 + 48);
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 0x40000000;
        v6[2] = ___appLinksProcessAppIcon_block_invoke;
        v6[3] = &__block_descriptor_tmp_14;
        v6[4] = v1;
        v6[5] = v4;
        dispatch_async(v5, v6);
      }

      return pthread_mutex_unlock(&_gIconLock);
    }
  }

  return result;
}

_BYTE *_createFeature_17(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x70uLL, 0x10600409A92A957uLL);
  v3 = v2;
  if (v2)
  {
    v2[104] = 0;
    v2[20] = 0;
    *v2 = 0;
    *(v2 + 4) = 0;
    v2[44] = 0;
    *(v2 + 3) = 0;
    *(v2 + 10) = 0;
    v4 = dispatch_queue_create("com.apple.accessoryd.appLinks.iconQueue", 0);
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 6) = v4;
    *(v3 + 10) = 0;
    *(v3 + 22) = 0;
    iAP2LinkRegisterEventCallback(*(*(a1 + 32) + 24), 1u, _appLinksiAP2LinkEventNotifyHandler);
  }

  return v3;
}

uint64_t _destroyFeature_17(CFSetRef **a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1)
    {
      if (*(v5 + 104) == 1)
      {
        _removeSubscribers(a2, *a1);
      }

      if (*(v5 + 89) == 1)
      {
        TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a2, *(v5 + 90));
        if (TransferEntry)
        {
          v7 = TransferEntry;
          v8 = *(TransferEntry + 8);
          if (v8)
          {
            iap2_sessionFileTransfer_removeTransferForFeature(a2, 24, v8);
            v9 = *(*(v7 + 8) + 64);
            if (v9)
            {
              free(v9);
              *(*(v7 + 8) + 64) = 0;
            }
          }
        }

        pthread_mutex_lock(&_gIconLock);
        *(v5 + 89) = 0;
        pthread_mutex_unlock(&_gIconLock);
      }

      v10 = v5[10];
      if (v10)
      {
        CFRelease(v10);
        v5[10] = 0;
      }

      *(v5 + 45) = 0;
      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v11 = v5[3];
      if (v11)
      {
        CFRelease(v11);
        v5[3] = 0;
      }

      v12 = v5[9];
      if (v12)
      {
        CFRelease(v12);
        v5[9] = 0;
      }

      v13 = v5[12];
      if (v13)
      {
        CFRelease(v13);
        v5[12] = 0;
      }

      v14 = v5[7];
      if (v14)
      {
        CFRelease(v14);
        v5[7] = 0;
      }

      v15 = v5[8];
      if (v15)
      {
        CFRelease(v15);
        v5[8] = 0;
      }

      v16 = v5[6];
      if (v16)
      {
        dispatch_release(v16);
        v5[6] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

void _appLinksiAP2LinkEventNotifyHandler(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || a2 != 1)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a3 + 64);
  }

  else
  {
    v5 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 50)
  {
    v6 = *(gLogObjects + 392);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v23, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v25, v26, v27, v28, v79);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!a3)
    {
      return;
    }

LABEL_13:
    if (!*(a3 + 64))
    {
      return;
    }

    if (*(a3 + 112) != 8)
    {
      return;
    }

    v7 = *(a1 + 176);
    if (!v7)
    {
      return;
    }

    v8 = *(v7 + 16);
    if (!v8 || !v5)
    {
      return;
    }

    v9 = *(a3 + 104);
    if (v9 != 2)
    {
      goto LABEL_28;
    }

    if (v5[2] != 1)
    {
LABEL_40:
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v12 = *(gLogObjects + 392);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48, v79);
      }

      v13 = OUTLINED_FUNCTION_75_0();
      v14 = *(a3 + 104);
      if (v13)
      {
        v79 = 0;
        v80 = *(a3 + 109);
        v81 = *(a3 + 112);
        v82 = v5[1];
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v39, v40, OS_LOG_TYPE_DEBUG, v41, v42, 0x20u);
        v14 = *(a3 + 104);
      }

      v5[1] = v14 == 1;
      if (*v5 == 1)
      {
        if (gLogObjects && gNumLogObjects >= 50)
        {
          v15 = *(gLogObjects + 392);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54, v79);
        }

        v16 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v16, v17))
        {
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_0_19();
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0x14u);
        }

        *v5 = 0;
        iAP2FileTransferCancel(a3);
        iap2_sessionFileTransfer_removeTransferForFeature(v8, 24, a3);
        v22 = *(a3 + 64);
        if (v22)
        {
          free(v22);
          *(a3 + 64) = 0;
        }
      }

      return;
    }

    if (gLogObjects && gNumLogObjects >= 50)
    {
      v10 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72, v79);
      v9 = *(a3 + 104);
      goto LABEL_25;
    }

    v9 = 2;
LABEL_25:
    if (OUTLINED_FUNCTION_75_0())
    {
      v55 = *(a3 + 109);
      v56 = *(a3 + 112);
      v57 = v5[3];
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_6_0();
      _os_log_debug_impl(v58, v59, OS_LOG_TYPE_DEBUG, v60, v61, 0x20u);
      v9 = *(a3 + 104);
    }

    v5[3] = 1;
LABEL_28:
    if (v9 == 3 && v5[1] == 1)
    {
      if (gLogObjects && gNumLogObjects >= 50)
      {
        v11 = *(gLogObjects + 392);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78, v79);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_12_15();
        v62 = v5[2];
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v63, v64, OS_LOG_TYPE_DEBUG, v65, v66, 0x20u);
      }

      v5[2] = 1;
    }

    goto LABEL_40;
  }

  obfuscatedPointer(a3);
  if (a3)
  {
    obfuscatedPointer(*(a3 + 64));
    v29 = *(a3 + 109);
    v30 = *(a3 + 104);
  }

  if (v5)
  {
    v31 = *v5;
    v32 = v5[1];
    v33 = v5[2];
    v34 = v5[3];
  }

  v79 = 0;
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(v35, v36, OS_LOG_TYPE_DEBUG, v37, v38, 0x3Au);
  if (a3)
  {
    goto LABEL_13;
  }
}

uint64_t _calculateListCap(uint64_t a1, int a2, CFArrayRef theArray)
{
  v3 = 0;
  if (a1 && theArray)
  {
    v4 = 40;
    if (!a2)
    {
      v4 = 16;
    }

    v5 = *(a1 + v4);
    Count = CFArrayGetCount(theArray);
    v7 = Count;
    if (Count <= v5 || v5 == 0)
    {
      v3 = Count;
    }

    else
    {
      v3 = v5;
    }

    v9 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v10 = *(gLogObjects + 392);
    }

    else
    {
      v10 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        HIDWORD(v20) = v9;
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18[0]);
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18[0] = 67109888;
      v18[1] = v3;
      v19 = 2048;
      v20 = v7;
      v21 = 1024;
      v22 = 0;
      v23 = 1024;
      v24 = v5;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "listCap: %d (listCount: %ld, hardCap: %d, listMax: %d)", v18, 0x1Eu);
    }
  }

  return v3;
}

void _appLinksAppIconResponse(uint64_t *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!*a1)
  {
    return;
  }

  v4 = OUTLINED_FUNCTION_21_7();
  Feature = iap2_feature_getFeature(v4, v5);
  if (!Feature)
  {
    return;
  }

  v7 = Feature;
  OUTLINED_FUNCTION_32_5(Feature);
  if (!v8)
  {
    return;
  }

  Count = CFDictionaryGetCount(a2);
  if (!Count)
  {
    return;
  }

  v10 = 8 * Count;
  __chkstk_darwin(Count);
  v11 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = memset(v11, 170, v10);
  __chkstk_darwin(v12);
  memset(v11, 170, v10);
  CFDictionaryGetKeysAndValues(a2, v11, v11);
  v13 = *v11;
  if (!*v11)
  {
    return;
  }

  v14 = *v11;
  Value = CFDictionaryGetValue(*v11, @"iconData");
  v16 = CFDictionaryGetValue(v14, @"iconDataHash");
  v17 = *(v7 + 56);
  if ((v17 && CFSetContainsValue(v17, v13) || (v18 = *(v7 + 64)) != 0 && CFSetContainsValue(v18, v13)) && Value && v16 && CFDataGetLength(Value) && CFDataGetLength(v16))
  {
    if (*(v7 + 88))
    {
      CFArrayInsertValueAtIndex(*(v7 + 96), 0, a2);
      return;
    }

    v25 = OUTLINED_FUNCTION_6_7();
    v26 = malloc_type_malloc(0xFFFFuLL, 0x1E209B37uLL);
    pthread_mutex_lock(&_gIconLock);
    *(v7 + 88) = 1;
    pthread_mutex_unlock(&_gIconLock);
    if (*(v7 + 89) == 1)
    {
      TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a1, *(v7 + 90));
      if (TransferEntry)
      {
        v28 = *(TransferEntry + 8);
        if (v28)
        {
          _cancelPendingTransfer(v28);
        }
      }

      pthread_mutex_lock(&_gIconLock);
      *(v7 + 89) = 0;
      pthread_mutex_unlock(&_gIconLock);
    }

    v29 = a1[4];
    if (!v29 || (v30 = *(v29 + 24)) == 0)
    {
LABEL_54:
      pthread_mutex_lock(&_gIconLock);
      *(v7 + 88) = 0;
      pthread_mutex_unlock(&_gIconLock);
      if (v25)
      {
        free(v25);
      }

      if (v26)
      {
        free(v26);
      }

      return;
    }

    v31 = v25;
    v32 = v26;
    SessionForService = iAP2LinkGetSessionForService(v30, 1);
    pthread_mutex_lock(&_gIconLock);
    BufferID = iAP2FileTransferAllocateBufferID(*(a1[4] + 24), SessionForService, (v7 + 90));
    pthread_mutex_unlock(&_gIconLock);
    if (BufferID)
    {
      pthread_mutex_lock(&_gIconLock);
      *(v7 + 89) = 1;
      pthread_mutex_unlock(&_gIconLock);
      v35 = *(v7 + 80);
      if (v35)
      {
        CFRelease(v35);
        *(v7 + 80) = 0;
      }

      *(v7 + 80) = CFRetain(Value);
      *(v7 + 91) = 8;
      v36 = malloc_type_malloc(0x138uLL, 0x10B00402C7498C8uLL);
      v26 = v32;
      v25 = v31;
      if (v36)
      {
        v37 = v36;
        iAP2FileTransferCreate(*(a1[4] + 24), SessionForService, *(v7 + 90), 0, 0, 0, v36, iap2_sessionFileTransfer_deleteFileTransfer);
        memset(buf, 170, 0xA8uLL);
        *buf = CFStringGetLength(v13) + 1;
        CFStringGetCString(v13, &buf[8], *buf, 0x8000100u);
        buf[162] = 0;
        iAP2FileTransferTypeData(v37, 8u, buf);
        v38 = OUTLINED_FUNCTION_21_7();
        if (iap2_sessionFileTransfer_addTransferForFeature(v38, v39, v37, 0))
        {
          v40 = malloc_type_malloc(0x10uLL, 0x102004075F474C6uLL);
          *v40 = a1;
          v40[8] = *(v7 + 90);
          *(v40 + 3) = 8;
          v41 = logObjectForModule_26();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = a1[1];
            v62 = 136315650;
            v63 = "_appLinksAppIconResponse";
            v64 = 1024;
            v65 = 1674;
            v66 = 2112;
            v67 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _appIconFileTransferIDSent endpointUUID: %@", &v62, 0x1Cu);
          }

          OUTLINED_FUNCTION_15_16();
          iAP2MsgInit(v31, 44292, v26, 0xFFFF, v43, v40);
          v44 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddCFStringParam(v44, v45, 0, v13);
          v46 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddU8Param(v46, v47, 1, 1);
          v48 = *(v7 + 90);
          v49 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddU8Param(v49, v50, 2, v51);
          BytePtr = CFDataGetBytePtr(v16);
          CFDataGetLength(v16);
          v53 = OUTLINED_FUNCTION_26_1();
          iAP2MsgAddDataParam(v53, v54, 3, BytePtr, v55);
          if ((iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(a1, v31) & 1) == 0)
          {
            iAP2FileTransferCancel(v37);
          }

          return;
        }

        v60 = logObjectForModule_26();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v62) = 0;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#App Links Failed to add file transfer!", &v62, 2u);
        }

        iAP2FileTransferRelease(v37);
      }

      goto LABEL_54;
    }

    v57 = gLogObjects;
    v58 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v59 = *(gLogObjects + 392);
    }

    else
    {
      v59 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *&buf[4] = v57;
        OUTLINED_FUNCTION_27_6();
        *&buf[14] = v58;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v61, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "#App Links Failed to allocate file transfer buffer ID!", buf, 2u);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_6_7();
    v20 = malloc_type_malloc(0xFFFFuLL, 0xCB883CF4uLL);
    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v23 = *(gLogObjects + 392);
    }

    else
    {
      v23 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v21;
        OUTLINED_FUNCTION_27_6();
        *&buf[14] = v22;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_appLinksAppIconResponse";
      OUTLINED_FUNCTION_27_6();
      *&buf[14] = 1727;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%d - iAP2MsgInit with cleanupCB - _appIconFileTransferIDSent", buf, 0x12u);
    }

    OUTLINED_FUNCTION_15_16();
    iAP2MsgInit(v19, 44292, v20, 0xFFFF, v24, 0);
    iAP2MsgAddCFStringParam(v19, 0, 0, v13);
    iAP2MsgAddU8Param(v19, 0, 1, 0);
    iap2_sessionControl_sendOutgoingMessage(a1, v19);
  }
}

void _cancelPendingTransfer(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v2 = *(gLogObjects + 392);
  }

  else
  {
    v2 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v30, v31, v32, v33, v46);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_49_4(&_mh_execute_header, v3, v4, "_cancelPendingTransfer fileXfer(ID=%u type=%d state=%d)", v5, v6, v7, v8, v46);
  }

  v9 = *(*a1 + 176);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(a1 + 64);
      if (v11)
      {
        *v11 = 1;
        v12 = *(a1 + 104);
        if (v12 != 2 && v11[3] != 1)
        {
LABEL_13:
          if (v12)
          {
            if (v12 == 5)
            {
              if (v11)
              {
                *v11 = 0;
              }
            }
          }

          else
          {
            if (gLogObjects && gNumLogObjects >= 50)
            {
              v21 = *(gLogObjects + 392);
            }

            else
            {
              v21 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                OUTLINED_FUNCTION_3();
                OUTLINED_FUNCTION_26_0(&_mh_execute_header, v40, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v42, v43, v44, v45, 0);
              }
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_12_15();
              OUTLINED_FUNCTION_0_19();
              OUTLINED_FUNCTION_49_4(&_mh_execute_header, v22, v23, "_cancelPendingTransfer: Call Start fileXfer(ID=%u type=%d state=%d)", v24, v25, v26, v27, v46);
            }

            iAP2FileTransferStart(a1, 0, 0, 0, _appIconFileTransferEndHandler, 0, 0, 0);
          }

          return;
        }
      }

      else
      {
        v12 = *(a1 + 104);
        if (v12 != 2)
        {
          goto LABEL_13;
        }
      }

      if (gLogObjects && gNumLogObjects >= 50)
      {
        v13 = *(gLogObjects + 392);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v34, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v36, v37, v38, v39, 0);
      }

      v14 = OUTLINED_FUNCTION_9_3();
      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_6_0();
        _os_log_impl(v16, v17, OS_LOG_TYPE_INFO, v18, v19, 0x14u);
      }

      if (v11)
      {
        *v11 = 0;
      }

      iAP2FileTransferCancel(a1);
      iap2_sessionFileTransfer_removeTransferForFeature(v10, 24, a1);
      v20 = *(a1 + 64);
      if (v20)
      {
        free(v20);
        *(a1 + 64) = 0;
      }
    }
  }
}

BOOL _appIconFileTransferEndHandler(uint64_t a1, void *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v5 = *(gLogObjects + 392);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *v103 = v4;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v52, v53, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, v55, v56, v57, v100);
  }

  v6 = OUTLINED_FUNCTION_9_3();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(a1 + 104);
    v100 = 67109120;
    LODWORD(v101) = v8;
    OUTLINED_FUNCTION_6_0();
    _os_log_impl(v9, v10, OS_LOG_TYPE_INFO, v11, v12, 8u);
  }

  v13 = *(*a1 + 176);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(v14, 0x18u);
  if (!Feature || !*a1)
  {
    return 0;
  }

  v16 = Feature;
  v17 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v18 = *(gLogObjects + 392);
  }

  else if (OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    *v103 = v17;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v100);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    v19 = *(a1 + 104);
    v20 = *(a1 + 109);
    v21 = *(a1 + 32);
    v22 = *(v16 + 90);
    v23 = *(v16 + 89);
    v24 = *(v16 + 91);
    OUTLINED_FUNCTION_70();
    v102 = 1024;
    *v103 = v25;
    *&v103[4] = 1024;
    *&v103[6] = v26;
    v104 = 2048;
    v105 = v27;
    v106 = 1024;
    OUTLINED_FUNCTION_42_4();
    v111 = v28;
    OUTLINED_FUNCTION_40_5();
    _os_log_impl(v29, v30, v31, v32, v33, 0x34u);
  }

  v34 = *(a1 + 104);
  if (v34 > 7 || ((1 << v34) & 0xD0) == 0)
  {
    v41 = gLogObjects;
    v42 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v43 = *(gLogObjects + 392);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      v100 = 134218240;
      v101 = v41;
      OUTLINED_FUNCTION_3();
      *v103 = v42;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v96, v97, v98, v99, v100);
    }

    if (OUTLINED_FUNCTION_21())
    {
      v76 = *(a1 + 104);
      OUTLINED_FUNCTION_70();
      v102 = 1024;
      *v103 = v77;
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v78, v79, "%{public}@ _appIconFileTransferEndHandler called with unexpected state: %d!", v80, v81, v82, v83, v100);
    }

    return 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v35 = *(*a1 + 176);
  if (!v35)
  {
    return 0;
  }

  v36 = *(v35 + 16);
  if (!v36)
  {
    return 0;
  }

  v37 = iap2_sessionFileTransfer_removeTransferForFeature(*(v35 + 16), 24, a1);
  if (!v37)
  {
    v38 = gLogObjects;
    v39 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v40 = *(gLogObjects + 392);
    }

    else
    {
      v40 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v100 = 134218240;
        v101 = v38;
        OUTLINED_FUNCTION_3();
        *v103 = v39;
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_10(v89, v90, v91, v92, v93);
      }
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v100 = 138543362;
      v101 = @"#AppIcon";
      OUTLINED_FUNCTION_40();
      _os_log_error_impl(v72, v73, OS_LOG_TYPE_ERROR, v74, v75, 0xCu);
    }
  }

  v44 = *(a1 + 109);
  v45 = *(a1 + 64);
  if (v45 == a2)
  {
    if (a2)
    {
      free(v45);
      *(a1 + 64) = 0;
    }
  }

  else
  {
    v46 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 50)
    {
      v47 = *(gLogObjects + 392);
    }

    else
    {
      v47 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_20_2();
        *v103 = v46;
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_10(v84, v85, v86, v87, v88);
      }
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      v59 = *(a1 + 104);
      v60 = *(a1 + 109);
      v61 = *(a1 + 16);
      v62 = *(a1 + 64);
      v100 = 138545154;
      v101 = @"#AppIcon";
      v102 = 2080;
      *v103 = "_handleFileTransferEnd";
      OUTLINED_FUNCTION_24_8();
      v107 = v63;
      v108 = v64;
      v109 = v65;
      v110 = v64;
      v111 = v66;
      v112 = v64;
      v113 = v67;
      OUTLINED_FUNCTION_40();
      _os_log_fault_impl(v68, v69, OS_LOG_TYPE_FAULT, v70, v71, 0x3Au);
    }
  }

  v48 = iap2_feature_getFeature(v36, 0x18u);
  if (v48)
  {
    v49 = v48;
    pthread_mutex_lock(&_gIconLock);
    if (*(v16 + 89) == 1 && v44 == *(v16 + 90))
    {
      v50 = *(v16 + 80);
      if (v50)
      {
        CFRelease(v50);
        *(v16 + 80) = 0;
      }

      *(v16 + 91) = 0;
      *(v16 + 89) = 0;
    }

    *(v49 + 88) = 0;
    pthread_mutex_unlock(&_gIconLock);
    _appLinksProcessAppIcon(v36);
  }

  return v37;
}

void _appIconFileTransferIDSent_cold_4(uint64_t a1, int *a2, os_log_t log)
{
  v3 = *(a1 + 109);
  v4 = *a2;
  v5 = 138544130;
  v6 = @"#AppIcon";
  v7 = 2048;
  v8 = a1;
  v9 = 1024;
  v10 = v3;
  v11 = 1024;
  v12 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@ ignore starting transfer in non-idle state, transfer (%p id=%d state=%d)", &v5, 0x22u);
}

void _appIconFileTransferIDSent_cold_7(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 109);
  v3 = *(a1 + 112);
  v4 = *a2;
  OUTLINED_FUNCTION_0_19();
  v8 = v5;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Call Start pTransfer(ID=%u type=%d state=%d)", v7, 0x14u);
}

void _appIconFileTransferIDSent_cold_8(os_log_t log)
{
  v1 = 138543362;
  v2 = @"#AppIcon";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}@ Failed to start file transfer!", &v1, 0xCu);
}

void __init_logging_signpost_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
}

void platform_connectionInfo_accessoryConnectionAttached(void *a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v17, v18, v19, v20, 0);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  if (a1)
  {
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 incrementUserCount];

    v13 = platform_connectionInfo_accessoryInfoForConnection(a1);
    v14 = platform_connectionInfo_accessoryPropertiesForConnection(a1);
    v15 = +[ACCConnectionInfoServer sharedServer];
    [v15 accessoryConnectionAttached:a1 type:a2 info:v13 properties:v14];
  }
}

void platform_connectionInfo_accessoryConnectionDetached(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_14_12(&_mh_execute_header, v5, v6, "connectionInfo accessoryConnectionDetached: %@", v7, v8, v9, v10, 2u);
  }

  if (a1)
  {
    v11 = +[ACCConnectionInfoServer sharedServer];
    [v11 accessoryConnectionDetached:a1];

    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 decrementUserCount];
  }
}

void platform_connectionInfo_accessoryEndpointAttached(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = HIDWORD(gLogObjects);
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 9;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20[2] = v8;
      OUTLINED_FUNCTION_3();
      LODWORD(v22) = v9;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v16, v17, v18, v19, 0);
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_83();
    v21 = 2112;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 1024;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "connectionInfo accessoryEndpointAttached: %@ - %@ transport=%{coreacc:ACCEndpoint_TransportType_t}d protocol=%{coreacc:ACCEndpoint_Protocol_t}d", v20, 0x22u);
  }

  if (a1)
  {
    v13 = platform_connectionInfo_accessoryPropertiesForEndpoint(a1, a2);
    v14 = +[ACCConnectionInfoServer sharedServer];
    [v14 accessoryEndpointAttached:a2 transportType:a3 protocol:a4 properties:v13 forConnection:a1];
  }
}

void platform_connectionInfo_accessoryEndpointDetached()
{
  OUTLINED_FUNCTION_25();
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, v13, v14, v15, 0);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  if (v0)
  {
    v10 = +[ACCConnectionInfoServer sharedServer];
    [v10 accessoryEndpointDetached:v1 forConnection:v0];
  }
}

void platform_connectionInfo_accessoryEndpointProtocolUpdate(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = HIDWORD(gLogObjects);
  v7 = gNumLogObjects;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 9;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18[2] = v6;
      OUTLINED_FUNCTION_3();
      LODWORD(v19) = v7;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, 0);
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "connectionInfo accessoryEndpointProtocolUpdate: %@ - %@ protocol=%{coreacc:ACCEndpoint_Protocol_t}d", v18, 0x1Cu);
  }

  if (a1)
  {
    v11 = platform_connectionInfo_accessoryPropertiesForEndpoint(a1, a2);
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 accessoryEndpointUpdate:a2 protocol:a3 properties:v11 forConnection:a1];
  }
}

void platform_connectionInfo_accessoryConnectionInfoPropertyChanged(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_14_12(&_mh_execute_header, v5, v6, "connectionInfo accessoryConnectionInfoPropertyChanged: %@", v7, v8, v9, v10, 2u);
  }

  if (a1)
  {
    v11 = platform_connectionInfo_accessoryPropertiesForConnection(a1);
    v12 = +[ACCConnectionInfoServer sharedServer];
    [v12 accessoryConnectionInfoPropertyChanged:a1 properties:v11];
  }
}

void platform_connectionInfo_accessoryEndpointInfoPropertyChanged()
{
  OUTLINED_FUNCTION_25();
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 9;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v13, v14, v15, v16, 0);
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  if (v0)
  {
    if (v1)
    {
      v10 = platform_connectionInfo_accessoryPropertiesForEndpoint(v0, v1);
      v11 = +[ACCConnectionInfoServer sharedServer];
      [v11 accessoryEndpointInfoPropertyChanged:v1 properties:v10 forConnection:v0];
    }
  }
}

CFSetRef platform_connectionInfo_accessoryEndpoints(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
  if (!ConnectionWithUUID || (ConnectionWithUUID[142] & 1) != 0)
  {
    return 0;
  }

  return acc_connection_copyEndpointUUIDs(ConnectionWithUUID);
}

uint64_t platform_connectionInfo_accessoryConnectionType(const void *a1)
{
  if (!a1)
  {
    return 11;
  }

  ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
  if (ConnectionWithUUID)
  {
    return ConnectionWithUUID[2];
  }

  else
  {
    return 11;
  }
}

uint64_t platform_connectionInfo_endpointTransportType(uint64_t a1, const void *a2)
{
  result = 18;
  if (a1 && a2)
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
    if (EndpointWithUUID)
    {
      return EndpointWithUUID[6];
    }

    else
    {
      return 18;
    }
  }

  return result;
}

unsigned int *platform_connectionInfo_endpointProtocol(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = acc_manager_getEndpointWithUUID(a2);
    if (result)
    {
      return result[7];
    }
  }

  return result;
}

CFDictionaryRef platform_connectionInfo_accessoryInfoForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0)
  {
    return 0;
  }

  AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);

  return acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
}

uint64_t platform_connectionInfo_accessoryPropertyForConnection(const void *a1, void *a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      ConnectionWithUUID = acc_manager_getConnectionWithUUID(a1);
      v2 = ConnectionWithUUID;
      if (ConnectionWithUUID)
      {
        if (ConnectionWithUUID[142])
        {
          return 0;
        }

        v5 = a2;
        if ([v5 isEqualToString:kACCExternalAccessoryMacAddressKey])
        {
          if (*(v2 + 8) != 2 || (v6 = *(v2 + 16)) == 0)
          {
            v2 = 0;
LABEL_24:

            return v2;
          }

          Copy = CFStringCreateCopy(kCFAllocatorDefault, v6);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryCertSerialNumberKey])
        {
          Copy = acc_authInfo_copyCertSerial(v2 + 48);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryCertDataKey])
        {
          Copy = acc_authInfo_copyCertData(v2 + 48);
        }

        else if ([v5 isEqualToString:kACCExternalAccessoryAuthStatusKey])
        {
          valuePtr = acc_connection_getAuthStatus(v2, 0);
          if (!valuePtr)
          {
            valuePtr = acc_connection_getAuthStatus(v2, 1u);
            if (!valuePtr)
            {
              valuePtr = acc_connection_getAuthStatus(v2, 2u);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(v2, 3u);
                if (!valuePtr)
                {
                  valuePtr = acc_connection_getAuthStatus(v2, 4u);
                }
              }
            }
          }

          Copy = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        }

        else
        {
          Copy = acc_connection_copyProperty(v2, v5);
        }

        v2 = Copy;
        goto LABEL_24;
      }
    }
  }

  return v2;
}

const void *platform_connectionInfo_accessoryPropertyForEndpoint(uint64_t a1, const void *a2, void *a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
        v3 = EndpointWithUUID;
        if (EndpointWithUUID)
        {
          if (*(EndpointWithUUID + 120))
          {
            return 0;
          }

          v6 = a3;
          if ([v6 isEqualToString:kACCExternalAccessoryMacAddressKey])
          {
            if ((*(v3 + 6) & 0xFFFFFFFE) == 2)
            {
              v7 = *(v3 + 4);
              if (v7)
              {
                Copy = CFStringCreateCopy(kCFAllocatorDefault, v7);
LABEL_25:
                v3 = Copy;
                goto LABEL_26;
              }
            }
          }

          else
          {
            if ([v6 isEqualToString:kACCExternalAccessoryCertSerialNumberKey])
            {
              Copy = acc_authInfo_copyCertSerial(*v3 + 48);
              goto LABEL_25;
            }

            if ([v6 isEqualToString:kACCExternalAccessoryCertDataKey])
            {
              Copy = acc_authInfo_copyCertData(*v3 + 48);
              goto LABEL_25;
            }

            if (![v6 isEqualToString:kACCExternalAccessoryAuthStatusKey])
            {
              Copy = acc_endpoint_copyProperty(v3);
              goto LABEL_25;
            }

            if (*v3)
            {
              valuePtr = acc_connection_getAuthStatus(*v3, 0);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(*v3, 1u);
                if (!valuePtr)
                {
                  valuePtr = acc_connection_getAuthStatus(*v3, 2u);
                  if (!valuePtr)
                  {
                    valuePtr = acc_connection_getAuthStatus(*v3, 3u);
                    if (!valuePtr)
                    {
                      valuePtr = acc_connection_getAuthStatus(*v3, 4u);
                    }
                  }
                }
              }

              Copy = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
              goto LABEL_25;
            }
          }

          v3 = 0;
LABEL_26:
        }
      }
    }
  }

  return v3;
}

const __CFDictionary *_platform_connectionInfo_addAuthInfo(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  if (a1)
  {
    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count + 2, v2);
      if (MutableCopy)
      {
        v6 = MutableCopy;
        v7 = acc_authInfo_copyCertData(a1 + 48);
        if (v7)
        {
          v8 = v7;
          CFDictionaryAddValue(v6, kACCExternalAccessoryCertDataKey, v7);
          CFRelease(v8);
        }

        v9 = acc_authInfo_copyCertSerial(a1 + 48);
        if (v9)
        {
          v10 = v9;
          CFDictionaryAddValue(v6, kACCExternalAccessoryCertSerialNumberKey, v9);
          CFRelease(v10);
        }

        valuePtr = acc_connection_getAuthStatus(a1, 0);
        if (!valuePtr)
        {
          valuePtr = acc_connection_getAuthStatus(a1, 1u);
          if (!valuePtr)
          {
            valuePtr = acc_connection_getAuthStatus(a1, 2u);
            if (!valuePtr)
            {
              valuePtr = acc_connection_getAuthStatus(a1, 3u);
              if (!valuePtr)
              {
                valuePtr = acc_connection_getAuthStatus(a1, 4u);
              }
            }
          }
        }

        v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v11)
        {
          v12 = v11;
          CFDictionaryAddValue(v6, kACCExternalAccessoryAuthStatusKey, v11);
          v2 = v6;
        }

        else
        {
          v12 = v6;
        }

        CFRelease(v12);
      }
    }
  }

  return v2;
}

_DWORD *platform_connectionInfo_getPairingStatus()
{
  OUTLINED_FUNCTION_25();
  v2 = HIDWORD(gLogObjects);
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 9;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v45) = v2;
      OUTLINED_FUNCTION_3();
      v46 = v3;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27, 0);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 64);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v7, v8, "platform_connectionInfo_getPairingStatus", v9, v10, v11, v12, 0);
  }

  result = 0;
  if (v0)
  {
    if (v1)
    {
      result = acc_manager_getEndpointWithUUID(v1);
      if (result)
      {
        v14 = result;
        if ((result[30] & 1) == 0)
        {
          v15 = HIDWORD(gLogObjects);
          v16 = gNumLogObjects;
          if (gLogObjects)
          {
            v17 = gNumLogObjects <= 8;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          if (result[7] == 14)
          {
            if (v18)
            {
              v19 = *(gLogObjects + 64);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                HIDWORD(v45) = v15;
                OUTLINED_FUNCTION_3();
                v46 = v16;
                OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v35, v36, v37, v38, 0);
              }

              v19 = &_os_log_default;
              v21 = &_os_log_default;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v44) = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "platform_connectionInfo_getPairingStatus", &v44, 2u);
            }

            result = acc_manager_getConnectionWithUUID(v0);
            if (result)
            {
              return acc_connection_getPairingStatus(result);
            }

            return result;
          }

          if (v18)
          {
            v20 = *(gLogObjects + 64);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              HIDWORD(v45) = v15;
              OUTLINED_FUNCTION_3();
              v46 = v16;
              OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43, 0);
            }

            v20 = &_os_log_default;
            v22 = &_os_log_default;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            acc_endpoint_getProtocolString(v14);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2_5(&_mh_execute_header, v28, v29, "platform_connectionInfo_getPairingStatus: unexpected protocol: %s", v30, v31, v32, v33, v44);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void platform_connectionInfo_setupInterceptForEndpoint(uint64_t a1, const void *a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
      if (EndpointWithUUID)
      {
        if ((EndpointWithUUID[15] & 1) == 0 && *(EndpointWithUUID + 7) == 10)
        {
          v5 = EndpointWithUUID[7];

          accAuthProtocol_endpoint_setIncomingIntercept(v5, a3);
        }
      }
    }
  }
}

uint64_t platform_connectionInfo_getInterceptCountForEndpoint(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0 || *(EndpointWithUUID + 7) != 10)
  {
    return 0;
  }

  v3 = *(EndpointWithUUID + 7);

  return accAuthProtocol_endpoint_getIncomingInterceptCount(v3);
}

void platform_connectionInfo_handleInterceptData(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a1 && a2 && a3 && acc_manager_getEndpointWithUUID(a2))
  {
    v6 = +[ACCConnectionInfoServer sharedServer];
    [v6 handleInterceptData:a3 forEndpoint:a2 connection:a1];
  }
}

void platform_connectionInfo_sendDataForEndpoint(uint64_t a1, const void *a2, const __CFData *a3)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (!EndpointWithUUID || (EndpointWithUUID[120] & 1) != 0)
  {
    return;
  }

  v7 = *(EndpointWithUUID + 7);
  if (v7 == 4)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = *(EndpointWithUUID + 7);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        if ((*(v13 + 44) & 1) == 0 && *(v12 + 24))
        {
          OUTLINED_FUNCTION_8_17();
          *&v25[4] = 3221225472;
          v11 = ___platform_connectionInfo_sendDataForiAP2Endpoint_block_invoke;
LABEL_16:
          *&v25[12] = v11;
          v26 = &unk_100228E00;
          v27 = &v20;
          v28 = v10;
          v29 = a3;
          dispatch_sync(v9, &block);
          v14 = *(v21 + 24);
          _Block_object_dispose(&v20, 8);
          if (v14)
          {
            return;
          }

          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    if (v7 != 10)
    {
      if (acc_endpoint_sendOutgoingData(EndpointWithUUID, a3))
      {
        return;
      }

      goto LABEL_19;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v8 = *(EndpointWithUUID + 7);
    if (v8 && *(v8 + 56))
    {
      OUTLINED_FUNCTION_8_17();
      *&v25[4] = 3221225472;
      v11 = ___platform_connectionInfo_sendDataForAuthProtocolEndpoint_block_invoke;
      goto LABEL_16;
    }
  }

  _Block_object_dispose(&v20, 8);
LABEL_19:
  v15 = gLogObjects;
  v16 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 9)
  {
    v17 = *(gLogObjects + 64);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      block = 134218240;
      *v25 = v15;
      *&v25[8] = 1024;
      *&v25[10] = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &block, 0x12u);
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(a3);
    block = 138412802;
    *v25 = a1;
    *&v25[8] = 2112;
    *&v25[10] = a2;
    *&v25[18] = 2048;
    v26 = Length;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "connectionInfo sendDataForEndpoint: %@ - %@, %ld bytes Failed! ", &block, 0x20u);
  }
}

void platform_connectionInfo_setAccessoryUserName_cold_3(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setAccessoryUserName: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_getAccessoryUserName_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getAccessoryUserName: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_provisionPairing_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_provisionPairing: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_resetPairing_cold_3(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_resetPairing: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

uint64_t platform_connectionInfo_resetPairing_cold_5()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: destroyingEndpoint", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_6()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !pEndpoint", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_7()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !accessoryEndpointUUID", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

uint64_t platform_connectionInfo_resetPairing_cold_8()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_resetPairing: !accessoryConnectionUUID", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_3_29();
  return v11(v10);
}

void platform_connectionInfo_getPublicNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getPublicNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_3()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !pEndpoint", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_5()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !accessoryEndpointUUID", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

uint64_t platform_connectionInfo_getPublicNvmKeyValues_cold_6()
{
  OUTLINED_FUNCTION_25();
  v2 = logObjectForModule();
  if (OUTLINED_FUNCTION_80(v2))
  {
    OUTLINED_FUNCTION_4_28(&_mh_execute_header, v3, v4, "platform_connectionInfo_getPublicNvmKeyValues: !accessoryConnectionUUID", v5, v6, v7, v8, 0);
  }

  v9 = v0;
  v10 = OUTLINED_FUNCTION_2_32();
  return v11(v10);
}

void platform_connectionInfo_setPublicNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setPublicNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_getPrivateNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_getPrivateNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_setPrivateNvmKeyValues_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_setPrivateNvmKeyValues: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_beginVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_beginVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_continueVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_continueVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_cancelVendorKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_cancelVendorKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_beginUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_beginUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_continueUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_continueUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_cancelUserKeyErase_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_cancelUserKeyErase: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void platform_connectionInfo_copyUserPrivateKey_cold_2(uint64_t a1)
{
  acc_endpoint_getProtocolString(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_5(&_mh_execute_header, v1, v2, "platform_connectionInfo_copyUserPrivateKey: unexpected protocol: %s", v3, v4, v5, v6, v7);
}

void _acc_sysdiagnose_authFailure_cold_1(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create sysdiagnose: %@\n", &v1, 0xCu);
}

void _acc_auth_protocol_isBusySessionID_cold_2(char a1, int a2, os_log_t log)
{
  v3[0] = 67109632;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1 & 1;
  v6 = 1024;
  v7 = __availableSessionIDs;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[AccAuth] _isBusySessionID: sessionID %d, isBusySessionID %d, __availableSessionIDs %#04x \n", v3, 0x14u);
}

void _acc_auth_protocol_cleanupCertificateInfo_cold_2(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 352);
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void _acc_auth_protocol_cleanupCertificateData_cold_2(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 56);
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
  }

  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Au);
}

void _acc_auth_protocol_validatePeerCertificateChain_cold_2(uint64_t a1)
{
  v1 = *(a1 + 352);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void _acc_auth_protocol_decompressCerts_cold_2(uint64_t a1)
{
  v1 = *(a1 + 352);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void _acc_auth_protocol_decompressCerts_cold_4(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_19(a1);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void _acc_auth_protocol_decompressCerts_cold_6(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_19(a1);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void _acc_auth_protocol_validateCertificateChain_cold_2(uint64_t a1)
{
  v1 = *(a1 + 352);
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x18u);
}

void _acc_auth_protocol_validateCertificateChain_cold_4(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_19(a1);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void _acc_auth_protocol_validateCertificateChain_cold_6(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[AccAuth] _validateCertificateChain: certList.count %lu \n", &v3, 0xCu);
}

void _acc_auth_protocol_validateCertificateChain_cold_8(unsigned int *a1)
{
  OUTLINED_FUNCTION_8_19(a1);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void _acc_auth_protocol_decompressCert_cold_2(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x22u);
}

void _acc_auth_protocol_decompressCert_cold_5()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void _acc_auth_protocol_decompressCert_cold_6()
{
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void _acc_auth_protocol_decompressCert_cold_7(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t iap2_assistiveTouch_notifyStatusUpdateHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2 != 0;
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 35)
    {
      v7 = *(gLogObjects + 272);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v36 = 134218240;
        v37 = v5;
        OUTLINED_FUNCTION_3();
        v39 = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v36, 0x12u);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v3[1];
      v36 = 138412546;
      v37 = v8;
      v38 = 1024;
      v39 = a2 != 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "iAP2AssistiveTouch notifyStatusUpdate: %@ state=%d", &v36, 0x12u);
    }

    result = OUTLINED_FUNCTION_13_13();
    if (result)
    {
      v9 = result;
      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 35)
      {
        v12 = *(gLogObjects + 272);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v36 = 134218240;
          v37 = v10;
          OUTLINED_FUNCTION_3();
          v39 = v11;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v36, 0x12u);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v24 = v3[1];
        v25 = *(v9 + 1);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3();
        v39 = v26;
        v40 = v27;
        v41 = v28;
        OUTLINED_FUNCTION_3_30();
        v42 = v9;
        OUTLINED_FUNCTION_15_17(&_mh_execute_header, v12, v29, "iAP2AssistiveTouch notifyStatusUpdate: %@ infoRequested %d, state=%d pEndpoint=%p assistiveTouch=%p", &v36);
      }

      if (*(v9 + 1) == 1)
      {
        v13 = iAP2MsgInit((v3 + 15), 21507, v3[24], 0xFFFF, 0, 0);
        result = iAP2MsgAddU8Param(v13, 0, 0, v4);
        if (result)
        {
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 35)
          {
            v16 = *(gLogObjects + 272);
          }

          else if (OUTLINED_FUNCTION_21())
          {
            v36 = 134218240;
            v37 = v14;
            OUTLINED_FUNCTION_3();
            v39 = v15;
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v30, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v32, v33, v34, v35, v36);
          }

          if (OUTLINED_FUNCTION_76())
          {
            v17 = v3[1];
            iAP2MsgGetMsgID(v13);
            v36 = 138412546;
            v37 = v17;
            OUTLINED_FUNCTION_3();
            v39 = v18;
            OUTLINED_FUNCTION_24_1();
            _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v3, v13);
          return 1;
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

_WORD *_createFeature_18(_WORD *result)
{
  if (result)
  {
    v1 = result;
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 21;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8, 0);
      }
    }

    else
    {
      v9 = *(gLogObjects + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v10 = *(v1 + 1);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    }

    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_18(void **a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 21;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v12 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11, 0);
      }
    }

    else
    {
      v12 = *(gLogObjects + 160);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a2 + 8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0xCu);
    }

    if (*a1)
    {
      if (**a1 == 1)
      {
        platform_assistiveTouch_accessoryDetached(*(a2 + 8));
      }

      platform_assistiveTouch_decrementUserCount();
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

uint64_t _startFeatureFromDevice_12(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = HIDWORD(gLogObjects);
    v3 = gNumLogObjects;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 21;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (OUTLINED_FUNCTION_21())
      {
        v17[2] = v2;
        OUTLINED_FUNCTION_3();
        *(&v17[3] + 2) = v3;
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v5, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v7, v8, v9, v10, 0);
      }
    }

    else
    {
      v11 = *(gLogObjects + 160);
    }

    if (OUTLINED_FUNCTION_76())
    {
      LOWORD(v17[0]) = 0;
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }

    result = OUTLINED_FUNCTION_13_13();
    if (result)
    {
      LOBYTE(v17[0]) = 0;
      if (iap2_identification_checkRequiredMsgIDs(v1, &gskMsgAssistiveTouchList, 5, v17))
      {
        platform_assistiveTouch_incrementUserCount();
        platform_assistiveTouch_accessoryAttached(*(v1 + 8));
      }

      return 1;
    }
  }

  return result;
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_7()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_23()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processIncomingMessageRelay_cold_25()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_10(unsigned __int8 *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_11(unsigned __int16 *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_15()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_17()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayRemote_cold_21()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelaySucceeded_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_handle_iAP2RelayFailed_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_StartRelayForType_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_StartRelayForType_cold_5()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_relay_StartRelayForType_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_StartRelayForType_cold_9(uint64_t a1)
{
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void mfi4Auth_relay_StartRelayForType_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_StartRelayForT56_cold_2(uint64_t *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_2()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void mfi4Auth_protocol_setSecureTunnelDataReceiveTypeHandler_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_protocol_processOutgoingSecureTunnelDataForClient_cold_15()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void mfi4Auth_relay_initMessage_DeviceiAP2RelayRemote_TypeData_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void acc_platform_packetLogging_logEventVA_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void acc_platform_packetLogging_logGenericMFiTLV_cold_2(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@", &v2, 0xCu);
}

void _mediaItemAttributesUpdateSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        if ((*Feature & 1) == 0)
        {
          v7 = logObjectForModule_30();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_101_1(v8, v9, v10, v11, v12);
          }
        }
      }
    }

    if (v2)
    {
      v5 = v1[6];
      if (v5)
      {
        free(v5);
        v1[6] = 0;
      }

      v6 = v1[3];
      if (v6)
      {
        free(v6);
      }

      free(v1);
    }
  }
}

uint64_t _addMediaItemAttributesToMessage(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v4 = 0;
  if (!a1 || !a3 || !a4)
  {
    return v4;
  }

  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  Count = CFArrayGetCount(v7);
  v82 = &v69;
  v9 = __chkstk_darwin(Count);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v9)
  {
    memset(&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v10);
  }

  v87.location = 0;
  v87.length = Count;
  CFArrayGetValues(*(a3 + 8), v87, v11);
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v12 = *(gLogObjects + 248);
  }

  else
  {
    v12 = &_os_log_default;
    if (OUTLINED_FUNCTION_11())
    {
      OUTLINED_FUNCTION_74_2(3.8521e-34);
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v39, v40, v41, v42, v43, v44);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    RawValuesString = CFArrayCreateRawValuesString(*(a3 + 8), 0);
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v14 = *(gLogObjects + 248);
    }

    else
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_11())
      {
        OUTLINED_FUNCTION_74_2(3.8521e-34);
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v57, v58, v59, v60, v61, v62);
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v83 = 138412290;
      v84 = RawValuesString;
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v45, v46, v47, v48, v49, v50);
      if (!RawValuesString)
      {
LABEL_21:
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v17 = *(gLogObjects + 248);
        }

        else
        {
          v17 = &_os_log_default;
          if (OUTLINED_FUNCTION_19_0())
          {
            v83 = 134218240;
            v84 = v15;
            v85 = 1024;
            v86 = v16;
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v63, v64, v65, v66, v67, v68);
          }
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v83 = 138412290;
          v84 = a4;
          OUTLINED_FUNCTION_45_6();
          _os_log_debug_impl(v51, v52, v53, v54, v55, v56);
        }

        goto LABEL_28;
      }
    }

    else if (!RawValuesString)
    {
      goto LABEL_21;
    }

    CFRelease(RawValuesString);
    goto LABEL_21;
  }

LABEL_28:
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v81 = @"ChapterCount";
    v80 = @"IsBanned";
    v79 = @"IsLiked";
    v78 = @"IsBanSupported";
    v77 = @"IsLikeSupported";
    v76 = @"Composer";
    v75 = @"Genre";
    v74 = @"Artist";
    v73 = @"AlbumDiscCount";
    v72 = @"AlbumDiscNum";
    v71 = @"AlbumTrackCount";
    v70 = @"AlbumTrackNum";
    do
    {
      v18 = *v11++;
      switch(v18)
      {
        case 0:
          CFDictionaryGetValue(a4, @"PersistentID");
          v19 = OUTLINED_FUNCTION_7_20();
          v22 = iAP2MsgAddCFU64Param(v19, v20, 0, v21);
          goto LABEL_50;
        case 1:
          CFDictionaryGetValue(a4, @"Title");
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 1;
          goto LABEL_49;
        case 4:
          CFDictionaryGetValue(a4, @"PlaybackDurationMS");
          v31 = OUTLINED_FUNCTION_7_20();
          v22 = iAP2MsgAddCFU32Param(v31, v32, 4, v33);
          goto LABEL_50;
        case 6:
          CFDictionaryGetValue(a4, @"AlbumTitle");
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 6;
          goto LABEL_49;
        case 7:
          CFDictionaryGetValue(a4, v70);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 7;
          goto LABEL_46;
        case 8:
          CFDictionaryGetValue(a4, v71);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 8;
          goto LABEL_46;
        case 9:
          CFDictionaryGetValue(a4, v72);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 9;
          goto LABEL_46;
        case 10:
          CFDictionaryGetValue(a4, v73);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 10;
          goto LABEL_46;
        case 12:
          CFDictionaryGetValue(a4, v74);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 12;
          goto LABEL_49;
        case 16:
          CFDictionaryGetValue(a4, v75);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 16;
          goto LABEL_49;
        case 18:
          CFDictionaryGetValue(a4, v76);
          v27 = OUTLINED_FUNCTION_7_20();
          v30 = 18;
LABEL_49:
          v22 = iAP2MsgAddCFStringParam(v27, v28, v30, v29);
          goto LABEL_50;
        case 21:
          CFDictionaryGetValue(a4, v77);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 21;
          goto LABEL_42;
        case 22:
          CFDictionaryGetValue(a4, v78);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 22;
          goto LABEL_42;
        case 23:
          CFDictionaryGetValue(a4, v79);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 23;
          goto LABEL_42;
        case 24:
          CFDictionaryGetValue(a4, v80);
          v23 = OUTLINED_FUNCTION_7_20();
          v26 = 24;
LABEL_42:
          v22 = iAP2MsgAddCFBooleanParam(v23, v24, v26, v25);
          goto LABEL_50;
        case 27:
          CFDictionaryGetValue(a4, v81);
          v34 = OUTLINED_FUNCTION_7_20();
          v37 = 27;
LABEL_46:
          v22 = iAP2MsgAddCFU16Param(v34, v35, v37, v36);
LABEL_50:
          if (v22)
          {
            ++v4;
          }

          break;
        default:
          break;
      }

      --Count;
    }

    while (Count);
  }

  return v4;
}

void _playbackAttributesUpdateSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        if ((*Feature & 1) == 0)
        {
          v7 = logObjectForModule_30();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_101_1(v8, v9, v10, v11, v12);
          }
        }
      }
    }

    if (v2)
    {
      v5 = v1[6];
      if (v5)
      {
        free(v5);
        v1[6] = 0;
      }

      v6 = v1[3];
      if (v6)
      {
        free(v6);
      }

      free(v1);
    }
  }
}

uint64_t _addplaybackAttributesToMessage(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, _BYTE *a5, int a6)
{
  v130 = a6;
  v131 = a5;
  v132 = a2;
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v10 = *(gLogObjects + 248);
  }

  else
  {
    v10 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_50_4(3.8521e-34);
      LODWORD(v136) = v9;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v76, v77, v78, v79, v80, v81);
    }
  }

  if (OUTLINED_FUNCTION_108())
  {
    valuePtr = 134219010;
    v134 = obfuscatedPointer(a1);
    v135 = 2048;
    v136 = obfuscatedPointer(v132);
    v137 = 2048;
    v138 = obfuscatedPointer(a3);
    v139 = 1024;
    v140 = v130;
    v141 = 2112;
    v142 = a4;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "_addplaybackAttributesToMessage: pMessage=%p pGroupParam=%p pFeature=%p initialSend=%d playbackAttributes=%@", &valuePtr, 0x30u);
  }

  LOWORD(v11) = 0;
  if (a1 && a3 && a4)
  {
    v12 = *(a3 + 16);
    if (!v12)
    {
      LOWORD(v11) = 0;
      return v11;
    }

    Count = CFArrayGetCount(v12);
    v128 = &v111;
    v14 = __chkstk_darwin(Count);
    v16 = (&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v14)
    {
      memset(&v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v15);
    }

    v143.location = 0;
    v143.length = Count;
    CFArrayGetValues(*(a3 + 16), v143, v16);
    v17 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v18 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_50_4(3.8521e-34);
      LODWORD(v136) = v17;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v82, v83, v84, v85, v86, v87);
    }

    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_35;
    }

    RawValuesString = CFArrayCreateRawValuesString(*(a3 + 16), 0);
    v21 = gLogObjects;
    v22 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v23 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      valuePtr = 134218240;
      v134 = v21;
      v135 = 1024;
      LODWORD(v136) = v22;
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v99, v100, v101, v102, v103, v104);
    }

    v24 = OUTLINED_FUNCTION_94();
    if (os_log_type_enabled(v24, v25))
    {
      valuePtr = 138412290;
      v134 = RawValuesString;
      OUTLINED_FUNCTION_33_6();
      _os_log_debug_impl(v88, v89, v90, v91, v92, 0xCu);
      if (!RawValuesString)
      {
LABEL_28:
        v26 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v27 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_50_4(3.8521e-34);
          LODWORD(v136) = v26;
          OUTLINED_FUNCTION_6_26();
          _os_log_error_impl(v105, v106, v107, v108, v109, v110);
        }

        if (OUTLINED_FUNCTION_108())
        {
          valuePtr = 138412290;
          v134 = a4;
          OUTLINED_FUNCTION_45_6();
          _os_log_debug_impl(v93, v94, v95, v96, v97, v98);
        }

LABEL_35:
        if (v131)
        {
          *v131 = 0;
        }

        if (Count >= 1)
        {
          v129 = a3;
          v11 = 0;
          v127 = @"AppBundleID";
          v126 = @"SetElapsedTimeAvailable";
          v125 = @"PlaybackSpeed";
          v124 = @"iTunesRadioStationMediaPlaylistPersistentID";
          v123 = @"iTunesRadioStation";
          v122 = @"iTunesRadioAd";
          v121 = @"MediaLibraryUID";
          v120 = @"AppName";
          v119 = @"RepeatMode";
          v118 = @"ShuffleMode";
          v117 = @"QueueChapterIndex";
          v116 = @"QueueCount";
          v115 = @"QueueIndex";
          v114 = @"ElapsedTimeMS";
          v113 = @"Status";
          *&v19 = 67109120;
          v112 = v19;
          *&v19 = 134218240;
          v111 = v19;
          while (2)
          {
            v29 = *v16++;
            v28 = v29;
            v30 = gLogObjects;
            v31 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v32 = *(gLogObjects + 248);
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              valuePtr = v111;
              v134 = v30;
              v135 = 1024;
              LODWORD(v136) = v31;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr, 0x12u);
            }

            v33 = OUTLINED_FUNCTION_94();
            if (os_log_type_enabled(v33, v34))
            {
              valuePtr = v112;
              LODWORD(v134) = v28;
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v71, v72, v73, "_addplaybackAttributesToMessage: paramID=%d", v74, 8u);
            }

            switch(v28)
            {
              case 0u:
                CFDictionaryGetValue(a4, v113);
                v35 = OUTLINED_FUNCTION_11_14();
                v38 = 0;
                goto LABEL_62;
              case 1u:
                Value = CFDictionaryGetValue(a4, v114);
                valuePtr = -1431655766;
                if (Value)
                {
                  if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
                  {
                    v59 = OUTLINED_FUNCTION_35_5();
                    if (iAP2MsgAddU32Param(v59, v60, 1, v61))
                    {
                      ++v11;
                      if (v131)
                      {
                        *v131 = 1;
                      }
                    }
                  }
                }

                goto LABEL_79;
              case 2u:
                v51 = CFDictionaryGetValue(a4, v115);
                if (!v51)
                {
                  goto LABEL_79;
                }

                v52 = v51;
                v53 = OUTLINED_FUNCTION_35_5();
                if (!iAP2MsgAddCFU32Param(v53, v54, 2, v52))
                {
                  goto LABEL_79;
                }

                OUTLINED_FUNCTION_97_2();
                *(v129 + 28) = valuePtr;
                goto LABEL_71;
              case 3u:
                v64 = CFDictionaryGetValue(a4, v116);
                if (!v64)
                {
                  goto LABEL_79;
                }

                v65 = v64;
                v66 = OUTLINED_FUNCTION_35_5();
                if (!iAP2MsgAddCFU32Param(v66, v67, 3, v65))
                {
                  goto LABEL_79;
                }

                OUTLINED_FUNCTION_97_2();
                *(v129 + 32) = valuePtr;
LABEL_71:
                ++v11;
                goto LABEL_79;
              case 4u:
                CFDictionaryGetValue(a4, v117);
                v68 = OUTLINED_FUNCTION_11_14();
                v50 = iAP2MsgAddCFU32Param(v68, v69, 4, v70);
                goto LABEL_77;
              case 5u:
                CFDictionaryGetValue(a4, v118);
                v35 = OUTLINED_FUNCTION_11_14();
                v38 = 5;
                goto LABEL_62;
              case 6u:
                CFDictionaryGetValue(a4, v119);
                v35 = OUTLINED_FUNCTION_11_14();
                v38 = 6;
LABEL_62:
                v50 = iAP2MsgAddCFU8Param(v35, v36, v38, v37);
                goto LABEL_77;
              case 7u:
                CFDictionaryGetValue(a4, v120);
                v43 = OUTLINED_FUNCTION_11_14();
                v46 = 7;
                goto LABEL_76;
              case 8u:
                CFDictionaryGetValue(a4, v121);
                v43 = OUTLINED_FUNCTION_11_14();
                v46 = 8;
                goto LABEL_76;
              case 9u:
                CFDictionaryGetValue(a4, v122);
                v39 = OUTLINED_FUNCTION_11_14();
                v42 = 9;
                goto LABEL_74;
              case 0xAu:
                CFDictionaryGetValue(a4, v123);
                v43 = OUTLINED_FUNCTION_11_14();
                v46 = 10;
                goto LABEL_76;
              case 0xBu:
                CFDictionaryGetValue(a4, v124);
                v55 = OUTLINED_FUNCTION_11_14();
                v50 = iAP2MsgAddCFU64Param(v55, v56, 11, v57);
                goto LABEL_77;
              case 0xCu:
                CFDictionaryGetValue(a4, v125);
                v47 = OUTLINED_FUNCTION_11_14();
                v50 = iAP2MsgAddCFU16Param(v47, v48, 12, v49);
                goto LABEL_77;
              case 0xDu:
                CFDictionaryGetValue(a4, v126);
                v39 = OUTLINED_FUNCTION_11_14();
                v42 = 13;
LABEL_74:
                v50 = iAP2MsgAddCFBooleanParam(v39, v40, v42, v41);
                goto LABEL_77;
              case 0xEu:
                if (!v130 || *(v129 + 82) != 1)
                {
                  goto LABEL_79;
                }

                v62 = OUTLINED_FUNCTION_35_5();
                v50 = iAP2MsgAddU8Param(v62, v63, 14, 0);
LABEL_77:
                if (v50)
                {
                  ++v11;
                }

LABEL_79:
                if (!--Count)
                {
                  return v11;
                }

                continue;
              case 0x10u:
                CFDictionaryGetValue(a4, v127);
                v43 = OUTLINED_FUNCTION_11_14();
                v46 = 16;
LABEL_76:
                v50 = iAP2MsgAddCFStringParam(v43, v44, v46, v45);
                goto LABEL_77;
              default:
                goto LABEL_79;
            }
          }
        }

        LOWORD(v11) = 0;
        return v11;
      }
    }

    else if (!RawValuesString)
    {
      goto LABEL_28;
    }

    CFRelease(RawValuesString);
    goto LABEL_28;
  }

  return v11;
}

void _playbackQueueListChangedSentCB(uint64_t a1)
{
  if (a1)
  {
    v3 = OUTLINED_FUNCTION_71_1(a1);
    if (v3)
    {
      Feature = iap2_feature_getFeature(v3, 0xEu);
      if (Feature)
      {
        v5 = Feature;
        if ((*(Feature + 80) & 1) == 0 && (*(Feature + 81) & 1) == 0)
        {
          v8 = logObjectForModule_30();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(v5 + 80);
            v14 = *(v5 + 81);
            OUTLINED_FUNCTION_6_0();
            _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 0x1Eu);
          }
        }
      }
    }

    if (v2)
    {
      v6 = v1[6];
      if (v6)
      {
        free(v6);
        v1[6] = 0;
      }

      v7 = v1[3];
      if (v7)
      {
        free(v7);
      }

      free(v1);
    }
  }
}

uint64_t iap2_nowPlaying_playbackQueueListInfoResponseHandler(void *a1, const __CFDictionary *a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v4 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v5 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v186, v187, v188, v189, v190, v191);
  }

  if (OUTLINED_FUNCTION_24())
  {
    v6 = a1[1];
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"RequestID");
    }

    else
    {
      Value = @"(nil)";
    }

    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = Value;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v8, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 0x16u);
  }

  Feature = iap2_feature_getFeature(a1, 0xEu);
  if (!Feature)
  {
    return 0;
  }

  v13 = Feature;
  OUTLINED_FUNCTION_89_3(Feature);
  if (!v14)
  {
    return 0;
  }

  v15 = a1[4];
  if (!v15 || !*(v15 + 24))
  {
    return 0;
  }

  v303 = a1;
  v16 = CFDictionaryGetValue(a2, @"StartIndex");
  v17 = CFDictionaryGetValue(a2, @"Count");
  v18 = CFDictionaryGetValue(a2, @"NonLibrary");
  v19 = CFDictionaryGetValue(a2, @"Available");
  valuePtr = 0;
  HIWORD(v314) = 0;
  if (!v19)
  {
    v280 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v280))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_197;
  }

  if (a2)
  {
    v20 = v19;
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberIntType, &valuePtr + 4);
    }

    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
    }

    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt8Type, &v314 + 7);
    }

    CFNumberGetValue(v20, kCFNumberSInt8Type, &v314 + 6);
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v21 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v198, v199, v200, v201, v202, v203);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      OUTLINED_FUNCTION_9_20();
      *&buf[20] = v23;
      *&buf[22] = v24;
LABEL_40:
      OUTLINED_FUNCTION_33_8();
      _os_log_impl(v27, v28, OS_LOG_TYPE_INFO, v29, v30, 0x1Au);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v22 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v215, v216, v217, v218, v219, v220);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      OUTLINED_FUNCTION_9_20();
      *&buf[20] = v25;
      *&buf[22] = v26;
      goto LABEL_40;
    }
  }

  v31 = CFDictionaryGetValue(a2, @"RequestID");
  if (!v31)
  {
    v281 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v281))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_197;
  }

  v32 = v31;
  v33 = *(v13 + 96);
  if (!v33)
  {
    v282 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v282))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_197;
  }

  if (!CFEqual(v33, v32))
  {
    v283 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v283))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_197;
  }

  if ((*(v13 + 80) & 1) == 0 && (*(v13 + 81) & 1) == 0)
  {
    v293 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v293))
    {
      return 0;
    }

    *buf = 0;
LABEL_197:
    OUTLINED_FUNCTION_8_20();
    v197 = 2;
LABEL_198:
    _os_log_error_impl(v192, v193, v194, v195, v196, v197);
    return 0;
  }

  v34 = OUTLINED_FUNCTION_86_3();
  iAP2LinkGetSessionForService(v34, 1);
  v35 = OUTLINED_FUNCTION_86_3();
  SessionInfo = iAP2LinkGetSessionInfo(v35, v36);
  if (!SessionInfo)
  {
    CFDictionaryGetValue(a2, @"List");
    v44 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v44))
    {
      return 0;
    }

    *buf = 0;
    goto LABEL_197;
  }

  v38 = SessionInfo[2];
  v39 = *(v13 + 80);
  if (v38 <= 1)
  {
    v41 = OUTLINED_FUNCTION_98_1(&kCFACCNowPlaying_PlaybackQueueContentInfo_List, v294, v296, v298, v301);
    v40 = 0;
    v42 = 0;
    v43 = &audioProductCerts_endpoint_publish_onceToken;
    if ((v39 & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v40 = *(v13 + 81);
  v41 = OUTLINED_FUNCTION_98_1(&kCFACCNowPlaying_PlaybackQueueContentInfo_List, v294, v296, v298, v301);
  if (v40)
  {
    v42 = 6;
  }

  else
  {
    v42 = 0;
  }

  v43 = 0x100246000;
  if (v39)
  {
LABEL_56:
    v42 = 3;
  }

LABEL_57:
  v46 = valuePtr;
  if (v41)
  {
    Count = CFArrayGetCount(v41);
  }

  else
  {
    Count = 0;
  }

  theArray = v41;
  if (Count != v46)
  {
    v284 = logObjectForModule_30();
    if (!OUTLINED_FUNCTION_16(v284))
    {
      return 0;
    }

    v285 = valuePtr;
    if (v41)
    {
      v286 = CFArrayGetCount(v41);
    }

    else
    {
      v286 = 0;
    }

    *buf = 67109376;
    *&buf[4] = v285;
    *&buf[8] = 2048;
    *&buf[10] = v286;
    OUTLINED_FUNCTION_4_32();
    goto LABEL_198;
  }

  LODWORD(v299) = v38;
  v48 = gLogObjects;
  v49 = *(v43 + 3936);
  if (gLogObjects && v49 >= 32)
  {
    v50 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    *&buf[4] = v48;
    OUTLINED_FUNCTION_17_3();
    *&buf[14] = v49;
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v204, v205, v206, v207, v208, v209);
  }

  if (OUTLINED_FUNCTION_80_2())
  {
    *buf = 67109888;
    *&buf[4] = HIBYTE(v314);
    *&buf[8] = 1024;
    *&buf[10] = v39;
    *&buf[14] = 1024;
    *&buf[16] = v40;
    *&buf[20] = 1024;
    *&buf[22] = valuePtr;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v51, v52, OS_LOG_TYPE_INFO, v53, v54, 0x1Au);
  }

  v55 = v303;
  if (((HIBYTE(v314) == 0) & v39) == 1)
  {
    v300 = 1;
    v56 = 8 * valuePtr;
    v42 = 3;
    goto LABEL_97;
  }

  if (!v40)
  {
    if (gLogObjects && *(v43 + 3936) >= 32)
    {
      v66 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_1_27();
      OUTLINED_FUNCTION_4_32();
      _os_log_error_impl(v269, v270, v271, v272, v273, v274);
    }

    if (OUTLINED_FUNCTION_80_2())
    {
      *buf = 0;
      OUTLINED_FUNCTION_33_8();
      _os_log_impl(v149, v150, OS_LOG_TYPE_INFO, v151, v152, 2u);
    }

    BYTE6(v314) = 0;
    if ((v302 & 1) == 0)
    {
      v148 = 0;
      v56 = 0;
      goto LABEL_161;
    }

LABEL_195:
    v45 = 1;
    _sendPBQTransferTypeAndAvailability(v55);
    return v45;
  }

  v300 = (HIBYTE(v314) == 0) & v39;
  if (valuePtr < 1)
  {
    OUTLINED_FUNCTION_75_5();
    v42 = 6;
    if ((v185 & 1) == 0)
    {
      v55 = v184;
      v56 = 22;
      goto LABEL_100;
    }

    goto LABEL_195;
  }

  v57 = 0;
  v43 = @"AlbumArtist";
  v56 = 22;
  v312 = v13;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v57);
    v59 = v56;
    if (ValueAtIndex && *v13 == 1)
    {
      v55 = ValueAtIndex;
      v60 = 0;
      v61 = *(v13 + 92);
      v62 = 4;
      while (1)
      {
        if ((v61 >> v60))
        {
          switch(v60)
          {
            case 12:
              v63 = OUTLINED_FUNCTION_44_7();
              goto LABEL_89;
            case 13:
            case 15:
            case 17:
              break;
            case 14:
              v63 = v55;
              v64 = @"AlbumArtist";
              goto LABEL_89;
            case 16:
              v63 = v55;
              v64 = @"Genre";
              goto LABEL_89;
            case 18:
              v63 = v55;
              v64 = @"Composer";
              goto LABEL_89;
            default:
              if (v60 == 6)
              {
                v63 = v55;
                v64 = @"AlbumTitle";
                goto LABEL_89;
              }

              if (v60 == 1)
              {
                v63 = v55;
                v64 = @"Title";
LABEL_89:
                v65 = CFDictionaryGetValue(v63, v64);
                v62 += _calculateStrParamSize(v65);
                break;
              }

              if (!v60 && CFDictionaryGetValue(v55, @"PersistentID"))
              {
                v62 += 12;
              }

              break;
          }
        }

        if (++v60 == 19)
        {
          goto LABEL_91;
        }
      }
    }

    v62 = 0;
LABEL_91:
    v56 = v62 + v59;
    ++v57;
    v13 = v312;
  }

  while (v57 < valuePtr);
  v42 = 6;
  OUTLINED_FUNCTION_85_3();
  v4 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_97:
  OUTLINED_FUNCTION_75_5();
  if (v68)
  {
    goto LABEL_195;
  }

  if (!v56)
  {
    v148 = 0;
LABEL_161:
    key = 0;
    goto LABEL_162;
  }

  v55 = v67;
LABEL_100:
  v69 = malloc_type_malloc(v56, 0x3BFF376uLL);
  if (gLogObjects && *(v43 + 3936) >= 32)
  {
    v70 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_1_27();
    OUTLINED_FUNCTION_4_32();
    _os_log_error_impl(v222, v223, v224, v225, v226, v227);
  }

  if (OUTLINED_FUNCTION_80_2())
  {
    v71 = obfuscatedPointer(v69);
    *buf = 67109376;
    *&buf[4] = v56;
    *&buf[8] = 2048;
    *&buf[10] = v71;
    OUTLINED_FUNCTION_33_8();
    _os_log_impl(v72, v73, OS_LOG_TYPE_INFO, v74, v75, 0x12u);
  }

  HIDWORD(v297) = v42;
  v313 = v13;
  key = v69;
  if (!v300)
  {
    v320 = 0xAAAAAAAAAAAAAAAALL;
    *&v88 = 0xAAAAAAAAAAAAAAAALL;
    *(&v88 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v318 = v88;
    v319 = v88;
    *buf = v88;
    *&buf[16] = v88;
    HIDWORD(v299) = v56;
    iAP2MsgInit(buf, 0, v69, v56, 0, 0);
    iAP2MsgAddU32Param(buf, 0, 0, valuePtr);
    iAP2MsgAddU32Param(buf, 0, 1, HIDWORD(valuePtr));
    if (valuePtr < 1)
    {
LABEL_152:
      v148 = 1;
      OUTLINED_FUNCTION_85_3();
      v4 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_154:
      v13 = v313;
      v42 = HIDWORD(v297);
      v56 = HIDWORD(v299);
      goto LABEL_162;
    }

    v89 = 0;
    v43 = @"Artist";
    v307 = @"AlbumTitle";
    v305 = @"Title";
    v90 = *v55;
    while (1)
    {
      v91 = CFArrayGetValueAtIndex(theArray, v89);
      if (v91)
      {
        v92 = *(v313 + 92);
        if (v92)
        {
          if (*v313 == 1)
          {
            break;
          }
        }
      }

LABEL_151:
      if (++v89 >= valuePtr)
      {
        goto LABEL_152;
      }
    }

    v93 = v91;
    v55 = iAP2MsgAddGroupParam(buf, 2);
    v94 = 0;
    while (1)
    {
      if ((v92 >> v94))
      {
        switch(v94)
        {
          case 12:
            v95 = CFDictionaryGetValue(v93, @"Artist");
            if (v95)
            {
              v103 = OUTLINED_FUNCTION_31_9(v95, v96, v97, v98, v99, v100, v101, v102, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
              v106 = 12;
              goto LABEL_149;
            }

            break;
          case 13:
          case 15:
          case 17:
            break;
          case 14:
            v108 = CFDictionaryGetValue(v93, @"AlbumArtist");
            if (v108)
            {
              v103 = OUTLINED_FUNCTION_31_9(v108, v109, v110, v111, v112, v113, v114, v115, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
              v106 = 14;
              goto LABEL_149;
            }

            break;
          case 16:
            v124 = CFDictionaryGetValue(v93, @"Genre");
            if (v124)
            {
              v103 = OUTLINED_FUNCTION_31_9(v124, v125, v126, v127, v128, v129, v130, v131, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
              v106 = 16;
              goto LABEL_149;
            }

            break;
          case 18:
            v116 = CFDictionaryGetValue(v93, @"Composer");
            if (v116)
            {
              v103 = OUTLINED_FUNCTION_31_9(v116, v117, v118, v119, v120, v121, v122, v123, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
              v106 = 18;
              goto LABEL_149;
            }

            break;
          default:
            if (v94 == 6)
            {
              v140 = CFDictionaryGetValue(v93, v307);
              if (v140)
              {
                v103 = OUTLINED_FUNCTION_31_9(v140, v141, v142, v143, v144, v145, v146, v147, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
                v106 = 6;
                goto LABEL_149;
              }
            }

            else
            {
              if (v94 != 1)
              {
                if (!v94)
                {
                  v107 = CFDictionaryGetValue(v93, v90);
                  v316 = 0;
                  if (v107)
                  {
                    if (CFNumberGetValue(v107, kCFNumberSInt64Type, &v316))
                    {
                      iAP2MsgAddU64Param(buf, v55, 0, v316);
                    }
                  }
                }

                break;
              }

              v132 = CFDictionaryGetValue(v93, v305);
              if (v132)
              {
                v103 = OUTLINED_FUNCTION_31_9(v132, v133, v134, v135, v136, v137, v138, v139, v295, v297, v299, v302, v303, key, v305, v306, v307, v308, v309, theArray, v313, v314, valuePtr, v316, buf[0]);
                v106 = 1;
LABEL_149:
                iAP2MsgAddCFStringParam(v103, v104, v106, v105);
                break;
              }
            }

            break;
        }
      }

      if (++v94 == 19)
      {
        goto LABEL_151;
      }
    }
  }

  if (valuePtr >= 1)
  {
    HIDWORD(v299) = v56;
    v76 = 0;
    v77 = *v55;
    v55 = &_os_log_default;
    v43 = v69;
    v78 = theArray;
    do
    {
      v79 = CFArrayGetValueAtIndex(v78, v76);
      v80 = CFDictionaryGetValue(v79, v77);
      v316 = 0;
      if (v80 && CFNumberGetValue(v80, kCFNumberSInt64Type, &v316))
      {
        *v43 = HIBYTE(v316);
        *(v43 + 1) = BYTE6(v316);
        *(v43 + 2) = BYTE5(v316);
        *(v43 + 3) = BYTE4(v316);
        *(v43 + 4) = BYTE3(v316);
        *(v43 + 5) = BYTE2(v316);
        *(v43 + 6) = BYTE1(v316);
        *(v43 + 7) = v316;
      }

      else
      {
        v81 = v4;
        v82 = v4[491];
        v83 = gNumLogObjects;
        if (v82 && gNumLogObjects >= 32)
        {
          v84 = *(v82 + 248);
        }

        else
        {
          v84 = &_os_log_default;
          if (OUTLINED_FUNCTION_18())
          {
            *buf = 134218240;
            *&buf[4] = v82;
            *&buf[12] = 1024;
            *&buf[14] = v83;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            v84 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          v85 = valuePtr;
          v86 = obfuscatedPointer(v43);
          v87 = *(v313 + 92);
          *buf = 67110146;
          *&buf[4] = v76;
          *&buf[8] = 1024;
          *&buf[10] = v85;
          *&buf[14] = 2048;
          *&buf[16] = v86;
          *&buf[24] = 1024;
          *&buf[26] = v87;
          *&buf[30] = 2112;
          *&v318 = v79;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "#PlaybackQueueList fill in pid list, failed to retrieve pid from item: i=%d / %d, p=%p infoMask=0x%x item=%@", buf, 0x28u);
        }

        *v43 = 0;
        v4 = v81;
        v78 = theArray;
      }

      ++v76;
      v43 += 8;
    }

    while (v76 < valuePtr);
    v148 = 1;
    OUTLINED_FUNCTION_85_3();
    goto LABEL_154;
  }

  v148 = 1;
  v55 = v303;
LABEL_162:
  if (*(v13 + 120) == 1)
  {
    TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v55, *(v13 + 121));
    if (TransferEntry)
    {
      v154 = TransferEntry;
      v155 = *(TransferEntry + 8);
      if (v155)
      {
        v55 = v4[491];
        v43 = *(v43 + 3936);
        if (v55 && v43 >= 32)
        {
          v221 = v55[31];
        }

        else
        {
          v221 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            *buf = 134218240;
            *&buf[4] = v55;
            OUTLINED_FUNCTION_17_3();
            *&buf[14] = v43;
            OUTLINED_FUNCTION_4_21();
            _os_log_error_impl(v255, v256, v257, v258, v259, v260);
            v155 = *(v154 + 1);
          }
        }

        if (OUTLINED_FUNCTION_76())
        {
          v261 = *v154;
          v262 = *(v155 + 109);
          v263 = *(v154 + 1);
          v264 = *(v155 + 112);
          v265 = *(v155 + 104);
          OUTLINED_FUNCTION_9_20();
          *&buf[20] = v266;
          *&buf[22] = v267;
          *&buf[26] = v266;
          *&buf[28] = v268;
          _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_INFO, "#PlaybackQueueList cancel previous transfer: id=%d(%d) type=%d(%d) state=%d", buf, 0x20u);
          v155 = *(v154 + 1);
        }

        OUTLINED_FUNCTION_85_3();
        _cancelPendingTransfer_0(v155);
      }
    }

    *(v13 + 120) = 0;
  }

  v156 = OUTLINED_FUNCTION_86_3();
  if (iAP2FileTransferAllocateBufferID(v156, SHIDWORD(v302), (v13 + 121)))
  {
    v157 = v56;
    v158 = v4;
    *(v13 + 120) = 1;
    v159 = OUTLINED_FUNCTION_54_0();
    if (!v159)
    {
      v45 = 0;
      v175 = key;
      if (!key)
      {
        return v45;
      }

      goto LABEL_190;
    }

    v160 = v159;
    OUTLINED_FUNCTION_86_3();
    v161 = *(v13 + 121);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_72_3();
    iAP2FileTransferCreate(v162, v163, v164, v165, v166, v167, v160, v168);
    iAP2FileTransferTypeData(v160, v42, 0);
    v169 = iap2_sessionFileTransfer_addTransferForFeature(v55, 14, v160, 0);
    v170 = v158[491];
    v171 = *(v43 + 3936);
    if (v170)
    {
      v172 = v171 <= 31;
    }

    else
    {
      v172 = 1;
    }

    v173 = !v172;
    if (v169)
    {
      if (v173)
      {
        theArraya = *(v170 + 248);
      }

      else
      {
        theArraya = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v170;
          OUTLINED_FUNCTION_17_3();
          *&buf[14] = v171;
          theArraya = &_os_log_default;
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v234, v235, v236, v237, v238, v239);
        }
      }

      if (OUTLINED_FUNCTION_76())
      {
        v240 = *(v160 + 109);
        v241 = *(v160 + 112);
        v242 = *(v160 + 104);
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_84_3(&_mh_execute_header, theArraya, v243, "#PlaybackQueueList added transfer for feature and set type: id=%d type=%d state=%d", buf);
      }

      v244 = *(v13 + 128);
      if (v244)
      {
        CFRelease(v244);
        *(v13 + 128) = 0;
      }

      v245 = v148 ^ 1;
      if (!key)
      {
        v245 = 1;
      }

      if (v245)
      {
        v246 = 0;
      }

      else
      {
        v246 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, key, v157, kCFAllocatorDefault);
      }

      *(v13 + 128) = v246;
      *(v13 + 122) = v42;
      if ((_sendPBQTransferTypeAndAvailability(v55) & 1) == 0)
      {
        v247 = v158[491];
        if (v247 && *(v43 + 3936) >= 32)
        {
          v248 = *(v247 + 248);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_1_27();
          OUTLINED_FUNCTION_4_32();
          _os_log_error_impl(v287, v288, v289, v290, v291, v292);
        }

        if (OUTLINED_FUNCTION_13())
        {
          *buf = 0;
          OUTLINED_FUNCTION_8_20();
          _os_log_error_impl(v275, v276, v277, v278, v279, 2u);
        }

        iAP2FileTransferCancel(v160);
      }

      return 1;
    }

    if (v173)
    {
      v174 = *(v170 + 248);
      v175 = key;
    }

    else
    {
      v175 = key;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        *&buf[4] = v170;
        OUTLINED_FUNCTION_17_3();
        *&buf[14] = v171;
        OUTLINED_FUNCTION_4_32();
        _os_log_error_impl(v249, v250, v251, v252, v253, v254);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      OUTLINED_FUNCTION_8_20();
      _os_log_error_impl(v210, v211, v212, v213, v214, 2u);
    }

    iAP2FileTransferRelease(v160);
  }

  else
  {
    v176 = v4[491];
    if (v176 && *(v43 + 3936) >= 32)
    {
      v177 = *(v176 + 248);
      v175 = key;
    }

    else
    {
      v175 = key;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_1_27();
        OUTLINED_FUNCTION_4_32();
        _os_log_error_impl(v228, v229, v230, v231, v232, v233);
      }
    }

    if (OUTLINED_FUNCTION_13())
    {
      *buf = 0;
      OUTLINED_FUNCTION_8_20();
      _os_log_error_impl(v178, v179, v180, v181, v182, 2u);
    }
  }

  v45 = 1;
  if (v175)
  {
LABEL_190:
    free(v175);
  }

  return v45;
}

uint64_t *_sendPBQTransferTypeAndAvailability(uint64_t *result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50(result);
    if (!v6)
    {
      return 0;
    }

    v7 = v5;
    v8 = v4;
    v9 = v3;
    v10 = v2;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v11 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v40, v41, v42, v43, v44, v45);
    }

    v12 = OUTLINED_FUNCTION_66_2();
    if (os_log_type_enabled(v12, v13))
    {
      v53 = v1[1];
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_48_1();
      _os_log_impl(v14, v15, OS_LOG_TYPE_INFO, v16, v17, 0x1Eu);
    }

    v18 = OUTLINED_FUNCTION_69_3();
    result = iap2_feature_getFeature(v18, v19);
    if (result)
    {
      v20 = result;
      OUTLINED_FUNCTION_89_3(result);
      if (!v21)
      {
        return 0;
      }

      v52 = v7;
      v22 = OUTLINED_FUNCTION_6_7();
      v23 = malloc_type_malloc(0xFFFFuLL, 0xA9F0B797uLL);
      v24 = OUTLINED_FUNCTION_51_2();
      *v24 = v1;
      v24[8] = *(v20 + 121);
      *(v24 + 3) = v10;
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v25 = *(gLogObjects + 248);
      }

      else
      {
        v25 = &_os_log_default;
        if (OUTLINED_FUNCTION_11())
        {
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_87_4();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v46, v47, v48, v49, v50, v51);
        }
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v54 = v1[1];
        OUTLINED_FUNCTION_87_4();
        _os_log_impl(v26, v27, OS_LOG_TYPE_DEFAULT, v28, v29, 0x1Cu);
      }

      iAP2MsgInit(v22, 20481, v23, 0xFFFF, _playbackQueueFileTransferIDSent, v24);
      v30 = OUTLINED_FUNCTION_66_2();
      iAP2MsgAddGroupParam(v30, v31);
      if (!v8 || (v32 = OUTLINED_FUNCTION_44_7(), iAP2MsgAddU8Param(v32, v33, 14, v52), v52))
      {
        if (v9)
        {
          v34 = OUTLINED_FUNCTION_44_7();
          iAP2MsgAddVoidParam(v34, v35, 17);
        }

        else
        {
          v36 = *(v20 + 121);
          v37 = OUTLINED_FUNCTION_44_7();
          iAP2MsgAddU8Param(v37, v38, 15, v39);
        }
      }

      return iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v1, v22);
    }
  }

  return result;
}

void _playbackQueueFileTransferIDSent(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[6];
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v5 = *(gLogObjects + 248);
    }

    else
    {
      v5 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v21, v22, v23, v24, v25, v26);
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      obfuscatedPointer(v4);
      if (v4)
      {
        v6 = *(v4 + 12);
      }

      iAP2MsgGetMsgID(a1);
      iAP2MsgGetMsgLen(a1);
      dispatch_queue_get_label(0);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_14_3();
      _os_log_impl(v7, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 0x2Eu);
    }

    if (v4)
    {
      v11 = *(v4 + 12);
      if (v11 == 6 || v11 == 3)
      {
        if (*v4)
        {
          Feature = iap2_feature_getFeature(*v4, 0xEu);
          if (Feature)
          {
            _handleFileTransferIDSent(@"#PlaybackQueueList", v4, (Feature + 120), _playbackQueueFileTransferEndHandler);
          }
        }
      }
    }
  }

  if (a2)
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v14 = *(gLogObjects + 248);
    }

    else
    {
      v14 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_21();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v27, v28, v29, v30, v31, v32);
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        iAP2MsgGetMsgID(a1);
        iAP2MsgGetMsgLen(a1);
      }

      dispatch_queue_get_label(0);
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v15, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 0x18u);
    }

    if (a1)
    {
      v19 = a1[6];
      if (v19)
      {
        free(v19);
        a1[6] = 0;
      }

      v20 = a1[3];
      if (v20)
      {
        free(v20);
      }

      free(a1);
    }
  }
}

char *_createFeature_19(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2 || !*(v2 + 24))
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x1060040F5F5C552uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 0;
    *(v3 + 6) = 0;
    *(v3 + 40) = 0;
    v3[82] = 0;
    v3[136] = 0;
    *(v3 + 8) = 0u;
    *(v3 + 24) = 0u;
    v3[40] = 0;
    *(v3 + 92) = 0;
    *(v3 + 108) = 0;
    *(v3 + 100) = 0;
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
    *(v4 + 7) = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = ___createFeature_block_invoke_0;
    v7[3] = &__block_descriptor_tmp_16;
    v7[4] = a1;
    v7[5] = v4;
    dispatch_source_set_event_handler(v5, v7);
    dispatch_source_set_timer(*(v4 + 7), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v4 + 7));
    *(v4 + 32) = 0;
    v4[66] = 0;
    *(v4 + 9) = 0;
    *(v4 + 60) = 0;
    v4[122] = 0;
    *(v4 + 16) = 0;
    iAP2LinkRegisterEventCallback(*(*(a1 + 32) + 24), 1u, _nowPlayingiAP2LinkEventNotifyHandler);
    platform_nowPlaying_incrementUserCount();
  }

  return v4;
}

uint64_t _destroyFeature_19(void **a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *(v5 + 7);
      if (v6)
      {
        dispatch_source_cancel(v6);
      }

      if (v5[64] == 1)
      {
        TransferEntry = iap2_sessionFileTransfer_findTransferEntry(a2, v5[65]);
        if (TransferEntry)
        {
          v8 = *(TransferEntry + 8);
          if (v8)
          {
            iAP2FileTransferCancel(v8);
          }
        }

        *(v5 + 32) = 0;
      }

      if (v5[120] == 1)
      {
        v9 = iap2_sessionFileTransfer_findTransferEntry(a2, v5[121]);
        if (v9)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            iAP2FileTransferCancel(v10);
          }
        }

        *(v5 + 60) = 0;
      }

      if (*v5 == 1)
      {
        _removeSubscribersForSubFeatures(v5);
      }

      platform_nowPlaying_decrementUserCount();
      v11 = *(v5 + 1);
      if (v11)
      {
        CFRelease(v11);
        *(v5 + 1) = 0;
      }

      v12 = *(v5 + 2);
      if (v12)
      {
        CFRelease(v12);
        *(v5 + 2) = 0;
      }

      v13 = *(v5 + 7);
      if (v13)
      {
        dispatch_release(v13);
        *(v5 + 7) = 0;
      }

      v14 = *(v5 + 9);
      if (v14)
      {
        CFRelease(v14);
        *(v5 + 9) = 0;
      }

      v5[66] = 0;
      v15 = *(v5 + 12);
      if (v15)
      {
        CFRelease(v15);
        *(v5 + 12) = 0;
      }

      v16 = *(v5 + 13);
      if (v16)
      {
        CFRelease(v16);
        *(v5 + 13) = 0;
      }

      v17 = *(v5 + 16);
      if (v17)
      {
        CFRelease(v17);
        *(v5 + 16) = 0;
      }

      v5[122] = 0;
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
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

void ___createFeature_block_invoke_0(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v4 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    v88 = 134218240;
    *v89 = v2;
    OUTLINED_FUNCTION_3();
    *&v89[10] = v3;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v50, v51, v52, v53, v54, v55);
  }

  v5 = OUTLINED_FUNCTION_94();
  if (os_log_type_enabled(v5, v6))
  {
    LOWORD(v88) = 0;
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v31, v32, v33, v34, v35, v36);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v10 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_6();
    *&v89[10] = v9;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, v59, v60, v61, v88);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_15;
  }

  if (!v8 || (v37 = v8[1]) == 0)
  {
    v37 = 0;
  }

  v88 = 138412546;
  *v89 = v37;
  *&v89[8] = 2048;
  *&v89[10] = obfuscatedPointer(v7);
  OUTLINED_FUNCTION_19_11();
  _os_log_debug_impl(v38, v39, v40, v41, v42, 0x16u);
  if (v8)
  {
LABEL_15:
    if (v7)
    {
      *(v7 + 137) = 0;
      CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
      v12 = *(v7 + 48);
      if (v12)
      {
        v13 = CurrentUnixTimeMS - v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = HIDWORD(gLogObjects);
      v15 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v16 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        *&v89[4] = v14;
        OUTLINED_FUNCTION_3();
        *&v89[10] = v15;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v62, v63, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v64, v65, v66, v67, 0);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        v88 = 134217984;
        *v89 = v13;
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v43, v44, v45, v46, v47, 0xCu);
      }

      if (*(v7 + 24) == 1)
      {
        *(v7 + 36) += v13;
      }

      if (*v8 && *v7 == 1 && *(v7 + 40) == 1)
      {
        v17 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v18 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_6();
          *&v89[10] = v17;
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v78, v79, v80, v81, v88);
        }

        if (OUTLINED_FUNCTION_75_0())
        {
          v68 = *(v7 + 36);
          v69 = v8[1];
          OUTLINED_FUNCTION_84();
          *&v89[4] = 2112;
          *&v89[6] = v70;
          OUTLINED_FUNCTION_19_11();
          _os_log_debug_impl(v71, v72, v73, v74, v75, 0x12u);
        }

        v19 = OUTLINED_FUNCTION_6_7();
        malloc_type_malloc(0xFFFFuLL, 0xB521221uLL);
        v20 = OUTLINED_FUNCTION_52_5();
        iAP2MsgInit(v20, v21, v22, v23, v24, v8);
        v25 = OUTLINED_FUNCTION_9_3();
        v27 = iAP2MsgAddGroupParam(v25, v26);
        if (iAP2MsgAddU32Param(v19, v27, 1, *(v7 + 36)))
        {
          if (iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v8, v19))
          {
            *(v7 + 48) = systemInfo_getCurrentUnixTimeMS();
          }
        }

        else
        {
          v28 = gLogObjects;
          v29 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v30 = *(gLogObjects + 248);
          }

          else
          {
            v30 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              v88 = 134218240;
              *v89 = v28;
              OUTLINED_FUNCTION_3();
              *&v89[10] = v29;
              OUTLINED_FUNCTION_6_26();
              _os_log_error_impl(v82, v83, v84, v85, v86, v87);
            }
          }

          if (OUTLINED_FUNCTION_24())
          {
            v88 = 136315138;
            *v89 = "_sendElapsedTimeUpdate";
            OUTLINED_FUNCTION_79_0(&_mh_execute_header, v30, v48, "%s: no parameters added! cleaning up pOutMsg", &v88);
          }

          v49 = OUTLINED_FUNCTION_9_3();
          iAP2MsgCleanup(v49);
        }
      }
    }
  }
}

void _nowPlayingiAP2LinkEventNotifyHandler(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || a2 != 1)
  {
    return;
  }

  if (a3)
  {
    v5 = *(a3 + 64);
  }

  else
  {
    v5 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 32)
  {
    v6 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v25, v26, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v27, v28, v29, v30, v85);
  }

  if (!OUTLINED_FUNCTION_75_0())
  {
    if (!a3)
    {
      return;
    }

LABEL_13:
    if (!*(a3 + 64))
    {
      return;
    }

    v7 = *(a3 + 112);
    if (v7 > 6)
    {
      return;
    }

    if (((1 << v7) & 0x4C) == 0)
    {
      return;
    }

    v8 = *(a1 + 176);
    if (!v8)
    {
      return;
    }

    v9 = *(v8 + 16);
    if (!v9 || !v5)
    {
      return;
    }

    v10 = *(a3 + 104);
    if (v10 != 2)
    {
      goto LABEL_31;
    }

    if (v5[2] != 1)
    {
LABEL_41:
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v13 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_23_7();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, v85);
      }

      v14 = OUTLINED_FUNCTION_75_0();
      v15 = *(a3 + 104);
      if (v14)
      {
        v85 = 0;
        v86 = *(a3 + 109);
        v87 = *(a3 + 112);
        v88 = v5[1];
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v42, v43, v44, v45, v46, 0x20u);
        v15 = *(a3 + 104);
      }

      v5[1] = v15 == 1;
      if (*v5 == 1)
      {
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v16 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_10_0();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v55, v56, v57, v58, v85);
        }

        v17 = OUTLINED_FUNCTION_9_3();
        if (os_log_type_enabled(v17, v18))
        {
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_67_5();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_84_3(v19, v20, v21, v22, v23);
        }

        *v5 = 0;
        iAP2FileTransferCancel(a3);
        iap2_sessionFileTransfer_removeTransferForFeature(v9, 14, a3);
        v24 = *(a3 + 64);
        if (v24)
        {
          free(v24);
          *(a3 + 64) = 0;
        }
      }

      return;
    }

    if (gLogObjects && gNumLogObjects >= 32)
    {
      v11 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_23_7();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78, v85);
      v10 = *(a3 + 104);
      goto LABEL_28;
    }

    v10 = 2;
LABEL_28:
    if (OUTLINED_FUNCTION_75_0())
    {
      v59 = *(a3 + 109);
      v60 = *(a3 + 112);
      v61 = v5[3];
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_19_11();
      _os_log_debug_impl(v62, v63, v64, v65, v66, 0x20u);
      v10 = *(a3 + 104);
    }

    v5[3] = 1;
LABEL_31:
    if (v10 == 3 && v5[1] == 1)
    {
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v12 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_23_7();
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, v82, v83, v84, v85);
      }

      if (OUTLINED_FUNCTION_75_0())
      {
        OUTLINED_FUNCTION_12_15();
        v67 = v5[2];
        OUTLINED_FUNCTION_14_6();
        OUTLINED_FUNCTION_67_5();
        OUTLINED_FUNCTION_19_11();
        _os_log_debug_impl(v68, v69, v70, v71, v72, 0x20u);
      }

      v5[2] = 1;
    }

    goto LABEL_41;
  }

  obfuscatedPointer(a3);
  if (a3)
  {
    obfuscatedPointer(*(a3 + 64));
    v31 = *(a3 + 109);
    v32 = *(a3 + 104);
  }

  if (v5)
  {
    v33 = *v5;
    v34 = v5[1];
    v35 = v5[2];
    v36 = v5[3];
  }

  v85 = 0;
  OUTLINED_FUNCTION_19_11();
  _os_log_debug_impl(v37, v38, v39, v40, v41, 0x3Au);
  if (a3)
  {
    goto LABEL_13;
  }
}

void _elapsedTimeSentCB(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[6];
    if (v4)
    {
      Feature = iap2_feature_getFeature(a1[6], 0xEu);
      if (Feature)
      {
        v6 = Feature;
        if (*(Feature + 136) == 1)
        {
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v7 = *(gLogObjects + 248);
          }

          else
          {
            v7 = &_os_log_default;
            if (OUTLINED_FUNCTION_18())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_36();
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v8, v9, v10, v11, v12, v13);
            }
          }

          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(v6 + 136);
            v15 = *(v6 + 137);
            v21 = *(v4 + 8);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_36();
            _os_log_debug_impl(v16, v17, OS_LOG_TYPE_DEBUG, v18, v19, 0x1Eu);
          }

          _continueElapsedTimeTimer();
        }
      }
    }

    if (a2)
    {
      v20 = a1[3];
      if (v20)
      {
        free(v20);
      }

      free(a1);
    }
  }
}

void _continueElapsedTimeTimer()
{
  OUTLINED_FUNCTION_43_1();
  if (!v0)
  {
    goto LABEL_28;
  }

  v1 = v0;
  if (*(v0 + 40) != 1)
  {
    goto LABEL_28;
  }

  if (gLogObjects && gNumLogObjects >= 32)
  {
    v2 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_15_1();
    OUTLINED_FUNCTION_4_21();
    _os_log_error_impl(v25, v26, v27, v28, v29, v30);
  }

  v3 = OUTLINED_FUNCTION_94();
  if (os_log_type_enabled(v3, v4))
  {
    v19 = *(v1 + 136);
    v20 = *(v1 + 137);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_15_1();
    _os_log_debug_impl(v21, v22, OS_LOG_TYPE_DEBUG, v23, v24, 0xEu);
  }

  if (*(v1 + 136))
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if ((*(v1 + 137) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v7 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v41, v42, v43, v44, v45, v46);
      }

      v15 = OUTLINED_FUNCTION_94();
      if (os_log_type_enabled(v15, v16))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_debug_impl(v37, v38, OS_LOG_TYPE_DEBUG, v39, v40, 8u);
      }

      v17 = *(v1 + 56);
      v18 = dispatch_time(0, 450000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
      *(v1 + 137) = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
  }

  if (v5 && v6 >= 32)
  {
    v8 = *(v5 + 248);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_6_26();
    _os_log_error_impl(v31, v32, v33, v34, v35, v36);
  }

  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v9, v10, v11, v12, v13, v14);
  }

LABEL_28:
  OUTLINED_FUNCTION_44_2();
}

void _removeSubscribersForSubFeatures(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (CFArrayGetCount(v2) >= 1)
      {
        platform_nowPlaying_removeSubscriber(@"MediaItemAttributes");
      }

      if (_isSubscribingForMediaItemAttribute(a1))
      {
        platform_nowPlaying_removeSubscriber(@"MediaItemArtwork");
      }
    }

    v3 = *(a1 + 16);
    if (v3 && CFArrayGetCount(v3) >= 1)
    {

      platform_nowPlaying_removeSubscriber(@"PlaybackAttributes");
    }
  }
}

uint64_t _startNowPlayingUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = iap2_feature_getFeature(a1, 0xEu);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 32)
  {
    v7 = *(gLogObjects + 248);
  }

  else if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_3_5();
    *v348 = v6;
    OUTLINED_FUNCTION_6_26();
    _os_log_error_impl(v183, v184, v185, v186, v187, v188);
  }

  v336 = a1;
  if (OUTLINED_FUNCTION_108())
  {
    *buf = 0;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_46_4();
    _os_log_debug_impl(v117, v118, v119, v120, v121, v122);
  }

  v335 = v5;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 28, 0);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 18, 0);
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v12 = 0;
    v341 = 0;
    v342 = 0;
    v340 = 0;
LABEL_99:
    v123 = v335;
    _removeSubscribersForSubFeatures(v335);
    v124 = *(v335 + 8);
    if (v124)
    {
      CFRelease(v124);
    }

    *(v335 + 8) = Mutable;
    v125 = *(v335 + 16);
    v126 = v336;
    if (v125)
    {
      CFRelease(v125);
    }

    *(v335 + 16) = theArray;
    *(v335 + 40) = v341 & 1;
    v127 = BYTE4(v341) & 1;
    *(v335 + 80) = v127;
    *(v335 + 81) = v340 & 1;
    *(v335 + 82) = v342 & 1;
    *(v335 + 83) = 0;
    *(v335 + 84) = 0;
    *(v335 + 88) = HIDWORD(v342);
    *(v335 + 92) = v12 | v127;
    *v335 = 1;
    v128 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v129 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_3_5();
      *v348 = v128;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v236, v237, v238, v239, v240, v241);
    }

    if (OUTLINED_FUNCTION_108())
    {
      Count = CFArrayGetCount(*(v335 + 8));
      *buf = 134217984;
      *v347 = Count;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v190, v191, v192, v193, v194, v195);
    }

    v130 = gLogObjects;
    v131 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v132 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *v347 = v130;
      *&v347[8] = 1024;
      *v348 = v131;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v242, v243, v244, v245, v246, v247);
    }

    if (OUTLINED_FUNCTION_108())
    {
      v196 = CFArrayGetCount(*(v335 + 16));
      *buf = 134217984;
      *v347 = v196;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_45_6();
      _os_log_debug_impl(v197, v198, v199, v200, v201, v202);
    }

    if (!*v336 || (v133 = *(v335 + 8)) == 0)
    {
LABEL_166:
      v174 = *(v123 + 16);
      if (v174 && CFArrayGetCount(v174) >= 1)
      {
        platform_nowPlaying_addSubscriber(@"PlaybackAttributes");
        platform_nowPlaying_triggerPlaybackAttributesUpdate();
        if (_isSubscribingForPlaybackAttribute(v123, 0xFu) || _isSubscribingForPlaybackAttribute(v123, 0x11u))
        {
          v175 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v176 = *(gLogObjects + 248);
          }

          else if (OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3_5();
            *v348 = v175;
            OUTLINED_FUNCTION_6_26();
            _os_log_error_impl(v297, v298, v299, v300, v301, v302);
          }

          if (OUTLINED_FUNCTION_80_2())
          {
            *buf = 0;
            OUTLINED_FUNCTION_23_0();
            _os_log_impl(v177, v178, OS_LOG_TYPE_INFO, v179, v180, 2u);
          }

          platform_nowPlaying_addSubscriber(@"PlaybackQueueList");
        }

        v181 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v182 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_5();
          *v348 = v181;
          OUTLINED_FUNCTION_6_26();
          _os_log_error_impl(v280, v281, v282, v283, v284, v285);
        }

        if (OUTLINED_FUNCTION_108())
        {
          *buf = 0;
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_46_4();
          _os_log_debug_impl(v272, v273, v274, v275, v276, v277);
        }

        _checkMoveWindowAndRequestPBQList(1, *(v123 + 84), v126, v123);
      }

      v133 = *(v123 + 8);
      if (!v133)
      {
        return 1;
      }

      goto LABEL_187;
    }

    if (!*(v335 + 16))
    {
LABEL_187:
      if (CFArrayGetCount(v133) >= 1)
      {
        platform_nowPlaying_addSubscriber(@"MediaItemAttributes");
        platform_nowPlaying_triggerMediaItemAttributesUpdate();
      }

      if (_isSubscribingForMediaItemAttribute(v123))
      {
        platform_nowPlaying_addSubscriber(@"MediaItemArtwork");
        platform_nowPlaying_triggerMediaItemArtworkUpdate();
      }

      return 1;
    }

    v134 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v135 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      OUTLINED_FUNCTION_3_5();
      *v348 = v134;
      OUTLINED_FUNCTION_6_26();
      _os_log_error_impl(v248, v249, v250, v251, v252, v253);
    }

    if (OUTLINED_FUNCTION_24())
    {
      v136 = v336[1];
      *buf = 138412290;
      *v347 = v136;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_79_0(v137, v138, v139, v140, v141);
    }

    v142 = platform_nowPlaying_copyDefaultMediaItemAttributes();
    v143 = platform_nowPlaying_copyDefaultPlaybackAttributes();
    v144 = OUTLINED_FUNCTION_6_7();
    v145 = malloc_type_malloc(0xFFFFuLL, 0xEF0211D1uLL);
    v146 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v147 = *(gLogObjects + 248);
    }

    else
    {
      v147 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_21_8();
        *v348 = v146;
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v254, v255, v256, v257, v258, v259);
      }
    }

    v126 = v336;
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v148 = v336[1];
      *buf = 136315650;
      *v347 = "_sendInitialNowPlayingUpdate";
      *&v347[8] = 1024;
      *v348 = 1449;
      *&v348[4] = 2112;
      v349 = v148;
      OUTLINED_FUNCTION_88_2();
      _os_log_impl(v149, v150, OS_LOG_TYPE_DEFAULT, v151, v152, 0x1Cu);
    }

    v153 = OUTLINED_FUNCTION_38_9();
    iAP2MsgInit(v153, v154, v145, 0xFFFF, v155, 0);
    if (CFArrayGetCount(*(v335 + 8)) < 1)
    {
      v156 = 0;
      v157 = 0;
      goto LABEL_136;
    }

    v203 = iAP2MsgAddGroupParam(v144, 0);
    v204 = _addMediaItemAttributesToMessage(v144, v203, v335, v142);
    if (!v144 || !*(v335 + 8) || !_isSubscribingForMediaItemAttribute(v335))
    {
      goto LABEL_209;
    }

    if (*(v335 + 64) == 1)
    {
      TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v336, *(v335 + 65));
      if (TransferEntry)
      {
        v206 = TransferEntry;
        v207 = *(TransferEntry + 8);
        if (v207)
        {
          v310 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v311 = *(gLogObjects + 248);
          }

          else
          {
            theArraya = gNumLogObjects;
            v311 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v347 = v310;
              *&v347[8] = 1024;
              *v348 = theArraya;
              v311 = &_os_log_default;
              OUTLINED_FUNCTION_4_21();
              _os_log_error_impl(v318, v319, v320, v321, v322, v323);
            }
          }

          if (os_log_type_enabled(v311, OS_LOG_TYPE_INFO))
          {
            v324 = *v206;
            v325 = *(v206 + 1);
            v326 = *(v325 + 109);
            v327 = *(v206 + 1);
            v328 = *(v325 + 112);
            LODWORD(v325) = *(v325 + 104);
            *buf = 67110400;
            *v347 = 1682;
            *&v347[4] = 1024;
            *&v347[6] = v324;
            *v348 = 1024;
            *&v348[2] = v326;
            LOWORD(v349) = 1024;
            *(&v349 + 2) = v327;
            HIWORD(v349) = 1024;
            v350 = v328;
            v351 = 1024;
            v352 = v325;
            _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_INFO, "#Artwork %d: cancel previous transfer: id=%d(%d) type=%d(%d) state=%d", buf, 0x26u);
          }

          _cancelPendingTransfer_0(v207);
          v123 = v335;
        }
      }

      *(v123 + 64) = 0;
      v126 = v336;
    }

    v208 = v126[4];
    if (!v208)
    {
LABEL_209:
      v156 = 0;
      v224 = 0;
LABEL_228:
      v157 = v204 + v224;
LABEL_136:
      if (CFArrayGetCount(*(v123 + 16)) >= 1)
      {
        v226 = OUTLINED_FUNCTION_66_2();
        v228 = iAP2MsgAddGroupParam(v226, v227);
        v157 += _addplaybackAttributesToMessage(v144, v228, v123, v143, 0, 1);
      }

      if (v157)
      {
        v158 = iap2_sessionControl_sendOutgoingMessageAndCallbackOnACK(v126, v144);
        if (!v156 || (v158 & 1) != 0)
        {
          goto LABEL_162;
        }

        iAP2FileTransferCancel(v156);
        iap2_sessionFileTransfer_removeTransferForFeature(v126, 14, v156);
        v159 = v156[8];
        if (v159)
        {
          free(v159);
          v156[8] = 0;
        }
      }

      else
      {
        v160 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v161 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_13())
        {
          OUTLINED_FUNCTION_3_5();
          *v348 = v160;
          OUTLINED_FUNCTION_6_26();
          _os_log_error_impl(v291, v292, v293, v294, v295, v296);
        }

        if (OUTLINED_FUNCTION_24())
        {
          *buf = 136315138;
          *v347 = "_sendInitialNowPlayingUpdate";
          OUTLINED_FUNCTION_23_0();
          OUTLINED_FUNCTION_79_0(v168, v169, v170, v171, v172);
        }
      }

      v173 = OUTLINED_FUNCTION_66_2();
      iAP2MsgCleanup(v173);
LABEL_162:
      if (v142)
      {
        CFRelease(v142);
      }

      if (v143)
      {
        CFRelease(v143);
      }

      goto LABEL_166;
    }

    v209 = *(v208 + 24);
    if (v209)
    {
      SessionForService = iAP2LinkGetSessionForService(v209, 1);
      if (iAP2FileTransferAllocateBufferID(*(v336[4] + 24), SessionForService, (v123 + 65)))
      {
        *(v123 + 64) = 1;
        v156 = OUTLINED_FUNCTION_54_0();
        if (v156)
        {
          v211 = *(v336[4] + 24);
          v212 = *(v123 + 65);
          OUTLINED_FUNCTION_40_6();
          OUTLINED_FUNCTION_72_3();
          iAP2FileTransferCreate(v213, v214, v215, v216, v217, v218, v156, v219);
          v220 = OUTLINED_FUNCTION_94();
          iAP2FileTransferTypeData(v220, v221, 0);
          if (iap2_sessionFileTransfer_addTransferForFeature(v336, 14, v156, 0))
          {
            iAP2MsgSetCleanupCB(v144, _artworkFileTransferIDSent);
            v222 = OUTLINED_FUNCTION_51_2();
            *v222 = v336;
            v223 = *(v123 + 65);
            v222[8] = v223;
            *(v222 + 3) = 2;
            v144[6] = v222;
            v224 = iAP2MsgAddU8Param(v144, v203, 26, v223) != 0;
            v225 = *(v123 + 72);
            if (v225)
            {
              CFRelease(v225);
              *(v123 + 72) = 0;
            }
          }

          else
          {
            v303 = gLogObjects;
            v304 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v305 = *(gLogObjects + 248);
            }

            else
            {
              v305 = &_os_log_default;
              if (OUTLINED_FUNCTION_19_0())
              {
                *buf = 134218240;
                *v347 = v303;
                *&v347[8] = 1024;
                *v348 = v304;
                OUTLINED_FUNCTION_4_21();
                _os_log_error_impl(v329, v330, v331, v332, v333, v334);
              }
            }

            if (OUTLINED_FUNCTION_19_0())
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v305, OS_LOG_TYPE_ERROR, "#Artwork Failed to add file transfer!", buf, 2u);
            }

            iAP2FileTransferRelease(v156);
            v224 = 0;
            v123 = v335;
          }

          goto LABEL_227;
        }

LABEL_218:
        v224 = 0;
LABEL_227:
        v126 = v336;
        goto LABEL_228;
      }

      v278 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 32)
      {
        v279 = *(gLogObjects + 248);
      }

      else if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_21_8();
        *v348 = v278;
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_4_21();
        _os_log_error_impl(v312, v313, v314, v315, v316, v317);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_88_2();
        _os_log_error_impl(v306, v307, OS_LOG_TYPE_ERROR, v308, v309, 2u);
      }
    }

    v156 = 0;
    goto LABEL_218;
  }

  v11 = FirstParam;
  v341 = 0;
  v342 = 0;
  v340 = 0;
  v12 = 0;
  *&v10 = 67109120;
  v339 = v10;
  *&v10 = 134218240;
  v338 = v10;
  *&v10 = 67109376;
  v337 = v10;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(v11);
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v15 = *(gLogObjects + 248);
    }

    else
    {
      v15 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_3_5();
        *v348 = v14;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v102, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v105, 0x12u);
        v15 = &_os_log_default;
      }
    }

    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      OUTLINED_FUNCTION_49_5(v16, v17, v18, v19, v20, v21, v22, v23, v335, v336, v337, *(&v337 + 1), v338, *(&v338 + 1), v339);
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "msgParamID: %d", v101, 8u);
    }

    if (ParamID == 2)
    {
      v71 = OUTLINED_FUNCTION_44_7();
      v73 = iAP2MsgGetFirstParam(v71, v72);
      if (v73)
      {
        NextParam = v73;
        do
        {
          v75 = iAP2MsgGetParamID(NextParam);
          v76 = gLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v77 = *(gLogObjects + 248);
          }

          else if (OUTLINED_FUNCTION_13())
          {
            *buf = v338;
            *v347 = v76;
            OUTLINED_FUNCTION_18_14();
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v94, v95, v96, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v97, 0x12u);
          }

          v78 = OUTLINED_FUNCTION_94();
          v80 = os_log_type_enabled(v78, v79);
          if (v80)
          {
            OUTLINED_FUNCTION_49_5(v80, v81, v82, v83, v84, v85, v86, v87, v335, v336, v337, *(&v337 + 1), v338, *(&v338 + 1), v339);
            OUTLINED_FUNCTION_33_6();
            _os_log_debug_impl(v90, v91, v92, "msgSubParamID: %d", v93, 8u);
          }

          if (!iAP2MsgIsDataVoid(NextParam))
          {
            v110 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v111 = *(gLogObjects + 248);
              v112 = theArray;
            }

            else
            {
              v112 = theArray;
              if (OUTLINED_FUNCTION_13())
              {
                OUTLINED_FUNCTION_3_5();
                *v348 = v110;
                OUTLINED_FUNCTION_6_26();
                _os_log_error_impl(v260, v261, v262, v263, v264, v265);
              }
            }

            if (OUTLINED_FUNCTION_13())
            {
              iAP2MsgGetMsgID(a2);
              OUTLINED_FUNCTION_48_5();
              *&v347[6] = 2;
              *v348 = v115;
              *&v348[2] = v116;
              goto LABEL_208;
            }

            goto LABEL_93;
          }

          v12 |= 1 << v75;
          v88 = OUTLINED_FUNCTION_44_7();
          NextParam = iAP2MsgGetNextParam(v88, v89, NextParam);
        }

        while (NextParam);
      }

      goto LABEL_78;
    }

    if (ParamID != 1)
    {
      if (ParamID)
      {
        v98 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v99 = *(gLogObjects + 248);
        }

        else
        {
          v99 = &_os_log_default;
          if (OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3_5();
            *v348 = v98;
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v106, v107, v108, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v109, 0x12u);
            v99 = &_os_log_default;
          }
        }

        if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
        {
          iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_48_5();
          *&v347[6] = v100;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", buf, 0xEu);
        }
      }

      else
      {
        v24 = OUTLINED_FUNCTION_44_7();
        v26 = iAP2MsgGetFirstParam(v24, v25);
        if (v26)
        {
          v27 = v26;
          while (1)
          {
            v28 = iAP2MsgGetParamID(v27);
            v29 = gLogObjects;
            if (gLogObjects && gNumLogObjects >= 32)
            {
              v30 = *(gLogObjects + 248);
            }

            else if (OUTLINED_FUNCTION_13())
            {
              *buf = v338;
              *v347 = v29;
              OUTLINED_FUNCTION_18_14();
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v47, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, 0x12u);
            }

            v31 = OUTLINED_FUNCTION_94();
            v33 = os_log_type_enabled(v31, v32);
            if (v33)
            {
              OUTLINED_FUNCTION_49_5(v33, v34, v35, v36, v37, v38, v39, v40, v335, v336, v337, *(&v337 + 1), v338, *(&v338 + 1), v339);
              OUTLINED_FUNCTION_33_6();
              _os_log_debug_impl(v43, v44, v45, "msgSubParamID: %d", v46, 8u);
            }

            if (!iAP2MsgIsDataVoid(v27))
            {
              break;
            }

            CFArrayAppendValue(Mutable, v28);
            v41 = OUTLINED_FUNCTION_44_7();
            v27 = iAP2MsgGetNextParam(v41, v42, v27);
            if (!v27)
            {
              goto LABEL_78;
            }
          }

          v113 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 32)
          {
            v114 = *(gLogObjects + 248);
            v112 = theArray;
          }

          else
          {
            v112 = theArray;
            if (OUTLINED_FUNCTION_13())
            {
              OUTLINED_FUNCTION_3_5();
              *v348 = v113;
              OUTLINED_FUNCTION_6_26();
              _os_log_error_impl(v266, v267, v268, v269, v270, v271);
            }
          }

          if (OUTLINED_FUNCTION_13())
          {
            iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_48_5();
            *&v347[6] = 0;
            *v348 = v229;
            *&v348[2] = v230;
            goto LABEL_208;
          }

          goto LABEL_93;
        }
      }

      goto LABEL_78;
    }

    v51 = OUTLINED_FUNCTION_44_7();
    v53 = iAP2MsgGetFirstParam(v51, v52);
    if (v53)
    {
      break;
    }

LABEL_78:
    v11 = iAP2MsgGetNextParam(a2, 0, v11);
    if (!v11)
    {
      goto LABEL_99;
    }
  }

  v54 = v53;
  while (1)
  {
    v55 = iAP2MsgGetParamID(v54);
    v56 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v57 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_13())
    {
      *buf = v338;
      *v347 = v56;
      OUTLINED_FUNCTION_18_14();
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v67, v68, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v70, 0x12u);
    }

    v58 = OUTLINED_FUNCTION_94();
    if (os_log_type_enabled(v58, v59))
    {
      *buf = v339;
      *v347 = v55;
      OUTLINED_FUNCTION_33_6();
      _os_log_debug_impl(v63, v64, v65, "msgSubParamID: %d", v66, 8u);
    }

    if (v55 == 17)
    {
      v345 = 0;
      DataAsU32 = iAP2MsgGetDataAsU32(v54, &v345);
      if (v345)
      {
        v166 = logObjectForModule_30();
        if (OUTLINED_FUNCTION_16(v166))
        {
          iAP2MsgGetMsgID(a2);
          *buf = 67109632;
          *v347 = 17;
          OUTLINED_FUNCTION_13_14();
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v286, v287, v288, v289, v290, 0x14u);
        }

        v112 = theArray;
        goto LABEL_93;
      }

      HIDWORD(v342) = DataAsU32;
      v340 = 1;
      goto LABEL_57;
    }

    if (v55 == 14)
    {
      break;
    }

    if (v55 == 15)
    {
      if (!iAP2MsgIsDataVoid(v54))
      {
        v163 = logObjectForModule_30();
        v112 = theArray;
        if (!OUTLINED_FUNCTION_16(v163))
        {
          goto LABEL_93;
        }

        iAP2MsgGetMsgID(a2);
        *buf = 67109632;
        *v347 = 15;
        OUTLINED_FUNCTION_13_14();
        goto LABEL_208;
      }

      BYTE4(v341) = 1;
    }

    else if (v55 == 1)
    {
      if (!iAP2MsgIsDataVoid(v54))
      {
        v164 = logObjectForModule_30();
        v112 = theArray;
        if (!OUTLINED_FUNCTION_16(v164))
        {
          goto LABEL_93;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109632;
        *v347 = 1;
        *&v347[4] = 1024;
        *&v347[6] = 1;
        *v348 = 1024;
        *&v348[2] = MsgID;
        goto LABEL_208;
      }

      LOBYTE(v341) = 1;
    }

    else if (!iAP2MsgIsDataVoid(v54))
    {
      v162 = logObjectForModule_30();
      v112 = theArray;
      if (!OUTLINED_FUNCTION_16(v162))
      {
        goto LABEL_93;
      }

      iAP2MsgGetMsgID(a2);
      *buf = 67109632;
      *v347 = v55;
      OUTLINED_FUNCTION_13_14();
      goto LABEL_208;
    }

LABEL_57:
    CFArrayAppendValue(theArray, v55);
    v61 = OUTLINED_FUNCTION_44_7();
    v54 = iAP2MsgGetNextParam(v61, v62, v54);
    if (!v54)
    {
      goto LABEL_78;
    }
  }

  if (iAP2MsgIsDataVoid(v54))
  {
    LOBYTE(v342) = 1;
    goto LABEL_57;
  }

  v167 = logObjectForModule_30();
  v112 = theArray;
  if (!OUTLINED_FUNCTION_16(v167))
  {
    goto LABEL_93;
  }

  iAP2MsgGetMsgID(a2);
  *buf = 67109632;
  *v347 = 14;
  OUTLINED_FUNCTION_13_14();
LABEL_208:
  OUTLINED_FUNCTION_13_0();
  _os_log_error_impl(v231, v232, v233, v234, v235, 0x14u);
LABEL_93:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  return 0;
}

uint64_t _stopNowPlayingUpdatesHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = iap2_feature_getFeature(a1, 0xEu);
      if (result)
      {
        v4 = result;
        if (gLogObjects && gNumLogObjects >= 32)
        {
          v5 = *(gLogObjects + 248);
        }

        else if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_21();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_4_21();
          _os_log_error_impl(v6, v7, v8, v9, v10, v11);
        }

        v12 = OUTLINED_FUNCTION_94();
        if (os_log_type_enabled(v12, v13))
        {
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_46_4();
          _os_log_debug_impl(v14, v15, v16, v17, v18, v19);
        }

        _pauseElapsedTimeTimer(v4);
        _removeSubscribersForSubFeatures(v4);
        *v4 = 0;
        *(v4 + 40) = 0;
        *(v4 + 136) = 0;
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        v20 = *(v4 + 8);
        if (v20)
        {
          CFRelease(v20);
          *(v4 + 8) = 0;
        }

        v21 = *(v4 + 16);
        if (v21)
        {
          CFRelease(v21);
          *(v4 + 16) = 0;
        }

        return 1;
      }
    }
  }

  return result;
}

void _pauseElapsedTimeTimer(uint64_t a1)
{
  if (a1)
  {
    dispatch_source_set_timer(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(a1 + 136) = 0;
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v2 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_4_21();
      _os_log_error_impl(v9, v10, v11, v12, v13, v14);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v3 = *(a1 + 136);
      v4 = *(a1 + 137);
      OUTLINED_FUNCTION_14_6();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 0xEu);
    }
  }
}

void _handleFileTransferIDSent(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (gLogObjects && gNumLogObjects >= 32)
    {
      v7 = *(gLogObjects + 248);
    }

    else if (OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_32_0(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v28, v29, v30, v31, v80, v82, 0);
    }

    v8 = OUTLINED_FUNCTION_68_5();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 12);
      v12 = a3[1];
      v13 = *a3;
      v14 = a3[2];
      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_4();
      _os_log_impl(v15, v16, OS_LOG_TYPE_INFO, v17, v18, 0x2Au);
    }

    if (!a3[2] || *(a2 + 12) == a3[2])
    {
      v19 = *a2;
      if (*a2)
      {
        if (iap2_feature_getFeature(*a2, 0xEu))
        {
          if (*(a2 + 8) < 0 && *a3 == 1 && *(a2 + 8) == a3[1])
          {
            TransferEntry = iap2_sessionFileTransfer_findTransferEntry(v19, *(a2 + 8));
            if (TransferEntry)
            {
              v21 = *(TransferEntry + 8);
              if (v21)
              {
                if (*(v21 + 104))
                {
                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v22 = *(gLogObjects + 248);
                  }

                  else if (OUTLINED_FUNCTION_21())
                  {
                    OUTLINED_FUNCTION_4_6();
                    OUTLINED_FUNCTION_59_1();
                    OUTLINED_FUNCTION_4_21();
                    _os_log_error_impl(v58, v59, v60, v61, v62, v63);
                  }

                  v32 = OUTLINED_FUNCTION_94();
                  if (os_log_type_enabled(v32, v33))
                  {
                    v34 = *(v21 + 109);
                    v35 = *(v21 + 104);
                    OUTLINED_FUNCTION_58_0();
                    OUTLINED_FUNCTION_33_6();
                    _os_log_debug_impl(v36, v37, v38, v39, v40, 0x22u);
                  }
                }

                else
                {
                  v23 = *(a3 + 1);
                  if (v23)
                  {
                    BytePtr = CFDataGetBytePtr(v23);
                    Length = CFDataGetLength(*(a3 + 1));
                    if (a3[2] == 6)
                    {
                      BytePtr += 6;
                      Length -= 6;
                    }

                    v81 = Length;
                    v83 = BytePtr;
                  }

                  else
                  {
                    v81 = 0;
                    v83 = 0;
                  }

                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v41 = *(gLogObjects + 248);
                  }

                  else
                  {
                    v41 = &_os_log_default;
                    if (OUTLINED_FUNCTION_19_0())
                    {
                      OUTLINED_FUNCTION_4_6();
                      OUTLINED_FUNCTION_48_2();
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v64, v65, v66, v67, v68, v69);
                    }
                  }

                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    v42 = *(v21 + 109);
                    v43 = *(v21 + 104);
                    obfuscatedPointer(v83);
                    OUTLINED_FUNCTION_58_0();
                    OUTLINED_FUNCTION_48_2();
                    _os_log_impl(v44, v45, OS_LOG_TYPE_INFO, v46, v47, 0x32u);
                  }

                  v48 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
                  *v48 = 0;
                  if (gLogObjects && gNumLogObjects >= 32)
                  {
                    v49 = *(gLogObjects + 248);
                  }

                  else
                  {
                    v49 = &_os_log_default;
                    if (OUTLINED_FUNCTION_11())
                    {
                      OUTLINED_FUNCTION_4_6();
                      OUTLINED_FUNCTION_87_4();
                      OUTLINED_FUNCTION_4_21();
                      _os_log_error_impl(v70, v71, v72, v73, v74, v75);
                    }
                  }

                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v51 = *(v21 + 109);
                    v52 = *(v21 + 112);
                    v53 = *(v21 + 104);
                    OUTLINED_FUNCTION_47_5();
                    OUTLINED_FUNCTION_87_4();
                    _os_log_debug_impl(v54, v55, OS_LOG_TYPE_DEBUG, v56, v57, 0x14u);
                  }

                  if ((iAP2FileTransferStart(v21, v83, v81, v81, a4, v48, 0, 0) & 1) == 0)
                  {
                    v50 = logObjectForModule_30();
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_58_0();
                      OUTLINED_FUNCTION_59_1();
                      _os_log_error_impl(v76, v77, OS_LOG_TYPE_ERROR, v78, v79, 0xCu);
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