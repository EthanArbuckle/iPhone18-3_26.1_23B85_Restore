@interface CUWiFiManager
- (CUWiFiManager)init;
- (int)_wifiStateUncached;
- (unsigned)_wifiFlagsUncached;
- (void)_activateSafeInvokeBlock:(id)block;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateInfraDisabled;
- (void)_updateTrafficPeerStatusMonitor;
- (void)_updateTrafficPeerStatusUpdated:(id)updated isAvailable:(BOOL)available error:(id)error;
- (void)_updateTrafficPeers;
- (void)_updateTrafficPeersWithService:(unsigned int)service;
- (void)_updateWakeOnWireless;
- (void)_updateWiFiState;
- (void)_wifiEnsureStarted;
- (void)_wifiEnsureStopped;
- (void)_wifiHandleEvent:(id)event;
- (void)_wifiJoinNotification:(__WiFiNetwork *)notification status:(id)status reason:(id)reason;
- (void)_wifiStateChanged;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)performUpdate:(id)update;
- (void)setControlFlags:(unsigned int)flags;
- (void)setInfraDisabled:(BOOL)disabled;
- (void)setLabel:(id)label;
- (void)setTrafficPeers:(id)peers;
- (void)setWakeOnWirelessEnabled:(BOOL)enabled;
@end

@implementation CUWiFiManager

- (void)_wifiStateChanged
{
  v25 = *MEMORY[0x1E69E9840];
  _wifiFlagsUncached = [(CUWiFiManager *)self _wifiFlagsUncached];
  _wifiStateUncached = [(CUWiFiManager *)self _wifiStateUncached];
  if (__PAIR64__(_wifiStateUncached, _wifiFlagsUncached) == *&self->_wifiFlags)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 10)
    {
      return;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0xAu))
      {
        return;
      }

      ucat = self->_ucat;
    }

    if (_wifiStateUncached <= 19)
    {
      if (!_wifiStateUncached)
      {
        v6 = "Unknown";
        goto LABEL_48;
      }

      if (_wifiStateUncached == 10)
      {
        v6 = "Off";
        goto LABEL_48;
      }
    }

    else
    {
      switch(_wifiStateUncached)
      {
        case 20:
          v6 = "NotConnected";
          goto LABEL_48;
        case 30:
          v6 = "Connecting";
          goto LABEL_48;
        case 40:
          v6 = "Connected";
LABEL_48:
          v18 = CUPrintFlags(_wifiFlagsUncached, byte_191FFA1B8, 1);
          LogPrintF_safe(ucat, "[CUWiFiManager _wifiStateChanged]", 0xAu, "WiFi state unchanged: %s, flags=%@", v14, v15, v16, v17, v6);

          return;
      }
    }

    v6 = "?";
    goto LABEL_48;
  }

  v7 = logger_9879();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    wifiState = self->_wifiState;
    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v9 = "Unknown";
        goto LABEL_22;
      }

      if (wifiState == 10)
      {
        v9 = "Off";
        goto LABEL_22;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v9 = "NotConnected";
          goto LABEL_22;
        case 30:
          v9 = "Connecting";
          goto LABEL_22;
        case 40:
          v9 = "Connected";
          goto LABEL_22;
      }
    }

    v9 = "?";
LABEL_22:
    if (_wifiStateUncached <= 19)
    {
      if (!_wifiStateUncached)
      {
        v10 = "Unknown";
        goto LABEL_34;
      }

      if (_wifiStateUncached == 10)
      {
        v10 = "Off";
        goto LABEL_34;
      }
    }

    else
    {
      switch(_wifiStateUncached)
      {
        case 20:
          v10 = "NotConnected";
          goto LABEL_34;
        case 30:
          v10 = "Connecting";
          goto LABEL_34;
        case 40:
          v10 = "Connected";
LABEL_34:
          v11 = CUPrintFlags(_wifiFlagsUncached, byte_191FFA1B8, 1);
          *buf = 136315650;
          v20 = v9;
          v21 = 2080;
          v22 = v10;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_DEFAULT, "WiFi state changed: %s -> %s, flags=%@", buf, 0x20u);

          goto LABEL_35;
      }
    }

    v10 = "?";
    goto LABEL_34;
  }

LABEL_35:

  self->_wifiFlags = _wifiFlagsUncached;
  self->_wifiState = _wifiStateUncached;
  v12 = _Block_copy(self->_wifiStateChangedHandler);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
  }
}

- (int)_wifiStateUncached
{
  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    if (WiFiManagerClientGetPower())
    {
      if (self->_wifiDevice && (v4 = WiFiDeviceClientCopyCurrentNetwork()) != 0)
      {
        CFRelease(v4);
        LODWORD(wifiManager) = 40;
      }

      else
      {
        LODWORD(wifiManager) = 20;
      }
    }

    else
    {
      LODWORD(wifiManager) = 10;
    }
  }

  return wifiManager;
}

- (unsigned)_wifiFlagsUncached
{
  if (self->_wifiCriticalState)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (self->_wifiDevice)
  {
    v3 = WiFiDeviceClientCopyCurrentNetwork();
    if (v3)
    {
      v4 = v3;
      AuthFlags = WiFiNetworkGetAuthFlags();
      v6 = __rbit32(AuthFlags & 0xB) >> 27;
      if (!AuthFlags)
      {
        ++v6;
      }

      v2 |= v6;
      if (WiFiNetworkIsCaptive())
      {
        v2 |= 4u;
      }

      if (WiFiNetworkGetOperatingBand() == 2)
      {
        v2 |= 0x200u;
      }

      CFRelease(v4);
    }

    WiFiDeviceClientCopyHostedNetworks();
  }

  return v2;
}

- (void)_wifiJoinNotification:(__WiFiNetwork *)notification status:(id)status reason:(id)reason
{
  v30 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  reasonCopy = reason;
  _wifiFlagsUncached = [(CUWiFiManager *)self _wifiFlagsUncached];
  _wifiStateUncached = [(CUWiFiManager *)self _wifiStateUncached];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    v23 = CUPrintFlags(_wifiFlagsUncached, byte_191FFA1B8, 1);
    LogPrintF_safe(ucat, "[CUWiFiManager _wifiJoinNotification:status:reason:]", 0x1Eu, "WiFi Join notification: status=%@, state=%s, flags=%@, reason=%@", v12, v13, v14, v15, statusCopy);
  }

LABEL_6:
  v16 = 30;
  if (([statusCopy isEqual:*MEMORY[0x1E69B2018]] & 1) == 0)
  {
    if ([statusCopy isEqual:*MEMORY[0x1E69B2090]])
    {
      v16 = 30;
    }

    else
    {
      v16 = _wifiStateUncached;
    }
  }

  if (v16 != self->_wifiState || _wifiFlagsUncached != self->_wifiFlags)
  {
    v17 = logger_9879();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    wifiState = self->_wifiState;
    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v19 = "Unknown";
        goto LABEL_25;
      }

      if (wifiState == 10)
      {
        v19 = "Off";
        goto LABEL_25;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v19 = "NotConnected";
          goto LABEL_25;
        case 30:
          v19 = "Connecting";
          goto LABEL_25;
        case 40:
          v19 = "Connected";
          goto LABEL_25;
      }
    }

    v19 = "?";
