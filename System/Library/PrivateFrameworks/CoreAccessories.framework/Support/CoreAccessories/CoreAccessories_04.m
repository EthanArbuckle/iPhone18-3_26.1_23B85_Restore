void sub_100069CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __main_block_invoke(id a1)
{
  v1 = gLogObjects;
  v2 = gNumLogObjects;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      v7 = v1;
      v8 = 1024;
      v9 = v2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v6, 0x12u);
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SIGTERM received, shutting down.", &v6, 2u);
  }

  __resetiAP2ShimServerState();
  exit(0);
}

void __resetiAP2ShimServerState()
{
  strcpy(name, "com.apple.iap2d.notify.availability");
  out_token = -1;
  if (notify_register_check(name, &out_token))
  {
    if (gLogObjects)
    {
      v0 = gNumLogObjects < 1;
    }

    else
    {
      v0 = 1;
    }

    if (v0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v5 = &_os_log_default;
      v1 = &_os_log_default;
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "__resetiAP2ShimServerState: failed register check!!!", buf, 2u);
    }
  }

  else
  {
    v13 = 0;
    notify_get_state(out_token, &v13);
    if (gLogObjects)
    {
      v2 = gNumLogObjects <= 0;
    }

    else
    {
      v2 = 1;
    }

    v3 = !v2;
    if (v13 == 1)
    {
      if (v3)
      {
        v4 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v4 = &_os_log_default;
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "__resetiAP2ShimServerState: set kIAP2AvailableNotification state: %d", buf, 8u);
      }

      notify_set_state(out_token, 0);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v8 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "__resetiAP2ShimServerState: post kIAP2AvailableNotification notification: ", buf, 2u);
      }

      notify_post(name);
    }

    else
    {
      if (v3)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v6 = &_os_log_default;
        v10 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "__resetiAP2ShimServerState: kIAP2AvailableNotification state %llu, skip post", buf, 0xCu);
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "__resetiAP2ShimServerState: cancel notify token", buf, 2u);
    }

    notify_cancel(out_token);
  }
}

void __main_block_invoke_56(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __main_block_invoke_2(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received %s", &v7, 0xCu);
    }
  }
}

void __main_block_invoke_62(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received %s", &v7, 0xCu);
    }
  }
}

void __main_block_invoke_66(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received %s", &v7, 0xCu);
    }
  }
}

void __main_block_invoke_70(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received %s", &v12, 0xCu);
    }

    v7 = [NSString stringWithCString:v3 encoding:4];
    if ([v7 isEqualToString:@"com.apple.accessoryd.matching.A2868.billboard"])
    {
      v8 = _getUSBBillboardDevicePluginInstance();

      if (!v8)
      {
LABEL_19:

        return;
      }

      v9 = 5904;
    }

    else
    {
      if (![v7 isEqualToString:@"com.apple.accessoryd.matching.A2869.billboard"])
      {
        goto LABEL_19;
      }

      v10 = _getUSBBillboardDevicePluginInstance();

      if (!v10)
      {
        goto LABEL_19;
      }

      v9 = 5905;
    }

    v11 = _getUSBBillboardDevicePluginInstance();
    [v11 startDetectUSBBillboardDeviceWithVID:1452 PID:v9];

    goto LABEL_19;
  }
}

void OUTLINED_FUNCTION_2_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_3_22(id a1)
{

  return a1;
}

void platform_voiceOver_accessoryAttached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver accessoryAttached: %@", &v6, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 incrementUserCount];

  v5 = +[ACCVoiceOverServer sharedServer];
  [v5 accessoryVoiceOverAttached:a1];
}

void platform_voiceOver_accessoryDetached(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver accessoryDetached: %@", &v6, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 accessoryVoiceOverDetached:a1];

  v5 = +[ACCVoiceOverServer sharedServer];
  [v5 decrementUserCount];
}

void platform_VoiceOver_setEnabled(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v4 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "voiceOver setState: %@ enabled: %d", &v7, 0x12u);
  }

  v6 = +[ACCVoiceOverServer sharedServer];
  [v6 accessoryVoiceOver:a1 setEnabled:a2];
}

void platform_voiceOver_performAction(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v6 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = a1;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "voiceOver performAction: %@, action=%d", buf, 0x12u);
  }

  v9 = 0;
  if (a2 <= 15)
  {
    if (a2 == 1 || a2 == 10)
    {
      goto LABEL_21;
    }

    if (a2 != 11)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (a2 <= 17)
    {
      if (a2 == 16)
      {
        if (a3 && *a3 == 16)
        {
          LODWORD(v8) = a3[2];
          v10 = [NSNumber numberWithFloat:v8];
          LODWORD(v14) = a3[3];
          v15 = [NSNumber numberWithFloat:v14];
          v16 = [NSNumber numberWithInt:a3[4]];
          v9 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"ACCVoiceOverActionParameterPointXKey", v15, @"ACCVoiceOverActionParameterPointYKey", v16, @"ACCVoiceOverActionParameterTouchTypeKey", 0];

          goto LABEL_31;
        }
      }

      else if (a3 && *a3 == 17)
      {
        LODWORD(v8) = a3[2];
        v10 = [NSNumber numberWithFloat:v8];
        v11 = &ACCVoiceOverActionParameterScaleKey;
LABEL_27:
        v9 = [NSDictionary dictionaryWithObjectsAndKeys:v10, *v11, 0];
        goto LABEL_31;
      }

      v9 = 0;
      goto LABEL_33;
    }

    if (a2 != 23)
    {
      if (a2 != 18)
      {
LABEL_33:
        v17 = +[ACCVoiceOverServer sharedServer];
        [v17 accessoryVoiceOver:a1 performAction:a2 parameters:v9];

        return;
      }

LABEL_21:
      if (a3 && *a3 == a2)
      {
        LODWORD(v8) = a3[2];
        v10 = [NSNumber numberWithFloat:v8];
        LODWORD(v12) = a3[3];
        v13 = [NSNumber numberWithFloat:v12];
        v9 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"ACCVoiceOverActionParameterPointXKey", v13, @"ACCVoiceOverActionParameterPointYKey", 0];

LABEL_31:
        goto LABEL_33;
      }

      return;
    }
  }

  if (a3 && *a3 == a2)
  {
    v10 = [NSString stringWithUTF8String:*(a3 + 1)];
    v11 = &ACCVoiceOverActionParameterTextKey;
    goto LABEL_27;
  }
}

void platform_voiceOver_setConfiguration(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v6 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = a1;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "voiceOver setConfiguration: %@ type: %d", &v13, 0x12u);
  }

  if (a2 <= 1)
  {
    if (a3)
    {
      LODWORD(v8) = *a3;
      v9 = [NSNumber numberWithFloat:v8];
      if (!v9)
      {
        return;
      }

      v10 = v9;
      v11 = +[ACCVoiceOverServer sharedServer];
      [v11 accessoryVoiceOver:a1 requestConfiguration:a2 param:v10];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 36)
      {
        v10 = *(gLogObjects + 280);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v12 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = a1;
        v15 = 1024;
        v16 = a2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "voiceOver setConfiguration: %@ type: %d, NO REQUIRED VALUE!!!", &v13, 0x12u);
      }
    }
  }
}

void platform_voiceOver_startInformationUpdate(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver startInformationUpdate: %@", &v5, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 accessoryVoiceOverStartInformationUpdate:a1];
}

void platform_voiceOver_stopInformationUpdate(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver stopInformationUpdate: %@", &v5, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 accessoryVoiceOverStopInformationUpdate:a1];
}

void platform_voiceOver_startCursorInformationUpdate(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver startCursorInformationUpdate: %@", &v5, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 accessoryVoiceOverStartCursorInformationUpdate:a1];
}

void platform_voiceOver_stopCursorInformationUpdate(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v2 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "voiceOver stopCursorInformationUpdate: %@", &v5, 0xCu);
  }

  v4 = +[ACCVoiceOverServer sharedServer];
  [v4 accessoryVoiceOverStopCursorInformationUpdate:a1];
}

void platform_voiceOver_informationUpdateHandler(int a1, int a2, float a3, float a4)
{
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v8 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109888;
    v11[1] = a1;
    v12 = 2048;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "voiceOver informationUpdateHandler: validMask=%xh volume=%f rate=%f enabled=%d", v11, 0x22u);
  }

  if (a1)
  {
    v10 = malloc_type_malloc(0x30uLL, 0x1062040AB4C578FuLL);
    *v10 = 0.0;
    *(v10 + 2) = a1;
    v10[3] = a3;
    v10[4] = a4;
    *(v10 + 20) = a2;
    if ((accFeatureHandlers_invokeHandler(0, 21, v10) & 1) == 0)
    {
      platform_voiceOver_deleteParams(v10);
    }
  }
}

void platform_voiceOver_deleteParams(void *a1)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      v2 = a1[2];
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[4];
      if (v4)
      {
        CFRelease(v4);
      }
    }

    free(a1);
  }
}

void platform_voiceOver_cursorInformationUpdateHandler(int a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (gLogObjects && gNumLogObjects >= 36)
  {
    v12 = *(gLogObjects + 280);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v15[0] = 67110146;
    v15[1] = a1;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2048;
    v23 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "voiceOver cursorInformationUpdateHandler: validMask=%xh label=%@ value=%@ hint=%@ traitsMask=%llx", v15, 0x30u);
  }

  if (a1)
  {
    v14 = malloc_type_malloc(0x30uLL, 0x1062040AB4C578FuLL);
    *v14 = 1;
    v14[2] = a1;
    *(v14 + 2) = v9;
    *(v14 + 3) = v10;
    *(v14 + 4) = v11;
    *(v14 + 5) = a5;
    if ((accFeatureHandlers_invokeHandler(0, 22, v14) & 1) == 0)
    {
      platform_voiceOver_deleteParams(v14);
    }
  }
}

void __platform_externalAccessory_addEAAccessoryForPrimaryEndpoint_block_invoke(id a1)
{
  if (!gConnectedExternalAccessories)
  {
    v1 = objc_alloc_init(NSMutableArray);
    v2 = gConnectedExternalAccessories;
    gConnectedExternalAccessories = v1;
  }

  if (!_MergedGlobals_1)
  {
    _MergedGlobals_1 = objc_alloc_init(NSLock);

    _objc_release_x1();
  }
}

void platform_externalAccessory_addEAAccessoryForEAEndpoints(void *a1, uint64_t a2)
{
  if (platform_externalAccessory_addEAAccessoryForEAEndpoints_onceToken != -1)
  {
    platform_externalAccessory_addEAAccessoryForEAEndpoints_cold_1();
  }

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    platform_externalAccessory_addEAAccessoryForEAEndpoints_cold_3(a1, a2, v6);
  }

  v7 = a1;
  if ([v7 count])
  {
    v8 = [[ACCExternalAccessory alloc] initWithEndpointUUIDs:v7 primaryEndpointUUID:a2];
    if (v8)
    {
      [_MergedGlobals_1 lock];
      [gConnectedExternalAccessories addObject:v8];
      [_MergedGlobals_1 unlock];
      _postFindAppAlert(v8);
      platform_digitalAudio_eaAccessoryAttached();
      v9 = +[ACCExternalAccessoryServer sharedServer];
      [v9 externalAccessoryArrived:v8];
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v9 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v9 = &_os_log_default;
        v10 = &_os_log_default;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not create ACCExternalAccessory object for EA endpoints", v11, 2u);
      }
    }
  }
}

void __platform_externalAccessory_addEAAccessoryForEAEndpoints_block_invoke(id a1)
{
  if (!gConnectedExternalAccessories)
  {
    v1 = objc_alloc_init(NSMutableArray);
    v2 = gConnectedExternalAccessories;
    gConnectedExternalAccessories = v1;
  }

  if (!_MergedGlobals_1)
  {
    _MergedGlobals_1 = objc_alloc_init(NSLock);

    _objc_release_x1();
  }
}

void _postFindAppAlert(void *a1)
{
  v1 = a1;
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___postFindAppAlert_block_invoke;
  block[3] = &unk_100225968;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

_DWORD *_findiAP2EndpointForConnection(uint64_t a1)
{
  v1 = acc_connection_copyEndpointUUIDs(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFSetGetCount(v1);
  if (Count <= 0)
  {
    CFRelease(v2);
LABEL_11:
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v12 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _findiAP2EndpointForConnection_cold_2(v12);
    }

    return 0;
  }

  v4 = Count;
  __chkstk_darwin(Count);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v6, 170, v5);
  CFSetGetValues(v2, v6);
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    EndpointWithUUID = acc_manager_getEndpointWithUUID(*&v6[8 * v7]);
    if (EndpointWithUUID && EndpointWithUUID[7] == 4)
    {
      v8 = EndpointWithUUID;
    }

    v7 = v9;
  }

  while (v4 > v9++);
  CFRelease(v2);
  if (!v8)
  {
    goto LABEL_11;
  }

  return v8;
}

void platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(void *a1)
{
  v1 = a1;
  [_MergedGlobals_1 lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = gConnectedExternalAccessories;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 primaryEndpointUUID];
        v8 = [v7 isEqualToString:v1];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (gLogObjects && gNumLogObjects >= 10)
  {
    v9 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint_cold_2(v3, v9);
  }

  [gConnectedExternalAccessories removeObject:v3];
  [_MergedGlobals_1 unlock];
  if (v3)
  {
    platform_digitalAudio_eaAccessoryDetached();
    v11 = +[ACCExternalAccessoryServer sharedServer];
    [v11 externalAccessoryLeft:v3];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find EA accessory to remove with primary endpointUUID %@", buf, 0xCu);
    }
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(v1);
  if (EndpointWithUUID && *EndpointWithUUID && EndpointWithUUID[1])
  {
    [gWiredConnectionSessionCountDict removeObjectForKey:?];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v14 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = gWiredConnectionSessionCountDict;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "gWiredConnectionSessionCountDict: %@", buf, 0xCu);
    }
  }
}

void platform_externalAccessory_removeEAASessionCountForConnection(uint64_t a1)
{
  if (a1)
  {
    [gWiredConnectionSessionCountDict removeObjectForKey:a1];
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 10;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v3 = &_os_log_default;
      v2 = &_os_log_default;
    }

    else
    {
      v3 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = gWiredConnectionSessionCountDict;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "gWiredConnectionSessionCountDict: %@", &v4, 0xCu);
    }
  }
}

void platform_externalAccessory_removeEAAccessoryForPrimaryEndpoints(void *a1)
{
  v1 = a1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void platform_externalAccessory_updateEAAccessoryInfoForEndpointWithUUID(void *a1)
{
  v1 = a1;
  [_MergedGlobals_1 lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = gConnectedExternalAccessories;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 primaryEndpointUUID];
        v8 = [v7 isEqualToString:v1];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [_MergedGlobals_1 unlock];
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 9;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v3)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = [v3 primaryEndpointUUID];
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updating accessory primaryEndpointUUID %@", buf, 0xCu);
    }

    [v3 updateAccessoryInfo];
    v12 = +[ACCExternalAccessoryServer sharedServer];
    [v12 updateExternalAccessoryInfo:v3];
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Couldn't find EA accessory to update with primary endpointUUID %@", buf, 0xCu);
    }
  }
}

id platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(void *a1)
{
  v1 = a1;
  [_MergedGlobals_1 lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = gConnectedExternalAccessories;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 primaryEndpointUUID];
        v8 = [v7 isEqualToString:v1];

        if (v8)
        {
          v9 = [v6 EAConnectionID];
          v3 = [v9 unsignedIntValue];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [_MergedGlobals_1 unlock];
  return v3;
}

id platform_externalAccessory_copyVehicleInformationForEndpointUUID(uint64_t a1)
{
  [_MergedGlobals_1 lock];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = gConnectedExternalAccessories;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 primaryEndpointUUID];
        v9 = [v8 isEqualToString:a1];

        if (v9)
        {
          v11 = [v7 EAAccessoryDictionary];
          v12 = [v11 objectForKey:kACCVehicleInfoLegacyInitialDataKey];
          v10 = [v12 copy];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  [_MergedGlobals_1 unlock];
  return v10;
}

id platform_externalAccessory_copyEAProtocolsForEndpointUUID(uint64_t a1)
{
  [_MergedGlobals_1 lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = gConnectedExternalAccessories;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 primaryEndpointUUID];
        v9 = [v8 isEqualToString:a1];

        if (v9)
        {
          v10 = [v7 copyExternalAccessoryProtocols];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  [_MergedGlobals_1 unlock];
  return v10;
}

id platform_externalAccessory_retrieveMutableEADataFromAppForSessionUUID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  v5 = [v4 returnAppToAccessoryDataForSession:a1 maxBufferSize:a2];

  return v5;
}

void platform_externalAccessory_stopIncomingDataNotificationsForEASessionUUID(uint64_t a1)
{
  v2 = +[ACCExternalAccessorySessionManager sharedManager];
  [v2 stopIncomingDataNotificationsForEASessionUUID:a1];
}

void platform_externalAccessory_startIncomingDataNotificationsForEASessionUUID(uint64_t a1)
{
  v2 = +[ACCExternalAccessorySessionManager sharedManager];
  [v2 startIncomingDataNotificationsForEASessionUUID:a1];
}

id platform_externalAccessory_handleIncomingEADataFromAccessoryForSessionID(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  v5 = [v4 handleIncomingExternalAccessoryData:a2 forSessionID:a1];

  return v5;
}

id platform_externalAccessory_handleIncomingEADataFromAccessoryForEndpointUUID(const void *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  v5 = +[ACCExternalAccessorySessionManager sharedManager];
  v6 = [v5 eaSessionUUIDForEndpointUUID:a1];

  acc_platform_packetLogging_logEAData(EndpointWithUUID, v6, a2, 1);
  v7 = +[ACCExternalAccessorySessionManager sharedManager];
  v8 = [v7 handleIncomingExternalAccessoryData:a2 forEndpointUUID:a1];

  return v8;
}

id platform_externalAccessory_copyEndpointUUIDForEASessionID(uint64_t a1)
{
  v2 = +[ACCExternalAccessorySessionManager sharedManager];
  v3 = [v2 eaSessionUUIDForSessionID:a1];
  v4 = [v3 copy];

  if (a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id platform_externalAccessory_accessoryCloseExternalAccessorySession(uint64_t a1)
{
  v2 = +[ACCExternalAccessorySessionManager sharedManager];
  v3 = [v2 eaSessionUUIDForSessionID:a1];

  v4 = +[ACCExternalAccessorySessionManager sharedManager];
  v5 = [v4 accessoryCloseSessionforEASessionID:a1];

  if (v5)
  {
    _platform_externalAccessory_EASessionClosed(v3);
  }

  return v5;
}

id platform_externalAccessory_clientHasOpenEASession(uint64_t a1)
{
  v2 = +[ACCExternalAccessorySessionManager sharedManager];
  v3 = [v2 eaClientHasOpenEASession:a1];

  return v3;
}

void platform_externalAccessory_openExternalAccessorySession(__CFString *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
  acc_manager_protectedEndpointCall(a1, 0, 0, &__block_literal_global_16_1);
  v6 = kACCExternalAccessorySessionUUIDKey;
  v7 = a2;
  [v7 objectForKey:v6];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __platform_externalAccessory_openExternalAccessorySession_block_invoke_2;
  v8 = v16[3] = &unk_100227AE0;
  v17 = v8;
  acc_manager_protectedEndpointCall(a1, 0, 0, v16);
  if (gLogObjects && gNumLogObjects >= 10)
  {
    v9 = *(gLogObjects + 72);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = Copy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Opening EA session for endpoint %@...", buf, 0xCu);
  }

  acc_platform_packetLogging_logEvent(EndpointWithUUID, "OPEN_EA_SESSION", "Open EA sessionUUID %@", v11, v12, v13, v14, v15, v8);
  accFeatureHandlers_invokeHandler(a1, 26, v7);
}

uint64_t __platform_externalAccessory_openExternalAccessorySession_block_invoke_2(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  if (_platform_externalAccessory_EASessionOpened_onceToken != -1)
  {
    __platform_externalAccessory_openExternalAccessorySession_block_invoke_2_cold_1();
  }

  if (platform_sleepAssertion_connectionTypeRequiresAssertion(*(*a2 + 8)) && platform_sleepAssertion_endpointProtocolAllowsAssertion(a2[7]))
  {
    [gWiredEASessionUUIDs addObject:v3];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v4 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v5 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = [gWiredEASessionUUIDs count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "after open EA session, gWiredEASessionUUIDs count = %lu", &v9, 0xCu);
    }

    if ([gWiredEASessionUUIDs count] == 1)
    {
      if (gLogObjects && gNumLogObjects >= 10)
      {
        v6 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v6 = &_os_log_default;
        v7 = &_os_log_default;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Have first EA session requiring sleep assertion", &v9, 2u);
      }

      platform_sleepAssertion_createEA();
    }
  }

  return 1;
}

void platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = &audioProductCerts_endpoint_publish_onceToken;
  v7 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 10;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 72);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v46 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
    v47 = 2112;
    *v48 = a1;
    *&v48[8] = 2112;
    *&v48[10] = a2;
    v49 = 1024;
    LODWORD(v50) = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s protocolEndpointUUID %@ macAddr %@ result %u", buf, 0x26u);
  }

  v11 = a1;
  [_MergedGlobals_1 lock];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = gConnectedExternalAccessories;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = a2;
    v16 = a3;
    v17 = *v42;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = [v19 primaryEndpointUUID];
        v21 = [v20 isEqualToString:v11];

        if (v21)
        {
          v6 = &audioProductCerts_endpoint_publish_onceToken;
          v7 = &audioProductCerts_endpoint_publish_onceToken;
          if (gLogObjects && gNumLogObjects >= 10)
          {
            v23 = *(gLogObjects + 72);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }

            v23 = &_os_log_default;
            v24 = &_os_log_default;
          }

          a3 = v16;
          a2 = v15;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v19 primaryEndpointUUID];
            *buf = 138412546;
            v46 = v25;
            v47 = 2112;
            *v48 = v11;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "eaAccessory.primaryEndpointUUID %@ matches protocolEndpointUUID %@", buf, 0x16u);
          }

          v22 = v19;
          goto LABEL_30;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    a3 = v16;
    v7 = &audioProductCerts_endpoint_publish_onceToken;
    v6 = &audioProductCerts_endpoint_publish_onceToken;
    a2 = v15;
  }

  else
  {
    v22 = 0;
  }

LABEL_30:

  [_MergedGlobals_1 unlock];
  if (v22)
  {
    v26 = platform_externalAccesory_legacyConnectionUUIDForPrimaryEndpointUUID(v11);
    v27 = v6[491];
    if (v27 && *(v7 + 984) >= 46)
    {
      v28 = *(v27 + 360);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v28 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v46 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
      v47 = 1024;
      *v48 = v26;
      *&v48[4] = 2112;
      *&v48[6] = v11;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s connectionID %u for protocolEndpointUUID %@", buf, 0x1Cu);
    }

    if (a2)
    {
      v30 = +[NSMutableDictionary dictionary];
      v32 = [NSNumber numberWithUnsignedInt:a3];
      [v30 setObject:v32 forKey:@"IAPAppAccessoryOOBBTPairingCompletionStatusKey"];

      v33 = [NSNumber numberWithUnsignedLongLong:v26];
      [v30 setObject:v33 forKey:@"IAPAppAccessoryOOBBTPairingConnectionIDKey"];

      [v30 setObject:a2 forKey:@"IAPAppAccessoryOOBBTPairingCompletionMACAddressKey"];
      v34 = v6[491];
      if (v34 && *(v7 + 984) >= 10)
      {
        v35 = *(v34 + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v35 = &_os_log_default;
        v37 = &_os_log_default;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = "platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus";
        v47 = 2112;
        *v48 = @"IAPAppAccessoryOOBBTPairingCompletionNotification";
        *&v48[8] = 2112;
        *&v48[10] = v30;
        v49 = 2112;
        v50 = v22;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s sending to clients notification %@ with payload %@ about accessory on %@", buf, 0x2Au);
      }

      v38 = +[ACCExternalAccessoryServer sharedServer];
      [v38 sendToClientsNotification:@"IAPAppAccessoryOOBBTPairingCompletionNotification" withPayload:v30 aboutAccessory:v22];
    }

    else
    {
      v36 = v6[491];
      if (v36 && *(v7 + 984) >= 10)
      {
        v30 = *(v36 + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v30 = &_os_log_default;
        v40 = &_os_log_default;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_6(a3, v26, v30);
      }
    }
  }

  else
  {
    v29 = v6[491];
    if (v29 && *(v7 + 984) >= 10)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v30 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      platform_externalAccessory_notifyClientsOOBBTPairingCompletionStatus_cold_8(v11, v30);
    }
  }
}

void platform_externalAccessory_closeExternalAccessorySession(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:kACCExternalAccessorySessionUUIDKey];
  _platform_externalAccessory_EASessionClosed(v4);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __platform_externalAccessory_closeExternalAccessorySession_block_invoke;
  v6[3] = &unk_100227B08;
  v8 = &v11;
  v5 = v4;
  v9 = &v15;
  v10 = a1;
  v7 = v5;
  acc_manager_protectedEndpointCall(a1, 0, 0, v6);
  if (*(v16 + 24) == 1)
  {
    accFeatureHandlers_invokeHandler(a1, 27, v3);
  }

  if (*(v12 + 24) == 1)
  {
    acc_manager_protectedEndpointCall(a1, 0, 0, &__block_literal_global_23_0);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_10006D958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __platform_externalAccessory_closeExternalAccessorySession_block_invoke(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a1[5] + 8) + 24) = 1;
  acc_platform_packetLogging_logEvent(a2, "CLOSE_EA_SESSION", "Close EA sessionUUID %@", a4, a5, a6, a7, a8, a1[4]);
  Protocol = acc_endpoint_getProtocol(a2);
  v11 = *(a2 + 56);
  if (Protocol == 4)
  {
    if (v11)
    {
      isInitialized = iap2_endpoint_isInitialized(v11);
      if (gLogObjects)
      {
        v13 = gNumLogObjects <= 9;
      }

      else
      {
        v13 = 1;
      }

      v14 = !v13;
      if (isInitialized)
      {
        if (v14)
        {
          v15 = *(gLogObjects + 72);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v15 = &_os_log_default;
          v21 = &_os_log_default;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v22 = a1[7];
        *buf = 138412290;
        v26 = v22;
        v20 = "Closing EA session for iAP2 endpoint %@...";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
LABEL_31:

        *(*(a1[6] + 8) + 24) = 1;
        return 1;
      }

      if (v14)
      {
        v18 = *(gLogObjects + 72);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v18 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Trying to close EA session for uninitialized iAP2 endpoint", buf, 2u);
      }
    }
  }

  else if (v11)
  {
    if (gLogObjects)
    {
      v16 = gNumLogObjects < 10;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v15 = &_os_log_default;
      v17 = &_os_log_default;
    }

    else
    {
      v15 = *(gLogObjects + 72);
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v19 = a1[7];
    *buf = 138412290;
    v26 = v19;
    v20 = "Closing EA session for endpoint %@...";
    goto LABEL_30;
  }

  return 1;
}

BOOL platform_externalAccessory_openSocketFromAccessoryToApp(const void *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  Protocol = acc_endpoint_getProtocol(EndpointWithUUID);
  if (Protocol == 6)
  {
    v5 = kACCExternalAccessoryProtocolEndpointUUIDKey;
    v6 = a2;
    v7 = [v6 objectForKey:v5];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 10;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v10 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Opening socket from Accessory to App for EA Native USB protocol endpointUUID %@", buf, 0xCu);
    }

    v19[0] = v7;
    v11 = [v6 objectForKey:{kACCExternalAccessoryProtocolNameKey, ACCTransportEANative_EndpointUUID, ACCTransportEANative_ProtocolName}];
    v19[1] = v11;
    v18[2] = ACCTransportEANative_ProtocolNumber;
    v12 = [v6 objectForKey:kACCExternalAccessoryProtocolIndexKey];
    v19[2] = v12;
    v18[3] = ACCTransportEANative_LegacyConnectionID;
    v13 = [v6 objectForKey:kACCExternalAccessoryLegacyConnectionIDKey];
    v19[3] = v13;
    v18[4] = ACCTransportEANative_EASessionUUID;
    v14 = [v6 objectForKey:kACCExternalAccessorySessionUUIDKey];

    v19[4] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:ACCTransportEANative_OpenSocketFromAccessoryToAppNotification object:0 userInfo:v15];
  }

  return Protocol == 6;
}

BOOL platform_externalAccessory_openSocketFromAppToAccessory(const void *a1, void *a2)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  Protocol = acc_endpoint_getProtocol(EndpointWithUUID);
  if (Protocol == 6)
  {
    v5 = kACCExternalAccessoryProtocolEndpointUUIDKey;
    v6 = a2;
    v7 = [v6 objectForKey:v5];
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 10;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v10 = *(gLogObjects + 72);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Opening socket from App to Accessory for EA Native USB protocol endpointUUID %@", buf, 0xCu);
    }

    v19[0] = v7;
    v11 = [v6 objectForKey:{kACCExternalAccessoryProtocolNameKey, ACCTransportEANative_EndpointUUID, ACCTransportEANative_ProtocolName}];
    v19[1] = v11;
    v18[2] = ACCTransportEANative_ProtocolNumber;
    v12 = [v6 objectForKey:kACCExternalAccessoryProtocolIndexKey];
    v19[2] = v12;
    v18[3] = ACCTransportEANative_LegacyConnectionID;
    v13 = [v6 objectForKey:kACCExternalAccessoryLegacyConnectionIDKey];
    v19[3] = v13;
    v18[4] = ACCTransportEANative_EASessionUUID;
    v14 = [v6 objectForKey:kACCExternalAccessorySessionUUIDKey];

    v19[4] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:ACCTransportEANative_OpenSocketFromAppToAccessoryNotification object:0 userInfo:v15];
  }

  return Protocol == 6;
}

BOOL _isEAProtocolContainedInAllowList(void *a1)
{
  v5 = 0;
  v1 = a1;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"com.apple.accessory.updater.*" options:1 error:&v5];
  v3 = [v2 numberOfMatchesInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];

  return v3 != 0;
}

void ___postFindAppAlert_block_invoke(uint64_t a1)
{
  if ((platform_system_isApplicationVisible(@"com.apple.AppStore") & 1) == 0)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 10;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v25 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v25 = *(gLogObjects + 72);
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    v23 = *(a1 + 32);
    *buf = 138412290;
    v64 = v23;
    v24 = "AppStore not visible!!! Skip FindApp %@";
LABEL_51:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
    goto LABEL_69;
  }

  if (platform_systemInfo_isATV())
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 10;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v25 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v25 = *(gLogObjects + 72);
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    v26 = *(a1 + 32);
    *buf = 138412290;
    v64 = v26;
    v24 = "On AppleTV!!! Skip FindApp %@";
    goto LABEL_51;
  }

  v6 = CFPreferencesCopyAppValue(@"OptionalSDKProtocolsShownKey", @"com.apple.iapd");
  v25 = objc_alloc_init(NSMutableArray);
  v7 = [*(a1 + 32) EAProtocolsAppMatching];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v8)
  {
    goto LABEL_56;
  }

  v47 = a1;
  v9 = v25;
  v10 = 0;
  v48 = 0;
  v11 = *v58;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v58 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v57 + 1) + 8 * i);
      if (!_isEAProtocolContainedInAllowList(v13))
      {
        v14 = [v13 lowercaseString];
        if (v6 && (v15 = CFGetTypeID(v6), v15 != CFArrayGetTypeID()))
        {
LABEL_30:
          v16 = platform_system_copyInstalledApplicationsForExternalAccessoryProtocol(v13);
          v17 = v16;
          if (!v16 || ![v16 count])
          {
            v48 = 1;
          }
        }

        else if (([v6 containsObject:v14] & 1) == 0 && (-[NSObject containsObject:](v9, "containsObject:", v14) & 1) == 0)
        {
          [v9 addObject:v14];
          v10 = 1;
          goto LABEL_30;
        }

        continue;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v57 objects:v62 count:16];
  }

  while (v8);
  if (v10)
  {
    v8 = [NSMutableArray arrayWithArray:v6];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v54;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v8 addObject:*(*(&v53 + 1) + 8 * j)];
        }

        v20 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v20);
    }

    a1 = v47;
    if (v48)
    {
      v25 = v9;
      goto LABEL_53;
    }

    _updatePlistForSeenEAProtocols(v8);
    v25 = v9;
LABEL_56:
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v29 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v29 = &_os_log_default;
      v30 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      *buf = 138412290;
      v64 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Alert already shown! Skip FindApp %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = 0;
    v25 = v9;
    a1 = v47;
    if ((v48 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_53:
    v27 = [*(a1 + 32) EAName];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v32 = acc_strings_bundle();
      v29 = [v32 localizedStringForKey:@"Unknown" value:&stru_10022D360 table:0];
    }

    v33 = [*(a1 + 32) primaryEndpointUUID];
    v49 = acc_manager_copyConnectionUUIDForEndpointUUID(v33);

    v34 = objc_alloc_init(ACCUserNotification);
    [(ACCUserNotification *)v34 setType:1];
    v35 = acc_strings_bundle();
    v36 = [v35 localizedStringForKey:@"App Not Installed" value:&stru_10022D360 table:0];
    [(ACCUserNotification *)v34 setTitle:v36];

    v37 = acc_strings_bundle();
    v38 = [v37 localizedStringForKey:@"The accessory “%@” uses an app you do not have installed. Would you like to get it from the App Store?" value:&stru_10022D360 table:0];
    v39 = [NSString stringWithFormat:v38, v29];
    [(ACCUserNotification *)v34 setMessage:v39];

    v40 = acc_strings_bundle();
    v41 = [v40 localizedStringForKey:@"Ignore" value:&stru_10022D360 table:0];
    [(ACCUserNotification *)v34 setDefaultButtonName:v41];

    v42 = acc_strings_bundle();
    v43 = [v42 localizedStringForKey:@"App Store" value:&stru_10022D360 table:0];
    [(ACCUserNotification *)v34 setOtherButtonName:v43];

    [(ACCUserNotification *)v34 setIsModal:0];
    v44 = [*(a1 + 32) primaryEndpointUUID];
    v45 = acc_userNotifications_generateIdentifier(@"ea-app-launch", v44);
    [(ACCUserNotification *)v34 setIdentifier:v45];

    [(ACCUserNotification *)v34 setGroupIdentifier:v49];
    v46 = +[ACCUserNotificationManager sharedManager];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = ___postFindAppAlert_block_invoke_60;
    v50[3] = &unk_100227B50;
    v8 = v8;
    v51 = v8;
    v52 = *(a1 + 32);
    [v46 presentNotification:v34 completionHandler:v50];
  }

  if (v6)
  {
    CFRelease(v6);
  }

LABEL_69:
}

