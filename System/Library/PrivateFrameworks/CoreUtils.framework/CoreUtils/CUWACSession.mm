@interface CUWACSession
- (CUWACSession)init;
- (int)_runEasyConfigPostConfig;
- (int)_runEasyConfigPreConfig;
- (int)_runFinish;
- (int)_runJoinSoftAP;
- (int)_runRestoreOriginalWiFi;
- (int)_runSaveOriginalWiFi;
- (void)_cleanup;
- (void)_progress:(unsigned int)a3 info:(id)a4;
- (void)_run;
- (void)_runEasyConfigPreConfigStart;
- (void)_runEasyConfigProgress:(int)a3 info:(id)a4;
- (void)_runFinishRestored:(int)a3;
- (void)_runJoinSoftAPFinished:(int)a3;
- (void)_runJoinSoftAPStart;
- (void)_runRestoreOriginalWiFiFinished:(int)a3;
- (void)_runRestoreOriginalWiFiStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)a3;
- (void)trySetupCode:(id)a3;
@end

@implementation CUWACSession

- (void)_runFinishRestored:(int)a3
{
  v3 = *&a3;
  v23[1] = *MEMORY[0x1E69E9840];
  originalWiFiInfo = self->_originalWiFiInfo;
  self->_originalWiFiInfo = 0;

  if (v3)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x3Cu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWACSession _runFinishRestored:]", 0x3Cu, "### Finish restore original WiFi failed: %#m\n", v6, v7, v8, v9, v3);
    }

LABEL_9:
    self->_finishState = 3;
    v22 = @"eo";
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v13 = v3;
    v20 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v3, 0, 0)}];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    v21 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v11 errorWithDomain:v12 code:v13 userInfo:v17];
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [(CUWACSession *)self _progress:30 info:v19];

    return;
  }

  [(CUWACSession *)self _progress:20 info:0];
  self->_finishState = 4;

  [(CUWACSession *)self _run];
}

- (int)_runFinish
{
  if (!self->_finishState)
  {
    originalWiFiInfo = self->_originalWiFiInfo;
    if (!originalWiFiInfo)
    {
      v7 = self;
      v6 = 0;
      goto LABEL_6;
    }

    self->_easyConfigPostConfigState = 1;
    dispatchQueue = self->_dispatchQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__CUWACSession__runFinish__block_invoke;
    v9[3] = &unk_1E73A4228;
    v9[4] = self;
    v5 = WiFiRestoreNetwork(originalWiFiInfo, dispatchQueue, v9);
    if (v5)
    {
      v6 = v5;
      v7 = self;
LABEL_6:
      [(CUWACSession *)v7 _runFinishRestored:v6];
    }
  }

  return self->_finishState;
}

- (int)_runEasyConfigPostConfig
{
  v28[1] = *MEMORY[0x1E69E9840];
  easyConfigPostConfigState = self->_easyConfigPostConfigState;
  if (easyConfigPostConfigState == 4)
  {
    return self->_easyConfigPostConfigState;
  }

  if (!easyConfigPostConfigState)
  {
    self->_easyConfigPostConfigState = 1;
    [(CUWACSession *)self _progress:160 info:0];
    easyConfigDevice = self->_easyConfigDevice;
    if (easyConfigDevice)
    {
      [(EasyConfigDevice *)easyConfigDevice setPostConfigMetrics:&self->_easyConfigPostConfigMetrics];
      [(EasyConfigDevice *)self->_easyConfigDevice resumePostConfig];
      return self->_easyConfigPostConfigState;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_14;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x5Au))
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUWACSession _runEasyConfigPostConfig]", 0x5Au, "### No EasyConfigDevice to resume?\n", v8, v9, v10, v11, v24);
LABEL_14:
    self->_easyConfigPostConfigState = 3;
    v27 = @"eo";
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A768];
    v25 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6762, 0, 0)}];
    v18 = v17;
    v19 = @"?";
    if (v17)
    {
      v19 = v17;
    }

    v26 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [v15 errorWithDomain:v16 code:-6762 userInfo:v20];
    v28[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [(CUWACSession *)self _progress:30 info:v22];

    return self->_easyConfigPostConfigState;
  }

  v13 = self->_ucat;
  if (v13->var0 <= 30)
  {
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        return self->_easyConfigPostConfigState;
      }

      v13 = self->_ucat;
      easyConfigPostConfigState = self->_easyConfigPostConfigState;
    }

    LogPrintF(v13, "[CUWACSession _runEasyConfigPostConfig]", 0x1Eu, "EasyConfig PostConfig hasn't succeeded yet (%d)\n", v2, v3, v4, v5, easyConfigPostConfigState);
  }

  return self->_easyConfigPostConfigState;
}

