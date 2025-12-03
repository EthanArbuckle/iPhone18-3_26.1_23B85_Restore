@interface BCAppleBacklightBrtControl
+ (id)copyAvailableControls;
+ (id)newMonitorWithHandler:(id)handler error:(id *)error;
+ (void)copyAvailableControls;
- (BCAppleBacklightBrtControl)init;
- (BCAppleBacklightBrtControl)initWithService:(unsigned int)service;
- (BOOL)parseAuroraCapabilities;
- (BOOL)parseChromicCorrectionParams;
- (BOOL)setNits:(double)nits error:(id *)error;
- (BOOL)setProperty:(id)property value:(id)value error:(id *)error;
- (double)getNitsWithError:(id *)error;
- (id)ID;
- (id)copyModuleIdentifier;
- (id)copyProperty:(id)property error:(id *)error;
- (unint64_t)registryID;
- (void)dealloc;
- (void)parseAuroraCapabilities;
- (void)parseColorCapabilities;
@end

@implementation BCAppleBacklightBrtControl

+ (id)newMonitorWithHandler:(id)handler error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v7 = &unk_2837438E8;
  objc_autoreleasePoolPop(v6);
  v8 = dispatch_queue_create("com.apple.BCAppleBacklightBrtControl.global", 0);
  v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  IONotificationPortSetDispatchQueue(v9, v8);
  if (handler)
  {
    v10 = _Block_copy(handler);
  }

  else
  {
    v10 = 0;
  }

  notification = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke;
  v26[3] = &unk_2784F8CE0;
  v26[4] = v10;
  v11 = _newBlockWrapper(v26);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke_2;
  v21 = &unk_2784F8D08;
  v24 = v9;
  v25 = v11;
  v22 = v8;
  v23 = v10;
  v12 = IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", &unk_2837438E8, _iokitCallback, v11, &notification);
  if (!v12)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke_6;
    v17[3] = &__block_descriptor_44_e5_v8__0l;
    v17[4] = v11;
    v18 = notification;
    dispatch_async(v8, v17);
    v15 = objc_alloc_init(BCBrtMonitor);
    [(BCBrtMonitor *)v15 setCancelHandler:v19];
    return v15;
  }

  v13 = v12;
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    +[BCAppleBacklightBrtControl newMonitorWithHandler:error:];
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (error)
  {
LABEL_9:
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:v13];
  }

LABEL_10:
  v20(v19);
  return 0;
}

uint64_t __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke(uint64_t a1, io_iterator_t iterator)
{
  v12 = *MEMORY[0x277D85DE8];
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&dword_223D10000, inited, OS_LOG_TYPE_DEFAULT, "BCAppleBacklightBrtControl: got back service %u", buf, 8u);
      }

      v7 = [[BCAppleBacklightBrtControl alloc] initWithService:v5];
      v8 = *(a1 + 32);
      if (v8)
      {
        (*(v8 + 16))(v8, v7);
      }

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke_2;
  v3[3] = &unk_2784F8D08;
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  dispatch_async(v4, v3);
  return result;
}

void __58__BCAppleBacklightBrtControl_newMonitorWithHandler_error___block_invoke_2(uint64_t a1)
{
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_223D10000, inited, OS_LOG_TYPE_DEFAULT, "BCAppleBacklightBrtControl: cleaning up monitor", v3, 2u);
  }

  IONotificationPortDestroy(*(a1 + 48));
  _freeBlockWrapper(*(a1 + 56));
  dispatch_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
}

- (id)copyModuleIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v2 initWithString:@"com.apple.BCBrtControl.AppleBacklight"];
}

