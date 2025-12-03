@interface BCBrtControl
+ (id)copyAllAvailableControls;
+ (id)newMonitorForAllControlsWithHandler:(id)handler error:(id *)error;
- (BCBrtControl)init;
- (BOOL)_checkIsValid:(id *)valid;
- (BOOL)isEqual:(id)equal;
- (BOOL)setProperty:(id)property value:(id)value error:(id *)error;
- (OS_dispatch_queue)queue;
- (OS_os_log)logHandle;
- (__CFUUID)cfContainerID;
- (id)ID;
- (id)copyModuleIdentifier;
- (id)copyProperty:(id)property error:(id *)error;
- (unint64_t)hash;
- (void)_runOnCallbackQueue:(id)queue;
- (void)dealloc;
- (void)setNitsAsync:(double)async completionHandler:(id)handler;
- (void)setPropertyAync:(id)aync value:(id)value completionHandler:(id)handler;
@end

@implementation BCBrtControl

- (BCBrtControl)init
{
  v6.receiver = self;
  v6.super_class = BCBrtControl;
  v2 = [(BCBrtControl *)&v6 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    copyModuleIdentifier = [(BCBrtControl *)v2 copyModuleIdentifier];
    v2->_logHandle = 0;
    v2->_capabilities = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_callbackQueue = 0;
    v2->_queue = 0;
    v2->_id = 0;
    v2->_isValid = 0;
    v2->_containerID = 0;
    v2->_cfContainerID = 0;
    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  displayInvalidHandler = self->_displayInvalidHandler;
  if (displayInvalidHandler)
  {
    _Block_release(displayInvalidHandler);
  }

  cfContainerID = self->_cfContainerID;
  if (cfContainerID)
  {
    CFRelease(cfContainerID);
  }

  v6.receiver = self;
  v6.super_class = BCBrtControl;
  [(BCBrtControl *)&v6 dealloc];
}

- (id)copyModuleIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);

  return [v2 initWithString:@"com.apple.BCBrtControl"];
}

- (BOOL)_checkIsValid:(id *)valid
{
  isValid = [(BCBrtControl *)self isValid];
  v5 = isValid;
  if (valid && !isValid)
  {
    *valid = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:18];
  }

  return v5;
}

- (OS_os_log)logHandle
{
  logHandle = self->_logHandle;
  if (!logHandle)
  {
    copyModuleIdentifier = [(BCBrtControl *)self copyModuleIdentifier];
    v5 = os_log_create([copyModuleIdentifier UTF8String], "default");
    self->_logHandle = v5;
    if (!v5)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        [(BCBrtControl *)inited logHandle];
      }
    }

    logHandle = self->_logHandle;
  }

  if (logHandle)
  {
    return logHandle;
  }

  else
  {
    return MEMORY[0x277D86220];
  }
}

- (OS_dispatch_queue)queue
{
  result = self->_queue;
  if (!result)
  {
    result = dispatch_queue_create("com.apple.BrightnessControl", 0);
    self->_queue = result;
    if (!result)
    {
      [BCBrtControl queue];
    }
  }

  return result;
}

- (__CFUUID)cfContainerID
{
  if (!self->_containerID)
  {
    return 0;
  }

  result = self->_cfContainerID;
  if (!result)
  {
    v4 = objc_autoreleasePoolPush();
    self->_cfContainerID = CFUUIDCreateFromString(*MEMORY[0x277CBECE8], [(NSUUID *)self->_containerID UUIDString]);
    objc_autoreleasePoolPop(v4);
    return self->_cfContainerID;
  }

  return result;
}

- (id)ID
{
  result = self->_id;
  if (!result)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if ([(BCBrtControl *)self containerID])
    {
      v8 = [(NSUUID *)[(BCBrtControl *)self containerID] description];
    }

    else
    {
      v8 = @"main";
    }

    self->_id = [v5 initWithFormat:@"%@-%@", v7, v8];
    objc_autoreleasePoolPop(v4);
    return self->_id;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  containerID = [(BCBrtControl *)self containerID];
  return containerID == [equal containerID];
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [-[BCBrtControl ID](self "ID")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (void)_runOnCallbackQueue:(id)queue
{
  if ([(BCBrtControl *)self callbackQueue])
  {
    callbackQueue = self->_callbackQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__BCBrtControl__runOnCallbackQueue___block_invoke;
    v8[3] = &unk_2784F8F00;
    v8[4] = self;
    v8[5] = queue;
    dispatch_async(callbackQueue, v8);
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE658];

    [v6 raise:v7 format:@"callbackQueue is nil. Cannot call user supplied callback."];
  }
}

void __36__BCBrtControl__runOnCallbackQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3 = *(a1 + 40);

  dispatch_sync(v2, v3);
}

- (void)setNitsAsync:(double)async completionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BCBrtControl_setNitsAsync_completionHandler___block_invoke;
  v4[3] = &unk_2784F8F28;
  *&v4[6] = async;
  v4[4] = self;
  v4[5] = handler;
  [(BCBrtControl *)self _runOnCallbackQueue:v4];
}

uint64_t __47__BCBrtControl_setNitsAsync_completionHandler___block_invoke(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) setNits:&v3 error:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, v3);
  }

  return result;
}

- (BOOL)setProperty:(id)property value:(id)value error:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:16];
  }

  return 0;
}

- (void)setPropertyAync:(id)aync value:(id)value completionHandler:(id)handler
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__BCBrtControl_setPropertyAync_value_completionHandler___block_invoke;
  v5[3] = &unk_2784F8F50;
  v5[4] = self;
  v5[5] = aync;
  v5[6] = value;
  v5[7] = handler;
  [(BCBrtControl *)self _runOnCallbackQueue:v5];
}

void __56__BCBrtControl_setPropertyAync_value_completionHandler___block_invoke(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) setProperty:*(a1 + 40) value:*(a1 + 48) error:&v3];
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, v3);
  }
}

- (id)copyProperty:(id)property error:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithBCError:16];
  }

  return 0;
}

+ (id)newMonitorForAllControlsWithHandler:(id)handler error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 addObject:{+[BCAppleBacklightBrtControl newMonitorWithHandler:error:](BCAppleBacklightBrtControl, "newMonitorWithHandler:error:", handler, error)}];
  [v6 addObject:{+[BCHIDBrtControl newMonitorWithHandler:error:](BCHIDBrtControl, "newMonitorWithHandler:error:", handler, error)}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = objc_alloc_init(BCBrtMonitor);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__BCBrtControl_BCDisplayList__newMonitorForAllControlsWithHandler_error___block_invoke;
  v14[3] = &unk_2784F8E40;
  v14[4] = v6;
  [(BCBrtMonitor *)v11 setCancelHandler:v14];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __73__BCBrtControl_BCDisplayList__newMonitorForAllControlsWithHandler_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * i) cancel];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)copyAllAvailableControls
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_autoreleasePoolPush();
  [v2 addObjectsFromArray:{+[BCAppleBacklightBrtControl copyAvailableControls](BCAppleBacklightBrtControl, "copyAvailableControls")}];
  [v2 addObjectsFromArray:{+[BCHIDBrtControl copyAvailableControls](BCHIDBrtControl, "copyAvailableControls")}];
  objc_autoreleasePoolPop(v3);
  return v2;
}

@end