- (void)_runRestoreOriginalWiFiFinished:(int)a3
{
  v3 = *&a3;
  v23[1] = *MEMORY[0x1E69E9840];
  originalWiFiInfo = self->_originalWiFiInfo;
  self->_originalWiFiInfo = 0;

  self->_easyConfigPostConfigMetrics.wifiJoinDestinationAPError = v3;
  if (v3)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x3Cu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWACSession _runRestoreOriginalWiFiFinished:]", 0x3Cu, "### Restore original WiFi failed: %#m\n", v6, v7, v8, v9, v3);
    }

LABEL_9:
    self->_restoreOriginalWiFiState = 3;
    v22 = @"eo";
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v13 = v3;
    v20 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v3, 0, 0)}];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    v21 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [v11 errorWithDomain:v12 code:v13 userInfo:v17];
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [(CUWACSession *)self _progress:30 info:v19];

    return;
  }

  self->_easyConfigPostConfigMetrics.secondsToGetLinkUpOnDestination = CFAbsoluteTimeGetCurrent() - self->_restoreStartTime;
  [(CUWACSession *)self _progress:140 info:0];
  self->_restoreOriginalWiFiState = 4;

  [(CUWACSession *)self _run];
}

- (void)_runRestoreOriginalWiFiStart
{
  v36[1] = *MEMORY[0x1E69E9840];
  [(CUWACSession *)self _progress:130 info:0];
  v3 = self->_originalWiFiInfo;
  v8 = v3;
  if (!v3)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_17;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWACSession _runRestoreOriginalWiFiStart]", 0x5Au, "### No original WiFi info to restore\n", v4, v5, v6, v7, v30);
    }

LABEL_17:
    LODWORD(v19) = -6705;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(v3, @"RSSI");
  if (Value)
  {
    v32 = 0;
    LODWORD(Value) = CFGetInt64(Value, &v32);
  }

  self->_easyConfigPostConfigMetrics.rssiOfDestinationAP = Value;
  v10 = CFDictionaryGetValue(v8, @"SNR");
  if (v10)
  {
    v32 = 0;
    LODWORD(v10) = CFGetInt64(v10, &v32);
  }

  self->_easyConfigPostConfigMetrics.snrOfDestinationAP = v10;
  v11 = CFDictionaryGetValue(v8, @"CHANNEL");
  if (v11)
  {
    v32 = 0;
    LODWORD(v11) = CFGetInt64(v11, &v32);
  }

  self->_easyConfigPostConfigMetrics.channelOfDestinationAP = v11;
  self->_restoreStartTime = CFAbsoluteTimeGetCurrent();
  dispatchQueue = self->_dispatchQueue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __44__CUWACSession__runRestoreOriginalWiFiStart__block_invoke;
  v31[3] = &unk_1E73A4228;
  v31[4] = self;
  v13 = WiFiRestoreNetwork(v8, dispatchQueue, v31);
  if (v13)
  {
    v19 = v13;
    v20 = self->_ucat;
    if (v20->var0 <= 60)
    {
      if (v20->var0 == -1)
      {
        if (!_LogCategory_Initialize(v20, 0x3Cu))
        {
          goto LABEL_18;
        }

        v20 = self->_ucat;
      }

      LogPrintF(v20, "[CUWACSession _runRestoreOriginalWiFiStart]", 0x3Cu, "### Restore original WiFi start failed: %#m\n", v14, v15, v16, v17, v19);
    }

LABEL_18:
    self->_restoreOriginalWiFiState = 3;
    v35 = @"eo";
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A768];
    v23 = v19;
    v33 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v19, 0, 0)}];
    v25 = v24;
    v26 = @"?";
    if (v24)
    {
      v26 = v24;
    }

    v34 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v28 = [v21 errorWithDomain:v22 code:v23 userInfo:v27];
    v36[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    [(CUWACSession *)self _progress:30 info:v29];
  }
}

