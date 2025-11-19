@interface CAMPeopleProximityDeviceScanner
- (CAMPeopleProximityDeviceScanner)initWithQueue:(id)a3 delegate:(id)a4;
- (CAMPeopleProximityScannerDelegate)delegate;
- (void)_queue_discoveryActivatedWithError:(id)a3 sessionID:(unsigned int)a4;
- (void)_queue_discoveryDeviceFound:(id)a3 sessionID:(unsigned int)a4;
- (void)_queue_discoveryDeviceLost:(id)a3 sessionID:(unsigned int)a4;
- (void)_queue_discoveryInterruptedWithPeopleDiscoverySessionID:(unsigned int)a3;
- (void)_queue_discoveryTimeoutForSessionID:(unsigned int)a3;
- (void)dealloc;
- (void)startDiscoveryWithScanRate:(unint64_t)a3 timeout:(double)a4;
- (void)stopDiscovery;
@end

@implementation CAMPeopleProximityDeviceScanner

- (CAMPeopleProximityDeviceScanner)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMPeopleProximityDeviceScanner;
  v9 = [(CAMPeopleProximityDeviceScanner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v10->__queue_sessionID = 1;
  }

  return v10;
}

- (void)dealloc
{
  v3 = self->__queue_deviceDiscovery;
  if (v3)
  {
    ++self->__queue_sessionID;
    queue_deviceDiscovery = self->__queue_deviceDiscovery;
    self->__queue_deviceDiscovery = 0;

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CAMPeopleProximityDeviceScanner_dealloc__block_invoke;
    block[3] = &unk_1E76F77B0;
    v8 = v3;
    dispatch_async(queue, block);
  }

  v6.receiver = self;
  v6.super_class = CAMPeopleProximityDeviceScanner;
  [(CAMPeopleProximityDeviceScanner *)&v6 dealloc];
}

- (void)startDiscoveryWithScanRate:(unint64_t)a3 timeout:(double)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->__queue_deviceDiscovery)
  {
    queue_sessionID = self->__queue_sessionID;
    CAMSignpostWithIDAndArgs(78, 0xEEEEB0B5B2B2EEEELL, queue_sessionID, 0, 0, 0);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_discoveredDevices = self->__queue_discoveredDevices;
    self->__queue_discoveredDevices = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_discoveredIdentities = self->__queue_discoveredIdentities;
    self->__queue_discoveredIdentities = v10;

    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v12 = getSFDeviceDiscoveryClass_softClass;
    v39 = getSFDeviceDiscoveryClass_softClass;
    if (!getSFDeviceDiscoveryClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getSFDeviceDiscoveryClass_block_invoke;
      location[3] = &unk_1E76F8100;
      location[4] = &v36;
      __getSFDeviceDiscoveryClass_block_invoke(location);
      v12 = v37[3];
    }

    v13 = v12;
    _Block_object_dispose(&v36, 8);
    v14 = objc_alloc_init(v12);
    queue_deviceDiscovery = self->__queue_deviceDiscovery;
    self->__queue_deviceDiscovery = v14;

    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setDispatchQueue:self->_queue];
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setChangeFlags:3];
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setDiscoveryFlags:1];
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setPurpose:@"CameraPeopleProximity"];
    if (a3 > 0x32 || ((1 << a3) & 0x4010040100400) == 0)
    {
      a3 = 30;
    }

    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setScanRate:a3];
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setTimeout:a4];
    objc_initWeak(location, self);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke;
    v32[3] = &unk_1E76FBC18;
    objc_copyWeak(&v33, location);
    v34 = queue_sessionID;
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setDeviceFoundHandler:v32];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_2;
    v29[3] = &unk_1E76FBC18;
    objc_copyWeak(&v30, location);
    v31 = queue_sessionID;
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setDeviceLostHandler:v29];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_3;
    v26[3] = &unk_1E76FBC40;
    objc_copyWeak(&v27, location);
    v28 = queue_sessionID;
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setDeviceChangedHandler:v26];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_4;
    v23[3] = &unk_1E76F8790;
    objc_copyWeak(&v24, location);
    v25 = queue_sessionID;
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setInterruptionHandler:v23];
    v16 = self->__queue_deviceDiscovery;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_5;
    v20[3] = &unk_1E76FBC68;
    objc_copyWeak(&v21, location);
    v22 = queue_sessionID;
    [(SFDeviceDiscovery *)v16 activateWithCompletion:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_6;
    v17[3] = &unk_1E76F8790;
    objc_copyWeak(&v18, location);
    v19 = queue_sessionID;
    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery setTimeoutHandler:v17];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryDeviceFound:v3 sessionID:*(a1 + 40)];
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryDeviceLost:v3 sessionID:*(a1 + 40)];
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryDeviceFound:v3 sessionID:*(a1 + 40)];
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryInterruptedWithPeopleDiscoverySessionID:*(a1 + 40)];
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryActivatedWithError:v3 sessionID:*(a1 + 40)];
}

