@interface CUPowerSourceMonitor
- (CUPowerSourceMonitor)init;
- (void)_aggregatePowerSourceFound:(id)a3;
- (void)_aggregatePowerSourceLost:(id)a3;
- (void)_aggregatePowerSourceUpdate:(id)a3 changes:(unsigned int)a4;
- (void)_cleanup;
- (void)_handlePowerSourceFound:(id)a3 desc:(id)a4 adapterDesc:(id)a5;
- (void)_handlePowerSourceLost:(id)a3 sourceID:(id)a4;
- (void)_handlePowerSourceUpdate:(id)a3 desc:(id)a4 adapterDesc:(id)a5;
- (void)_update;
- (void)_updatePowerSources;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)a3;
@end

@implementation CUPowerSourceMonitor

- (void)_handlePowerSourceUpdate:(id)a3 desc:(id)a4 adapterDesc:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = [v20 updateWithPowerSourceDescription:a4];
  v10 = [v20 type];
  v11 = [v10 isEqual:@"InternalBattery"];

  if (v11)
  {
    v9 = [v20 updateWithPowerAdapterDetails:v8] | v9;
  }

  if ((self->_changeFlags & v9) != 0)
  {
    v12 = gLogCategory_CUPowerSourceMonitor;
    if (gLogCategory_CUPowerSourceMonitor > 10)
    {
      goto LABEL_15;
    }

    if (gLogCategory_CUPowerSourceMonitor == -1)
    {
      if (!_LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0xAu))
      {
        goto LABEL_15;
      }

      v12 = gLogCategory_CUPowerSourceMonitor;
    }

    if (v12 <= 9)
    {
      v13 = v20;
      if (v12 != -1)
      {
        goto LABEL_14;
      }

      _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 9u);
    }

    v13 = v20;
LABEL_14:
    v19 = [v13 ioKitDescription];
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _handlePowerSourceUpdate:desc:adapterDesc:]", 0xAu, "Changed %@ %#{flags} %?@\n", v14, v15, v16, v17, v20);

LABEL_15:
    if ([v20 isAggregateComponent])
    {
      [(CUPowerSourceMonitor *)self _aggregatePowerSourceUpdate:v20 changes:v9];
    }

    else
    {
      powerSourceChangedHandler = self->_powerSourceChangedHandler;
      if (powerSourceChangedHandler)
      {
        powerSourceChangedHandler[2](powerSourceChangedHandler, v20, v9);
      }
    }
  }
}

- (void)_handlePowerSourceLost:(id)a3 sourceID:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = gLogCategory_CUPowerSourceMonitor;
  if (gLogCategory_CUPowerSourceMonitor <= 30)
  {
    if (gLogCategory_CUPowerSourceMonitor == -1)
    {
      if (!_LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu))
      {
        goto LABEL_12;
      }

      v7 = gLogCategory_CUPowerSourceMonitor;
    }

    if (v7 <= 9)
    {
      v8 = v15;
      if (v7 != -1)
      {
        goto LABEL_11;
      }

      _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 9u);
    }

    v8 = v15;
LABEL_11:
    v14 = [v8 ioKitDescription];
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _handlePowerSourceLost:sourceID:]", 0x1Eu, "Lost    %@ %?@\n", v9, v10, v11, v12, v15);
  }

LABEL_12:
  [(NSMutableDictionary *)self->_powerSources removeObjectForKey:v6];
  if ([v15 isAggregateComponent])
  {
    [(CUPowerSourceMonitor *)self _aggregatePowerSourceLost:v15];
  }

  else
  {
    powerSourceLostHandler = self->_powerSourceLostHandler;
    if (powerSourceLostHandler)
    {
      powerSourceLostHandler[2](powerSourceLostHandler, v15);
    }
  }
}

