@interface BCHIDBrtControl
+ (id)copyAvailableControls;
+ (id)newMonitorWithHandler:(id)handler error:(id *)error;
- (BCHIDBrtControl)init;
- (BCHIDBrtControl)initWithService:(unsigned int)service;
- (BOOL)_getDeviceNits:(double *)nits;
- (BOOL)_setDeviceNits:(double)minNits;
- (BOOL)setNits:(double)nits error:(id *)error;
- (double)getNitsWithError:(id *)error;
- (id)copyModuleIdentifier;
- (id)copyProperty:(id)property error:(id *)error;
- (unint64_t)registryID;
- (void)addDisplayService:(unsigned int)service;
- (void)dealloc;
- (void)refreshBoostFactor;
- (void)removeDisplayService;
- (void)setBoostFactor:(float)factor;
@end

@implementation BCHIDBrtControl

+ (id)newMonitorWithHandler:(id)handler error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = _copyMatchingDict();
  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_223D10000, inited, OS_LOG_TYPE_INFO, "matching dictionary = %@", buf, 0xCu);
  }

  v8 = dispatch_queue_create("com.apple.BCHIDBrtControl.global", 0);
  v9 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  IONotificationPortSetDispatchQueue(v9, v8);
  *buf = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke;
  v25[3] = &unk_2784F8CE0;
  v25[4] = handler;
  v10 = _newBlockWrapper(v25);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_2;
  v21 = &unk_2784F8DF0;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v11 = IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v6, _iokitCallback, v10, buf);
  if (!v11)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_5;
    v17[3] = &__block_descriptor_44_e5_v8__0l;
    v17[4] = v10;
    v18 = *buf;
    dispatch_async(v8, v17);
    v14 = objc_alloc_init(BCBrtMonitor);
    [(BCBrtMonitor *)v14 setCancelHandler:v19];
    goto LABEL_13;
  }

  v12 = v11;
  v13 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v13 = init_default_corebrightness_log();
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[BCHIDBrtControl newMonitorWithHandler:error:];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (error)
  {
LABEL_10:
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithIOKitError:v12];
  }

LABEL_11:
  v20(v19);
  v14 = 0;
LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = [[BCHIDBrtControl alloc] initWithService:v5];
      (*(*(a1 + 32) + 16))();

      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_3;
  block[3] = &unk_2784F8DF0;
  block[6] = *(a1 + 48);
  dispatch_async(*(a1 + 32), block);
}

void __47__BCHIDBrtControl_newMonitorWithHandler_error___block_invoke_3(uint64_t a1)
{
  IONotificationPortDestroy(*(a1 + 40));
  _freeBlockWrapper(*(a1 + 48));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

+ (id)copyAvailableControls
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  existing = 0;
  v3 = *MEMORY[0x277CD2898];
  v4 = _copyMatchingDict();
  if (IOServiceGetMatchingServices(v3, v4, &existing))
  {
    v5 = 1;
  }

  else
  {
    v5 = existing == 0;
  }

  if (!v5)
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = [[BCHIDBrtControl alloc] initWithService:v6];
      if (v7)
      {
        [v2 addObject:v7];
      }
    }
  }

  return v2;
}

- (id)copyModuleIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v2 initWithString:@"com.apple.BCBrtControl.HID"];
}

- (BCHIDBrtControl)initWithService:(unsigned int)service
{
  v73 = *MEMORY[0x277D85DE8];
  if (!service)
  {
    if ([(BCBrtControl *)self logHandle])
    {
      inited = [(BCBrtControl *)self logHandle];
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_11:
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BCHIDBrtControl initWithService:];
        }

        goto LABEL_77;
      }

      inited = init_default_corebrightness_log();
    }

    v10 = inited;
    goto LABEL_11;
  }

  v61.receiver = self;
  v61.super_class = BCHIDBrtControl;
  v5 = [(BCBrtControl *)&v61 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_autoreleasePoolPush();
  v5[49] = 1065353216;
  v5[29] = service;
  v52 = 200;
  if (IORegistryEntryGetRegistryEntryID(service, v5 + 25))
  {
    if ([v5 logHandle])
    {
      logHandle = [v5 logHandle];
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_14:
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [BCHIDBrtControl initWithService:?];
        }

        goto LABEL_16;
      }

      logHandle = init_default_corebrightness_log();
    }

    v8 = logHandle;
    goto LABEL_14;
  }

