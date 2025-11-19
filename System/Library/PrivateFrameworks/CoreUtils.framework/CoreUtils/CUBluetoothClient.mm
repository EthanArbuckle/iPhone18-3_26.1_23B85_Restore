@interface CUBluetoothClient
- (BTDeviceImpl)_btDeviceWithID:(id)a3 error:(id *)a4;
- (CUBluetoothClient)init;
- (id)_createCUBluetoothDeviceWithBTDevice:(BTDeviceImpl *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)_btAccessoryNameChanged:(BTDeviceImpl *)a3;
- (void)_btAccessoryPlacementChanged:(BTAccessoryManagerImpl *)a3 device:(BTDeviceImpl *)a4;
- (void)_btAccessoryStreamStateChanged:(int)a3 device:(BTDeviceImpl *)a4;
- (void)_btEnsureStarted;
- (void)_btEnsureStopped;
- (void)_externalInvokeBlock:(id)a3;
- (void)_findDeviceByAddress:(id)a3 completion:(id)a4;
- (void)_handleBluetoothAddressChanged;
- (void)_handleConnectedDevicesInit;
- (void)_handleDeviceConnected:(BTDeviceImpl *)a3;
- (void)_handleDeviceDisconnected:(BTDeviceImpl *)a3 reason:(int)a4;
- (void)_handleDeviceEvent:(unsigned int)a3 device:(BTDeviceImpl *)a4;
- (void)_handlePairingStatusChanged;
- (void)_invalidated;
- (void)_processFindDeviceRequests;
- (void)_setDeviceFlags:(unsigned int)a3 mask:(unsigned int)a4 deviceID:(id)a5 completion:(id)a6;
- (void)activate;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)findDeviceByAddress:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)setDeviceFlags:(unsigned int)a3 mask:(unsigned int)a4 deviceID:(id)a5 completion:(id)a6;
- (void)setLabel:(id)a3;
- (void)updateDevice:(id)a3 btDevice:(BTDeviceImpl *)a4;
- (void)updateStatusFlags;
@end

@implementation CUBluetoothClient

- (void)updateStatusFlags
{
  statusFlags = self->_statusFlags;
  self->_statusFlags = 0;
  btConnectedDevices = self->_btConnectedDevices;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__CUBluetoothClient_updateStatusFlags__block_invoke;
  v12[3] = &unk_1E73A2EA0;
  v12[4] = self;
  [(NSMutableDictionary *)btConnectedDevices enumerateKeysAndObjectsUsingBlock:v12];
  btPairedDevices = self->_btPairedDevices;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__CUBluetoothClient_updateStatusFlags__block_invoke_2;
  v11[3] = &unk_1E73A2EA0;
  v11[4] = self;
  [(NSMutableDictionary *)btPairedDevices enumerateKeysAndObjectsUsingBlock:v11];
  if (self->_statusFlags != statusFlags)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[CUBluetoothClient updateStatusFlags]", 0x1Eu, "Status flags changed: %#{flags} -> %#{flags}\n", v6, v7, v8, v9, statusFlags);
        return;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }
}

void __38__CUBluetoothClient_updateStatusFlags__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 deviceFlags];
  if (v4)
  {
    *(*(a1 + 32) + 244) |= 8u;
  }

  if ((v4 & 4) != 0)
  {
    *(*(a1 + 32) + 244) |= 0x10u;
  }

  if ([v7 supportsAACPService])
  {
    *(*(a1 + 32) + 244) |= 4u;
  }

  v5 = [v7 primaryPlacement];
  if (v5 == 1 || v5 == 4 || (v6 = [v7 secondaryPlacement], v6 == 4) || v6 == 1)
  {
    *(*(a1 + 32) + 244) |= 1u;
  }
}

uint64_t __38__CUBluetoothClient_updateStatusFlags__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 supportsAACPService];
  if (result)
  {
    *(*(a1 + 32) + 244) |= 2u;
  }

  return result;
}

