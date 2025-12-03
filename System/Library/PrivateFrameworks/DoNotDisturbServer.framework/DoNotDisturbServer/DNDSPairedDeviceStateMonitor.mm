@interface DNDSPairedDeviceStateMonitor
- (DNDAccountFeatureSupport)accountFeatureSupport;
- (DNDSPairedDeviceStateMonitor)initWithLocalIDSService:(id)service cloudIDSService:(id)sService;
- (DNDSPairedDeviceStateMonitorDelegate)delegate;
- (id)_getCurrentPairedDevice;
- (id)pairedDeviceForDeviceIdentifier:(id)identifier;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_getCurrentPairedDevice;
- (void)_pairedDeviceStateChanged:(id)changed;
- (void)_queue_informDelegatesOfPairedStateChange;
- (void)_queue_updateCloudDevices;
- (void)_queue_updatePairedState;
- (void)dealloc;
- (void)resume;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
@end

@implementation DNDSPairedDeviceStateMonitor

- (void)_queue_updateCloudDevices
{
  v55 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  cloudDevices = [(DNDSPairedDeviceStateMonitor *)self cloudDevices];
  v42 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  devices = [(IDSService *)self->_cloudService devices];
  v4 = [devices countByEnumeratingWithState:&v46 objects:v54 count:16];
  v5 = &DNDSLogPairedDeviceState;
  if (v4)
  {
    v6 = v4;
    v7 = *v47;
    v43 = *v47;
    do
    {
      v8 = 0;
      v45 = v6;
      do
      {
        if (*v47 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v46 + 1) + 8 * v8);
        if ([v9 isLocallyPaired] && objc_msgSend(v9, "isActive"))
        {
          v10 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v9;
            _os_log_impl(&dword_24912E000, v10, OS_LOG_TYPE_INFO, "Ignoring paired device on cloud channel. %@", buf, 0xCu);
          }

          pairedDevice = [(DNDSPairedDeviceStateMonitor *)selfCopy pairedDevice];
          [pairedDevice setICloudEnabled:1];
        }

        else
        {
          _dnds_pairedDeviceClass = [v9 _dnds_pairedDeviceClass];
          if (!_dnds_pairedDeviceClass)
          {
            v20 = *v5;
            if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            *buf = 138543362;
            v51 = v9;
            v18 = v20;
            v19 = "Device class was invalid: device=%{public}@";
            goto LABEL_21;
          }

          v13 = _dnds_pairedDeviceClass;
          _dnds_assertionSyncProtocolVersion = [v9 _dnds_assertionSyncProtocolVersion];
          _dnds_configurationSyncProtocolVersion = [v9 _dnds_configurationSyncProtocolVersion];
          if (_dnds_assertionSyncProtocolVersion)
          {
            v16 = _dnds_configurationSyncProtocolVersion == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = *v5;
            if (!os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_25;
            }

            *buf = 138543362;
            v51 = v9;
            v18 = v17;
            v19 = "Device protocol version was invalid: device=%{public}@";
LABEL_21:
            _os_log_error_impl(&dword_24912E000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
            goto LABEL_25;
          }

          v21 = _dnds_configurationSyncProtocolVersion;
          v22 = devices;
          v23 = v5;
          _dnds_supportsSilenceLists = [v9 _dnds_supportsSilenceLists];
          v25 = [DNDSPairedDevice alloc];
          uniqueIDOverride = [v9 uniqueIDOverride];
          v27 = [(DNDSPairedDevice *)v25 initWithCloudDeviceIdentifier:uniqueIDOverride deviceClass:v13 assertionSyncProtocolVersion:_dnds_assertionSyncProtocolVersion configurationSyncProtocolVersion:v21 supportsSilenceLists:_dnds_supportsSilenceLists];

          name = [v9 name];
          [(DNDSPairedDevice *)v27 setDeviceName:name];

          productBuildVersion = [v9 productBuildVersion];
          [(DNDSPairedDevice *)v27 setOsBuild:productBuildVersion];

          if (v27)
          {
            [v42 addObject:v27];
          }

          v5 = v23;
          devices = v22;
          v7 = v43;
          v6 = v45;
        }

LABEL_25:
        ++v8;
      }

      while (v6 != v8);
      v6 = [devices countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v6);
  }

  if ([v42 isEqualToSet:cloudDevices])
  {
    v30 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = cloudDevices;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "No change in cloud devices.\n %@", buf, 0xCu);
    }
  }

  else
  {
    if ([cloudDevices count])
    {
      v31 = [MEMORY[0x277CBEB58] setWithSet:v42];
      [v31 minusSet:cloudDevices];
      v32 = [MEMORY[0x277CBEB58] setWithSet:cloudDevices];
      [v32 minusSet:v42];
      if ([v31 count] || objc_msgSend(v32, "count"))
      {
        v33 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          allObjects = [v31 allObjects];
          allObjects2 = [v32 allObjects];
          *buf = 138412546;
          v51 = allObjects;
          v52 = 2112;
          v53 = allObjects2;
          _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Cloud devices added: %@. Removed: %@", buf, 0x16u);
        }
      }

      else
      {
        v38 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          [(DNDSPairedDeviceStateMonitor *)v38 _queue_updateCloudDevices];
        }
      }
    }

    else
    {
      v37 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v42;
        _os_log_impl(&dword_24912E000, v37, OS_LOG_TYPE_DEFAULT, "Cloud devices initalized. Devices: %@", buf, 0xCu);
      }
    }

    [(DNDSPairedDeviceStateMonitor *)selfCopy setCloudDevices:v42];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained pairedDeviceStateMonitor:selfCopy cloudPairingChangedFromDevices:cloudDevices toDevices:v42];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (DNDSPairedDeviceStateMonitor)initWithLocalIDSService:(id)service cloudIDSService:(id)sService
{
  serviceCopy = service;
  sServiceCopy = sService;
  v18.receiver = self;
  v18.super_class = DNDSPairedDeviceStateMonitor;
  v9 = [(DNDSPairedDeviceStateMonitor *)&v18 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.donotdisturb.server.PairedDeviceStateMonitor", v10);
    v12 = *(v9 + 2);
    *(v9 + 2) = v11;

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 2));
    v14 = *(v9 + 1);
    *(v9 + 1) = v13;

    objc_storeStrong(v9 + 3, service);
    objc_storeStrong(v9 + 4, sService);
    v15 = [MEMORY[0x277CBEB98] set];
    v16 = *(v9 + 8);
    *(v9 + 8) = v15;

    DNDSRegisterSysdiagnoseDataProvider(v9);
  }

  return v9;
}

