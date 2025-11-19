@interface BRInterfaceAOP
+ (id)interface;
+ (int)_convertClickState:(unint64_t)a3;
+ (int)_convertForceFeel:(unint64_t)a3;
- (BOOL)_serviceSetProperty:(void *)a3 forKey:(__CFString *)a4;
- (BOOL)_setDefaultAOPConfigs;
- (BOOL)_setGlobalAOPConfigsFromBRFConfigs:(id)a3;
- (BOOL)_setStateAOPConfigsFromStateData:(id)a3 andSlotData:(id)a4;
- (BOOL)disableStates:(id)a3 clearAsset:(BOOL)a4 error:(id *)a5;
- (BOOL)enableStates:(id)a3 error:(id *)a4;
- (BOOL)playState:(unint64_t)a3 forSpeed:(unint64_t)a4 error:(id *)a5;
- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6;
- (BOOL)setGlobalConfigs:(id)a3 error:(id *)a4;
- (BOOL)updateReadyState;
- (BRInterfaceAOP)initWithFastHaptics:(BOOL)a3;
- (id)dataForSlot:(id)a3 fromArray:(id)a4;
- (id)description;
- (id)propertyList;
- (unint64_t)unusedAssetSlots;
- (void)_findService;
- (void)_receiveLoaderAvailableNotification:(id)a3;
- (void)dealloc;
- (void)mergeStateChanges:(id)a3 into:(id)a4;
- (void)propertyList;
- (void)scheduleReadyNotificationWithBlock:(id)a3;
- (void)updateReadyState;
@end

@implementation BRInterfaceAOP