- (void)updateDevice:(id)a3 btDevice:(BTDeviceImpl *)a4
{
  v120[32] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v112 = 0;
  p_btAccessoryManager = &self->_btAccessoryManager;
  if (!self->_btAccessoryManager)
  {
    v25 = (softLinkBTAccessoryManagerGetDefault[0])(self->_btSession, &self->_btAccessoryManager);
    if (v25)
    {
      v30 = v25;
      ucat = self->_ucat;
      if (ucat->var0 <= 60)
      {
        if (ucat->var0 != -1)
        {
LABEL_23:
          LogPrintF(ucat, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetDefault failed: %#m\n", v26, v27, v28, v29, (v30 + 310000));
          goto LABEL_2;
        }

        if (_LogCategory_Initialize(ucat, 0x3Cu))
        {
          ucat = self->_ucat;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_2:
  v8 = [v6 address];
  if (!softLinkBTAccessoryManagerReadDeviceVersionInfo(v8, &v119, 32, &v118, 128, v117, 128, v116, 128, v115, 128, v114, 128, v113, 128))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v117];
    [v6 setManufacturer:v9];

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v116];
    [v6 setModelNumber:v10];
  }

  if (*p_btAccessoryManager)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8000];
    v120[0] = 0;
    v12 = *p_btAccessoryManager;
    v13 = [v11 mutableBytes];
    v14 = [v11 length];
    if (!(softLinkBTAccessoryManagerGetAccessoryInfo[0])(v12, a4, v13, v120, v14) && v120[0])
    {
      [v11 setLength:?];
      v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 objectForKeyedSubscript:@"AACPVersionInfo"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count] >= 0xB)
        {
          v17 = [v16 objectAtIndexedSubscript:10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 setFirmwareVersion:v17];
          }
        }
      }
    }
  }

  v111 = 0;
  v18 = (softLinkBTDeviceGetConnectedServices_1932[0])(a4, &v111);
  if (v18)
  {
    v23 = v18;
    v24 = self->_ucat;
    if (v24->var0 > 60)
    {
      goto LABEL_26;
    }

    if (v24->var0 != -1)
    {
      goto LABEL_19;
    }

    if (_LogCategory_Initialize(v24, 0x3Cu))
    {
      v24 = self->_ucat;
LABEL_19:
      LogPrintF(v24, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTDeviceGetConnectedServices failed: %#m\n", v19, v20, v21, v22, (v23 + 310000));
    }
  }

  else
  {
    [v6 setConnectedServices:v111];
  }

LABEL_26:
  v32 = *p_btAccessoryManager;
  if (!*p_btAccessoryManager)
  {
    goto LABEL_33;
  }

  LODWORD(v120[0]) = 0;
  v33 = (softLinkBTAccessoryManagerGetDeviceColor[0])(v32, a4, v120);
  if (v33)
  {
    v38 = v33;
    v39 = self->_ucat;
    if (v39->var0 > 60)
    {
      goto LABEL_33;
    }

    if (v39->var0 != -1)
    {
      goto LABEL_30;
    }

    if (_LogCategory_Initialize(v39, 0x3Cu))
    {
      v39 = self->_ucat;
LABEL_30:
      LogPrintF(v39, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetDeviceColor failed: %#m\n", v34, v35, v36, v37, (v38 + 310000));
    }
  }

  else
  {
    [v6 setColorCode:LODWORD(v120[0])];
  }

LABEL_33:
  v110 = 0;
  (softLinkBTDeviceGetDeviceType[0])(a4, &v110);
  [v6 setDeviceType:v110];
  if (v110 == 17 || v110 == 22)
  {
    v41 = 4;
  }

  else
  {
    v41 = 0;
  }

  v42 = *p_btAccessoryManager;
  if (*p_btAccessoryManager)
  {
    v112 = 0;
    v43 = (softLinkBTAccessoryManagerGetFeatureCapability[0])(v42, a4, 1, &v112);
    if (v43)
    {
      v48 = v43;
      v49 = self->_ucat;
      if (v49->var0 > 60)
      {
        goto LABEL_47;
      }

      if (v49->var0 != -1)
      {
        goto LABEL_43;
      }

      if (_LogCategory_Initialize(v49, 0x3Cu))
      {
        v49 = self->_ucat;
LABEL_43:
        LogPrintF(v49, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetFeatureCapability in-ear detect failed: %#m\n", v44, v45, v46, v47, (v48 + 310000));
      }
    }

    else if (v112)
    {
      v41 |= 0x80u;
    }
  }

LABEL_47:
  v112 = 0;
  v50 = (softLinkBTDeviceGetMagicPairingStatus[0])(a4, &v112);
  if (v50)
  {
    v55 = v50;
    v56 = self->_ucat;
    if (v56->var0 > 60)
    {
      goto LABEL_53;
    }

    if (v56->var0 != -1)
    {
      goto LABEL_50;
    }

    if (_LogCategory_Initialize(v56, 0x3Cu))
    {
      v56 = self->_ucat;
LABEL_50:
      LogPrintF(v56, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTDeviceGetMagicPairingStatus failed: %#m\n", v51, v52, v53, v54, (v55 + 310000));
    }
  }

  else
  {
    [v6 setMagicPaired:v112 != 0];
  }

LABEL_53:
  LOBYTE(v120[0]) = 0;
  v57 = (softLinkBTDeviceGetName[0])(a4, v120, 256);
  if (v57)
  {
    v62 = v57;
    v63 = self->_ucat;
    if (v63->var0 > 60)
    {
      goto LABEL_59;
    }

    if (v63->var0 != -1)
    {
      goto LABEL_56;
    }

    if (_LogCategory_Initialize(v63, 0x3Cu))
    {
      v63 = self->_ucat;
LABEL_56:
      LogPrintF(v63, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTDeviceGetName failed: %#m\n", v58, v59, v60, v61, (v62 + 310000));
    }
  }

  else
  {
    v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v120];
    [v6 setName:v64];
  }

LABEL_59:
  v65 = *p_btAccessoryManager;
  if (!*p_btAccessoryManager)
  {
    goto LABEL_82;
  }

  v109 = 0;
  v66 = (softLinkBTAccessoryManagerGetInEarDetectionEnable[0])(v65, a4, &v109);
  if (v66)
  {
    v71 = v66;
    v72 = self->_ucat;
    if (v72->var0 <= 60)
    {
      if (v72->var0 != -1)
      {
LABEL_63:
        LogPrintF(v72, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetInEarDetectionEnable failed: %#m\n", v67, v68, v69, v70, (v71 + 310000));
        goto LABEL_65;
      }

      if (_LogCategory_Initialize(v72, 0x3Cu))
      {
        v72 = self->_ucat;
        goto LABEL_63;
      }
    }
  }

LABEL_65:
  v108 = 0x300000003;
  if (!v109)
  {
LABEL_74:
    v80 = 7;
    goto LABEL_76;
  }

  v73 = (softLinkBTAccessoryManagerGetInEarStatus[0])(*p_btAccessoryManager, a4, &v108 + 4, &v108);
  if (v73)
  {
    v78 = v73;
    v79 = self->_ucat;
    if (v79->var0 <= 60)
    {
      if (v79->var0 != -1)
      {
LABEL_69:
        LogPrintF(v79, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetInEarStatus failed: %#m\n", v74, v75, v76, v77, (v78 + 310000));
        goto LABEL_71;
      }

      if (_LogCategory_Initialize(v79, 0x3Cu))
      {
        v79 = self->_ucat;
        goto LABEL_69;
      }
    }
  }

LABEL_71:
  if (!v109)
  {
    goto LABEL_74;
  }

  if (HIDWORD(v108) > 0xD)
  {
    v80 = 0;
  }

  else
  {
    v80 = dword_191FF9B78[HIDWORD(v108)];
  }

LABEL_76:
  [v6 setPrimaryPlacement:v80];
  if (v109)
  {
    if (v108 > 0xD)
    {
      v81 = 0;
    }

    else
    {
      v81 = dword_191FF9B78[v108];
    }
  }

  else
  {
    v81 = 7;
  }

  [v6 setSecondaryPlacement:v81];
LABEL_82:
  v109 = 0;
  v108 = 0;
  v107 = 0;
  if (!(softLinkBTDeviceGetDeviceId[0])(a4, &v109, &v108 + 4, &v108, &v107))
  {
    [v6 setProductIdentifier:v108];
    [v6 setVersionID:v107];
  }

  v82 = *p_btAccessoryManager;
  if (*p_btAccessoryManager)
  {
    v112 = 0;
    v83 = (softLinkBTAccessoryManagerGetFeatureCapability[0])(v82, a4, 26, &v112);
    if (v83)
    {
      v88 = v83;
      v89 = self->_ucat;
      if (v89->var0 <= 60)
      {
        if (v89->var0 == -1)
        {
          if (!_LogCategory_Initialize(v89, 0x3Cu))
          {
            goto LABEL_92;
          }

          v89 = self->_ucat;
        }

        LogPrintF(v89, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetFeatureCapability software volume failed: %#m\n", v84, v85, v86, v87, (v88 + 310000));
      }

LABEL_92:
      v112 = 0;
      goto LABEL_93;
    }

    if (v112)
    {
      v41 |= 8u;
    }
  }

LABEL_93:
  v106 = 0;
  if (!(softLinkBTDeviceGetSupportedServices[0])(a4, &v106))
  {
    [v6 setSupportsAACPService:(v106 >> 19) & 1];
  }

  if ([v6 supportsAACPService])
  {
    LODWORD(v90) = v41 | 2;
  }

  else
  {
    LODWORD(v90) = v41;
  }

  v112 = 0;
  (softLinkBTDeviceIsTemporaryPaired[0])(a4, &v112);
  if (v112)
  {
    v90 = v90 | 0x10;
  }

  else
  {
    v90 = v90;
  }

  v91 = *p_btAccessoryManager;
  if (*p_btAccessoryManager)
  {
    v112 = 0;
    v92 = (softLinkBTAccessoryManagerGetFeatureCapability[0])(v91, a4, 32, &v112);
    if (v92)
    {
      v97 = v92;
      v98 = self->_ucat;
      if (v98->var0 > 60)
      {
        goto LABEL_109;
      }

      if (v98->var0 != -1)
      {
        goto LABEL_105;
      }

      if (_LogCategory_Initialize(v98, 0x3Cu))
      {
        v98 = self->_ucat;
LABEL_105:
        LogPrintF(v98, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTAccessoryManagerGetFeatureCapability tipi failed: %#m\n", v93, v94, v95, v96, (v97 + 310000));
      }
    }

    else if (v112)
    {
      v90 = v90 | 0x20;
    }
  }

LABEL_109:
  v112 = 0;
  if (MobileBluetoothLibrary_sOnce_1942 != -1)
  {
    dispatch_once(&MobileBluetoothLibrary_sOnce_1942, &__block_literal_global_640);
  }

  if (MobileBluetoothLibrary_sLib_1943 && dlsym(MobileBluetoothLibrary_sLib_1943, "BTDeviceIsWirelessSplitterSupported"))
  {
    v99 = (softLinkBTDeviceIsWirelessSplitterSupported[0])(a4, &v112);
    if (v99)
    {
      v104 = v99;
      v105 = self->_ucat;
      if (v105->var0 <= 60)
      {
        if (v105->var0 == -1)
        {
          if (!_LogCategory_Initialize(v105, 0x3Cu))
          {
            goto LABEL_119;
          }

          v105 = self->_ucat;
        }

        LogPrintF(v105, "[CUBluetoothClient updateDevice:btDevice:]", 0x3Cu, "### BTDeviceIsWS failed: %#m\n", v100, v101, v102, v103, (v104 + 310000));
      }
    }

    else
    {
      v90 = v90 | (v112 != 0);
    }
  }

LABEL_119:
  [v6 setDeviceFlags:v90];
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = v4;
  ucat = self->_ucat;
  v13 = v4;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      v4 = _LogCategory_Initialize(ucat, 0x1Eu);
      v5 = v13;
      if (!v4)
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    v7 = [v5 state];
    if (v7 > 0xA)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1E73A3018[v7];
    }

    v4 = LogPrintF(ucat, "[CUBluetoothClient peripheralManagerDidUpdateState:]", 0x1Eu, "Bluetooth state changed: peripheral, %s\n", v8, v9, v10, v11, v12);
    v5 = v13;
  }

LABEL_9:
  if (self->_btSessionStarted)
  {
    v4 = [(CUBluetoothClient *)self _btEnsureStarted];
    v5 = v13;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (![a3 isEqualToString:{@"advertisingAddress", a4, a5, a6}])
  {
    return;
  }

  v7 = [(CBPeripheralManager *)self->_btPeripheralManager advertisingAddress];
  v14 = [v7 copy];

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      if ([v14 length] == 6)
      {
        v13 = [v14 bytes];
      }

      else
      {
        v13 = 0;
      }

      LogPrintF(ucat, "[CUBluetoothClient observeValueForKeyPath:ofObject:change:context:]", 0x1Eu, "Bluetooth advertising address: %.6a\n", v9, v10, v11, v12, v13);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_11:
  [(CUBluetoothClient *)self _handleBluetoothAddressChanged];
}

- (void)_handlePairingStatusChanged
{
  v88 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v3 = 256;
  v4 = 5;
  do
  {
    v5 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
    if (!v5)
    {
      NSErrorWithOSStatusF(4294960568, "Malloc paired device array failed (%zu bytes)", v6, v7, v8, v9, v10, v11, v3);
      goto LABEL_57;
    }

    v12 = v5;
    v13 = (softLinkBTLocalDeviceGetPairedDevices[0])(self->_btLocalDevice, v5, &v85, v3);
    if (!v13)
    {
      [(NSMutableDictionary *)self->_btPairedDevices enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1960];
      if (v85)
      {
        for (i = 0; i < v85; ++i)
        {
          v27 = v12[i];
          v87[0] = 0;
          v28 = (softLinkBTDeviceGetAddressString_1961[0])(v27, v87, 32);
          if (!v28)
          {
            v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v87];
            v36 = [(NSMutableDictionary *)self->_btPairedDevices objectForKeyedSubscript:v35];
            if (v36)
            {
              v37 = v36;
              [(CUBluetoothDevice *)v36 setPresent:1];
LABEL_35:

              continue;
            }

            v37 = objc_alloc_init(CUBluetoothDevice);
            v38 = [(CBCentralManager *)self->_btCentralManager retrievePeripheralWithAddress:v35];
            v39 = [v38 identifier];
            [(CUBluetoothDevice *)v37 setIdentifier:v39];

            v84 = 0;
            v83 = 0;
            if (!(softLinkBTDeviceAddressFromString[0])(v87, &v83))
            {
              v72 = v72 & 0xFFFF000000000000 | v83 | (v84 << 32);
              [(CUBluetoothDevice *)v37 setAddress:?];
            }

            [(CUBluetoothDevice *)v37 setAddressString:v35];
            [(CUBluetoothDevice *)v37 setPresent:1];
            [(CUBluetoothClient *)self updateDevice:v37 btDevice:v27];
            btPairedDevices = self->_btPairedDevices;
            if (!btPairedDevices)
            {
              v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v42 = self->_btPairedDevices;
              self->_btPairedDevices = v41;

              btPairedDevices = self->_btPairedDevices;
            }

            [(NSMutableDictionary *)btPairedDevices setObject:v37 forKeyedSubscript:v35];
            ucat = self->_ucat;
            if (ucat->var0 <= 30)
            {
              if (ucat->var0 != -1)
              {
                goto LABEL_25;
              }

              if (_LogCategory_Initialize(ucat, 0x1Eu))
              {
                ucat = self->_ucat;
LABEL_25:
                LogPrintF(ucat, "[CUBluetoothClient _handlePairingStatusChanged]", 0x1Eu, "Found %@\n", v43, v44, v45, v46, v37);
              }
            }

            [(CUBluetoothClient *)self updateStatusFlags];
            if (self->_btPairedDevicesInitialized || (self->_flags & 1) != 0)
            {
              v48 = _Block_copy(self->_devicePairedHandler);
              v49 = v48;
              if (v48)
              {
                v80[0] = MEMORY[0x1E69E9820];
                v80[1] = 3221225472;
                v80[2] = __48__CUBluetoothClient__handlePairingStatusChanged__block_invoke_2;
                v80[3] = &unk_1E73A49A0;
                v82 = v48;
                v81 = v37;
                [(CUBluetoothClient *)self _externalInvokeBlock:v80];
              }
            }

            goto LABEL_35;
          }

          v33 = v28;
          v34 = self->_ucat;
          if (v34->var0 <= 60)
          {
            if (v34->var0 == -1)
            {
              if (!_LogCategory_Initialize(v34, 0x3Cu))
              {
                continue;
              }

              v34 = self->_ucat;
            }

            LogPrintF(v34, "[CUBluetoothClient _handlePairingStatusChanged]", 0x3Cu, "### BTDeviceGetAddressString failed: %#m\n", v29, v30, v31, v32, (v33 + 310000));
          }
        }
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v50 = [(NSMutableDictionary *)self->_btPairedDevices allKeys];
      v51 = [v50 countByEnumeratingWithState:&v76 objects:v86 count:16];
      if (!v51)
      {
        goto LABEL_56;
      }

      v52 = v51;
      v53 = *v77;
LABEL_41:
      v54 = 0;
      while (1)
      {
        if (*v77 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v76 + 1) + 8 * v54);
        v56 = [(NSMutableDictionary *)self->_btPairedDevices objectForKeyedSubscript:v55];
        if ([v56 present])
        {
          goto LABEL_52;
        }

        [(NSMutableDictionary *)self->_btPairedDevices setObject:0 forKeyedSubscript:v55];
        v61 = self->_ucat;
        if (v61->var0 <= 30)
        {
          if (v61->var0 == -1)
          {
            if (!_LogCategory_Initialize(v61, 0x1Eu))
            {
              goto LABEL_49;
            }

            v61 = self->_ucat;
          }

          LogPrintF(v61, "[CUBluetoothClient _handlePairingStatusChanged]", 0x1Eu, "Lost %@\n", v57, v58, v59, v60, v56);
        }

LABEL_49:
        [(CUBluetoothClient *)self updateStatusFlags];
        v62 = _Block_copy(self->_deviceUnpairedHandler);
        v63 = v62;
        if (v62)
        {
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __48__CUBluetoothClient__handlePairingStatusChanged__block_invoke_3;
          v73[3] = &unk_1E73A49A0;
          v75 = v62;
          v74 = v56;
          [(CUBluetoothClient *)self _externalInvokeBlock:v73];
        }

LABEL_52:
        if (v52 == ++v54)
        {
          v64 = [v50 countByEnumeratingWithState:&v76 objects:v86 count:16];
          v52 = v64;
          if (!v64)
          {
LABEL_56:

            self->_btPairedDevicesInitialized = 1;
            free(v12);
            v65 = 0;
            goto LABEL_62;
          }

          goto LABEL_41;
        }
      }
    }

    v18 = (v13 + 310000);
    v19 = self->_ucat;
    if (v19->var0 > 60)
    {
      goto LABEL_8;
    }

    if (v19->var0 != -1)
    {
      goto LABEL_6;
    }

    if (_LogCategory_Initialize(v19, 0x3Cu))
    {
      v19 = self->_ucat;
LABEL_6:
      LogPrintF(v19, "[CUBluetoothClient _handlePairingStatusChanged]", 0x3Cu, "### BTLocalDeviceGetPairedDevices failed: %#m\n", v14, v15, v16, v17, v18);
    }

LABEL_8:
    free(v12);
    v3 *= 2;
    --v4;
  }

  while (v4);
  NSErrorWithOSStatusF(v18, "Get paired devices failed", v20, v21, v22, v23, v24, v25, v71);
  v65 = LABEL_57:;
  if (v65)
  {
    v70 = self->_ucat;
    if (v70->var0 <= 60)
    {
      if (v70->var0 == -1)
      {
        if (!_LogCategory_Initialize(v70, 0x3Cu))
        {
          goto LABEL_62;
        }

        v70 = self->_ucat;
      }

      LogPrintF(v70, "[CUBluetoothClient _handlePairingStatusChanged]", 0x3Cu, "### Handle pairing status change failed: %{error}\n", v66, v67, v68, v69, v65);
    }
  }

LABEL_62:
}

- (void)_handleDeviceEvent:(unsigned int)a3 device:(BTDeviceImpl *)a4
{
  v7 = _Block_copy(self->_deviceEventHandler);
  if (v7)
  {
    v8 = [(CUBluetoothClient *)self _createCUBluetoothDeviceWithBTDevice:a4];
    if (!v8)
    {
LABEL_8:

      goto LABEL_9;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      BTServiceSpecificEventToString(a3);
      LogPrintF(ucat, "[CUBluetoothClient _handleDeviceEvent:device:]", 0x1Eu, "Device event: %@, event %s\n", v10, v11, v12, v13, v8);
    }

LABEL_7:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__CUBluetoothClient__handleDeviceEvent_device___block_invoke;
    v14[3] = &unk_1E73A3658;
    v14[4] = v8;
    v14[5] = v7;
    v15 = a3;
    [(CUBluetoothClient *)self _externalInvokeBlock:v14];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleDeviceDisconnected:(BTDeviceImpl *)a3 reason:(int)a4
{
  v4 = *&a4;
  v35 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v7 = (softLinkBTDeviceGetConnectedServices_1932[0])(a3, &v33);
  if (v7)
  {
    v12 = v7;
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[CUBluetoothClient _handleDeviceDisconnected:reason:]", 0x3Cu, "### BTDeviceGetConnectedServices failed: %#m\n", v8, v9, v10, v11, (v12 + 310000));
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(ucat, 0x3Cu))
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  if (v33)
  {
    return;
  }

  v34[0] = 0;
  v14 = (softLinkBTDeviceGetAddressString_1961[0])(a3, v34, 32);
  if (!v14)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v34];
    v26 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v21];
    if (!v26)
    {
LABEL_24:

      return;
    }

    v27 = self->_ucat;
    if (v27->var0 <= 30)
    {
      if (v27->var0 == -1)
      {
        if (!_LogCategory_Initialize(v27, 0x1Eu))
        {
          goto LABEL_19;
        }

        v27 = self->_ucat;
      }

      LogPrintF(v27, "[CUBluetoothClient _handleDeviceDisconnected:reason:]", 0x1Eu, "Device disconnected: %@, reason %#m\n", v22, v23, v24, v25, v26);
    }

LABEL_19:
    [(NSMutableDictionary *)self->_btConnectedDevices setObject:0 forKeyedSubscript:v21];
    if (![v26 disconnectReason])
    {
      [v26 setDisconnectReason:v4];
    }

    [(CUBluetoothClient *)self updateStatusFlags];
    v28 = _Block_copy(self->_deviceDisconnectedHandler);
    v29 = v28;
    if (v28)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __54__CUBluetoothClient__handleDeviceDisconnected_reason___block_invoke;
      v30[3] = &unk_1E73A49A0;
      v32 = v28;
      v31 = v26;
      [(CUBluetoothClient *)self _externalInvokeBlock:v30];
    }

    goto LABEL_24;
  }

  v19 = v14;
  v20 = self->_ucat;
  if (v20->var0 <= 60)
  {
    if (v20->var0 != -1)
    {
LABEL_11:
      LogPrintF(v20, "[CUBluetoothClient _handleDeviceDisconnected:reason:]", 0x3Cu, "### BTDeviceGetAddressString failed: %#m\n", v15, v16, v17, v18, (v19 + 310000));
      return;
    }

    if (_LogCategory_Initialize(v20, 0x3Cu))
    {
      v20 = self->_ucat;
      goto LABEL_11;
    }
  }
}

- (void)_handleDeviceConnected:(BTDeviceImpl *)a3
{
  v4 = [(CUBluetoothClient *)self _createCUBluetoothDeviceWithBTDevice:a3];
  v5 = [v4 addressString];
  if (!v5)
  {
    goto LABEL_15;
  }

  if ((self->_flags & 0x100) == 0)
  {
    v6 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v5];

    if (v6)
    {
      goto LABEL_15;
    }
  }

  v7 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v5];
  v12 = v7;
  if (v7)
  {
    [v4 setStreamState:{objc_msgSend(v7, "streamState")}];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClient _handleDeviceConnected:]", 0x1Eu, "Device connected: %@\n", v8, v9, v10, v11, v4);
  }

LABEL_10:
  btConnectedDevices = self->_btConnectedDevices;
  if (!btConnectedDevices)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = self->_btConnectedDevices;
    self->_btConnectedDevices = v15;

    btConnectedDevices = self->_btConnectedDevices;
  }

  [(NSMutableDictionary *)btConnectedDevices setObject:v4 forKeyedSubscript:v5];
  [(CUBluetoothClient *)self updateStatusFlags];
  v17 = _Block_copy(self->_deviceConnectedHandler);
  v18 = v17;
  if (v17)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__CUBluetoothClient__handleDeviceConnected___block_invoke;
    v19[3] = &unk_1E73A49A0;
    v21 = v17;
    v20 = v4;
    [(CUBluetoothClient *)self _externalInvokeBlock:v19];
  }

