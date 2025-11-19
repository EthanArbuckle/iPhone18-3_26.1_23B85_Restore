@interface BTBluetoothPairingSession
- (BTBluetoothPairingSession)init;
- (int)_btEnsureStarted;
- (uint64_t)_activate;
- (uint64_t)_btDeletePairingAndRetry;
- (uint64_t)_btEnsureStarted;
- (void)_activate;
- (void)_btDeletePairingAndRetry;
- (void)_btEnsureStopped;
- (void)_invalidate;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BTBluetoothPairingSession

- (BTBluetoothPairingSession)init
{
  v5.receiver = self;
  v5.super_class = BTBluetoothPairingSession;
  v2 = [(BTBluetoothPairingSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_BTBluetoothPairingSession;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_btSession)
  {
    [BTBluetoothPairingSession dealloc];
    goto LABEL_6;
  }

  if (self->_btSessionAttaching)
  {
LABEL_6:
    [BTBluetoothPairingSession dealloc];
    goto LABEL_7;
  }

  if (!self->_completionHandler)
  {
    v4.receiver = self;
    v4.super_class = BTBluetoothPairingSession;
    [(BTBluetoothPairingSession *)&v4 dealloc];
    return;
  }

LABEL_7:
  v2 = [BTBluetoothPairingSession dealloc];
  [(BTBluetoothPairingSession *)v2 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__BTBluetoothPairingSession_activate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  p_ucat = &self->_ucat;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v19 = *p_ucat;
    }

    v5 = "no";
    if (self->_guestMode)
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    if (self->_disconnectOnly)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (self->_userNotInContacts)
    {
      v5 = "yes";
    }

    v24 = v7;
    v25 = v5;
    guestAddress = self->_guestAddress;
    v23 = v6;
    deviceAddress = self->_deviceAddress;
    LogPrintF();
  }

LABEL_13:
  self->_startTime = CFAbsoluteTimeGetCurrent();
  if (!self->_transaction)
  {
    var4 = self->_ucat->var4;
    v9 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v9;

    if (!self->_transaction)
    {
      v11 = **p_ucat;
      if (v11 <= 60)
      {
        if (v11 != -1)
        {
LABEL_17:
          LogPrintF();
          goto LABEL_19;
        }

        if (_LogCategory_Initialize())
        {
          v20 = *p_ucat;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_19:
  if (self->_timeoutTimer)
  {
    goto LABEL_22;
  }

  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v12;

  v14 = self->_timeoutTimer;
  if (v14)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__BTBluetoothPairingSession__activate__block_invoke;
    handler[3] = &unk_278D11830;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_timeoutTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_timeoutTimer);
LABEL_22:
    v16 = [objc_alloc(getWPClientClass()) initWithQueue:self->_dispatchQueue machName:0];
    wpClient = self->_wpClient;
    self->_wpClient = v16;

    [(WPClient *)self->_wpClient disableScanning];
    v18 = [(BTBluetoothPairingSession *)self _btEnsureStarted];
    if (!v18)
    {
      return;
    }

    goto LABEL_23;
  }

  [(BTBluetoothPairingSession *)p_ucat _activate];
  v18 = v27;
LABEL_23:
  [(BTBluetoothPairingSession *)self _completed:v18, deviceAddress, guestAddress, v23, v24, v25];
}

uint64_t __38__BTBluetoothPairingSession__activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[17];
  if (v3 <= 60)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v6 = v2[17];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v2 _completed:4294960574];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BTBluetoothPairingSession_invalidate__block_invoke;
  block[3] = &unk_278D11830;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_invalidateCalled = 1;

  [(BTBluetoothPairingSession *)self _completed:4294960573];
}