LABEL_16:
  v11 = IORegistryEntrySearchCFProperty(v5[29], "IOService", @"kUSBContainerID", *MEMORY[0x277CBECE8], 3u);
  if (v11)
  {
    *(v5 + 9) = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
    CFRelease(v11);
    goto LABEL_24;
  }

  *(v5 + 9) = 0;
  if ([v5 logHandle])
  {
    logHandle2 = [v5 logHandle];
LABEL_20:
    v13 = logHandle2;
    goto LABEL_22;
  }

  v13 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle2 = init_default_corebrightness_log();
    goto LABEL_20;
  }

LABEL_22:
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BCHIDBrtControl initWithService:];
  }

LABEL_24:
  v14 = dispatch_queue_create("com.apple.BCBrtControl.HID.BrtUpdate", 0);
  *(v5 + 22) = v14;
  if (v14)
  {
    goto LABEL_32;
  }

  if ([v5 logHandle])
  {
    logHandle3 = [v5 logHandle];
  }

  else
  {
    v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      goto LABEL_29;
    }

    logHandle3 = init_default_corebrightness_log();
  }

  v16 = logHandle3;
LABEL_29:
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [BCHIDBrtControl initWithService:];
  }

  [MEMORY[0x277CBEAD8] raise:@"Resource unavailable" format:{@"Invalid queue", 200}];
LABEL_32:
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3052000000;
  v60[3] = __Block_byref_object_copy__0;
  v60[4] = __Block_byref_object_dispose__0;
  v60[5] = v5;
  v17 = [objc_alloc(MEMORY[0x277CD2850]) initWithService:v5[29]];
  *(v5 + 15) = v17;
  if (!v17)
  {
    if ([v5 logHandle])
    {
      logHandle4 = [v5 logHandle];
    }

    else
    {
      v30 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        goto LABEL_67;
      }

      logHandle4 = init_default_corebrightness_log();
    }

    v30 = logHandle4;
LABEL_67:
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

    goto LABEL_76;
  }

  [v17 setDispatchQueue:{objc_msgSend(v5, "queue")}];
  v18 = *(v5 + 15);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __35__BCHIDBrtControl_initWithService___block_invoke;
  v59[3] = &unk_2784F8D50;
  v59[4] = v60;
  [v18 setRemovalHandler:v59];
  [*(v5 + 15) open];
  [*(v5 + 15) activate];
  v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v20 = [*(v5 + 15) elementsMatching:v19];
  v54 = v6;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (!v21)
  {
    goto LABEL_49;
  }

  v22 = *v56;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v56 != v22)
      {
        objc_enumerationMutation(v20);
      }

      v24 = *(*(&v55 + 1) + 8 * i);
      if ([v24 type] == 257 && objc_msgSend(v24, "usage") == 16 && objc_msgSend(v24, "usagePage") == 130)
      {
        v25 = v24;
        v26 = &OBJC_IVAR___BCHIDBrtControl__brightnessElement;
LABEL_46:
        *(v5 + *v26) = v25;
        continue;
      }

      if ([v24 type] == 257 && objc_msgSend(v24, "usage") == 80 && objc_msgSend(v24, "usagePage") == 15)
      {
        v25 = v24;
        v26 = &OBJC_IVAR___BCHIDBrtControl__brightnessFadeElement;
        goto LABEL_46;
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v55 objects:v72 count:16];
  }

  while (v21);
LABEL_49:

  if (!*(v5 + 16))
  {
    if ([v5 logHandle])
    {
      logHandle5 = [v5 logHandle];
    }

    else
    {
      v34 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        goto LABEL_73;
      }

      logHandle5 = init_default_corebrightness_log();
    }

    v34 = logHandle5;
LABEL_73:
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

LABEL_76:
    _Block_object_dispose(v60, 8);
    objc_autoreleasePoolPop(v6);