- (void)_handlePowerSourceFound:(id)a3 desc:(id)a4 adapterDesc:(id)a5
{
  v22 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(CUPowerSource);
  -[CUPowerSource setSourceID:](v10, "setSourceID:", [v22 integerValue]);
  [(CUPowerSource *)v10 updateWithPowerSourceDescription:v9];

  v11 = [(CUPowerSource *)v10 type];
  LODWORD(v9) = [v11 isEqual:@"InternalBattery"];

  if (v9)
  {
    [(CUPowerSource *)v10 updateWithPowerAdapterDetails:v8];
  }

  powerSources = self->_powerSources;
  if (!powerSources)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_powerSources;
    self->_powerSources = v13;

    powerSources = self->_powerSources;
  }

  [(NSMutableDictionary *)powerSources setObject:v10 forKeyedSubscript:v22];
  v15 = gLogCategory_CUPowerSourceMonitor;
  if (gLogCategory_CUPowerSourceMonitor <= 30)
  {
    if (gLogCategory_CUPowerSourceMonitor == -1)
    {
      if (!_LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu))
      {
        goto LABEL_13;
      }

      v15 = gLogCategory_CUPowerSourceMonitor;
    }

    if (v15 == -1)
    {
      _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 9u);
    }

    v21 = [(CUPowerSource *)v10 ioKitDescription];
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _handlePowerSourceFound:desc:adapterDesc:]", 0x1Eu, "Found   %@ %?@\n", v16, v17, v18, v19, v10);
  }

LABEL_13:
  if ([(CUPowerSource *)v10 isAggregateComponent])
  {
    [(CUPowerSourceMonitor *)self _aggregatePowerSourceFound:v10];
  }

  else
  {
    powerSourceFoundHandler = self->_powerSourceFoundHandler;
    if (powerSourceFoundHandler)
    {
      powerSourceFoundHandler[2](powerSourceFoundHandler, v10);
    }
  }
}

- (void)_updatePowerSources
{
  v45 = *MEMORY[0x1E69E9840];
  if (gLogCategory_CUPowerSourceMonitor <= 10 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _updatePowerSources]", 0xAu, "Update power sources\n", v2, v3, v4, v5, v38);
  }

  [(NSMutableDictionary *)self->_powerSources enumerateKeysAndObjectsUsingBlock:&__block_literal_global_7042];
  v39 = IOPSCopyExternalPowerAdapterDetails();
  v7 = IOPSCopyPowerSourcesByType();
  v12 = v7;
  if (!v7)
  {
    if (gLogCategory_CUPowerSourceMonitor > 60)
    {
      goto LABEL_39;
    }

    if (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _updatePowerSources]", 0x3Cu, "### IOPSCopyPowerSourcesInfo failed\n", v8, v9, v10, v11, v38);
    }

    goto LABEL_33;
  }

  v13 = IOPSCopyPowerSourcesList(v7);
  if (!v13)
  {
LABEL_33:
    if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _updatePowerSources]", 0x3Cu, "### IOPSCopyPowerSourcesList failed\n", v8, v9, v10, v11, v38);
    }

    goto LABEL_37;
  }

  v14 = v13;
  Count = CFArrayGetCount(v13);
  if (Count >= 1)
  {
    v16 = Count;
    for (i = 0; i != v16; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
      v19 = IOPSGetPowerSourceDescription(v12, ValueAtIndex);
      v24 = v19;
      if (v19)
      {
        v29 = [v19 objectForKeyedSubscript:@"Power Source ID"];
        if (v29)
        {
          v30 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v29];
          if (v30)
          {
            [(CUPowerSourceMonitor *)self _handlePowerSourceUpdate:v30 desc:v24 adapterDesc:v39];
          }

          else
          {
            [(CUPowerSourceMonitor *)self _handlePowerSourceFound:v29 desc:v24 adapterDesc:v39];
          }
        }

        else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
        {
          LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _updatePowerSources]", 0x3Cu, "### No ID for power source %##@\n", v25, v26, v27, v28, v24);
        }
      }

      else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
      {
        LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _updatePowerSources]", 0x3Cu, "### IOPSGetPowerSourceDescription %ld failed\n", v20, v21, v22, v23, i);
      }
    }
  }

  CFRelease(v14);
LABEL_37:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_39:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = [(NSMutableDictionary *)self->_powerSources allKeys];
  v32 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v41;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v40 + 1) + 8 * j);
        v37 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v36];
        if (([v37 present] & 1) == 0)
        {
          [(CUPowerSourceMonitor *)self _handlePowerSourceLost:v37 sourceID:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v33);
  }
}

