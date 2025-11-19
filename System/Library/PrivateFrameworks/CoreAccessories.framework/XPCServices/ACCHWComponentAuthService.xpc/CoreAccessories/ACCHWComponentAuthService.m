@interface ACCHWComponentAuthService
- (BOOL)_getForVeridianFDRData:(id)a3 intermediateCert:(id *)a4 leafCert:(id *)a5;
- (BOOL)_verifyDeviceIDSN:(unsigned int)a3;
- (BOOL)_verifyDeviceInfo:(unsigned int)a3;
- (BOOL)_verifyModuleFDR:(id)a3 forModuleType:(int)a4;
- (int)_signChallenge:(id)a3;
- (int)_verifyBatteryMatch:(id)a3 outputBatteryCode:(unsigned __int16 *)a4;
- (int)_verifyCertificate:(id)a3;
- (int)_verifyModuleCertificate:(id)a3 forModuleType:(int)a4;
- (int)_verifySignature:(id)a3;
- (unsigned)_findModuleAuthService:(int)a3 withAuthFlags:(unsigned int *)a4;
- (void)_authenticateModuleWithChallenge:(id)a3 completionHandler:(id)a4 moduleType:(int)a5 updateRegistry:(BOOL)a6 updateUIProperty:(BOOL)a7 logToAnalytics:(BOOL)a8;
- (void)_logToAnalytics:(int)a3 authError:(int)a4 fdrValidationStatus:(int)a5 authDurationInMS:(unint64_t)a6;
- (void)_notifyComponentAuthFailure;
- (void)authenticateBatteryWithChallenge:(id)a3 completionHandler:(id)a4;
- (void)authenticateLASWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5;
- (void)authenticateTouchControllerWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5;
- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4;
- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5 updateUIProperty:(BOOL)a6 logToAnalytics:(BOOL)a7;
- (void)signVeridianChallenge:(id)a3 completionHandler:(id)a4;
- (void)verifyBatteryMatch:(id)a3 completionHandler:(id)a4;
@end

@implementation ACCHWComponentAuthService

- (void)authenticateBatteryWithChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (authenticateBatteryWithChallenge_completionHandler__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateBatteryWithChallenge:completionHandler:];
  }

  v8 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __80__ACCHWComponentAuthService_authenticateBatteryWithChallenge_completionHandler___block_invoke_2;
  block[3] = &unk_100020D30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__ACCHWComponentAuthService_authenticateBatteryWithChallenge_completionHandler___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.battery", 0);
  v2 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  authenticateBatteryWithChallenge_completionHandler__batteryQueue = v1;

  v3 = authenticateBatteryWithChallenge_completionHandler__batteryQueue;
  v4 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v3, v4);
}

- (void)authenticateTouchControllerWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateTouchControllerWithChallenge:completionHandler:updateRegistry:];
  }

  v10 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __103__ACCHWComponentAuthService_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v13[3] = &unk_100020D78;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __103__ACCHWComponentAuthService_authenticateTouchControllerWithChallenge_completionHandler_updateRegistry___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.touchcontroller", 0);
  v2 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue = v1;

  v3 = authenticateTouchControllerWithChallenge_completionHandler_updateRegistry__touchControllerQueue;
  v4 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v3, v4);
}

- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (authenticateVeridianWithChallenge_completionHandler__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateVeridianWithChallenge:completionHandler:];
  }

  v8 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler___block_invoke_2;
  block[3] = &unk_100020D30;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __81__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.veridian", 0);
  v2 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  authenticateVeridianWithChallenge_completionHandler__veridianQueue = v1;

  v3 = authenticateVeridianWithChallenge_completionHandler__veridianQueue;
  v4 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v3, v4);
}

- (void)authenticateVeridianWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5 updateUIProperty:(BOOL)a6 logToAnalytics:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  if (authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateVeridianWithChallenge:completionHandler:updateRegistry:updateUIProperty:logToAnalytics:];
  }

  v14 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __128__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke_2;
  v17[3] = &unk_100020DE0;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, v17);
}

void __128__ACCHWComponentAuthService_authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.veridian", 0);
  v2 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue = v1;

  v3 = authenticateVeridianWithChallenge_completionHandler_updateRegistry_updateUIProperty_logToAnalytics__veridianQueue;
  v4 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v3, v4);
}

- (void)authenticateLASWithChallenge:(id)a3 completionHandler:(id)a4 updateRegistry:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (authenticateLASWithChallenge_completionHandler_updateRegistry__onceToken != -1)
  {
    [ACCHWComponentAuthService authenticateLASWithChallenge:completionHandler:updateRegistry:];
  }

  v10 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __91__ACCHWComponentAuthService_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke_2;
  v13[3] = &unk_100020D78;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __91__ACCHWComponentAuthService_authenticateLASWithChallenge_completionHandler_updateRegistry___block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.ACCHWComponentAuthService.las", 0);
  v2 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue = v1;

  v3 = authenticateLASWithChallenge_completionHandler_updateRegistry__LASQueue;
  v4 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v3, v4);
}

- (void)_authenticateModuleWithChallenge:(id)a3 completionHandler:(id)a4 moduleType:(int)a5 updateRegistry:(BOOL)a6 updateUIProperty:(BOOL)a7 logToAnalytics:(BOOL)a8
{
  v8 = a8;
  v168 = a7;
  v170 = a6;
  v11 = a3;
  v12 = a4;
  init_logging();
  v13 = objc_alloc_init(ACCHWComponentAuthServiceParams);
  v181 = -1431655766;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = 0;
  CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
  v177[0] = _NSConcreteStackBlock;
  v177[1] = 3221225472;
  v177[2] = __138__ACCHWComponentAuthService__authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics___block_invoke;
  v177[3] = &__block_descriptor_36_e5_v8__0l;
  v174 = a5;
  v178 = a5;
  v15 = v177;
  if (_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__onceToken != -1)
  {
    dispatch_once(&_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__onceToken, v15);
  }

  v173 = v12;
  v171 = v8;
  v169 = CurrentUnixTimeMS;
  if (_authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__disableAuth == 1)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v16 = &_os_log_default;
      v18 = &_os_log_default;
    }

    v172 = v11;
    v19 = a5;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) skip component auth", buf, 8u);
    }

    [(ACCHWComponentAuthServiceParams *)v13 setSignature:0];
    [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
    [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
    [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:0];
    v20 = 0;
    v21 = 1;
    goto LABEL_289;
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v17 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v17 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(moduleType=%d)", buf, 8u);
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v23 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = a5;
    *&buf[8] = 1024;
    *&buf[10] = 389;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:a5 withAuthFlags:&v181]];
  if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
  {
    v172 = v11;
    [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    v21 = 0;
    v125 = 0;
    v20 = 22;
    v19 = a5;
    goto LABEL_290;
  }

  v60 = a5 == 3;
  v25 = a5 != 3;
  if (v60)
  {
    v26 = kCFAllocatorDefault;
  }

  else
  {
    v26 = kCFAllocatorDefault;
    if (!IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"iboot-auth", kCFAllocatorDefault, 0))
    {
      v25 = 0;
      v19 = v174;
      if (v11)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }
  }

  v27 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"pretend_auth", v26, 0);
  v19 = v174;
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 charValue];
      if ((v28 - 3) >= 0xFEu)
      {
        v172 = v11;
        v21 = v28 == 2;
        if (v28 == 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = 29;
        }

        [(ACCHWComponentAuthServiceParams *)v13 setSignature:0];
        [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
        [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
        [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:0];

        goto LABEL_289;
      }
    }
  }

  if (!v11)
  {
LABEL_39:
    if (!v25)
    {
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v29;
      *&buf[16] = v29;
      arc4random_buf(buf, 0x20uLL);
      v11 = [NSData dataWithBytes:buf length:32];
    }
  }