- (BCAppleBacklightBrtControl)initWithService:(unsigned int)service
{
  v119 = *MEMORY[0x277D85DE8];
  v114.receiver = self;
  v114.super_class = BCAppleBacklightBrtControl;
  v4 = [(BCBrtControl *)&v114 init];
  if (v4)
  {
    context = objc_autoreleasePoolPush();
    *(v4 + 29) = service;
    if (service)
    {
      v5 = *MEMORY[0x277CBECE8];
      CFProperty = IORegistryEntryCreateCFProperty(service, @"IODisplayParameters", *MEMORY[0x277CBECE8], 0);
      v7 = CFProperty;
      if ([v4 logHandle])
      {
        logHandle = [v4 logHandle];
      }

      else
      {
        v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
LABEL_10:
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = CFProperty;
            _os_log_impl(&dword_223D10000, v9, OS_LOG_TYPE_DEFAULT, "driver params = %{public}@", buf, 0xCu);
          }

          if (CFProperty)
          {
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"brightness", "objectForKeyedSubscript:", @"min", "doubleValue"}];
            *(v4 + 15) = v12;
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"brightness", "objectForKeyedSubscript:", @"max", "doubleValue"}];
            *(v4 + 16) = v13;
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"BrightnessMilliNits", "objectForKeyedSubscript:", @"min", "doubleValue"}];
            *(v4 + 8) = v14 / 1000.0;
            *(v4 + 7) = 0;
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"BrightnessMilliNits", "objectForKeyedSubscript:", @"max", "doubleValue"}];
            *(v4 + 6) = v15 / 1000.0;
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"BrightnessMicroAmps", "objectForKeyedSubscript:", @"min", "doubleValue"}];
            *(v4 + 17) = v16 * 1000.0;
            [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"BrightnessMicroAmps", "objectForKeyedSubscript:", @"max", "doubleValue"}];
            *(v4 + 18) = v17 * 1000.0;
            if (*(v4 + 16) < *(v4 + 15))
            {
              [BCAppleBacklightBrtControl initWithService:];
            }

            if (*(v4 + 6) < *(v4 + 8))
            {
              [BCAppleBacklightBrtControl initWithService:];
            }

            v4[32] = 1;
            v18 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"dfr-brightness-control", v5, 3u);
            v19 = v18;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 getBytes:v4 + 160 length:1];
              if (v4[160])
              {
                v20 = MEMORY[0x277CBEC38];
              }

              else
              {
                v20 = MEMORY[0x277CBEC28];
              }

              [*(v4 + 5) setObject:v20 forKeyedSubscript:@"DFR"];
            }

            v21 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"dcp-brightness-node", v5, 3u);
            v22 = v21;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v21 getBytes:v4 + 161 length:1];
              if (v4[161])
              {
                v23 = MEMORY[0x277CBEC38];
              }

              else
              {
                v23 = MEMORY[0x277CBEC28];
              }

              [*(v4 + 5) setObject:v23 forKeyedSubscript:@"DCP"];
            }

            v108 = 160;
            if ((v4[160] & 1) == 0)
            {
              v24 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"energy-saving", v5, 3u);
              v25 = v24;
              v4[163] = 1;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v24 getBytes:v4 + 163 length:1];
              }

              if (v4[163])
              {
                v26 = MEMORY[0x277CBEC38];
              }

              else
              {
                v26 = MEMORY[0x277CBEC28];
              }

              [*(v4 + 5) setObject:v26 forKeyedSubscript:{@"BatterySavingFeatures", 160}];
            }

            v27 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"thermal-mitigation", v5, 3u);
            v28 = v27;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 getBytes:v4 + 168 length:8];
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLongLong:", *(v4 + 21)), @"ThermalMitigation"}];
              v29 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"thermal-mitigation-min-cap", v5, 3u);
              v30 = v29;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *buf = 0;
                if ([v29 length] >= 4)
                {
                  [v29 getBytes:buf length:4];
                  *&v31 = *buf * 0.000015259;
                  [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v31), @"ThermalMitigationMinCap"}];
                }
              }
            }

            v32 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"force-brightness-control", v5, 3u);
            v33 = v32;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v32 getBytes:v4 + 162 length:1];
            }

            v34 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"backlight-marketing-table-force", v5, 3u);
            v35 = v34;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              buf[0] = 0;
              [v34 getBytes:buf length:1];
              if (buf[0])
              {
                v36 = MEMORY[0x277CBEC38];
              }

              else
              {
                v36 = MEMORY[0x277CBEC28];
              }

              [*(v4 + 5) setObject:v36 forKeyedSubscript:{@"NitsToUserBrightnessTableForce", v108}];
            }

            v37 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"backlight-marketing-table", v5, 3u);
            v38 = v37;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              inited = *(v4 + 1);
              if (!inited)
              {
                inited = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  inited = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_223D10000, inited, OS_LOG_TYPE_INFO, "slider mapping retrieved from the backlight driver", buf, 2u);
              }

              v40 = [v37 length];
              if (v40 >= 4)
              {
                bytes = [v37 bytes];
                if (bytes)
                {
                  v42 = v40 >> 2;
                  v43 = [MEMORY[0x277CBEB18] arrayWithCapacity:v42];
                  v45 = 0;
                  do
                  {
                    *&v44 = *(bytes + 4 * v45) * 0.000015259;
                    [v43 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v44), v45++}];
                  }

                  while (v42 != v45);
                  v46 = [MEMORY[0x277CBEA60] arrayWithArray:v43];
                  if (v46)
                  {
                    [*(v4 + 5) setObject:v46 forKeyedSubscript:@"NitsToUserBrightnessTable"];
                  }
                }
              }
            }

            if (![*(v4 + 5) objectForKeyedSubscript:{@"NitsToUserBrightnessTable", v108}])
            {
              v47 = *(v4 + 1);
              if (!v47)
              {
                v47 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v47 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_223D10000, v47, OS_LOG_TYPE_INFO, "artificial slider mapping", buf, 2u);
              }

              [*(v4 + 5) setObject:copyNitsToUserMapping() forKeyedSubscript:@"NitsToUserBrightnessTable"];
            }

            *&v48 = load_fixed_float_from_edt(*(v4 + 29), @"EDRSecondsPerStopRapid");
            v49 = *&v48;
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v48), @"EDRSecondsPerStopRapid"}];
            v50 = *(v4 + 1);
            if (!v50)
            {
              v50 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v50 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v49;
              _os_log_impl(&dword_223D10000, v50, OS_LOG_TYPE_INFO, "EDR APT seconds per stop default override to %f", buf, 0xCu);
            }

            *&v51 = load_fixed_float_from_edt(*(v4 + 29), @"EDRSecondsPerStopDefault");
            v52 = *&v51;
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v51), @"EDRSecondsPerStopDefault"}];
            v53 = *(v4 + 1);
            if (!v53)
            {
              v53 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v53 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v52;
              _os_log_impl(&dword_223D10000, v53, OS_LOG_TYPE_INFO, "EDR seconds per stop default override to %f", buf, 0xCu);
            }

            *&v54 = load_fixed_float_from_edt(*(v4 + 29), @"EDRExitSecondsPerStop");
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v54), @"EDRExitSecondsPerStop"}];
            v55 = *(v4 + 1);
            if (!v55)
            {
              v55 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v55 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              [objc_msgSend(*(v4 + 5) objectForKeyedSubscript:{@"EDRExitSecondsPerStop", "floatValue"}];
              *buf = 134217984;
              *&buf[4] = v56;
              _os_log_impl(&dword_223D10000, v55, OS_LOG_TYPE_INFO, "EDR EXIT seconds per stop default override to %f", buf, 0xCu);
            }

            *&v57 = load_fixed_float_from_edt(*(v4 + 29), @"EDRAuroraSecondsPerStop");
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v57), @"EDRAuroraSecondsPerStop"}];
            v58 = *(v4 + 1);
            if (!v58)
            {
              v58 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (!_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v58 = init_default_corebrightness_log();
              }
            }

            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              [objc_msgSend(*(v4 + 5) objectForKeyedSubscript:{@"EDRAuroraSecondsPerStop", "floatValue"}];
              *buf = 134217984;
              *&buf[4] = v59;
              _os_log_impl(&dword_223D10000, v58, OS_LOG_TYPE_INFO, "EDR Aurora seconds per stop default override to %f", buf, 0xCu);
            }

            v60 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreBrightness"];
            v61 = v60;
            if (v60)
            {
              [v60 synchronize];
              v62 = [v61 objectForKey:@"EDRSecondsPerStopRapid"];
              if (v62)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(v4 + 5) setObject:v62 forKeyedSubscript:@"EDRSecondsPerStopRapid"];
                  v63 = *(v4 + 1);
                  if (!v63)
                  {
                    v63 = _COREBRIGHTNESS_LOG_DEFAULT;
                    if (!_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v63 = init_default_corebrightness_log();
                    }
                  }

                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = @"EDRSecondsPerStopDefault";
                    *&buf[12] = 2112;
                    *&buf[14] = v62;
                    _os_log_impl(&dword_223D10000, v63, OS_LOG_TYPE_DEFAULT, "EDR APT seconds per stop overridden in Defaults %@ = %@ \n", buf, 0x16u);
                  }
                }
              }

              v64 = [v61 objectForKey:@"EDRSecondsPerStopDefault"];
              if (v64)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(v4 + 5) setObject:v64 forKeyedSubscript:@"EDRSecondsPerStopDefault"];
                  v65 = *(v4 + 1);
                  if (!v65)
                  {
                    v65 = _COREBRIGHTNESS_LOG_DEFAULT;
                    if (!_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v65 = init_default_corebrightness_log();
                    }
                  }

                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = @"EDRSecondsPerStopDefault";
                    *&buf[12] = 2112;
                    *&buf[14] = v64;
                    _os_log_impl(&dword_223D10000, v65, OS_LOG_TYPE_DEFAULT, "EDR seconds per stop overridden in Defaults %@ = %@ \n", buf, 0x16u);
                  }
                }
              }

              v66 = [v61 objectForKey:@"EDRExitSecondsPerStop"];
              if (v66)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(v4 + 5) setObject:v66 forKeyedSubscript:@"EDRExitSecondsPerStop"];
                  v67 = *(v4 + 1);
                  if (!v67)
                  {
                    v67 = _COREBRIGHTNESS_LOG_DEFAULT;
                    if (!_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v67 = init_default_corebrightness_log();
                    }
                  }

                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = @"EDRExitSecondsPerStop";
                    *&buf[12] = 2112;
                    *&buf[14] = v66;
                    _os_log_impl(&dword_223D10000, v67, OS_LOG_TYPE_DEFAULT, "EDR EXIT seconds per stop overridden in Defaults %@ = %@ \n", buf, 0x16u);
                  }
                }
              }

              v68 = [v61 objectForKey:@"EDRAuroraSecondsPerStop"];
              if (v68)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [*(v4 + 5) setObject:v68 forKeyedSubscript:@"EDRAuroraSecondsPerStop"];
                  v69 = *(v4 + 1);
                  if (!v69)
                  {
                    v69 = _COREBRIGHTNESS_LOG_DEFAULT;
                    if (!_COREBRIGHTNESS_LOG_DEFAULT)
                    {
                      v69 = init_default_corebrightness_log();
                    }
                  }

                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = @"EDRAuroraSecondsPerStop";
                    *&buf[12] = 2112;
                    *&buf[14] = v68;
                    _os_log_impl(&dword_223D10000, v69, OS_LOG_TYPE_DEFAULT, "EDR Aurora seconds per stop overridden in Defaults %@ = %@ \n", buf, 0x16u);
                  }
                }
              }
            }

            v70 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"EDRPotentialHeadroom", v5, 3u);
            v71 = v70;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && (v113 = 0, [v70 length] >= 4))
            {
              [v70 getBytes:&v113 length:4];
              *&v72 = v113 * 0.000015259;
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v72), @"EDRPotentialHeadroom"}];
              v73 = *(v4 + 1);
              if (!v73)
              {
                v73 = _COREBRIGHTNESS_LOG_DEFAULT;
                if (!_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  v73 = init_default_corebrightness_log();
                }
              }

              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                v74 = [*(v4 + 5) objectForKeyedSubscript:@"EDRPotentialHeadroom"];
                *buf = 138412290;
                *&buf[4] = v74;
                _os_log_impl(&dword_223D10000, v73, OS_LOG_TYPE_INFO, "EDR POTENTIAL headroom retrieved from brightness node (%@)", buf, 0xCu);
              }

              v75 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"EDRReferenceHeadroom", v5, 3u);
              v76 = v75;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (v112 = 0, [v75 length] >= 4))
              {
                [v75 getBytes:&v112 length:8];
                *&v77 = v112 * 0.000015259;
                [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v77), @"EDRReferenceHeadroom"}];
                v78 = *(v4 + 1);
                if (!v78)
                {
                  v78 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v78 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                {
                  v79 = [*(v4 + 5) objectForKeyedSubscript:@"EDRReferenceHeadroom"];
                  *buf = 138412290;
                  *&buf[4] = v79;
                  _os_log_impl(&dword_223D10000, v78, OS_LOG_TYPE_INFO, "EDR REFERENCE headroom retrieved from brightness node (%@)", buf, 0xCu);
                }
              }

              else
              {
                v82 = *(v4 + 1);
                if (!v82)
                {
                  v82 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (!_COREBRIGHTNESS_LOG_DEFAULT)
                  {
                    v82 = init_default_corebrightness_log();
                  }
                }

                if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  *&buf[4] = 0;
                  _os_log_impl(&dword_223D10000, v82, OS_LOG_TYPE_INFO, "EDR REFERENCE headroom not found in brightness node - use default (%f)", buf, 0xCu);
                }

                [*(v4 + 5) setObject:&unk_2837437A0 forKeyedSubscript:@"EDRReferenceHeadroom"];
              }
            }

            else if ((v4[v109] & 1) == 0)
            {
              [*(v4 + 5) setObject:&unk_2837437B0 forKeyedSubscript:@"EDRPotentialHeadroom"];
              [*(v4 + 5) setObject:&unk_2837437A0 forKeyedSubscript:@"EDRReferenceHeadroom"];
            }

            if ((v4[v109] & 1) == 0)
            {
              [*(v4 + 5) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"BuiltIn"];
            }

            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", *(v4 + 6)), @"MaxNits"}];
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", *(v4 + 6)), @"MaxNitsPanel"}];
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", *(v4 + 8)), @"MinNits"}];
            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLongLong:", objc_msgSend(v4, "registryID")), @"RegistryID"}];
            *(v4 + 19) = *(v4 + 6);
            v83 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"edr-max-nits", v5, 3u);
            v84 = v83;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              [v83 getBytes:buf length:4];
              v85 = (*buf * 0.000015259);
              *(v4 + 19) = v85;
            }

            else
            {
              v85 = *(v4 + 19);
            }

            [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:", v85), @"MaxNitsEDR"}];
            v86 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"user-accessible-max-nits", v5, 3u);
            v87 = v86;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              [v86 getBytes:buf length:4];
              *(v4 + 6) = (*buf * 0.000015259);
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithDouble:"), @"MaxNits"}];
            }

            v88 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"pcc-table", v5, 3u);
            v89 = v88;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              [v88 getBytes:buf length:4];
              *&v90 = *buf * 0.000015259;
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v90), @"PCCTable"}];
            }

            v91 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"pcc-ramp-time", v5, 3u);
            v92 = v91;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              [v91 getBytes:buf length:4];
              *&v93 = *buf * 0.000015259;
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v93), @"PCCRampTime"}];
            }

            v94 = IORegistryEntrySearchCFProperty(*(v4 + 29), "IOService", @"LmaxProduct", v5, 3u);
            v95 = v94;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              [v94 getBytes:buf length:4];
              *&v96 = *buf * 0.000015259;
              [*(v4 + 5) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v96), @"LmaxProduct"}];
            }

            [v4 parseAuroraCapabilities];
            [v4 parseChromicCorrectionParams];
            [v4 parseColorCapabilities];
            if ([v4 logHandle])
            {
              logHandle2 = [v4 logHandle];
            }

            else
            {
              v98 = _COREBRIGHTNESS_LOG_DEFAULT;
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
LABEL_162:
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  v99 = *(v4 + 5);
                  *buf = 138543362;
                  *&buf[4] = v99;
                  _os_log_impl(&dword_223D10000, v98, OS_LOG_TYPE_DEFAULT, "capabilities = %{public}@", buf, 0xCu);
                }

                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3052000000;
                v116 = __Block_byref_object_copy_;
                v117 = __Block_byref_object_dispose_;
                v118 = v4;
                v111[0] = MEMORY[0x277D85DD0];
                v111[1] = 3221225472;
                v111[2] = __46__BCAppleBacklightBrtControl_initWithService___block_invoke;
                v111[3] = &unk_2784F8D78;
                v111[4] = buf;
                *(v4 + 22) = _newBlockWrapper(v111);
                v100 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
                *(v4 + 23) = v100;
                IONotificationPortSetDispatchQueue(v100, [v4 queue]);
                *(v4 + 48) = 0;
                v101 = *(v4 + 23);
                v102 = objc_autoreleasePoolPush();
                v103 = &unk_2837438E8;
                objc_autoreleasePoolPop(v102);
                if (!IOServiceAddMatchingNotification(v101, "IOServiceTerminate", &unk_2837438E8, _iokitCallback, *(v4 + 22), v4 + 48))
                {
                  goto LABEL_171;
                }

                if ([v4 logHandle])
                {
                  logHandle3 = [v4 logHandle];
                }

                else
                {
                  v105 = _COREBRIGHTNESS_LOG_DEFAULT;
                  if (_COREBRIGHTNESS_LOG_DEFAULT)
                  {
LABEL_169:
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                    {
                      [BCAppleBacklightBrtControl initWithService:];
                    }

LABEL_171:
                    _Block_object_dispose(buf, 8);
                    goto LABEL_172;
                  }

                  logHandle3 = init_default_corebrightness_log();
                }

                v105 = logHandle3;
                goto LABEL_169;
              }

              logHandle2 = init_default_corebrightness_log();
            }

            v98 = logHandle2;
            goto LABEL_162;
          }

          if ([v4 logHandle])
          {
            logHandle4 = [v4 logHandle];
          }

          else
          {
            v81 = _COREBRIGHTNESS_LOG_DEFAULT;
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
LABEL_136:
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                [BCAppleBacklightBrtControl initWithService:];
              }

