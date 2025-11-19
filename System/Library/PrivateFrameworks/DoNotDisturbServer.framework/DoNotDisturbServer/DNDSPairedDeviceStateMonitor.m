@interface DNDSPairedDeviceStateMonitor
- (DNDAccountFeatureSupport)accountFeatureSupport;
- (DNDSPairedDeviceStateMonitor)initWithLocalIDSService:(id)a3 cloudIDSService:(id)a4;
- (DNDSPairedDeviceStateMonitorDelegate)delegate;
- (id)_getCurrentPairedDevice;
- (id)pairedDeviceForDeviceIdentifier:(id)a3;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_getCurrentPairedDevice;
- (void)_pairedDeviceStateChanged:(id)a3;
- (void)_queue_informDelegatesOfPairedStateChange;
- (void)_queue_updateCloudDevices;
- (void)_queue_updatePairedState;
- (void)dealloc;
- (void)resume;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
@end

@implementation DNDSPairedDeviceStateMonitor

- (void)_queue_updateCloudDevices
{
  v55 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v41 = [(DNDSPairedDeviceStateMonitor *)self cloudDevices];
  v42 = [MEMORY[0x277CBEB58] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44 = self;
  v3 = [(IDSService *)self->_cloudService devices];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(v3);
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

          v11 = [(DNDSPairedDeviceStateMonitor *)v44 pairedDevice];
          [v11 setICloudEnabled:1];
        }

        else
        {
          v12 = [v9 _dnds_pairedDeviceClass];
          if (!v12)
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

          v13 = v12;
          v14 = [v9 _dnds_assertionSyncProtocolVersion];
          v15 = [v9 _dnds_configurationSyncProtocolVersion];
          if (v14)
          {
            v16 = v15 == 0;
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

          v21 = v15;
          v22 = v3;
          v23 = v5;
          v24 = [v9 _dnds_supportsSilenceLists];
          v25 = [DNDSPairedDevice alloc];
          v26 = [v9 uniqueIDOverride];
          v27 = [(DNDSPairedDevice *)v25 initWithCloudDeviceIdentifier:v26 deviceClass:v13 assertionSyncProtocolVersion:v14 configurationSyncProtocolVersion:v21 supportsSilenceLists:v24];

          v28 = [v9 name];
          [(DNDSPairedDevice *)v27 setDeviceName:v28];

          v29 = [v9 productBuildVersion];
          [(DNDSPairedDevice *)v27 setOsBuild:v29];

          if (v27)
          {
            [v42 addObject:v27];
          }

          v5 = v23;
          v3 = v22;
          v7 = v43;
          v6 = v45;
        }

LABEL_25:
        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v6);
  }

  if ([v42 isEqualToSet:v41])
  {
    v30 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v41;
      _os_log_impl(&dword_24912E000, v30, OS_LOG_TYPE_DEFAULT, "No change in cloud devices.\n %@", buf, 0xCu);
    }
  }

  else
  {
    if ([v41 count])
    {
      v31 = [MEMORY[0x277CBEB58] setWithSet:v42];
      [v31 minusSet:v41];
      v32 = [MEMORY[0x277CBEB58] setWithSet:v41];
      [v32 minusSet:v42];
      if ([v31 count] || objc_msgSend(v32, "count"))
      {
        v33 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          v35 = [v31 allObjects];
          v36 = [v32 allObjects];
          *buf = 138412546;
          v51 = v35;
          v52 = 2112;
          v53 = v36;
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

    [(DNDSPairedDeviceStateMonitor *)v44 setCloudDevices:v42];
    WeakRetained = objc_loadWeakRetained(&v44->_delegate);
    [WeakRetained pairedDeviceStateMonitor:v44 cloudPairingChangedFromDevices:v41 toDevices:v42];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (DNDSPairedDeviceStateMonitor)initWithLocalIDSService:(id)a3 cloudIDSService:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(v9 + 3, a3);
    objc_storeStrong(v9 + 4, a4);
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
    v11 = [(DNDSPairedDevice *)pairedDevice supportsSilenceLists];
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277D05890] accountFeaturesWithCloud:v8 hasCloudDevices:v3 != 0 paired:v11 hasPairedDevices:pairedDevice != 0];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)pairedDeviceForDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DNDSPairedDeviceStateMonitor *)self cloudDevices];
  v6 = [v5 allObjects];
  v7 = v6;
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];

  if (v10)
  {
    v11 = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
    v12 = [v9 arrayByAddingObject:v11];

    v9 = v12;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__DNDSPairedDeviceStateMonitor_pairedDeviceForDeviceIdentifier___block_invoke;
  v17[3] = &unk_278F8B0A8;
  v13 = v4;
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
  v3 = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
  v4 = [(DNDSPairedDeviceStateMonitor *)self _getCurrentPairedDevice];
  v5 = v4;
  if (v3 != v4 && (!v3 || !v4 || ([v3 isEqual:v4] & 1) == 0))
  {
    [(DNDSPairedDeviceStateMonitor *)self setPairedDevice:v5];
    v7 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];

    if (!v7)
    {
      [(DNDSPairedDeviceStateMonitor *)self setPreviousPairedDevice:v3];
    }

    v8 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v9 = v8;
    if (v8 == v5)
    {
    }

    else
    {
      v10 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
      v11 = v10;
      if (!v5 || !v10)
      {

LABEL_19:
        v18 = DNDSLogPairedDeviceState;
        if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
        {
          v19 = MEMORY[0x277CCABB0];
          v20 = v18;
          v21 = [v19 numberWithLongLong:2];
          v24 = 138543874;
          v25 = v3;
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

      v12 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
      v13 = [v12 isEqual:v5];

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
    v25 = v3;
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
  v3 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
  v4 = [(DNDSPairedDeviceStateMonitor *)self pairedDevice];
  v5 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v8 = v7;
    if (!v7 || !v4)
    {

LABEL_10:
      v12 = DNDSLogPairedDeviceState;
      if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = v3;
        v17 = 2114;
        v18 = v4;
        _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Informing delegates of coalesced paired device state changed: from=%{public}@, to=%{public}@", &v15, 0x16u);
      }

      v13 = [(DNDSPairedDeviceStateMonitor *)self delegate];
      [v13 pairedDeviceStateMonitor:self pairingChangedFromDevice:v3 toDevice:v4];

      goto LABEL_13;
    }

    v9 = [(DNDSPairedDeviceStateMonitor *)self previousPairedDevice];
    v10 = [v9 isEqual:v4];

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v11 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
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
  v3 = [MEMORY[0x277D058F8] currentDevice];
  v4 = [v3 deviceClass];

  if (v4 != 1)
  {
    v21 = 0;
    goto LABEL_54;
  }

  v5 = [MEMORY[0x277D2BCF8] sharedInstance];
  v45 = self;
  [(IDSService *)self->_localService devices];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v58 = 0u;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v47 = v5;
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
        v12 = [v9 isConnected];
        v13 = [v9 isActive];
        v14 = [v9 isCloudConnected];
        *buf = 67109890;
        *v60 = v12;
        *&v60[4] = 1024;
        *&v60[6] = v13;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = v14;
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

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v44 = 1;
        v5 = v47;
        goto LABEL_28;
      }
    }

    v5 = v47;
    v22 = [v47 deviceForIDSDevice:v9];
    if (!v22)
    {
      v26 = DNDSLogPairedDeviceState;
      if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_ERROR))
      {
        [(DNDSPairedDeviceStateMonitor *)v9 _getCurrentPairedDevice];
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v6 = 0;
      goto LABEL_27;
    }

    v6 = v22;
    v23 = [v9 isConnected];
    v24 = DNDSLogPairedDeviceState;
    v25 = os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        *buf = 138412290;
        *v60 = v9;
        _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Found active paired device: %@", buf, 0xCu);
      }

      v17 = [v9 _dnds_assertionSyncProtocolVersion];
      v16 = [v9 _dnds_configurationSyncProtocolVersion];
      v19 = [v9 productBuildVersion];
      v15 = [v9 _dnds_isIOS14EraOS];
      if (v15)
      {
        v44 = 0;
      }

      else
      {
        v44 = [v9 _dnds_supportsSilenceLists];
      }

      v20 = [v9 uniqueIDOverride];
      v18 = [v9 _dnds_pairedDeviceClass];
      goto LABEL_28;
    }

    if (v25)
    {
      *buf = 138412290;
      *v60 = v9;
      _os_log_impl(&dword_24912E000, v24, OS_LOG_TYPE_DEFAULT, "Ignoring unconnected active paired device: %@", buf, 0xCu);
    }
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_27:
  v44 = 1;