LABEL_41:
  v30 = !v25;
  if (v11)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"Challenge", v26, 0);
    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v31;
        [(ACCHWComponentAuthServiceParams *)v13 setChallenge:v11];
        v32 = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"Signature", v26, 0);
        if (v32)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ACCHWComponentAuthServiceParams *)v13 setSignature:v32];
            CFProperty = IORegistryEntryCreateCFProperty([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService], @"authError", v26, 0);
            CFNumberGetValue(CFProperty, kCFNumberSInt8Type, &valuePtr);
            if (valuePtr >= 0x20u)
            {
              valuePtr = 0;
            }

            [(ACCHWComponentAuthServiceParams *)v13 setCertificate:0];
            [(ACCHWComponentAuthServiceParams *)v13 setCertificateInfo:0];
            [(ACCHWComponentAuthServiceParams *)v13 setSkipComms:1];

            goto LABEL_52;
          }
        }

        v172 = v11;
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      else
      {
        v32 = logObjectForModule();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Error: challenge==NULL", buf, 8u);
        }

        v172 = 0;
      }

      v21 = 0;
      v20 = 20;
      goto LABEL_289;
    }

    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v34;
    *&buf[16] = v34;
    arc4random_buf(buf, 0x20uLL);
    v11 = [NSData dataWithBytes:buf length:32];
LABEL_52:
  }

  [(ACCHWComponentAuthServiceParams *)v13 setChallenge:v11];
  [(ACCHWComponentAuthServiceParams *)v13 setAuthFlags:v181];
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v35 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v35 = &_os_log_default;
    v36 = &_os_log_default;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [ACCHWComponentAuthService _authenticateModuleWithChallenge:v13 completionHandler:? moduleType:? updateRegistry:? updateUIProperty:? logToAnalytics:?];
  }

  v172 = v11;

  if (v19 != 2)
  {
    v66 = 0;
    *&v37 = 67109376;
    v167 = v37;
    while (1)
    {
      v67 = gLogObjects;
      v68 = gNumLogObjects;
      if (gLogObjects)
      {
        v69 = gNumLogObjects < 4;
      }

      else
      {
        v69 = 1;
      }

      if (v69)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v67;
          *&buf[12] = 1024;
          *&buf[14] = v68;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v70 = &_os_log_default;
        v71 = &_os_log_default;
      }

      else
      {
        v71 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v66 + 1;
        *&buf[14] = 1024;
        *&buf[16] = 3;
        _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "(moduleType=%d) tryCount = %d (max tries %d)", buf, 0x14u);
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v72 = gLogObjects;
      v73 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v74 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v72;
          *&buf[12] = 1024;
          *&buf[14] = v73;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v75 = &_os_log_default;
        v74 = &_os_log_default;
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 544;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      if (![(ACCHWComponentAuthService *)self _verifyDeviceInfo:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
      {
        v79 = gLogObjects;
        v80 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v81 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v79;
            *&buf[12] = 1024;
            *&buf[14] = v80;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v86 = &_os_log_default;
          v81 = &_os_log_default;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eAuthDeviceInfoError after _verifyDeviceInfo", buf, 8u);
        }

        v20 = 1;
        goto LABEL_227;
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v76 = gLogObjects;
      v77 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v78 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v76;
          *&buf[12] = 1024;
          *&buf[14] = v77;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v82 = &_os_log_default;
        v78 = &_os_log_default;
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 553;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      if (![(ACCHWComponentAuthService *)self _verifyDeviceIDSN:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
      {
        v87 = gLogObjects;
        v88 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v81 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v87;
            *&buf[12] = 1024;
            *&buf[14] = v88;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v93 = &_os_log_default;
          v81 = &_os_log_default;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eNoDeviceIDSNError after _verifyDeviceIDSN", buf, 8u);
        }

        v20 = 18;
        goto LABEL_227;
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v83 = gLogObjects;
      v84 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v85 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v83;
          *&buf[12] = 1024;
          *&buf[14] = v84;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v89 = &_os_log_default;
        v85 = &_os_log_default;
      }

      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 562;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      v90 = [(ACCHWComponentAuthService *)self _verifyCertificate:v13];
      if (v90)
      {
        v20 = v90;
        v91 = gLogObjects;
        v92 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v81 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v91;
            *&buf[12] = 1024;
            *&buf[14] = v92;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v97 = &_os_log_default;
          v81 = &_os_log_default;
        }

        if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_227;
        }

        *buf = v167;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        v98 = v81;
        v99 = "(moduleType=%d) authError %d after _verifyCertificate";
        goto LABEL_226;
      }

      if (![(ACCHWComponentAuthServiceParams *)v13 skipComms])
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        v94 = gLogObjects;
        v95 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v96 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v94;
            *&buf[12] = 1024;
            *&buf[14] = v95;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v100 = &_os_log_default;
          v96 = &_os_log_default;
        }

        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *&buf[4] = v19;
          *&buf[8] = 1024;
          *&buf[10] = 571;
          *&buf[14] = 2048;
          *&buf[16] = __tp.tv_sec;
          *&buf[24] = 2048;
          *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
        }

        v101 = [(ACCHWComponentAuthService *)self _verifySignature:v13];
        if (v101)
        {
          break;
        }
      }

      clock_gettime(_CLOCK_REALTIME, &__tp);
      v104 = gLogObjects;
      v105 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v106 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v104;
          *&buf[12] = 1024;
          *&buf[14] = v105;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v107 = &_os_log_default;
        v106 = &_os_log_default;
      }

      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109888;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = 580;
        *&buf[14] = 2048;
        *&buf[16] = __tp.tv_sec;
        *&buf[24] = 2048;
        *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
      }

      v20 = [(ACCHWComponentAuthService *)self _verifyModuleCertificate:v13 forModuleType:v19];
      if (!v20)
      {
LABEL_228:
        clock_gettime(_CLOCK_REALTIME, &__tp);
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v112 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
          }

          v112 = &_os_log_default;
          v113 = &_os_log_default;
        }

        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109888;
          *&buf[4] = v19;
          *&buf[8] = 1024;
          *&buf[10] = 593;
          *&buf[14] = 2048;
          *&buf[16] = __tp.tv_sec;
          *&buf[24] = 2048;
          *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
        }

        v21 = [(ACCHWComponentAuthService *)self _verifyModuleFDR:v13 forModuleType:v19];
        goto LABEL_277;
      }

      v108 = gLogObjects;
      v109 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v81 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v108;
          *&buf[12] = 1024;
          *&buf[14] = v109;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v110 = &_os_log_default;
        v81 = &_os_log_default;
      }

      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        *buf = v167;
        *&buf[4] = v19;
        *&buf[8] = 1024;
        *&buf[10] = v20;
        v98 = v81;
        v99 = "(moduleType=%d) authError = %d after _verifyModuleCertificate";