- (int)_runRestoreOriginalWiFi
{
  restoreOriginalWiFiState = self->_restoreOriginalWiFiState;
  if (restoreOriginalWiFiState != 4)
  {
    if (restoreOriginalWiFiState)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            return self->_restoreOriginalWiFiState;
          }

          ucat = self->_ucat;
          restoreOriginalWiFiState = self->_restoreOriginalWiFiState;
        }

        LogPrintF(ucat, "[CUWACSession _runRestoreOriginalWiFi]", 0x1Eu, "Restore original WiFi hasn't succeeded yet (%d)\n", v2, v3, v4, v5, restoreOriginalWiFiState);
      }
    }

    else
    {
      self->_restoreOriginalWiFiState = 1;
      [(CUWACSession *)self _runRestoreOriginalWiFiStart];
    }
  }

  return self->_restoreOriginalWiFiState;
}

- (void)_runEasyConfigProgress:(int)a3 info:(id)a4
{
  v4 = *&a3;
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (v4 <= 39)
  {
    if (v4 > 19)
    {
      if (v4 == 20)
      {
        v11 = self;
        v12 = 90;
        goto LABEL_25;
      }

      if (v4 == 30)
      {
        [(CUWACSession *)self _progress:100 info:v10];
        v11 = self;
        v12 = 110;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (v4 != 2)
    {
      if (v4 == 10)
      {
        v11 = self;
        v12 = 70;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    EasyConfigKey_ReasonError = getEasyConfigKey_ReasonError();
    TypeID = CFErrorGetTypeID();
    v19 = CFDictionaryGetTypedValue(v10, EasyConfigKey_ReasonError, TypeID, 0);
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_19:
        LogPrintF(ucat, "[CUWACSession _runEasyConfigProgress:info:]", 0x1Eu, "EasyConfig final: %{error}\n", v15, v16, v17, v18, v19);
        goto LABEL_31;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_19;
      }
    }

LABEL_31:
    if (self->_easyConfigPreConfigState == 1)
    {
      if (v19)
      {
        self->_easyConfigPreConfigState = 3;
        v28 = @"eo";
        v29[0] = v19;
        v22 = MEMORY[0x1E695DF20];
        v23 = v29;
        v24 = &v28;
LABEL_37:
        v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
        [(CUWACSession *)self _progress:30 info:v25];
      }
    }

    else if (self->_easyConfigPostConfigState == 1)
    {
      if (!v19)
      {
        self->_easyConfigPostConfigState = 4;
        [(CUWACSession *)self _run];
        goto LABEL_38;
      }

      self->_easyConfigPostConfigState = 3;
      v26 = @"eo";
      v27 = v19;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v27;
      v24 = &v26;
      goto LABEL_37;
    }

LABEL_38:

    goto LABEL_26;
  }

  if (v4 <= 59)
  {
    if (v4 == 40)
    {
      [(CUWACSession *)self _progress:120 info:v10];
      if (self->_easyConfigPreConfigState == 1)
      {
        self->_easyConfigPreConfigState = 4;
        [(CUWACSession *)self _run];
      }

      goto LABEL_26;
    }

    if (v4 == 50)
    {
      v11 = self;
      v12 = 150;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v4)
    {
      case '<':
        [(CUWACSession *)self _progress:170 info:v10];
        v11 = self;
        v12 = 180;
        goto LABEL_25;
      case 'F':
        v11 = self;
        v12 = 190;
        goto LABEL_25;
      case 'd':
        v11 = self;
        v12 = 200;
LABEL_25:
        [(CUWACSession *)v11 _progress:v12 info:v10];
        goto LABEL_26;
    }
  }

LABEL_27:
  v21 = self->_ucat;
  if (v21->var0 <= 30)
  {
    if (v21->var0 == -1)
    {
      if (!_LogCategory_Initialize(v21, 0x1Eu))
      {
        goto LABEL_26;
      }

      v21 = self->_ucat;
    }

    LogPrintF(v21, "[CUWACSession _runEasyConfigProgress:info:]", 0x1Eu, "EasyConfig unknown event %d %@\n", v6, v7, v8, v9, v4);
  }

LABEL_26:
}

- (void)_runEasyConfigPreConfigStart
{
  v48[1] = *MEMORY[0x1E69E9840];
  [(CUWACSession *)self _progress:60 info:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(CUWiFiDevice *)self->_wacDevice deviceIEDeviceID];
  if (v8)
  {
    v9 = getEasyConfigKey_DeviceID();
    [v3 setObject:v8 forKeyedSubscript:v9];

    v10 = [(CUWiFiDevice *)self->_wacDevice deviceIEFlags];
    v11 = vdupq_n_s32(v10);
    v12 = vshlq_u32(v11, xmmword_191FF9580);
    v12.i32[2] = vshlq_u32(v11, xmmword_191FF9590).i32[2];
    v13 = vandq_s8(v12, xmmword_191FF95A0);
    *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13.i32[0] | v13.i32[1] | (v10 >> 31)];
    v15 = getEasyConfigKey_Flags();
    [v3 setObject:v14 forKeyedSubscript:v15];

    v16 = self->_originalWiFiInfo;
    if (v16)
    {
      v17 = v16;
      v18 = [(NSDictionary *)self->_configuration mutableCopy];
      if (!v18)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v19 = [v17 objectForKeyedSubscript:@"password"];

      if (v19)
      {
        [v18 setObject:v19 forKeyedSubscript:@"wifiPSK"];
        goto LABEL_11;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 50)
      {
        if (ucat->var0 != -1)
        {
LABEL_9:
          LogPrintF(ucat, "[CUWACSession _runEasyConfigPreConfigStart]", 0x32u, "### No WiFI password to configure\n", v20, v21, v22, v23, v42);
          goto LABEL_11;
        }

        if (_LogCategory_Initialize(ucat, 0x32u))
        {
          ucat = self->_ucat;
          goto LABEL_9;
        }
      }

LABEL_11:
      TypeID = CFStringGetTypeID();
      v8 = CFDictionaryGetTypedValue(v17, @"ssid", TypeID, 0);

      if (v8)
      {
        [v18 setObject:v8 forKeyedSubscript:@"wifiSSID"];
      }

      else
      {
        v30 = self->_ucat;
        if (v30->var0 <= 50)
        {
          if (v30->var0 == -1)
          {
            if (!_LogCategory_Initialize(v30, 0x32u))
            {
              goto LABEL_17;
            }

            v30 = self->_ucat;
          }

          LogPrintF(v30, "[CUWACSession _runEasyConfigPreConfigStart]", 0x32u, "### No WiFI SSID to configure\n", v26, v27, v28, v29, v42);
        }
      }

LABEL_17:
      [(EasyConfigDevice *)self->_easyConfigDevice stop];
      v31 = [getEasyConfigDeviceClass[0]() deviceWithInfo:v3];
      easyConfigDevice = self->_easyConfigDevice;
      self->_easyConfigDevice = v31;

      [(EasyConfigDevice *)self->_easyConfigDevice setConfiguration:v18];
      [(EasyConfigDevice *)self->_easyConfigDevice setDispatchQueue:self->_dispatchQueue];
      [(EasyConfigDevice *)self->_easyConfigDevice setPausesAfterApply:1];
      [(EasyConfigDevice *)self->_easyConfigDevice setPreConfigMetrics:&self->_easyConfigPreConfigMetrics];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __44__CUWACSession__runEasyConfigPreConfigStart__block_invoke;
      v44[3] = &unk_1E73A4250;
      v44[4] = self;
      [(EasyConfigDevice *)self->_easyConfigDevice setProgressHandler:v44];
      if (self->_promptForSetupCodeHandler)
      {
        v33 = self->_easyConfigDevice;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __44__CUWACSession__runEasyConfigPreConfigStart__block_invoke_2;
        v43[3] = &unk_1E73A4278;
        v43[4] = self;
        [(EasyConfigDevice *)v33 setPromptForSetupCodeHandler:v43];
      }

      [(EasyConfigDevice *)self->_easyConfigDevice start];
      goto LABEL_20;
    }

    v34 = self->_ucat;
    if (v34->var0 <= 90)
    {
      if (v34->var0 == -1)
      {
        if (!_LogCategory_Initialize(v34, 0x5Au))
        {
          goto LABEL_31;
        }

        v34 = self->_ucat;
      }

      v35 = "### No current WiFi info to start EasyConfig\n";
LABEL_27:
      LogPrintF(v34, "[CUWACSession _runEasyConfigPreConfigStart]", 0x5Au, v35, v4, v5, v6, v7, v42);
    }
  }

  else
  {
    v34 = self->_ucat;
    if (v34->var0 <= 90)
    {
      if (v34->var0 == -1)
      {
        if (!_LogCategory_Initialize(v34, 0x5Au))
        {
          goto LABEL_31;
        }

        v34 = self->_ucat;
      }

      v35 = "### No deviceID start EasyConfig\n";
      goto LABEL_27;
    }
  }

LABEL_31:
  self->_easyConfigPreConfigState = 3;
  v47 = @"eo";
  v36 = MEMORY[0x1E696ABC0];
  v37 = *MEMORY[0x1E696A768];
  v45 = *MEMORY[0x1E696A578];
  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, -6705, 0, 0)}];
  v17 = v38;
  v39 = @"?";
  if (v38)
  {
    v39 = v38;
  }

  v46 = v39;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v40 = [v36 errorWithDomain:v37 code:-6705 userInfo:v18];
  v48[0] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [(CUWACSession *)self _progress:30 info:v41];