LABEL_25:
    if (v16 <= 19)
    {
      if (!v16)
      {
        v20 = "Unknown";
        goto LABEL_37;
      }

      if (v16 == 10)
      {
        v20 = "Off";
        goto LABEL_37;
      }
    }

    else
    {
      switch(v16)
      {
        case 20:
          v20 = "NotConnected";
          goto LABEL_37;
        case 30:
          v20 = "Connecting";
          goto LABEL_37;
        case 40:
          v20 = "Connected";
LABEL_37:
          v21 = CUPrintFlags(_wifiFlagsUncached, byte_191FFA1B8, 1);
          *buf = 136315650;
          v25 = v19;
          v26 = 2080;
          v27 = v20;
          v28 = 2112;
          v29 = v21;
          _os_log_impl(&dword_191EAF000, v17, OS_LOG_TYPE_DEFAULT, "WiFi state changed: %s -> %s, flags=%@", buf, 0x20u);

LABEL_38:
          self->_wifiFlags = _wifiFlagsUncached;
          self->_wifiState = v16;
          wifiStateChangedHandler = self->_wifiStateChangedHandler;
          if (wifiStateChangedHandler)
          {
            wifiStateChangedHandler[2]();
          }

          goto LABEL_40;
      }
    }

    v20 = "?";
    goto LABEL_37;
  }

LABEL_40:
}

- (void)_wifiHandleEvent:(id)event
{
  eventCopy = event;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    v5 = eventCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      type = [v5 type];
      LogPrintF_safe(ucat, "[CUWiFiManager _wifiHandleEvent:]", 0x1Eu, "WiFi event:type=%ld", v7, v8, v9, v10, type);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      v5 = eventCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(CUWiFiManager *)self _update];
}