LABEL_226:
        _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, v99, buf, 0xEu);
      }

LABEL_227:

      if (++v66 >= 3)
      {
        goto LABEL_228;
      }
    }

    v20 = v101;
    v102 = gLogObjects;
    v103 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v81 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v102;
        *&buf[12] = 1024;
        *&buf[14] = v103;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v111 = &_os_log_default;
      v81 = &_os_log_default;
    }

    if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_227;
    }

    *buf = v167;
    *&buf[4] = v19;
    *&buf[8] = 1024;
    *&buf[10] = v20;
    v98 = v81;
    v99 = "(moduleType=%d) authError %d after _verifySignature";
    goto LABEL_226;
  }

  v38 = 0;
  while (1)
  {
    v39 = gLogObjects;
    v40 = gNumLogObjects;
    if (gLogObjects)
    {
      v41 = gNumLogObjects < 4;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v39;
        *&buf[12] = 1024;
        *&buf[14] = v40;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v42 = &_os_log_default;
      v43 = &_os_log_default;
    }

    else
    {
      v43 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = v38 + 1;
      *&buf[14] = 1024;
      *&buf[16] = 3;
      _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "(moduleType=%d) tryCount = %d (max tries %d)", buf, 0x14u);
    }

    clock_gettime(_CLOCK_REALTIME, &__tp);
    v44 = gLogObjects;
    v45 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v46 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v44;
        *&buf[12] = 1024;
        *&buf[14] = v45;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v47 = &_os_log_default;
      v46 = &_os_log_default;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 497;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    if (![(ACCHWComponentAuthService *)self _verifyDeviceIDSN:[(ACCHWComponentAuthServiceParams *)v13 moduleAuthService]])
    {
      v51 = gLogObjects;
      v52 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v53 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 1024;
          *&buf[14] = v52;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v58 = &_os_log_default;
        v53 = &_os_log_default;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:v182 completionHandler:v183 moduleType:v53 updateRegistry:? updateUIProperty:? logToAnalytics:?];
      }

      v55 = 18;
      goto LABEL_108;
    }

    clock_gettime(_CLOCK_REALTIME, &__tp);
    v48 = gLogObjects;
    v49 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v50 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v48;
        *&buf[12] = 1024;
        *&buf[14] = v49;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v54 = &_os_log_default;
      v50 = &_os_log_default;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 506;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    v55 = [(ACCHWComponentAuthService *)self _signChallenge:v13];
    if (!v55)
    {
      break;
    }

    v56 = gLogObjects;
    v57 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v53 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v56;
        *&buf[12] = 1024;
        *&buf[14] = v57;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v59 = &_os_log_default;
      v53 = &_os_log_default;
    }

    v19 = v174;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = v55;
      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError %d after _signChallenge", buf, 0xEu);
    }

LABEL_108:

    v60 = v55 == 18 || v55 == 30;
    v61 = v60;
    if ((v38 + 1) <= 2 && v61)
    {
      v62 = gLogObjects;
      v63 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v64 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v62;
          *&buf[12] = 1024;
          *&buf[14] = v63;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v65 = &_os_log_default;
        v64 = &_os_log_default;
      }

      v19 = v174;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = 2;
        *&buf[8] = 1024;
        *&buf[10] = 20;
        _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "(moduleType=%d) sleeping for %d seconds before retrying auth", buf, 0xEu);
      }

      sleep(0x14u);
    }

    if (++v38 >= 3)
    {
      goto LABEL_238;
    }
  }

  v19 = v174;
LABEL_238:
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v114 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v114 = &_os_log_default;
    v115 = &_os_log_default;
  }

  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = 2;
    *&buf[8] = 1024;
    *&buf[10] = 524;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  v116 = [(ACCHWComponentAuthService *)self _verifyModuleFDR:v13 forModuleType:2];
  v21 = v116;
  if (v116)
  {
    v117 = 0;
  }

  else
  {
    v117 = 21;
  }

  if (v55)
  {
    v20 = v55;
  }

  else
  {
    v20 = v117;
  }

  if (!v55 && v116)
  {
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v118 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v118 = &_os_log_default;
      v119 = &_os_log_default;
    }

    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 532;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    v20 = [(ACCHWComponentAuthService *)self _verifyModuleCertificate:v13 forModuleType:2];
    if (v20)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v120 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v120 = &_os_log_default;
        v121 = &_os_log_default;
      }

      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }
    }

    v21 = 1;
  }

LABEL_277:
  if (v19 == 2)
  {
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v122 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v122 = &_os_log_default;
      v123 = &_os_log_default;
    }

    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = 2;
      *&buf[8] = 1024;
      *&buf[10] = 602;
      *&buf[14] = 2048;
      *&buf[16] = __tp.tv_sec;
      *&buf[24] = 2048;
      *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
    }

    if (!v20)
    {
      *buf = 0;
      [(ACCHWComponentAuthServiceParams *)v13 setBatteryCode:0];
      v124 = [(ACCHWComponentAuthServiceParams *)v13 certificate];
      v20 = [(ACCHWComponentAuthService *)self _verifyBatteryMatch:v124 outputBatteryCode:buf];

      if (*buf)
      {
        [(ACCHWComponentAuthServiceParams *)v13 setBatteryCode:bswap32(*buf) >> 16];
      }
    }
  }

LABEL_289:
  v125 = v170;
