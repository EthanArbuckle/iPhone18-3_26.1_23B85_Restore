@interface MNVirtualGarageStandardProvider
- (BOOL)assumesFullCharge;
- (MNVirtualGarageProviderDelegate)virtualGarageDelegate;
- (MNVirtualGarageStandardProvider)init;
- (id)_selectedVehicle;
- (unint64_t)vehiclesCount;
- (void)_forceVirtualGarageSyncWithHandler:(id)a3;
- (void)_sendVirtualGarageUpdateForSelectedVehicle:(id)a3;
- (void)_setVirtualGarage:(id)a3;
- (void)_updateCachedPropertiesForGarage:(id)a3;
- (void)dealloc;
- (void)startVirtualGarageUpdates;
- (void)stopVirtualGarageUpdates;
- (void)updatedVehicleStateWithHandler:(id)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation MNVirtualGarageStandardProvider

- (MNVirtualGarageProviderDelegate)virtualGarageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 selectedVehicle];
  v6 = [(MNVirtualGarageStandardProvider *)self _selectedVehicle];
  if (!(v6 | v5))
  {
    goto LABEL_9;
  }

  v7 = [v5 identifier];
  v8 = [v6 identifier];
  if (([v7 isEqualToString:v8] & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = [v5 currentVehicleState];
  v10 = [v6 currentVehicleState];
  v11 = [v9 isSignificantlyDifferentFromVehicleState:v10];

  if (v11)
  {
LABEL_8:
    [(MNVirtualGarageStandardProvider *)self _setVirtualGarage:v4];
    v15 = [v4 selectedVehicle];
    [(MNVirtualGarageStandardProvider *)self _sendVirtualGarageUpdateForSelectedVehicle:v15];

    goto LABEL_9;
  }

  v12 = MNGetMNVirtualGarageManagerLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v5 currentVehicleState];
    v14 = [v6 currentVehicleState];
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "MNVirtualGarageStandardProvider received an update to the selected vehicle that was not significantly different from the previous one. Will ignore this update. newSelectedVehicle.state: %@\n currentVehicle.state: %@", &v17, 0x16u);
  }

LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_sendVirtualGarageUpdateForSelectedVehicle:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__MNVirtualGarageStandardProvider__sendVirtualGarageUpdateForSelectedVehicle___block_invoke;
  v6[3] = &unk_1E8430D50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __78__MNVirtualGarageStandardProvider__sendVirtualGarageUpdateForSelectedVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 virtualGarageProvider:*(a1 + 32) didUpdateSelectedVehicle:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 24) cancel];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  v7 = *(a1 + 32);
  v8 = v7[4];
  if (v8 > 0.0)
  {
    objc_initWeak(&location, v7);
    v9 = [MNDispatchTimer alloc];
    v10 = MNNavigationQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__MNVirtualGarageStandardProvider__sendVirtualGarageUpdateForSelectedVehicle___block_invoke_2;
    v14[3] = &unk_1E8430F10;
    v15[1] = *&v8;
    objc_copyWeak(v15, &location);
    v11 = [(MNDispatchTimer *)v9 initWithTime:v10 queue:v14 handler:v8];
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v11;

    [*(*(a1 + 32) + 24) activate];
    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

void __78__MNVirtualGarageStandardProvider__sendVirtualGarageUpdateForSelectedVehicle___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MNGetMNVirtualGarageManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_DEBUG, "MNVirtualGarageStandardProvider forcing VirtualGarage periodic update after %0.0f seconds.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _forceVirtualGarageSyncWithHandler:0];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_forceVirtualGarageSyncWithHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E69DF8B8] sharedService];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__MNVirtualGarageStandardProvider__forceVirtualGarageSyncWithHandler___block_invoke;
  v8[3] = &unk_1E8430DA0;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [v7 virtualGarageGetGarageWithReply:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__MNVirtualGarageStandardProvider__forceVirtualGarageSyncWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateCachedPropertiesForGarage:v5];

  if (v6 || ([v5 selectedVehicle], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    v10 = [v5 selectedVehicle];
    if ([v10 isPureElectricVehicle])
    {
      v11 = *(a1 + 32);
      v12 = [v5 selectedVehicle];
      v13 = [v12 identifier];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__MNVirtualGarageStandardProvider__forceVirtualGarageSyncWithHandler___block_invoke_2;
      v15[3] = &unk_1E8430D78;
      v16 = *(a1 + 40);
      [v11 virtualGarageGetLatestStateOfVehicleWithIdentifier:v13 syncAcrossDevices:0 withReply:v15];
    }

    else
    {
      v14 = *(a1 + 40);
      if (v14)
      {
        (*(v14 + 16))(v14, v10, 0);
      }
    }
  }
}

uint64_t __70__MNVirtualGarageStandardProvider__forceVirtualGarageSyncWithHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_selectedVehicle
{
  v5 = self->_garageIsolater;
  _geo_isolate_lock_data();
  v3 = [(VGVirtualGarage *)self->_garage selectedVehicle];
  _geo_isolate_unlock();

  return v3;
}

- (void)_updateCachedPropertiesForGarage:(id)a3
{
  v4 = a3;
  garageIsolater = self->_garageIsolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync_data();
}

uint64_t __68__MNVirtualGarageStandardProvider__updateCachedPropertiesForGarage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) vehicles];
  *(*(a1 + 32) + 48) = [v2 count];

  result = [*(a1 + 40) shouldAssumeFullCharge];
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (void)_setVirtualGarage:(id)a3
{
  v4 = a3;
  garageIsolater = self->_garageIsolater;
  v7 = MEMORY[0x1E69E9820];
  v8 = v4;
  v6 = v4;
  geo_isolate_sync_data();
  [(MNVirtualGarageStandardProvider *)self _updateCachedPropertiesForGarage:v6, v7, 3221225472, __53__MNVirtualGarageStandardProvider__setVirtualGarage___block_invoke, &unk_1E8430D50, self];
}