- (void)_wifiEnsureStopped
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_wifiDevice && [(NSArray *)self->_trafficPeersCurrent count])
  {
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_7;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
LABEL_7:
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = self->_trafficPeersCurrent;
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = *v34;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v34 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v16 |= [*(*(&v33 + 1) + 8 * i) trafficFlags];
            }

            v15 = [(NSArray *)v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v15);
        }

        else
        {
          v16 = 0;
        }

        trafficPeers = self->_trafficPeers;
        self->_trafficPeers = 0;

        if ((v16 & 0x100) != 0)
        {
          [(CUWiFiManager *)self _updateTrafficPeersWithService:256];
          if ((v16 & 0x400) == 0)
          {
LABEL_18:
            if ((v16 & 0x1000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_33;
          }
        }

        else if ((v16 & 0x400) == 0)
        {
          goto LABEL_18;
        }

        [(CUWiFiManager *)self _updateTrafficPeersWithService:1024];
        if ((v16 & 0x1000) == 0)
        {
LABEL_19:
          if ((v16 & 0x2000) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_34;
        }

LABEL_33:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:4096];
        if ((v16 & 0x2000) == 0)
        {
LABEL_20:
          if ((v16 & 0x8000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_35;
        }

LABEL_34:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x2000];
        if ((v16 & 0x8000) == 0)
        {
LABEL_21:
          if ((v16 & 0x200) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_36;
        }

LABEL_35:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x8000];
        if ((v16 & 0x200) == 0)
        {
LABEL_22:
          if ((v16 & 0x4000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_37;
        }

LABEL_36:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:512];
        if ((v16 & 0x4000) == 0)
        {
LABEL_23:
          if ((v16 & 0x10000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_38;
        }

LABEL_37:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x4000];
        if ((v16 & 0x10000) == 0)
        {
LABEL_24:
          if ((v16 & 0x40000) == 0)
          {
LABEL_26:
            trafficPeersCurrent = self->_trafficPeersCurrent;
            self->_trafficPeersCurrent = 0;

            goto LABEL_27;
          }

LABEL_25:
          [(CUWiFiManager *)self _updateTrafficPeersWithService:0x40000];
          goto LABEL_26;
        }

LABEL_38:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x10000];
        if ((v16 & 0x40000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      ucat = self->_ucat;
    }

    v8 = [(NSArray *)self->_trafficPeersCurrent count];
    LogPrintF(ucat, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "Traffic registration stop: %d peers\n", v9, v10, v11, v12, v8);
    goto LABEL_7;
  }

LABEL_27:
  if (!self->_wifiCriticalSetup)
  {
    goto LABEL_44;
  }

  v21 = self->_ucat;
  if (v21->var0 <= 30)
  {
    if (v21->var0 == -1)
    {
      if (!_LogCategory_Initialize(v21, 0x1Eu))
      {
        goto LABEL_41;
      }

      v21 = self->_ucat;
    }

    LogPrintF(v21, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "WiFiDeviceClient critical monitor stopped\n", v2, v3, v4, v5, v32);
  }

LABEL_41:
  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
  }

  *&self->_wifiCriticalSetup = 0;
LABEL_44:
  if (self->_wifiStateMonitorSetup)
  {
    if (self->_wifiDevice)
    {
      WiFiDeviceClientRegisterAutoJoinNotificationCallback();
      WiFiDeviceClientRegisterUserJoinNotificationCallback();
      WiFiDeviceClientRegisterBssidChangeCallback();
      WiFiDeviceClientRegisterHostApStateChangedCallback();
      WiFiDeviceClientRegisterPowerCallback();
    }

    self->_wifiStateMonitorSetup = 0;
    self->_wifiFlags = 0;
    self->_wifiState = 0;
    v22 = self->_ucat;
    if (v22->var0 <= 30)
    {
      if (v22->var0 == -1)
      {
        if (!_LogCategory_Initialize(v22, 0x1Eu))
        {
          goto LABEL_51;
        }

        v22 = self->_ucat;
      }

      LogPrintF(v22, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "WiFi state monitor stopped\n", v2, v3, v4, v5, v32);
    }
  }

LABEL_51:
  if (self->_wifiDeviceSetup)
  {
    WiFiDeviceClientRegisterRemovalCallback();
    wifiDevice = self->_wifiDevice;
    if (wifiDevice)
    {
      CFRelease(wifiDevice);
    }

    self->_wifiDevice = 0;
    self->_wifiDeviceSetup = 0;
    v24 = self->_ucat;
    if (v24->var0 <= 30)
    {
      if (v24->var0 != -1)
      {
LABEL_56:
        LogPrintF(v24, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "WiFiDeviceClient stopped\n", v2, v3, v4, v5, v32);
        goto LABEL_58;
      }

      if (_LogCategory_Initialize(v24, 0x1Eu))
      {
        v24 = self->_ucat;
        goto LABEL_56;
      }
    }
  }

LABEL_58:
  self->_wifiAutoJoinDisabled = 0;
  wifiNetworkDisabled = self->_wifiNetworkDisabled;
  if (wifiNetworkDisabled)
  {
    CFRelease(wifiNetworkDisabled);
    self->_wifiNetworkDisabled = 0;
  }

  self->_wifiManagerSetup = 0;
  if (self->_wifiManager)
  {
    WiFiManagerClientRegisterDeviceAttachmentCallback();
    WiFiManagerClientRegisterServerRestartCallback();
    CFRunLoopGetMain();
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
    v26 = self->_ucat;
    if (v26->var0 <= 30)
    {
      if (v26->var0 != -1)
      {
LABEL_63:
        LogPrintF(v26, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "WiFiManagerClient stopped\n", v2, v3, v4, v5, v32);
        goto LABEL_65;
      }

      if (_LogCategory_Initialize(v26, 0x1Eu))
      {
        v26 = self->_ucat;
        goto LABEL_63;
      }
    }
  }

LABEL_65:
  if (self->_wifiRetrier)
  {
    v27 = self->_ucat;
    if (v27->var0 <= 30)
    {
      if (v27->var0 == -1)
      {
        if (!_LogCategory_Initialize(v27, 0x1Eu))
        {
          goto LABEL_70;
        }

        v27 = self->_ucat;
      }

      LogPrintF(v27, "[CUWiFiManager _wifiEnsureStopped]", 0x1Eu, "WiFi monitoring stopped\n", v2, v3, v4, v5, v32);
    }

LABEL_70:
    [(CURetrier *)self->_wifiRetrier invalidateDirect];
    wifiRetrier = self->_wifiRetrier;
    self->_wifiRetrier = 0;
  }

  [(WiFiP2PAWDLStateMonitor *)self->_wifiP2PStateMonitor endMonitoring];
  wifiP2PStateMonitor = self->_wifiP2PStateMonitor;
  self->_wifiP2PStateMonitor = 0;

  wifiP2PStateServices = self->_wifiP2PStateServices;
  self->_wifiP2PStateServices = 0;

  [(CWFInterface *)self->_wifiInterface invalidate];
  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = 0;
}

- (void)_wifiEnsureStarted
{
  if (!self->_wifiRetrier)
  {
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

      LogPrintF(ucat, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFi start monitoring\n", v2, v3, v4, v5, v44);
    }

LABEL_6:
    v8 = objc_alloc_init(CURetrier);
    wifiRetrier = self->_wifiRetrier;
    self->_wifiRetrier = v8;

    [(CURetrier *)self->_wifiRetrier setDispatchQueue:self->_dispatchQueue];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __35__CUWiFiManager__wifiEnsureStarted__block_invoke;
    v48[3] = &unk_1E73A4F68;
    v48[4] = self;
    [(CURetrier *)self->_wifiRetrier setActionHandler:v48];
    [(CURetrier *)self->_wifiRetrier setStartTime:CFAbsoluteTimeGetCurrent()];
  }

  if (self->_wifiManager)
  {
    goto LABEL_14;
  }

  v10 = WiFiManagerClientCreate();
  self->_wifiManager = v10;
  if (v10)
  {
    goto LABEL_14;
  }

  v11 = self->_ucat;
  if (v11->var0 <= 60)
  {
    if (v11->var0 != -1)
    {
LABEL_11:
      LogPrintF(v11, "[CUWiFiManager _wifiEnsureStarted]", 0x3Cu, "### WiFiManagerClientCreate failed\n", v2, v3, v4, v5, v44);
      goto LABEL_13;
    }

    if (_LogCategory_Initialize(v11, 0x3Cu))
    {
      v11 = self->_ucat;
      goto LABEL_11;
    }
  }

LABEL_13:
  if (!self->_wifiManager)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (self->_wifiDevice)
  {
    goto LABEL_24;
  }

  v12 = WiFiManagerClientCopyDevices();
  v13 = v12;
  if (!v12 || CFArrayGetCount(v12) < 1)
  {
    v15 = self->_ucat;
    if (v15->var0 > 60)
    {
      goto LABEL_22;
    }

    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x3Cu))
      {
LABEL_22:
        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v15 = self->_ucat;
    }

    LogPrintF(v15, "[CUWiFiManager _wifiEnsureStarted]", 0x3Cu, "### WiFiManagerClientCopyDevices failed: %@\n", v2, v3, v4, v5, v13);
    goto LABEL_22;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
  self->_wifiDevice = ValueAtIndex;
  CFRetain(ValueAtIndex);
LABEL_23:
  CFRelease(v13);
LABEL_24:
  if ((self->_controlFlags & 0x100) != 0)
  {
    if (!self->_wifiDevice || self->_wifiCriticalSetup)
    {
      goto LABEL_40;
    }

    v17 = self->_ucat;
    if (v17->var0 <= 30)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize(v17, 0x1Eu))
        {
          goto LABEL_39;
        }

        v17 = self->_ucat;
      }

      LogPrintF(v17, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFiDeviceClient critical monitor started\n", v2, v3, v4, v5, v44);
    }

LABEL_39:
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    self->_wifiCriticalSetup = 1;
    goto LABEL_40;
  }

  if (!self->_wifiCriticalSetup)
  {
    goto LABEL_40;
  }

  v16 = self->_ucat;
  if (v16->var0 > 30)
  {
    goto LABEL_35;
  }

  if (v16->var0 == -1)
  {
    if (!_LogCategory_Initialize(v16, 0x1Eu))
    {
      goto LABEL_35;
    }

    v16 = self->_ucat;
  }

  LogPrintF(v16, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFiDeviceClient critical monitor stopped\n", v2, v3, v4, v5, v44);
LABEL_35:
  if (self->_wifiDevice)
  {
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
  }

  *&self->_wifiCriticalSetup = 0;
LABEL_40:
  if (self->_wifiManager)
  {
    if (!self->_wifiManagerSetup)
    {
      CFRunLoopGetMain();
      WiFiManagerClientScheduleWithRunLoop();
      WiFiManagerClientRegisterDeviceAttachmentCallback();
      WiFiManagerClientRegisterServerRestartCallback();
      self->_wifiManagerSetup = 1;
      v22 = self->_ucat;
      if (v22->var0 <= 30)
      {
        if (v22->var0 == -1)
        {
          if (!_LogCategory_Initialize(v22, 0x1Eu))
          {
            goto LABEL_46;
          }

          v22 = self->_ucat;
        }

        LogPrintF(v22, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFiManagerClient started\n", v18, v19, v20, v21, v44);
      }
    }
  }

LABEL_46:
  if (self->_wifiDevice)
  {
    if (!self->_wifiDeviceSetup)
    {
      WiFiDeviceClientRegisterRemovalCallback();
      self->_wifiDeviceSetup = 1;
      v27 = self->_ucat;
      if (v27->var0 <= 30)
      {
        if (v27->var0 != -1)
        {
LABEL_50:
          LogPrintF(v27, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFiDeviceClient started\n", v23, v24, v25, v26, v44);
          goto LABEL_52;
        }

        if (_LogCategory_Initialize(v27, 0x1Eu))
        {
          v27 = self->_ucat;
          goto LABEL_50;
        }
      }
    }
  }

LABEL_52:
  wifiStateChangedHandler = self->_wifiStateChangedHandler;
  if (!self->_wifiDeviceSetup)
  {
    if (wifiStateChangedHandler)
    {
      goto LABEL_80;
    }

LABEL_63:
    if (!self->_wifiStateMonitorSetup)
    {
      goto LABEL_80;
    }

    WiFiDeviceClientRegisterAutoJoinNotificationCallback();
    WiFiDeviceClientRegisterUserJoinNotificationCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterHostApStateChangedCallback();
    WiFiDeviceClientRegisterPowerCallback();
    [(CWFInterface *)self->_wifiInterface invalidate];
    wifiInterface = self->_wifiInterface;
    self->_wifiInterface = 0;

    self->_wifiStateMonitorSetup = 0;
    self->_wifiState = 0;
    v43 = self->_ucat;
    if (v43->var0 > 30)
    {
      goto LABEL_80;
    }

    if (v43->var0 == -1)
    {
      if (!_LogCategory_Initialize(v43, 0x1Eu))
      {
        goto LABEL_80;
      }

      v43 = self->_ucat;
    }

    LogPrintF(v43, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFi state monitor stopped\n", v39, v40, v41, v42, v44);
    goto LABEL_80;
  }

  if (!wifiStateChangedHandler)
  {
    goto LABEL_63;
  }

  if (self->_wifiStateMonitorSetup)
  {
    goto LABEL_80;
  }

  WiFiDeviceClientRegisterAutoJoinNotificationCallback();
  WiFiDeviceClientRegisterUserJoinNotificationCallback();
  WiFiDeviceClientRegisterBssidChangeCallback();
  WiFiDeviceClientRegisterHostApStateChangedCallback();
  WiFiDeviceClientRegisterPowerCallback();
  v29 = objc_alloc_init(getCWFInterfaceClass[0]());
  v30 = self->_wifiInterface;
  self->_wifiInterface = v29;

  [(CWFInterface *)self->_wifiInterface setTargetQueue:self->_dispatchQueue];
  [(CWFInterface *)self->_wifiInterface activate];
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __35__CUWiFiManager__wifiEnsureStarted__block_invoke_2;
  v45[3] = &unk_1E73A4318;
  objc_copyWeak(&v46, &location);
  [(CWFInterface *)self->_wifiInterface setEventHandler:v45];
  [(CWFInterface *)self->_wifiInterface startMonitoringEventType:12 error:0];
  [(CWFInterface *)self->_wifiInterface startMonitoringEventType:13 error:0];
  [(CWFInterface *)self->_wifiInterface startMonitoringEventType:2 error:0];
  self->_wifiStateMonitorSetup = 1;
  self->_wifiFlags = [(CUWiFiManager *)self _wifiFlagsUncached];
  wifiState = [(CUWiFiManager *)self _wifiStateUncached];
  self->_wifiState = wifiState;
  v36 = self->_ucat;
  if (v36->var0 > 30)
  {
    goto LABEL_79;
  }

  if (v36->var0 != -1)
  {
LABEL_57:
    if (wifiState <= 19)
    {
      if (!wifiState)
      {
        v37 = "Unknown";
        goto LABEL_78;
      }

      if (wifiState == 10)
      {
        v37 = "Off";
        goto LABEL_78;
      }
    }

    else
    {
      switch(wifiState)
      {
        case 20:
          v37 = "NotConnected";
          goto LABEL_78;
        case 30:
          v37 = "Connecting";
          goto LABEL_78;
        case 40:
          v37 = "Connected";
LABEL_78:
          LogPrintF(v36, "[CUWiFiManager _wifiEnsureStarted]", 0x1Eu, "WiFi state monitor started, %s, %#{flags}\n", v31, v32, v33, v34, v37);
          goto LABEL_79;
      }
    }

    v37 = "?";
    goto LABEL_78;
  }

  if (_LogCategory_Initialize(v36, 0x1Eu))
  {
    v36 = self->_ucat;
    wifiState = self->_wifiState;
    goto LABEL_57;
  }

LABEL_79:
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
LABEL_80:
  if (!self->_wifiDeviceSetup)
  {
    [(CURetrier *)self->_wifiRetrier failed];
  }
}

void __35__CUWiFiManager__wifiEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _wifiHandleEvent:v3];
}

- (void)_updateWiFiState
{
  wifiFlags = self->_wifiFlags;
  lastTrafficRegistrationErrorCode = self->_lastTrafficRegistrationErrorCode;
  v9 = self->_degradeOnAnyTrafficUnavailable && self->_trafficFlagsUnavailable != 0;
  self->_trafficPeerDegraded = v9;
  if ((lastTrafficRegistrationErrorCode == 100 || lastTrafficRegistrationErrorCode == 0) && !v9)
  {
    v12 = wifiFlags & 0xFFFFFFBF;
  }

  else
  {
    v12 = wifiFlags | 0x40;
  }

  v13 = v12 & 0xFFFFFF7F | ((lastTrafficRegistrationErrorCode == 100) << 7);
  if (v13 == wifiFlags)
  {
    return;
  }

  self->_wifiFlags = v13;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_18;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUWiFiManager _updateWiFiState]", 0x1Eu, "Flags changed: %#{flags} -> %#{flags}\n", v2, v3, v4, v5, wifiFlags);
  }