LABEL_77:
    v5 = 0;
    goto LABEL_78;
  }

  v5[36] = 1120403456;
  if ([*(v5 + 16) physicalMax] < 2001 || objc_msgSend(*(v5 + 16), "unitExponent") < 1)
  {
    *(v5 + 6) = [*(v5 + 16) physicalMax];
    physicalMin = [*(v5 + 16) physicalMin];
LABEL_58:
    *(v5 + 8) = physicalMin;
  }

  else
  {
    v27 = scaleForExponent([*(v5 + 16) unitExponent]);
    *(v5 + 36) = v27;
    if (v27 > 0.0)
    {
      *(v5 + 6) = ([*(v5 + 16) physicalMax] / *(v5 + 36));
      physicalMin = ([*(v5 + 16) physicalMin] / *(v5 + 36));
      goto LABEL_58;
    }
  }

  if (([v5 _getDeviceNits:{v5 + 38, v52}] & 1) == 0)
  {
    if ([v5 logHandle])
    {
      logHandle6 = [v5 logHandle];
      goto LABEL_62;
    }

    v32 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle6 = init_default_corebrightness_log();
LABEL_62:
      v32 = logHandle6;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [BCHIDBrtControl initWithService:];
    }

    *(v5 + 19) = 0x4062C00000000000;
  }

  if ([v5 logHandle])
  {
    logHandle7 = [v5 logHandle];
    goto LABEL_85;
  }

  v38 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle7 = init_default_corebrightness_log();
LABEL_85:
    v38 = logHandle7;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(v5 + 19);
    v40 = *(v5 + 6);
    v41 = *(v5 + 8);
    v42 = *(v5 + 36);
    unitExponent = [*(v5 + 16) unitExponent];
    *buf = 134219008;
    v63 = v39;
    v64 = 2048;
    v65 = v40;
    v66 = 2048;
    v67 = v41;
    v68 = 2048;
    v69 = v42;
    v70 = 2048;
    v71 = unitExponent;
    _os_log_impl(&dword_223D10000, v38, OS_LOG_TYPE_DEFAULT, "nits = %f, maxNits = %f, minNits = %f, nitsScaler = %f, exponent = %ld", buf, 0x34u);
    v6 = v54;
  }

  if (*(v5 + 9))
  {
    v44 = objc_autoreleasePoolPush();
    [*(v5 + 5) setValue:objc_msgSend(*(v5 + 9) forKey:{"UUIDString"), @"kUSBContainerID"}];
    objc_autoreleasePoolPop(v44);
  }

  [*(v5 + 5) setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", *(v5 + v53)), @"RegistryID"}];
  [*(v5 + 5) setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(v5 + 8)), @"MinNits"}];
  [*(v5 + 5) setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", *(v5 + 6)), @"MaxNits"}];
  [*(v5 + 5) setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"BuiltIn"}];
  *(v5 + 32) = 1;
  if ([v5 logHandle])
  {
    logHandle8 = [v5 logHandle];
    goto LABEL_93;
  }

  v46 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle8 = init_default_corebrightness_log();
LABEL_93:
    v46 = logHandle8;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = *(v5 + 15);
    v48 = v5[29];
    *buf = 138543618;
    v63 = v47;
    v64 = 1024;
    LODWORD(v65) = v48;
    _os_log_impl(&dword_223D10000, v46, OS_LOG_TYPE_INFO, "successfully created HID device (%{public}@) for service %ul", buf, 0x12u);
  }

  if ([v5 logHandle])
  {
    logHandle9 = [v5 logHandle];
    goto LABEL_99;
  }

  v50 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    logHandle9 = init_default_corebrightness_log();
LABEL_99:
    v50 = logHandle9;
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = *(v5 + 5);
    *buf = 138543362;
    v63 = v51;
    _os_log_impl(&dword_223D10000, v50, OS_LOG_TYPE_INFO, "capabilities = %{public}@", buf, 0xCu);
  }

  _Block_object_dispose(v60, 8);
  objc_autoreleasePoolPop(v6);