LABEL_138:

              v4 = 0;
LABEL_172:
              objc_autoreleasePoolPop(context);
              goto LABEL_173;
            }

            logHandle4 = init_default_corebrightness_log();
          }

          v81 = logHandle4;
          goto LABEL_136;
        }

        logHandle = init_default_corebrightness_log();
      }

      v9 = logHandle;
      goto LABEL_10;
    }

    if ([v4 logHandle])
    {
      logHandle5 = [v4 logHandle];
    }

    else
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_132:
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BCAppleBacklightBrtControl initWithService:];
        }

        goto LABEL_138;
      }

      logHandle5 = init_default_corebrightness_log();
    }

    v11 = logHandle5;
    goto LABEL_132;
  }

LABEL_173:
  v106 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __46__BCAppleBacklightBrtControl_initWithService___block_invoke(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    while (1)
    {
      v6 = *(a1 + 32);
      v7 = *(*(v6 + 8) + 40);
      if (v7)
      {
        if (v5 == v7[29])
        {
          break;
        }
      }

      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__BCAppleBacklightBrtControl_initWithService___block_invoke_2;
    v8[3] = &unk_2784F8D50;
    v8[4] = v6;
    return [v7 _runOnCallbackQueue:v8];
  }

  return result;
}

uint64_t __46__BCAppleBacklightBrtControl_initWithService___block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) logHandle])
  {
    inited = [*(*(*(a1 + 32) + 8) + 40) logHandle];
LABEL_3:
    v3 = inited;
    goto LABEL_5;
  }

  v3 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223D10000, v3, OS_LOG_TYPE_DEFAULT, "Display disconnected", v6, 2u);
  }

  result = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
  if (result)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
    return (*(v5 + 16))(v5, *(*(*(a1 + 32) + 8) + 40));
  }

  return result;
}