LABEL_18:
  v15 = _Block_copy(self->_wifiStateChangedHandler);
  if (v15)
  {
    v16 = v15;
    v15[2]();
    v15 = v16;
  }
}

- (void)_updateWakeOnWireless
{
  if (self->_wifiManager && self->_wakeOnWirelessEnabledChanged)
  {
    wakeOnWirelessEnabled = self->_wakeOnWirelessEnabled;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        if (wakeOnWirelessEnabled)
        {
          v9 = "no";
        }

        else
        {
          v9 = "yes";
        }

        LogPrintF(ucat, "[CUWiFiManager _updateWakeOnWireless]", 0x1Eu, "WakeOnWireless: %s -> %s\n", v2, v3, v4, v5, v9);
        goto LABEL_10;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }

LABEL_10:
    WiFiManagerClientSetWoWState();
    self->_wakeOnWirelessEnabledChanged = 0;
  }
}

- (void)_updateTrafficPeerStatusUpdated:(id)updated isAvailable:(BOOL)available error:(id)error
{
  availableCopy = available;
  updatedCopy = updated;
  errorCopy = error;
  v10 = getAWDLTrafficRegistrationServiceAirPlay();
  v71 = updatedCopy;
  v11 = v10;
  if (v11 == v71)
  {

    goto LABEL_6;
  }

  if ((v71 != 0) == (v11 == 0))
  {

    goto LABEL_8;
  }

  v12 = [v71 isEqual:v11];

  if (v12)
  {
LABEL_6:
    v20 = 256;
    goto LABEL_65;
  }

LABEL_8:
  v21 = getAWDLTrafficRegistrationServiceSidecar();
  v22 = v71;
  v23 = v21;
  v24 = v23;
  if (v23 == v22)
  {

    goto LABEL_13;
  }

  if ((v71 != 0) == (v23 == 0))
  {

    goto LABEL_15;
  }

  v25 = [v22 isEqual:v23];

  if (v25)
  {
LABEL_13:
    v20 = 512;
    goto LABEL_65;
  }

LABEL_15:
  v26 = getAWDLTrafficRegistrationServiceDeviceToDeviceMigration();
  v27 = v22;
  v28 = v26;
  v29 = v28;
  if (v28 == v27)
  {

    goto LABEL_20;
  }

  if ((v71 != 0) == (v28 == 0))
  {

    goto LABEL_22;
  }

  v30 = [v27 isEqual:v28];

  if (v30)
  {
LABEL_20:
    v20 = 1024;
    goto LABEL_65;
  }

LABEL_22:
  v31 = getAWDLTrafficRegistrationServiceUniversalControl();
  v32 = v27;
  v33 = v31;
  v34 = v33;
  if (v33 == v32)
  {

    goto LABEL_27;
  }

  if ((v71 != 0) == (v33 == 0))
  {

    goto LABEL_29;
  }

  v35 = [v32 isEqual:v33];

  if (v35)
  {
LABEL_27:
    v20 = 4096;
    goto LABEL_65;
  }

LABEL_29:
  v36 = getAWDLTrafficRegistrationServiceMPRemoteCamera();
  v37 = v32;
  v38 = v36;
  v39 = v38;
  if (v38 == v37)
  {

    goto LABEL_34;
  }

  if ((v71 != 0) == (v38 == 0))
  {

    goto LABEL_36;
  }

  v40 = [v37 isEqual:v38];

  if (v40)
  {
LABEL_34:
    v20 = 0x2000;
    goto LABEL_65;
  }

LABEL_36:
  v41 = getAWDLTrafficRegistrationServiceRemoteCamera();
  v42 = v37;
  v43 = v41;
  v44 = v43;
  if (v43 == v42)
  {

    goto LABEL_41;
  }

  if ((v71 != 0) == (v43 == 0))
  {

    goto LABEL_43;
  }

  v45 = [v42 isEqual:v43];

  if (v45)
  {
LABEL_41:
    v20 = 0x4000;
    goto LABEL_65;
  }

LABEL_43:
  v46 = getAWDLTrafficRegistrationServiceTVRemoteCamera();
  v47 = v42;
  v48 = v46;
  v49 = v48;
  if (v48 == v47)
  {

    goto LABEL_48;
  }

  if ((v71 != 0) == (v48 == 0))
  {

    goto LABEL_50;
  }

  v50 = [v47 isEqual:v48];

  if (v50)
  {
LABEL_48:
    v20 = 0x8000;
    goto LABEL_65;
  }

LABEL_50:
  v51 = getAWDLTrafficRegistrationServiceRemoteScreen();
  v52 = v47;
  v53 = v51;
  v54 = v53;
  if (v53 == v52)
  {

    goto LABEL_55;
  }

  if ((v71 != 0) == (v53 == 0))
  {

    goto LABEL_57;
  }

  v55 = [v52 isEqual:v53];

  if (v55)
  {
LABEL_55:
    v20 = 0x10000;
    goto LABEL_65;
  }

LABEL_57:
  v56 = getAWDLTrafficRegistrationServiceMacVirtualDisplay();
  v57 = v52;
  v58 = v56;
  v59 = v58;
  if (v58 == v57)
  {

    goto LABEL_62;
  }

  if ((v71 != 0) != (v58 == 0))
  {
    v60 = [v57 isEqual:v58];

    if (!v60)
    {
      goto LABEL_64;
    }

LABEL_62:
    v20 = 0x40000;
    goto LABEL_65;
  }

LABEL_64:
  v20 = 0;
LABEL_65:
  trafficFlagsUnavailable = self->_trafficFlagsUnavailable;
  v62 = trafficFlagsUnavailable | v20;
  v63 = trafficFlagsUnavailable & ~v20;
  if (!availableCopy)
  {
    v63 = v62;
  }

  self->_trafficFlagsUnavailable = v63;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_69:
      v70 = NSPrintF("%{error}", v13, v14, v15, v16, v17, v18, v19, errorCopy);
      LogPrintF(ucat, "[CUWiFiManager _updateTrafficPeerStatusUpdated:isAvailable:error:]", 0x1Eu, "P2P state monitor update: service=%@, isAvailable=%s, error=%@, trafficFlags=0x%X", v65, v66, v67, v68, v71);

      goto LABEL_71;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_69;
    }
  }