LABEL_15:
}

- (void)_handleConnectedDevicesInit
{
  if (!self->_btLocalDevice)
  {
    return;
  }

  v54 = 0;
  v3 = 5;
  v4 = 256;
  do
  {
    v5 = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
    if (!v5)
    {
      ucat = self->_ucat;
      if (ucat->var0 > 90)
      {
        return;
      }

      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x5Au, "### Malloc connected device array failed (%zu bytes)", v6, v7, v8, v9, v4);
      return;
    }

    v10 = v5;
    v11 = (softLinkBTLocalDeviceGetConnectedDevices[0])(self->_btLocalDevice, v5, &v54, v4);
    if (!v11)
    {
      if (!v54)
      {
LABEL_49:
        free(v10);
        return;
      }

      v23 = 0;
      while (1)
      {
        v24 = *(v10 + v23);
        if (!self->_requiredServices)
        {
LABEL_27:
          v39 = [(CUBluetoothClient *)self _createCUBluetoothDeviceWithBTDevice:v24];
          if (v39)
          {
            v40 = self->_ucat;
            if (v40->var0 <= 30)
            {
              if (v40->var0 != -1)
              {
                goto LABEL_30;
              }

              if (_LogCategory_Initialize(v40, 0x1Eu))
              {
                v40 = self->_ucat;
LABEL_30:
                LogPrintF(v40, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x1Eu, "Connected device: %@\n", v35, v36, v37, v38, v39);
              }
            }

            v42 = [v39 addressString];
            if (v42)
            {
              btConnectedDevices = self->_btConnectedDevices;
              if (!btConnectedDevices)
              {
                v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v45 = self->_btConnectedDevices;
                self->_btConnectedDevices = v44;

                btConnectedDevices = self->_btConnectedDevices;
              }

              [(NSMutableDictionary *)btConnectedDevices setObject:v39 forKeyedSubscript:v42];
              [(CUBluetoothClient *)self updateStatusFlags];
              v46 = _Block_copy(self->_deviceConnectedHandler);
              v47 = v46;
              if (v46)
              {
                v50[0] = MEMORY[0x1E69E9820];
                v50[1] = 3221225472;
                v50[2] = __48__CUBluetoothClient__handleConnectedDevicesInit__block_invoke;
                v50[3] = &unk_1E73A49A0;
                v52 = v46;
                v51 = v39;
                [(CUBluetoothClient *)self _externalInvokeBlock:v50];
              }
            }
          }

          goto LABEL_43;
        }

        v53 = 0;
        v25 = (softLinkBTDeviceGetConnectedServices_1932[0])(v24, &v53);
        v30 = (v25 + 310000);
        if (v25 && v30 != 0)
        {
          v32 = self->_ucat;
          if (v32->var0 <= 90)
          {
            if (v32->var0 != -1)
            {
              goto LABEL_24;
            }

            if (_LogCategory_Initialize(v32, 0x5Au))
            {
              break;
            }
          }
        }

LABEL_26:
        v33 = v53;
        requiredServices = self->_requiredServices;
        if ((requiredServices & ~v53) == 0)
        {
          goto LABEL_27;
        }

        v41 = self->_ucat;
        if (v41->var0 <= 30)
        {
          if (v41->var0 == -1)
          {
            if (!_LogCategory_Initialize(v41, 0x1Eu))
            {
              goto LABEL_43;
            }

            v41 = self->_ucat;
            requiredServices = self->_requiredServices;
            v33 = v53;
          }

          LogPrintF(v41, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x1Eu, "BTService connect ignoring due to missing services: %#{flags}\n", v26, v27, v28, v29, requiredServices & ~v33);
        }

LABEL_43:
        if (++v23 >= v54)
        {
          goto LABEL_49;
        }
      }

      v32 = self->_ucat;
LABEL_24:
      LogPrintF(v32, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x5Au, "### BTDeviceGetConnectedServices failed: initial, %#m\n", v26, v27, v28, v29, v30);
      goto LABEL_26;
    }

    v16 = v11;
    v17 = self->_ucat;
    if (v17->var0 > 60)
    {
      goto LABEL_9;
    }

    if (v17->var0 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(v17, 0x3Cu))
    {
      v17 = self->_ucat;
LABEL_7:
      LogPrintF(v17, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x3Cu, "### BTLocalDeviceGetPairedDevices failed: %#m\n", v12, v13, v14, v15, (v16 + 310000));
    }

LABEL_9:
    free(v10);
    v4 *= 2;
    --v3;
  }

  while (v3);
  v48 = self->_ucat;
  if (v48->var0 <= 90)
  {
    if (v48->var0 != -1)
    {
      goto LABEL_52;
    }

    if (_LogCategory_Initialize(v48, 0x5Au))
    {
      v48 = self->_ucat;
LABEL_52:
      LogPrintF(v48, "[CUBluetoothClient _handleConnectedDevicesInit]", 0x5Au, "### Get connected devices failed (too many)", v18, v19, v20, v21, v49);
    }
  }
}