const void *_updatePlistForSeenEAProtocols(const void *value)
{
  if (value)
  {
    CFPreferencesSetAppValue(@"OptionalSDKProtocolsShownKey", value, @"com.apple.iapd");

    return CFPreferencesSynchronize(@"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  return value;
}

void ___postFindAppAlert_block_invoke_60(uint64_t a1, int a2)
{
  _updatePlistForSeenEAProtocols(*(a1 + 32));
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 9;
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
      v6 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) EAName];
      *buf = 138412290;
      v64 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User wants to find app for accessory %@", buf, 0xCu);
    }

    v53 = *(a1 + 40);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = [v53 copyExternalAccessoryProtocols];
    v10 = [obj countByEnumeratingWithState:&v55 objects:buf count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v56;
      v13 = &stru_10022D360;
      v14 = 1;
      do
      {
        v15 = 0;
        v16 = v14;
        v17 = v13;
        do
        {
          if (*v56 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = (v16 + 1);
          v18 = [NSString stringWithFormat:@"&id%d=%@", v16, *(*(&v55 + 1) + 8 * v15)];
          v19 = +[NSCharacterSet URLPathAllowedCharacterSet];
          v20 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v19];

          v13 = [(__CFString *)v17 stringByAppendingString:v20];

          v15 = v15 + 1;
          v16 = v14;
          v17 = v13;
        }

        while (v11 != v15);
        v11 = [obj countByEnumeratingWithState:&v55 objects:buf count:16];
      }

      while (v11);
    }

    else
    {
      v13 = &stru_10022D360;
    }

    v21 = [v53 EAFirmwareRevisionActive];
    v22 = [v53 EAFirmwareRevisionPending];
    if (v22)
    {
      v23 = v22;
      v24 = [v53 EAFirmwareRevisionPending];
      v25 = [v24 length];

      if (v25)
      {
        v26 = [v53 EAFirmwareRevisionPending];

        v21 = v26;
      }
    }

    v49 = [v53 EAPreferredApp];
    v48 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v52 = [v49 stringByAddingPercentEncodingWithAllowedCharacters:v48];
    v47 = [v53 EAName];
    v46 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v41 = [v47 stringByAddingPercentEncodingWithAllowedCharacters:v46];
    v45 = [v53 EAManufacturer];
    v44 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v51 = [v45 stringByAddingPercentEncodingWithAllowedCharacters:v44];
    v43 = [v53 EAModelNumber];
    v42 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v39 = [v43 stringByAddingPercentEncodingWithAllowedCharacters:v42];
    v40 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v50 = v21;
    v27 = [v21 stringByAddingPercentEncodingWithAllowedCharacters:v40];
    v28 = [v53 EAHardwareRevision];
    v29 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v30 = [v28 stringByAddingPercentEncodingWithAllowedCharacters:v29];
    v31 = [v53 EASerialNumber];
    v32 = +[NSCharacterSet URLPathAllowedCharacterSet];
    v33 = [v31 stringByAddingPercentEncodingWithAllowedCharacters:v32];
    v34 = [NSString stringWithFormat:@"itms-apps://?action=accessory-lookup%@&bid=%@&accessoryName=%@&manufacturer=%@&modelNumber=%@&firmwareVersion=%@&hardwareVersion=%@&serialNumber=%@", v13, v52, v41, v51, v39, v27, v30, v33];

    v35 = [NSURL URLWithString:v34];
    if (gLogObjects && gNumLogObjects >= 10)
    {
      v36 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v36 = &_os_log_default;
      v37 = &_os_log_default;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 138412546;
      v60 = v35;
      v61 = 2112;
      v62 = v34;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "opening app store URL = %@ (%@)", v59, 0x16u);
    }

    platform_system_launchURL(v34);
  }

  else
  {
    if (v5)
    {
      v7 = *(gLogObjects + 72);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User did not approve Find App for Accessory - ignoring", buf, 2u);
    }
  }
}

BOOL platform_auth_verifyCertificateChain(const void *a1, const void *a2, unsigned int a3)
{
  if (a3 >= 5)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a3;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v7 = Mutable;
  CFArrayAppendValue(Mutable, a1);
  if (a2)
  {
    CFArrayAppendValue(v7, a2);
  }

  v8 = +[MFAACertificateManager sharedManager];
  v9 = [v8 validateCertificateChain:v7 type:v5 realtime:1 error:0];

  v10 = v9 == 1;
  CFRelease(v7);
  return v10;
}

id platform_auth_verifyNonceSignatureForType(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (acc_userDefaults_BOOLForKey(@"ForceAuthFail"))
  {
    return 0;
  }

  if (a4 >= 5)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a4;
  }

  v10 = +[MFAACertificateManager sharedManager];
  v11 = [v10 copyParsedCertificateChainInfo:a1 assumeType:v9];
  if (v11)
  {
    v8 = [v10 verifyNonceSignature:v11 nonce:a2 signature:a3];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_auth_verifyNonceSignatureForType_cold_1();
    }

    v8 = 0;
  }

  return v8;
}

id platform_auth_isAppleAccessory(uint64_t a1)
{
  result = acc_userDefaultsIapd_copyIntegerForKey(@"PretendAccessoryType");
  if (result != 1)
  {
    if (result == 2)
    {
      return 0;
    }

    else
    {

      return _MFAAIsAppleAccessory(a1);
    }
  }

  return result;
}

unint64_t platform_deviceNotifications_deviceTimeUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = @"kCFACCDeviceNotifications_DeviceTimeUpdate_UnixTime";
  v7 = [NSNumber numberWithLongLong:a2];
  v14[0] = v7;
  v13[1] = @"kCFACCDeviceNotifications_DeviceTimeUpdate_TimeZoneOffsetMinutes";
  v8 = [NSNumber numberWithShort:a3];
  v14[1] = v8;
  v13[2] = @"kCFACCDeviceNotifications_DeviceTimeUpdate_DaylightSavingsOffsetMinutes";
  v9 = [NSNumber numberWithChar:a4];
  v14[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = accFeatureHandlers_invokeHandler(a1, 2, v10);
  return v11;
}

void platform_deviceNotifications_addSubscriber(unsigned int a1, void *a2, __n128 a3)
{
  if (platform_deviceNotifications_addSubscriber_onceToken != -1)
  {
    platform_deviceNotifications_addSubscriber_cold_1();
  }

  if (a2)
  {
    v4 = &audioProductCerts_endpoint_publish_onceToken;
    v5 = !_gSubscriberList || a1 > 5;
    if (!v5 && ((0x2Fu >> a1) & 1) != 0)
    {
      v53 = dword_1001C3A50[a1];
      v6 = dword_1001C3A68[a1];
      name = kLockdownNotificationDeviceNameChanged;
      a3.n128_u64[0] = 67109378;
      v51 = a3;
      do
      {
        v7 = gLogObjects;
        v8 = gNumLogObjects;
        if (gLogObjects)
        {
          v9 = gNumLogObjects < 8;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v56 = v7;
            *&v56[8] = 1024;
            *&v56[10] = v8;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v10 = &_os_log_default;
          v11 = &_os_log_default;
        }

        else
        {
          v11 = *(gLogObjects + 56);
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *v56 = a2;
          *&v56[8] = 1024;
          *&v56[10] = v6;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[#Device Notifications] Adding subscriber %@ for notification type: %{coreacc:ACCDeviceNotification_t}d", buf, 0x12u);
        }

        v12 = [NSNumber numberWithInt:v6];
        v13 = a2;
        [_gSubscriberListLock lock];
        v14 = [v4[33] objectForKey:v12];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = +[NSMutableSet set];
          [v4[33] setObject:v15 forKey:v12];
          if (!v15)
          {
            goto LABEL_24;
          }
        }

        if ([v15 count])
        {
LABEL_24:
          v16 = 0;
          goto LABEL_34;
        }

        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v19 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v56 = v17;
            *&v56[8] = 1024;
            *&v56[10] = v18;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v20 = &_os_log_default;
          v19 = &_os_log_default;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v56 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] First endpoint added for %{coreacc:ACCDeviceNotification_t}d, addObservers", buf, 8u);
        }

        v16 = 1;
LABEL_34:
        [v15 addObject:{v13, *&v51}];
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v23 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v56 = v21;
            *&v56[8] = 1024;
            *&v56[10] = v22;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v24 = &_os_log_default;
          v23 = &_os_log_default;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = [v15 count];
          *buf = 134218240;
          *v56 = v25;
          *&v56[8] = 1024;
          *&v56[10] = v6;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[#Device Notifications] There are now %lu subscribers for notification type: %{coreacc:ACCDeviceNotification_t}d", buf, 0x12u);
        }

        v26 = gLogObjects;
        v27 = gNumLogObjects;
        if (gLogObjects)
        {
          v28 = gNumLogObjects <= 7;
        }

        else
        {
          v28 = 1;
        }

        v29 = !v28;
        if (!v16)
        {
          if (v29)
          {
            v31 = *(gLogObjects + 56);
            v4 = &audioProductCerts_endpoint_publish_onceToken;
          }

          else
          {
            v4 = &audioProductCerts_endpoint_publish_onceToken;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v56 = v26;
              *&v56[8] = 1024;
              *&v56[10] = v27;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v35 = &_os_log_default;
            v31 = &_os_log_default;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v56 = v6;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] There is already an observer registered for %{coreacc:ACCDeviceNotification_t}d, skip adding observers for notification", buf, 8u);
          }

          goto LABEL_81;
        }

        if (v29)
        {
          v30 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v56 = v26;
            *&v56[8] = 1024;
            *&v56[10] = v27;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v32 = &_os_log_default;
          v30 = &_os_log_default;
        }

        v4 = &audioProductCerts_endpoint_publish_onceToken;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v56 = v6;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[#Device Notifications] Adding observers for notification type: %{coreacc:ACCDeviceNotification_t}d...", buf, 8u);
        }

        if (v6 > 1)
        {
          if (v6 == 2)
          {
            v40 = +[NSNotificationCenter defaultCenter];
            v41 = [v40 addObserverForName:NSSystemClockDidChangeNotification object:0 queue:0 usingBlock:&__block_literal_global_38];
            v42 = _gSystemClockDidChangeObserver;
            _gSystemClockDidChangeObserver = v41;

            v43 = +[NSNotificationCenter defaultCenter];
            v44 = [v43 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:0 usingBlock:&__block_literal_global_41];
            v45 = _gTimeZoneDidChangeObserver;
            _gTimeZoneDidChangeObserver = v44;

            _setDaylightSavingsTimer();
            goto LABEL_82;
          }

          if (v6 != 3)
          {
LABEL_71:
            v37 = gLogObjects;
            v38 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 8)
            {
              v31 = *(gLogObjects + 56);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v56 = v37;
                *&v56[8] = 1024;
                *&v56[10] = v38;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v46 = &_os_log_default;
              v31 = &_os_log_default;
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *v56 = v6;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[#Device Notifications] Add observers for unknown notification type: %{coreacc:ACCDeviceNotification_t}d!", buf, 8u);
            }

            goto LABEL_81;
          }

          v31 = +[NSDistributedNotificationCenter defaultCenter];
          v36 = [v31 addObserverForName:@"CRPairedVehiclesDidChangeNotification" object:0 queue:0 usingBlock:&__block_literal_global_48];
          v34 = _gCarPlayPairedVehiclesDidChangeObserver;
          _gCarPlayPairedVehiclesDidChangeObserver = v36;
        }

        else
        {
          if (!v6)
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _deviceNameChanged, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
            goto LABEL_82;
          }

          if (v6 != 1)
          {
            goto LABEL_71;
          }

          v31 = +[NSNotificationCenter defaultCenter];
          v33 = [v31 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:&__block_literal_global_35];
          v34 = _gLocaleDidChangeObserver;
          _gLocaleDidChangeObserver = v33;
        }

LABEL_81:
LABEL_82:
        [_gSubscriberListLock unlock];
        v47 = gLogObjects;
        v48 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v49 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v56 = v47;
            *&v56[8] = 1024;
            *&v56[10] = v48;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v50 = &_os_log_default;
          v49 = &_os_log_default;
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = v51.n128_u32[0];
          *v56 = v6;
          *&v56[4] = 2112;
          *&v56[6] = a2;
          _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "[#Device Notifications] Sending initial update for notification type: %{coreacc:ACCDeviceNotification_t}d to endpoint %@...", buf, 0x12u);
        }

        _sendUpdateForUUID(v13, v6);
        v6 = (v6 + 1);
      }

      while (v6 <= v53);
    }
  }
}

void __platform_deviceNotifications_addSubscriber_block_invoke(id a1)
{
  v1 = [&__NSDictionary0__struct mutableCopy];
  v2 = _gSubscriberList;
  _gSubscriberList = v1;

  _gSubscriberListLock = objc_alloc_init(NSLock);

  _objc_release_x1();
}

void _sendUpdateForUUID(const void *a1, int a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _sendUpdateForUUID_cold_2(a1, a2, v6);
  }

  if (a1)
  {
    CFRetain(a1);
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = ___sendUpdateForUUID_block_invoke;
    v8[3] = &__block_descriptor_44_e5_v8__0l;
    v9 = a2;
    v8[4] = a1;
    dispatch_async(v7, v8);
  }
}

void platform_deviceNotifications_removeSubscriber(unsigned int a1, void *a2)
{
  if (a2)
  {
    v2 = !_gSubscriberList || a1 > 5;
    if (!v2 && ((0x2Fu >> a1) & 1) != 0)
    {
      v33 = dword_1001C3A50[a1];
      v4 = dword_1001C3A68[a1];
      name = kLockdownNotificationDeviceNameChanged;
      while (1)
      {
        v5 = gLogObjects;
        v6 = gNumLogObjects;
        if (gLogObjects)
        {
          v7 = gNumLogObjects < 8;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v5;
            v36 = 1024;
            v37 = v6;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v8 = &_os_log_default;
          v9 = &_os_log_default;
        }

        else
        {
          v9 = *(gLogObjects + 56);
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v35 = a2;
          v36 = 1024;
          v37 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[#Device Notifications] Removing subscriber %@ for notification type: %{coreacc:ACCDeviceNotification_t}d", buf, 0x12u);
        }

        v10 = [NSNumber numberWithInt:v4];
        v11 = a2;
        [_gSubscriberListLock lock];
        v12 = [_gSubscriberList objectForKey:v10];
        [v12 removeObject:v11];
        v13 = gLogObjects;
        v14 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v15 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v13;
            v36 = 1024;
            v37 = v14;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v16 = &_os_log_default;
          v15 = &_os_log_default;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = [v12 count];
          *buf = 134218240;
          v35 = v17;
          v36 = 1024;
          v37 = v4;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[#Device Notifications] There are now %lu subscribers for notification type: %{coreacc:ACCDeviceNotification_t}d", buf, 0x12u);
        }

        if (!v12 || [v12 count])
        {
          goto LABEL_56;
        }

        [_gSubscriberList removeObjectForKey:v10];
        v18 = gLogObjects;
        v19 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v20 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v18;
            v36 = 1024;
            v37 = v19;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v21 = &_os_log_default;
          v20 = &_os_log_default;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v35) = v4;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[#Device Notifications] Removing observers for notification type: %{coreacc:ACCDeviceNotification_t}d...", buf, 8u);
        }

        if (v4 > 1)
        {
          break;
        }

        if (v4)
        {
          if (v4 == 1)
          {
            v22 = +[NSNotificationCenter defaultCenter];
            v23 = v22;
            v24 = _gLocaleDidChangeObserver;
            goto LABEL_43;
          }

LABEL_44:
          v25 = gLogObjects;
          v26 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 8)
          {
            v23 = *(gLogObjects + 56);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v35 = v25;
              v36 = 1024;
              v37 = v26;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v31 = &_os_log_default;
            v23 = &_os_log_default;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v35) = v4;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[#Device Notifications] Remove observers for unknown notification type: %{coreacc:ACCDeviceNotification_t}d!", buf, 8u);
          }

          goto LABEL_55;
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, name, 0);
LABEL_56:
        [_gSubscriberListLock unlock];

        v4 = (v4 + 1);
        if (v4 > v33)
        {
          return;
        }
      }

      if (v4 == 2)
      {
        v28 = +[NSNotificationCenter defaultCenter];
        [v28 removeObserver:_gSystemClockDidChangeObserver];

        v29 = +[NSNotificationCenter defaultCenter];
        [v29 removeObserver:_gTimeZoneDidChangeObserver];

        if (_gDaylightSavingsTimerSource)
        {
          dispatch_source_cancel(_gDaylightSavingsTimerSource);
          v30 = _gDaylightSavingsTimerSource;
          _gDaylightSavingsTimerSource = 0;
        }

        goto LABEL_56;
      }

      if (v4 != 3)
      {
        goto LABEL_44;
      }

      v22 = +[NSDistributedNotificationCenter defaultCenter];
      v23 = v22;
      v24 = _gCarPlayPairedVehiclesDidChangeObserver;
LABEL_43:
      [v22 removeObserver:v24];
LABEL_55:

      goto LABEL_56;
    }
  }
}

void _deviceNameChanged()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 8;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] Device name changed! Sending updates...", v3, 2u);
  }

  _sendUpdateForNotification(0);
}

void ___addObserversForNotification_block_invoke(id a1, NSNotification *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] System locale changed! Sending updates...", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    ___addObserversForNotification_block_invoke_cold_3(v2, v6, v8, v9, v10, v11, v12, v13);
  }

  _sendUpdateForNotification(1);
}

void _sendUpdateForNotification(uint64_t a1)
{
  if (_gSubscriberList)
  {
    [_gSubscriberListLock lock];
    v2 = _gSubscriberList;
    v3 = [NSNumber numberWithInt:a1];
    v4 = [v2 objectForKey:v3];
    v5 = [v4 copy];

    [_gSubscriberListLock unlock];
    if (v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            _sendUpdateForUUID(*(*(&v11 + 1) + 8 * v10), a1);
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

void ___addObserversForNotification_block_invoke_36(id a1, NSNotification *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] System clock changed! Sending updates...", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    ___addObserversForNotification_block_invoke_cold_3(v2, v6, v8, v9, v10, v11, v12, v13);
  }

  _sendUpdateForNotification(2);
  _setDaylightSavingsTimer();
}

void _setDaylightSavingsTimer()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 28;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 216);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = +[NSTimeZone localTimeZone];
    v4 = [v3 name];
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] Updating DST timer for timezone: %@", buf, 0xCu);
  }

  if (_gDaylightSavingsTimerSource)
  {
    dispatch_source_set_timer(_gDaylightSavingsTimerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  v5 = +[NSTimeZone localTimeZone];
  v6 = [v5 nextDaylightSavingTimeTransition];

  if (v6)
  {
    v7 = +[NSDate date];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#Device Notifications] Setting timer for next daylight savings time event in %ld seconds...", buf, 0xCu);
    }

    if (v9 < 1)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v14 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v14 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v23 = v9;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] WARNING: secondsUntilNextDSTTransition was %ld second(s)! nextDSTTransition: %@, currentDate: %@", buf, 0x20u);
      }

      getpid();
      v21 = [NSString stringWithFormat:@"secondsUntilNextDSTTransition was %ld second(s)! nextDSTTransition: %@, currentDate: %@", v9, v6, v7];
      SimulateCrash();
    }

    else
    {
      v12 = _gDaylightSavingsTimerSource;
      if (_gDaylightSavingsTimerSource)
      {
        v13 = dispatch_time(0, 1000000000 * v9);
        dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      }

      else
      {
        v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
        v17 = _gDaylightSavingsTimerSource;
        _gDaylightSavingsTimerSource = v16;

        dispatch_source_set_event_handler(_gDaylightSavingsTimerSource, &__block_literal_global_52);
        v18 = _gDaylightSavingsTimerSource;
        v19 = dispatch_time(0, 1000000000 * v9);
        dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        dispatch_resume(_gDaylightSavingsTimerSource);
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 28)
    {
      v7 = *(gLogObjects + 216);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] Device does not observe daylight savings time, not setting DST timer.", buf, 2u);
    }
  }
}