LABEL_71:
  if (self->_trafficFlagsUnavailable != trafficFlagsUnavailable)
  {
    trafficFlagsUnavailableUpdatedHandler = self->_trafficFlagsUnavailableUpdatedHandler;
    if (trafficFlagsUnavailableUpdatedHandler)
    {
      trafficFlagsUnavailableUpdatedHandler[2]();
    }

    [(CUWiFiManager *)self _updateWiFiState];
  }
}

- (void)_updateTrafficPeerStatusMonitor
{
  v88 = *MEMORY[0x1E69E9840];
  if (self->_trafficFlagsUnavailableUpdatedHandler || self->_degradeOnAnyTrafficUnavailable)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v2 = self->_trafficPeersCurrent;
    v3 = 0;
    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v82 objects:v87 count:16];
    if (v4)
    {
      v5 = *v83;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v83 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v82 + 1) + 8 * i);
          if (!v3)
          {
            v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          trafficFlags = [v7 trafficFlags];
          if ((trafficFlags & 0x100) != 0)
          {
            v9 = getAWDLTrafficRegistrationServiceAirPlay();
            v10 = v9;
            if (v9)
            {
              v11 = v9;
            }

            else
            {
              v11 = &stru_1F068B090;
            }

            [v3 addObject:v11];
          }

          if ((trafficFlags & 0x200) != 0)
          {
            v12 = getAWDLTrafficRegistrationServiceSidecar();
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = &stru_1F068B090;
            }

            [v3 addObject:v14];
          }

          if ((trafficFlags & 0x400) != 0)
          {
            v15 = getAWDLTrafficRegistrationServiceDeviceToDeviceMigration();
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = &stru_1F068B090;
            }

            [v3 addObject:v17];
          }

          if ((trafficFlags & 0x1000) != 0)
          {
            v18 = getAWDLTrafficRegistrationServiceUniversalControl();
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v20 = &stru_1F068B090;
            }

            [v3 addObject:v20];
          }

          if ((trafficFlags & 0x2000) != 0)
          {
            v21 = getAWDLTrafficRegistrationServiceMPRemoteCamera();
            v22 = v21;
            if (v21)
            {
              v23 = v21;
            }

            else
            {
              v23 = &stru_1F068B090;
            }

            [v3 addObject:v23];
          }

          if ((trafficFlags & 0x4000) != 0)
          {
            v24 = getAWDLTrafficRegistrationServiceRemoteCamera();
            v25 = v24;
            if (v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = &stru_1F068B090;
            }

            [v3 addObject:v26];
          }

          if ((trafficFlags & 0x8000) != 0)
          {
            v27 = getAWDLTrafficRegistrationServiceTVRemoteCamera();
            v28 = v27;
            if (v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = &stru_1F068B090;
            }

            [v3 addObject:v29];
          }

          if ((trafficFlags & 0x10000) != 0)
          {
            v30 = getAWDLTrafficRegistrationServiceRemoteScreen();
            v31 = v30;
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = &stru_1F068B090;
            }

            [v3 addObject:v32];
          }

          if ((trafficFlags & 0x40000) != 0)
          {
            v33 = getAWDLTrafficRegistrationServiceMacVirtualDisplay();
            v34 = v33;
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              v35 = &stru_1F068B090;
            }

            [v3 addObject:v35];
          }
        }

        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v82 objects:v87 count:16];
      }

      while (v4);
    }

    if ([v3 count])
    {
      wifiP2PStateServices = self->_wifiP2PStateServices;
      v41 = v3;
      v42 = wifiP2PStateServices;
      v43 = v42;
      if (v41 != v42)
      {
        if ((v41 != 0) != (v42 == 0))
        {
          v44 = [(NSSet *)v41 isEqual:v42];

          selfCopy7 = self;
          if (v44)
          {
            goto LABEL_86;
          }
        }

        else
        {

          selfCopy7 = self;
        }

        ucat = selfCopy7->_ucat;
        if (ucat->var0 > 30)
        {
          goto LABEL_72;
        }

        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(selfCopy7->_ucat, 0x1Eu))
          {
            goto LABEL_72;
          }

          ucat = self->_ucat;
        }

        v55 = NSPrintF("%##@", v45, v46, v47, v48, v49, v50, v51, v41);
        LogPrintF(ucat, "[CUWiFiManager _updateTrafficPeerStatusMonitor]", 0x1Eu, "P2P state monitor start: services=%@", v56, v57, v58, v59, v55);