void __70__CAMPeopleProximityDeviceScanner_startDiscoveryWithScanRate_timeout___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryTimeoutForSessionID:*(a1 + 40)];
}

- (void)stopDiscovery
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_deviceDiscovery)
  {
    v3 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      queue_sessionID = self->__queue_sessionID;
      v9[0] = 67109120;
      v9[1] = queue_sessionID;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] discovery stop ID %u", v9, 8u);
    }

    [(SFDeviceDiscovery *)self->__queue_deviceDiscovery invalidate];
    queue_deviceDiscovery = self->__queue_deviceDiscovery;
    self->__queue_deviceDiscovery = 0;

    queue_discoveredDevices = self->__queue_discoveredDevices;
    self->__queue_discoveredDevices = 0;

    queue_discoveredIdentities = self->__queue_discoveredIdentities;
    self->__queue_discoveredIdentities = 0;

    ++self->__queue_sessionID;
    v8 = [(CAMPeopleProximityDeviceScanner *)self delegate];
    [v8 peopleProximityScannerDidStopDiscovery:self];
  }
}

- (void)_queue_discoveryActivatedWithError:(id)a3 sessionID:(unsigned int)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_sessionID == a4)
  {
    CAMSignpostWithIDAndArgs(79, 0xEEEEB0B5B2B2EEEELL, a4, [v6 code], 0, 0);
    v7 = os_log_create("com.apple.camera", "SharedLibrary");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CAMPeopleProximityDeviceScanner _queue_discoveryActivatedWithError:v6 sessionID:v8];
      }

      [(CAMPeopleProximityDeviceScanner *)self stopDiscovery];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(SFDeviceDiscovery *)self->__queue_deviceDiscovery scanRate];
        v10 = [(SFDeviceDiscovery *)self->__queue_deviceDiscovery rssiThreshold];
        v11[0] = 67109632;
        v11[1] = a4;
        v12 = 2048;
        v13 = v9;
        v14 = 2048;
        v15 = v10;
        _os_log_impl(&dword_1A3640000, v8, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Device discovery activated ID %u scanRate:%ld rssiThreshold:%ld", v11, 0x1Cu);
      }
    }
  }
}

- (void)_queue_discoveryTimeoutForSessionID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_sessionID == a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Device discovery timeout sessionID:%u", v6, 8u);
    }

    [(CAMPeopleProximityDeviceScanner *)self stopDiscovery];
  }
}

- (void)_queue_discoveryInterruptedWithPeopleDiscoverySessionID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_sessionID == a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] discovery interrupted ID %u", v6, 8u);
    }

    [(CAMPeopleProximityDeviceScanner *)self stopDiscovery];
  }
}