void ___addObserversForNotification_block_invoke_39(id a1, NSNotification *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] System time zone changed! Sending updates...", v14, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    ___addObserversForNotification_block_invoke_cold_3(v2, v6, v8, v9, v10, v11, v12, v13);
  }

  _sendUpdateForNotification(2);
  _setDaylightSavingsTimer();
}

void ___addObserversForNotification_block_invoke_46(id a1, NSNotification *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[#Device Notifications] Notification received:\n%@", &v8, 0xCu);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v6 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] CarPlay paired vehicles changed! Sending updates...", &v8, 2u);
  }

  _sendUpdateForNotification(3);
}

void ___setDaylightSavingsTimer_block_invoke(id a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects < 8;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#Device Notifications] Daylight savings time changed! Sending time update...", v4, 2u);
  }

  _sendUpdateForNotification(2);
  _setDaylightSavingsTimer();
}

void ___sendUpdateForUUID_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v8 = +[NSDate date];
      [v8 timeIntervalSince1970];
      v10 = v9;

      v11 = +[NSTimeZone localTimeZone];
      v12 = [v11 secondsFromGMT];
      v13 = ((v12 * 0x8888888888888889) >> 64) + v12;
      v14 = (v13 >> 63) + (v13 >> 5);

      v15 = +[NSTimeZone localTimeZone];
      [v15 daylightSavingTimeOffset];
      v17 = ((v16 * 0x8888888888888889) >> 64) + v16;
      v18 = (v17 >> 63) + (v17 >> 5);

      platform_deviceNotifications_deviceTimeUpdate(*(a1 + 32), v10, v14, v18);
    }

    else if (v2 == 3)
    {
      accFeatureHandlers_invokeHandler(*(a1 + 32), 3, 0);
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      v3 = +[NSLocale preferredLanguages];
      v4 = [v3 objectAtIndex:0];
      v5 = [NSLocale localeWithLocaleIdentifier:v4];
      v6 = [v5 languageCode];

      accFeatureHandlers_invokeHandler(*(a1 + 32), 1, v6);
    }
  }

  else
  {
    v7 = platform_systemInfo_copySystemName();
    accFeatureHandlers_invokeHandler(*(a1 + 32), 0, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  v19 = *(a1 + 32);
  if (v19)
  {

    CFRelease(v19);
  }
}

void acc_protocolParser_iAP1_run(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 3)
  {
    v33 = v3;
    v34 = v4;
    v8 = *(a2 + 8);
    v9 = *v8;
    if (*v8 > 3)
    {
      if (v9 <= 5)
      {
        if (v9 == 4)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v18 = *(gLogObjects + 120);
          }

          else
          {
            v18 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP1_run_cold_11();
          }

          if (*a3 == 4)
          {
            v10 = 5;
          }

          else
          {
            v10 = 6;
          }

          *(v8 + 8) = a3;
          *(v8 + 18) += *a3;
          *(v8 + 4) = *a3;
          goto LABEL_122;
        }

        v10 = *v8;
        if (v9 == 5)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v14 = *(gLogObjects + 120);
          }

          else
          {
            v14 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP1_run_cold_9();
          }

          *(v8 + 18) += *a3;
          v10 = 6;
          goto LABEL_122;
        }
      }

      else
      {
        if (v9 == 6)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v17 = *(gLogObjects + 120);
          }

          else
          {
            v17 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP1_run_cold_7();
          }

          if (*(v8 + 16) - 1 > (a3 - *(v8 + 8)))
          {
            v10 = 7;
          }

          else
          {
            v10 = 8;
          }

          *(v8 + 18) += *a3;
          *(v8 + 5) = *a3;
          goto LABEL_122;
        }

        if (v9 == 7)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v19 = *(gLogObjects + 120);
          }

          else
          {
            v19 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP1_run_cold_5();
          }

          if (*(v8 + 16) - 1 == (a3 - *(v8 + 8)))
          {
            v10 = 8;
          }

          else
          {
            v10 = 7;
          }

          *(v8 + 18) += *a3;
          goto LABEL_122;
        }

        v10 = *v8;
        if (v9 == 8)
        {
          if (gLogObjects && gNumLogObjects >= 16)
          {
            v11 = *(gLogObjects + 120);
          }

          else
          {
            v11 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            acc_protocolParser_iAP1_run_cold_2();
          }

          if (*(v8 + 18) == -*a3)
          {
            if (gLogObjects && gNumLogObjects >= 16)
            {
              v23 = *(gLogObjects + 120);
            }

            else
            {
              v23 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                platform_connectionInfo_configStreamGetCategories_cold_2();
              }
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "iAP1 checksum validated!", buf, 2u);
            }

            if (*(v8 + 4) || *(v8 + 5) != 238)
            {
              if (acc_policies_allowACCAuthProtocolOnAllTransport() && !*(v8 + 4) && *(v8 + 5) == 170)
              {
                *(a1 + 28) = 10;
                v27 = logObjectForModule_13();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *v30 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "AccAuth detected! (detect packet)", v30, 2u);
                }

                v10 = 11;
              }

              else
              {
                *(a1 + 28) = *a2;
                v28 = logObjectForModule_13();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *v29 = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "iAP1 detected!", v29, 2u);
                }

                v10 = 9;
              }
            }

            else
            {
              *(a1 + 28) = 4;
              v26 = logObjectForModule_13();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *v31 = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "iAP2 detected! (detect packet)", v31, 2u);
              }

              v10 = 10;
            }

LABEL_122:
            *v8 = v10;
            return;
          }

          v10 = 12;
        }
      }

LABEL_109:
      if (v9 != 12 && v10 == 12)
      {
        ++*(a1 + 24);
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v25 = *(gLogObjects + 120);
        }

        else
        {
          v25 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP1_run_cold_23();
        }

        v10 = 12;
      }

      goto LABEL_122;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v16 = *(gLogObjects + 120);
        }

        else
        {
          v16 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP1_run_cold_16();
        }

        *(v8 + 16) = *a3 << 8;
        *(v8 + 18) += *a3;
        v10 = 3;
        goto LABEL_122;
      }

      v10 = *v8;
      if (v9 != 3)
      {
        goto LABEL_109;
      }

      if (gLogObjects && gNumLogObjects >= 16)
      {
        v13 = *(gLogObjects + 120);
      }

      else
      {
        v13 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        acc_protocolParser_iAP1_run_cold_13();
      }

      v22 = *(v8 + 16) | *a3;
      *(v8 + 16) = v22;
      if ((v22 + 6) >= 8u)
      {
        v21 = logObjectForModule_13();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
LABEL_57:
          acc_protocolParser_iAP1_run_cold_14((v8 + 16), v21);
        }

LABEL_58:
        v10 = 4;
        goto LABEL_108;
      }
    }

    else
    {
      if (!v9)
      {
        if (gLogObjects && gNumLogObjects >= 16)
        {
          v15 = *(gLogObjects + 120);
        }

        else
        {
          v15 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          acc_protocolParser_iAP1_run_cold_21();
        }

        v10 = *a3 == 85;
        goto LABEL_122;
      }

      v10 = *v8;
      if (v9 != 1)
      {
        goto LABEL_109;
      }

      if (gLogObjects && gNumLogObjects >= 16)
      {
        v12 = *(gLogObjects + 120);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        acc_protocolParser_iAP1_run_cold_18();
      }

      v20 = *a3;
      if (!*a3)
      {
        v10 = 2;
        goto LABEL_108;
      }

      if (v20 != 1 && v20 <= 0xFC)
      {
        *(v8 + 16) = v20;
        v21 = logObjectForModule_13();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_57;
        }

        goto LABEL_58;
      }
    }

    v10 = 12;
LABEL_108:
    *(v8 + 18) += *a3;
    goto LABEL_109;
  }
}

uint64_t loggingProtocol_stopAccessoryLogTransfer(unsigned int a1, uint64_t a2)
{
  if (a1 > 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  return sendMessage_stopBinaryLogFile(a2, *(a2 + 120), v2);
}

void *logObjectForModule_18()
{
  if (gLogObjects && gNumLogObjects >= 53)
  {
    return *(gLogObjects + 416);
  }

  v0 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_3();
  }

  return v0;
}

void __handleMessage_sessionSync_block_invoke(uint64_t a1)
{
  loggingProtocol_sendMessage(4, 0, *(a1 + 32));
  v2 = *(a1 + 32);
  *(v2 + 8) = 2;
  v3 = gLogObjects;
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 53)
  {
    v5 = *(gLogObjects + 416);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      v8 = v3;
      v9 = 1024;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v7, 0x12u);
      v2 = *(a1 + 32);
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(v2 + 8);
    v7 = 67109120;
    LODWORD(v8) = v6;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Logging Protocol Session Established. endpointState: %u", &v7, 8u);
    v2 = *(a1 + 32);
  }

  iap2_sessionLog_registerForNotifications(v2);
}

void logFetcher_processAvailabilityUpdate(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 8) & 1) == 0 && *(v1 + 9) == 1)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 28);
    v4 = v2 - v3;
    if (v2 != v3)
    {
      v7 = *(v1 + 36);
      v8 = v7 - (v3 ^ 0x80000000);
      v9 = *(v1 + 32) + (v3 ^ 0x7FFFFFFF);
      v10 = v3 - v2;
      if (v7 - v3 < (v3 - v7))
      {
        v3 = *(v1 + 36);
      }

      if (v10 < v4 && v7 - v2 > v10)
      {
        v3 = *(v1 + 36);
      }

      if (v8 <= v9)
      {
        v3 = *(v1 + 36);
      }

      *(v1 + 24) = v3;
      *(v1 + 28) = v2;
      goto LABEL_18;
    }

    v5 = *(v1 + 36);
    v6 = *(v1 + 24);
    if (v5 == v6)
    {
LABEL_18:
      *(v1 + 12) = v2;
      *(v1 + 8) = 1;
      logFetcher_performFetch(a1);
      return;
    }

    if (v5 - v6 > (v2 + ~v6))
    {
      *(v1 + 24) = v5;
      goto LABEL_18;
    }
  }
}

void logFetcher_performFetch(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56) || !*(v2 + 48))
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 64));
    *(v2 + 56) = v3;
    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v4 = *(v2 + 56);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = __logFetcher_initTimers_block_invoke;
    handler[3] = &__block_descriptor_tmp_1_1;
    handler[4] = a1;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(v2 + 56));
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 64));
    *(v2 + 48) = v5;
    dispatch_source_set_timer(v5, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v6 = *(v2 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = __logFetcher_initTimers_block_invoke_2;
    v14[3] = &__block_descriptor_tmp_2_1;
    v14[4] = v2 + 8;
    v14[5] = a1;
    dispatch_source_set_event_handler(v6, v14);
    dispatch_resume(*(v2 + 48));
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 12);
  v8 = *(v2 + 24);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    *(v2 + 8) = 0;
    logFetcher_processAvailabilityUpdate(a1);
  }

  else
  {
    v10 = rand() / 0x151D07Fu + 32;
    if (v9 < v10)
    {
      v10 = v9;
    }

    v11 = *(v2 + 12);
    *(v2 + 16) = v11 - v10;
    *(v2 + 20) = v11;
    v12 = *(v2 + 48);
    v13 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void __logFetcher_initTimers_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  LODWORD(v3) = *(v3 + 12) - 1;
  v9[0] = v4;
  v9[1] = v3;
  v5 = loggingProtocol_sendMessage(7, v9, v2);
  v6 = *(a1 + 32);
  if (v5)
  {
    *(v6 + 4) += *(v6 + 8) - *(v6 + 12);
  }

  else
  {
    v7 = *(v6 + 48);
    v8 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

uint64_t sendMessage_requestBinaryLogFileInfo(uint64_t a1, int a2, int a3)
{
  v8[0] = a2;
  v8[1] = a3;
  if (gLogObjects && gNumLogObjects >= 53)
  {
    v6 = *(gLogObjects + 416);
  }

  else
  {
    v6 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_3();
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sendMessage_requestBinaryLogFileInfo_cold_2(a2, a3, v6);
  }

  return loggingProtocol_sendMessage(12, v8, a1);
}

void writeMessage_binaryBlock(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {

      iap2_sessionLog_writeBinaryBlockToFile();
    }

    else
    {
      writeMessage_binaryBlock_cold_1();
    }
  }

  else
  {
    writeMessage_binaryBlock_cold_2();
  }
}

uint64_t sendMessage_requestBinaryLogSegment(uint64_t a1, int a2, int a3)
{
  v9[0] = a2;
  v9[1] = a3;
  if ((*(a1 + 124) - *(a1 + 116)) >= 0x200)
  {
    v6 = 512;
  }

  else
  {
    v6 = *(a1 + 124) - *(a1 + 116);
  }

  v9[2] = v6;
  if (gLogObjects && gNumLogObjects >= 53)
  {
    v7 = *(gLogObjects + 416);
  }

  else
  {
    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_3();
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    v14 = 1024;
    v15 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Sending RequestBinaryLogSegment. LogFileID: %u, SegmentOffset: %u, SegmentLength: %u", buf, 0x14u);
  }

  return loggingProtocol_sendMessage(15, v9, a1);
}

BOOL OUTLINED_FUNCTION_13_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL acc_auth_protocol_initStartMessage1Way(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  result = 1;
  if (a1 && a2 && a3 >= 4)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v7 = *(gLogObjects + 432);
    }

    else
    {
      v7 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *a1;
      v9 = *(a1 + 280);
      v10 = *(a1 + 283);
      v12[0] = 67109632;
      v12[1] = v8;
      v13 = 1024;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[AccAuth][1Way] initStartMessage1Way: sessionID %d, role %d, negotiatedAuthType %d \n", v12, 0x14u);
    }

    v11 = *(a1 + 280);
    if (v11)
    {
      result = 1;
      if (v11 == 1 && *(a1 + 283) == 1)
      {
        return acc_auth_protocol_initMessage(a1, 162, a2, a3);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL acc_auth_protocol_handleAuthStartResp1Way(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unsigned int a5)
{
  result = 1;
  if (a1 && a2 && a4)
  {
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v10 = *(gLogObjects + 432);
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *a1;
      v12 = *(a1 + 280);
      v13 = *(a1 + 283);
      v14 = *a2;
      v15 = a2[1];
      v16 = a2[2];
      v17 = a2[3];
      v18[0] = 67110656;
      v18[1] = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleAuthStartResp1Way: sessionID %d, role %d, negotiatedAuthType %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d \n", v18, 0x2Cu);
    }

    return *a2 != 163 || *(a1 + 283) != 1 || *(a1 + 280) != 1 || acc_auth_protocol_initInfoCommonMessage(a1, 9u, a4, a5);
  }

  return result;
}

uint64_t acc_auth_protocol_handleAuthInfoResp1Way(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  result = 1;
  if (a1 && a2 && a4)
  {
    v19 = 0;
    v10 = acc_auth_protocol_messagePayload(a2, a3, &v19 + 1, 0, &v19);
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v11 = *(gLogObjects + 432);
    }

    else
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *a1;
      v13 = *(a1 + 280);
      v14 = *(a1 + 283);
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      *buf = 67110656;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = v17;
      v32 = 1024;
      v33 = HIDWORD(v19);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleAuthInfoResp1Way: sessionID %d, role %d, negotiatedAuthType %d, msgID %#04x, ctl0 %#04x, ctl1 %#04x, len %d \n", buf, 0x2Cu);
    }

    if (*a2 == 165 && *(a1 + 283) == 1 && *(a1 + 280) == 1 && !*v10)
    {
      v18 = v10[1];
      result = 1;
      if (v18 > 4)
      {
        if (v18 == 5)
        {
          return __acc_auth_protocol_handleCertificateChainCert(a1, v10, v19, a4, a5);
        }

        else if (v18 == 8)
        {
          return __acc_auth_protocol_handleResponse(a1, v10, v19, a4, a5);
        }
      }

      else if (v10[1])
      {
        if (v18 == 2)
        {
          return __acc_auth_protocol_handleCertificate(a1, v10, v19, a4, a5);
        }
      }

      else
      {
        return __acc_auth_protocol_handleCertificateHash(a1, v10, a4, a5);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __acc_auth_protocol_handleCertificateHash(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v8 = *(a2 + 3);
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v9 = *(gLogObjects + 432);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __acc_auth_protocol_handleCertificateHash_cold_2(a1);
  }

  if (v8 == 32)
  {
    if (_acc_auth_protocol_certificateCacheGetCert(a1, (a2 + 4), 0x20u, &v21))
    {
      inited = acc_auth_protocol_initInfoCommonMessage(a1, 1u, a3, a4);
    }

    else
    {
      _acc_auth_protocol_setPeerLeafCertificateData(a1, &v21);
      v20 = 0;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36[0] = v11;
      v36[1] = v11;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v12 = *(gLogObjects + 432);
      }

      else
      {
        v12 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __acc_auth_protocol_handleCertificateHash_cold_4(a1);
      }

      __acc_auth_protocol_handleCertificateCommon(a1, &v21, v36, &v20, &v20 + 1);
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v13 = *(gLogObjects + 432);
      }

      else
      {
        v13 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = *a1;
        v19 = *(a1 + 280);
        *buf = 136316418;
        *v28 = "__acc_auth_protocol_handleCertificateHash";
        *&v28[8] = 1024;
        *v29 = 1198;
        *&v29[4] = 1024;
        *v30 = v18;
        *&v30[4] = 1024;
        v31 = v19;
        v32 = 1024;
        v33 = HIBYTE(v20);
        v34 = 1024;
        v35 = v20;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] %s:%d sessionID %d, role %d, needCertChainInfo %d, certNeededLen %d, call __acc_auth_protocol_sendCertChainRequestOrChallenge \n", buf, 0x2Au);
      }

      inited = __acc_auth_protocol_sendCertChainRequestOrChallenge(a1, &v21, HIBYTE(v20), v36, v20, a3, a4);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
    }
  }

  else
  {
    inited = 22;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v14 = *(gLogObjects + 432);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *a1;
    v16 = *(a1 + 280);
    *buf = 67109888;
    *v28 = v15;
    *&v28[4] = 1024;
    *&v28[6] = v16;
    *v29 = 1024;
    *&v29[2] = DWORD2(v21);
    *v30 = 1024;
    *&v30[2] = inited;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleCertificateHash: sessionID %d, role %d, certificateDataLen %d, errorNo %d \n", buf, 0x1Au);
  }

  _acc_auth_protocol_cleanupCertificateData(&v21);
  return inited;
}