- (int)_btEnsureStarted
{
  v96 = *MEMORY[0x277D85DE8];
  self->_btStarted = 1;
  if (self->_btSessionAttaching || self->_btSession)
  {
    goto LABEL_3;
  }

  *&v94[0] = 0;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_41;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_41:
  *&v94[0] = _btSessionEventHandler;
  v20 = self;
  v21 = softLinkBTSessionAttachWithQueue(self->_ucat->var4, v94, v20, v20->_dispatchQueue);
  if (v21)
  {
    v22 = v21;
    CFRelease(v20);
    v23 = (v22 + 310000);
    v24 = self->_ucat->var0;
    if (v24 > 60)
    {
      goto LABEL_49;
    }

    if (v24 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v75 = self->_ucat;
    }

    v90 = (v22 + 310000);
    goto LABEL_163;
  }

  self->_btSessionAttaching = 1;
LABEL_3:
  if (self->_btSessionAddedServiceCallback || !self->_btSession)
  {
    goto LABEL_14;
  }

  v3 = self->_ucat->var0;
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v66 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  v5 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
  if (v5)
  {
    v23 = (v5 + 310000);
    v60 = self->_ucat->var0;
    if (v60 > 60)
    {
      goto LABEL_49;
    }

    if (v60 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v67 = self->_ucat;
    }

    v90 = v23;
    LogPrintF();
    goto LABEL_49;
  }

  self->_btSessionAddedServiceCallback = 1;
LABEL_14:
  p_btDevice = &self->_btDevice;
  if (self->_btDevice || !self->_btSession)
  {
    goto LABEL_15;
  }

  p_ucat = &self->_ucat;
  v10 = self->_ucat->var0;
  if (v10 <= 30)
  {
    if (v10 != -1)
    {
LABEL_26:
      LogPrintF();
      goto LABEL_28;
    }

    if (_LogCategory_Initialize())
    {
      v68 = *p_ucat;
      goto LABEL_26;
    }
  }

LABEL_28:
  deviceAddress = self->_deviceAddress;
  if (!deviceAddress)
  {
    [(BTBluetoothPairingSession *)&self->_ucat _btEnsureStarted];
    v23 = LODWORD(v94[0]);
LABEL_50:
    v26 = self->_ucat->var0;
    if (v26 <= 60)
    {
      if (v26 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_54;
        }

        v81 = self->_ucat;
      }

      v90 = v23;
      LogPrintF();
    }

LABEL_54:
    [(BTBluetoothPairingSession *)self _completed:v23, v90, v91];
    goto LABEL_149;
  }

  WORD2(v94[0]) = 0;
  LODWORD(v94[0]) = 0;
  v12 = [(NSString *)deviceAddress UTF8String];
  v13 = softLinkBTDeviceAddressFromString(v12, v94);
  if (v13)
  {
    v23 = (v13 + 310000);
    v61 = (*p_ucat)->var0;
    if (v61 > 60)
    {
      goto LABEL_49;
    }

    if (v61 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v69 = *p_ucat;
    }

    v90 = self->_deviceAddress;
    goto LABEL_163;
  }

  v14 = softLinkBTDeviceFromAddress(self->_btSession, v94, &self->_btDevice);
  if (v14)
  {
    v23 = (v14 + 310000);
    v62 = (*p_ucat)->var0;
    if (v62 > 60)
    {
      goto LABEL_49;
    }

    if (v62 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v70 = *p_ucat;
    }

    v90 = self->_deviceAddress;
    v91 = v23;
    goto LABEL_163;
  }

  AddressString = softLinkBTDeviceGetAddressString(self->_btDevice, self->_btAddrStr, 32);
  if (AddressString)
  {
    v23 = (AddressString + 310000);
    v63 = (*p_ucat)->var0;
    if (v63 > 60)
    {
      goto LABEL_49;
    }

    if (v63 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v71 = *p_ucat;
    }

    v90 = self->_deviceAddress;
    v91 = v23;
LABEL_163:
    LogPrintF();
    goto LABEL_49;
  }

  guestAddress = self->_guestAddress;
  if (guestAddress)
  {
    v17 = (*p_ucat)->var0;
    if (v17 <= 30)
    {
      if (v17 != -1)
      {
LABEL_35:
        v90 = self->_deviceAddress;
        v91 = guestAddress;
LABEL_62:
        LogPrintF();
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v25 = self->_ucat;
        guestAddress = self->_guestAddress;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v92 = 0;
    PairingStatus = softLinkBTDeviceGetPairingStatus(*p_btDevice, &v92);
    v19 = *p_ucat;
    if (PairingStatus)
    {
      if (*v19 > 60)
      {
        goto LABEL_15;
      }

      if (*v19 != -1 || (v27 = _LogCategory_Initialize(), v19 = *p_ucat, v27))
      {
        v90 = (PairingStatus + 310000);
        LogPrintF();
        v19 = *p_ucat;
      }
    }

    if (*v19 <= 30)
    {
      if (*v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v30 = *p_ucat;
      }

      v28 = self->_deviceAddress;
      if (v92)
      {
        v29 = "already paired";
      }

      else
      {
        v29 = "not paired";
      }

      v90 = self->_deviceAddress;
      v91 = v29;
      goto LABEL_62;
    }
  }

LABEL_15:
  if (self->_connectOnly || self->_disconnectOnly || self->_guestAddress || self->_btPairingAgent || !self->_btSession)
  {
    goto LABEL_72;
  }

  v7 = 0uLL;
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  v8 = self->_ucat->var0;
  if (v8 <= 30)
  {
    if (v8 != -1)
    {
LABEL_22:
      LogPrintF();
      v7 = 0uLL;
      goto LABEL_66;
    }

    v31 = _LogCategory_Initialize();
    v7 = 0uLL;
    if (v31)
    {
      v86 = self->_ucat;
      goto LABEL_22;
    }
  }

LABEL_66:
  v95 = 0uLL;
  *(v94 + 8) = v7;
  *&v94[0] = _btPairingAgentStatusHandler;
  *(&v94[1] + 1) = _btPairingAgentUserConfirmationHandler;
  v32 = softLinkBTPairingAgentCreate(self->_btSession, v94, self, &self->_btPairingAgent);
  if (v32)
  {
    v23 = (v32 + 310000);
    v76 = self->_ucat->var0;
    if (v76 > 60)
    {
      goto LABEL_49;
    }

    if (v76 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v87 = self->_ucat;
    }

    v90 = v23;
    goto LABEL_163;
  }

  v33 = self->_ucat->var0;
  if (v33 <= 30)
  {
    if (v33 != -1)
    {
LABEL_69:
      LogPrintF();
      goto LABEL_71;
    }

    if (_LogCategory_Initialize())
    {
      v88 = self->_ucat;
      goto LABEL_69;
    }
  }

LABEL_71:
  v34 = softLinkBTPairingAgentStart(self->_btPairingAgent);
  if (v34)
  {
    v23 = (v34 + 310000);
    v77 = self->_ucat->var0;
    if (v77 > 60)
    {
      goto LABEL_49;
    }

    if (v77 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v89 = self->_ucat;
    }

    v90 = v23;
    goto LABEL_163;
  }

LABEL_72:
  if (!*p_btDevice)
  {
LABEL_148:
    LODWORD(v23) = 0;
    goto LABEL_149;
  }

  if ((self->_btConfigured || !self->_guestAddress) && (self->_btConnecting || !self->_btPairingAgentStarted && !self->_connectOnly))
  {
    if (self->_btDisconnected || !self->_disconnectOnly)
    {
      goto LABEL_148;
    }

    v35 = self->_ucat->var0;
    if (v35 <= 30)
    {
      if (v35 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_126;
        }

        v82 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_126:
    v51 = softLinkBTDeviceDisconnect(*p_btDevice);
    if (!v51)
    {
      goto LABEL_146;
    }

    v52 = v51;
    v53 = self->_ucat->var0;
    if (v53 > 60)
    {
      goto LABEL_146;
    }

    if (v53 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_146;
      }

      v85 = self->_ucat;
    }

    v90 = v52;
    v91 = (v52 + 310000);
    LogPrintF();
LABEL_146:
    self->_btDisconnected = 1;
    goto LABEL_147;
  }

  if (!self->_guestAddress)
  {
    goto LABEL_212;
  }

  if (MobileBluetoothLibrary_sOnce != -1)
  {
    [BTBluetoothPairingSession _btEnsureStarted];
  }

  if (!MobileBluetoothLibrary_sLib || !dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConfigureLinkKey"))
  {
LABEL_212:
    if (self->_guestMode)
    {
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
      {
        v39 = self->_ucat->var0;
        if (v39 > 30)
        {
          goto LABEL_131;
        }

        if (v39 == -1)
        {
          v54 = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_131;
          }

          v83 = self->_ucat;
        }

        if (self->_guestPermanent)
        {
          v40 = "yes";
        }

        else
        {
          v40 = "no";
        }

        v41 = [(NSData *)self->_guestKey length:v90];
        v90 = v40;
        v91 = v41;
        LogPrintF();
LABEL_131:
        v94[0] = 0uLL;
        if ([(NSData *)self->_guestKey length:v90]== 16)
        {
          v94[0] = *[(NSData *)self->_guestKey bytes];
          if (self->_guestPermanent)
          {
            v55 = 16;
          }

          else if (self->_userNotInContacts)
          {
            v55 = 4;
          }

          else
          {
            v55 = 2;
          }
        }

        else if (self->_guestPermanent)
        {
          v55 = 16;
        }

        else
        {
          v55 = 1;
        }

        v56 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, v55, v94);
        if (v56)
        {
          [(BTBluetoothPairingSession *)v56 _btEnsureStarted:v94];
LABEL_181:
          v23 = v92;
          goto LABEL_49;
        }

        goto LABEL_144;
      }
    }

    if (self->_aggregate)
    {
      if (MobileBluetoothLibrary_sOnce != -1)
      {
        [BTBluetoothPairingSession _btEnsureStarted];
      }

      if (MobileBluetoothLibrary_sLib && dlsym(MobileBluetoothLibrary_sLib, "BTDeviceConnectServicesWithParameters"))
      {
        v42 = self->_ucat->var0;
        if (v42 > 30)
        {
          goto LABEL_143;
        }

        if (v42 == -1)
        {
          if (!_LogCategory_Initialize())
          {
LABEL_143:
            v94[0] = 0uLL;
            v57 = softLinkBTDeviceConnectServicesWithParameters(*p_btDevice, 4294959103, 0, v94);
            if (v57)
            {
              [(BTBluetoothPairingSession *)v57 _btEnsureStarted:v94];
              goto LABEL_181;
            }

LABEL_144:
            LODWORD(v23) = 0;
            self->_btConnecting = 1;
            goto LABEL_149;
          }

          v84 = self->_ucat;
        }

        LogPrintF();
        goto LABEL_143;
      }
    }

    v43 = self->_ucat->var0;
    if (v43 <= 30)
    {
      if (v43 != -1)
      {
LABEL_112:
        LogPrintF();
        goto LABEL_114;
      }

      if (_LogCategory_Initialize())
      {
        v73 = self->_ucat;
        goto LABEL_112;
      }
    }

LABEL_114:
    v44 = softLinkBTDeviceConnectServices(*p_btDevice, 4294959103);
    if (v44)
    {
      v23 = (v44 + 310000);
      v45 = self->_ucat->var0;
      if (v45 > 60)
      {
        goto LABEL_49;
      }

      if (v45 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_49;
        }

        v74 = self->_ucat;
      }

      v90 = v23;
      goto LABEL_163;
    }

    goto LABEL_144;
  }

  v36 = self->_ucat->var0;
  if (v36 > 30)
  {
    goto LABEL_119;
  }

  if (v36 != -1)
  {
    goto LABEL_90;
  }

  v46 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v78 = self->_ucat;