- (void)dealloc
{
  [(DNDSPairedDeviceStateMonitor *)self _endMonitoringForChanges];
  DNDSUnregisterSysdiagnoseDataProvider(self);
  v3.receiver = self;
  v3.super_class = DNDSPairedDeviceStateMonitor;
  [(DNDSPairedDeviceStateMonitor *)&v3 dealloc];
}

- (void)resume
{
  coalescingTimer = self->_coalescingTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __38__DNDSPairedDeviceStateMonitor_resume__block_invoke;
  handler[3] = &unk_278F89ED0;
  handler[4] = self;
  dispatch_source_set_event_handler(coalescingTimer, handler);
  dispatch_source_set_timer(self->_coalescingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_resume(self->_coalescingTimer);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__DNDSPairedDeviceStateMonitor_resume__block_invoke_2;
  v5[3] = &unk_278F89ED0;
  v5[4] = self;
  dispatch_async(queue, v5);
}

uint64_t __38__DNDSPairedDeviceStateMonitor_resume__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _beginMonitoringForChanges];
  [*(a1 + 32) _queue_updatePairedState];
  v2 = *(a1 + 32);

  return [v2 _queue_updateCloudDevices];
}

- (DNDAccountFeatureSupport)accountFeatureSupport
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSSet *)self->_cloudDevices count];
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_cloudDevices;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = 1;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v15 + 1) + 8 * i) supportsSilenceLists])
          {
            v8 = 0;
            goto LABEL_14;
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_14:
  }

  else
  {
    v8 = 1;
  }

  pairedDevice = self->_pairedDevice;
  if (pairedDevice)
  {
    supportsSilenceLists = [(DNDSPairedDevice *)pairedDevice supportsSilenceLists];
  }

  else
  {
    supportsSilenceLists = 1;
  }

  v12 = [MEMORY[0x277D05890] accountFeaturesWithCloud:v8 hasCloudDevices:v3 != 0 paired:supportsSilenceLists hasPairedDevices:pairedDevice != 0];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)pairedDeviceForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cloudDevices = [(DNDSPairedDeviceStateMonitor *)self cloudDevices];
  allObjects = [cloudDevices allObjects];
  v7 = allObjects;
  v8 = MEMORY[0x277CBEBF8];
  if (allObjects)
  {
    v8 = allObjects;
  }

  v9 = v8;

  pairedDevice = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];

  if (pairedDevice)
  {
    pairedDevice2 = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
    v12 = [v9 arrayByAddingObject:pairedDevice2];

    v9 = v12;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__DNDSPairedDeviceStateMonitor_pairedDeviceForDeviceIdentifier___block_invoke;
  v17[3] = &unk_278F8B0A8;
  v13 = identifierCopy;
  v18 = v13;
  v14 = [v9 bs_firstObjectPassingTest:v17];
  if (!v14)
  {
    v15 = DNDSLogPairedDeviceState;
    if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
    {
      [(DNDSPairedDeviceStateMonitor *)v13 pairedDeviceForDeviceIdentifier:v9, v15];
    }
  }

  return v14;
}