- (BCAppleBacklightBrtControl)init
{
  v3 = objc_autoreleasePoolPush();
  v4 = &unk_2837438E8;
  objc_autoreleasePoolPop(v3);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x277CD2898], &unk_2837438E8, &existing);
  v6 = 0;
  if (!MatchingServices)
  {
    v6 = IOIteratorNext(existing);
  }

  return [(BCAppleBacklightBrtControl *)self initWithService:v6];
}

+ (id)copyAvailableControls
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  existing = 0;
  v3 = *MEMORY[0x277CD2898];
  v4 = objc_autoreleasePoolPush();
  v5 = &unk_2837438E8;
  objc_autoreleasePoolPop(v4);
  if (IOServiceGetMatchingServices(v3, &unk_2837438E8, &existing))
  {
    v6 = 1;
  }

  else
  {
    v6 = existing == 0;
  }

  if (v6)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      +[BCAppleBacklightBrtControl copyAvailableControls];
    }
  }

  else
  {
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = [[BCAppleBacklightBrtControl alloc] initWithService:v9];
        if (v10)
        {
          v11 = v10;
          [v2 addObject:v10];
        }

        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v2;
}

- (unint64_t)registryID
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID(*(&self->_backlightService + 1), &entryID);
  return entryID;
}

- (id)ID
{
  result = self->super._id;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = objc_opt_class();
    result = [v4 initWithFormat:@"%@-%llu", NSStringFromClass(v5), -[BCAppleBacklightBrtControl registryID](self, "registryID")];
    self->super._id = result;
  }

  return result;
}

