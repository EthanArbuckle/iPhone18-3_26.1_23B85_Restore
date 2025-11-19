@interface ACCCarPlayService
- (void)carPlayAppLinksStateForCertSerial:(id)a3 withReply:(id)a4;
- (void)carPlayIconStateForCertSerial:(id)a3 andAppCategories:(unint64_t)a4 withReply:(id)a5;
- (void)carPlaySendConnectionTimeEvent:(unint64_t)a3 connectionType:(unint64_t)a4 eventTime:(id)a5 withReply:(id)a6;
- (void)filterMatchingDigitalCarKeys:(id)a3 forAccessory:(id)a4 withReply:(id)a5;
- (void)isCarPlayPairedWithCertSerial:(id)a3 withReply:(id)a4;
- (void)isWirelessCarPlayAllowedForCertSerial:(id)a3 withReply:(id)a4;
@end

@implementation ACCCarPlayService

- (void)isCarPlayPairedWithCertSerial:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  if (isCarPlayPairedWithCertSerial_withReply__onceToken != -1)
  {
    [ACCCarPlayService isCarPlayPairedWithCertSerial:withReply:];
  }

  v8 = isCarPlayPairedWithCertSerial_withReply___CRIsPairedWithCertificateSerialNumber;
  if (isCarPlayPairedWithCertSerial_withReply___CRIsPairedWithCertificateSerialNumber)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __61__ACCCarPlayService_isCarPlayPairedWithCertSerial_withReply___block_invoke_2;
    v16[3] = &unk_100008560;
    v18 = &v19;
    v9 = v7;
    v17 = v9;
    v8(v5, v16);
    v10 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v11 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v11 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService isCarPlayPairedWithCertSerial:withReply:];
      }
    }

    v12 = v17;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] _CRIsPairedWithCertificateSerialNumber soft link failed", v15, 2u);
    }
  }

  v6[2](v6, *(v20 + 24));
  _Block_object_dispose(&v19, 8);
}

- (void)isWirelessCarPlayAllowedForCertSerial:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  if (isWirelessCarPlayAllowedForCertSerial_withReply__onceToken != -1)
  {
    [ACCCarPlayService isWirelessCarPlayAllowedForCertSerial:withReply:];
  }

  v8 = isWirelessCarPlayAllowedForCertSerial_withReply___CRAllowsConnectionsForCertificateSerialNumber;
  if (isWirelessCarPlayAllowedForCertSerial_withReply___CRAllowsConnectionsForCertificateSerialNumber)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __69__ACCCarPlayService_isWirelessCarPlayAllowedForCertSerial_withReply___block_invoke_2;
    v16[3] = &unk_100008560;
    v18 = &v19;
    v9 = v7;
    v17 = v9;
    v8(v5, v16);
    v10 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v11 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v11 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService isWirelessCarPlayAllowedForCertSerial:withReply:];
      }
    }

    v12 = v17;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] _CRAllowsConnectionsForCertificateSerialNumber soft link failed", v15, 2u);
    }
  }

  v6[2](v6, *(v20 + 24));
  _Block_object_dispose(&v19, 8);
}

- (void)carPlayAppLinksStateForCertSerial:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = dispatch_semaphore_create(0);
  if (carPlayAppLinksStateForCertSerial_withReply__onceToken != -1)
  {
    [ACCCarPlayService carPlayAppLinksStateForCertSerial:withReply:];
  }

  v8 = carPlayAppLinksStateForCertSerial_withReply___CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber;
  if (carPlayAppLinksStateForCertSerial_withReply___CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __65__ACCCarPlayService_carPlayAppLinksStateForCertSerial_withReply___block_invoke_2;
    v16[3] = &unk_1000085C8;
    v18 = &v19;
    v9 = v7;
    v17 = v9;
    v8(v5, v16);
    v10 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v11 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v11 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService carPlayAppLinksStateForCertSerial:withReply:];
      }
    }

    v12 = v17;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v12 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v12 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] _CRIsEnhancedIntegrationEnabledWithCertificateSerialNumber soft link failed", v15, 2u);
    }
  }

  v6[2](v6, v20[3]);
  _Block_object_dispose(&v19, 8);
}

intptr_t __65__ACCCarPlayService_carPlayAppLinksStateForCertSerial_withReply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)carPlayIconStateForCertSerial:(id)a3 andAppCategories:(unint64_t)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = WeakLinkClass(@"CRSIconLayoutController", 7uLL);
  if (v10)
  {
    v11 = objc_alloc_init(v10);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __78__ACCCarPlayService_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke;
    v18[3] = &unk_1000085F0;
    v20 = &v21;
    v12 = v9;
    v19 = v12;
    [v11 exportIconStateForCertificateSerial:v7 categories:a4 completion:v18];
    v13 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v12, v13))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v14 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v14 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService carPlayIconStateForCertSerial:andAppCategories:withReply:];
      }
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v11 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v11 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] CRSIconLayoutControllerClass soft link failed", v17, 2u);
    }
  }

  v8[2](v8, v22[5]);
  _Block_object_dispose(&v21, 8);
}