- (BRInterfaceAOP)initWithFastHaptics:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = BRInterfaceAOP;
  v4 = [(BRInterface *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_fastHaptics = a3;
    v4->_service = 0;
    v4->_connect = 0;
    v4->_notificationPort = 0;
    v4->_arrivalNotification = 0;
    v4->_isReady = 0;
    v4->_maxAssetSlots = 0;
    v4->_notificationBlock = 0;
    v6 = dlopen("/System/Library/PrivateFrameworks/Haptics.framework/Haptics", 1);
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = dlsym(v6, "HAButtonHapticsLoaderServiceIsAvailableNotification");
    v8 = *v7;
    v5->_notificationName = *v7;
    if (!v8)
    {
      goto LABEL_8;
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    v9 = [NSClassFromString(&cfstr_Habuttonhaptic_0.isa) sharedInstance];
    v5->_loader = v9;
    if (!v9 || (v5->_freeSlots = 0, v10 = objc_alloc_init(MEMORY[0x277CBEB18]), (v5->_slotArray = v10) == 0) || (v11 = objc_alloc_init(MEMORY[0x277CBEB38]), (v5->_stateDict = v11) == 0))
    {
LABEL_8:
      [BRInterfaceAOP initWithFastHaptics:?];
      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    IOObjectRelease(self->_connect);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  arrivalNotification = self->_arrivalNotification;
  if (arrivalNotification)
  {
    IOObjectRelease(arrivalNotification);
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v7.receiver = self;
  v7.super_class = BRInterfaceAOP;
  [(BRInterface *)&v7 dealloc];
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = BRInterfaceAOP;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRInterface description](&v5, sel_description)}];
  [v3 appendFormat:@"Service: %u;\n", self->_service];
  [v3 appendFormat:@"Connection: %u;\n", self->_connect];
  [v3 appendFormat:@"Loader: %@;\n", self->_loader];
  [v3 appendFormat:@"FreeSlots: %@;\n", self->_freeSlots];
  [v3 appendFormat:@"SlotData: %@;\n", self->_slotArray];
  [v3 appendFormat:@"StateData: %@;\n", self->_stateDict];
  return v3;
}

- (id)propertyList
{
  v36 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = BRInterfaceAOP;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[BRInterface propertyList](&v33, sel_propertyList)}];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  freeSlots = self->_freeSlots;
  if (freeSlots)
  {
    v8 = [(NSMutableIndexSet *)freeSlots firstIndex];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v8; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSMutableIndexSet *)self->_freeSlots indexGreaterThanIndex:i])
      {
        [v4 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", i)}];
      }
    }
  }

  [v3 setObject:v4 forKey:@"FreeSlots"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  slotArray = self->_slotArray;
  v11 = [(NSMutableArray *)slotArray countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(slotArray);
        }

        v15 = *(*(&v29 + 1) + 8 * j);
        if ([v15 propertyList])
        {
          [v5 addObject:{objc_msgSend(v15, "propertyList")}];
        }
      }

      v12 = [(NSMutableArray *)slotArray countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v12);
  }

  [v3 setObject:v5 forKey:@"SlotData"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  stateDict = self->_stateDict;
  v17 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(stateDict);
        }

        v21 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v25 + 1) + 8 * k)];
        if ([v21 propertyList])
        {
          [v6 addObject:{objc_msgSend(v21, "propertyList")}];
        }
      }

      v18 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v18);
  }

  [v3 setObject:v6 forKey:@"StateData"];
  v22 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v22 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP propertyList];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)interface
{
  v11 = *MEMORY[0x277D85DE8];
  if (MGGetSInt32Answer() == 1)
  {
    v2 = [[BRInterfaceAOP alloc] initWithFastHaptics:0];
    v3 = *MEMORY[0x277D85DE8];

    return v2;
  }

  else
  {
    v10 = -337121064;
    v9 = xmmword_242155248;
    v8 = 450980336;
    v7 = xmmword_24215525C;
    v5 = MGIsDeviceOneOfType();
    result = 0;
    if (v5)
    {
      result = [[BRInterfaceAOP alloc] initWithFastHaptics:1, &v7, 0];
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (unint64_t)unusedAssetSlots
{
  result = self->_freeSlots;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (BOOL)setGlobalConfigs:(id)a3 error:(id *)a4
{
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  if ([(BRInterfaceAOP *)self _setGlobalAOPConfigsFromBRFConfigs:a3])
  {
    v8 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870167 userInfo:0];
    v8 = v10 != 0;
    if (a4 && v10)
    {
      *a4 = v10;
      v8 = 1;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  return !v8;
}

- (BOOL)enableStates:(id)a3 error:(id *)a4
{
  v5 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v7 = 0x277CCA000uLL;
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a3;
  v29 = [a3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v29)
  {
    v28 = *v35;
    v25 = v5;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v34 + 1) + 8 * i) unsignedIntegerValue];
        if (v10 > 0x10 || (v11 = v10, v32 = 0u, v33 = 0u, v30 = 0u, v31 = 0u, stateDict = self->_stateDict, (v13 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v30 objects:v38 count:16]) == 0))
        {
LABEL_21:
          v21 = -536870206;
          v5 = v25;
          v7 = 0x277CCA000uLL;
          goto LABEL_22;
        }

        v14 = v13;
        v15 = *v31;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(stateDict);
          }

          v17 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v16)];
          if ([v17 state] == v11)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v14)
            {
              goto LABEL_9;
            }

            goto LABEL_21;
          }
        }

        v18 = [v17 copy];
        if (!v18)
        {
          goto LABEL_21;
        }

        v19 = v18;
        [v18 setEnabled:1];
        [v8 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11)}];
      }

      v5 = v25;
      v7 = 0x277CCA000;
      v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  if ([(BRInterfaceAOP *)self _setStateAOPConfigsFromStateData:v8 andSlotData:self->_slotArray])
  {
    [(BRInterfaceAOP *)self mergeStateChanges:v8 into:self->_stateDict];
    v20 = 0;
  }

  else
  {
    v21 = -536870167;
LABEL_22:
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v21 userInfo:0];
    v20 = v22 != 0;
    if (a4 && v22)
    {
      *a4 = v22;
      v20 = 1;
    }
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [*(v7 + 3240) stringWithFormat:@"%@ %@", NSStringFromSelector(v5), @"end"]);
  v23 = *MEMORY[0x277D85DE8];
  return !v20;
}