- (void)dealloc
{
  v3 = *(&self->_backlightService + 1);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  _freeBlockWrapper(&self->_terminationCallback->var0);
  terminationNotifPort = self->_terminationNotifPort;
  if (terminationNotifPort)
  {
    IONotificationPortDestroy(terminationNotifPort);
  }

  terminationIterator = self->_terminationIterator;
  if (terminationIterator)
  {
    IOObjectRelease(terminationIterator);
  }

  v6.receiver = self;
  v6.super_class = BCAppleBacklightBrtControl;
  [(BCBrtControl *)&v6 dealloc];
}

- (BOOL)setNits:(double)nits error:(id *)error
{
  if (self->_isDFR || self->_override)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    queue = [(BCBrtControl *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__BCAppleBacklightBrtControl_setNits_error___block_invoke;
    v10[3] = &unk_2784F8DA0;
    v10[5] = &v11;
    v10[6] = error;
    v10[4] = self;
    *&v10[7] = nits;
    dispatch_sync(queue, v10);
    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:16];
    }
  }

  return v8 & 1;
}

void __44__BCAppleBacklightBrtControl_setNits_error___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (![*(a1 + 32) _checkIsValid:*(a1 + 48)])
  {
    goto LABEL_14;
  }

  v4 = *(*(a1 + 32) + 116);
  v16 = @"brightness-nits";
  LODWORD(v3) = vcvtd_n_s64_f64(*(a1 + 56), 0x10uLL);
  v17[0] = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v5 = IORegistryEntrySetCFProperties(v4, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1]);
  v6 = [*(a1 + 32) logHandle];
  if (v5)
  {
    if (v6)
    {
      inited = [*(a1 + 32) logHandle];
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_10:
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __44__BCAppleBacklightBrtControl_setNits_error___block_invoke_cold_1();
        }

        if (*(a1 + 48))
        {
          v11 = 0;
          **(a1 + 48) = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:v5];
          goto LABEL_15;
        }

LABEL_14:
        v11 = 0;
        goto LABEL_15;
      }

      inited = init_default_corebrightness_log();
    }

    v8 = inited;
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = [*(a1 + 32) logHandle];
LABEL_8:
    v10 = v9;
    goto LABEL_17;
  }

  v10 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v9 = init_default_corebrightness_log();
    goto LABEL_8;
  }

LABEL_17:
  v11 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 56);
    v14 = 134217984;
    v15 = v13;
    _os_log_impl(&dword_223D10000, v10, OS_LOG_TYPE_INFO, "Setting nits to %f", &v14, 0xCu);
  }

LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) = v11;
  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
}

- (double)getNitsWithError:(id *)error
{
  if (self->_isDFR || self->_override)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    queue = [(BCBrtControl *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__BCAppleBacklightBrtControl_getNitsWithError___block_invoke;
    block[3] = &unk_2784F8DC8;
    block[5] = &v9;
    block[6] = error;
    block[4] = self;
    dispatch_sync(queue, block);
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = -1.0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:16];
    }
  }

  return v6;
}