- (void)_handleBluetoothAddressChanged
{
  v3 = [(CBPeripheralManager *)self->_btPeripheralManager advertisingAddress];
  v4 = [v3 copy];

  if ([(NSData *)v4 length]== 6 && (v5 = [(NSData *)v4 bytes], v6 = v4, *v5 | *(v5 + 4)) || (v6 = self->_btLocalDeviceAddr, v4, [(NSData *)v6 length]== 6) && (v7 = [(NSData *)v6 bytes], *v7 | *(v7 + 4)))
  {
    if (([(NSData *)self->_btAdvertisingAddress isEqual:v6]& 1) == 0)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_14;
          }

          ucat = self->_ucat;
        }

        if ([(NSData *)v6 length]== 6)
        {
          v13 = [(NSData *)v6 bytes];
        }

        else
        {
          v13 = 0;
        }

        LogPrintF(ucat, "[CUBluetoothClient _handleBluetoothAddressChanged]", 0x1Eu, "Bluetooth address changed: %.6a\n", v9, v10, v11, v12, v13);
      }

LABEL_14:
      objc_storeStrong(&self->_btAdvertisingAddress, v6);
      v14 = _Block_copy(self->_bluetoothAddressChangedHandler);
      v15 = v14;
      if (v14)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __51__CUBluetoothClient__handleBluetoothAddressChanged__block_invoke;
        v16[3] = &unk_1E73A49A0;
        v18 = v14;
        v17 = v6;
        [(CUBluetoothClient *)self _externalInvokeBlock:v16];
      }
    }
  }
}

- (id)_createCUBluetoothDeviceWithBTDevice:(BTDeviceImpl *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(CUBluetoothDevice);
  v26[0] = 0;
  v6 = (softLinkBTDeviceGetAddressString_1961[0])(a3, v26, 32);
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
    [(CUBluetoothDevice *)v5 setAddressString:v13];
    v25 = 0;
    v24 = 0;
    v14 = (softLinkBTDeviceAddressFromString[0])(v26, &v24);
    if (v14)
    {
      v19 = v14;
      ucat = self->_ucat;
      if (ucat->var0 <= 60)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(ucat, 0x3Cu))
          {
            goto LABEL_13;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "[CUBluetoothClient _createCUBluetoothDeviceWithBTDevice:]", 0x3Cu, "### BTDeviceAddressFromString failed: %#m\n", v15, v16, v17, v18, (v19 + 310000));
      }
    }

    else
    {
      [(CUBluetoothDevice *)v5 setAddress:v24 | (v25 << 32)];
      v21 = [(CBCentralManager *)self->_btCentralManager retrievePeripheralWithAddress:v13];
      v22 = [v21 identifier];
      [(CUBluetoothDevice *)v5 setIdentifier:v22];
    }

LABEL_13:

    goto LABEL_14;
  }

  v11 = v6;
  v12 = self->_ucat;
  if (v12->var0 > 60)
  {
    goto LABEL_14;
  }

  if (v12->var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize(v12, 0x3Cu))
  {
    v12 = self->_ucat;
LABEL_4:
    LogPrintF(v12, "[CUBluetoothClient _createCUBluetoothDeviceWithBTDevice:]", 0x3Cu, "### BTDeviceGetAddressString failed: %#m\n", v7, v8, v9, v10, (v11 + 310000));
  }

LABEL_14:
  [(CUBluetoothDevice *)v5 setPresent:1];
  [(CUBluetoothClient *)self updateDevice:v5 btDevice:a3];

  return v5;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 1) > 9)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_191FF9B50[v4 - 1];
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    if (v9 > 0xA)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1E73A3018[v9];
    }

    LogPrintF(ucat, "[CUBluetoothClient centralManagerDidUpdateState:]", 0x1Eu, "Bluetooth state changed: central, %s\n", v5, v6, v7, v8, v11);
  }

LABEL_12:
  self->_bluetoothState = v9;
  v12 = _Block_copy(self->_bluetoothStateChangedHandler);
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    v12 = [(CUBluetoothClient *)self _externalInvokeBlock:v12];
    v13 = v14;
  }

  if (self->_btSessionStarted)
  {
    v12 = [(CUBluetoothClient *)self _btEnsureStarted];
    v13 = v14;
  }

  MEMORY[0x1EEE66BB8](v12, v13);
}

- (BTDeviceImpl)_btDeviceWithID:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v36 = 0;
  v7 = [v6 UTF8String];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Bad device ID UTF-8: '%@'", v8, v9, v10, v11, v12, v6);
    goto LABEL_24;
  }

  v13 = v7;
  v37 = 0uLL;
  if (!StringToUUIDEx(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v37, v10, v11, v12))
  {
    v24 = (softLinkBTDeviceFromIdentifier_2001[0])(self->_btSession, &v37, &v36);
    if (v24 == -310000)
    {
      v30 = 4294960596;
    }

    else
    {
      v30 = (v24 + 310000);
    }

    if (!v24)
    {
      goto LABEL_14;
    }

    if (!a4)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v30, "BTDeviceFromIdentifier failed", v25, v26, v27, v28, v29, v33);
LABEL_24:
    *a4 = v31 = 0;
    goto LABEL_15;
  }

  v35 = 0;
  v34 = 0;
  v14 = TextToHardwareAddress(v13, 0xFFFFFFFFFFFFFFFFLL, 6, &v34);
  if (v14)
  {
    if (a4)
    {
      v21 = v14;
      v22 = *MEMORY[0x1E696A768];
      v33 = v13;
      v23 = "Bad device ID format: '%s'";
      goto LABEL_20;
    }

LABEL_21:
    v31 = 0;
    goto LABEL_15;
  }

  v20 = (softLinkBTDeviceFromAddress_2004[0])(self->_btSession, &v34, &v36);
  if (v20 == -310000)
  {
    v21 = 4294960596;
  }

  else
  {
    v21 = (v20 + 310000);
  }

  if (v20)
  {
    if (a4)
    {
      v22 = *MEMORY[0x1E696A768];
      v23 = "BTDeviceFromAddress failed";
LABEL_20:
      *a4 = NSErrorF_safe(v22, v21, v23, v15, v16, v17, v18, v19, v33);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_14:
  v31 = v36;
LABEL_15:

  return v31;
}

- (void)_btAccessoryPlacementChanged:(BTAccessoryManagerImpl *)a3 device:(BTDeviceImpl *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v7 = (softLinkBTAccessoryManagerGetInEarDetectionEnable[0])(a3, a4, &v57);
  if (v7)
  {
    v12 = v7;
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x3Cu))
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0x3Cu, "### Placement changed: BTAccessoryManagerGetInEarDetectionEnable failed: %#m\n", v8, v9, v10, v11, (v12 + 310000));
    }