uint64_t __acc_auth_protocol_handleCertificate(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v5 = a5;
  v6 = a4;
  v44 = 0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v10 = a2[2];
  v11 = &audioProductCerts_endpoint_publish_onceToken;
  if (v10 == 130)
  {
    v38 = a2[3];
    v12 = a2[4] + 1;
    v13 = a2[5];
    v40 = v12 * v13;
    v14 = (v13 + 1023) / v13;
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v15 = *(gLogObjects + 432);
    }

    else
    {
      v15 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a1;
      v36 = *(a1 + 280);
      v16 = (v14 * v13);
      *buf = 67110144;
      *v46 = v35;
      *&v46[4] = 1024;
      *&v46[6] = v36;
      *v47 = 1024;
      *&v47[2] = v12 * v13;
      *v48 = 1024;
      *&v48[2] = (v13 + 1023) / v13;
      *v49 = 1024;
      *&v49[2] = v16;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificate: sessionID %d, role %d, maxDataLen %d, maxCertSegments %d, maxCertSegmentedLen %d. \n", buf, 0x20u);
    }

    else
    {
      v16 = (v14 * v13);
    }

    v6 = a4;
    if (v16 < v40)
    {
      v17 = 12;
      v18 = 1;
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      goto LABEL_26;
    }

    v11 = &audioProductCerts_endpoint_publish_onceToken;
    if (v38)
    {
      if (v13 > a1[94] || (v19 = a1[93] == v12, v5 = a5, !v19))
      {
        v18 = 1;
        v17 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v20 = *(gLogObjects + 432);
        v5 = a5;
      }

      else
      {
        v20 = &_os_log_default;
        v5 = a5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __acc_auth_protocol_handleCertificate_cold_3(a1);
      }

      CertificateData = acc_auth_protocol_setupSegmentedRecv(a1, 0, (a1 + 96), v40, v13);
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      v6 = a4;
      if (CertificateData)
      {
        goto LABEL_24;
      }
    }
  }

  CertificateData = __acc_auth_protocol_processSegmentedMsgInfoCommon(a1, a2, a3, v6, v5, &v44, v10 == 130);
  if (CertificateData)
  {
    goto LABEL_24;
  }

  if (v44 != 1)
  {
    v17 = 0;
    goto LABEL_25;
  }

  v27 = *(a1 + 10);
  v28 = *(a1 + 44);
  v29 = acc_auth_protocol_negotiatedMFi4Cert(a1);
  CertificateData = _acc_auth_protocol_createCertificateData(v27, v28, v29, v42);
  if (CertificateData || (CertificateData = _acc_auth_protocol_setPeerLeafCertificateData(a1, v42), CertificateData))
  {
LABEL_24:
    v17 = CertificateData;
LABEL_25:
    v18 = 1;
    goto LABEL_26;
  }

  v41 = 0;
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52[0] = v30;
  v52[1] = v30;
  v31 = logObjectForModule_16();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = *a1;
    v33 = *(a1 + 280);
    *buf = 136315906;
    *v46 = "__acc_auth_protocol_handleCertificate";
    *&v46[8] = 1024;
    *v47 = 1478;
    *&v47[4] = 1024;
    *v48 = v32;
    *&v48[4] = 1024;
    *v49 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[AccAuth][1Way] %s:%d sessionID %d, role %d, call __acc_auth_protocol_handleCertificateCommon \n", buf, 0x1Eu);
  }

  v34 = __acc_auth_protocol_handleCertificateCommon(a1, v42, v52, &v41, &v41 + 1);
  if (!v34)
  {
    v34 = __acc_auth_protocol_sendCertChainRequestOrChallenge(a1, v42, HIBYTE(v41), v52, v41, v6, v5);
  }

  v17 = v34;
  v18 = 0;
LABEL_26:
  v22 = v11[491];
  if (v22 && gNumLogObjects >= 55)
  {
    v23 = *(v22 + 432);
  }

  else
  {
    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *a1;
    v25 = *(a1 + 280);
    *buf = 67110400;
    *v46 = v24;
    *&v46[4] = 1024;
    *&v46[6] = v25;
    *v47 = 1024;
    *&v47[2] = v18;
    *v48 = 1024;
    *&v48[2] = DWORD2(v42[0]);
    *v49 = 1024;
    *&v49[2] = v44;
    v50 = 1024;
    v51 = v17;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleCertificate: sessionID %d, role %d, cleanupCertData %d, certificateDataLen %d, transferFinished %d, errorNo %d \n", buf, 0x26u);
  }

  if (v18)
  {
    _acc_auth_protocol_cleanupCertificateData(v42);
  }

  if (v44 == 1)
  {
    acc_auth_protocol_cleanupSegmentedRecv(a1);
  }

  return v17;
}

uint64_t __acc_auth_protocol_handleCertificateChainCert(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v5 = a5;
  v6 = a4;
  v43 = 0;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v10 = a2[2];
  v11 = &audioProductCerts_endpoint_publish_onceToken;
  if (v10 != 133)
  {
    goto LABEL_23;
  }

  v33 = a2[3];
  v12 = a2[4] + 1;
  v13 = a2[5];
  v35 = v12 * v13;
  v14 = (v13 + 1023) / v13;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v15 = *(gLogObjects + 432);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v30 = *a1;
    v31 = *(a1 + 280);
    v16 = (v14 * v13);
    buf = 67110144;
    *v46 = v30;
    *&v46[4] = 1024;
    *&v46[6] = v31;
    *v47 = 1024;
    *&v47[2] = v12 * v13;
    *v48 = 1024;
    *&v48[2] = (v13 + 1023) / v13;
    LOWORD(v49[0]) = 1024;
    *(v49 + 2) = v16;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleCertificateChainCert: sessionID %d, role %d, maxDataLen %d, maxCertSegments %d, maxCertSegmentedLen %d. \n", &buf, 0x20u);
  }

  else
  {
    v16 = (v14 * v13);
  }

  v6 = a4;
  if (v16 >= v35)
  {
    v11 = &audioProductCerts_endpoint_publish_onceToken;
    if (v33)
    {
      if (v13 > a1[94] || (v18 = a1[93] == v12, v5 = a5, !v18))
      {
        v17 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v19 = *(gLogObjects + 432);
        v5 = a5;
      }

      else
      {
        v19 = &_os_log_default;
        v5 = a5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __acc_auth_protocol_handleCertificateChainCert_cold_3(a1);
      }

      CertificateData = acc_auth_protocol_setupSegmentedRecv(a1, 0, (a1 + 96), v35, v13);
      v11 = &audioProductCerts_endpoint_publish_onceToken;
      v6 = a4;
      if (CertificateData)
      {
LABEL_24:
        v17 = CertificateData;
        goto LABEL_25;
      }
    }

LABEL_23:
    CertificateData = __acc_auth_protocol_processSegmentedMsgInfoCommon(a1, a2, a3, v6, v5, &v43, v10 == 133);
    if (!CertificateData)
    {
      if (v43 != 1)
      {
        v17 = 0;
        goto LABEL_25;
      }

      CertificateData = _acc_auth_protocol_createCertificateData(*(a1 + 10), *(a1 + 44), 0, &v37);
      if (!CertificateData)
      {
        CertificateData = _acc_auth_protocol_addPeerIntermediateCertificateData(a1, &v37);
        if (!CertificateData)
        {
          v36 = 0;
          *&v26 = 0xAAAAAAAAAAAAAAAALL;
          *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v44[0] = v26;
          v44[1] = v26;
          v27 = logObjectForModule_16();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = *a1;
            v29 = *(a1 + 280);
            buf = 136315906;
            *v46 = "__acc_auth_protocol_handleCertificateChainCert";
            *&v46[8] = 1024;
            *v47 = 1600;
            *&v47[4] = 1024;
            *v48 = v28;
            *&v48[4] = 1024;
            v49[0] = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[AccAuth][1Way] %s:%d sessionID %d, role %d, call __acc_auth_protocol_handleCertificateCommon \n", &buf, 0x1Eu);
          }

          CertificateData = __acc_auth_protocol_handleCertificateCommon(a1, &v37, v44, &v36, &v36 + 1);
          if (!CertificateData)
          {
            v17 = __acc_auth_protocol_sendCertChainRequestOrChallenge(a1, &v37, HIBYTE(v36), v44, v36, v6, v5);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0;
            goto LABEL_25;
          }
        }
      }
    }

    goto LABEL_24;
  }

  v17 = 12;
  v11 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_25:
  v21 = v11[491];
  if (v21 && gNumLogObjects >= 55)
  {
    v22 = *(v21 + 432);
  }

  else
  {
    v22 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = *a1;
    v24 = *(a1 + 280);
    buf = 67110144;
    *v46 = v23;
    *&v46[4] = 1024;
    *&v46[6] = v24;
    *v47 = 1024;
    *&v47[2] = DWORD2(v37);
    *v48 = 1024;
    *&v48[2] = v43;
    LOWORD(v49[0]) = 1024;
    *(v49 + 2) = v17;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleCertificateChainCert: sessionID %d, role %d, certificateDataLen %d, transferFinished %d, errorNo %d \n", &buf, 0x20u);
  }

  _acc_auth_protocol_cleanupCertificateData(&v37);
  if (v43 == 1)
  {
    acc_auth_protocol_cleanupSegmentedRecv(a1);
  }

  return v17;
}

uint64_t __acc_auth_protocol_handleResponse(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  v9 = &audioProductCerts_endpoint_publish_onceToken;
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v10 = *(gLogObjects + 432);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v46 = a5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __acc_auth_protocol_handleResponse_cold_2(a1);
  }

  v48 = 0;
  v11 = a2[2];
  if (v11 == 139)
  {
    v44 = a3;
    v45 = a2[3];
    v12 = a2[4] + 1;
    v13 = a2[5];
    v14 = v13 * v12;
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v16 = *(gLogObjects + 432);
    }

    else
    {
      v16 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v15 = (v13 + 127) / v13;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a1;
      v36 = *(a1 + 280);
      *buf = 67110656;
      v50 = v35;
      v51 = 1024;
      v52 = v36;
      v53 = 1024;
      v54 = v45;
      v55 = 1024;
      v56 = v12;
      v57 = 1024;
      v58 = v13;
      v59 = 1024;
      v60 = v13 * v12;
      v61 = 1024;
      v62 = v15 * v13;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleResponse: sessionID %d, role %d, process responseDataSegment, seg (%d / %d), segLen %d, maxDataLen %d, maxResponseDataLen %d \n", buf, 0x2Cu);
    }

    if (v15 * v13 < v14)
    {
      v17 = 0;
      inited = 12;
LABEL_21:
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      goto LABEL_55;
    }

    if (v45)
    {
      if (v13 > a1[94])
      {
        v17 = 0;
        inited = 1;
        goto LABEL_21;
      }

      v20 = a1[93] == v12;
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      a3 = v44;
      if (!v20)
      {
        v17 = 0;
        inited = 1;
        goto LABEL_55;
      }
    }

    else
    {
      v9 = &audioProductCerts_endpoint_publish_onceToken;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v19 = *(gLogObjects + 432);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __acc_auth_protocol_handleResponse_cold_5(a1);
      }

      v21 = acc_auth_protocol_setupSegmentedRecv(a1, 0, (a1 + 96), v14, v13);
      a3 = v44;
      if (v21)
      {
        inited = v21;
        v17 = 0;
        goto LABEL_55;
      }
    }
  }

  inited = __acc_auth_protocol_processSegmentedMsgInfoCommon(a1, a2, a3, a4, v46, &v48, v11 == 139);
  if (inited || v48 != 1)
  {
    v17 = 0;
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 10);
    v17 = a1[88];
  }

  v23 = v9[491];
  if (v23 && gNumLogObjects >= 55)
  {
    v24 = *(v23 + 432);
  }

  else
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v32 = *a1;
    v33 = *(a1 + 280);
    v34 = a2[2];
    *buf = 67110400;
    v50 = v32;
    v51 = 1024;
    v52 = v33;
    v53 = 1024;
    v54 = v34;
    v55 = 1024;
    v56 = v17;
    v57 = 1024;
    v58 = v48;
    v59 = 1024;
    v60 = inited;
    _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] handleResponse: sessionID %d, role %d, paramID1 %02x, responseLen %d, transferFinished %d, errorNo %d \n", buf, 0x26u);
    if (inited)
    {
      goto LABEL_55;
    }
  }

  else if (inited)
  {
    goto LABEL_55;
  }

  if (v48 == 1)
  {
    if (acc_auth_protocol_negotiatedMFi4Cert(a1))
    {
      if (v17 != 80)
      {
        inited = 80;
        goto LABEL_55;
      }

      v25 = a1 + 1346;
      *(a1 + 1346) = *v22;
      a1[1362] = 16;
      v26 = a1[1216];
      v17 = 64;
      v27 = a1 + 1136;
      v28 = v22 + 16;
      v29 = a1;
      v30 = 16;
      v31 = 64;
    }

    else
    {
      v26 = a1[1216];
      v27 = a1 + 1136;
      v31 = v17;
      v29 = a1;
      v25 = 0;
      v30 = 0;
      v28 = v22;
    }

    inited = _acc_auth_protocol_verifyChallengeResponse(v29, v27, v26, v25, v30, v28, v31);
    if (!inited)
    {
      inited = acc_auth_protocol_initFinishMessage(a1, 0, a4, v46);
    }
  }

  else
  {
    inited = 0;
  }

LABEL_55:
  v37 = v9[491];
  if (v37 && gNumLogObjects >= 55)
  {
    v38 = *(v37 + 432);
  }

  else
  {
    v38 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
  v40 = v48;
  if (v39)
  {
    v41 = *a1;
    v42 = *(a1 + 280);
    *buf = 67110144;
    v50 = v41;
    v51 = 1024;
    v52 = v42;
    v53 = 1024;
    v54 = v17;
    v55 = 1024;
    v56 = v48;
    v57 = 1024;
    v58 = inited;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleResponse: sessionID %d, role %d, responseLen %d, transferFinished %d, errorNo %d \n", buf, 0x20u);
    v40 = v48;
  }

  if (v40)
  {
    _acc_auth_protocol_handleSessionAuthenticationState(a1, inited == 0);
    *(a1 + 1313) = 0u;
    *(a1 + 1329) = 0u;
    *(a1 + 1281) = 0u;
    *(a1 + 1297) = 0u;
    *(a1 + 1249) = 0u;
    *(a1 + 1265) = 0u;
    *(a1 + 1217) = 0u;
    *(a1 + 1233) = 0u;
    acc_auth_protocol_cleanupSegmentedRecv(a1);
  }

  return inited;
}

uint64_t __acc_auth_protocol_handleCertificateCommon(unsigned __int8 *a1, uint64_t *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v8 = 0;
  SigningCertificateHash = 1;
  if (a4 && a2 && a3 && a5)
  {
    v12 = _acc_auth_protocol_decompressCert(a1, a2);
    if (v12)
    {
      SigningCertificateHash = v12;
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    SigningCertificateHash = _acc_auth_protocol_getSigningCertificateHash(a1, a2, a3, 0x20u, a4);
    if ((SigningCertificateHash & 0xFFFFFFFD) != 0)
    {
      goto LABEL_8;
    }

    v18 = *a4;
    if (*a4)
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      _acc_auth_protocol_certificateCacheGetCert(a1, a3, v18, &v20);
      _acc_auth_protocol_cleanupCertificateData(&v20);
    }

    v19 = _acc_auth_protocol_validatePeerCertificateChain(a1);
    v8 = v19 != 0;
    if (v19)
    {
      SigningCertificateHash = SigningCertificateHash;
    }

    else
    {
      SigningCertificateHash = 0;
    }
  }

LABEL_9:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v13 = *(gLogObjects + 432);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *a1;
    v15 = *(a1 + 280);
    if (a4)
    {
      v16 = *a4;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v20) = 67110144;
    DWORD1(v20) = v14;
    WORD4(v20) = 1024;
    *(&v20 + 10) = v15;
    HIWORD(v20) = 1024;
    LODWORD(v21) = v16;
    WORD2(v21) = 1024;
    *(&v21 + 6) = v8;
    WORD5(v21) = 1024;
    HIDWORD(v21) = SigningCertificateHash;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[AccAuth][1Way] handleCertificateCommon: sessionID %d, role %d, certNeededHashLen %d, needCertChainInfo %d, errorNo %d \n", &v20, 0x20u);
  }

  *a5 = v8;
  return SigningCertificateHash;
}