- (void)_update
{
  if (self->_psNotifyTokenAccessoryAttach == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__CUPowerSourceMonitor__update__block_invoke;
    handler[3] = &unk_1E73A4228;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.attach", &self->_psNotifyTokenAccessoryAttach, dispatchQueue, handler);
  }

  if (self->_psNotifyTokenAccessoryPowerSource == -1)
  {
    v4 = self->_dispatchQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__CUPowerSourceMonitor__update__block_invoke_2;
    v9[3] = &unk_1E73A4228;
    v9[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.source", &self->_psNotifyTokenAccessoryPowerSource, v4, v9);
  }

  if (self->_psNotifyTokenAccessoryTimeRemaining == -1)
  {
    v5 = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__CUPowerSourceMonitor__update__block_invoke_3;
    v8[3] = &unk_1E73A4228;
    v8[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_psNotifyTokenAccessoryTimeRemaining, v5, v8);
  }

  if (self->_psNotifyTokenAnyPowerSource == -1)
  {
    v6 = self->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__CUPowerSourceMonitor__update__block_invoke_4;
    v7[3] = &unk_1E73A4228;
    v7[4] = self;
    notify_register_dispatch("com.apple.system.powersources", &self->_psNotifyTokenAnyPowerSource, v6, v7);
  }
}

uint64_t __31__CUPowerSourceMonitor__update__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _update]_block_invoke", 0x1Eu, "Power notification: AccessoryAttach\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _updatePowerSources];
}

uint64_t __31__CUPowerSourceMonitor__update__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _update]_block_invoke_2", 0x1Eu, "Power notification: AccessoryPowerSource\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _updatePowerSources];
}

uint64_t __31__CUPowerSourceMonitor__update__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 10 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _update]_block_invoke_3", 0xAu, "Power notification: AccessoryTimeRemaining\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _updatePowerSources];
}

uint64_t __31__CUPowerSourceMonitor__update__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 10 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0xAu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _update]_block_invoke_4", 0xAu, "Power notification: AnyPowerSource\n", a5, a6, a7, a8, v11);
  }

  v9 = *(a1 + 32);

  return [v9 _updatePowerSources];
}

- (void)_aggregatePowerSourceUpdate:(id)a3 changes:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v25 = v6;
  if (gLogCategory_CUPowerSourceMonitor <= 30)
  {
    if (gLogCategory_CUPowerSourceMonitor != -1 || (v11 = _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu), v6 = v25, v11))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceUpdate:changes:]", 0x1Eu, "Aggregate power source update: %@", v7, v8, v9, v10, v6);
      v6 = v25;
    }
  }

  v16 = [v6 accessoryID];
  if (v16)
  {
    v17 = [(NSMutableDictionary *)self->_pendingAggregates objectForKeyedSubscript:v16];
    v18 = v17;
    if (v17 || ([(NSMutableDictionary *)self->_aggregateSources objectForKeyedSubscript:v16], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = [v25 partID];
      if ([v23 isEqualToString:@"Left"])
      {
        [v18 setSubLeft:v25];
      }

      else if ([v23 isEqualToString:@"Right"])
      {
        [v18 setSubRight:v25];
      }

      else if ([v23 isEqualToString:@"Case"])
      {
        [v18 setSubCase:v25];
      }

      [v18 handleSubComponentsUpdatedWithBaseSource:0];
      if (v17)
      {
        [(NSMutableDictionary *)self->_pendingAggregates setObject:v18 forKeyedSubscript:v16];
      }

      else
      {
        [(NSMutableDictionary *)self->_aggregateSources setObject:v18 forKeyedSubscript:v16];
        powerSourceChangedHandler = self->_powerSourceChangedHandler;
        if (powerSourceChangedHandler)
        {
          powerSourceChangedHandler[2](powerSourceChangedHandler, v18, v4);
        }
      }
    }

    else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceUpdate:changes:]", 0x3Cu, "### No aggregate found for lost power source: %@", v19, v20, v21, v22, v25);
    }
  }

  else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceUpdate:changes:]", 0x3Cu, "### No accessoryID for aggregate changed: %@", v12, v13, v14, v15, v25);
  }
}