LABEL_72:
        objc_storeStrong(&self->_wifiP2PStateServices, v3);
        [(WiFiP2PAWDLStateMonitor *)self->_wifiP2PStateMonitor endMonitoring];
        wifiP2PStateMonitor = self->_wifiP2PStateMonitor;
        self->_wifiP2PStateMonitor = 0;

        v61 = objc_alloc_init(getWiFiP2PAWDLStateMonitorClass[0]());
        v62 = self->_wifiP2PStateMonitor;
        self->_wifiP2PStateMonitor = v61;

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v63 = v41;
        v64 = [(NSSet *)v63 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v64)
        {
          v65 = *v79;
          do
          {
            for (j = 0; j != v64; ++j)
            {
              if (*v79 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v67 = *(*(&v78 + 1) + 8 * j);
              if ([v67 length])
              {
                [(WiFiP2PAWDLStateMonitor *)self->_wifiP2PStateMonitor registerAvailabilityUpdatesForService:v67];
              }
            }

            v64 = [(NSSet *)v63 countByEnumeratingWithState:&v78 objects:v86 count:16];
          }

          while (v64);
        }

        objc_initWeak(&location, self);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __48__CUWiFiManager__updateTrafficPeerStatusMonitor__block_invoke;
        v75[3] = &unk_1E73A42F0;
        objc_copyWeak(&v76, &location);
        [(WiFiP2PAWDLStateMonitor *)self->_wifiP2PStateMonitor setServiceAvailabilityUpdatedHandler:v75];
        [(WiFiP2PAWDLStateMonitor *)self->_wifiP2PStateMonitor beginMonitoring];
        objc_destroyWeak(&v76);
        objc_destroyWeak(&location);
        goto LABEL_85;
      }

LABEL_85:
      selfCopy7 = self;
      goto LABEL_86;
    }

    selfCopy7 = self;
    if (!self->_wifiP2PStateMonitor)
    {
LABEL_86:
      [(CUWiFiManager *)selfCopy7 _updateWiFiState];

      return;
    }

    v53 = self->_ucat;
    if (v53->var0 <= 30)
    {
      if (v53->var0 != -1)
      {
LABEL_65:
        LogPrintF(v53, "[CUWiFiManager _updateTrafficPeerStatusMonitor]", 0x1Eu, "P2P state monitor stop", v36, v37, v38, v39, v73);
        selfCopy7 = self;
        goto LABEL_83;
      }

      v68 = _LogCategory_Initialize(v53, 0x1Eu);
      selfCopy7 = self;
      if (v68)
      {
        v53 = self->_ucat;
        goto LABEL_65;
      }
    }

LABEL_83:
    p_wifiP2PStateMonitor = &selfCopy7->_wifiP2PStateMonitor;
    [(WiFiP2PAWDLStateMonitor *)selfCopy7->_wifiP2PStateMonitor endMonitoring];
    v70 = *p_wifiP2PStateMonitor;
    *p_wifiP2PStateMonitor = 0;

    v71 = self->_wifiP2PStateServices;
    self->_wifiP2PStateServices = 0;

    selfCopy7 = self;
    self->_trafficFlagsUnavailable = 0;
    trafficFlagsUnavailableUpdatedHandler = self->_trafficFlagsUnavailableUpdatedHandler;
    if (trafficFlagsUnavailableUpdatedHandler)
    {
      trafficFlagsUnavailableUpdatedHandler[2]();
      goto LABEL_85;
    }

    goto LABEL_86;
  }
}

void __48__CUWiFiManager__updateTrafficPeerStatusMonitor__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTrafficPeerStatusUpdated:v8 isAvailable:a3 error:v7];
}