uint64_t __64__DNDSPairedDeviceStateMonitor_pairedDeviceForDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_queue_updatePairedState
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  pairedDevice = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
  _getCurrentPairedDevice = [(DNDSPairedDeviceStateMonitor *)self _getCurrentPairedDevice];
  v5 = _getCurrentPairedDevice;
  if (pairedDevice != _getCurrentPairedDevice && (!pairedDevice || !_getCurrentPairedDevice || ([pairedDevice isEqual:_getCurrentPairedDevice] & 1) == 0))
  {
    [(DNDSPairedDeviceStateMonitor *)self setPairedDevice:v5];
    previousPairedDevice = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];

    if (!previousPairedDevice)
    {
      [(DNDSPairedDeviceStateMonitor *)self setPreviousPairedDevice:pairedDevice];
    }

    previousPairedDevice2 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v9 = previousPairedDevice2;
    if (previousPairedDevice2 == v5)
    {
    }

    else
    {
      previousPairedDevice3 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
      v11 = previousPairedDevice3;
      if (!v5 || !previousPairedDevice3)
      {

LABEL_19:
        v18 = DNDSLogPairedDeviceState;
        if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
        {
          v19 = MEMORY[0x277CCABB0];
          v20 = v18;
          v21 = [v19 numberWithLongLong:2];
          v24 = 138543874;
          v25 = pairedDevice;
          v26 = 2114;
          v27 = v5;
          v28 = 2112;
          v29 = v21;
          _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Paired device state changed: from=%{public}@, to=%{public}@; waiting to coalesce for %@s", &v24, 0x20u);
        }

        coalescingTimer = self->_coalescingTimer;
        v16 = dispatch_walltime(0, 2000000000);
        v15 = coalescingTimer;
        v17 = 1000000000;
LABEL_22:
        dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, v17);
        goto LABEL_23;
      }

      previousPairedDevice4 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
      v13 = [previousPairedDevice4 isEqual:v5];

      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v14 = DNDSLogPairedDeviceState;
    if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543362;
      v25 = v5;
      _os_log_impl(&dword_24912E000, v14, OS_LOG_TYPE_DEFAULT, "Paired device state returned to previously-paired device. Cancelling delegate callbacks. device=%{public}@", &v24, 0xCu);
    }

    [(DNDSPairedDeviceStateMonitor *)self setPreviousPairedDevice:0];
    v15 = self->_coalescingTimer;
    v16 = -1;
    v17 = -1;
    goto LABEL_22;
  }

  v6 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543362;
    v25 = pairedDevice;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "Paired device did not change: current=%{public}@", &v24, 0xCu);
  }

LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_queue_informDelegatesOfPairedStateChange
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  dispatch_suspend(self->_coalescingTimer);
  previousPairedDevice = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
  pairedDevice = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
  previousPairedDevice2 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
  v6 = previousPairedDevice2;
  if (previousPairedDevice2 == pairedDevice)
  {
  }

  else
  {
    previousPairedDevice3 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v8 = previousPairedDevice3;
    if (!previousPairedDevice3 || !pairedDevice)
    {

LABEL_10:
      v12 = DNDSLogPairedDeviceState;
      if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = previousPairedDevice;
        v17 = 2114;
        v18 = pairedDevice;
        _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Informing delegates of coalesced paired device state changed: from=%{public}@, to=%{public}@", &v15, 0x16u);
      }

      delegate = [(DNDSPairedDeviceStateMonitor *)self delegate];
      [delegate pairedDeviceStateMonitor:self pairingChangedFromDevice:previousPairedDevice toDevice:pairedDevice];

      goto LABEL_13;
    }

    previousPairedDevice4 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v10 = [previousPairedDevice4 isEqual:pairedDevice];

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v11 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = pairedDevice;
    _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring paired device state; coalesced back to the original device: %{public}@", &v15, 0xCu);
  }

LABEL_13:
  [(DNDSPairedDeviceStateMonitor *)self setPreviousPairedDevice:0];
  dispatch_resume(self->_coalescingTimer);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_getCurrentPairedDevice
{
  v65 = *MEMORY[0x277D85DE8];
  currentDevice = [MEMORY[0x277D058F8] currentDevice];
  deviceClass = [currentDevice deviceClass];

  if (deviceClass != 1)
  {
    v21 = 0;
    goto LABEL_54;
  }

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  selfCopy = self;
  [(IDSService *)self->_localService devices];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v47 = mEMORY[0x277D2BCF8];
    v7 = *v56;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v56 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v55 + 1) + 8 * v8);
      if ([v9 isLocallyPaired])
      {
        if ([v9 isActive])
        {
          break;
        }
      }

      v10 = DNDSLogPairedDeviceState;
      if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        isConnected = [v9 isConnected];
        isActive = [v9 isActive];
        isCloudConnected = [v9 isCloudConnected];
        *buf = 67109890;
        *v60 = isConnected;
        *&v60[4] = 1024;
        *&v60[6] = isActive;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = isCloudConnected;
        HIWORD(v61) = 2114;
        *v62 = 0;
        _os_log_impl(&dword_24912E000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring device: isConnected=%{BOOL}d, isActive=%{BOOL}d, isCloudConnected:%{BOOL}d, device=%{public}@", buf, 0x1Eu);
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v6)
        {
          goto LABEL_4;
        }

        _dnds_isIOS14EraOS = 0;
        _dnds_configurationSyncProtocolVersion = 0;
        _dnds_assertionSyncProtocolVersion = 0;
        _dnds_pairedDeviceClass = 0;
        productBuildVersion = 0;
        uniqueIDOverride = 0;
        _dnds_supportsSilenceLists = 1;
        mEMORY[0x277D2BCF8] = v47;
        goto LABEL_28;
      }
    }

    mEMORY[0x277D2BCF8] = v47;
    v22 = [v47 deviceForIDSDevice:v9];
    if (!v22)
    {
      v26 = DNDSLogPairedDeviceState;
      if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
      {
        [(DNDSPairedDeviceStateMonitor *)v9 _getCurrentPairedDevice];
      }

      _dnds_isIOS14EraOS = 0;
      _dnds_configurationSyncProtocolVersion = 0;
      _dnds_assertionSyncProtocolVersion = 0;
      _dnds_pairedDeviceClass = 0;
      productBuildVersion = 0;
      uniqueIDOverride = 0;
      v6 = 0;
      goto LABEL_27;
    }

    v6 = v22;
    isConnected2 = [v9 isConnected];
    v24 = DNDSLogPairedDeviceState;
    v25 = os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT);
    if (isConnected2)
    {
      if (v25)
      {
        *buf = 138412290;
        *v60 = v9;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Found active paired device: %@", buf, 0xCu);
      }

      _dnds_assertionSyncProtocolVersion = [v9 _dnds_assertionSyncProtocolVersion];
      _dnds_configurationSyncProtocolVersion = [v9 _dnds_configurationSyncProtocolVersion];
      productBuildVersion = [v9 productBuildVersion];
      _dnds_isIOS14EraOS = [v9 _dnds_isIOS14EraOS];
      if (_dnds_isIOS14EraOS)
      {
        _dnds_supportsSilenceLists = 0;
      }

      else
      {
        _dnds_supportsSilenceLists = [v9 _dnds_supportsSilenceLists];
      }

      uniqueIDOverride = [v9 uniqueIDOverride];
      _dnds_pairedDeviceClass = [v9 _dnds_pairedDeviceClass];
      goto LABEL_28;
    }

    if (v25)
    {
      *buf = 138412290;
      *v60 = v9;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Ignoring unconnected active paired device: %@", buf, 0xCu);
    }
  }

  _dnds_isIOS14EraOS = 0;
  _dnds_configurationSyncProtocolVersion = 0;
  _dnds_assertionSyncProtocolVersion = 0;
  _dnds_pairedDeviceClass = 0;
  productBuildVersion = 0;
  uniqueIDOverride = 0;