LABEL_28:

  v27 = [v6 valueForProperty:*MEMORY[0x277D2BBB8]];
  v28 = [v6 valueForProperty:*MEMORY[0x277D2BB60]];
  v49 = [v6 valueForProperty:*MEMORY[0x277D2BBA8]];
  if (v18 && v17 && v16)
  {
    if (v27 && v28)
    {
      v42 = v18;
      v43 = v15;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v29 = [(IDSService *)v45->_cloudService devices];
      v30 = [v29 countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v30)
      {
        v40 = v16;
        v41 = v17;
        v46 = v19;
        v48 = v5;
        v31 = *v52;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = [*(*(&v51 + 1) + 8 * i) uniqueIDOverride];
            v34 = [v33 isEqual:v20];

            if (v34)
            {
              v30 = 1;
              goto LABEL_50;
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_50:
        v19 = v46;
        v5 = v48;
        v16 = v40;
        v17 = v41;
      }

      v21 = [[DNDSPairedDevice alloc] initWithLocalDeviceIdentifier:v20 deviceClass:v42 assertionSyncProtocolVersion:v17 configurationSyncProtocolVersion:v16 iOS14EraOS:v43 supportsSilenceLists:v44 pairingIdentifier:v27 pairingDataStore:v28];
      v36 = v49;
      [(DNDSPairedDevice *)v21 setDeviceName:v49];
      [(DNDSPairedDevice *)v21 setOsBuild:v19];
      if (v17 >= 9)
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
  v3 = [*MEMORY[0x277D2BCA0] UTF8String];
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__DNDSPairedDeviceStateMonitor__beginMonitoringForChanges__block_invoke;
  v5[3] = &unk_278F8B600;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch(v3, &self->_pairedDeviceDidChangeNotificationToken, queue, v5);
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

- (void)_pairedDeviceStateChanged:(id)a3
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

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Nearby devices changed, devices=%{public}@", &v10, 0xCu);
  }

  if ([v6 isEqual:self->_localService])
  {
    [(DNDSPairedDeviceStateMonitor *)self _queue_updatePairedState];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DNDSLogPairedDeviceState;
  if (os_log_type_enabled(DNDSLogPairedDeviceState, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Devices changed, devices=%{public}@", &v10, 0xCu);
  }

  if ([v6 isEqual:self->_cloudService])
  {
    [(DNDSPairedDeviceStateMonitor *)self _queue_updateCloudDevices];
  }

  else if ([v6 isEqual:self->_localService])
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
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Device class or sync protocol was invalid: device=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end