- (void)_queue_discoveryDeviceFound:(id)a3 sessionID:(unsigned int)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_sessionID == a4)
  {
    v7 = [v6 idsIdentifier];
    v8 = +[CAMCaptureCapabilities capabilities];
    v9 = [v8 librarySelectionMockAutomationModeEnabled];

    if (v9)
    {
      v10 = @"mockDeviceID";
      if (v7)
      {
        v10 = v7;
      }

      v11 = v10;

      v7 = v11;
    }

    else if (!v7)
    {
      goto LABEL_27;
    }

    if ([(__CFString *)v7 length])
    {
      v12 = [CAMLibrarySelectionIdentity identityWithDevice:v6];
      v13 = [(CAMPeopleProximityDeviceScanner *)self delegate];
      v14 = [v13 peopleProximityScanner:self shouldDiscoverIdentity:v12];

      if (!v14)
      {
LABEL_36:

        goto LABEL_37;
      }

      v15 = [v6 distance];
      v16 = 10;
      if (v15 != 10)
      {
        v16 = 0;
      }

      if (((1 << v15) & 0x1004000000000000) != 0)
      {
        v17 = 30;
      }

      else
      {
        v17 = v16;
      }

      if (((1 << v15) & 0x10040100000) != 0)
      {
        v18 = 20;
      }

      else
      {
        v18 = v17;
      }

      if (v15 <= 0x3C)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = [(NSMutableDictionary *)self->__queue_discoveredDevices objectForKeyedSubscript:v7];
      [(NSMutableDictionary *)self->__queue_discoveredDevices setObject:v6 forKeyedSubscript:v7];
      if (v20)
      {
        v21 = os_log_create("com.apple.camera", "SharedLibrary");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [CAMPeopleProximityDeviceScanner _queue_discoveryDeviceFound:v6 sessionID:v21];
        }

        v22 = [v20 distance];
        v23 = 0;
        if (v22 <= 0x3C)
        {
          if (((1 << v22) & 0x10040100000) != 0)
          {
            v23 = 20;
          }

          else if (((1 << v22) & 0x1004000000000000) != 0)
          {
            v23 = 30;
          }

          else if (v22 == 10)
          {
            v23 = 10;
          }
        }

        if (v23 == v19)
        {
          goto LABEL_35;
        }
      }

      else
      {
        [(NSMutableDictionary *)self->__queue_discoveredIdentities setObject:v12 forKeyedSubscript:v7];
      }

      v24 = [v6 bleDevice];
      v25 = [v24 rssi];

      v26 = [(CAMPeopleProximityDeviceScanner *)self delegate];
      [v26 peopleProximityScanner:self didDiscoverIdentity:v12 distance:v19 rssi:v25];

LABEL_35:
      goto LABEL_36;
    }

LABEL_27:
    v12 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138543362;
      v28 = v6;
      _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Ignoring BLE device found with no IDS device ID: %{public}@", &v27, 0xCu);
    }

    goto LABEL_36;
  }

LABEL_37:
}

- (void)_queue_discoveryDeviceLost:(id)a3 sessionID:(unsigned int)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_sessionID == a4)
  {
    v7 = [v6 idsIdentifier];
    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->__queue_discoveredDevices objectForKeyedSubscript:v7];

      if (!v8)
      {
LABEL_12:

        goto LABEL_13;
      }

      v9 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = v6;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Lost %{private}@", &v12, 0xCu);
      }

      v10 = [(NSMutableDictionary *)self->__queue_discoveredIdentities objectForKeyedSubscript:v7];
      if (v10)
      {
        v11 = [(CAMPeopleProximityDeviceScanner *)self delegate];
        [v11 peopleProximityScanner:self didLoseIdentity:v10];
      }

      [(NSMutableDictionary *)self->__queue_discoveredDevices removeObjectForKey:v7];
      [(NSMutableDictionary *)self->__queue_discoveredIdentities removeObjectForKey:v7];
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityDeviceScanner] Ignoring BLE device lost with no IDS device ID: %{public}@", &v12, 0xCu);
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (CAMPeopleProximityScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_discoveryActivatedWithError:(uint64_t)a1 sessionID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "[CAMPeopleProximityDeviceScanner] BLE discovery start failed: %{public}@", &v2, 0xCu);
}

- (void)_queue_discoveryDeviceFound:(uint64_t)a1 sessionID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1A3640000, a2, OS_LOG_TYPE_DEBUG, "[CAMPeopleProximityDeviceScanner] device changed: %{public}@", &v2, 0xCu);
}

@end