LABEL_27:
  _dnds_supportsSilenceLists = 1;
LABEL_28:

  v27 = [v6 valueForProperty:*MEMORY[0x277D2BBB8]];
  v28 = [v6 valueForProperty:*MEMORY[0x277D2BB60]];
  v49 = [v6 valueForProperty:*MEMORY[0x277D2BBA8]];
  if (_dnds_pairedDeviceClass && _dnds_assertionSyncProtocolVersion && _dnds_configurationSyncProtocolVersion)
  {
    if (v27 && v28)
    {
      v42 = _dnds_pairedDeviceClass;
      v43 = _dnds_isIOS14EraOS;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      devices = [(IDSService *)selfCopy->_cloudService devices];
      v30 = [devices countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v30)
      {
        v40 = _dnds_configurationSyncProtocolVersion;
        v41 = _dnds_assertionSyncProtocolVersion;
        v46 = productBuildVersion;
        v48 = mEMORY[0x277D2BCF8];
        v31 = *v52;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(devices);
            }

            uniqueIDOverride2 = [*(*(&v51 + 1) + 8 * i) uniqueIDOverride];
            v34 = [uniqueIDOverride2 isEqual:uniqueIDOverride];

            if (v34)
            {
              v30 = 1;
              goto LABEL_50;
            }
          }

          v30 = [devices countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_50:
        productBuildVersion = v46;
        mEMORY[0x277D2BCF8] = v48;
        _dnds_configurationSyncProtocolVersion = v40;
        _dnds_assertionSyncProtocolVersion = v41;
      }

      v21 = [[DNDSPairedDevice alloc] initWithLocalDeviceIdentifier:uniqueIDOverride deviceClass:v42 assertionSyncProtocolVersion:_dnds_assertionSyncProtocolVersion configurationSyncProtocolVersion:_dnds_configurationSyncProtocolVersion iOS14EraOS:v43 supportsSilenceLists:_dnds_supportsSilenceLists pairingIdentifier:v27 pairingDataStore:v28];
      v36 = v49;
      [(DNDSPairedDevice *)v21 setDeviceName:v49];
      [(DNDSPairedDevice *)v21 setOsBuild:productBuildVersion];
      if (_dnds_assertionSyncProtocolVersion >= 9)
      {
        [(DNDSPairedDevice *)v21 setICloudEnabled:v30];
      }

      goto LABEL_53;
    }

    v37 = DNDSLogPairedDeviceState;
    if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v60 = v6;
      *&v60[8] = 2114;
      v61 = v27;
      *v62 = 2114;
      *&v62[2] = v28;
      _os_log_error_impl(&dword_24912E000, v37, OS_LOG_TYPE_ERROR, "Pairing ID and data store of current watch was invalid; device=%{public}@, pairingID=%{public}@, pairingDataStore=%{public}@", buf, 0x20u);
    }
  }

  else if (v6)
  {
    v35 = DNDSLogPairedDeviceState;
    v36 = v49;
    if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
    {
      [(DNDSPairedDeviceStateMonitor *)v6 _getCurrentPairedDevice];
    }

    v21 = 0;
    goto LABEL_53;
  }

  v21 = 0;
  v36 = v49;