- (void)_updateTrafficPeersWithService:(unsigned int)service
{
  v3 = *&service;
  v90 = *MEMORY[0x1E69E9840];
  v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ((v3 & 0x100) != 0)
  {
    v10 = @"airplay";
    goto LABEL_22;
  }

  if ((v3 & 0x400) != 0)
  {
    v10 = @"D2DMigration";
    goto LABEL_22;
  }

  if ((v3 & 0x1000) != 0)
  {
    v10 = @"ensemble";
    goto LABEL_22;
  }

  if ((v3 & 0x2000) != 0)
  {
    v10 = @"MPRemoteCamera";
    goto LABEL_22;
  }

  if ((v3 & 0x8000) != 0)
  {
    v10 = @"TVRemoteCamera";
    goto LABEL_22;
  }

  if ((v3 & 0x200) != 0)
  {
    v10 = @"sidecar";
    goto LABEL_22;
  }

  if ((v3 & 0x4000) != 0)
  {
    v10 = @"RemoteCamera";
    goto LABEL_22;
  }

  if ((v3 & 0x10000) != 0)
  {
    v10 = @"RemoteScreen";
    goto LABEL_22;
  }

  if ((v3 & 0x40000) != 0)
  {
    v10 = @"MacVirtualDisplay";
LABEL_22:
    v62 = v10;
    [v65 setObject:? forKeyedSubscript:?];
    selfCopy = self;
    v11 = self->_trafficPeers;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v78 objects:v89 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v79;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v79 != v15)
          {
            objc_enumerationMutation(v11);
          }

          trafficFlags = [*(*(&v78 + 1) + 8 * i) trafficFlags];
          if ((trafficFlags & v3) != 0)
          {
            if ((trafficFlags & 4) != 0)
            {
              v18 = 9;
            }

            else
            {
              v18 = 1;
            }

            v14 = v18 & 0xFFFFFFF9 | (2 * (trafficFlags & 3)) | v14;
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v78 objects:v89 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v14];
    [v65 setObject:v19 forKeyedSubscript:@"TR_SESSION_FLAGS"];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v20 = v11;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v74 objects:v88 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v75;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v75 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v74 + 1) + 8 * j);
          if (([v25 trafficFlags] & 0x43200) != 0)
          {
            sessionID = [v25 sessionID];
            if (sessionID)
            {
              [v65 setObject:sessionID forKeyedSubscript:@"TR_SIDECAR_SESSION_UUID"];
            }
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v74 objects:v88 count:16];
      }

      while (v22);
    }

    v63 = v20;

    if (v14)
    {
      v27 = MEMORY[0x1E695E118];
    }

    else
    {
      v27 = MEMORY[0x1E695E110];
    }

    [v65 setObject:v27 forKeyedSubscript:@"TR_ACTIVE"];
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v29 = selfCopy->_trafficPeersCurrent;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v70 objects:v87 count:16];
    v31 = @"TR_IFNAME";
    v32 = @"awdl0";
    if (v30)
    {
      v33 = v30;
      v34 = *v71;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v71 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v70 + 1) + 8 * k);
          if (([v36 trafficFlags] & v3) != 0)
          {
            peerMACAddressData = [v36 peerMACAddressData];
            v38 = peerMACAddressData;
            if (peerMACAddressData)
            {
              v85[0] = v31;
              v85[1] = @"TR_PEER_ADDRESS";
              v86[0] = v32;
              v86[1] = peerMACAddressData;
              [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
              v39 = v32;
              v41 = v40 = v31;
              [v28 addObject:v41];

              v31 = v40;
              v32 = v39;
            }
          }
        }

        v33 = [(NSArray *)v29 countByEnumeratingWithState:&v70 objects:v87 count:16];
      }

      while (v33);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v42 = v63;
    v43 = [(NSArray *)v42 countByEnumeratingWithState:&v66 objects:v84 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v67;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v67 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v66 + 1) + 8 * m);
          if (([v47 trafficFlags] & v3) != 0)
          {
            peerMACAddressData2 = [v47 peerMACAddressData];
            v49 = peerMACAddressData2;
            if (peerMACAddressData2)
            {
              v82[0] = v31;
              v82[1] = @"TR_PEER_ADDRESS";
              v83[0] = v32;
              v83[1] = peerMACAddressData2;
              v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
              [v28 addObject:v50];
            }
          }
        }

        v44 = [(NSArray *)v42 countByEnumeratingWithState:&v66 objects:v84 count:16];
      }

      while (v44);
    }

    [v65 setObject:v28 forKeyedSubscript:@"TR_PEER_CONTEXTS"];
    v55 = WiFiDeviceClientTrafficRegistration();
    ucat = selfCopy->_ucat;
    var0 = ucat->var0;
    if (v55)
    {
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize(selfCopy->_ucat, 0x5Au))
          {
            goto LABEL_82;
          }

          ucat = selfCopy->_ucat;
        }

        LogPrintF(ucat, "[CUWiFiManager _updateTrafficPeersWithService:]", 0x5Au, "### Traffic register failed: '%@', %#m\n", v51, v52, v53, v54, v62);
      }
    }

    else if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(selfCopy->_ucat, 0x1Eu))
        {
          goto LABEL_82;
        }

        ucat = selfCopy->_ucat;
      }

      [(NSArray *)v42 count];
      LogPrintF(ucat, "[CUWiFiManager _updateTrafficPeersWithService:]", 0x1Eu, "Traffic registered: '%@', %d peers\n", v58, v59, v60, v61, v62);
    }

LABEL_82:
    selfCopy->_lastTrafficRegistrationErrorCode = v55;
    [(CUWiFiManager *)selfCopy _updateWiFiState];

    goto LABEL_83;
  }

  v9 = self->_ucat;
  if (v9->var0 <= 90)
  {
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x5Au))
      {
        goto LABEL_83;
      }

      v9 = self->_ucat;
    }

    LogPrintF(v9, "[CUWiFiManager _updateTrafficPeersWithService:]", 0x5Au, "### Bad service flag: 0x%X\n", v5, v6, v7, v8, v3);
  }

LABEL_83:
}