void __47__BCAppleBacklightBrtControl_getNitsWithError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = -1.0;
  if ([*(a1 + 32) _checkIsValid:*(a1 + 48)])
  {
    CFProperty = IORegistryEntryCreateCFProperty(*(*(a1 + 32) + 116), @"IODisplayParameters", *MEMORY[0x277CBECE8], 0);
    v5 = CFProperty;
    if (CFProperty)
    {
      [objc_msgSend(objc_msgSend(CFProperty objectForKeyedSubscript:{@"BrightnessMilliNits", "objectForKeyedSubscript:", @"value", "doubleValue"}];
      v3 = v6 / 1000.0;
    }

    else if (*(a1 + 48))
    {
      **(a1 + 48) = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:19];
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)setProperty:(id)property value:(id)value error:(id *)error
{
  if (!_isIOKitCompatible())
  {
    if (!error)
    {
      return 0;
    }

    v10 = 18;
LABEL_7:
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:v10];
    result = 0;
    *error = v11;
    return result;
  }

  v9 = IORegistryEntrySetCFProperty(*(&self->_backlightService + 1), property, value);
  if (v9)
  {
    v10 = v9;
    if (!error)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return 1;
}

- (id)copyProperty:(id)property error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (_isIOKitCompatible())
  {
    CFProperty = IORegistryEntryCreateCFProperty(*(&self->_backlightService + 1), property, *MEMORY[0x277CBECE8], 0);
  }

  else
  {
    CFProperty = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:18];
    }
  }

  if ([(BCBrtControl *)self logHandle])
  {
    inited = [(BCBrtControl *)self logHandle];
LABEL_7:
    v9 = inited;
    goto LABEL_9;
  }

  v9 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_7;
  }

LABEL_9:
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (error)
    {
      v10 = *error;
    }

    else
    {
      v10 = 0;
    }

    v13 = 138412802;
    propertyCopy = property;
    v15 = 2112;
    v16 = CFProperty;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_223D10000, v9, OS_LOG_TYPE_INFO, "copyProperty(%@) = %@ (error: %@)", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return CFProperty;
}

- (void)parseColorCapabilities
{
  v39 = *MEMORY[0x277D85DE8];
  v38 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"pre-strobe-dim-period", &v38))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38], @"PreStrobeDimPeriod");
  }

  v37 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"aml-only-support", &v37))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37], @"ForcedAmmoliteSupport");
  }

  v36 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"truetone-shift-a", &v36))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36], @"HarmonyShiftA");
  }

  v35 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"truetone-shift-b", &v35))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v35], @"HarmonyShiftB");
  }

  v34 = 0;
  if (load_int_from_edt(*(&self->_backlightService + 1), @"pab-scaler-index", &v34))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInt:v34], @"DisplayVendorIndex");
  }

  v33 = 0;
  AmmoliteKey = createAmmoliteKey("aml-table-factor", v34);
  if (!AmmoliteKey)
  {
    goto LABEL_16;
  }

  v4 = AmmoliteKey;
  if ((load_uint_from_edt(*(&self->_backlightService + 1), AmmoliteKey, &v33) & 1) == 0)
  {
    CFRelease(v4);
LABEL_16:
    v32 = 0;
    if (load_uint_from_edt(*(&self->_backlightService + 1), @"aml-table-factor", &v32))
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v32], @"AmmlTableFactor");
    }

    v7 = 0;
    v32 = 0;
    v6 = @"aml-abs-lux-thresh";
    goto LABEL_19;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33], @"AmmlTableFactor");
  CFRelease(v4);
  v32 = 0;
  v5 = createAmmoliteKey("aml-abs-lux-thresh", v34);
  if (!v5)
  {
    v31 = 0;
    goto LABEL_24;
  }

  v6 = v5;
  v7 = 1;
LABEL_19:
  if (load_uint_from_edt(*(&self->_backlightService + 1), v6, &v32))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithDouble:v32 * 0.0000152587891], @"AmmlAbsLux");
  }

  CFRelease(v6);
  v31 = 0;
  if (!v7)
  {
    v8 = @"aml-rel-lux-thresh";
    goto LABEL_26;
  }

LABEL_24:
  v9 = createAmmoliteKey("aml-rel-lux-thresh", v34);
  if (!v9)
  {
    v30 = 0;
    goto LABEL_33;
  }

  v8 = v9;
  LOBYTE(v7) = 1;
LABEL_26:
  if (load_uint_from_edt(*(&self->_backlightService + 1), v8, &v31))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithDouble:v31 * 0.0000152587891], @"AmmlRelLux");
  }

  CFRelease(v8);
  v30 = 0;
  if (v7)
  {
LABEL_33:
    v10 = createAmmoliteKey("aml-period", v34);
    v13 = load_uint_from_edt(*(&self->_backlightService + 1), v10, &v30);
    if (!v10)
    {
      v12 = 1;
      goto LABEL_37;
    }

    v11 = 1;
    v12 = 1;
    if (v13)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v10 = @"aml-period";
  v11 = 0;
  v12 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"aml-period", &v30))
  {
LABEL_30:
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithDouble:v30 * 0.0000152587891], @"AmmlPeriod");
    v12 = v11;
  }

LABEL_31:
  CFRelease(v10);
LABEL_37:
  v14 = [(NSMutableDictionary *)self->super._capabilities objectForKeyedSubscript:@"AmmlTableFactor"];
  v15 = MEMORY[0x277CBECE8];
  if (v14)
  {
    [(NSMutableDictionary *)self->super._capabilities objectForKeyedSubscript:@"AmmlTableFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v12)
      {
        v16 = createAmmoliteKey("aml-table", v34);
        if (!v16)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v16 = @"aml-table";
      }

      v17 = IORegistryEntrySearchCFProperty(*(&self->_backlightService + 1), "IOService", v16, *v15, 3u);
      if (v17)
      {
        v18 = v17;
        [(NSMutableDictionary *)self->super._capabilities setObject:v17 forKeyedSubscript:@"AmmlTable"];
      }

      CFRelease(v16);
    }
  }