- (void)_aggregatePowerSourceLost:(id)a3
{
  v24 = a3;
  if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceLost:]", 0x1Eu, "Aggregate power source lost: %@", v4, v5, v6, v7, v24);
  }

  v12 = [v24 accessoryID];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_pendingAggregates objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13 || ([(NSMutableDictionary *)self->_aggregateSources objectForKeyedSubscript:v12], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = [v24 partID];
      if ([v19 isEqualToString:@"Left"])
      {
        [v14 setSubLeft:0];
      }

      else if ([v19 isEqualToString:@"Right"])
      {
        [v14 setSubRight:0];
      }

      else if ([v19 isEqualToString:@"Case"])
      {
        [v14 setSubCase:0];
      }

      [v14 handleSubComponentsUpdatedWithBaseSource:0];
      v20 = [v14 subLeft];
      if (v20 || ([v14 subRight], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v22 = [v14 subCase];

        if (!v22)
        {
          [(NSMutableDictionary *)self->_aggregateSources setObject:0 forKeyedSubscript:v12];
          [(NSMutableDictionary *)self->_pendingAggregates setObject:0 forKeyedSubscript:v12];
          if (!v13)
          {
            powerSourceLostHandler = self->_powerSourceLostHandler;
            if (powerSourceLostHandler)
            {
              powerSourceLostHandler[2](powerSourceLostHandler, v14);
            }
          }

          goto LABEL_25;
        }
      }

      if (v13)
      {
        [(NSMutableDictionary *)self->_pendingAggregates setObject:v14 forKeyedSubscript:v12];
      }

      else
      {
        [(NSMutableDictionary *)self->_aggregateSources setObject:v14 forKeyedSubscript:v12];
        powerSourceChangedHandler = self->_powerSourceChangedHandler;
        if (powerSourceChangedHandler)
        {
          powerSourceChangedHandler[2](powerSourceChangedHandler, v14, 512);
        }
      }

LABEL_25:

      goto LABEL_26;
    }

    if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceLost:]", 0x3Cu, "### No aggregate found for lost power source: %@", v15, v16, v17, v18, v24);
    }
  }

  else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceLost:]", 0x3Cu, "### No accessoryID for aggregate lost: %@", v8, v9, v10, v11, v24);
  }

LABEL_26:
}

- (void)_aggregatePowerSourceFound:(id)a3
{
  v4 = a3;
  v29 = v4;
  if (gLogCategory_CUPowerSourceMonitor <= 30)
  {
    if (gLogCategory_CUPowerSourceMonitor != -1 || (v9 = _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu), v4 = v29, v9))
    {
      LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceFound:]", 0x1Eu, "Aggregate power source found: %@", v5, v6, v7, v8, v4);
      v4 = v29;
    }
  }

  v14 = [v4 accessoryID];
  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->_pendingAggregates objectForKeyedSubscript:v14];
    if (!v15)
    {
      v15 = objc_alloc_init(CUPowerSource);
    }

    v16 = [v29 partID];
    if ([v16 isEqualToString:@"Left"])
    {
      [(CUPowerSource *)v15 setSubLeft:v29];
    }

    else if ([v16 isEqualToString:@"Right"])
    {
      [(CUPowerSource *)v15 setSubRight:v29];
    }

    else if ([v16 isEqualToString:@"Case"])
    {
      [(CUPowerSource *)v15 setSubCase:v29];
    }

    [(CUPowerSource *)v15 handleSubComponentsUpdatedWithBaseSource:0];
    v17 = [(CUPowerSource *)v15 hasAllComponents];
    pendingAggregates = self->_pendingAggregates;
    if (v17)
    {
      [(NSMutableDictionary *)pendingAggregates setObject:0 forKeyedSubscript:v14];
      aggregateSources = self->_aggregateSources;
      if (!aggregateSources)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v21 = self->_aggregateSources;
        self->_aggregateSources = v20;

        aggregateSources = self->_aggregateSources;
      }

      [(NSMutableDictionary *)aggregateSources setObject:v15 forKeyedSubscript:v14];
      if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
      {
        LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceFound:]", 0x1Eu, "Aggregate complete: %@", v22, v23, v24, v25, v15);
      }

      powerSourceFoundHandler = self->_powerSourceFoundHandler;
      if (powerSourceFoundHandler)
      {
        powerSourceFoundHandler[2](powerSourceFoundHandler, v15);
      }
    }

    else
    {
      if (!pendingAggregates)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v27 = self->_pendingAggregates;
        self->_pendingAggregates = v26;

        pendingAggregates = self->_pendingAggregates;
      }

      [(NSMutableDictionary *)pendingAggregates setObject:v15 forKeyedSubscript:v14];
    }
  }

  else if (gLogCategory_CUPowerSourceMonitor <= 60 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor _aggregatePowerSourceFound:]", 0x3Cu, "### No accessoryID for aggregate found: %@", v10, v11, v12, v13, v29);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CUPowerSourceMonitor_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__CUPowerSourceMonitor_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v12);
  }

  v9 = *(a1 + 32);
  v10 = v9[9];
  if (v10)
  {
    (*(v10 + 16))(v9[9]);
    v9 = *(a1 + 32);
  }

  return [v9 _cleanup];
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_activateCalled = 1;
  dispatchQueue = v5->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__CUPowerSourceMonitor_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E73A49A0;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