void __78__ACCCarPlayService_carPlayIconStateForCertSerial_andAppCategories_withReply___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)filterMatchingDigitalCarKeys:(id)a3 forAccessory:(id)a4 withReply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] accessoryUUID: %@ filterMatchingDigitalCarKeys: %@", buf, 0x16u);
  }

  if (filterMatchingDigitalCarKeys_forAccessory_withReply__onceToken == -1)
  {
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    [ACCCarPlayService filterMatchingDigitalCarKeys:forAccessory:withReply:];
    if (!v7)
    {
LABEL_24:
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v15 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v15 = &_os_log_default;
        v17 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService filterMatchingDigitalCarKeys:forAccessory:withReply:];
      }

      v14 = 0;
      goto LABEL_33;
    }
  }

  if (!filterMatchingDigitalCarKeys_forAccessory_withReply___SESEndPointFilterDigitalCarKeys)
  {
    goto LABEL_24;
  }

  v20 = 0;
  v13 = filterMatchingDigitalCarKeys_forAccessory_withReply___SESEndPointFilterDigitalCarKeys(v7, &v20);
  v14 = v20;
  if (!v13)
  {
    if (gLogObjects && gNumLogObjects >= 7)
    {
      v15 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ACCCarPlayService filterMatchingDigitalCarKeys:forAccessory:withReply:];
    }

LABEL_33:

    v13 = 0;
  }

  if (gLogObjects && gNumLogObjects >= 7)
  {
    v18 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
    }

    v18 = &_os_log_default;
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] matched keys: %@", buf, 0xCu);
  }

  v9[2](v9, v13, v14);
}

- (void)carPlaySendConnectionTimeEvent:(unint64_t)a3 connectionType:(unint64_t)a4 eventTime:(id)a5 withReply:(id)a6
{
  v9 = a5;
  v10 = a6;
  if (a3 - 1 > 4)
  {
    v11 = @"iAP Connection Start";
  }

  else
  {
    v11 = *(&off_100008678 + a3 - 1);
  }

  if (a4 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4 + 4;
  }

  v13 = dispatch_semaphore_create(0);
  v14 = WeakLinkClass(@"CARConnectionTimeStore", 4uLL);
  v15 = WeakLinkClass(@"CARConnectionEvent", 4uLL);
  if (gLogObjects)
  {
    v16 = gNumLogObjects <= 6;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (v14 && (v18 = v15) != 0)
  {
    if (v17)
    {
      v19 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v19 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v41 = v11;
      v42 = 2048;
      v43 = v12;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] CarPlay Connection Event: preparing to send event: %@, %ld, %@", buf, 0x20u);
    }

    v23 = [[v14 alloc] initForSystemDaemon];
    v25 = [v18 eventWithName:v11 type:v12 date:v9 payload:0];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __87__ACCCarPlayService_carPlaySendConnectionTimeEvent_connectionType_eventTime_withReply___block_invoke;
    v32[3] = &unk_100008658;
    v33 = v11;
    v34 = v9;
    v26 = v13;
    v35 = v26;
    [v23 sendConnectionEvent:v25 completion:v32];
    v27 = dispatch_time(0, 4000000000);
    if (dispatch_semaphore_wait(v26, v27))
    {
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v28 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
        }

        v28 = &_os_log_default;
        v29 = &_os_log_default;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ACCCarPlayService carPlaySendConnectionTimeEvent:connectionType:eventTime:withReply:];
      }

      v38 = NSLocalizedDescriptionKey;
      v39 = @"CARConnection Time Store timed out!";
      v30 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v31 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v30];

      v10[2](v10, 0, v31);
    }

    v10[2](v10, 1, 0);
  }

  else
  {
    if (v17)
    {
      v20 = *(gLogObjects + 48);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
      }

      v20 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] CARConnectionTimeStore soft link failed", buf, 2u);
    }

    v36 = NSLocalizedDescriptionKey;
    v37 = @"Failed to link CARConnectionTimeStore";
    v22 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v23 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:v22];

    v10[2](v10, 0, v23);
  }
}

void __87__ACCCarPlayService_carPlaySendConnectionTimeEvent_connectionType_eventTime_withReply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __54__ACCCarPlay_isCarPlayPairedWithCertSerial_withReply___block_invoke_cold_1();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "failed";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (a2)
    {
      v9 = "success";
    }

    v12 = 136315906;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[#ACCCarPlayService] CarPlay Connection Event: %s -- %@ at %@, error: %@", &v12, 0x2Au);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)isCarPlayPairedWithCertSerial:withReply:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isWirelessCarPlayAllowedForCertSerial:withReply:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)carPlayAppLinksStateForCertSerial:withReply:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)carPlayIconStateForCertSerial:andAppCategories:withReply:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)carPlaySendConnectionTimeEvent:connectionType:eventTime:withReply:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end