LABEL_46:
  v19 = IORegistryEntrySearchCFProperty(*(&self->_backlightService + 1), "IOService", @"truetone-strength", *v15, 3u);
  if (v19)
  {
    v20 = v19;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v20))
    {
      MEMORY[0x28223BE20]();
      if (CFDataGetLength(v20) >= 0xC)
      {
        v40.location = 0;
        v40.length = 12;
        CFDataGetBytes(v20, v40, v28);
        v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
        for (i = 0; i != 6; ++i)
        {
          v24 = objc_alloc(MEMORY[0x277CCABB0]);
          LOWORD(v25) = v28[i];
          v26 = v25 / 1000.0;
          *&v26 = v26;
          [v22 setObject:objc_msgSend(v24 atIndexedSubscript:{"initWithFloat:", v26), i}];
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CBEA60] arrayWithArray:v22], @"HarmonyStrength");
      }
    }

    CFRelease(v20);
  }

  v29 = 0;
  if (load_uint_from_edt(*(&self->_backlightService + 1), @"blr-cct-warning", &v29))
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29], @"BLRCCTWarning");
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)parseAuroraCapabilities
{
  v3 = objc_autoreleasePoolPush();
  v96 = 0;
  v4 = load_int_from_edt(*(&self->_backlightService + 1), @"supports-aurora", &v96);
  if (v96)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v95 = 0;
    if (load_int_from_edt(*(&self->_backlightService + 1), @"aurora-ignore-peak-apce", &v95))
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v95), @"AuroraIgnorePeakAPCE"}];
    }

    *&v7 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-cltm-threshold");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v7), @"AuroraCLTMThreshold"}];
    *&v8 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-cltm-enter-multiplier");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v8), @"AuroraCLTMEnterMultiplier"}];
    *&v9 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-upo-threshold");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v9), @"AuroraUPOThreshold"}];
    *&v10 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-upo-enter-multiplier");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v10), @"AuroraUPOEnterMultiplier"}];
    *buf = 0;
    float_array_from_edt = load_float_array_from_edt(*(&self->_backlightService + 1), @"aurora-enter-lux", buf);
    v12 = *buf;
    if (*buf && float_array_from_edt)
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:float_array_from_edt];
      for (i = 0; i != float_array_from_edt; ++i)
      {
        LODWORD(v14) = *(*buf + 4 * i);
        [v13 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v14), i}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v13), @"AuroraEnterLux"}];
      v12 = *buf;
    }

    free(v12);
    v93 = 0;
    v16 = load_float_array_from_edt(*(&self->_backlightService + 1), @"aurora-exit-lux", &v93);
    v17 = v93;
    if (v93 && v16)
    {
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
      for (j = 0; j != v16; ++j)
      {
        LODWORD(v19) = *(v93 + j);
        [v18 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v19), j}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v18), @"AuroraExitLux"}];
      v17 = v93;
    }

    free(v17);
    v92 = 0;
    v21 = load_float_array_from_edt(*(&self->_backlightService + 1), @"aurora-saturation-lux", &v92);
    v22 = v92;
    if (v92 && v21)
    {
      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v21];
      for (k = 0; k != v21; ++k)
      {
        LODWORD(v24) = *(v92 + k);
        [v23 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v24), k}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v23), @"AuroraSaturationLux"}];
      v22 = v92;
    }

    free(v22);
    *&v26 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-avrg-apce-sampling-rate");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v26), @"AuroraAverageAPCESamplingRate"}];
    *&v27 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-ramp-up-speed");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v27), @"AuroraRampUpSpeed"}];
    *&v28 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-ramp-down-speed");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v28), @"AuroraRampDownSpeed"}];
    v91 = 0;
    v29 = load_float_array_from_edt(*(&self->_backlightService + 1), @"aurora-ramp-up-tap-points", &v91);
    if (v91)
    {
      if (v29 == 2)
      {
        v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        LODWORD(v31) = *v91;
        [v30 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v31), 0}];
        LODWORD(v32) = *(v91 + 1);
        [v30 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v32), 1}];
        [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v30), @"AuroraRampUpTapAPCEPoints"}];
      }

      else
      {
        logHandle = self->super._logHandle;
        if (!logHandle)
        {
          logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            logHandle = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [BCAppleBacklightBrtControl parseAuroraCapabilities];
        }
      }
    }

    free(v91);
    v90 = 0;
    v36 = load_float_array_from_edt(*(&self->_backlightService + 1), @"aurora-ramp-down-tap-points", &v90);
    if (v90)
    {
      if (v36 == 2)
      {
        v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
        LODWORD(v38) = *v90;
        [v37 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v38), 0}];
        LODWORD(v39) = *(v90 + 1);
        [v37 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v39), 1}];
        [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v37), @"AuroraRampDownTapAPCEPoints"}];
      }

      else
      {
        inited = self->super._logHandle;
        if (!inited)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
          if (!_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = init_default_corebrightness_log();
          }
        }

        if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
        {
          [BCAppleBacklightBrtControl parseAuroraCapabilities];
        }
      }
    }

    free(v90);
    *&v41 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-session-limit");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v41), @"AuroraSessionLimit"}];
    v89 = 0;
    if (load_int_from_edt(*(&self->_backlightService + 1), @"aurora-ignore-session-limit", &v89))
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v89), @"AuroraIgnoreSessionLimit"}];
    }

    *&v42 = load_float_from_edt(*(&self->_backlightService + 1), @"aurora-maximum-nits");
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v42), @"AuroraMaxNits"}];
    v88 = 0;
    if (load_int_from_edt(*(&self->_backlightService + 1), @"aurora-ignore-apce", &v88))
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v88), @"AuroraIgnoreAPCE"}];
    }

    v87 = 0;
    if (load_int_from_edt(*(&self->_backlightService + 1), @"aurora-allow-edr", &v87))
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v87), @"AuroraAllowEDR"}];
    }

    v86 = 0;
    if (load_int_from_edt(*(&self->_backlightService + 1), @"supports-cltm-aware-aurora", &v86))
    {
      [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", v86), @"SupportCLTMAwareAurora"}];
    }

    v85 = 0;
    v43 = load_float_array_from_edt(*(&self->_backlightService + 1), @"paa-sdr-lut", &v85);
    v44 = v85;
    if (v85 && v43 >= 2)
    {
      v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:v43];
      for (m = 0; m != v43; ++m)
      {
        LODWORD(v46) = *(v85 + m);
        [v45 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v46), m}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v45), @"PowerAwareAuroraSDRLUT"}];
      v44 = v85;
    }

    free(v44);
    v84 = 0;
    v48 = load_float_array_from_edt(*(&self->_backlightService + 1), @"ramp-up-min-tap-point", &v84);
    v49 = v84;
    if (v84 && v48 >= 2)
    {
      v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:v48];
      for (n = 0; n != v48; ++n)
      {
        LODWORD(v51) = *(v84 + n);
        [v50 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v51), n}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v50), @"PAARampUpMinAPCEPoints"}];
      v49 = v84;
    }

    free(v49);
    v83 = 0;
    v53 = load_float_array_from_edt(*(&self->_backlightService + 1), @"ramp-up-max-tap-point", &v83);
    v54 = v83;
    if (v83 && v53 >= 2)
    {
      v55 = [MEMORY[0x277CBEB18] arrayWithCapacity:v53];
      for (ii = 0; ii != v53; ++ii)
      {
        LODWORD(v56) = *(v83 + ii);
        [v55 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v56), ii}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v55), @"PAARampUpMaxAPCEPoints"}];
      v54 = v83;
    }

    free(v54);
    v82 = 0;
    v58 = load_float_array_from_edt(*(&self->_backlightService + 1), @"ramp-down-min-tap-point", &v82);
    v59 = v82;
    if (v82 && v58 >= 2)
    {
      v60 = [MEMORY[0x277CBEB18] arrayWithCapacity:v58];
      for (jj = 0; jj != v58; ++jj)
      {
        LODWORD(v61) = *(v82 + jj);
        [v60 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v61), jj}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v60), @"PAARampDownMinAPCEPoints"}];
      v59 = v82;
    }

    free(v59);
    v81 = 0;
    v63 = load_float_array_from_edt(*(&self->_backlightService + 1), @"ramp-down-max-tap-point", &v81);
    v64 = v81;
    if (v81 && v63 >= 2)
    {
      v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:v63];
      for (kk = 0; kk != v63; ++kk)
      {
        LODWORD(v66) = *(v81 + kk);
        [v65 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v66), kk}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v65), @"PAARampDownMaxAPCEPoints"}];
      v64 = v81;
    }

    free(v64);
    v80 = 0;
    v68 = load_float_array_from_edt(*(&self->_backlightService + 1), @"max-aurora-gain", &v80);
    v69 = v80;
    if (v80 && v68 >= 2)
    {
      v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:v68];
      for (mm = 0; mm != v68; ++mm)
      {
        LODWORD(v71) = *(v80 + mm);
        [v70 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v71), mm}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v70), @"PAAMaxGain"}];
      v69 = v80;
    }

    free(v69);
    v79 = 0;
    v73 = load_float_array_from_edt(*(&self->_backlightService + 1), @"energy-consumption-target", &v79);
    v74 = v79;
    if (v79 && v73 >= 2)
    {
      v75 = [MEMORY[0x277CBEB18] arrayWithCapacity:v73];
      for (nn = 0; nn != v73; ++nn)
      {
        LODWORD(v76) = *(v79 + nn);
        [v75 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithFloat:", v76), nn}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x277CBEA60] forKeyedSubscript:{"arrayWithArray:", v75), @"PAAEnergyConsumptionTarget"}];
      v74 = v79;
    }

    free(v74);
    if ([dictionary count])
    {
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._capabilities, "setObject:forKeyedSubscript:", [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary], @"Aurora");
    }

    goto LABEL_89;
  }

  if ([(BCBrtControl *)self logHandle])
  {
    logHandle = [(BCBrtControl *)self logHandle];
LABEL_27:
    v34 = logHandle;
    goto LABEL_29;
  }

  v34 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle = init_default_corebrightness_log();
    goto LABEL_27;
  }

LABEL_29:
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_223D10000, v34, OS_LOG_TYPE_INFO, "Aurora not supported, skipping Aurora capabilities", buf, 2u);
  }

LABEL_89:
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)parseChromicCorrectionParams
{
  v3 = objc_autoreleasePoolPush();
  v4 = [CBGammaContrastPreservationParams paramsWithProvider:[CBIORegistryParser parserWithReader:[CBIORegistryReader readerWithService:*(&self->_backlightService + 1)]]];
  if (v4)
  {
    [(NSMutableDictionary *)self->super._capabilities setObject:[CBDictSerializer forKeyedSubscript:"serialize:" serialize:v4], @"CBGammaContrastPreservation"];
  }

  objc_autoreleasePoolPop(v3);
  return 1;
}

+ (void)newMonitorWithHandler:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyAvailableControls
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__BCAppleBacklightBrtControl_setNits_error___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseAuroraCapabilities
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end