- (BOOL)assumesFullCharge
{
  v2 = self;
  v4 = self->_garageIsolater;
  _geo_isolate_lock_data();
  LOBYTE(v2) = v2->_assumesFullCharge;
  _geo_isolate_unlock();

  return v2;
}

- (unint64_t)vehiclesCount
{
  v5 = self->_garageIsolater;
  _geo_isolate_lock_data();
  vehiclesCount = self->_vehiclesCount;
  _geo_isolate_unlock();

  return vehiclesCount;
}

- (void)updatedVehicleStateWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [MEMORY[0x1E69DF8B8] sharedService];
    [v6 openForClient:v5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__MNVirtualGarageStandardProvider_updatedVehicleStateWithHandler___block_invoke;
    v9[3] = &unk_1E8430D28;
    v10 = v6;
    v11 = v5;
    v12 = v4;
    v7 = v5;
    v8 = v6;
    [(MNVirtualGarageStandardProvider *)self _forceVirtualGarageSyncWithHandler:v9];
  }
}

void __66__MNVirtualGarageStandardProvider_updatedVehicleStateWithHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = a2;
  [v5 closeForClient:v6];
  (*(a1[6] + 16))();
}

- (void)stopVirtualGarageUpdates
{
  if (self->_isStarted)
  {
    v10 = v2;
    v11 = v3;
    updateQueue = self->_updateQueue;
    self->_updateQueue = 0;

    [(MNDispatchTimer *)self->_forceUpdateTimer cancel];
    forceUpdateTimer = self->_forceUpdateTimer;
    self->_forceUpdateTimer = 0;

    v7 = [MEMORY[0x1E69DF8B8] sharedService];
    [v7 unregisterObserver:self];
    v8 = MNGetMNVirtualGarageManagerLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_DEFAULT, "MNVirtualGarageStandardProvider stopping VGVirtualGarage connection.", v9, 2u);
    }

    [v7 virtualGarageEndContinuousUpdates];
    [v7 closeForClient:self];
    [(MNVirtualGarageStandardProvider *)self _setVirtualGarage:0];
    self->_isStarted = 0;
  }
}

- (void)startVirtualGarageUpdates
{
  if (!self->_isStarted)
  {
    v9 = v2;
    v10 = v3;
    GEOConfigGetDouble();
    self->_forcePeriodicUpdateInterval = v5;
    v6 = [MEMORY[0x1E69DF8B8] sharedService];
    [v6 openForClient:self];
    [v6 registerObserver:self];
    v7 = MNGetMNVirtualGarageManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEFAULT, "MNVirtualGarageStandardProvider starting VGVirtualGarage connection.", v8, 2u);
    }

    [v6 virtualGarageStartContinuousUpdatesIfNeeded];
    self->_isStarted = 1;
    [(MNVirtualGarageStandardProvider *)self _forceVirtualGarageSyncWithHandler:0];
  }
}

- (void)dealloc
{
  [(MNDispatchTimer *)self->_forceUpdateTimer cancel];
  [(MNVirtualGarageStandardProvider *)self stopVirtualGarageUpdates];
  v3.receiver = self;
  v3.super_class = MNVirtualGarageStandardProvider;
  [(MNVirtualGarageStandardProvider *)&v3 dealloc];
}

- (MNVirtualGarageStandardProvider)init
{
  v6.receiver = self;
  v6.super_class = MNVirtualGarageStandardProvider;
  v2 = [(MNVirtualGarageStandardProvider *)&v6 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    garageIsolater = v2->_garageIsolater;
    v2->_garageIsolater = v3;
  }

  return v2;
}

@end