LABEL_78:
  v35 = *MEMORY[0x277D85DE8];
  return v5;
}

void __35__BCHIDBrtControl_initWithService___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(*(*(a1 + 32) + 8) + 40) + 32) = 0;
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
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_223D10000, v3, OS_LOG_TYPE_INFO, "device removed", buf, 2u);
  }

  if ([*(*(*(a1 + 32) + 8) + 40) logHandle])
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) logHandle];
LABEL_9:
    v5 = v4;
    goto LABEL_11;
  }

  v5 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v4 = init_default_corebrightness_log();
    goto LABEL_9;
  }

LABEL_11:
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_223D10000, v5, OS_LOG_TYPE_INFO, "weakSelf.displayInvalidHandler = %@", buf, 0xCu);
  }

  if ([*(*(*(a1 + 32) + 8) + 40) callbackQueue])
  {
    global_queue = [*(*(*(a1 + 32) + 8) + 40) callbackQueue];
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BCHIDBrtControl_initWithService___block_invoke_24;
  block[3] = &unk_2784F8D50;
  block[4] = *(a1 + 32);
  dispatch_async(global_queue, block);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __35__BCHIDBrtControl_initWithService___block_invoke_24(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
  if (result)
  {
    v3 = [*(*(*(a1 + 32) + 8) + 40) displayInvalidHandler];
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = *(v3 + 16);

    return v5();
  }

  return result;
}

- (BCHIDBrtControl)init
{
  v3 = objc_autoreleasePoolPush();
  v4 = _copyMatchingDict();
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v4);
  objc_autoreleasePoolPop(v3);

  return [(BCHIDBrtControl *)self initWithService:MatchingService];
}

- (void)dealloc
{
  if ([(BCBrtControl *)self logHandle])
  {
    inited = [(BCBrtControl *)self logHandle];
LABEL_3:
    v4 = inited;
    goto LABEL_5;
  }

  v4 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223D10000, v4, OS_LOG_TYPE_DEFAULT, "dealloc", buf, 2u);
  }

  [(BCHIDBrtControl *)self removeDisplayService];
  brightnessUpdateQueue = self->_brightnessUpdateQueue;
  if (brightnessUpdateQueue)
  {
    dispatch_release(brightnessUpdateQueue);
    self->_brightnessUpdateQueue = 0;
  }

  [(HIDDevice *)self->_hidBrightnessDevice cancel];
  [(HIDDevice *)self->_hidBrightnessDevice close];

  v6.receiver = self;
  v6.super_class = BCHIDBrtControl;
  [(BCBrtControl *)&v6 dealloc];
}

- (unint64_t)registryID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(BCBrtControl *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__BCHIDBrtControl_registryID__block_invoke;
  v6[3] = &unk_2784F8E18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_getDeviceNits:(double *)nits
{
  v4 = 0;
  v27 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v20 = 0;
    if (-[HIDDevice commitElements:direction:error:](self->_hidBrightnessDevice, "commitElements:direction:error:", [MEMORY[0x277CBEA60] arrayWithObject:self->_brightnessElement], 0, &v20))
    {
      break;
    }

    if ([(BCBrtControl *)self logHandle])
    {
      inited = [(BCBrtControl *)self logHandle];
LABEL_5:
      v7 = inited;
      goto LABEL_7;
    }

    v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
      goto LABEL_5;
    }

LABEL_7:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = *&v20;
      _os_log_error_impl(&dword_223D10000, v7, OS_LOG_TYPE_ERROR, "failed to commit elements %{public}@", buf, 0xCu);
    }

    if ([v20 retIOKitError] != -536850432)
    {
      ++v4;
    }

    if (v4 > 8)
    {
      break;
    }

    if ([(BCBrtControl *)self logHandle])
    {
      logHandle = [(BCBrtControl *)self logHandle];
LABEL_14:
      v9 = logHandle;
      goto LABEL_16;
    }

    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle = init_default_corebrightness_log();
      goto LABEL_14;
    }