uint64_t __47__CUPowerSourceMonitor_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUPowerSourceMonitor <= 30 && (gLogCategory_CUPowerSourceMonitor != -1 || _LogCategory_Initialize(&gLogCategory_CUPowerSourceMonitor, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPowerSourceMonitor, "[CUPowerSourceMonitor activateWithCompletion:]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v12);
  }

  [*(a1 + 32) _update];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
  }

  v10 = *(a1 + 32);

  return [v10 _updatePowerSources];
}

- (void)setChangeFlags:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_activateCalled)
  {
    dispatchQueue = v4->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__CUPowerSourceMonitor_setChangeFlags___block_invoke;
    v6[3] = &unk_1E73A42A0;
    v7 = a3;
    v6[4] = v4;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    v4->_changeFlags = a3;
  }

  objc_sync_exit(v4);
}

uint64_t __39__CUPowerSourceMonitor_setChangeFlags___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 56))
  {
    *(v2 + 56) = v1;
    return [*(result + 32) _update];
  }

  return result;
}

- (void)_cleanup
{
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  powerSourceFoundHandler = self->_powerSourceFoundHandler;
  self->_powerSourceFoundHandler = 0;

  powerSourceLostHandler = self->_powerSourceLostHandler;
  self->_powerSourceLostHandler = 0;

  powerSourceChangedHandler = self->_powerSourceChangedHandler;
  self->_powerSourceChangedHandler = 0;

  [(NSMutableDictionary *)self->_powerSources removeAllObjects];
  powerSources = self->_powerSources;
  self->_powerSources = 0;

  psNotifyTokenAccessoryAttach = self->_psNotifyTokenAccessoryAttach;
  if (psNotifyTokenAccessoryAttach != -1)
  {
    notify_cancel(psNotifyTokenAccessoryAttach);
    self->_psNotifyTokenAccessoryAttach = -1;
  }

  psNotifyTokenAccessoryPowerSource = self->_psNotifyTokenAccessoryPowerSource;
  if (psNotifyTokenAccessoryPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAccessoryPowerSource);
    self->_psNotifyTokenAccessoryPowerSource = -1;
  }

  psNotifyTokenAccessoryTimeRemaining = self->_psNotifyTokenAccessoryTimeRemaining;
  if (psNotifyTokenAccessoryTimeRemaining != -1)
  {
    notify_cancel(psNotifyTokenAccessoryTimeRemaining);
    self->_psNotifyTokenAccessoryTimeRemaining = -1;
  }

  psNotifyTokenAnyPowerSource = self->_psNotifyTokenAnyPowerSource;
  if (psNotifyTokenAnyPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAnyPowerSource);
    self->_psNotifyTokenAnyPowerSource = -1;
  }
}

- (void)dealloc
{
  [(CUPowerSourceMonitor *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CUPowerSourceMonitor;
  [(CUPowerSourceMonitor *)&v3 dealloc];
}

- (CUPowerSourceMonitor)init
{
  v5.receiver = self;
  v5.super_class = CUPowerSourceMonitor;
  v2 = [(CUPowerSourceMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_changeFlags = 5;
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v3->_dispatchQueue, CUMainQueue_sQueue);
    *&v3->_psNotifyTokenAccessoryAttach = -1;
    *&v3->_psNotifyTokenAccessoryTimeRemaining = -1;
  }

  return v3;
}

@end