uint64_t __acc_auth_protocol_sendCertChainRequestOrChallenge(unsigned __int8 *a1, uint64_t a2, int a3, const void *a4, unsigned int a5, unsigned __int8 *a6, unsigned int a7)
{
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v13 = *(gLogObjects + 432);
  }

  else
  {
    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = *a1;
    v27 = *(a1 + 280);
    *buf = 67109888;
    *v39 = v26;
    *&v39[4] = 1024;
    *&v39[6] = v27;
    *v40 = 1024;
    *&v40[2] = a3;
    *v41 = 1024;
    *&v41[2] = a5;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] sendCertChainRequestOrChallenge: sessionID %d, role %d, needCertChainInfo %d, certNeededLen %d \n", buf, 0x1Au);
  }

  if (a3)
  {
    if (a4 && (a5 == 32 || a5 == 20))
    {
      inited = acc_auth_protocol_initInfoCommonMessage(a1, 4u, a6, a7);
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v15 = *(gLogObjects + 432);
      }

      else
      {
        v15 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __acc_auth_protocol_sendCertChainRequestOrChallenge_cold_4(a1);
      }

      v18 = acc_auth_protocol_messagePayload(a6, a7, 0, 0, 0);
      v18[2] = 4;
      v18[3] = a5;
      memcpy(v18 + 4, a4, a5);
      a6[3] += 34;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v19 = *(gLogObjects + 432);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *a1;
        v21 = *(a1 + 280);
        v22 = v18[3];
        v23 = a6[3];
        *buf = 136316674;
        *v39 = "__acc_auth_protocol_sendCertChainRequestOrChallenge";
        *&v39[8] = 1024;
        *v40 = 1271;
        *&v40[4] = 1024;
        *v41 = v20;
        *&v41[4] = 1024;
        v42 = v21;
        v43 = 1024;
        v44 = inited;
        v45 = 1024;
        v46 = v22;
        v47 = 1024;
        v48 = v23;
        v24 = "[AccAuth][1Way] %s:%d sessionID %d, role %d, errorNo %d, outMessage certChainRequestLen %d, length %d  \n";
        v25 = v19;
LABEL_44:
        _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, v24, buf, 0x30u);
        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_20:
    inited = 1;
    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v16 = _acc_auth_protocol_challengeSizeForCertificate(a1, a2);
  a1[1216] = v16;
  inited = _acc_auth_protocol_generateChallenge(a1, a2, a1 + 1136, v16);
  if (!inited)
  {
    inited = acc_auth_protocol_initInfoChallengeMessage(a1, a1 + 1136, a1[1216], a6, a7);
    if (gLogObjects && gNumLogObjects >= 55)
    {
      v17 = *(gLogObjects + 432);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v33 = *a1;
      v34 = *(a1 + 280);
      v35 = a6[3];
      v36 = a1[1216];
      *buf = 136316674;
      *v39 = "__acc_auth_protocol_sendCertChainRequestOrChallenge";
      *&v39[8] = 1024;
      *v40 = 1294;
      *&v40[4] = 1024;
      *v41 = v33;
      *&v41[4] = 1024;
      v42 = v34;
      v43 = 1024;
      v44 = inited;
      v45 = 1024;
      v46 = v35;
      v47 = 1024;
      v48 = v36;
      v24 = "[AccAuth][1Way] %s:%d sessionID %d, role %d, errorNo %d, outMessage length %d, challengeDataLen %d \n";
      v25 = v17;
      goto LABEL_44;
    }
  }

LABEL_35:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v28 = *(gLogObjects + 432);
  }

  else
  {
    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *a1;
    v30 = *(a1 + 280);
    v31 = a6[3];
    *buf = 67109888;
    *v39 = v29;
    *&v39[4] = 1024;
    *&v39[6] = v30;
    *v40 = 1024;
    *&v40[2] = inited;
    *v41 = 1024;
    *&v41[2] = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[AccAuth][1Way] sendCertChainRequestOrChallenge: sessionID %d, role %d, errorNo %d, outMessage length %d \n", buf, 0x1Au);
  }

  return inited;
}

uint64_t __acc_auth_protocol_processSegmentedMsgInfoCommon(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char *a6, int a7)
{
  v44 = 0;
  v8 = a2[1];
  updated = 1;
  v10 = v8 > 8 || ((1 << v8) & 0x124) == 0;
  v11 = &audioProductCerts_endpoint_publish_onceToken;
  if (v10)
  {
    goto LABEL_26;
  }

  v14 = a2[3];
  if (a7)
  {
    v15 = a2[5];
    updated = acc_auth_protocol_updateSegmentReceive(a1, a2 + 6, v15, v8, a2[2], v14, a4, a5, &v44);
    v16 = v14;
    goto LABEL_9;
  }

  if (*(a1 + 10))
  {
    v16 = 0;
    v15 = a2[3];
    goto LABEL_9;
  }

  if (a3 > 3)
  {
    v30 = a2 + 4;
    v31 = a3 - 4;
    if ((v14 & 0x80) == 0)
    {
      v15 = a2[3];
      if (v31 < v14)
      {
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v32 = *(gLogObjects + 432);
        }

        else
        {
          v32 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        updated = 1;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_26;
        }

        *buf = 67109632;
        v46 = v14;
        v47 = 1024;
        v48 = v31;
        v49 = 1024;
        v50 = 1;
        v22 = "[AccAuth][1Way] checkAndHandleExtendedLength: inLength %d exceeds maximum length of payload size %d, errorNo %d";
        goto LABEL_88;
      }

LABEL_76:
      v43 = v30;
      if (gLogObjects && gNumLogObjects >= 55)
      {
        v40 = *(gLogObjects + 432);
      }

      else
      {
        v40 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = *a1;
        v42 = *(a1 + 280);
        *buf = 67110400;
        v46 = v41;
        v47 = 1024;
        v48 = v42;
        v49 = 1024;
        v50 = 0;
        v51 = 1024;
        v52 = 0;
        v53 = 1024;
        v54 = v14;
        v55 = 1024;
        v56 = v15;
        _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] processMsgInfoCommon: sessionID %d, role %d, segmented %d, segment %d, inDataLen %d, tempDataLen %d \n", buf, 0x26u);
      }

      v16 = 0;
      updated = 0;
      *(a1 + 10) = v43;
      *(a1 + 44) = v15;
      v44 = 1;
      v11 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_9:
      v17 = v11[491];
      if (v17 && gNumLogObjects >= 55)
      {
        v18 = *(v17 + 432);
      }

      else
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v34 = *a1;
        v35 = *(a1 + 280);
        *buf = 67110400;
        v46 = v34;
        v47 = 1024;
        v48 = v35;
        v49 = 1024;
        v50 = a7;
        v51 = 1024;
        v52 = v16;
        v53 = 1024;
        v54 = v15;
        v55 = 1024;
        v56 = v44;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[AccAuth][1Way] processMsgInfoCommon: sessionID %d, role %d, segmented %d, segment %d, inDataLen %d, transferFinished %d \n", buf, 0x26u);
      }

      if (a6)
      {
        *a6 = v44;
      }

      if (gLogObjects && gNumLogObjects >= 55)
      {
        v19 = *(gLogObjects + 432);
      }

      else
      {
        v19 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = *a1;
        v21 = *(a1 + 280);
        *buf = 67110656;
        v46 = v20;
        v47 = 1024;
        v48 = v21;
        v49 = 1024;
        v50 = a7;
        v51 = 1024;
        v52 = v16;
        v53 = 1024;
        v54 = v15;
        v55 = 1024;
        v56 = v44;
        v57 = 1024;
        v58 = updated;
        v22 = "[AccAuth][1Way] processMsgInfoCommon: sessionID %d, role %d, segmented %d, segment %d, inDataLen %d, transferFinished %d, errorNo %d \n";
        v23 = v19;
        v24 = 44;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v36 = v14 & 0x7F;
    if ((v14 & 0x7F) < 4)
    {
      if (v31 < v36)
      {
        if (gLogObjects && gNumLogObjects >= 55)
        {
          v32 = *(gLogObjects + 432);
        }

        else
        {
          v32 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }
        }

        updated = 1;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_26;
        }

        *buf = 67109632;
        v46 = v14 & 0x7F;
        v47 = 1024;
        v48 = v31;
        v49 = 1024;
        v50 = 1;
        v22 = "[AccAuth][1Way] checkAndHandleExtendedLength: number of bytes %d to get the extended length exceeds maximum length of payload size %d, errorNo %d";
        goto LABEL_88;
      }

      if ((v14 & 0x7F) != 0)
      {
        v15 = 0;
        v37 = a2 + 4;
        v38 = v14 & 0x7F;
        do
        {
          v39 = *v37++;
          v15 = v39 | (v15 << 8);
          --v38;
        }

        while (v38);
        if (v15 > v31 - v36)
        {
          if (gLogObjects && gNumLogObjects >= 55)
          {
            v32 = *(gLogObjects + 432);
          }

          else
          {
            v32 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              platform_connectionInfo_configStreamGetCategories_cold_2();
            }
          }

          updated = 1;
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          *buf = 67109632;
          v46 = v15;
          v47 = 1024;
          v48 = v31 - v36;
          v49 = 1024;
          v50 = 1;
          v22 = "[AccAuth][1Way] checkAndHandleExtendedLength: extended length %d exceeds maximum length of payload size %d, errorNo %d";
          goto LABEL_88;
        }
      }

      else
      {
        v36 = 0;
        v15 = 0;
      }

      v30 += v36;
      goto LABEL_76;
    }

    if (gLogObjects && gNumLogObjects >= 55)
    {
      v32 = *(gLogObjects + 432);
    }

    else
    {
      v32 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    updated = 1;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    *buf = 67109632;
    v46 = v14 & 0x7F;
    v47 = 1024;
    v48 = 3;
    v49 = 1024;
    v50 = 1;
    v22 = "[AccAuth][1Way] checkAndHandleExtendedLength: number of bytes %d to get the extended length exceeds maximum number of %d, errorNo %d";
LABEL_88:
    v23 = v32;
    v24 = 20;
    goto LABEL_25;
  }

  if (gLogObjects && gNumLogObjects >= 55)
  {
    v33 = *(gLogObjects + 432);
  }

  else
  {
    v33 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  updated = 1;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v46 = a3;
    v47 = 1024;
    v48 = 4;
    v22 = "[AccAuth][1Way] processMsgInfoCommon: message payload length %d is less than required minimum length of %d";
    v23 = v33;
    v24 = 14;
    goto LABEL_25;
  }

LABEL_26:
  if (gLogObjects && gNumLogObjects >= 55)
  {
    v25 = *(gLogObjects + 432);
  }

  else
  {
    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *a1;
    v27 = *(a1 + 280);
    *buf = 67109888;
    v46 = v26;
    v47 = 1024;
    v48 = v27;
    v49 = 1024;
    v50 = v8;
    v51 = 1024;
    v52 = updated;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[AccAuth][1Way] processMsgInfoCommon: sessionID %d, role %d, infoType %02x, errorNo %d \n", buf, 0x1Au);
  }

  return updated;
}

unsigned __int8 *OUTLINED_FUNCTION_2_25@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  v4 = *(result + 280);
  return result;
}

void requestAuthorizationForCertSerial(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __requestAuthorizationForCertSerial_block_invoke;
  v8[3] = &unk_100228090;
  v9 = a4;
  v7 = v9;
  [ACCAuthorizationManager requestAuthorizationForCertSerial:a1 withName:a2 providesPower:a3 completionHandler:v8];
}

uint64_t __requestAuthorizationForCertSerial_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t platform_hid_register_descriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCHIDServer sharedServer];
  [v6 registerHIDDescriptor:a1 componentID:a2 dictionary:a3];

  return 1;
}

uint64_t platform_hid_unregister_descriptor(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCHIDServer sharedServer];
  [v4 unregisterHIDDescriptor:a1 componentID:a2];

  return 1;
}

uint64_t platform_hid_unregister_all_descriptors(uint64_t a1)
{
  v2 = +[ACCHIDServer sharedServer];
  [v2 unregisterAllDescriptors:a1];

  return 1;
}

uint64_t platform_hid_in_report(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCHIDServer sharedServer];
  [v6 inReport:a1 componentID:a2 report:a3];

  return 1;
}

uint64_t platform_hid_get_report_response(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[ACCHIDServer sharedServer];
  [v10 getReportResponse:a1 componentID:a2 reportType:a3 reportID:a4 report:a5];

  return 1;
}

unint64_t platform_hid_send_out_report(uint64_t a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"ComponentID", a2);
  CFDictionaryAddValue(Mutable, @"Report", a3);
  v7 = accFeatureHandlers_invokeHandler(a1, 9, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

unint64_t platform_hid_send_get_report(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"ComponentID", a2);
  CFDictionaryAddValue(Mutable, @"ReportType", a3);
  CFDictionaryAddValue(Mutable, @"ReportID", a4);
  v9 = accFeatureHandlers_invokeHandler(a1, 10, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

unint64_t platform_hid_send_component_update(uint64_t a1, const void *a2, char a3)
{
  valuePtr = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ComponentID", a2);
  CFDictionaryAddValue(Mutable, @"Enabled", v6);
  v7 = accFeatureHandlers_invokeHandler(a1, 11, Mutable);
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void platform_hid_incrementUserCount()
{
  v0 = +[ACCHIDServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCHIDServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233CD8];
  }
}

void platform_hid_decrementUserCount()
{
  v0 = +[ACCHIDServer sharedServer];
  [v0 decrementUserCount];
}

uint64_t iAP2_carPlayConnectionType(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 24);
    if (v1 > 8)
    {
      return 0;
    }

    else
    {
      return dword_1001C3AC8[v1];
    }
  }

  return result;
}

double iAP2_carPlaySendAllConnectionEvents(void *a1)
{
  Feature = iap2_feature_getFeature(a1, 0);
  if (a1 && (v3 = *(*a1 + 24), v3 <= 8))
  {
    v4 = dword_1001C3AC8[v3];
  }

  else
  {
    v4 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 52)
  {
    v5 = *(gLogObjects + 408);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1_1();
    }
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[57];
    v7 = *(Feature + 80);
    v8 = *(Feature + 88);
    v14 = 134218496;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory identification accepted and identified for CarPlay. Sending iAP connection times: %f, %f, %f", &v14, 0x20u);
  }

  v9 = a1[57];
  platform_CarPlay_sendConnectionEvent(0, v4);
  v10 = *(Feature + 80);
  platform_CarPlay_sendConnectionEvent(1, v4);
  v11 = *(Feature + 88);
  platform_CarPlay_sendConnectionEvent(2, v4);
  v12 = *(*a1 + 40) / 1000.0 + -978307200.0;
  platform_CarPlay_sendConnectionEvent(5, v4);
  return result;
}

CFNumberRef OUTLINED_FUNCTION_15_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char valuePtr)
{

  return CFNumberCreate(v39, kCFNumberSInt64Type, &valuePtr);
}

id _getPowerPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformPowerPluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

id _getIOKitPowerPluginInstance()
{
  v0 = +[ACCPlatformPluginManager sharedManager];
  v1 = [v0 pluginInstanceWithProtocol:&OBJC_PROTOCOL___ACCPlatformIOKitPowerPluginProtocol fallbackToTransportPlugins:1];

  return v1;
}

id logObjectForModule_19()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 8;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 56);
  }

  return v2;
}

void _isDisablingPowerDuringSleepForApplePencil(uint64_t a1)
{
  v2 = +[ACCPlatformPowerManager sharedManager];
  v3 = [v2 powerAccessories];
  v7 = [v3 objectForKey:a1];

  if ([v7 holdingApplePencilSleepAssertion])
  {
    platform_sleepAssertion_destroyForApplePencil();
    [v7 setHoldingApplePencilSleepAssertion:0];
  }

  v4 = [v7 applePencilBatteryNotificationClientUUID];

  if (v4)
  {
    v5 = _getIOKitPowerPluginInstance();
    v6 = [v7 applePencilBatteryNotificationClientUUID];
    [v5 destroyBatteryNotificationsForClient:v6];

    [v7 setApplePencilBatteryNotificationClientUUID:0];
  }
}

uint64_t platform_power_sendPowerUpdate(const void *a1, int a2, int a3, int a4, int a5)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 8;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v39 = "platform_power_sendPowerUpdate";
    v40 = 1024;
    *v41 = 286;
    *&v41[4] = 2112;
    *&v41[6] = a1;
    v42 = 1024;
    v43 = a2;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = a4;
    v48 = 1024;
    v49 = a5;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[#Power] %s:%d endpointUID %@, powerUpdateType %d: %d, powerUpdateType2 %d: %d", buf, 0x34u);
  }

  if (!acc_userDefaults_BOOLForKey(@"DisablePowerUpdateForCurrentDraw"))
  {
LABEL_54:
    v21 = a5;
    v22 = a4;
    a5 = a3;
    a4 = a2;
    if (!a1)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  if (a4)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        goto LABEL_50;
      }

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v13 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v13 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v39 = "platform_power_sendPowerUpdate";
        v40 = 2112;
        *v41 = a1;
        *&v41[8] = 1024;
        *&v41[10] = 1;
        v42 = 1024;
        v43 = 13;
        v44 = 1024;
        v45 = a5;
        v46 = 1024;
        v47 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType2: %d -> %d, updateValue2: %u -> %d", buf, 0x2Eu);
      }

      a4 = a2;
      a5 = a3;
      goto LABEL_49;
    }

LABEL_27:
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v16 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v39 = "platform_power_sendPowerUpdate";
      v40 = 2112;
      *v41 = a1;
      *&v41[8] = 1024;
      *&v41[10] = 0;
      v42 = 1024;
      v43 = a4;
      v44 = 1024;
      v45 = a3;
      v46 = 1024;
      v47 = a5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType: %d -> %d, updateValue: %u -> %d", buf, 0x2Eu);
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v39 = "platform_power_sendPowerUpdate";
      v40 = 2112;
      *v41 = a1;
      *&v41[8] = 1024;
      *&v41[10] = a4;
      v42 = 1024;
      v43 = 13;
      v44 = 1024;
      v45 = a5;
      v46 = 1024;
      v47 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType2: %d -> %d, updateValue2: %u -> %d", buf, 0x2Eu);
    }

LABEL_49:

    a2 = a4;
    a3 = a5;
    a4 = 13;
    a5 = 0;
    goto LABEL_50;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v14 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v39 = "platform_power_sendPowerUpdate";
    v40 = 2112;
    *v41 = a1;
    *&v41[8] = 1024;
    *&v41[10] = 0;
    v42 = 1024;
    v43 = 13;
    v44 = 1024;
    v45 = a5;
    v46 = 1024;
    v47 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType2: %d -> %d, updateValue2: %u -> %d", buf, 0x2Eu);
  }

  a5 = 0;
  a4 = 13;
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_50:
  if (a2 != 1)
  {
    goto LABEL_54;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v20 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v20 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v39 = "platform_power_sendPowerUpdate";
    v40 = 2112;
    *v41 = a1;
    *&v41[8] = 1024;
    *&v41[10] = 1;
    v42 = 1024;
    v43 = a4;
    v44 = 1024;
    v45 = a3;
    v46 = 1024;
    v47 = a5;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType: %d -> %d, updateValue: %u -> %d", buf, 0x2Eu);
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v24 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v24 = &_os_log_default;
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v39 = "platform_power_sendPowerUpdate";
    v40 = 2112;
    *v41 = a1;
    *&v41[8] = 1024;
    *&v41[10] = a4;
    v42 = 1024;
    v43 = 13;
    v44 = 1024;
    v45 = a5;
    v46 = 1024;
    v47 = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[#Power] %s: endpoint: %@, updateType2: %d -> %d, updateValue2: %u -> %d", buf, 0x2Eu);
  }

  v21 = 0;
  v22 = 13;
  if (a1)
  {
LABEL_70:
    if (a4 != 13)
    {
      CFRetain(a1);
      v26 = dispatch_get_global_queue(0, 0);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __platform_power_sendPowerUpdate_block_invoke;
      v29[3] = &unk_100228118;
      v30 = a4;
      v31 = a5;
      v32 = v22;
      v33 = v21;
      v29[4] = &v34;
      v29[5] = a1;
      dispatch_async(v26, v29);
    }
  }

LABEL_72:
  v27 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v27;
}