- (void)_updateTrafficPeers
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_wifiDevice && self->_trafficPeerChanged)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_7;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
LABEL_7:
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = self->_trafficPeersCurrent;
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v26;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v12 |= [*(*(&v25 + 1) + 8 * i) trafficFlags];
            }

            v11 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = self->_trafficPeers;
        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v22;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v22 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v12 |= [*(*(&v21 + 1) + 8 * j) trafficFlags];
            }

            v17 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v17);
        }

        if ((v12 & 0x100) != 0)
        {
          [(CUWiFiManager *)self _updateTrafficPeersWithService:256];
          if ((v12 & 0x400) == 0)
          {
LABEL_25:
            if ((v12 & 0x1000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_37;
          }
        }

        else if ((v12 & 0x400) == 0)
        {
          goto LABEL_25;
        }

        [(CUWiFiManager *)self _updateTrafficPeersWithService:1024];
        if ((v12 & 0x1000) == 0)
        {
LABEL_26:
          if ((v12 & 0x2000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }

LABEL_37:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:4096];
        if ((v12 & 0x2000) == 0)
        {
LABEL_27:
          if ((v12 & 0x8000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_39;
        }

LABEL_38:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x2000];
        if ((v12 & 0x8000) == 0)
        {
LABEL_28:
          if ((v12 & 0x200) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_39:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x8000];
        if ((v12 & 0x200) == 0)
        {
LABEL_29:
          if ((v12 & 0x4000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        }

LABEL_40:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:512];
        if ((v12 & 0x4000) == 0)
        {
LABEL_30:
          if ((v12 & 0x10000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }

LABEL_41:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x4000];
        if ((v12 & 0x10000) == 0)
        {
LABEL_31:
          if ((v12 & 0x40000) == 0)
          {
LABEL_33:
            objc_storeStrong(&self->_trafficPeersCurrent, self->_trafficPeers);
            trafficPeers = self->_trafficPeers;
            self->_trafficPeers = 0;

            self->_trafficPeerChanged = 0;
            [(CUWiFiManager *)self _updateTrafficPeerStatusMonitor];
            return;
          }

LABEL_32:
          [(CUWiFiManager *)self _updateTrafficPeersWithService:0x40000];
          goto LABEL_33;
        }

LABEL_42:
        [(CUWiFiManager *)self _updateTrafficPeersWithService:0x10000];
        if ((v12 & 0x40000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      ucat = self->_ucat;
    }

    v4 = [(NSArray *)self->_trafficPeersCurrent count];
    [(NSArray *)self->_trafficPeers count];
    LogPrintF(ucat, "[CUWiFiManager _updateTrafficPeers]", 0x1Eu, "Traffic registration update: %d -> %d peers\n", v5, v6, v7, v8, v4);
    goto LABEL_7;
  }
}

- (void)_updateInfraDisabled
{
  if (!self->_wifiManager || !self->_infraDisabledChanged)
  {
    return;
  }

  infraDisabled = self->_infraDisabled;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_5:
      if (infraDisabled)
      {
        v9 = "no";
      }

      else
      {
        v9 = "yes";
      }

      LogPrintF(ucat, "[CUWiFiManager _updateInfraDisabled]", 0x1Eu, "InfraDisabled: %s -> %s\n", v2, v3, v4, v5, v9);
      goto LABEL_10;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (infraDisabled)
  {
    WiFiManagerClientDisable();
    self->_wifiAutoJoinDisabled = 1;
    if (self->_wifiDevice)
    {
      v10 = WiFiDeviceClientCopyCurrentNetwork();
      if (v10)
      {
        v11 = v10;
        WiFiManagerClientTemporarilyDisableNetwork();
        wifiNetworkDisabled = self->_wifiNetworkDisabled;
        if (wifiNetworkDisabled)
        {
          CFRelease(wifiNetworkDisabled);
        }

        self->_wifiNetworkDisabled = v11;
      }
    }
  }

  else
  {
    if (self->_wifiAutoJoinDisabled)
    {
      WiFiManagerClientEnable();
      self->_wifiAutoJoinDisabled = 0;
    }

    if (self->_wifiNetworkDisabled)
    {
      WiFiManagerClientEnableNetwork();
      v13 = self->_wifiNetworkDisabled;
      if (v13)
      {
        CFRelease(v13);
        self->_wifiNetworkDisabled = 0;
      }
    }
  }

  self->_infraDisabledChanged = 0;
}

- (void)_update
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_invalidateCalled)
  {
    [(CUWiFiManager *)obj _wifiEnsureStarted];
    [(CUWiFiManager *)obj _updateInfraDisabled];
    [(CUWiFiManager *)obj _updateTrafficPeers];
    [(CUWiFiManager *)obj _updateWakeOnWireless];
    [(CUWiFiManager *)obj _wifiStateChanged];
  }

  objc_sync_exit(obj);
}

- (void)performUpdate:(id)update
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CUWiFiManager_performUpdate___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  updateCopy = update;
  dispatch_async(dispatchQueue, block);
  updateCopy[2](updateCopy);

  v6 = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__CUWiFiManager_performUpdate___block_invoke_2;
  v7[3] = &unk_1E73A4F68;
  v7[4] = self;
  dispatch_async(v6, v7);
}

_BYTE *__31__CUWiFiManager_performUpdate___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  result = *(a1 + 32);
  if (result[9] == 1 && (result[10] & 1) == 0)
  {
    return [result _update];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUWiFiManager _invalidated]", 0x3Cu, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v18);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x3Cu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  v10 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  trafficFlagsUnavailableUpdatedHandler = self->_trafficFlagsUnavailableUpdatedHandler;
  self->_trafficFlagsUnavailableUpdatedHandler = 0;

  wifiStateChangedHandler = self->_wifiStateChangedHandler;
  self->_wifiStateChangedHandler = 0;

  self->_invalidateDone = 1;
  v17 = self->_ucat;
  if (v17->var0 <= 30)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x1Eu))
      {
        return;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[CUWiFiManager _invalidated]", 0x1Eu, "Invalidated\n", v13, v14, v15, v16, v20);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CUWiFiManager_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__CUWiFiManager_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 10))
  {
    return result;
  }

  v16 = v8;
  v11 = result;
  *(v10 + 10) = 1;
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

    LogPrintF(v13, "[CUWiFiManager invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:
  [v12 _wifiEnsureStopped];
  v15 = *(v11 + 32);

  return [v15 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)_activateSafeInvokeBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__CUWiFiManager__activateSafeInvokeBlock___block_invoke;
    v7[3] = &unk_1E73A49A0;
    v7[4] = selfCopy;
    v8 = blockCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  objc_sync_exit(selfCopy);
}

_BYTE *__42__CUWiFiManager__activateSafeInvokeBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {

    return [result _update];
  }

  return result;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CUWiFiManager_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E73A49A0;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

uint64_t __40__CUWiFiManager_activateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUWiFiManager activateWithCompletion:]_block_invoke", 0x1Eu, "Activate\n", a5, a6, a7, a8, v14);
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
  *(v9 + 9) = 1;
  [*(a1 + 32) _update];
  result = *(a1 + 40);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

- (void)setWakeOnWirelessEnabled:(BOOL)enabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CUWiFiManager_setWakeOnWirelessEnabled___block_invoke;
  v3[3] = &unk_1E73A42C8;
  enabledCopy = enabled;
  v3[4] = self;
  [(CUWiFiManager *)self _activateSafeInvokeBlock:v3];
}

uint64_t __42__CUWiFiManager_setWakeOnWirelessEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 138))
  {
    *(v2 + 138) = v1;
    *(*(result + 32) + 135) = 1;
  }

  return result;
}

- (void)setTrafficPeers:(id)peers
{
  v4 = [peers copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__CUWiFiManager_setTrafficPeers___block_invoke;
  v6[3] = &unk_1E73A49F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CUWiFiManager *)self _activateSafeInvokeBlock:v6];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE8B90;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)setInfraDisabled:(BOOL)disabled
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CUWiFiManager_setInfraDisabled___block_invoke;
  v3[3] = &unk_1E73A42C8;
  disabledCopy = disabled;
  v3[4] = self;
  [(CUWiFiManager *)self _activateSafeInvokeBlock:v3];
}

uint64_t __34__CUWiFiManager_setInfraDisabled___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 136))
  {
    *(v2 + 136) = v1;
    *(*(result + 32) + 133) = 1;
  }

  return result;
}

- (void)setControlFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CUWiFiManager_setControlFlags___block_invoke;
  v3[3] = &unk_1E73A42A0;
  flagsCopy = flags;
  v3[4] = self;
  [(CUWiFiManager *)self _activateSafeInvokeBlock:v3];
}

uint64_t __33__CUWiFiManager_setControlFlags___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 140))
  {
    *(v2 + 140) = v1;
  }

  return result;
}

- (void)dealloc
{
  [(CWFInterface *)self->_wifiInterface invalidate];
  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = 0;

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v5.receiver = self;
  v5.super_class = CUWiFiManager;
  [(CUWiFiManager *)&v5 dealloc];
}

- (CUWiFiManager)init
{
  v5.receiver = self;
  v5.super_class = CUWiFiManager;
  v2 = [(CUWiFiManager *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUWiFiManager;
    v3 = v2;
  }

  return v2;
}

@end