LABEL_20:
}

- (int)_runEasyConfigPreConfig
{
  easyConfigPreConfigState = self->_easyConfigPreConfigState;
  if (easyConfigPreConfigState != 4)
  {
    if (easyConfigPreConfigState)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            return self->_easyConfigPreConfigState;
          }

          ucat = self->_ucat;
          easyConfigPreConfigState = self->_easyConfigPreConfigState;
        }

        LogPrintF(ucat, "[CUWACSession _runEasyConfigPreConfig]", 0x1Eu, "EasyConfig PreConfig hasn't succeeded yet (%d)\n", v2, v3, v4, v5, easyConfigPreConfigState);
      }
    }

    else
    {
      self->_easyConfigPreConfigState = 1;
      [(CUWACSession *)self _runEasyConfigPreConfigStart];
    }
  }

  return self->_easyConfigPreConfigState;
}

- (void)_runJoinSoftAPFinished:(int)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  self->_easyConfigPreConfigMetrics.wifiJoinSWAPError = a3;
  if (a3)
  {
    v8 = *&a3;
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x3Cu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWACSession _runJoinSoftAPFinished:]", 0x3Cu, "### Join SoftAP start failed: %#m\n", v3, v4, v5, v6, v8);
    }

LABEL_9:
    self->_joinSoftAPState = 3;
    v21 = @"eo";
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A768];
    v12 = v8;
    v19 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v8, 0, 0)}];
    v14 = v13;
    v15 = @"?";
    if (v13)
    {
      v15 = v13;
    }

    v20 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v10 errorWithDomain:v11 code:v12 userInfo:v16];
    v22[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(CUWACSession *)self _progress:30 info:v18];

    return;
  }

  self->_easyConfigPreConfigMetrics.secondsToGetLinkUpOnSWAP = CFAbsoluteTimeGetCurrent() - self->_joinSoftAPStartTime;
  [(CUWACSession *)self _progress:50 info:0];
  self->_joinSoftAPState = 4;

  [(CUWACSession *)self _run];
}