LABEL_290:
  v126 = v20 == 0;
  if ([(ACCHWComponentAuthServiceParams *)v13 skipComms])
  {
    v127 = v20 == 0;
    v126 = v127 ^ (v127 && valuePtr != 0);
    if (v127 && valuePtr != 0)
    {
      v20 = valuePtr;
    }

    else
    {
      v20 = v20;
    }
  }

  v128 = v126 & v21;
  if (v20 != 22 && !v128)
  {
    [(ACCHWComponentAuthService *)self _notifyComponentAuthFailure];
  }

  if (v125)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v129 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v129 = &_os_log_default;
      v130 = &_os_log_default;
    }

    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) updateRegistry", buf, 8u);
    }

    if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
    {
      [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:v19 withAuthFlags:&v181]];
    }

    if ([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
    {
      connect = 0;
      v131 = [(ACCHWComponentAuthServiceParams *)v13 moduleAuthService];
      if (!IOServiceOpen(v131, mach_task_self_, 0, &connect))
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v132 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
          }

          v132 = &_os_log_default;
          v133 = &_os_log_default;
        }

        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) updateRegistry: cpSetAuthStatus, cpSetTrustStatus", buf, 8u);
        }

        v134 = cpSetAuthStatus(connect, v126 & 1);
        if (v134)
        {
          v135 = v134;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v136 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
            }

            v136 = &_os_log_default;
            v137 = &_os_log_default;
          }

          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v135;
            _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetAuthStatus failed: 0x%x", buf, 0xEu);
          }
        }

        v138 = cpSetTrustStatus(connect, v128);
        if (v138)
        {
          v139 = v138;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v140 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
            }

            v140 = &_os_log_default;
            v141 = &_os_log_default;
          }

          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v139;
            _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetTrustStatus failed: 0x%x", buf, 0xEu);
          }
        }

        if (v128 && v168)
        {
          v142 = cpSetTrustStatusForUI(connect, 1u);
          if (v142)
          {
            v143 = v142;
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v144 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
              }

              v144 = &_os_log_default;
              v145 = &_os_log_default;
            }

            if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v19;
              *&buf[8] = 1024;
              *&buf[10] = v143;
              _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetTrustStatusForUI failed: 0x%x", buf, 0xEu);
            }
          }
        }

        v146 = cpSetAuthError(connect, v20);
        if (v146)
        {
          v147 = v146;
          if (gLogObjects && gNumLogObjects >= 4)
          {
            v148 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
            }

            v148 = &_os_log_default;
            v149 = &_os_log_default;
          }

          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v19;
            *&buf[8] = 1024;
            *&buf[10] = v147;
            _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetAuthError failed: 0x%x", buf, 0xEu);
          }
        }

        if (v20 > 0x1E)
        {
          v150 = "UninitializedAuthError";
        }

        else
        {
          v150 = kACCTransport_IOAccessoryAuthCP_AuthError_Strings[v20];
        }

        v151 = CFStringCreateWithCString(kCFAllocatorDefault, v150, 0x8000100u);
        if (v151)
        {
          v152 = v151;
          cpSetAuthErrorDescription(connect, v151);
          CFRelease(v152);
        }

        IOServiceClose(connect);
      }
    }
  }

  if (v126)
  {
    v153 = [(ACCHWComponentAuthServiceParams *)v13 batteryCode];
    if (v19 == 2)
    {
      if (v153)
      {
        if (![(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
        {
          [(ACCHWComponentAuthServiceParams *)v13 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:2 withAuthFlags:&v181]];
        }

        if ([(ACCHWComponentAuthServiceParams *)v13 moduleAuthService])
        {
          connect = 0;
          v154 = [(ACCHWComponentAuthServiceParams *)v13 moduleAuthService];
          if (!IOServiceOpen(v154, mach_task_self_, 0, &connect))
          {
            v155 = cpSetBatteryCode(connect, [(ACCHWComponentAuthServiceParams *)v13 batteryCode]);
            if (v155)
            {
              v156 = v155;
              if (gLogObjects && gNumLogObjects >= 4)
              {
                v157 = *(gLogObjects + 24);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
                }

                v157 = &_os_log_default;
                v158 = &_os_log_default;
              }

              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = 2;
                *&buf[8] = 1024;
                *&buf[10] = v156;
                _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) cpSetBatteryCode failed: 0x%x", buf, 0xEu);
              }
            }

            IOServiceClose(connect);
          }
        }
      }
    }
  }

  if (v171)
  {
    v159 = systemInfo_getCurrentUnixTimeMS() - v169;
    if (v21)
    {
      v160 = 2;
    }

    else
    {
      v160 = 1;
    }

    [(ACCHWComponentAuthService *)self _logToAnalytics:v19 authError:v20 fdrValidationStatus:v160 authDurationInMS:v159, v167];
  }

  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v161 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v161 = &_os_log_default;
    v162 = &_os_log_default;
  }

  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v174;
    *&buf[8] = 1024;
    *&buf[10] = 744;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v163 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v163 = &_os_log_default;
    v164 = &_os_log_default;
  }

  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v174;
    *&buf[8] = 1024;
    *&buf[10] = v126 & 1;
    *&buf[14] = 1024;
    *&buf[16] = v21;
    *&buf[20] = 1024;
    *&buf[22] = v20;
    _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Replying with authPassed = %d, fdrValid = %d, authError = %d", buf, 0x1Au);
  }

  v165 = [(ACCHWComponentAuthServiceParams *)v13 certificate];
  v166 = [(ACCHWComponentAuthServiceParams *)v13 signature];
  (v173)[2](v173, v126 & 1, v165, v166, v21, v20);
}

- (unsigned)_findModuleAuthService:(int)a3 withAuthFlags:(unsigned int *)a4
{
  v6 = IOServiceMatching("AppleAuthCP");
  v24 = a4;
  if (!a4)
  {
    return 0;
  }

  valuePtr = -1431655766;
  existing = -1431655766;
  MatchingServices = IOServiceGetMatchingServices(kIOMasterPortDefault, v6, &existing);
  if (MatchingServices)
  {
    v8 = MatchingServices;
    if (gLogObjects)
    {
      v9 = gNumLogObjects < 4;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v12 = &_os_log_default;
      v10 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = mach_error_string(v8);
      *buf = 67109378;
      LODWORD(v28) = a3;
      WORD2(v28) = 2080;
      *(&v28 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Could not find authcp services: %s\n", buf, 0x12u);
    }
  }

  v14 = IOIteratorNext(existing);
  if (v14)
  {
    v15 = v14;
    v11 = 0;
    while (1)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v15, @"flags", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        break;
      }

LABEL_39:
      IOObjectRelease(v15);
      v15 = IOIteratorNext(existing);
      if (!v15)
      {
        goto LABEL_46;
      }
    }

    v17 = CFProperty;
    if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
    {
      v18 = gLogObjects;
      v19 = gNumLogObjects;
      if (gLogObjects)
      {
        v20 = gNumLogObjects < 4;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&v28 = v18;
          WORD4(v28) = 1024;
          *(&v28 + 10) = v19;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v21 = &_os_log_default;
        v22 = &_os_log_default;
      }

      else
      {
        v22 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        LODWORD(v28) = a3;
        WORD2(v28) = 1024;
        *(&v28 + 6) = v15;
        WORD5(v28) = 1024;
        HIDWORD(v28) = valuePtr;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "(moduleType=%d) authCP service %d tmpAuthFlags == 0x%x", buf, 0x14u);
      }

      if (a3 > 1)
      {
        if (a3 == 2)
        {
          if ((valuePtr & 0xFF000C) != 0x10008)
          {
            goto LABEL_38;
          }
        }

        else if (a3 != 3 || BYTE2(valuePtr) << 16 != 0x80000)
        {
          goto LABEL_38;
        }
      }

      else if (a3)
      {
        if (a3 != 1 || BYTE2(valuePtr) << 16 != 196608)
        {
          goto LABEL_38;
        }
      }

      else if (BYTE2(valuePtr) << 16 != 0x10000)
      {
        goto LABEL_38;
      }

      IOObjectRetain(v15);
      *v24 = valuePtr;
      v11 = v15;
    }

LABEL_38:
    CFRelease(v17);
    goto LABEL_39;
  }

  v11 = 0;
LABEL_46:
  IOObjectRelease(existing);
  return v11;
}

- (BOOL)_verifyDeviceIDSN:(unsigned int)a3
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  DeviceIDSN = cpGetDeviceIDSN(a3, &v10, &v9);
  if (DeviceIDSN)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = mach_error_string(DeviceIDSN);
      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not cpGetDeviceIDSN: %s\n", buf, 0xCu);
    }
  }

  return DeviceIDSN == 0;
}

- (BOOL)_verifyDeviceInfo:(unsigned int)a3
{
  v13 = -86;
  v12 = -86;
  v11 = -86;
  v10 = -86;
  v9 = -1431655766;
  DeviceInfo = cpGetDeviceInfo(a3, &v13, &v12, &v11, &v10, &v9);
  if (DeviceInfo)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = mach_error_string(DeviceInfo);
      *buf = 136315138;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not cpGetDeviceInfo: %s\n", buf, 0xCu);
    }
  }

  return DeviceInfo == 0;
}