- (BOOL)disableStates:(id)a3 clearAsset:(BOOL)a4 error:(id *)a5
{
  v40 = a4;
  v65 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start"]);
  v44 = [MEMORY[0x277CBEB38] dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = a3;
  v7 = [a3 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v42 = *v58;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v57 + 1) + 8 * i) unsignedIntegerValue];
        if (v10 > 0x10)
        {
          v34 = -536870206;
          goto LABEL_45;
        }

        v11 = v10;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        stateDict = self->_stateDict;
        v13 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v54;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v54 != v15)
              {
                objc_enumerationMutation(stateDict);
              }

              v17 = [(NSMutableDictionary *)self->_stateDict objectForKeyedSubscript:*(*(&v53 + 1) + 8 * j)];
              if ([v17 state] == v11)
              {
                v18 = [v17 copy];
                if (v18)
                {
                  v19 = v18;
                  [v18 setEnabled:0];
                  [v44 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v11)}];
                }

                goto LABEL_18;
              }
            }

            v14 = [(NSMutableDictionary *)stateDict countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if ([(BRInterfaceAOP *)self _setStateAOPConfigsFromStateData:v44 andSlotData:self->_slotArray])
  {
    if (v40)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v41 = [v44 countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v41)
      {
        v39 = *v50;
        do
        {
          v20 = 0;
          do
          {
            if (*v50 != v39)
            {
              objc_enumerationMutation(v44);
            }

            v43 = v20;
            v21 = [v44 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * v20)];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v22 = [v21 speedSlots];
            v23 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v46;
              do
              {
                for (k = 0; k != v24; ++k)
                {
                  if (*v46 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = -[BRInterfaceAOP dataForSlot:fromArray:](self, "dataForSlot:fromArray:", [objc_msgSend(v21 "speedSlots")], self->_slotArray);
                  if (v27)
                  {
                    v28 = v27;
                    [v27 setRefCount:{objc_msgSend(v27, "refCount") - 1}];
                    if (![v28 refCount])
                    {
                      -[NSMutableIndexSet addIndex:](self->_freeSlots, "addIndex:", [objc_msgSend(v28 "slot")]);
                      [(NSMutableArray *)self->_slotArray removeObject:v28];
                    }
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v45 objects:v61 count:16];
              }

              while (v24);
            }

            v20 = v43 + 1;
          }

          while (v43 + 1 != v41);
          v41 = [v44 countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v41);
      }

      [(NSMutableDictionary *)self->_stateDict removeObjectsForKeys:obj];
    }

    else
    {
      [(BRInterfaceAOP *)self mergeStateChanges:v44 into:self->_stateDict];
    }

    v29 = 0;
LABEL_42:
    v30 = a2;
    v31 = 0x277CCA000uLL;
    goto LABEL_43;
  }

  v34 = -536870167;
LABEL_45:
  v35 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:0];
  v29 = v35 != 0;
  if (!a5)
  {
    goto LABEL_42;
  }

  v30 = a2;
  v31 = 0x277CCA000;
  if (v35)
  {
    *a5 = v35;
    v29 = 1;
  }

LABEL_43:
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [*(v31 + 3240) stringWithFormat:@"%@ %@", NSStringFromSelector(v30), @"end"]);
  v32 = *MEMORY[0x277D85DE8];
  return !v29;
}