void sub_100076844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __platform_power_sendPowerUpdate_block_invoke(uint64_t a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a1 + 52);
  v13 = *(a1 + 48);
  LOWORD(v14) = v2;
  v3 = *(a1 + 60);
  HIDWORD(v14) = *(a1 + 56);
  v16 = -21846;
  v15 = v3;
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v4 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v9 = *(a1 + 56);
    v10 = *(a1 + 60);
    *buf = 138413314;
    v18 = v6;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Power] PowerUpdate: endpoint: %@, updateType: %d, updateValue: %u, updateType2: %d, updateValue2: %u", buf, 0x24u);
  }

  v11 = accFeatureHandlers_invokeHandler(*(a1 + 40), 18, &v13);
  v12 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v11;
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t platform_power_sendSleepUpdate(const void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v1 = 1;
  v9 = 1;
  if (a1)
  {
    CFRetain(a1);
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __platform_power_sendSleepUpdate_block_invoke;
    v5[3] = &unk_100228140;
    v5[4] = &v6;
    v5[5] = a1;
    dispatch_async(v3, v5);

    v1 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v1 & 1;
}

void sub_100076AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __platform_power_sendSleepUpdate_block_invoke(uint64_t a1)
{
  v2 = accFeatureHandlers_invokeHandler(*(a1 + 40), 19, 0);
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t platform_power_sendWakeUpdate(const void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v1 = 1;
  v9 = 1;
  if (a1)
  {
    CFRetain(a1);
    v3 = dispatch_get_global_queue(0, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __platform_power_sendWakeUpdate_block_invoke;
    v5[3] = &unk_100228140;
    v5[4] = &v6;
    v5[5] = a1;
    dispatch_async(v3, v5);

    v1 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v1 & 1;
}

void sub_100076BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __platform_power_sendWakeUpdate_block_invoke(uint64_t a1)
{
  v2 = accFeatureHandlers_invokeHandler(*(a1 + 40), 20, 0);
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t platform_power_setAccessoryPowerMode(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = -1431655766;
  if (_platformPowerUpdateAvailable(a1, a2, a3, &v5))
  {
    return platform_power_sendPowerUpdate(a1, 2, v5, 13, 0);
  }

  else
  {
    return 1;
  }
}

BOOL _platformPowerUpdateAvailable(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = +[ACCPlatformPowerManager sharedManager];
  v9 = [v8 powerAccessories];
  v10 = [v9 objectForKey:a1];

  if (a4)
  {
    v11 = v10 != 0;
    if (!v10)
    {
      [v8 addAccessoryForEndpointUID:a1 andBitmask:0 andOldBitmask:0];
      v12 = [v8 powerAccessories];
      v10 = [v12 objectForKey:a1];
    }

    v13 = [v10 accessoryPowerManager];
    v14 = v13;
    if (a2 > 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v13 connectionPowerModeChangedForFeaturePowerModeUpdate:a2 withObject:a3];
    }

    if (a2 == 3 || v15)
    {
      if ([v14 getCurrentConnectionIsHighPowerMode])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      *a4 = v16;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v14 = 0;
  }

  return v11;
}

unint64_t platform_power_setExternalAccessoryPowerMode(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = -1431655766;
  if (_platformPowerUpdateAvailable(a1, a2, a3, &v5))
  {
    return platform_power_sendEAPowerUpdate(a1, 2, v5, 13, 0);
  }

  else
  {
    return 1;
  }
}

id platform_power_batteryLevelPercent()
{
  v0 = _getIOKitPowerPluginInstance();
  v1 = [v0 getBatteryChargeLevel];

  return v1;
}

void platform_power_registerForSleepWakeUpdate(void *a1)
{
  v6 = a1;
  v1 = +[ACCPlatformPowerManager sharedManager];
  v2 = [v1 powerAccessories];
  v3 = [v2 objectForKey:v6];

  if (v3)
  {
    if ([(ACCPlatformPowerInfo *)v3 requestSleepUpdate])
    {
      goto LABEL_6;
    }

    [(ACCPlatformPowerInfo *)v3 stopPowerUpdates];
    [(ACCPlatformPowerInfo *)v3 setRequestSleepUpdate:1];
  }

  else
  {
    v3 = [[ACCPlatformPowerInfo alloc] initWithEndpointUID:v6 andBitmask:0 andOldBitmask:0];
    [(ACCPlatformPowerInfo *)v3 setRequestSleepUpdate:1];
    v4 = +[ACCPlatformPowerManager sharedManager];
    v5 = [v4 powerAccessories];
    [v5 setObject:v3 forKey:v6];
  }

  [(ACCPlatformPowerInfo *)v3 startPowerUpdates];
LABEL_6:
}

void platform_power_unregisterForSleepWakeUpdate(void *a1)
{
  v5 = a1;
  v1 = +[ACCPlatformPowerManager sharedManager];
  v2 = [v1 powerAccessories];
  v3 = [v2 objectForKey:v5];

  if (v3)
  {
    if ([v3 requestSleepUpdate])
    {
      [v3 stopPowerUpdates];
      [v3 setRequestSleepUpdate:0];
      [v3 startPowerUpdates];
    }

    if (![v3 updateTypesBitmask])
    {
      v4 = +[ACCPlatformPowerManager sharedManager];
      [v4 removeAccessoryForEndpointUID:v5];
    }
  }
}

void platform_power_startPowerUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ACCPlatformPowerManager sharedManager];
  [v6 addAccessoryForEndpointUID:a1 andBitmask:a2 andOldBitmask:a3];
}

void platform_power_stopPowerUpdates(uint64_t a1)
{
  v2 = +[ACCPlatformPowerManager sharedManager];
  [v2 removeAccessoryForEndpointUID:a1];
}

void platform_power_setAvailableCurrent(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _getPowerPluginInstance();
  v7 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  LODWORD(a3) = [v6 setUSBCurrentLimitBase:a2 forConnectionUUID:v7 forceResponse:a3];

  if (a3)
  {
    acc_manager_getEndpointWithUUID(a1);

    platform_analytics_availableCurrentNegotiated();
  }
}

id platform_power_getCurrentLimit(uint64_t a1)
{
  v2 = _getPowerPluginInstance();
  v3 = [v2 USBCurrentLimitInmA:a1];

  return v3;
}

id platform_power_getCableType(uint64_t a1)
{
  v2 = _getPowerPluginInstance();
  v3 = [v2 CableType:a1];

  return v3;
}

void platform_power_setShouldChargeDeviceBattery(const void *a1, int a2, uint64_t a3)
{
  v7 = _getPowerPluginInstance();
  v6 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  [v7 setBatteryPackMode:a2 ^ 1u forConnectionUUID:v6 forceResponse:a3];
}

uint64_t platform_power_getUltraHighPowerModeCurrentLimit(const void *a1)
{
  v2 = _getPowerPluginInstance();
  v3 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  v4 = [v2 accessoryPowerModeCurrentLimitInmA:4 forConnectionUUID:v3];

  return v4;
}

void platform_power_setReserveCurrent(const void *a1, int a2)
{
  v5 = _getPowerPluginInstance();
  v4 = acc_manager_copyConnectionUUIDForEndpointUUID(a1);
  [v5 setUSBCurrentOffset:-a2 forConnectionUUID:v4];
}

id platform_power_isOvercurrentState(uint64_t a1)
{
  v2 = +[ACCPlatformPowerManager sharedManager];
  v3 = [v2 powerAccessories];
  v4 = [v3 objectForKey:a1];

  v5 = [v4 siphoningControl];

  if (v5)
  {
    v6 = [v4 siphoningControl];
    v5 = [v6 getOverCurrentState];
  }

  return v5;
}

void platform_power_resetOvercurrentSiphoning(uint64_t a1)
{
  v6 = +[ACCPlatformPowerManager sharedManager];
  v2 = [v6 powerAccessories];
  v3 = [v2 objectForKey:a1];

  v4 = [v3 siphoningControl];

  if (v4)
  {
    v5 = [v3 siphoningControl];
    [v5 resetOverCurrentSiphoning];
  }
}

void platform_power_setOvercurrentSiphoning(uint64_t a1)
{
  v6 = +[ACCPlatformPowerManager sharedManager];
  v2 = [v6 powerAccessories];
  v3 = [v2 objectForKey:a1];

  v4 = [v3 siphoningControl];

  if (v4)
  {
    v5 = [v3 siphoningControl];
    [v5 setOverCurrentSiphoning];
  }
}

uint64_t OUTLINED_FUNCTION_13_11(int a1)
{

  return platform_power_sendPowerUpdate(v1, 7, a1, 13, 0);
}

void ___requestAuthorization_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 23;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 176);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking accessory authorization...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 23)
  {
    v4 = *(gLogObjects + 176);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    ___requestAuthorization_block_invoke_cold_3(a1);
  }

  CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___requestAuthorization_block_invoke_2;
  v12[3] = &unk_100228168;
  v9 = *(a1 + 56);
  v12[5] = CurrentUnixTimeMS;
  v12[6] = v9;
  v12[4] = *(a1 + 32);
  requestAuthorizationForCertSerial(v7, v6, v8, v12);
  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }
}

void ___requestAuthorization_block_invoke_2(uint64_t a1, int a2)
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects <= 22;
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
      v5 = *(gLogObjects + 176);
    }

    else
    {
      v5 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory is authorized!", v12, 2u);
    }

    CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
    v8 = *(a1 + 40);
    if (gLogObjects && gNumLogObjects >= 23)
    {
      v9 = *(gLogObjects + 176);
    }

    else
    {
      v9 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    v10 = CurrentUnixTimeMS - v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 134217984;
      *&v12[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Authorization response time: %llums", v12, 0xCu);
    }

    if (v10 >= 0x2EF)
    {
      platform_system_resetLightningBusForEndpointWithUUID(*(a1 + 48));
    }

    *v12 = *(a1 + 32);
    acc_manager_callbackForEndpoint(*(a1 + 48), _iap2_session_control_endpointCallback, v12, 0);
  }

  else
  {
    if (v4)
    {
      v6 = *(gLogObjects + 176);
    }

    else
    {
      v6 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Accessory is not authorized!", v12, 2u);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t _iap2_session_control_endpointCallback(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      if (*(a1 + 28) == 4)
      {
        block[5] = v2;
        block[6] = v3;
        v5 = *a2;
        v6 = *(v4 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = ___iap2_session_control_endpointCallback_block_invoke;
        block[3] = &unk_1002281B8;
        block[4] = v5;
        dispatch_async(v6, block);
      }
    }
  }

  return 0;
}

__n128 OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  v14 = *(v11 + 8);
  result = a11;
  *(v13 - 128) = a11.n128_u32[0];
  *(v13 - 124) = v12;
  *(v13 - 120) = 2112;
  *(v13 - 118) = v14;
  return result;
}

id platform_destinationSharing_startDestinationInformation(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCExternalAccessoryServer sharedServer];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 startDestinationSharing:a1 options:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id platform_destinationSharing_stopDestinationInformation(uint64_t a1)
{
  v2 = +[ACCExternalAccessoryServer sharedServer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stopDestinationSharing:a1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id platform_destinationSharing_destinationInformationStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[ACCExternalAccessoryServer sharedServer];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 destinationSharingStatus:a2 success:a3 successfulParams:a4 forAccessoryUUID:a1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void platform_mediaLibrary_accessoryAttached(void *a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "accessoryAttached: UID=%@ windowPerLibrary=%d", &v10, 0x12u);
  }

  if (a1)
  {
    v7 = a1;
    v8 = +[ACCMediaLibraryServer sharedServer];
    [v8 accessoryMediaLibraryAttached:v7 windowPerLibrary:a2];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v8 = *(gLogObjects + 240);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid NULL accessoryUID", &v10, 2u);
    }
  }
}

void platform_mediaLibrary_accessoryDetached(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 31;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "accessoryDetached: UID=%@", &v8, 0xCu);
  }

  if (a1)
  {
    v5 = a1;
    v6 = +[ACCMediaLibraryServer sharedServer];
    [v6 accessoryMediaLibraryDetached:v5];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v6 = *(gLogObjects + 240);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid NULL accessoryUID", &v8, 2u);
    }
  }
}

void platform_mediaLibrary_accessoryUpdate(void *a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "accessoryUpdate: UID=%@ windowPerLibrary=%d", &v10, 0x12u);
  }

  if (a1)
  {
    v7 = a1;
    v8 = +[ACCMediaLibraryServer sharedServer];
    [v8 accessoryMediaLibraryUpdate:v7 windowPerLibrary:a2];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 31)
    {
      v8 = *(gLogObjects + 240);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ERROR: Invalid NULL accessoryUID", &v10, 2u);
    }
  }
}

void platform_mediaLibrary_requestLibraryInfoUpdate(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 31;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "requestLibraryInfoUpdate: UID=%@", &v7, 0xCu);
  }

  v5 = a1;
  v6 = +[ACCMediaLibraryServer sharedServer];
  [v6 requestMediaLibraryUpdate:v5];
}

void platform_mediaLibrary_confirmLibraryUpdate(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 31;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v15 = 138413058;
    v16 = a1;
    v17 = 2112;
    v18 = a2;
    v19 = 2112;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "confirmLibraryUpdate: accessoryUID=%@ libraryUID=%@ lastRevision=%@ updateCount=%d", &v15, 0x26u);
  }

  if (a1 && a2)
  {
    if (a4)
    {
      v11 = a3;
      v12 = a2;
      v13 = a1;
      v14 = +[ACCMediaLibraryServer sharedServer];
      [v14 confirmUpdate:v13 library:v12 lastRevision:v11 updateCount:a4];
    }
  }
}

void platform_mediaLibrary_confirmLibraryPlaylistContentUpdate(void *a1, void *a2, void *a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = a1;
    v15 = 2112;
    v16 = a2;
    v17 = 2112;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "confirmLibraryPlaylistContentUpdate: accessoryUID=%@ libraryUID=%@ lastRevision=%@", &v13, 0x20u);
  }

  if (a1)
  {
    if (a2)
    {
      v9 = a3;
      v10 = a2;
      v11 = a1;
      v12 = +[ACCMediaLibraryServer sharedServer];
      [v12 confirmPlaylistContentUpdate:v11 library:v10 lastRevision:v9];
    }
  }
}

uint64_t platform_mediaLibrary_startMediaLibraryUpdate(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, unsigned int a9, uint64_t a10)
{
  if (a8)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 31;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v19 = &_os_log_default;
    v18 = &_os_log_default;
  }

  else
  {
    v19 = *(gLogObjects + 240);
  }

  v20 = v16 | a7;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138414082;
    v27 = a1;
    v28 = 2112;
    v29 = a2;
    v30 = 2112;
    v31 = a3;
    v32 = 2048;
    v33 = a4;
    v34 = 2048;
    v35 = a5;
    v36 = 2048;
    v37 = a10;
    v38 = 1024;
    v39 = a9;
    v40 = 1024;
    v41 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "startMediaLibraryUpdate: accessoryUID=%@ libraryUID=%@ lastRevision=%@ itemProp=%llxh playlistProp=%llxh playlistContentProp=%llxh contentStyle=%d reqOptions=%xh", buf, 0x4Au);
  }

  v21 = a3;
  v22 = a2;
  v23 = a1;
  v24 = +[ACCMediaLibraryServer sharedServer];
  [v24 startMediaLibraryUpdate:v23 library:v22 lastRevision:v21 mediaItemProperties:a4 playlistProperties:a5 playlistContentStyle:a9 playlistContentProperties:a10 reqOptions:v20];

  return 1;
}

uint64_t platform_mediaLibrary_stopMediaLibraryUpdate(void *a1, void *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "stopMediaLibraryUpdate: accessoryUID=%@ libraryUID=%@", &v11, 0x16u);
  }

  v7 = a2;
  v8 = a1;
  v9 = +[ACCMediaLibraryServer sharedServer];
  [v9 stopMediaLibraryUpdate:v8 library:v7];

  return 1;
}

uint64_t platform_mediaLibrary_playCurrentSelection(void *a1, void *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = a1;
    v13 = 2112;
    v14 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "playCurrentSelection: accessoryUID=%@ libraryUID=%@", &v11, 0x16u);
  }

  v7 = a2;
  v8 = a1;
  v9 = +[ACCMediaLibraryServer sharedServer];
  [v9 playCurrentSelection:v8 library:v7];

  return 1;
}

uint64_t platform_mediaLibrary_playItems(void *a1, void *a2, uint64_t *a3, unsigned int a4, uint64_t a5)
{
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 31;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v21 = 138413058;
    v22 = a1;
    v23 = 2112;
    v24 = a2;
    v25 = 1024;
    v26 = a4;
    v27 = 1024;
    v28 = a5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "playItems: accessoryUID=%@ libraryUID=%@ itemPersistentIDCount=%u startingIndex=%u", &v21, 0x22u);
  }

  v13 = a4;
  v14 = [[NSMutableArray alloc] initWithCapacity:a4];
  if (a4)
  {
    do
    {
      v15 = *a3++;
      v16 = [NSNumber numberWithUnsignedLongLong:v15];
      [v14 addObject:v16];

      --v13;
    }

    while (v13);
  }

  v17 = a2;
  v18 = a1;
  v19 = +[ACCMediaLibraryServer sharedServer];
  [v19 playItems:v18 library:v17 itemList:v14 startIndex:a5];

  return 1;
}