- (int)_verifyCertificate:(id)a3
{
  v3 = a3;
  if (([v3 authFlags] & 0xC) == 8)
  {
    [ACCHWComponentAuthService _verifyCertificate:];
    v6 = 0;
    v10 = 0;
    v8 = 0;
    v4 = 0;
LABEL_7:
    v11 = [v10 objectForKey:@"LeafCertData"];
    [v3 setCertificate:v11];

    [v3 setCertificateInfo:v10];
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v12 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACCHWComponentAuthService _verifyCertificate:v3];
    }

    v14 = 0;
    goto LABEL_16;
  }

  v4 = cpCopyCertificate([v3 moduleAuthService]);
  if (!v4)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error getting certificate", buf, 2u);
    }

    v6 = 0;
    v10 = 0;
    v8 = 0;
    v14 = 3;
    goto LABEL_36;
  }

  v5 = +[MFAACertificateManager sharedManager];
  if (!v5)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error getting MFAACertificateManager", v22, 2u);
    }

    v6 = 0;
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 copyParsedCertificateChainInfo:v4];
  if (!v7)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error parsing certificate", v21, 2u);
    }

LABEL_28:
    v10 = 0;
    v8 = 0;
LABEL_32:
    v14 = 4;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = [v6 copyEvaluatedCertificateChainInfo:v7];
  if (!v9)
  {
    v16 = logObjectForModule();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error evaluating certificate", v20, 2u);
    }

    v10 = 0;
    goto LABEL_32;
  }

  v10 = v9;
  if (MFAAVerifyCertificateSerialNumber())
  {
    goto LABEL_7;
  }

  v16 = logObjectForModule();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "error verifying serial number", v19, 2u);
  }

  v14 = 5;
LABEL_36:

  connect = 0;
  v17 = [v3 moduleAuthService];
  if (!IOServiceOpen(v17, mach_task_self_, 0, &connect))
  {
    cpClearCertificate(connect);
    IOServiceClose(connect);
  }

LABEL_16:
  if (v4)
  {
    CFRelease(v4);
  }

  return v14;
}

- (int)_verifySignature:(id)a3
{
  v3 = a3;
  connect = -1431655766;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v39 = 926;
    *&v39[4] = 2048;
    *&v39[6] = __tp.tv_sec;
    v40 = 2048;
    v41 = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
  }

  v7 = [v3 moduleAuthService];
  v8 = IOServiceOpen(v7, mach_task_self_, 0, &connect);
  if (!v8)
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_REALTIME, &__tp);
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v11 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v11 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v39 = 937;
      *&v39[4] = 2048;
      *&v39[6] = __tp.tv_sec;
      v40 = 2048;
      v41 = __tp.tv_nsec / 0xF4240uLL;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
    }

    v16 = connect;
    v17 = [v3 challenge];
    v18 = cpCreateSignature(v16, v17, &v35);

    IOServiceClose(connect);
    if ((v18 & 0xE3FFBF00) == 0xE3FF8000)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v19 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 67109120;
      *v39 = v18;
      v21 = "error generating signature: auth cp error code %#x\n";
      v22 = v19;
      v23 = 8;
    }

    else
    {
      if (!v18)
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v24 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
          }

          v24 = &_os_log_default;
          v28 = &_os_log_default;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v39 = 954;
          *&v39[4] = 2048;
          *&v39[6] = __tp.tv_sec;
          v40 = 2048;
          v41 = __tp.tv_nsec / 0xF4240uLL;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_verifySignature %d: %ld.%03llu", buf, 0x1Cu);
        }

        v29 = [v3 certificate];
        v30 = [v3 challenge];
        v31 = MFAAVerifyNonceSignature();

        if (gLogObjects && gNumLogObjects >= 4)
        {
          v32 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
          }

          v32 = &_os_log_default;
          v33 = &_os_log_default;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = @"no";
          if (v31)
          {
            v34 = @"yes";
          }

          *buf = 138412290;
          *v39 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "signatureValid ? %@", buf, 0xCu);
        }

        if (v31)
        {
          v14 = 0;
        }

        else
        {
          v14 = 12;
        }

        v19 = v35;
        [v3 setSignature:{v35, v35}];
        goto LABEL_52;
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v19 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_51:
        v14 = 11;
LABEL_52:

        goto LABEL_53;
      }

      v26 = mach_error_string(v18);
      *buf = 136315138;
      *v39 = v26;
      v21 = "error generating signature: %s\n";
      v22 = v19;
      v23 = 12;
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_51;
  }

  v9 = v8;
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v10 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v10 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = mach_error_string(v9);
    *buf = 136315138;
    *v39 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "could not open service: %s\n", buf, 0xCu);
  }

  v14 = 23;
LABEL_53:

  return v14;
}

- (int)_signChallenge:(id)a3
{
  v3 = a3;
  connect = -1431655766;
  v4 = [v3 moduleAuthService];
  v5 = IOServiceOpen(v4, mach_task_self_, 0, &connect);
  if (v5)
  {
    v6 = v5;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 4;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v13 = &_os_log_default;
      v8 = &_os_log_default;
    }

    else
    {
      v13 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _signChallenge:v6];
    }

    v14 = 23;
  }

  else
  {
    v28 = 0;
    v9 = connect;
    v10 = [v3 challenge];
    v11 = cpCreateSignature(v9, v10, &v28);

    IOServiceClose(connect);
    if ((v11 & 0xE3FFBF00) == 0xE3FF8000)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v12 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v12 = &_os_log_default;
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v31) = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "error generating signature: auth cp error code %#x\n", buf, 8u);
      }

      v14 = 11;
    }

    else if (v11)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v15 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v15 = &_os_log_default;
        v20 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = mach_error_string(v11);
        *buf = 136315138;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "error generating signature: %s\n", buf, 0xCu);
      }

      if ((v11 + 536870187) >= 2)
      {
        v14 = 11;
      }

      else
      {
        v14 = 30;
      }
    }

    else
    {
      v17 = v28;
      [v3 setSignature:v28];

      v18 = cpCopyDeviceNonce([v3 moduleAuthService]);
      [v3 setDeviceNonce:v18];

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v19 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v19 = &_os_log_default;
        v22 = &_os_log_default;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v3 signature];
        *buf = 138412290;
        v31 = v23;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Battery signature = %@", buf, 0xCu);
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v24 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v24 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v3 deviceNonce];
        *buf = 138412290;
        v31 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Battery device nonce = %@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  return v14;
}