LABEL_11:
    v57 = 0;
    goto LABEL_12;
  }

  v55 = 3;
  v56 = 3;
  if (v57)
  {
    v14 = (softLinkBTAccessoryManagerGetInEarStatus[0])(a3, a4, &v56, &v55);
    if (v14)
    {
      v19 = v14;
      v20 = self->_ucat;
      if (v20->var0 <= 60)
      {
        if (v20->var0 == -1)
        {
          if (!_LogCategory_Initialize(v20, 0x3Cu))
          {
            goto LABEL_12;
          }

          v20 = self->_ucat;
        }

        LogPrintF(v20, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0x3Cu, "### Placement changed: BTAccessoryManagerGetInEarStatus failed: %#m\n", v15, v16, v17, v18, (v19 + 310000));
      }

LABEL_12:
      v55 = 3;
      v56 = 3;
    }
  }

  v58[0] = 0;
  v21 = (softLinkBTDeviceGetAddressString_1961[0])(a4, v58, 32);
  if (!v21)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v58];
    v27 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v26];
    v32 = v27;
    if (!v27)
    {
      v51 = self->_ucat;
      if (v51->var0 <= 30)
      {
        if (v51->var0 == -1)
        {
          if (!_LogCategory_Initialize(v51, 0x1Eu))
          {
            goto LABEL_40;
          }

          v51 = self->_ucat;
        }

        LogPrintF(v51, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0x1Eu, "Placement changed: Lookup device failed: %@\n", v28, v29, v30, v31, v26);
      }

      goto LABEL_40;
    }

    v33 = [v27 primaryPlacement];
    if (v57)
    {
      if (v56 > 0xD)
      {
        v34 = 0;
      }

      else
      {
        v34 = dword_191FF9B78[v56];
      }
    }

    else
    {
      v34 = 7;
    }

    v35 = [v32 secondaryPlacement];
    if (v57)
    {
      if (v55 > 0xD)
      {
        v40 = 0;
      }

      else
      {
        v40 = dword_191FF9B78[v55];
      }
    }

    else
    {
      v40 = 7;
    }

    if (v34 == v33 && v40 == v35)
    {
      v41 = self->_ucat;
      if (v41->var0 <= 10)
      {
        if (v41->var0 == -1)
        {
          if (!_LogCategory_Initialize(v41, 0xAu))
          {
            goto LABEL_40;
          }

          v41 = self->_ucat;
        }

        LogPrintF(v41, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0xAu, "Placement unchanged: %@\n", v36, v37, v38, v39, v32);
      }

LABEL_40:

      return;
    }

    [v32 setPrimaryPlacement:v34];
    [v32 setSecondaryPlacement:v40];
    [(CUBluetoothClient *)self updateStatusFlags];
    v46 = self->_ucat;
    if (v46->var0 <= 30)
    {
      if (v46->var0 != -1)
      {
LABEL_36:
        LogPrintF(v46, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0x1Eu, "Placement changed: %@, P %s -> %s, S %s -> %s\n", v42, v43, v44, v45, v32);
        goto LABEL_37;
      }

      if (_LogCategory_Initialize(v46, 0x1Eu))
      {
        v46 = self->_ucat;
        goto LABEL_36;
      }
    }

LABEL_37:
    v47 = _Block_copy(self->_deviceConnectedHandler);
    v48 = v47;
    if (v47)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __57__CUBluetoothClient__btAccessoryPlacementChanged_device___block_invoke;
      v52[3] = &unk_1E73A49A0;
      v54 = v47;
      v53 = v32;
      [(CUBluetoothClient *)self _externalInvokeBlock:v52];
    }

    goto LABEL_40;
  }

  v49 = v21;
  v50 = self->_ucat;
  if (v50->var0 <= 60)
  {
    if (v50->var0 != -1)
    {
LABEL_46:
      LogPrintF(v50, "[CUBluetoothClient _btAccessoryPlacementChanged:device:]", 0x3Cu, "### Placement changed: BTDeviceGetAddressString failed: %#m\n", v22, v23, v24, v25, (v49 + 310000));
      return;
    }

    if (_LogCategory_Initialize(v50, 0x3Cu))
    {
      v50 = self->_ucat;
      goto LABEL_46;
    }
  }
}

- (void)_btAccessoryStreamStateChanged:(int)a3 device:(BTDeviceImpl *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 0x40) != 0)
  {
    v4 = *&a3;
    v36[0] = 0;
    v6 = (softLinkBTDeviceGetAddressString_1961[0])(a4, v36, 32);
    if (!v6)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v36];
      v12 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v11];
      v17 = v12;
      if (!v12)
      {
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize(ucat, 0x1Eu))
            {
              goto LABEL_19;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[CUBluetoothClient _btAccessoryStreamStateChanged:device:]", 0x1Eu, "Stream state changed: Lookup device failed: %@\n", v13, v14, v15, v16, v11);
        }

        goto LABEL_19;
      }

      if ([v12 streamState] == v4)
      {
        v22 = self->_ucat;
        if (v22->var0 <= 10)
        {
          if (v22->var0 == -1)
          {
            if (!_LogCategory_Initialize(v22, 0xAu))
            {
              goto LABEL_19;
            }

            v22 = self->_ucat;
          }

          LogPrintF(v22, "[CUBluetoothClient _btAccessoryStreamStateChanged:device:]", 0xAu, "Stream state unchanged: %@\n", v18, v19, v20, v21, v17);
        }

LABEL_19:

        return;
      }

      [v17 setStreamState:v4];
      v27 = self->_ucat;
      if (v27->var0 <= 30)
      {
        if (v27->var0 != -1)
        {
          goto LABEL_15;
        }

        if (_LogCategory_Initialize(v27, 0x1Eu))
        {
          v27 = self->_ucat;
LABEL_15:
          LogPrintF(v27, "[CUBluetoothClient _btAccessoryStreamStateChanged:device:]", 0x1Eu, "Stream state changed: %@, %s -> %s\n", v23, v24, v25, v26, v17);
        }
      }

      v28 = _Block_copy(self->_deviceConnectedHandler);
      v29 = v28;
      if (v28)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __59__CUBluetoothClient__btAccessoryStreamStateChanged_device___block_invoke;
        v33[3] = &unk_1E73A49A0;
        v35 = v28;
        v34 = v17;
        [(CUBluetoothClient *)self _externalInvokeBlock:v33];
      }

      goto LABEL_19;
    }

    v30 = v6;
    v31 = self->_ucat;
    if (v31->var0 <= 60)
    {
      if (v31->var0 != -1)
      {
LABEL_23:
        LogPrintF(v31, "[CUBluetoothClient _btAccessoryStreamStateChanged:device:]", 0x3Cu, "### Stream state changed: BTDeviceGetAddressString failed: %#m\n", v7, v8, v9, v10, (v30 + 310000));
        return;
      }

      if (_LogCategory_Initialize(v31, 0x3Cu))
      {
        v31 = self->_ucat;
        goto LABEL_23;
      }
    }
  }
}

- (void)_btAccessoryNameChanged:(BTDeviceImpl *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if ((self->_flags & 0x40) != 0)
  {
    v42[0] = 0;
    v5 = (softLinkBTDeviceGetAddressString_1961[0])(a3, v42, 32);
    if (!v5)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
      v11 = [(NSMutableDictionary *)self->_btConnectedDevices objectForKeyedSubscript:v10];
      v16 = v11;
      if (!v11)
      {
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize(ucat, 0x1Eu))
            {
              goto LABEL_25;
            }

            ucat = self->_ucat;
          }

          LogPrintF(ucat, "[CUBluetoothClient _btAccessoryNameChanged:]", 0x1Eu, "Name state changed: Lookup device failed: %@\n", v12, v13, v14, v15, v10);
        }

LABEL_25:

        return;
      }

      v17 = [v11 name];
      v41[0] = 0;
      if ((softLinkBTDeviceGetName[0])(a3, v41, 256))
      {
        v18 = v17;
LABEL_6:

        goto LABEL_7;
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];

      v18 = v24;
      v25 = v17;
      if (v18 == v25)
      {
        goto LABEL_6;
      }

      v26 = v25;
      if ((v25 == 0) != (v18 != 0))
      {
        v27 = [v18 isEqual:v25];

        if (v27)
        {
LABEL_7:
          v23 = self->_ucat;
          if (v23->var0 <= 10)
          {
            if (v23->var0 == -1)
            {
              if (!_LogCategory_Initialize(v23, 0xAu))
              {
                goto LABEL_24;
              }

              v23 = self->_ucat;
            }

            LogPrintF(v23, "[CUBluetoothClient _btAccessoryNameChanged:]", 0xAu, "Name unchanged: %@\n", v19, v20, v21, v22, v16);
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
      }

      [v16 setName:v18];
      v32 = self->_ucat;
      if (v32->var0 <= 30)
      {
        if (v32->var0 == -1)
        {
          if (!_LogCategory_Initialize(v32, 0x1Eu))
          {
            goto LABEL_21;
          }

          v32 = self->_ucat;
        }

        LogPrintF(v32, "[CUBluetoothClient _btAccessoryNameChanged:]", 0x1Eu, "Name changed: %@, %@ -> %@\n", v28, v29, v30, v31, v16);
      }

LABEL_21:
      v33 = _Block_copy(self->_deviceConnectedHandler);
      v34 = v33;
      if (v33)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __45__CUBluetoothClient__btAccessoryNameChanged___block_invoke;
        v38[3] = &unk_1E73A49A0;
        v40 = v33;
        v39 = v16;
        [(CUBluetoothClient *)self _externalInvokeBlock:v38];
      }

      goto LABEL_24;
    }

    v35 = v5;
    v36 = self->_ucat;
    if (v36->var0 <= 60)
    {
      if (v36->var0 != -1)
      {
LABEL_29:
        LogPrintF(v36, "[CUBluetoothClient _btAccessoryNameChanged:]", 0x3Cu, "### Name state changed: BTDeviceGetAddressString failed: %#m\n", v6, v7, v8, v9, (v35 + 310000));
        return;
      }

      if (_LogCategory_Initialize(v36, 0x3Cu))
      {
        v36 = self->_ucat;
        goto LABEL_29;
      }
    }
  }
}