- (void)_runJoinSoftAPStart
{
  v34[1] = *MEMORY[0x1E69E9840];
  [(CUWACSession *)self _progress:40 info:0];
  v7 = [(CUWiFiDevice *)self->_wacDevice rawScanResult];
  if (!v7)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_15;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUWACSession _runJoinSoftAPStart]", 0x5Au, "### No scan result to join SoftAP\n", v3, v4, v5, v6, v28);
    }

LABEL_15:
    LODWORD(v17) = -6705;
    goto LABEL_16;
  }

  self->_easyConfigPreConfigMetrics.rssiOfSWAP = [(CUWiFiDevice *)self->_wacDevice rssi];
  Value = CFDictionaryGetValue(v7, @"SNR");
  if (Value)
  {
    v30 = 0;
    LODWORD(Value) = CFGetInt64(Value, &v30);
  }

  self->_easyConfigPreConfigMetrics.snrOfSWAP = Value;
  v9 = CFDictionaryGetValue(v7, @"CHANNEL");
  if (v9)
  {
    v30 = 0;
    LODWORD(v9) = CFGetInt64(v9, &v30);
  }

  self->_easyConfigPreConfigMetrics.channelOfSWAP = v9;
  dispatchQueue = self->_dispatchQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __35__CUWACSession__runJoinSoftAPStart__block_invoke;
  v29[3] = &unk_1E73A4228;
  v29[4] = self;
  v11 = WiFiJoinNetwork_b(v7, dispatchQueue, v29);
  if (v11)
  {
    v17 = v11;
    v18 = self->_ucat;
    if (v18->var0 <= 60)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize(v18, 0x3Cu))
        {
          goto LABEL_16;
        }

        v18 = self->_ucat;
      }

      LogPrintF(v18, "[CUWACSession _runJoinSoftAPStart]", 0x3Cu, "### Join SoftAP start failed: %#m\n", v12, v13, v14, v15, v17);
    }