- (int)_verifyModuleCertificate:(id)a3 forModuleType:(int)a4
{
  v5 = a3;
  v6 = [v5 certificateInfo];

  if (!v6)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
LABEL_63:
    v25 = 13;
    goto LABEL_58;
  }

  v7 = [v5 certificateInfo];
  v8 = [MFAACertificateManager isMFi2_3CertInfo:v7];

  v9 = [v5 certificateInfo];
  v10 = [MFAACertificateManager isComponentCertInfo:v9];

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v11 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109632;
    v37 = a4;
    v38 = 1024;
    v39 = v8;
    v40 = 1024;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) mfi2_3:%d, mfi4:%d", &v36, 0x14u);
  }

  if (!v8)
  {
    if (!v10)
    {
LABEL_53:
      v14 = 0;
      goto LABEL_54;
    }

    v15 = [v5 certificateInfo];
    v16 = [v15 objectForKey:@"ExtensionValue"];

    if (!v16)
    {
      v17 = logObjectForModule();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
      }

      goto LABEL_60;
    }

    switch(a4)
    {
      case 3:
        v20 = "Mac LAS";
        break;
      case 2:
        v20 = "Battery";
        break;
      case 1:
        v17 = systemInfo_copyDeviceClass();
        if ([v17 isEqualToString:@"iPhone"])
        {
          v18 = "Phone Display";
          v19 = 13;
        }

        else
        {
          if (![v17 isEqualToString:@"iPad"])
          {
LABEL_59:
            [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
LABEL_60:

            v25 = 16;
            goto LABEL_58;
          }

          v18 = "iPad Display";
          v19 = 12;
        }

        v26 = [NSData dataWithBytes:v18 length:v19];
        if (v26)
        {
          if ([v16 isEqualToData:v26])
          {

            v14 = 0;
            goto LABEL_29;
          }

          if (gLogObjects && gNumLogObjects >= 4)
          {
            v27 = *(gLogObjects + 24);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
            }

            v27 = &_os_log_default;
            v28 = &_os_log_default;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [(ACCHWComponentAuthService *)v16 _verifyModuleCertificate:v27 forModuleType:v29, v30, v31, v32, v33, v34];
          }

          goto LABEL_52;
        }

        goto LABEL_59;
      default:
LABEL_52:

        goto LABEL_53;
    }

    v21 = [NSData dataWithBytes:v20 length:7];
    v22 = [v16 isEqualToData:v21];

    v14 = 0;
    if (v22)
    {
      goto LABEL_29;
    }

LABEL_54:
    v23 = logObjectForModule();
    v25 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    }

    goto LABEL_56;
  }

  v13 = [v5 certificate];
  v14 = MFAACreateCapsFromAuthCert();

  if (!v14)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    goto LABEL_63;
  }

  if (a4 == 1)
  {
    if (MFAAIsAppleTouchControllerModule())
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

  if (a4)
  {
    goto LABEL_54;
  }

  if (([v5 authFlags] & 0xC) == 8)
  {
    [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
    v25 = 0;
    goto LABEL_57;
  }

  if ((MFAAIsAppleBatteryModule() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v23 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 67109120;
    v37 = a4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) Success: validated cert caps", &v36, 8u);
  }

  v25 = 0;
LABEL_56:

  if (v14)
  {
LABEL_57:
    MFAADeallocAuthCertCaps();
  }

LABEL_58:

  return v25;
}

- (BOOL)_verifyModuleFDR:(id)a3 forModuleType:(int)a4
{
  v5 = a3;
  v49 = @"CopyAllowUnsealed";
  v50 = &__kCFBooleanTrue;
  v6 = 1;
  v7 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  LOBYTE(v8) = 0;
  v9 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_59;
    }

LABEL_10:
    v9 = AMFDRSealingMapCopyLocalDataForClass();
    if (!v9)
    {
      v20 = logObjectForModule();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }

      v9 = 0;
      goto LABEL_46;
    }

    if (v6)
    {
      v10 = [v5 certificate];
      if (v10)
      {
        v11 = v10;
        v12 = [v5 certificateInfo];

        if (v12)
        {
          v13 = [v5 certificateInfo];
          v14 = [MFAACertificateManager isMFi2_3CertInfo:v13];

          v15 = [v5 certificateInfo];
          v16 = [MFAACertificateManager isComponentCertInfo:v15];

          if (v14)
          {
            v17 = copyCertificateForFDRData(v9);
            if (v17)
            {
              v18 = v17;
              v19 = [v5 certificate];
              if (([(__CFData *)v18 isEqualToData:v19]& 1) != 0)
              {
                LODWORD(v8) = 1;
              }

              else
              {
                v41 = [v5 certificateInfo];
                v42 = [v41 objectForKey:@"FullCertData"];
                LODWORD(v8) = [(__CFData *)v18 isEqualToData:v42];
              }

              goto LABEL_50;
            }

            v20 = logObjectForModule();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
            }

            goto LABEL_46;
          }

          if (!v16)
          {
            LODWORD(v8) = 0;
            goto LABEL_50;
          }

          v31 = +[MFAACertificateManager sharedManager];
          v32 = v31;
          if (!v31)
          {
            v39 = 0;
            LODWORD(v8) = 0;
LABEL_39:

            if (!v39)
            {
              LOBYTE(v8) = 0;
              goto LABEL_59;
            }

LABEL_50:
            if (gLogObjects && gNumLogObjects >= 4)
            {
              v20 = *(gLogObjects + 24);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
              }

              v20 = &_os_log_default;
              v43 = &_os_log_default;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v46 = a4;
              v47 = 1024;
              v48 = v8;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) equal:%d", buf, 0xEu);
            }

            goto LABEL_58;
          }

          v33 = [v31 copyParsedCertificateChainInfo:v9];
          if (v33)
          {
            v34 = v33;
            v35 = [v32 copyEvaluatedCertificateChainInfo:v33];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 objectForKey:@"LeafCertData"];
              v38 = [v5 certificate];
              LODWORD(v8) = [v37 isEqualToData:v38];

              v39 = 1;
LABEL_38:

              goto LABEL_39;
            }

            [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
          }

          else
          {
            v34 = logObjectForModule();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
            }
          }

          v39 = 0;
          LODWORD(v8) = 0;
          goto LABEL_38;
        }
      }

      if (gLogObjects && gNumLogObjects >= 4)
      {
        v20 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
        }

        v20 = &_os_log_default;
        v40 = &_os_log_default;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }

LABEL_46:
      LOBYTE(v8) = 0;
      goto LABEL_58;
    }

    v20 = +[MFAACertificateManager sharedManager];
    if (!v20)
    {
      goto LABEL_46;
    }

    v8 = [v5 challenge];

    if (!v8)
    {
      goto LABEL_58;
    }

    v8 = [v5 signature];

    if (!v8)
    {
      goto LABEL_58;
    }

    v8 = [v5 deviceNonce];

    if (!v8)
    {
      goto LABEL_58;
    }

    v21 = [v20 copyParsedCertificateChainInfo:v9];
    if (v21)
    {
      v22 = v21;
      v8 = [v20 copyEvaluatedCertificateChainInfo:v21];
      if (!v8)
      {
        [ACCHWComponentAuthService _verifyModuleCertificate:forModuleType:];
        goto LABEL_29;
      }

      v23 = [v5 deviceNonce];
      v24 = [v5 challenge];
      v25 = [v20 createVeridianNonce:v23 withChallenge:v24];

      if (v25)
      {
        if (a4 == 2)
        {
          v26 = +[ACCUserDefaults sharedDefaults];
          v27 = [v26 BOOLForKey:@"SkipGaugeSignatureCheck"];

          if (v27)
          {
            goto LABEL_28;
          }
        }

        v28 = [v5 signature];
        v29 = [v20 verifyNonceSignature:v8 nonce:v25 signature:v28];

        if (v29)
        {
LABEL_28:
          v30 = [v8 objectForKey:@"LeafCertData"];
          [v5 setCertificate:v30];

          [v5 setCertificateInfo:v8];
          LOBYTE(v8) = 1;
LABEL_29:

LABEL_58:
          goto LABEL_59;
        }

        [(ACCHWComponentAuthService *)a4 _verifyModuleFDR:v25 forModuleType:v8];
      }

      else
      {
        [ACCHWComponentAuthService _verifyModuleFDR:a4 forModuleType:v8];
      }
    }

    else
    {
      v22 = logObjectForModule();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _verifyModuleFDR:forModuleType:];
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_29;
  }

  if (a4 == 2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (a4 == 3)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_10;
  }

