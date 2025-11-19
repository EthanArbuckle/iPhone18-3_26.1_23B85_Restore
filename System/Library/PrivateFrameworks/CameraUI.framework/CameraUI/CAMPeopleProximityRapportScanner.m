@interface CAMPeopleProximityRapportScanner
- (CAMPeopleProximityRapportScanner)initWithQueue:(id)a3 delegate:(id)a4;
- (CAMPeopleProximityScannerDelegate)delegate;
- (void)_queue_discoveryActivatedWithError:(id)a3 timeout:(double)a4 peopleDiscoverySessionID:(unsigned int)a5;
- (void)_queue_discoveryInterruptedWithPeopleDiscoverySessionID:(unsigned int)a3;
- (void)_queue_discoveryInvalidatedWithPeopleDiscoverySessionID:(unsigned int)a3;
- (void)_queue_discoveryPersonChanged:(id)a3 withChangeFlags:(unsigned int)a4 peopleDiscoverySessionID:(unsigned int)a5;
- (void)_queue_discoveryPersonFound:(id)a3 peopleDiscoverySessionID:(unsigned int)a4;
- (void)_queue_discoveryPersonLost:(id)a3 peopleDiscoverySessionID:(unsigned int)a4;
- (void)_queue_discoveryTimeoutForSessionID:(unsigned int)a3;
- (void)dealloc;
- (void)startDiscoveryWithScanRate:(unint64_t)a3 timeout:(double)a4;
- (void)stopDiscovery;
@end

@implementation CAMPeopleProximityRapportScanner

- (CAMPeopleProximityRapportScanner)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMPeopleProximityRapportScanner;
  v9 = [(CAMPeopleProximityRapportScanner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v10->__queue_peopleDiscoverySessionID = 1;
  }

  return v10;
}

- (void)dealloc
{
  v3 = self->__queue_peopleDiscovery;
  if (v3)
  {
    ++self->__queue_peopleDiscoverySessionID;
    queue_peopleDiscovery = self->__queue_peopleDiscovery;
    self->__queue_peopleDiscovery = 0;

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__CAMPeopleProximityRapportScanner_dealloc__block_invoke;
    block[3] = &unk_1E76F77B0;
    v8 = v3;
    dispatch_async(queue, block);
  }

  v6.receiver = self;
  v6.super_class = CAMPeopleProximityRapportScanner;
  [(CAMPeopleProximityRapportScanner *)&v6 dealloc];
}

- (void)startDiscoveryWithScanRate:(unint64_t)a3 timeout:(double)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->__queue_peopleDiscovery)
  {
    queue_peopleDiscoverySessionID = self->__queue_peopleDiscoverySessionID;
    CAMSignpostWithIDAndArgs(78, 0xEEEEB0B5B2B2EEEELL, queue_peopleDiscoverySessionID, 0, 0, 0);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_discoveredPersons = self->__queue_discoveredPersons;
    self->__queue_discoveredPersons = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_discoveredIdentities = self->__queue_discoveredIdentities;
    self->__queue_discoveredIdentities = v9;

    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v11 = getRPPeopleDiscoveryClass_softClass;
    v38 = getRPPeopleDiscoveryClass_softClass;
    if (!getRPPeopleDiscoveryClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getRPPeopleDiscoveryClass_block_invoke;
      location[3] = &unk_1E76F8100;
      location[4] = &v35;
      __getRPPeopleDiscoveryClass_block_invoke(location);
      v11 = v36[3];
    }

    v12 = v11;
    _Block_object_dispose(&v35, 8);
    v13 = objc_alloc_init(v11);
    queue_peopleDiscovery = self->__queue_peopleDiscovery;
    self->__queue_peopleDiscovery = v13;

    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setDispatchQueue:self->_queue];
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setDiscoveryMode:400];
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setDiscoveryFlags:24];
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setChangeFlags:6];
    objc_initWeak(location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke;
    v31[3] = &unk_1E76F8740;
    objc_copyWeak(&v32, location);
    v33 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setPersonFoundHandler:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_2;
    v28[3] = &unk_1E76F8740;
    objc_copyWeak(&v29, location);
    v30 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setPersonLostHandler:v28];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_3;
    v25[3] = &unk_1E76F8768;
    objc_copyWeak(&v26, location);
    v27 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setPersonChangedHandler:v25];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_4;
    v22[3] = &unk_1E76F8790;
    objc_copyWeak(&v23, location);
    v24 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setInvalidationHandler:v22];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_5;
    v19[3] = &unk_1E76F8790;
    objc_copyWeak(&v20, location);
    v21 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery setInterruptionHandler:v19];
    v15 = self->__queue_peopleDiscovery;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_6;
    v16[3] = &unk_1E76F87B8;
    objc_copyWeak(v17, location);
    v17[1] = *&a4;
    v18 = queue_peopleDiscoverySessionID;
    [(RPPeopleDiscovery *)v15 activateWithCompletion:v16];
    objc_destroyWeak(v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
  }
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryPersonFound:v3 peopleDiscoverySessionID:*(a1 + 40)];
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryPersonLost:v3 peopleDiscoverySessionID:*(a1 + 40)];
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryPersonChanged:v5 withChangeFlags:a3 peopleDiscoverySessionID:*(a1 + 40)];
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryInvalidatedWithPeopleDiscoverySessionID:*(a1 + 40)];
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryInterruptedWithPeopleDiscoverySessionID:*(a1 + 40)];
}