LABEL_16:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_error_impl(&dword_223D10000, v9, OS_LOG_TYPE_ERROR, "retrying commit attempt No.%d", buf, 8u);
    }

    usleep(0xC350u);
    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v5);
  [(HIDElement *)self->_brightnessElement scaleValue:2];
  *&v10 = v10;
  v11 = *&v10;
  if (self->super._maxNits >= *&v10 && self->super._minNits <= v11)
  {
    *nits = v11;
    LOBYTE(v14) = 1;
  }

  else
  {
    if ([(BCBrtControl *)self logHandle])
    {
      logHandle2 = [(BCBrtControl *)self logHandle];
      goto LABEL_25;
    }

    v13 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle2 = init_default_corebrightness_log();
LABEL_25:
      v13 = logHandle2;
    }

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      minNits = self->super._minNits;
      maxNits = self->super._maxNits;
      *buf = 134218496;
      v22 = v11;
      v23 = 2048;
      v24 = minNits;
      v25 = 2048;
      v26 = maxNits;
      _os_log_error_impl(&dword_223D10000, v13, OS_LOG_TYPE_ERROR, "error: value (%f) out of bounds (%f-%f)", buf, 0x20u);
      LOBYTE(v14) = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_setDeviceNits:(double)minNits
{
  if (self->super._minNits >= minNits)
  {
    minNits = self->super._minNits;
  }

  if (self->super._maxNits < minNits)
  {
    minNits = self->super._maxNits;
  }

  brighntessUpdateCounter = self->_brighntessUpdateCounter;
  self->_brighntessUpdateCounter = brighntessUpdateCounter + 1;
  v4 = minNits;
  self->_brightnessUpdateTarget = v4;
  self->_nits = minNits;
  if (!brighntessUpdateCounter)
  {
    brightnessUpdateQueue = self->_brightnessUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__BCHIDBrtControl__setDeviceNits___block_invoke;
    block[3] = &unk_2784F8E40;
    block[4] = self;
    dispatch_async(brightnessUpdateQueue, block);
  }

  return 1;
}

void __34__BCHIDBrtControl__setDeviceNits___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BCHIDBrtControl__setDeviceNits___block_invoke_2;
  block[3] = &unk_2784F8E18;
  block[4] = *v1;
  block[5] = &v18;
  dispatch_sync(v2, block);
  if (*(v19 + 24) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    v16 = 0;
    v4 = [MEMORY[0x277CBEB18] arrayWithObject:*(*v1 + 16)];
    v5 = v4;
    v6 = *v1;
    if (*(*v1 + 17))
    {
      [v4 addObject:?];
      v6 = *v1;
    }

    v7 = [v6[15] commitElements:v5 direction:1 error:&v16];
    v8 = *v1;
    if (v7)
    {
      if ([v8 logHandle])
      {
        inited = [*v1 logHandle];
      }

      else
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
LABEL_12:
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = *(*v1 + 19);
            v14 = *(*v1 + 49);
            *buf = 134218240;
            v23 = v13;
            v24 = 2048;
            v25 = v14;
            _os_log_impl(&dword_223D10000, v10, OS_LOG_TYPE_INFO, "setting nits %f X %f boost factor", buf, 0x16u);
          }

LABEL_17:
          objc_autoreleasePoolPop(v3);
          goto LABEL_18;
        }

        inited = init_default_corebrightness_log();
      }

      v10 = inited;
      goto LABEL_12;
    }

    if ([v8 logHandle])
    {
      v11 = [*v1 logHandle];
    }

    else
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
LABEL_15:
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __34__BCHIDBrtControl__setDeviceNits___block_invoke_cold_1(v1, &v16, v12);
        }

        goto LABEL_17;
      }

      v11 = init_default_corebrightness_log();
    }

    v12 = v11;
    goto LABEL_15;
  }