LABEL_53:

LABEL_54:
  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_beginMonitoringForChanges
{
  [(IDSService *)self->_localService addDelegate:self queue:self->_queue];
  [(IDSService *)self->_cloudService addDelegate:self queue:self->_queue];
  objc_initWeak(&location, self);
  uTF8String = [*MEMORY[0x277D2BCA0] UTF8String];
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__DNDSPairedDeviceStateMonitor__beginMonitoringForChanges__block_invoke;
  v5[3] = &unk_278F8B600;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(uTF8String, &self->_pairedDeviceDidChangeNotificationToken, queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__DNDSPairedDeviceStateMonitor__beginMonitoringForChanges__block_invoke(uint64_t a1)
{
  v2 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Paired watch updated, will check for pairing change", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updatePairedState];
}

- (void)_endMonitoringForChanges
{
  [(IDSService *)self->_localService removeDelegate:self];
  [(IDSService *)self->_cloudService removeDelegate:self];
  pairedDeviceDidChangeNotificationToken = self->_pairedDeviceDidChangeNotificationToken;
  if (pairedDeviceDidChangeNotificationToken != -1)
  {

    notify_cancel(pairedDeviceDidChangeNotificationToken);
  }
}

- (void)_pairedDeviceStateChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DNDSPairedDeviceStateMonitor__pairedDeviceStateChanged___block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __58__DNDSPairedDeviceStateMonitor__pairedDeviceStateChanged___block_invoke(uint64_t a1)
{
  v2 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24912E000, v2, OS_LOG_TYPE_DEFAULT, "Paired device state updated, will check for pairing change", v4, 2u);
  }

  return [*(a1 + 32) _queue_updatePairedState];
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  v8 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = changedCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Nearby devices changed, devices=%{public}@", &v10, 0xCu);
  }

  if ([serviceCopy isEqual:self->_localService])
  {
    [(DNDSPairedDeviceStateMonitor *)self _queue_updatePairedState];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  changedCopy = changed;
  v8 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = changedCopy;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Devices changed, devices=%{public}@", &v10, 0xCu);
  }

  if ([serviceCopy isEqual:self->_cloudService])
  {
    [(DNDSPairedDeviceStateMonitor *)self _queue_updateCloudDevices];
  }

  else if ([serviceCopy isEqual:self->_localService])
  {
    [(DNDSPairedDeviceStateMonitor *)self _queue_updatePairedState];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (DNDSPairedDeviceStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)pairedDeviceForDeviceIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24912E000, log, OS_LOG_TYPE_ERROR, "Unable to find device with ID %@. Devices: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentPairedDevice
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Device class or sync protocol was invalid: device=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end