- (id)dataForSlot:(id)a3 fromArray:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 && [a3 integerValue] != -1 && (v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, (v6 = objc_msgSend(a4, "countByEnumeratingWithState:objects:count:", &v13, v17, 16)) != 0))
  {
    v7 = v6;
    v8 = *v14;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(a4);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([a3 isEqualToNumber:{objc_msgSend(v10, "slot")}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = 0;
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)mergeStateChanges:(id)a3 into:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        [a4 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * v9)), *(*(&v11 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)playState:(unint64_t)a3 forSpeed:(unint64_t)a4 error:(id *)a5
{
  v12 = *MEMORY[0x277D85DE8];
  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"start", a4, a3, 0, v12]);
  v8 = IOConnectCallScalarMethod(self->_connect, 2u, &input, 3u, 0, 0);
  if (v8)
  {
    [BRInterfaceAOP playState:a5 forSpeed:? error:?];
  }

  -[BRInterface timestampWithLabel:](self, "timestampWithLabel:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(a2), @"end"]);
  v9 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (void)scheduleReadyNotificationWithBlock:(id)a3
{
  v5 = [(BRInterface *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__BRInterfaceAOP_scheduleReadyNotificationWithBlock___block_invoke;
  v6[3] = &unk_278D3F360;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
  [(BRInterfaceAOP *)self _findService];
}

uint64_t __53__BRInterfaceAOP_scheduleReadyNotificationWithBlock___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 64) = result;
  return result;
}

- (BOOL)updateReadyState
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v3 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    if (self->_isReady)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    v7 = [(HAButtonHapticsLoader *)self->_loader serviceAvailable];
    *v11 = 136315650;
    *&v11[4] = "[BRInterfaceAOP updateReadyState]";
    if (v7)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    *&v11[12] = 2080;
    *&v11[14] = v6;
    v12 = 2080;
    v13 = v8;
    _os_log_debug_impl(&dword_242149000, v3, OS_LOG_TYPE_DEBUG, "%s isReady: %s loaderReady: %s", v11, 0x20u);
  }

  if (!self->_isReady && self->_service && [(HAButtonHapticsLoader *)self->_loader serviceAvailable])
  {
    v4 = _BRLog_log_0;
    if (!_BRLog_log_0)
    {
      v4 = os_log_create("com.apple.ButtonResolver", "default");
      _BRLog_log_0 = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(BRInterfaceAOP *)v4 updateReadyState];
    }

    if ([(HAButtonHapticsLoader *)self->_loader maxNumberOfSlots]< 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(HAButtonHapticsLoader *)self->_loader maxNumberOfSlots];
    }

    self->_maxAssetSlots = v5;
    self->_freeSlots = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, self->_maxAssetSlots}];
    [(BRInterfaceAOP *)self _setDefaultAOPConfigs];
    self->_isReady = 1;
    if (self->_notificationBlock)
    {
      dispatch_async([(BRInterface *)self queue], self->_notificationBlock);

      self->_notificationBlock = 0;
    }

    else
    {
      [BRInterfaceAOP updateReadyState];
    }
  }

  result = self->_isReady;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_findService
{
  v3 = [(BRInterface *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRInterfaceAOP__findService__block_invoke;
  block[3] = &unk_278D3F310;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_receiveLoaderAvailableNotification:(id)a3
{
  v5 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v5 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP _receiveLoaderAvailableNotification:];
  }

  if ([objc_msgSend(a3 "name")])
  {
    v6 = [(BRInterface *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__BRInterfaceAOP__receiveLoaderAvailableNotification___block_invoke;
    block[3] = &unk_278D3F310;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (BOOL)_serviceSetProperty:(void *)a3 forKey:(__CFString *)a4
{
  v7 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v7 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRInterfaceAOP _serviceSetProperty:forKey:];
  }

  v8 = IORegistryEntrySetCFProperty(self->_service, a4, a3);
  if (v8)
  {
    [BRInterfaceAOP _serviceSetProperty:? forKey:?];
  }

  return v8 == 0;
}

+ (int)_convertForceFeel:(unint64_t)a3
{
  if (a3 >= 3)
  {
    return 3;
  }

  else
  {
    return a3;
  }
}

+ (int)_convertClickState:(unint64_t)a3
{
  if (a3 >= 0x11)
  {
    return 17;
  }

  else
  {
    return a3;
  }
}

- (BOOL)setConfigs:(id)a3 withAssets:(id)a4 forStates:(id)a5 error:(id *)a6
{
  v201 = *MEMORY[0x277D85DE8];
  v184 = 0;
  v11 = MEMORY[0x277CCACA8];
  aSelector = a2;
  v124 = NSStringFromSelector(a2);
  [v11 stringWithFormat:@"%@ %@"];
  [OUTLINED_FUNCTION_4() timestampWithLabel:?];
  v138 = a3;
  v131 = a6;
  if (!a3 || !a4)
  {
LABEL_132:
    v121 = MEMORY[0x277CCA9B8];
    v122 = *MEMORY[0x277CCA590];
    v123 = -536870206;
    goto LABEL_133;
  }

  v133 = [(NSMutableIndexSet *)self->_freeSlots mutableCopy];
  obj = [MEMORY[0x277CBEB38] dictionary];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_slotArray copyItems:1];
  v129 = [MEMORY[0x277CBEB18] array];
  v13 = [a5 count];
  v148 = self;
  v140 = a5;
  v142 = a4;
  if (v13)
  {
    v21 = 0;
    v135 = @"Speed";
    do
    {
      v22 = [objc_msgSend(a5 objectAtIndexedSubscript:{v21), "unsignedIntegerValue"}];
      v23 = [v138 objectAtIndexedSubscript:v21];
      v24 = [v23 objectForKeyedSubscript:@"Speed"] ? objc_msgSend(objc_msgSend(v23, "objectForKeyedSubscript:", @"Speed"), "unsignedIntegerValue") : 3;
      if (v22 > 0x10)
      {
        goto LABEL_132;
      }

      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      stateDict = self->_stateDict;
      v26 = OUTLINED_FUNCTION_7();
      if (v26)
      {
        v27 = v26;
        v28 = *v181;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v181 != v28)
            {
              objc_enumerationMutation(stateDict);
            }

            v30 = [(NSMutableDictionary *)v148->_stateDict objectForKeyedSubscript:*(*(&v180 + 1) + 8 * i)];
            if ([v30 state] == v22)
            {
              v178 = 0u;
              v179 = 0u;
              v176 = 0u;
              v177 = 0u;
              v31 = [v30 speedSlots];
              v32 = [v31 countByEnumeratingWithState:&v176 objects:v200 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v177;
                while (2)
                {
                  for (j = 0; j != v33; ++j)
                  {
                    OUTLINED_FUNCTION_5(v177);
                    if (!v36)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v37 = *(*(&v176 + 1) + 8 * j);
                    if ([v37 unsignedIntegerValue] == v24)
                    {
                      v38 = -[BRInterfaceAOP dataForSlot:fromArray:](v148, "dataForSlot:fromArray:", [objc_msgSend(v30 "speedSlots")], v12);
                      if (v38)
                      {
                        [v38 setRefCount:{objc_msgSend(v38, "refCount") - 1}];
                      }

                      goto LABEL_29;
                    }
                  }

                  v33 = [v31 countByEnumeratingWithState:&v176 objects:v200 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }

              goto LABEL_29;
            }
          }

          v27 = OUTLINED_FUNCTION_7();
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:
      ++v21;
      a5 = v140;
      v13 = [v140 count];
      self = v148;
      a4 = v142;
    }

    while (v21 < v13);
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v39 = OUTLINED_FUNCTION_8(v13, v14, v15, v16, v17, v18, v19, v20, v124, @"start", 96, 88, v129, v131, aSelector, v133, v135, v137, v138, v140, v142, v144, obj, v148, v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, *(&v162 + 1), v163, *(&v163 + 1), v164, *(&v164 + 1), v165, *(&v165 + 1), v166, v167, v168, *(&v168 + 1), v169, *(&v169 + 1), v170);
  if (v39)
  {
    v41 = v39;
    v42 = *v173;
    *&v40 = 136316162;
    v136 = v40;
    do
    {
      v43 = 0;
      do
      {
        if (*v173 != v42)
        {
          objc_enumerationMutation(a4);
        }

        v44 = *(*(&v172 + 1) + 8 * v43);
        v45 = [v44 isNull];
        if ((v45 & 1) == 0)
        {
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v53 = OUTLINED_FUNCTION_2(v45, v46, &v168, v199);
          if (v53)
          {
            v54 = v53;
            v55 = *v169;
            while (2)
            {
              for (k = 0; k != v54; ++k)
              {
                OUTLINED_FUNCTION_5(v169);
                if (!v36)
                {
                  objc_enumerationMutation(v12);
                }

                v57 = *(*(&v168 + 1) + 8 * k);
                v58 = [objc_msgSend(v57 "asset")];
                if (v58)
                {
                  v45 = [v57 setRefCount:{objc_msgSend(v57, "refCount") + 1}];
                  goto LABEL_52;
                }
              }

              v54 = OUTLINED_FUNCTION_2(v58, v59, &v168, v199);
              if (v54)
              {
                continue;
              }

              break;
            }
          }

          v60 = objc_alloc_init(BRSlotData);
          if (([v44 isNull] & 1) == 0)
          {
            HIWORD(v167) = 0;
            v61 = [v149[10] hapticAssetType:objc_msgSend(v44 hasAudio:"type") hasHaptic:&v167 + 7 error:{&v167 + 6, &v184}];
            v62 = _BRLog_log_0;
            if (!_BRLog_log_0)
            {
              v62 = os_log_create("com.apple.ButtonResolver", "default");
              _BRLog_log_0 = v62;
            }

            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              v63 = "NO";
              if (HIBYTE(v167))
              {
                v64 = "YES";
              }

              else
              {
                v64 = "NO";
              }

              if (BYTE6(v167))
              {
                v65 = "YES";
              }

              else
              {
                v65 = "NO";
              }

              *buf = v136;
              if (v61)
              {
                v63 = "YES";
              }

              v190 = "[BRInterfaceAOP setConfigs:withAssets:forStates:error:]";
              v191 = 2112;
              v192 = v44;
              v193 = 2080;
              v194 = v64;
              v195 = 2080;
              v196 = v65;
              v197 = 2080;
              v198 = v63;
              _os_log_debug_impl(&dword_242149000, v62, OS_LOG_TYPE_DEBUG, "%s get asset components: %@ audio: %s haptic: %s success: %s", buf, 0x34u);
              if (!v61)
              {
                goto LABEL_128;
              }
            }

            else if (!v61)
            {
              goto LABEL_128;
            }

            [v44 setHasAudio:HIBYTE(v167)];
            [v44 setHasHaptic:BYTE6(v167)];
            a4 = v143;
          }

          [(BRSlotData *)v60 setAsset:v44];
          [(BRSlotData *)v60 setRefCount:1];
          v45 = [v12 addObject:v60];
        }

LABEL_52:
        ++v43;
      }

      while (v43 != v41);
      v66 = OUTLINED_FUNCTION_8(v45, v46, v47, v48, v49, v50, v51, v52, v125, v126, v127, v128, v130, v131, aSelector, v134, v136, *(&v136 + 1), v139, v141, v143, v145, obja, v149, v150, *(&v150 + 1), v151, *(&v151 + 1), v152, *(&v152 + 1), v153, *(&v153 + 1), v154, *(&v154 + 1), v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), v158, *(&v158 + 1), v159, *(&v159 + 1), v160, *(&v160 + 1), v161, *(&v161 + 1), v162, *(&v162 + 1), v163, *(&v163 + 1), v164, *(&v164 + 1), v165, *(&v165 + 1), v166, v167, v168, *(&v168 + 1), v169, *(&v169 + 1), v170);
      v41 = v66;
    }

    while (v66);
  }

  v67 = [v149 timestampWithLabel:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@", NSStringFromSelector(aSelector), @"hapticComponents"}];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v69 = OUTLINED_FUNCTION_2(v67, v68, &v162, v188);
  v70 = v141;
  if (v69)
  {
    v71 = v69;
    v72 = *v163;
    do
    {
      for (m = 0; m != v71; ++m)
      {
        OUTLINED_FUNCTION_5(v163);
        if (!v36)
        {
          objc_enumerationMutation(v12);
        }

        v74 = *(*(&v162 + 1) + 8 * m);
        v75 = [v74 refCount];
        if (!v75)
        {
          [objc_msgSend(v74 "slot")];
          [OUTLINED_FUNCTION_4() addIndex:?];
          v75 = [v130 addObject:v74];
        }
      }

      v71 = OUTLINED_FUNCTION_2(v75, v76, &v162, v188);
    }

    while (v71);
  }

  [v12 removeObjectsInArray:v130];
  if (![v141 count])
  {
LABEL_107:
    v103 = v149;
    if (![v149 disableStates:v70 clearAsset:0 error:&v184])
    {
      goto LABEL_128;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"disabledStates"];
    v104 = [OUTLINED_FUNCTION_4() timestampWithLabel:?];
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v106 = OUTLINED_FUNCTION_2(v104, v105, &v150, v185);
    if (v106)
    {
      v107 = v106;
      v108 = *v151;
      do
      {
        v109 = 0;
        do
        {
          if (*v151 != v108)
          {
            objc_enumerationMutation(v12);
          }

          v110 = *(*(&v150 + 1) + 8 * v109);
          v111 = [v110 isProgrammed];
          if ((v111 & 1) == 0)
          {
            v113 = [v110 asset];
            if (([v113 isNull] & 1) == 0)
            {
              v114 = [v103[10] loadButtonHapticOfType:objc_msgSend(v113 withParameters:"type") atSlot:objc_msgSend(v113 error:{"parameters"), objc_msgSend(objc_msgSend(v110, "slot"), "integerValue"), &v184}];
              v115 = _BRLog_log_0;
              if (!_BRLog_log_0)
              {
                v115 = os_log_create("com.apple.ButtonResolver", "default");
                _BRLog_log_0 = v115;
              }

              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
              {
                v116 = [v110 slot];
                *buf = 136315906;
                v117 = "NO";
                if (v114)
                {
                  v117 = "YES";
                }

                v190 = "[BRInterfaceAOP setConfigs:withAssets:forStates:error:]";
                v191 = 2112;
                v192 = v113;
                v193 = 2112;
                v194 = v116;
                v195 = 2080;
                v196 = v117;
                _os_log_debug_impl(&dword_242149000, v115, OS_LOG_TYPE_DEBUG, "%s loaded asset: %@ at slot: %@ success: %s", buf, 0x2Au);
              }

              v103 = v149;
              if (!v114)
              {
                goto LABEL_128;
              }
            }

            v111 = [v110 setIsProgrammed:1];
          }

          ++v109;
        }

        while (v107 != v109);
        v118 = OUTLINED_FUNCTION_2(v111, v112, &v150, v185);
        v107 = v118;
      }

      while (v118);
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"loadedHaptics"];
    [OUTLINED_FUNCTION_4() timestampWithLabel:?];
    if ([v103 _setStateAOPConfigsFromStateData:obja andSlotData:v12])
    {

      *(v103 + v128) = v134;
      *(v103 + v127) = v12;
      [v103 mergeStateChanges:obja into:v103[13]];
      goto LABEL_128;
    }

    v121 = MEMORY[0x277CCA9B8];
    v122 = *MEMORY[0x277CCA590];
    v123 = -536870167;
LABEL_133:
    v184 = [v121 errorWithDomain:v122 code:v123 userInfo:0];
    goto LABEL_128;
  }

  v77 = 0;
  while (1)
  {
    v78 = [objc_msgSend(v70 objectAtIndexedSubscript:{v77), "unsignedIntegerValue"}];
    v79 = [a4 objectAtIndexedSubscript:v77];
    v80 = [v139 objectAtIndexedSubscript:v77];
    if ([v80 objectForKeyedSubscript:@"Speed"])
    {
      [objc_msgSend(v80 objectForKeyedSubscript:{@"Speed", "unsignedIntegerValue"}];
    }

    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v81 = [obja countByEnumeratingWithState:&v158 objects:v187 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v159;
LABEL_80:
      v84 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_5(v159);
        if (!v36)
        {
          objc_enumerationMutation(obja);
        }

        v85 = [obja objectForKey:*(*(&v158 + 1) + 8 * v84)];
        if ([(BRStateData *)v85 state]== v78)
        {
          break;
        }

        if (v82 == ++v84)
        {
          v82 = [obja countByEnumeratingWithState:&v158 objects:v187 count:16];
          if (v82)
          {
            goto LABEL_80;
          }

          goto LABEL_88;
        }
      }

      if (v85)
      {
        goto LABEL_89;
      }
    }

LABEL_88:
    v85 = [[BRStateData alloc] initWithState:v78 enabled:1];
LABEL_89:
    v86 = 0x277CCA000;
    [(NSMutableDictionary *)[(BRStateData *)v85 speedConfigs] setObject:v80 forKeyedSubscript:OUTLINED_FUNCTION_9()];
    v87 = [v79 isNull];
    if (v87)
    {
      v89 = [(BRStateData *)v85 speedSlots];
      v90 = OUTLINED_FUNCTION_9();
      v91 = v89;
      v92 = &unk_285467E68;
LABEL_102:
      [v91 setObject:v92 forKeyedSubscript:v90];
      goto LABEL_103;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v93 = OUTLINED_FUNCTION_2(v87, v88, &v154, v186);
    if (v93)
    {
      break;
    }

LABEL_103:
    [obja setObject:v85 forKeyedSubscript:{objc_msgSend(*(v86 + 2992), "numberWithUnsignedInteger:", v78)}];
    ++v77;
    v70 = v141;
    a4 = v143;
    if (v77 >= [v141 count])
    {
      goto LABEL_107;
    }
  }

  v94 = v93;
  v95 = *v155;
LABEL_93:
  v96 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_5(v155);
    if (!v36)
    {
      objc_enumerationMutation(v12);
    }

    v97 = *(*(&v154 + 1) + 8 * v96);
    v98 = [v79 isEqual:{objc_msgSend(v97, "asset")}];
    if (v98)
    {
      break;
    }

    if (v94 == ++v96)
    {
      v94 = OUTLINED_FUNCTION_2(v98, v99, &v154, v186);
      v86 = 0x277CCA000;
      if (v94)
      {
        goto LABEL_93;
      }

      goto LABEL_103;
    }
  }

  if ([v97 slot])
  {
    v100 = [v97 slot];
    v101 = [(BRStateData *)v85 speedSlots];
    v86 = 0x277CCA000uLL;
    v90 = OUTLINED_FUNCTION_9();
    v91 = v101;
    v92 = v100;
    goto LABEL_102;
  }

  v86 = 0x277CCA000uLL;
  if ([v134 count])
  {
    v102 = [v134 firstIndex];
    [v134 removeIndex:v102];
    [v97 setSlot:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", v102)}];
    -[NSMutableDictionary setObject:forKeyedSubscript:](-[BRStateData speedSlots](v85, "speedSlots"), "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v102], OUTLINED_FUNCTION_9());
    [v97 setIsProgrammed:0];
    goto LABEL_103;
  }

  v184 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870210 userInfo:0];
LABEL_128:
  if (v131 && v184)
  {
    *v131 = v184;
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", NSStringFromSelector(aSelector), @"end"];
  [OUTLINED_FUNCTION_4() timestampWithLabel:?];
  result = v184 == 0;
  v120 = *MEMORY[0x277D85DE8];
  return result;
}

void __30__BRInterfaceAOP__findService__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, [v2 queue]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    v6 = *(v4 + 113) ? "AppleSPUHapticsAudioDriver" : "AppleSPUButtonDriver";
    v7 = IOServiceNameMatching(v6);
    if (!IOServiceAddMatchingNotification(v5, "IOServiceMatched", v7, AOPMatchedCallback, *(a1 + 32), (*(a1 + 32) + 56)))
    {
      v8 = *(a1 + 32);
      v9 = v8[14];

      AOPMatchedCallback(v8, v9);
    }
  }
}

- (BOOL)_setDefaultAOPConfigs
{
  v3 = [(BRInterfaceAOP *)self _serviceSetProperty:&unk_285468108 forKey:@"GlobalConfig"];
  if (v3)
  {

    LOBYTE(v3) = [(BRInterfaceAOP *)self _serviceSetProperty:&unk_2854684F0 forKey:@"StateConfig"];
  }

  return v3;
}

- (BOOL)_setGlobalAOPConfigsFromBRFConfigs:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [a3 count];
  if (v5)
  {
    v6 = +[BRInterfaceAOP _convertForceFeel:](BRInterfaceAOP, "_convertForceFeel:", [objc_msgSend(a3 objectForKeyedSubscript:{@"ForceFeel", "unsignedIntegerValue"}]);
    if (v6 == 3)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v9 = @"GlobalForceFeel";
      v10[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
      LOBYTE(v5) = -[BRInterfaceAOP _serviceSetProperty:forKey:](self, "_serviceSetProperty:forKey:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1], @"GlobalConfig");
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_setStateAOPConfigsFromStateData:(id)a3 andSlotData:(id)a4
{
  v66[18] = *MEMORY[0x277D85DE8];
  v54 = [MEMORY[0x277CBEB18] array];
  v5 = [a3 count];
  if (v5)
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v43 = OUTLINED_FUNCTION_6(v5, v6, v7, v8, v9, v10, v11, v12, v36, v38, v40, v42, v44, obj, a4, self, v52, v54, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), 0);
    if (v43)
    {
      v39 = *v61;
      v41 = a3;
      do
      {
        v13 = 0;
        do
        {
          if (*v61 != v39)
          {
            objc_enumerationMutation(a3);
          }

          v45 = v13;
          v14 = [a3 objectForKey:*(*(&v60 + 1) + 8 * v13)];
          v15 = +[BRInterfaceAOP _convertClickState:](BRInterfaceAOP, "_convertClickState:", [v14 state]);
          v65[0] = @"StateButtonState";
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
          v65[1] = @"StateEnable";
          v66[0] = v16;
          v66[1] = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "enabled")}];
          v17 = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:{2), "mutableCopy"}];
          if ([v14 enabled])
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            obja = [v14 speedConfigs];
            v18 = [obja countByEnumeratingWithState:&v56 objects:v64 count:16];
            if (v18)
            {
              v26 = v18;
              v53 = *v57;
              do
              {
                v27 = 0;
                do
                {
                  if (*v57 != v53)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v28 = *(*(&v56 + 1) + 8 * v27);
                  [v17 setObject:v28 forKey:@"StateSpeed"];
                  [objc_msgSend(v14 "speedSlots")];
                  [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                  v29 = [objc_msgSend(v51 dataForSlot:objc_msgSend(objc_msgSend(v14 fromArray:{"speedSlots"), "objectForKeyedSubscript:", v28), v49), "asset"}];
                  v30 = [v29 hasAudio];
                  if ([v29 hasHaptic])
                  {
                    v31 = 2;
                  }

                  else
                  {
                    v31 = 0;
                  }

                  [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31 | v30];
                  [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                  if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                  {
                    [objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                    [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                  }

                  if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                  {
                    [objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                    [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                  }

                  if ([objc_msgSend(objc_msgSend(v14 "speedConfigs")])
                  {
                    [objc_msgSend(objc_msgSend(objc_msgSend(v14 "speedConfigs")];
                    LODWORD(v33) = vcvtd_n_s64_f64(v32, 0x10uLL);
                    [MEMORY[0x277CCABB0] numberWithInt:v33];
                    [OUTLINED_FUNCTION_3() setObject:? forKey:?];
                  }

                  [v55 addObject:{objc_msgSend(v17, "copy")}];
                  ++v27;
                }

                while (v26 != v27);
                v18 = [obja countByEnumeratingWithState:&v56 objects:v64 count:16];
                v26 = v18;
              }

              while (v18);
            }
          }

          else
          {
            v18 = [v55 addObject:v17];
          }

          v13 = v45 + 1;
          a3 = v41;
        }

        while (v45 + 1 != v43);
        v43 = OUTLINED_FUNCTION_6(v18, v19, v20, v21, v22, v23, v24, v25, v37, v39, v41, v43, v45, obja, v49, v51, v53, v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60);
      }

      while (v43);
    }

    result = [v51 _serviceSetProperty:v55 forKey:@"StateConfig"];
  }

  else
  {
    result = 1;
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)initWithFastHaptics:(id *)a1 .cold.1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)propertyList
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_242149000, v0, OS_LOG_TYPE_DEBUG, "%s %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (uint64_t)playState:(uint64_t *)a1 forSpeed:error:.cold.1(uint64_t *a1)
{
  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-536870167 userInfo:0];
  if (a1)
  {
    if (result)
    {
      *a1 = result;
    }
  }

  return result;
}

- (void)updateReadyState
{
  v0 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v0 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v0;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_242149000, v0, OS_LOG_TYPE_ERROR, "Unexpected error: notification block is nil!", v1, 2u);
  }
}

- (void)_receiveLoaderAvailableNotification:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_242149000, v0, OS_LOG_TYPE_DEBUG, "%s notification: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_serviceSetProperty:forKey:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_242149000, v2, OS_LOG_TYPE_DEBUG, "%s property: %@ key: %@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_serviceSetProperty:(int *)a1 forKey:.cold.2(int *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_0;
  if (!_BRLog_log_0)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_0 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = *a1;
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end