LABEL_59:

  return v8 & 1;
}

- (BOOL)_getForVeridianFDRData:(id)a3 intermediateCert:(id *)a4 leafCert:(id *)a5
{
  v7 = a3;
  memset(v14, 170, sizeof(v14));
  v13[0] = [v7 bytes];
  v13[1] = [v7 length];
  if (DERDecodeItem(v13, v14) || v14[0] != 0x2000000000000010 || (v8 = v14[1] - v13[0] + v14[2], v8 > [v7 length]) || (+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v13[0], v8), *a4 = objc_claimAutoreleasedReturnValue(), v12[0] = objc_msgSend(v7, "bytes") + v8, v12[1] = objc_msgSend(v7, "length") - v8, DERDecodeItem(v12, v14)) || v14[0] != 0x2000000000000010 || (v9 = v14[1] - v12[0] + v14[2], v9 + v8 > objc_msgSend(v7, "length")))
  {
    NSLog(@"%s: error", "[ACCHWComponentAuthService _getForVeridianFDRData:intermediateCert:leafCert:]");
    v10 = 0;
  }

  else
  {
    *a5 = [NSData dataWithBytes:v12[0] length:v9];
    v10 = 1;
  }

  return v10;
}

- (void)_notifyComponentAuthFailure
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.accessories.hwComponent.isTrusted.failure";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying clients of %s", &v5, 0xCu);
  }

  notify_post("com.apple.accessories.hwComponent.isTrusted.failure");
}

- (int)_verifyBatteryMatch:(id)a3 outputBatteryCode:(unsigned __int16 *)a4
{
  v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  v5 = a3;
  clock_gettime(_CLOCK_REALTIME, &v19);
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v21 = 1334;
    v22 = 2048;
    tv_sec = v19.tv_sec;
    v24 = 2048;
    v25 = v19.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_verifyBatteryMatch %d: %ld.%03llu", buf, 0x1Cu);
  }

  v9 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  v10 = SecCertificateCopyComponentAttributes();
  v11 = [v10 objectForKey:&off_100023688];
  v12 = [v10 objectForKey:&off_1000236A0];
  if (v10)
  {
    v13 = MGGetBoolAnswer();
    if ([v11 BOOLValue])
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v17 = 28;
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v15 = [v11 BOOLValue];
    if (v13)
    {
      v16 = 27;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    if (a4 && v12 && ((v15 | v13 ^ 1) & 1) != 0)
    {
      *buf = 0;
      [v12 getBytes:buf length:2];
      *a4 = *buf;
      if (!v9)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:

  return v17;
}

- (void)signVeridianChallenge:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v40 = a4;
  init_logging();
  v7 = objc_alloc_init(ACCHWComponentAuthServiceParams);
  v41 = -1431655766;
  [(ACCHWComponentAuthServiceParams *)v7 setChallenge:v6];
  [(ACCHWComponentAuthServiceParams *)v7 setModuleAuthService:[(ACCHWComponentAuthService *)self _findModuleAuthService:2 withAuthFlags:&v41]];
  [(ACCHWComponentAuthServiceParams *)v7 setAuthFlags:v41];
  v8 = [(ACCHWComponentAuthServiceParams *)v7 moduleAuthService];
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v8)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v11 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ACCHWComponentAuthService signVeridianChallenge:v7 completionHandler:?];
    }

    v14 = 0;
    while (1)
    {
      v15 = gLogObjects;
      v16 = gNumLogObjects;
      if (!gLogObjects || gNumLogObjects < 4)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v43 = v15;
          *&v43[8] = 1024;
          LODWORD(v44) = v16;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v18 = &_os_log_default;
        v19 = &_os_log_default;
      }

      else
      {
        v19 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v43 = v14 + 1;
        *&v43[4] = 1024;
        *&v43[6] = 3;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "tryCount = %d (max tries %d)", buf, 0xEu);
      }

      v20 = [(ACCHWComponentAuthService *)self _signChallenge:v7];
      v21 = gLogObjects;
      v22 = gNumLogObjects;
      v23 = !gLogObjects || gNumLogObjects <= 3;
      v24 = !v23;
      if (!v20)
      {
        break;
      }

      v25 = v20;
      if (v24)
      {
        v26 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v43 = v21;
          *&v43[8] = 1024;
          LODWORD(v44) = v22;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v27 = &_os_log_default;
        v26 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v43 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "authError %d after _signChallenge", buf, 8u);
      }

      if ((v14 + 1) <= 2 && v25 == 30)
      {
        v28 = gLogObjects;
        v29 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v30 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v43 = v28;
            *&v43[8] = 1024;
            LODWORD(v44) = v29;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v31 = &_os_log_default;
          v30 = &_os_log_default;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(ACCHWComponentAuthService *)v47 signVeridianChallenge:v30 completionHandler:?];
        }

        sleep(0x14u);
      }

      if (++v14 > 2)
      {
        goto LABEL_70;
      }
    }

    if (v24)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v43 = v21;
        *&v43[8] = 1024;
        LODWORD(v44) = v22;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v12 = &_os_log_default;
      v33 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "no error after _signChallenge!", buf, 2u);
    }

    v25 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
      }

      v12 = &_os_log_default;
      v32 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ERROR No batteryAuth io_service_t is found!", buf, 2u);
    }

    v25 = 22;
  }

LABEL_70:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v34 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v34 = &_os_log_default;
    v35 = &_os_log_default;
  }

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(ACCHWComponentAuthServiceParams *)v7 signature];
    v37 = [(ACCHWComponentAuthServiceParams *)v7 deviceNonce];
    *buf = 138412802;
    *v43 = v36;
    *&v43[8] = 2112;
    v44 = v37;
    v45 = 1024;
    v46 = v25;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "signVeridianChallenge Replying with signature=%@, deviceNonce=%@, authError = %d", buf, 0x1Cu);
  }

  v38 = [(ACCHWComponentAuthServiceParams *)v7 signature];
  v39 = [(ACCHWComponentAuthServiceParams *)v7 deviceNonce];
  v40[2](v40, v38, v39, v25);
}