LABEL_90:
    v37 = self->_guestAddress;
    v38 = [(NSData *)self->_guestKey length:v90];
    v90 = v37;
    v91 = v38;
    LogPrintF();
  }

LABEL_119:
  v94[0] = 0uLL;
  if ([(NSData *)self->_guestKey length:v90]== 16)
  {
    v94[0] = *[(NSData *)self->_guestKey bytes];
    v47 = 0xFFFFFFFFLL;
  }

  else
  {
    v47 = 0;
  }

  v93 = 0;
  v92 = 0;
  v48 = [(NSString *)self->_guestAddress UTF8String];
  v49 = softLinkBTDeviceAddressFromString(v48, &v92);
  if (v49)
  {
    v23 = (v49 + 310000);
    v64 = self->_ucat->var0;
    if (v64 > 60)
    {
      goto LABEL_49;
    }

    if (v64 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_49;
      }

      v79 = self->_ucat;
    }

    v90 = self->_guestAddress;
    goto LABEL_163;
  }

  v50 = softLinkBTDeviceConfigureLinkKey(*p_btDevice, &v92, v94, v47);
  if (!v50)
  {
    self->_btConfigured = 1;
LABEL_147:
    [(BTBluetoothPairingSession *)self _completed:0, v90, v91];
    goto LABEL_148;
  }

  v23 = (v50 + 310000);
  v65 = self->_ucat->var0;
  if (v65 <= 60)
  {
    if (v65 != -1)
    {
LABEL_169:
      v90 = v23;
      goto LABEL_163;
    }

    if (_LogCategory_Initialize())
    {
      v80 = self->_ucat;
      goto LABEL_169;
    }
  }