uint64_t platform_mediaLibrary_playCollection(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 31;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 138413570;
    v21 = a1;
    v22 = 2112;
    v23 = a2;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a4;
    v28 = 1024;
    v29 = a5;
    v30 = 2048;
    v31 = a6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "playCollection: accessoryUID=%@ libraryUID=%@ collectionPersistentID=%llu collectionType=%d startingIndex=%u startingItemPersistentID=%llu", &v20, 0x36u);
  }

  v15 = a2;
  v16 = a1;
  v17 = +[ACCMediaLibraryServer sharedServer];
  v18 = v17;
  if (a6)
  {
    [v17 playCollection:v16 library:v15 collection:a3 type:a4 startItem:a6];
  }

  else
  {
    [v17 playCollection:v16 library:v15 collection:a3 type:a4 startIndex:a5];
  }

  return 1;
}

uint64_t platform_mediaLibrary_playAllSongs(void *a1, void *a2, uint64_t a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 31;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412802;
    v14 = a1;
    v15 = 2112;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "playAllSongs: accessoryUID=%@ libraryUID=%@ startingItemPersistentID=%llu", &v13, 0x20u);
  }

  v9 = a2;
  v10 = a1;
  v11 = +[ACCMediaLibraryServer sharedServer];
  [v11 playAllSongs:v10 library:v9 startItem:a3];

  return 1;
}

unint64_t platform_mediaLibrary_infoUpdateHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 31;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v4)
    {
      v8 = @".";
    }

    else
    {
      v8 = @"nil ";
    }

    if (v4)
    {
      v9 = [v4 count];
    }

    else
    {
      v9 = 0;
    }

    v13 = 138412802;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "infoUpdateHandler %@ libraryInfoList(%@count=%lu)", &v13, 0x20u);
  }

  v10 = malloc_type_malloc(0x38uLL, 0x10E204079BD9B99uLL);
  *v10 = 0;
  v10[6] = 0;
  v10[1] = v4;
  v11 = accFeatureHandlers_invokeHandler(v3, 13, v10);
  if ((v11 & 1) == 0)
  {
    platform_mediaLibrary_deleteParams(v10);
  }

  return v11;
}

void platform_mediaLibrary_deleteParams(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      v8 = a1[1];
      if (v8)
      {
        CFRelease(v8);
        a1[1] = 0;
      }

      v4 = (a1 + 3);
      v3 = a1[3];
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      v5 = a1[1];
      if (v5)
      {
        CFRelease(v5);
        a1[1] = 0;
      }

      v6 = a1[2];
      if (v6)
      {
        CFRelease(v6);
        a1[2] = 0;
      }

      v4 = (a1 + 5);
      v3 = a1[5];
      if (!v3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (v2 > 1)
    {
      goto LABEL_15;
    }

    v4 = (a1 + 1);
    v3 = a1[1];
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  CFRelease(v3);
  *v4 = 0;
LABEL_15:
  v7 = a1[6];
  if (v7)
  {
    a1[6] = 0;
  }

  free(a1);
}

unint64_t platform_mediaLibrary_libraryStateUpdateHandler(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 31;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v11 = &_os_log_default;
    v10 = &_os_log_default;
  }

  else
  {
    v11 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 138413058;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "libraryStateUpdateHandler %@ library:%@ statetype=%d enabled=%d", &v15, 0x22u);
  }

  v12 = malloc_type_malloc(0x38uLL, 0x10E204079BD9B99uLL);
  *v12 = 1;
  v12[6] = 0;
  v12[1] = v8;
  *(v12 + 4) = a3;
  *(v12 + 20) = a4;
  v13 = accFeatureHandlers_invokeHandler(v7, 14, v12);
  if ((v13 & 1) == 0)
  {
    platform_mediaLibrary_deleteParams(v12);
  }

  return v13;
}

unint64_t platform_mediaLibrary_updateHandler(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 31;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    if (v9)
    {
      v13 = @".";
    }

    else
    {
      v13 = @"nil ";
    }

    v17 = 138413314;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 1024;
    v22 = a3;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "updateHandler %@ library:%@ startFull=%d data:(%@count=%lu)", &v17, 0x30u);
  }

  v14 = malloc_type_malloc(0x38uLL, 0x10E204079BD9B99uLL);
  *v14 = 2;
  v14[6] = 0;
  v14[1] = v8;
  *(v14 + 16) = a3;
  v14[3] = v9;
  v15 = accFeatureHandlers_invokeHandler(v7, 15, v14);
  if ((v15 & 1) == 0)
  {
    platform_mediaLibrary_deleteParams(v14);
  }

  return v15;
}

unint64_t platform_mediaLibrary_updatePlaylistContentHandler(void *a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a6;
  if (gLogObjects)
  {
    v15 = gNumLogObjects < 31;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v16 = &_os_log_default;
  }

  else
  {
    v17 = *(gLogObjects + 240);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    if (v14)
    {
      v18 = @".";
    }

    else
    {
      v18 = @"nil ";
    }

    v22 = 138413826;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2048;
    v29 = a4;
    v30 = 1024;
    v31 = a5;
    v32 = 2112;
    v33 = v18;
    v34 = 2048;
    v35 = [v14 count];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "updatePlaylistContentHandler %@ library:%@ revision:%@ persistentID=%llu style=%d data:(%@count=%lu)", &v22, 0x44u);
  }

  v19 = malloc_type_malloc(0x38uLL, 0x10E204079BD9B99uLL);
  *v19 = 3;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = a4;
  *(v19 + 8) = a5;
  v19[5] = v14;
  v19[6] = 0;
  v20 = accFeatureHandlers_invokeHandler(v11, 16, v19);
  if ((v20 & 1) == 0)
  {
    platform_mediaLibrary_deleteParams(v19);
  }

  return v20;
}

uint64_t platform_mediaLibrary_getStructUpdateItem(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a3)
    {
      if (a2 && *v4 == 2)
      {
        v6 = *(v4 + 48);
        if (v6)
        {
          *(v4 + 48) = 0;
        }

        v7 = [[ACCMediaLibraryUpdateItem alloc] initWithMediaLibrary:*(v4 + 8) dict:a2];
        [(ACCMediaLibraryUpdateItem *)v7 fillStruct:a3];
        *(v4 + 48) = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t platform_mediaLibrary_getStructUpdatePlaylist(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a3)
    {
      if (a2 && *v4 == 2)
      {
        v6 = *(v4 + 48);
        if (v6)
        {
          *(v4 + 48) = 0;
        }

        v7 = [[ACCMediaLibraryUpdatePlaylist alloc] initWithMediaLibrary:*(v4 + 8) dict:a2];
        [(ACCMediaLibraryUpdatePlaylist *)v7 fillStruct:a3];
        *(v4 + 48) = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t platform_mediaLibrary_getStructPlaylistContentItem(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a3)
    {
      if (a2 && *v4 == 3)
      {
        v6 = *(v4 + 48);
        if (v6)
        {
          *(v4 + 48) = 0;
        }

        v7 = [[ACCMediaLibraryUpdatePlaylistContentItem alloc] initWithMediaLibrary:*(v4 + 8) playlistPersistentID:*(v4 + 24) dict:a2];
        [(ACCMediaLibraryUpdatePlaylistContentItem *)v7 fillStruct:a3];
        *(v4 + 48) = v7;
        return 1;
      }
    }
  }

  return result;
}

void platform_mediaLibrary_incrementUserCount()
{
  v0 = +[ACCMediaLibraryServer sharedServer];
  [v0 incrementUserCount];

  v1 = +[ACCMediaLibraryServer sharedServer];
  v2 = [v1 featureUserCount];

  if (v2 == 1)
  {
    v3 = +[ACCFeaturePluginManager sharedManager];
    [v3 startPlugInsWithClasses:&off_100233CF0];
  }
}

void platform_mediaLibrary_decrementUserCount()
{
  v0 = +[ACCMediaLibraryServer sharedServer];
  [v0 decrementUserCount];
}

void *logObjectForModule_20()
{
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 41)
  {
    return *(gLogObjects + 320);
  }

  v2 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    logObjectForModule_cold_1_0(v0, v1, v3);
  }

  return v2;
}

void _handleIdentificationRejection_1(uint64_t a1)
{
  Feature = iap2_feature_getFeature(a1, 0x14u);
  if (Feature)
  {
    v2 = Feature;
    v3 = *(Feature + 8);
    if (v3)
    {
      CFRelease(v3);
      v2[1] = 0;
    }

    v4 = v2[2];
    if (v4)
    {
      CFRelease(v4);
      v2[2] = 0;
    }

    v5 = v2[3];
    if (v5)
    {
      CFRelease(v5);
      v2[3] = 0;
    }

    v6 = v2[4];
    if (v6)
    {
      CFRelease(v6);
      v2[4] = 0;
    }

    v7 = v2[14];
    if (v7)
    {
      CFRelease(v7);
      v2[14] = 0;
    }

    v8 = v2[5];
    if (v8)
    {
      CFRelease(v8);
      v2[5] = 0;
    }

    v9 = v2[6];
    if (v9)
    {
      CFRelease(v9);
      v2[6] = 0;
    }
  }
}

__n128 OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __n128 a25)
{
  result = a25;
  *(v27 - 128) = a25.n128_u32[0];
  *(v27 - 124) = v26;
  *(v27 - 116) = 1024;
  *(v27 - 114) = v25;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 - 124) = a2;
  *(v2 - 120) = 1024;
  *(v2 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t result)
{
  *(v1 - 120) = 1024;
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t result)
{
  *(v1 - 140) = result;
  v2 = *(v1 - 132);
  return result;
}

void OUTLINED_FUNCTION_27_4(float a1)
{
  *(v2 - 128) = a1;
  *(v2 - 124) = v1;
  *(v2 - 120) = 1024;
}

uint64_t OUTLINED_FUNCTION_29_4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v3 - 118) = a2;
  *(v3 - 114) = v2;
  *(v3 - 112) = result;
  return result;
}

CFStringRef OUTLINED_FUNCTION_31_5(char *cStr)
{

  return CFStringCreateWithCString(v1, cStr, 0x8000100u);
}

void *logObjectForModule_21()
{
  v0 = gLogObjects;
  if (gLogObjects && gNumLogObjects >= 51)
  {
    return *(gLogObjects + 400);
  }

  v1 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    iap2_sessionFileTransfer_deleteFileTransfer_cold_1(v0);
  }

  return v1;
}

const void *_copyUUIDForComponentID(CFDictionaryRef *a1, __int16 a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  Value = CFDictionaryGetValue(*a1, v3);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

uint64_t _getComponentIDForUUID(uint64_t a1, const void *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return v2;
}

uint64_t _checkIdentificationInfo_5(uint64_t a1)
{
  v6 = 0;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &gskMsgOOBBTPairing2MainList, 4u, &v6);
  v3 = v2;
  if (v6 == 1 && v2 == 0)
  {
    iap2_features_createFeature(a1, 0x19u);
    iap2_identification_setIdentifiedForFeature(a1);
  }

  return v3;
}

void OUTLINED_FUNCTION_3_26(float a1)
{
  *(v3 - 176) = a1;
  *(v3 - 172) = v1;
  *(v3 - 164) = 1024;
  *(v3 - 162) = v2;
}

__n128 OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  result = a11;
  v15 = *(a14 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_20_8()
{
  result = *(v1 - 288);
  *(v1 - 176) = result.n128_u32[0];
  *(v1 - 172) = v0;
  *(v1 - 164) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1)
{

  return iAP2MsgAddU16Param(a1, 0, 0, v1);
}

CFMutableDictionaryRef OUTLINED_FUNCTION_31_6()
{

  return CFDictionaryCreateMutable(v0, 1, v1, v2);
}

void *mfi4Auth_endpoint_create(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mfi4Auth_endpoint_create", buf, 2u);
  }

  if (!a1)
  {
    mfi4Auth_endpoint_create_cold_3();
    return *buf;
  }

  v3 = *(a1 + 16);
  if (!v3 || (Copy = CFStringCreateCopy(kCFAllocatorDefault, v3)) == 0)
  {
    mfi4Auth_endpoint_create_cold_2();
    return *buf;
  }

  v5 = Copy;
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040DAC1E976uLL);
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = dispatch_queue_create("mfi4AuthProtocolQ", 0);
  v6[2] = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  dispatch_set_context(v7, v6);
  dispatch_set_finalizer_f(v6[2], _mfi4Auth_endpoint_dispatchQueueFinalizer);
  *v6 = a1;
  *(v6 + 12) = 0;
  if (acc_endpoint_getTransportType(a1) == 13)
  {
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6[2]);
    v6[4] = v8;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = __mfi4Auth_endpoint_create_block_invoke;
    handler[3] = &__block_descriptor_tmp_8;
    handler[4] = v6;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(v6[4], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v6[4]);
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6[2]);
  v6[5] = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = __mfi4Auth_endpoint_create_block_invoke_2;
  v16[3] = &__block_descriptor_tmp_3_0;
  v16[4] = v6;
  dispatch_source_set_event_handler(v9, v16);
  dispatch_source_set_timer(v6[5], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v6[5]);
  acc_platform_packetLogging_logEvent(*v6, "ATTACH", "MFi4Auth accessory attached!", v10, v11, v12, v13, v14, v16[0]);
  if (!_mfi4Auth_endpoint_initSession(v6, v5))
  {
LABEL_16:
    CFRelease(v5);
  }

  return v6;
}

void _mfi4Auth_endpoint_dispatchQueueFinalizer(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 19;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  else
  {
    v3 = *(gLogObjects + 144);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "_mfi4Auth_endpoint_dispatchQueueFinalizer";
    v6 = 2048;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: protocolEndpoint %p", &v4, 0x16u);
  }

  if (a1)
  {
    _mfi4Auth_endpoint_cleanupSession(a1);
    free(a1);
  }
}

uint64_t __mfi4Auth_endpoint_create_block_invoke(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "timerSource: close NFC session", v4, 2u);
  }

  return acc_endpoint_setProperty(**(a1 + 32), kCFACCProperties_Endpoint_NFC_RequestSessionOpen, kCFBooleanFalse);
}

void __mfi4Auth_endpoint_create_block_invoke_2(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v2 = *(gLogObjects + 440);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 48);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "authTimer: timeout!!!, authStatus %{coreacc:ACCAuthInfo_Status_t}d", v5, 8u);
  }

  v4 = *(a1 + 32);
  if (!*(v4 + 48))
  {
    mfi4Auth_protocol_handle_AuthState(*(v4 + 8));
  }
}

BOOL _mfi4Auth_endpoint_initSession(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10B0040BEFBFFB3uLL);
  *(a1 + 8) = v4;
  v5 = *a1;
  LOBYTE(valuePtr) = 0;
  v6 = MFAADeviceIdentityCertsExist();
  if (v5)
  {
    v7 = acc_endpoint_copyProperty(v5);
    v8 = v6;
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
      v8 = (valuePtr == 0) & v6;
    }
  }

  else
  {
    v8 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v9 = *(gLogObjects + 440);
  }

  else
  {
    v9 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v10 = v5[2];
    }

    else
    {
      v10 = 0;
    }

    *buf = 136316162;
    v29 = "_mfi4Auth_endpoint_isEndpointSupportsMutualAuth";
    v30 = 2112;
    *v31 = v10;
    *&v31[8] = 1024;
    *v32 = v8;
    *&v32[4] = 1024;
    *v33 = valuePtr;
    *&v33[4] = 1024;
    *v34 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: endpointUUID %@, EndpointSupportsMutualAuth %d, (bOneWayOnly %d, deviceIdentityCertsExist %d)", buf, 0x28u);
  }

  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if ((v6 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v13 = *(gLogObjects + 440);
    }

    else
    {
      v13 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "_mfi4Auth_endpoint_isEndpointSupportsMutualAuth";
      v30 = 1024;
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: deviceIdentityCertsExist %d, trigger re-init for next time.", buf, 0x12u);
    }

    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, &__block_literal_global_18);
    v11 = gLogObjects;
    v12 = gNumLogObjects;
  }

  if (v11 && v12 >= 56)
  {
    v15 = *(v11 + 440);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    _mfi4Auth_endpoint_initSession_cold_4(a2, v8, v15);
  }

  valuePtr = 0;
  v26 = 0;
  v16 = acc_userDefaults_BOOLForKey(@"MFi4ECDSADisallow");
  v17 = acc_userDefaults_BOOLForKey(@"MFi4SigmaIRequired");
  v18 = acc_userDefaults_BOOLForKey(@"MFi4ECDSAOnly");
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v19 = *(gLogObjects + 440);
  }

  else
  {
    v19 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136316674;
    v29 = "_mfi4Auth_endpoint_initSession";
    v30 = 1024;
    *v31 = (v18 ^ 1) & (v17 | v8);
    *&v31[4] = 1024;
    *&v31[6] = v16 ^ 1;
    *v32 = 1024;
    *&v32[2] = v8;
    *v33 = 1024;
    *&v33[2] = v17 & 1;
    *v34 = 1024;
    *&v34[2] = v18;
    v35 = 1024;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: allowSigmaI %d, allowOneWay %d, (endpointSupportsMutualAuth %d, mfi4SigmaIRequired %d, mfi4ECDSAOnly %d, mfi4ECDSADisallow %d)", buf, 0x30u);
  }

  if (((v18 ^ 1) & (v17 | v8)) != 0)
  {
    LOBYTE(valuePtr) = 2;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  if ((v16 & 1) == 0)
  {
    *(&valuePtr | v20++) = 0;
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v21 = *(gLogObjects + 440);
  }

  else
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = BYTE1(valuePtr);
    if (v20 <= 1)
    {
      v22 = -1;
    }

    *buf = 136316674;
    v29 = "_mfi4Auth_endpoint_initSession";
    v30 = 1024;
    *v31 = valuePtr;
    *&v31[4] = 1024;
    *&v31[6] = v22;
    *v32 = 1024;
    *&v32[2] = -1;
    *v33 = 1024;
    *&v33[2] = 0;
    *v34 = 1024;
    *&v34[2] = -1;
    v35 = 1024;
    v36 = -1;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s: supportedAuthTypes [%d %d %d], supportedCapabilities [%d %d %d]", buf, 0x30u);
  }

  inited = mfi4Auth_protocol_initSessionCommon(v4, a2, 0x400u, &valuePtr, v20, &v26, 1u);
  if (inited)
  {
    v24 = malloc_type_calloc(1uLL, 0xD0uLL, 0x1070040080AB579uLL);
    v4[89] = v24;
    v24[6] = CFDictionaryCreateMutable(kCFAllocatorDefault, 64, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 24) = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    _mfi4Auth_endpoint_initSession_cold_7();
  }

  return inited;
}