- (void)_btEnsureStopped
{
  if (!self->_invalidateCalled)
  {
    self->_statusFlags = 0;
    v7 = _Block_copy(self->_deviceDisconnectedHandler);
    btConnectedDevices = self->_btConnectedDevices;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __37__CUBluetoothClient__btEnsureStopped__block_invoke;
    v29[3] = &unk_1E73A2E58;
    v29[4] = self;
    v29[5] = v7;
    [(NSMutableDictionary *)btConnectedDevices enumerateKeysAndObjectsUsingBlock:v29];
  }

  if (!self->_btAccessoryEventsRegistered)
  {
    goto LABEL_13;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTAccessoryManagerRemoveCallbacks\n", v2, v3, v4, v5, v28);
  }

LABEL_8:
  self->_btAccessoryEventsRegistered = 0;
  v10 = softLinkBTAccessoryManagerRemoveCallbacks(self->_btAccessoryManager, &self->_btAccessoryCallbacks);
  if (v10)
  {
    v11 = v10;
    v12 = self->_ucat;
    if (v12->var0 <= 60)
    {
      if (v12->var0 != -1)
      {
LABEL_11:
        LogPrintF(v12, "[CUBluetoothClient _btEnsureStopped]", 0x3Cu, "### BTAccessoryManagerRemoveCallbacks failed: %#m\n", v2, v3, v4, v5, (v11 + 310000));
        goto LABEL_13;
      }

      if (_LogCategory_Initialize(v12, 0x3Cu))
      {
        v12 = self->_ucat;
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  if (!self->_btLocalDeviceCallbacksRegistered)
  {
    goto LABEL_19;
  }

  v13 = self->_ucat;
  if (v13->var0 <= 30)
  {
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize(v13, 0x1Eu))
      {
        goto LABEL_18;
      }

      v13 = self->_ucat;
    }

    LogPrintF(v13, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTLocalDeviceRemoveCallbacks\n", v2, v3, v4, v5, v28);
  }

LABEL_18:
  (softLinkBTLocalDeviceRemoveCallbacks[0])(self->_btLocalDevice, &self->_btLocalDeviceCallbacks);
  self->_btLocalDeviceCallbacksRegistered = 0;
LABEL_19:
  if (!self->_btPairingAgentStarted)
  {
    goto LABEL_25;
  }

  v14 = self->_ucat;
  if (v14->var0 <= 30)
  {
    if (v14->var0 == -1)
    {
      if (!_LogCategory_Initialize(v14, 0x1Eu))
      {
        goto LABEL_24;
      }

      v14 = self->_ucat;
    }

    LogPrintF(v14, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTPairingAgentStop\n", v2, v3, v4, v5, v28);
  }

LABEL_24:
  (softLinkBTPairingAgentStop[0])(self->_btPairingAgent);
  self->_btPairingAgentStarted = 0;
LABEL_25:
  if (!self->_btPairingAgent)
  {
    goto LABEL_31;
  }

  v15 = self->_ucat;
  if (v15->var0 <= 30)
  {
    if (v15->var0 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x1Eu))
      {
        goto LABEL_30;
      }

      v15 = self->_ucat;
    }

    LogPrintF(v15, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTPairingAgentDestroy\n", v2, v3, v4, v5, v28);
  }

LABEL_30:
  (softLinkBTPairingAgentDestroy[0])(&self->_btPairingAgent);
  self->_btPairingAgent = 0;
LABEL_31:
  if (!self->_btSessionAddedServiceCallback)
  {
    goto LABEL_39;
  }

  if (self->_btSession)
  {
    v16 = self->_ucat;
    if (v16->var0 <= 30)
    {
      if (v16->var0 == -1)
      {
        if (!_LogCategory_Initialize(v16, 0x1Eu))
        {
          goto LABEL_37;
        }

        v16 = self->_ucat;
      }

      LogPrintF(v16, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTServiceRemoveCallbacks\n", v2, v3, v4, v5, v28);
    }

LABEL_37:
    (softLinkBTServiceRemoveCallbacks_2030[0])(self->_btSession, _btServiceEventHandler_2037);
  }

  self->_btSessionAddedServiceCallback = 0;
LABEL_39:
  if (!self->_btSession)
  {
    goto LABEL_45;
  }

  v17 = self->_ucat;
  if (v17->var0 <= 30)
  {
    if (v17->var0 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x1Eu))
      {
        goto LABEL_44;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "BTSession detach\n", v2, v3, v4, v5, v28);
  }

LABEL_44:
  (softLinkBTSessionDetachWithQueue_2033[0])(&self->_btSession);
  self->_btSession = 0;
LABEL_45:
  self->_btSessionStarted = 0;
  btLocalDeviceAddr = self->_btLocalDeviceAddr;
  self->_btLocalDevice = 0;
  self->_btLocalDeviceAddr = 0;

  self->_btAccessoryManager = 0;
  if (!self->_btPeripheralManager)
  {
    goto LABEL_53;
  }

  v23 = self->_ucat;
  if (v23->var0 <= 30)
  {
    if (v23->var0 == -1)
    {
      if (!_LogCategory_Initialize(v23, 0x1Eu))
      {
        goto LABEL_50;
      }

      v23 = self->_ucat;
    }

    LogPrintF(v23, "[CUBluetoothClient _btEnsureStopped]", 0x1Eu, "CBPeripheralManager stop\n", v19, v20, v21, v22, v28);
  }

LABEL_50:
  btPeripheralManager = self->_btPeripheralManager;
  if (self->_bluetoothAddressChangedHandler)
  {
    [(CBPeripheralManager *)btPeripheralManager removeObserver:self forKeyPath:@"advertisingAddress" context:0];
    btPeripheralManager = self->_btPeripheralManager;
  }

  [(CBPeripheralManager *)btPeripheralManager setDelegate:0];
  v25 = self->_btPeripheralManager;
  self->_btPeripheralManager = 0;

LABEL_53:
  btPairedDevices = self->_btPairedDevices;
  self->_btPairedDevices = 0;

  self->_btPairedDevicesInitialized = 0;
  v27 = self->_btConnectedDevices;
  self->_btConnectedDevices = 0;
}

void __37__CUBluetoothClient__btEnsureStopped__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setDisconnectReason:4294896145];
  v9 = *(*(a1 + 32) + 224);
  if (*v9 <= 30)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "[CUBluetoothClient _btEnsureStopped]_block_invoke", 0x1Eu, "Device disconnected: %@\n", v5, v6, v7, v8, v4);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v9, 0x1Eu))
    {
      v9 = *(*(a1 + 32) + 224);
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CUBluetoothClient__btEnsureStopped__block_invoke_2;
    v12[3] = &unk_1E73A49A0;
    v14 = v10;
    v13 = v4;
    [v11 _externalInvokeBlock:v12];
  }
}

- (void)_btEnsureStarted
{
  v78[1] = *MEMORY[0x1E69E9840];
  if (!self->_btCentralManagerNeeded || self->_btCentralManager)
  {
    goto LABEL_11;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "CBCentralManager start\n", v2, v3, v4, v5, v68);
  }

LABEL_7:
  if ((self->_flags & 0x20) != 0)
  {
    v12 = getCBCentralManagerOptionShowPowerAlertKey();
    v77 = v12;
    v78[0] = MEMORY[0x1E695E110];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];

    v13 = objc_alloc(getCBCentralManagerClass_2043[0]());
    v14 = [(CUBluetoothClient *)self _internalDispatchQueue];
    v15 = [v13 initWithDelegate:self queue:v14 options:v9];
    btCentralManager = self->_btCentralManager;
    self->_btCentralManager = v15;
  }

  else
  {
    v8 = objc_alloc(getCBCentralManagerClass_2043[0]());
    v9 = [(CUBluetoothClient *)self _internalDispatchQueue];
    v10 = [v8 initWithDelegate:self queue:v9];
    v11 = self->_btCentralManager;
    self->_btCentralManager = v10;
  }

LABEL_11:
  if (!self->_btPeripheralManagerNeeded || self->_btPeripheralManager)
  {
    goto LABEL_22;
  }

  v17 = self->_ucat;
  if (v17->var0 <= 30)
  {
    if (v17->var0 != -1)
    {
LABEL_15:
      LogPrintF(v17, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "CBPeripheralManager start\n", v2, v3, v4, v5, v68);
      goto LABEL_17;
    }

    if (_LogCategory_Initialize(v17, 0x1Eu))
    {
      v17 = self->_ucat;
      goto LABEL_15;
    }
  }

LABEL_17:
  if ((self->_flags & 0x20) != 0)
  {
    v22 = getCBPeripheralManagerOptionShowPowerAlertKey();
    v75 = v22;
    v76 = MEMORY[0x1E695E110];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];

    v23 = objc_alloc(getCBPeripheralManagerClass_2045[0]());
    v21 = [(CUBluetoothClient *)self _internalDispatchQueue];
    v24 = [v23 initWithDelegate:self queue:v21 options:v19];
    btPeripheralManager = self->_btPeripheralManager;
    self->_btPeripheralManager = v24;
  }

  else
  {
    v18 = objc_alloc(getCBPeripheralManagerClass_2045[0]());
    v19 = [(CUBluetoothClient *)self _internalDispatchQueue];
    v20 = [v18 initWithDelegate:self queue:v19];
    v21 = self->_btPeripheralManager;
    self->_btPeripheralManager = v20;
  }

  if (self->_bluetoothAddressChangedHandler)
  {
    [(CBPeripheralManager *)self->_btPeripheralManager addObserver:self forKeyPath:@"advertisingAddress" options:0 context:0];
    [(CUBluetoothClient *)self _handleBluetoothAddressChanged];
  }