LABEL_18:
  _Block_object_dispose(&v18, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void *__34__BCHIDBrtControl__setDeviceNits___block_invoke_2(void *result)
{
  v1 = result[4];
  if (*(v1 + 168))
  {
    v2 = result;
    v3 = *(v1 + 152) * *(v1 + 196);
    if (*(v1 + 48) < v3)
    {
      v3 = *(v1 + 48);
    }

    if (*(v1 + 64) >= v3)
    {
      v3 = *(v1 + 64);
    }

    [*(v1 + 128) setIntegerValue:(v3 * *(v1 + 144))];
    result = *(v2[4] + 136);
    if (result)
    {
      result = [result setIntegerValue:0];
    }

    *(*(v2[5] + 8) + 24) = 1;
    v1 = v2[4];
  }

  *(v1 + 168) = 0;
  return result;
}

- (BOOL)setNits:(double)nits error:(id *)error
{
  queue = [(BCBrtControl *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__BCHIDBrtControl_setNits_error___block_invoke;
  v8[3] = &unk_2784F8E68;
  v8[4] = self;
  *&v8[5] = nits;
  dispatch_sync(queue, v8);
  return 1;
}

- (double)getNitsWithError:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xBFF0000000000000;
  queue = [(BCBrtControl *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BCHIDBrtControl_getNitsWithError___block_invoke;
  block[3] = &unk_2784F8E90;
  block[4] = self;
  block[5] = &v13;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if (error && (v14[3] & 1) == 0)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:19];
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t __36__BCHIDBrtControl_getNitsWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _getDeviceNits:*(*(a1 + 48) + 8) + 24];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)copyProperty:(id)property error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v6 = [(BCBrtControl *)self queue:property];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BCHIDBrtControl_copyProperty_error___block_invoke;
  block[3] = &unk_2784F8EB8;
  block[5] = self;
  block[6] = &v10;
  block[4] = property;
  dispatch_sync(v6, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __38__BCHIDBrtControl_copyProperty_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(*(*(a1 + 40) + 120) propertyForKey:{*(a1 + 32)), "copy"}];
    *(*(*(a1 + 48) + 8) + 40) = result;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      result = IORegistryEntrySearchCFProperty(*(*(a1 + 40) + 116), "IOService", *(a1 + 32), *MEMORY[0x277CBECE8], 3u);
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

- (void)removeDisplayService
{
  boostFactorNotificationPort = self->_boostFactorNotificationPort;
  if (boostFactorNotificationPort)
  {
    IONotificationPortDestroy(boostFactorNotificationPort);
    self->_boostFactorNotificationPort = 0;
  }

  boostFactorNotification = self->_boostFactorNotification;
  if (boostFactorNotification)
  {
    IOObjectRelease(boostFactorNotification);
    self->_boostFactorNotification = 0;
  }

  self->super._displayService = 0;
  self->_nitsBoostFactor = 1.0;
}

- (void)addDisplayService:(unsigned int)service
{
  self->super._displayService = service;
  v4 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_boostFactorNotificationPort = v4;
  if (v4)
  {
    queue = self->super._queue;
    if (queue)
    {
      IONotificationPortSetDispatchQueue(v4, queue);
      IOServiceAddInterestNotification(self->_boostFactorNotificationPort, self->super._displayService, "IOGeneralInterest", BoostFactorUpdateNotificationCallback, self, &self->_boostFactorNotification);

      [(BCHIDBrtControl *)self refreshBoostFactor];
    }
  }
}

- (void)setBoostFactor:(float)factor
{
  p_nitsBoostFactor = &self->_nitsBoostFactor;
  self->_nitsBoostFactor = factor;
  if ([(BCBrtControl *)self logHandle])
  {
    inited = [(BCBrtControl *)self logHandle];
LABEL_3:
    v6 = inited;
    goto LABEL_5;
  }

  v6 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BCHIDBrtControl *)p_nitsBoostFactor setBoostFactor:v6];
  }

  [(BCHIDBrtControl *)self _setDeviceNits:self->_nits];
}

- (void)refreshBoostFactor
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)newMonitorWithHandler:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(int *)a1 .cold.1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithService:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __34__BCHIDBrtControl__setDeviceNits___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 152);
  v4 = *a2;
  v6 = 134218242;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_223D10000, log, OS_LOG_TYPE_ERROR, "failed to set %f nits (%{public}@)", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setBoostFactor:(float *)a1 .cold.1(float *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_223D10000, a2, OS_LOG_TYPE_DEBUG, "updated boost factor: %f", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end