void __71__CAMPeopleProximityRapportScanner_startDiscoveryWithScanRate_timeout___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryActivatedWithError:v3 timeout:*(a1 + 48) peopleDiscoverySessionID:*(a1 + 40)];
}

- (void)stopDiscovery
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscovery)
  {
    v3 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      queue_peopleDiscoverySessionID = self->__queue_peopleDiscoverySessionID;
      v9[0] = 67109120;
      v9[1] = queue_peopleDiscoverySessionID;
      _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] discovery stop ID %u", v9, 8u);
    }

    [(RPPeopleDiscovery *)self->__queue_peopleDiscovery invalidate];
    queue_peopleDiscovery = self->__queue_peopleDiscovery;
    self->__queue_peopleDiscovery = 0;

    queue_discoveredPersons = self->__queue_discoveredPersons;
    self->__queue_discoveredPersons = 0;

    queue_discoveredIdentities = self->__queue_discoveredIdentities;
    self->__queue_discoveredIdentities = 0;

    ++self->__queue_peopleDiscoverySessionID;
    v8 = [(CAMPeopleProximityRapportScanner *)self delegate];
    [v8 peopleProximityScannerDidStopDiscovery:self];
  }
}

- (void)_queue_discoveryActivatedWithError:(id)a3 timeout:(double)a4 peopleDiscoverySessionID:(unsigned int)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a5)
  {
    v9 = os_log_create("com.apple.camera", "SharedLibrary");
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CAMPeopleProximityRapportScanner _queue_discoveryActivatedWithError:v8 timeout:v10 peopleDiscoverySessionID:?];
      }

      [(CAMPeopleProximityRapportScanner *)self stopDiscovery];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = a5;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] People discovery activated ID %u", &buf, 8u);
      }

      objc_initWeak(&buf, self);
      v11 = dispatch_time(0, (a4 * 1000000000.0));
      v12 = [(CAMPeopleProximityRapportScanner *)self queue];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __104__CAMPeopleProximityRapportScanner__queue_discoveryActivatedWithError_timeout_peopleDiscoverySessionID___block_invoke;
      v16 = &unk_1E76F8790;
      objc_copyWeak(&v17, &buf);
      v18 = a5;
      dispatch_after(v11, v12, &v13);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&buf);
    }

    CAMSignpostWithIDAndArgs(79, 0xEEEEB0B5B2B2EEEELL, a5, [v8 code], 0, 0);
  }
}

void __104__CAMPeopleProximityRapportScanner__queue_discoveryActivatedWithError_timeout_peopleDiscoverySessionID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_discoveryTimeoutForSessionID:*(a1 + 40)];
}

- (void)_queue_discoveryInvalidatedWithPeopleDiscoverySessionID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] People discovery invalidated ID %u", v6, 8u);
    }

    [(CAMPeopleProximityRapportScanner *)self stopDiscovery];
  }
}

- (void)_queue_discoveryInterruptedWithPeopleDiscoverySessionID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] People discovery interrupted ID %u", v6, 8u);
    }

    [(CAMPeopleProximityRapportScanner *)self stopDiscovery];
  }
}