LABEL_49:
  if (v23)
  {
    goto LABEL_50;
  }

LABEL_149:
  v58 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_btEnsureStopped
{
  if (self->_btConnecting)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_6:
    softLinkBTPairingAgentCancelPairing(self->_btPairingAgent);
    self->_btConnecting = 0;
  }

  if (!self->_btPairingAgentStarted)
  {
    goto LABEL_13;
  }

  v4 = self->_ucat->var0;
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v11 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_12:
  softLinkBTPairingAgentStop(self->_btPairingAgent);
  self->_btPairingAgentStarted = 0;
LABEL_13:
  if (!self->_btPairingAgent)
  {
    goto LABEL_19;
  }

  v5 = self->_ucat->var0;
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v8 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_18:
  softLinkBTPairingAgentDestroy(&self->_btPairingAgent);
  self->_btPairingAgent = 0;
LABEL_19:
  if (!self->_btSessionAddedServiceCallback)
  {
    goto LABEL_27;
  }

  if (self->_btSession)
  {
    v6 = self->_ucat->var0;
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_25;
        }

        v12 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_25:
    softLinkBTServiceRemoveCallbacks(self->_btSession, _btServiceEventHandler);
  }

  self->_btSessionAddedServiceCallback = 0;
LABEL_27:
  if (self->_btSession)
  {
    v7 = self->_ucat->var0;
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        v9 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_32:
    softLinkBTSessionDetachWithQueue(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btDevice = 0;
  self->_btStarted = 0;
}

- (void)_btDeletePairingAndRetry
{
  retryCount = self->_retryCount;
  if (retryCount < 3)
  {
    v5 = retryCount + 1;
    p_ucat = &self->_ucat;
    ucat = self->_ucat;
    self->_retryCount = v5;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v25 = self->_ucat;
        v5 = self->_retryCount;
      }

      v30 = v5;
      LogPrintF();
    }

LABEL_11:
    v10 = softLinkBTPairingAgentDeletePairedDevice(self->_btPairingAgent, self->_btDevice);
    if (v10)
    {
      v11 = v10;
      var0 = (*p_ucat)->var0;
      if (var0 <= 60)
      {
        if (var0 != -1)
        {
LABEL_14:
          v30 = (v11 + 310000);
          LogPrintF();
          goto LABEL_16;
        }

        if (_LogCategory_Initialize())
        {
          v27 = *p_ucat;
          goto LABEL_14;
        }
      }
    }

LABEL_16:
    if (!self->_timeoutTimer)
    {
      goto LABEL_22;
    }

    v13 = (*p_ucat)->var0;
    if (v13 <= 50)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        v28 = *p_ucat;
      }

      v30 = 15;
      LogPrintF();
    }