LABEL_16:
    self->_joinSoftAPState = 3;
    v33 = @"eo";
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v21 = v17;
    v31 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v17, 0, 0)}];
    v23 = v22;
    v24 = @"?";
    if (v22)
    {
      v24 = v22;
    }

    v32 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v26 = [v19 errorWithDomain:v20 code:v21 userInfo:v25];
    v34[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [(CUWACSession *)self _progress:30 info:v27];
  }
}

- (int)_runJoinSoftAP
{
  joinSoftAPState = self->_joinSoftAPState;
  if (joinSoftAPState != 4)
  {
    if (joinSoftAPState)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x1Eu))
          {
            return self->_joinSoftAPState;
          }

          ucat = self->_ucat;
          joinSoftAPState = self->_joinSoftAPState;
        }

        LogPrintF(ucat, "[CUWACSession _runJoinSoftAP]", 0x1Eu, "Join SoftAP hasn't succeeded yet (%d)\n", v2, v3, v4, v5, joinSoftAPState);
      }
    }

    else
    {
      self->_joinSoftAPState = 1;
      [(CUWACSession *)self _runJoinSoftAPStart];
    }
  }

  return self->_joinSoftAPState;
}

- (int)_runSaveOriginalWiFi
{
  v32[1] = *MEMORY[0x1E69E9840];
  result = self->_saveOriginalWiFiState;
  if (result)
  {
    return result;
  }

  v28 = 0;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUWACSession _runSaveOriginalWiFi]", 0x1Eu, "Saving off current WiFi info\n", v2, v3, v4, v5, v27);
  }

LABEL_6:
  v9 = WiFiCopyCurrentNetworkInfoEx(1, &v28);
  originalWiFiInfo = self->_originalWiFiInfo;
  self->_originalWiFiInfo = v9;

  v15 = v28;
  if (self->_originalWiFiInfo && !v28)
  {
    result = 4;
    self->_saveOriginalWiFiState = 4;
    return result;
  }

  v16 = self->_ucat;
  if (v16->var0 > 60)
  {
    goto LABEL_13;
  }

  if (v16->var0 == -1)
  {
    v17 = _LogCategory_Initialize(v16, 0x3Cu);
    v15 = v28;
    if (!v17)
    {
      goto LABEL_13;
    }

    v16 = self->_ucat;
  }

  LogPrintF(v16, "[CUWACSession _runSaveOriginalWiFi]", 0x3Cu, "### Saving off current WiFi info failed: %#m\n", v11, v12, v13, v14, v15);
  LODWORD(v15) = v28;
LABEL_13:
  self->_saveOriginalWiFiState = 3;
  if (!v15)
  {
    LODWORD(v15) = -6762;
    v28 = -6762;
  }

  v31 = @"eo";
  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A768];
  v20 = v15;
  v29 = *MEMORY[0x1E696A578];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v15, 0, 0)}];
  v22 = v21;
  v23 = @"?";
  if (v21)
  {
    v23 = v21;
  }

  v30 = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v25 = [v18 errorWithDomain:v19 code:v20 userInfo:v24];
  v32[0] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [(CUWACSession *)self _progress:30 info:v26];

  return self->_saveOriginalWiFiState;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && [(CUWACSession *)self _runSaveOriginalWiFi]== 4 && [(CUWACSession *)self _runJoinSoftAP]== 4 && [(CUWACSession *)self _runEasyConfigPreConfig]== 4 && [(CUWACSession *)self _runRestoreOriginalWiFi]== 4 && [(CUWACSession *)self _runEasyConfigPostConfig]== 4)
  {

    [(CUWACSession *)self _runFinish];
  }
}