LABEL_22:
  if (!self->_btSessionNeeded || self->_btSessionAttaching || self->_btSession)
  {
LABEL_25:
    btSession = self->_btSession;
    if (!btSession)
    {
      goto LABEL_39;
    }

    if (!self->_btConnectionEventsNeeded || self->_btSessionAddedServiceCallback)
    {
LABEL_37:
      if (!self->_btLocalDevice)
      {
        v30 = (softLinkBTLocalDeviceGetDefault[0])(btSession, &self->_btLocalDevice);
        if (v30)
        {
          v45 = "BTLocalDeviceGetDefault failed";
          goto LABEL_117;
        }
      }

LABEL_39:
      if (!self->_btLocalDeviceAddrNeeded)
      {
        goto LABEL_48;
      }

      btLocalDevice = self->_btLocalDevice;
      if (!btLocalDevice || self->_btLocalDeviceAddr)
      {
        goto LABEL_48;
      }

      LOBYTE(v71) = 0;
      v30 = (softLinkBTLocalDeviceGetAddressString[0])(btLocalDevice, &v71, 32);
      if (v30)
      {
        v45 = "BTLocalDeviceGetAddressString failed";
      }

      else
      {
        v70 = 0;
        v69 = 0;
        v30 = (softLinkBTDeviceAddressFromString[0])(&v71, &v69);
        if (!v30)
        {
          v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v69 length:6];
          btLocalDeviceAddr = self->_btLocalDeviceAddr;
          self->_btLocalDeviceAddr = v34;

          v36 = self->_ucat;
          if (v36->var0 <= 30)
          {
            if (v36->var0 == -1)
            {
              if (!_LogCategory_Initialize(v36, 0x1Eu))
              {
                goto LABEL_48;
              }

              v36 = self->_ucat;
            }

            LogPrintF(v36, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "Bluetooth local address: %.6a\n", v2, v3, v4, v5, &v69);
          }

LABEL_48:
          if (!self->_btLocalDeviceCallbacksNeeded || self->_btLocalDeviceCallbacksRegistered || !self->_btLocalDevice)
          {
            goto LABEL_69;
          }

          v37 = self->_ucat;
          if (v37->var0 <= 30)
          {
            if (v37->var0 != -1)
            {
LABEL_53:
              LogPrintF(v37, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "BTLocalDeviceAddCallbacks\n", v2, v3, v4, v5, v68);
              goto LABEL_55;
            }

            if (_LogCategory_Initialize(v37, 0x1Eu))
            {
              v37 = self->_ucat;
              goto LABEL_53;
            }
          }

LABEL_55:
          self->_btLocalDeviceCallbacks.statusEvent = _btLocalDeviceStatusCallback;
          v38 = (softLinkBTLocalDeviceAddCallbacks[0])(self->_btLocalDevice, &self->_btLocalDeviceCallbacks, self);
          if (v38)
          {
            v39 = v38;
            v40 = self->_ucat;
            if (v40->var0 <= 60)
            {
              if (v40->var0 == -1)
              {
                if (!_LogCategory_Initialize(v40, 0x3Cu))
                {
                  goto LABEL_69;
                }

                v40 = self->_ucat;
              }

              LogPrintF(v40, "[CUBluetoothClient _btEnsureStarted]", 0x3Cu, "### BTLocalDeviceAddCallbacks failed: %#m\n", v2, v3, v4, v5, (v39 + 310000));
            }
          }

          else
          {
            self->_btLocalDeviceCallbacksRegistered = 1;
            [(CUBluetoothClient *)self _handlePairingStatusChanged];
          }

LABEL_69:
          if (!self->_btPairingAgentNeeded || self->_btPairingAgent || !self->_btSession)
          {
LABEL_78:
            if (!self->_btAccessoryEventsNeeded)
            {
              goto LABEL_98;
            }

            v54 = self->_btSession;
            if (!v54)
            {
              goto LABEL_98;
            }

            if (self->_btAccessoryManager)
            {
              goto LABEL_87;
            }

            v55 = (softLinkBTAccessoryManagerGetDefault[0])(v54, &self->_btAccessoryManager);
            if (v55)
            {
              v56 = v55;
              v57 = self->_ucat;
              if (v57->var0 <= 60)
              {
                if (v57->var0 != -1)
                {
LABEL_84:
                  LogPrintF(v57, "[CUBluetoothClient _btEnsureStarted]", 0x3Cu, "### BTAccessoryManagerGetDefault failed: %#m\n", v2, v3, v4, v5, (v56 + 310000));
                  goto LABEL_86;
                }

                if (_LogCategory_Initialize(v57, 0x3Cu))
                {
                  v57 = self->_ucat;
                  goto LABEL_84;
                }
              }
            }

LABEL_86:
            if (!self->_btAccessoryManager)
            {
              goto LABEL_98;
            }

LABEL_87:
            if (self->_btAccessoryEventsRegistered)
            {
              goto LABEL_98;
            }

            v58 = self->_ucat;
            if (v58->var0 <= 30)
            {
              if (v58->var0 != -1)
              {
LABEL_90:
                LogPrintF(v58, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "BTAccessoryManagerAddCallbacks\n", v2, v3, v4, v5, v68);
                goto LABEL_92;
              }

              if (_LogCategory_Initialize(v58, 0x1Eu))
              {
                v58 = self->_ucat;
                goto LABEL_90;
              }
            }

LABEL_92:
            self->_btAccessoryCallbacks.accessorySetupCommand = 0;
            self->_btAccessoryCallbacks.accessoryRelayMsgRecv = 0;
            self->_btAccessoryCallbacks.accessoryCommandStatus = 0;
            self->_btAccessoryCallbacks.accessoryEvent = _btAccessoryEventCallback;
            v59 = (softLinkBTAccessoryManagerAddCallbacks[0])(self->_btAccessoryManager, &self->_btAccessoryCallbacks, self);
            if (v59)
            {
              v64 = v59;
              v65 = self->_ucat;
              if (v65->var0 > 60)
              {
                goto LABEL_98;
              }

              if (v65->var0 != -1)
              {
                goto LABEL_95;
              }

              if (_LogCategory_Initialize(v65, 0x3Cu))
              {
                v65 = self->_ucat;
LABEL_95:
                LogPrintF(v65, "[CUBluetoothClient _btEnsureStarted]", 0x3Cu, "### BTAccessoryManagerAddCallbacks failed: %#m\n", v60, v61, v62, v63, (v64 + 310000));
              }
            }

            else
            {
              self->_btAccessoryEventsRegistered = 1;
            }

LABEL_98:
            if (self->_btConnectionEventsNeeded && !self->_btConnectionDevicesInitialized && self->_btLocalDevice && [(CBCentralManager *)self->_btCentralManager state]== 5)
            {
              [(CUBluetoothClient *)self _handleConnectedDevicesInit];
              self->_btConnectionDevicesInitialized = 1;
            }

            if (self->_btSession)
            {
              [(CUBluetoothClient *)self _processFindDeviceRequests];
            }

            goto LABEL_105;
          }

          v53 = self->_ucat;
          if (v53->var0 > 30)
          {
            goto LABEL_76;
          }

          if (v53->var0 == -1)
          {
            if (!_LogCategory_Initialize(v53, 0x1Eu))
            {
LABEL_76:
              v74 = 0;
              v72 = 0u;
              v73 = 0u;
              v71 = _btPairingAgentStatusCallback;
              v30 = (softLinkBTPairingAgentCreate[0])(self->_btSession, &v71, self, &self->_btPairingAgent);
              if (v30)
              {
                v45 = "BTPairingAgentCreate failed";
              }

              else
              {
                v30 = (softLinkBTPairingAgentStart[0])(self->_btPairingAgent);
                if (!v30)
                {
                  goto LABEL_78;
                }

                v45 = "BTPairingAgentStart failed";
              }

              goto LABEL_117;
            }

            v53 = self->_ucat;
          }

          LogPrintF(v53, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "BTPairingAgent start\n", v2, v3, v4, v5, v68);
          goto LABEL_76;
        }

        v45 = "BTDeviceAddressFromString failed";
      }

LABEL_117:
      v46 = v30 + 307200;
      goto LABEL_63;
    }

    v27 = self->_ucat;
    if (v27->var0 <= 30)
    {
      if (v27->var0 != -1)
      {
LABEL_30:
        LogPrintF(v27, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "BTServiceAddCallbacks\n", v2, v3, v4, v5, v68);
        goto LABEL_35;
      }

      if (_LogCategory_Initialize(v27, 0x1Eu))
      {
        v27 = self->_ucat;
        goto LABEL_30;
      }
    }

LABEL_35:
    v29 = (softLinkBTServiceAddCallbacks_2051[0])(self->_btSession, _btServiceEventHandler_2037, self);
    if (!v29)
    {
      self->_btSessionAddedServiceCallback = 1;
      btSession = self->_btSession;
      if (!btSession)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v66 = v29;
    v67 = self->_ucat;
    if (v67->var0 <= 60)
    {
      if (v67->var0 == -1)
      {
        if (!_LogCategory_Initialize(v67, 0x3Cu))
        {
          goto LABEL_105;
        }

        v67 = self->_ucat;
      }

      LogPrintF(v67, "[CUBluetoothClient _btEnsureStarted]", 0x3Cu, "### BTSession add service callbacks failed: %#m\n", v2, v3, v4, v5, (v66 + 310000));
    }

LABEL_105:
    v51 = 0;
    goto LABEL_106;
  }

  v28 = self->_ucat;
  if (v28->var0 <= 30)
  {
    if (v28->var0 != -1)
    {
LABEL_33:
      LogPrintF(v28, "[CUBluetoothClient _btEnsureStarted]", 0x1Eu, "BTSession attach\n", v2, v3, v4, v5, v68);
      goto LABEL_61;
    }

    if (_LogCategory_Initialize(v28, 0x1Eu))
    {
      v28 = self->_ucat;
      goto LABEL_33;
    }
  }

LABEL_61:
  v71 = _btSessionEventCallback_2069;
  v41 = self;

  var4 = self->_ucat->var4;
  v43 = [(CUBluetoothClient *)v41 _internalDispatchQueue];
  v44 = (softLinkBTSessionAttachWithQueue_2048[0])(var4, &v71, v41, v43);

  if (!v44)
  {
    self->_btSessionAttaching = 1;
    v41->_btSessionStarted = 1;
    goto LABEL_25;
  }

  CFRelease(v41);
  v45 = "BTSessionAttachWithQueue failed";
  v46 = v44 + 307200;
LABEL_63:
  v51 = NSErrorWithOSStatusF((v46 + 2800), v45, v31, v32, v2, v3, v4, v5, v68);
  if (v51)
  {
    v52 = self->_ucat;
    if (v52->var0 <= 60)
    {
      if (v52->var0 == -1)
      {
        if (!_LogCategory_Initialize(v52, 0x3Cu))
        {
          goto LABEL_106;
        }

        v52 = self->_ucat;
      }

      LogPrintF(v52, "[CUBluetoothClient _btEnsureStarted]", 0x3Cu, "### BTSession start failed: %{error}\n", v47, v48, v49, v50, v51);
    }
  }

LABEL_106:
}

- (void)_setDeviceFlags:(unsigned int)a3 mask:(unsigned int)a4 deviceID:(id)a5 completion:(id)a6
{
  v19 = a6;
  v16 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960561, "Not supported on this platform", v7, v8, v9, v10, v11, v18);
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothClient _setDeviceFlags:mask:deviceID:completion:]", 0x5Au, "### setDeviceFlags failed: %{error}", v12, v13, v14, v15, v16);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v19[2](v19, v16);
}

- (void)setDeviceFlags:(unsigned int)a3 mask:(unsigned int)a4 deviceID:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(CUBluetoothClient *)self _internalDispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__CUBluetoothClient_setDeviceFlags_mask_deviceID_completion___block_invoke;
  v15[3] = &unk_1E73A3938;
  v18 = a3;
  v19 = a4;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, v15);
}