- (void)_queue_discoveryPersonFound:(id)a3 peopleDiscoverySessionID:(unsigned int)a4
{
  v15 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a4)
  {
    v6 = [CAMLibrarySelectionIdentity identityWithPerson:v15];
    v7 = [(CAMPeopleProximityRapportScanner *)self delegate];
    v8 = [v7 peopleProximityScanner:self shouldDiscoverIdentity:v6];

    if (v8 && [(CAMPeopleProximityRapportScanner *)self _queue_shouldAdvertisePerson:v15])
    {
      v9 = [v15 identifier];
      [(NSMutableDictionary *)self->__queue_discoveredPersons setObject:v15 forKeyedSubscript:v9];
      [(NSMutableDictionary *)self->__queue_discoveredIdentities setObject:v6 forKeyedSubscript:v9];
      v10 = [v15 proximity];
      v11 = 20;
      v12 = 10;
      if (v10 != 10)
      {
        v12 = 0;
      }

      if (v10 != 20)
      {
        v11 = v12;
      }

      if (v10 == 30)
      {
        v13 = 30;
      }

      else
      {
        v13 = v11;
      }

      v14 = [(CAMPeopleProximityRapportScanner *)self delegate];
      [v14 peopleProximityScanner:self didDiscoverIdentity:v6 distance:v13 rssi:0];
    }
  }
}

- (void)_queue_discoveryPersonChanged:(id)a3 withChangeFlags:(unsigned int)a4 peopleDiscoverySessionID:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == v5)
  {
    v9 = [v8 identifier];
    v10 = [(NSMutableDictionary *)self->__queue_discoveredPersons objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CAMPeopleProximityRapportScanner _queue_discoveryPersonChanged:v8 withChangeFlags:v6 peopleDiscoverySessionID:v11];
      }

      [(NSMutableDictionary *)self->__queue_discoveredPersons setObject:v8 forKeyedSubscript:v9];
      v12 = [v8 proximity];
      switch(v12)
      {
        case 30:
          v13 = 30;
          break;
        case 20:
          v13 = 20;
          break;
        case 10:
          v13 = 10;
          break;
        default:
          v13 = 0;
          break;
      }

      v14 = [v10 proximity];
      switch(v14)
      {
        case 30:
          v15 = 30;
          break;
        case 20:
          v15 = 20;
          break;
        case 10:
          v15 = 10;
          break;
        default:
          v15 = 0;
          break;
      }

      if (v13 != v15)
      {
        v16 = [(NSMutableDictionary *)self->__queue_discoveredIdentities objectForKeyedSubscript:v9];
        v17 = [(CAMPeopleProximityRapportScanner *)self delegate];
        [v17 peopleProximityScanner:self didDiscoverIdentity:v16 distance:v13 rssi:0];
      }
    }

    else
    {
      [(CAMPeopleProximityRapportScanner *)self _queue_discoveryPersonFound:v8 peopleDiscoverySessionID:v5];
    }
  }
}

- (void)_queue_discoveryPersonLost:(id)a3 peopleDiscoverySessionID:(unsigned int)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a4)
  {
    v7 = [v6 identifier];
    v8 = [(NSMutableDictionary *)self->__queue_discoveredPersons objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = os_log_create("com.apple.camera", "SharedLibrary");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138477827;
        v13 = v6;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] Lost %{private}@", &v12, 0xCu);
      }

      v10 = [(NSMutableDictionary *)self->__queue_discoveredIdentities objectForKeyedSubscript:v7];
      if (v10)
      {
        v11 = [(CAMPeopleProximityRapportScanner *)self delegate];
        [v11 peopleProximityScanner:self didLoseIdentity:v10];
      }

      [(NSMutableDictionary *)self->__queue_discoveredPersons removeObjectForKey:v7];
      [(NSMutableDictionary *)self->__queue_discoveredIdentities removeObjectForKey:v7];
    }
  }
}

- (void)_queue_discoveryTimeoutForSessionID:(unsigned int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->__queue_peopleDiscoverySessionID == a3)
  {
    v5 = os_log_create("com.apple.camera", "SharedLibrary");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "[CAMPeopleProximityRapportScanner] Discovery timeout sessionID:%u", v6, 8u);
    }

    [(CAMPeopleProximityRapportScanner *)self stopDiscovery];
  }
}

- (CAMPeopleProximityScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_discoveryActivatedWithError:(uint64_t)a1 timeout:(NSObject *)a2 peopleDiscoverySessionID:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "[CAMPeopleProximityRapportScanner] People discovery start failed: %{public}@", &v2, 0xCu);
}

- (void)_queue_discoveryPersonChanged:(uint64_t)a1 withChangeFlags:(char)a2 peopleDiscoverySessionID:(NSObject *)a3 .cold.1(uint64_t a1, char a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CAMRPPersonChangeFlagsDescription(a2);
  v6 = 138478083;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1A3640000, a3, OS_LOG_TYPE_DEBUG, "[CAMPeopleProximityRapportScanner] Getting person changes for %{private}@: %{public}@", &v6, 0x16u);
}

@end