- (void)trySetupCode:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__CUWACSession_trySetupCode___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_progress:(unsigned int)a3 info:(id)a4
{
  v4 = *&a3;
  v14 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_56;
      }

      ucat = self->_ucat;
    }

    if (v4 <= 99)
    {
      if (v4 > 49)
      {
        if (v4 <= 69)
        {
          if (v4 == 50)
          {
            v11 = "JoinedSoftAP";
            goto LABEL_55;
          }

          if (v4 == 60)
          {
            v11 = "PreConfigStart";
            goto LABEL_55;
          }
        }

        else
        {
          switch(v4)
          {
            case 'F':
              v11 = "SearchingPreConfig";
              goto LABEL_55;
            case 'P':
              v11 = "FoundPreConfig";
              goto LABEL_55;
            case 'Z':
              v11 = "Authenticating";
              goto LABEL_55;
          }
        }
      }

      else if (v4 <= 19)
      {
        if (!v4)
        {
          v11 = "Invalid";
          goto LABEL_55;
        }

        if (v4 == 10)
        {
          v11 = "Start";
          goto LABEL_55;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x14:
            v11 = "Final";
            goto LABEL_55;
          case 0x1E:
            v11 = "Error";
            goto LABEL_55;
          case 0x28:
            v11 = "JoiningSoftAP";
            goto LABEL_55;
        }
      }
    }

    else if (v4 <= 149)
    {
      if (v4 <= 119)
      {
        if (v4 == 100)
        {
          v11 = "Authenticated";
          goto LABEL_55;
        }

        if (v4 == 110)
        {
          v11 = "ApplyingConfig";
          goto LABEL_55;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x78:
            v11 = "AppliedConfig";
            goto LABEL_55;
          case 0x82:
            v11 = "RestoringOriginalWiFi";
            goto LABEL_55;
          case 0x8C:
            v11 = "RestoredOriginalWiFi";
            goto LABEL_55;
        }
      }
    }

    else if (v4 > 179)
    {
      switch(v4)
      {
        case 0xB4:
          v11 = "CheckingPostConfig";
          goto LABEL_55;
        case 0xBE:
          v11 = "CheckedPostConfig";
          goto LABEL_55;
        case 0xC8:
          v11 = "ConfigComplete";
          goto LABEL_55;
      }
    }

    else
    {
      switch(v4)
      {
        case 0x96:
          v11 = "SearchingPostConfig";
          goto LABEL_55;
        case 0xA0:
          v11 = "PostConfigStart";
          goto LABEL_55;
        case 0xAA:
          v11 = "FoundPostConfig";
LABEL_55:
          LogPrintF(ucat, "[CUWACSession _progress:info:]", 0x1Eu, "Progress: %s %@\n", v6, v7, v8, v9, v11);
          goto LABEL_56;
      }
    }

    v11 = "?";
    goto LABEL_55;
  }

LABEL_56:
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, v4, v14);
  }

  if (v4 == 20)
  {
    v13 = self->_progressHandler;
    self->_progressHandler = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUWACSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__CUWACSession_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 9))
  {
    return result;
  }

  v16 = v8;
  v11 = result;
  *(v10 + 9) = 1;
  v12 = *(result + 32);
  v13 = v12[2];
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(v13, 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = v12[2];
    }

    LogPrintF(v13, "[CUWACSession invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:
  [v12 _runFinish];
  v15 = *(v11 + 32);

  return [v15 _cleanup];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CUWACSession_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __24__CUWACSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUWACSession activate]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 16);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v9 + 8) = 1;
  *(*(a1 + 32) + 72) = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) _progress:10 info:0];
  v12 = *(a1 + 32);

  return [v12 _run];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA8B8;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)_cleanup
{
  originalWiFiInfo = self->_originalWiFiInfo;
  self->_originalWiFiInfo = 0;

  [(EasyConfigDevice *)self->_easyConfigDevice stop];
  easyConfigDevice = self->_easyConfigDevice;
  self->_easyConfigDevice = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  promptForSetupCodeHandler = self->_promptForSetupCodeHandler;
  self->_promptForSetupCodeHandler = 0;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    FatalErrorF("Dealloc without invalidate", a2, v2, v3, v4, v5, v6, v7, v10.receiver);
  }

  [(CUWACSession *)self _cleanup];
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v10.receiver = self;
  v10.super_class = CUWACSession;
  [(CUWACSession *)&v10 dealloc];
}

- (CUWACSession)init
{
  v4.receiver = self;
  v4.super_class = CUWACSession;
  v2 = [(CUWACSession *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUWACSession;
  }

  return v2;
}

@end