LABEL_21:
    timeoutTimer = self->_timeoutTimer;
    CUDispatchTimerSet();
LABEL_22:
    v15 = self->_ucat->var0;
    if (!self->_btSession)
    {
      if (v15 > 90)
      {
        goto LABEL_31;
      }

      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
LABEL_31:
          v16 = (*p_ucat)->var0;
          if (v16 <= 30)
          {
            if (v16 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_35;
              }

              v26 = *p_ucat;
            }

            LogPrintF();
          }

LABEL_35:
          retryTimer = self->_retryTimer;
          if (retryTimer)
          {
            v18 = retryTimer;
            dispatch_source_cancel(v18);
            v19 = self->_retryTimer;
            self->_retryTimer = 0;
          }

          v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
          v21 = self->_retryTimer;
          self->_retryTimer = v20;

          v22 = self->_retryTimer;
          if (v22)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __53__BTBluetoothPairingSession__btDeletePairingAndRetry__block_invoke;
            handler[3] = &unk_278D11830;
            handler[4] = self;
            dispatch_source_set_event_handler(v22, handler);
            v23 = self->_retryTimer;
            CUDispatchTimerSet();
            dispatch_resume(self->_retryTimer);
          }

          else
          {
            [(BTBluetoothPairingSession *)&self->_ucat _btDeletePairingAndRetry];
          }

          return;
        }

        v24 = *p_ucat;
      }

      LogPrintF();
      goto LABEL_31;
    }

    if (v15 <= 50)
    {
      if (v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v29 = *p_ucat;
      }

      LogPrintF();
    }