- (void)verifyBatteryMatch:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v25 = a4;
  init_logging();
  v7 = 0;
  while (1)
  {
    v8 = gLogObjects;
    v9 = gNumLogObjects;
    if (!gLogObjects || gNumLogObjects < 4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v27 = v8;
        *&v27[8] = 1024;
        v28 = v9;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v27 = v7 + 1;
      *&v27[4] = 1024;
      *&v27[6] = 3;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "tryCount = %d (max tries %d)", buf, 0xEu);
    }

    v13 = [(ACCHWComponentAuthService *)self _verifyBatteryMatch:v6];
    v14 = v13;
    v15 = gLogObjects;
    v16 = gNumLogObjects;
    v17 = !gLogObjects || gNumLogObjects <= 3;
    v18 = !v17;
    if (!v13)
    {
      break;
    }

    if (v18)
    {
      v19 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v27 = v15;
        *&v27[8] = 1024;
        v28 = v16;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v20 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v27 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "authError %d after _verifyBatteryMatch", buf, 8u);
    }

    if (++v7 >= 3)
    {
      goto LABEL_36;
    }
  }

  if (v18)
  {
    v21 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v27 = v15;
      *&v27[8] = 1024;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v21 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "no error after _verifyBatteryMatch!", buf, 2u);
  }

LABEL_36:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v23 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v27 = v14;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "verifyBatteryMatch Replying with authError = %d", buf, 8u);
  }

  v25[2](v25, v14);
}

- (void)_logToAnalytics:(int)a3 authError:(int)a4 fdrValidationStatus:(int)a5 authDurationInMS:(unint64_t)a6
{
  v9 = @"Failed";
  if (!a4)
  {
    v9 = @"Passed";
  }

  v30[0] = v9;
  v29[0] = @"authState";
  v29[1] = @"authErrorDescription";
  v10 = [NSString stringWithUTF8String:kACCTransport_IOAccessoryAuthCP_AuthError_Strings[a4]];
  v30[1] = v10;
  v29[2] = @"isInductive";
  v11 = [NSNumber numberWithBool:0];
  v30[2] = v11;
  v29[3] = @"isPeriodic";
  v12 = [NSNumber numberWithBool:1];
  v30[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v14 = [NSMutableDictionary dictionaryWithDictionary:v13];

  BucketizedWiredAuthDuration = acc_analytics_createBucketizedWiredAuthDuration(a6);
  [v14 setObject:BucketizedWiredAuthDuration forKey:@"wiredAuthDuration"];

  if ((a3 - 1) < 3)
  {
    v16 = *(&kACCHWComponentAuthServiceInternalModule_Strings + a3);
LABEL_7:
    [v14 setObject:v16 forKey:@"internalModuleType"];
    goto LABEL_8;
  }

  if (!a3)
  {
    v17 = [NSNumber numberWithBool:1];
    [v14 setObject:v17 forKey:@"isBatteryModule"];

    v16 = @"Battery";
    goto LABEL_7;
  }

LABEL_8:
  v18 = [NSString stringWithUTF8String:(&kACCHWComponentAuthServiceFDRStatus_Strings)[a5]];
  [v14 setObject:v18 forKey:@"FDRStatus"];

  v19 = +[NSProcessInfo processInfo];
  [v19 systemUptime];
  v21 = v20;

  v22 = [NSNumber numberWithDouble:v21];
  [v14 setObject:v22 forKey:@"Uptime"];

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v23 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [ACCHWComponentAuthService _authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:];
    }

    v23 = &_os_log_default;
    v24 = &_os_log_default;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = @"com.apple.accessories.authCPEvent";
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v25, 0x16u);
  }

  AnalyticsSendEvent();
}

void __138__ACCHWComponentAuthService__authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics___block_invoke(uint64_t a1)
{
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = v2;
      *&buf[12] = 1024;
      *&buf[14] = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 67109888;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = 363;
    *&buf[14] = 2048;
    *&buf[16] = __tp.tv_sec;
    *&buf[24] = 2048;
    *&buf[26] = __tp.tv_nsec / 0xF4240uLL;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(moduleType=%d) %d: %ld.%03llu", buf, 0x22u);
  }

  memset(buf, 170, sizeof(buf));
  v14 = 0;
  v8 = +[MSUDataAccessor sharedDataAccessor];
  v9 = [v8 copyPathForPersonalizedData:2 error:0];

  if (v9)
  {
    v10 = [NSData dataWithContentsOfFile:v9];
    v11 = v10;
    if (!v10 || Img4DecodeInitManifest([v10 bytes], objc_msgSend(v10, "length"), buf))
    {
      v12 = 0;
    }

    else if (Img4DecodeGetBooleanFromSection(buf, 0, 1684104054, &v14))
    {
      v12 = 0;
      v14 = 0;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  _authenticateModuleWithChallenge_completionHandler_moduleType_updateRegistry_updateUIProperty_logToAnalytics__disableAuth = v12;
}

- (void)_authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.3()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 8u);
  }
}

- (void)_authenticateModuleWithChallenge:(void *)a1 completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.5(void *a1)
{
  [a1 moduleAuthService];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xEu);
}

- (void)_authenticateModuleWithChallenge:(os_log_t)log completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.7(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(moduleType=%d) authError = eNoDeviceIDSNError after _verifyDeviceIDSN", buf, 8u);
}

- (void)_authenticateModuleWithChallenge:completionHandler:moduleType:updateRegistry:updateUIProperty:logToAnalytics:.cold.13()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 8u);
  }
}

- (void)_verifyCertificate:.cold.1()
{
  v0 = logObjectForModule();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
  }
}

- (void)_verifyCertificate:(void *)a1 .cold.3(void *a1)
{
  v5 = [a1 certificate];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

- (void)_signChallenge:(mach_error_t)a1 .cold.2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_verifyModuleCertificate:forModuleType:.cold.4()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)_verifyModuleCertificate:forModuleType:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_verifyModuleCertificate:forModuleType:.cold.7()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)_verifyModuleCertificate:forModuleType:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_verifyModuleCertificate:forModuleType:.cold.9()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)_verifyModuleCertificate:forModuleType:.cold.10()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_7(v1))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)_verifyModuleFDR:(os_log_t)log forModuleType:.cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109634;
  v4[1] = a2;
  v5 = 2080;
  v6 = "[ACCHWComponentAuthService _verifyModuleFDR:forModuleType:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: AMFDRSealingMapCopyLocalDataForClass returned error=%@", v4, 0x1Cu);
}

- (void)_verifyModuleFDR:(void *)a3 forModuleType:.cold.2(int a1, void *a2, void *a3)
{
  v6 = logObjectForModule();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109634;
    v7[1] = a1;
    OUTLINED_FUNCTION_8();
    v7[5] = 1257;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: %d: returned error", v7, 0x18u);
  }
}

- (void)_verifyModuleFDR:(int)a1 forModuleType:(void *)a2 .cold.3(int a1, void *a2)
{
  v4 = logObjectForModule();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109634;
    v5[1] = a1;
    OUTLINED_FUNCTION_8();
    v5[5] = 1242;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "(moduleType=%d) %s: %d: returned error", v5, 0x18u);
  }
}

- (void)_verifyModuleFDR:forModuleType:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_verifyModuleFDR:forModuleType:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_verifyModuleFDR:forModuleType:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)signVeridianChallenge:(void *)a1 completionHandler:.cold.2(void *a1)
{
  [a1 moduleAuthService];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 8u);
}

- (void)signVeridianChallenge:(os_log_t)log completionHandler:.cold.3(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 20;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Sleeping for %d seconds before retrying auth", buf, 8u);
}

@end