- (void)_processFindDeviceRequests
{
  v61[2] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_findDeviceRequests firstObject];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      [(NSMutableArray *)self->_findDeviceRequests removeObjectAtIndex:0];
      if (!self->_invalidateCalled)
      {
        break;
      }

      v5 = [v4 completion];
      v12 = NSErrorWithOSStatusF(4294960573, "Invalidated", v6, v7, v8, v9, v10, v11, v51);
      v5[2](v5, 0, v12);
LABEL_19:

      v4 = [(NSMutableArray *)self->_findDeviceRequests firstObject];
      if (!v4)
      {
        return;
      }
    }

    v13 = [v4 address];
    v58 = v13;
    v59 = WORD2(v13);
    v5 = NSPrintF("%.6a", v14, v15, v16, v17, v18, v19, v20, &v58);
    v21 = [(CBCentralManager *)self->_btCentralManager retrievePeripheralWithAddress:v5];
    if (v21)
    {
      v12 = v21;
    }

    else
    {
      v22 = [v4 address];
      v56 = v22;
      v57 = WORD2(v22);
      v30 = NSPrintF("Random %.6a", v23, v24, v25, v26, v27, v28, v29, &v56);

      v31 = [(CBCentralManager *)self->_btCentralManager retrievePeripheralWithAddress:v30];
      if (!v31)
      {
        v12 = [v4 completion];
        v32 = NSErrorWithOSStatusF(4294960569, "Peripheral not found", v43, v44, v45, v46, v47, v48, v51);
        (v12)[2](v12, 0, v32);
        v5 = v30;
LABEL_18:

        goto LABEL_19;
      }

      v12 = v31;
      v5 = v30;
    }

    v32 = objc_alloc_init(CUBluetoothDevice);
    v33 = [v12 identifier];
    [(CUBluetoothDevice *)v32 setIdentifier:v33];
    v61[0] = 0;
    v61[1] = 0;
    [v33 getUUIDBytes:v61];
    v55 = 0;
    if ((softLinkBTDeviceFromIdentifier_2001[0])(self->_btSession, v61, &v55))
    {
      v40 = [v4 completion];
      v41 = 4294960588;
      v42 = "BTDevice not found";
    }

    else
    {
      v60[0] = 0;
      if ((softLinkBTDeviceGetAddressString_1961[0])(v55, v60, 32))
      {
        v40 = [v4 completion];
        v41 = 4294960535;
        v42 = "Get address string failed";
      }

      else
      {
        v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v60];
        [(CUBluetoothDevice *)v32 setAddressString:v49];

        v54 = 0;
        v53 = 0;
        if (!(softLinkBTDeviceAddressFromString[0])(v60, &v53))
        {
          v52 = v52 & 0xFFFF000000000000 | v53 | (v54 << 32);
          [(CUBluetoothDevice *)v32 setAddress:?];
          [(CUBluetoothClient *)self updateDevice:v32 btDevice:v55];
          v40 = [v4 completion];
          (v40)[2](v40, v32, 0);
          goto LABEL_17;
        }

        v40 = [v4 completion];
        v41 = 4294960535;
        v42 = "Get address failed";
      }
    }

    v50 = NSErrorWithOSStatusF(v41, v42, v34, v35, v36, v37, v38, v39, v51);
    (v40)[2](v40, 0, v50);

LABEL_17:
    goto LABEL_18;
  }
}

- (void)_findDeviceByAddress:(id)a3 completion:(id)a4
{
  v4 = *a3.var0;
  v6 = a4;
  v10 = objc_alloc_init(CUBluetoothFindDeviceRequest);
  [(CUBluetoothFindDeviceRequest *)v10 setAddress:v4 & 0xFFFFFFFFFFFFLL];
  [(CUBluetoothFindDeviceRequest *)v10 setCompletion:v6];

  findDeviceRequests = self->_findDeviceRequests;
  if (!findDeviceRequests)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_findDeviceRequests;
    self->_findDeviceRequests = v8;

    findDeviceRequests = self->_findDeviceRequests;
  }

  [(NSMutableArray *)findDeviceRequests addObject:v10];
  self->_btCentralManagerNeeded = 1;
  self->_btSessionNeeded = 1;
  [(CUBluetoothClient *)self _btEnsureStarted];
}

- (void)findDeviceByAddress:(id)a3 completion:(id)a4
{
  v4 = *a3.var0;
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CUBluetoothClient_findDeviceByAddress_completion___block_invoke;
  block[3] = &unk_1E73A2E30;
  v11 = v4;
  v12 = WORD2(v4);
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x32u))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothClient _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v2, v3, v4, v5, v22);
    }
  }

LABEL_7:
  if (self->_btPeripheralManager || self->_btPairingAgent || self->_btSession)
  {
    return;
  }

  bluetoothAddressChangedHandler = self->_bluetoothAddressChangedHandler;
  self->_bluetoothAddressChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  deviceConnectedHandler = self->_deviceConnectedHandler;
  self->_deviceConnectedHandler = 0;

  deviceDisconnectedHandler = self->_deviceDisconnectedHandler;
  self->_deviceDisconnectedHandler = 0;

  deviceEventHandler = self->_deviceEventHandler;
  self->_deviceEventHandler = 0;

  devicePairedHandler = self->_devicePairedHandler;
  self->_devicePairedHandler = 0;

  deviceUnpairedHandler = self->_deviceUnpairedHandler;
  self->_deviceUnpairedHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  v23 = _Block_copy(self->_invalidationHandler);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  if (v23)
  {
    [(CUBluetoothClient *)self _externalInvokeBlock:v23];
  }

  self->_invalidateDone = 1;
  v21 = self->_ucat;
  if (*v21 > 10)
  {
    goto LABEL_17;
  }

  if (*v21 == -1)
  {
    v21 = _LogCategory_Initialize(v21, 0xAu);
    if (!v21)
    {
      goto LABEL_17;
    }

    v21 = self->_ucat;
  }

  v21 = LogPrintF(v21, "[CUBluetoothClient _invalidated]", 0xAu, "Invalidated\n", v17, v18, v19, v20, v22);
LABEL_17:

  MEMORY[0x1EEE66BE0](v21);
}

- (void)invalidate
{
  v3 = [(CUBluetoothClient *)self _internalDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__CUBluetoothClient_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __31__CUBluetoothClient_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 216))
  {
    return result;
  }

  v16 = v8;
  v11 = result;
  *(v10 + 216) = 1;
  v12 = *(result + 32);
  v13 = v12[28];
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

      v13 = v12[28];
    }

    LogPrintF(v13, "[CUBluetoothClient invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:
  [v12 _processFindDeviceRequests];
  [*(v11 + 32) _btEnsureStopped];
  v15 = *(v11 + 32);

  return [v15 _invalidated];
}

- (void)_externalInvokeBlock:(id)a3
{
  block = a3;
  v4 = [(CUBluetoothClient *)self _internalDispatchQueue];
  dispatchQueue = self->_dispatchQueue;

  if (v4 == dispatchQueue)
  {
    block[2]();
  }

  else
  {
    dispatch_async(self->_dispatchQueue, block);
  }
}

- (void)activate
{
  v3 = [(CUBluetoothClient *)self _internalDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CUBluetoothClient_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __29__CUBluetoothClient_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 224);
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUBluetoothClient activate]_block_invoke", 0x1Eu, "Activate: %#{flags}, RS %#{flags}\n", a5, a6, a7, a8, *(v9 + 236));
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(*(v9 + 224), 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = *(v9 + 224);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (*(v9 + 264))
  {
    *(v9 + 40) = 1;
    v9 = *(a1 + 32);
  }

  if (*(v9 + 272))
  {
    *(v9 + 24) = 1;
    v9 = *(a1 + 32);
  }

  v12 = *(v9 + 236);
  if ((v12 & 0x18) != 0 || *(v9 + 280) || *(v9 + 288))
  {
    *(v9 + 24) = 1;
    *(*(a1 + 32) + 160) = 1;
    *(*(a1 + 32) + 40) = 1;
    *(*(a1 + 32) + 106) = 1;
    *(*(a1 + 32) + 41) = 1;
    v9 = *(a1 + 32);
  }

  if (*(v9 + 304) || *(v9 + 312))
  {
    *(v9 + 160) = 1;
    *(*(a1 + 32) + 40) = 1;
    *(*(a1 + 32) + 106) = 1;
    v9 = *(a1 + 32);
  }

  v13 = *(v9 + 236);
  if ((v13 & 2) != 0)
  {
    *(v9 + 24) = 1;
    *(*(a1 + 32) + 106) = 1;
    v9 = *(a1 + 32);
    v13 = *(v9 + 236);
    if ((v13 & 4) == 0)
    {
LABEL_18:
      if ((v13 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else if ((v13 & 4) == 0)
  {
    goto LABEL_18;
  }

  *(v9 + 24) = 1;
  v9 = *(a1 + 32);
  if ((*(v9 + 236) & 0x40) == 0)
  {
LABEL_19:
    if ((v12 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_26:
  *(v9 + 80) = 1;
  v9 = *(a1 + 32);
  if ((v12 & 8) != 0)
  {
LABEL_20:
    *(v9 + 80) = 1;
    v9 = *(a1 + 32);
  }

LABEL_21:

  return [v9 _btEnsureStarted];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE8A40;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (id)descriptionWithLevel:(int)a3
{
  v14 = 0;
  bluetoothState = self->_bluetoothState;
  if (bluetoothState > 0xA)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E73A3018[bluetoothState];
  }

  [(NSMutableDictionary *)self->_btConnectedDevices count];
  [(NSMutableDictionary *)self->_btPairedDevices count];
  NSAppendPrintF(&v14, "CUBluetoothClient: BT %s, Connected %d, FL %#{flags}, Paired %d, SF %#{flags}", v6, v7, v8, v9, v10, v11, v5);
  v12 = v14;

  return v12;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBluetoothClient;
  [(CUBluetoothClient *)&v4 dealloc];
}

- (CUBluetoothClient)init
{
  v4.receiver = self;
  v4.super_class = CUBluetoothClient;
  v2 = [(CUBluetoothClient *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_ucat = &gLogCategory_CUBluetoothClient;
  }

  return v2;
}

@end