LABEL_30:
    [(BTBluetoothPairingSession *)self _btEnsureStopped];
    goto LABEL_31;
  }

  v4 = self->_ucat->var0;
  if (v4 <= 60)
  {
    if (v4 != -1)
    {
LABEL_4:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      v8 = self->_ucat;
      v9 = self->_retryCount;
      goto LABEL_4;
    }
  }
}

uint64_t __53__BTBluetoothPairingSession__btDeletePairingAndRetry__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = **(v6 + 136);
  if (*(v6 + 80))
  {
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v8 = _LogCategory_Initialize();
        v6 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_11;
        }

        v13 = *(v6 + 136);
      }

      LogPrintF();
      v6 = *(a1 + 32);
    }

LABEL_11:
    *(v6 + 96) = 1;
    v9 = *(a1 + 32);

    return [v9 _btEnsureStopped];
  }

  if (v7 <= 30)
  {
    if (v7 == -1)
    {
      v11 = _LogCategory_Initialize();
      v6 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_15;
      }

      v14 = *(v6 + 136);
    }

    LogPrintF();
    v6 = *(a1 + 32);
  }

LABEL_15:
  *(v6 + 96) = 0;
  v12 = *(a1 + 32);

  return [v12 _btEnsureStarted];
}

- (uint64_t)_activate
{
  result = OUTLINED_FUNCTION_1(a1);
  if (v7 ^ v8 | v6)
  {
    if (v5 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        goto LABEL_6;
      }

      v9 = *a1;
    }

    result = LogPrintF();
  }

LABEL_6:
  *a2 = -6729;
  return result;
}

- (uint64_t)_btEnsureStarted
{
  result = OUTLINED_FUNCTION_0_0(a1, a2, a3, a4);
  if (v8 ^ v9 | v7)
  {
    if (v6 == -1)
    {
      v10 = v5;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v11 = *v10;
    }

    return LogPrintF();
  }

  return result;
}

- (uint64_t)_btDeletePairingAndRetry
{
  result = OUTLINED_FUNCTION_1(a1);
  if (v5 ^ v6 | v4)
  {
    if (v3 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v7 = *a1;
    }

    return LogPrintF();
  }

  return result;
}

@end