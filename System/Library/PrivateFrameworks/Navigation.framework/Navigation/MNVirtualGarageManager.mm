@interface MNVirtualGarageManager
+ (MNVirtualGarageManager)sharedManager;
- (BOOL)_isStandardProvider:(id)provider;
- (id)_standardVirtualGarageProvider;
- (id)initPrivate;
- (void)_start;
- (void)_stop;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)setProvider:(id)provider;
- (void)unregisterObserver:(id)observer;
- (void)updatedVehicleStateWithHandler:(id)handler;
- (void)virtualGarageProvider:(id)provider didUpdateSelectedVehicle:(id)vehicle;
@end

@implementation MNVirtualGarageManager

- (void)virtualGarageProvider:(id)provider didUpdateSelectedVehicle:(id)vehicle
{
  v42 = *MEMORY[0x1E69E9840];
  vehicleCopy = vehicle;
  v6 = MNGetMNVirtualGarageManagerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    displayedBatteryPercentage = [vehicleCopy displayedBatteryPercentage];
    currentVehicleState = [vehicleCopy currentVehicleState];
    currentEVRange = [currentVehicleState currentEVRange];
    meters = [MEMORY[0x1E696B058] meters];
    v23 = [currentEVRange measurementByConvertingToUnit:meters];
    [v23 doubleValue];
    v8 = v7;
    currentVehicleState2 = [vehicleCopy currentVehicleState];
    currentBatteryCapacity = [currentVehicleState2 currentBatteryCapacity];
    kilowattHours = [MEMORY[0x1E696B030] kilowattHours];
    [currentBatteryCapacity measurementByConvertingToUnit:kilowattHours];
    v11 = v27 = self;
    [v11 doubleValue];
    v13 = v12;
    currentVehicleState3 = [vehicleCopy currentVehicleState];
    isCharging = [currentVehicleState3 isCharging];
    identifier = [vehicleCopy identifier];
    currentVehicleState4 = [vehicleCopy currentVehicleState];
    identifier2 = [currentVehicleState4 identifier];
    *buf = 134219266;
    v31 = displayedBatteryPercentage;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v13;
    v36 = 1024;
    v37 = isCharging;
    v38 = 2112;
    v39 = identifier;
    v40 = 2112;
    v41 = identifier2;
    _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_DEBUG, "Vehicle update | Battery: %lu%%, Range: %0.0f m, Charge: %0.0f kWH, isCharging: %d | %@ %@", buf, 0x3Au);

    self = v27;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MNVirtualGarageManager_virtualGarageProvider_didUpdateSelectedVehicle___block_invoke;
  block[3] = &unk_1E8430D50;
  block[4] = self;
  v29 = vehicleCopy;
  v19 = vehicleCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __73__MNVirtualGarageManager_virtualGarageProvider_didUpdateSelectedVehicle___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) identifier];
  v3 = [*(a1 + 40) identifier];
  v4 = v2;
  v5 = v3;
  if (v4 | v5 && (v6 = [v4 isEqual:v5], v5, v4, !v6))
  {
    v11 = 1;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 32) currentVehicleState];
    v8 = [v7 identifier];
    v9 = [*(a1 + 40) currentVehicleState];
    v10 = [v9 identifier];
    if (v8 | v10)
    {
      v11 = [v8 isEqual:v10] ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  [*(*(a1 + 32) + 40) recordVirtualGarageVehicleState:*(a1 + 40) isDifferentVehicle:v11];
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v12 = [*(a1 + 40) displayName];
  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = v12;

  v15 = *(a1 + 40);
  v16 = *(*(a1 + 32) + 24);

  return [v16 virtualGarageManager:? didUpdateSelectedVehicle:?];
}

- (BOOL)_isStandardProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (id)_standardVirtualGarageProvider
{
  v2 = objc_alloc_init(MNVirtualGarageStandardProvider);

  return v2;
}

- (void)_stop
{
  if (self->_isStarted)
  {
    [(MNVirtualGarageProvider *)self->_provider stopVirtualGarageUpdates];
    self->_isStarted = 0;
    lastVehicle = self->_lastVehicle;
    self->_lastVehicle = 0;
  }
}

- (void)_start
{
  if (!self->_isStarted)
  {
    lastVehicle = self->_lastVehicle;
    self->_lastVehicle = 0;

    [(MNVirtualGarageProvider *)self->_provider startVirtualGarageUpdates];
    self->_isStarted = 1;
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    [(GEOObserverHashTable *)self->_observers unregisterObserver:observerCopy];
    observerCopy = v6;
    if (self->_isStarted)
    {
      hasObservers = [(GEOObserverHashTable *)self->_observers hasObservers];
      observerCopy = v6;
      if ((hasObservers & 1) == 0)
      {
        [(MNVirtualGarageManager *)self _stop];
        observerCopy = v6;
      }
    }
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v7 = observerCopy;
    if (self->_isStarted)
    {
      [(GEOObserverHashTable *)observers registerObserver:observerCopy];
    }

    else
    {
      hasObservers = [(GEOObserverHashTable *)observers hasObservers];
      [(GEOObserverHashTable *)self->_observers registerObserver:v7];
      observerCopy = v7;
      if (hasObservers)
      {
        goto LABEL_7;
      }

      [(MNVirtualGarageManager *)self _start];
    }

    observerCopy = v7;
  }

LABEL_7:
}

- (void)updatedVehicleStateWithHandler:(id)handler
{
  handlerCopy = handler;
  provider = self->_provider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MNVirtualGarageManager_updatedVehicleStateWithHandler___block_invoke;
  v7[3] = &unk_1E8430900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MNVirtualGarageProvider *)provider updatedVehicleStateWithHandler:v7];
}

void __57__MNVirtualGarageManager_updatedVehicleStateWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 displayName];
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v5);
  }
}

- (void)setProvider:(id)provider
{
  providerCopy = provider;
  _standardVirtualGarageProvider = providerCopy;
  provider = self->_provider;
  if (provider != providerCopy)
  {
    if (!provider || (obj = providerCopy, v7 = [(MNVirtualGarageManager *)self _isStandardProvider:?], _standardVirtualGarageProvider = obj, !v7) || (providerCopy = [(MNVirtualGarageManager *)self _isStandardProvider:self->_provider], _standardVirtualGarageProvider = obj, (providerCopy & 1) == 0))
    {
      if (!_standardVirtualGarageProvider)
      {
        _standardVirtualGarageProvider = [(MNVirtualGarageManager *)self _standardVirtualGarageProvider];
      }

      obja = _standardVirtualGarageProvider;
      [(MNVirtualGarageProvider *)self->_provider setVirtualGarageDelegate:0];
      [(MNVirtualGarageProvider *)self->_provider stopVirtualGarageUpdates];
      objc_storeStrong(&self->_provider, obja);
      [(MNVirtualGarageProvider *)self->_provider setVirtualGarageDelegate:self];
      lastVehicle = self->_lastVehicle;
      self->_lastVehicle = 0;

      if (self->_isStarted)
      {
        providerCopy = [(MNVirtualGarageProvider *)self->_provider startVirtualGarageUpdates];
      }
    }
  }

  MEMORY[0x1EEE66BE0](providerCopy);
}

- (void)dealloc
{
  [(MNVirtualGarageProvider *)self->_provider setVirtualGarageDelegate:0];
  v3.receiver = self;
  v3.super_class = MNVirtualGarageManager;
  [(MNVirtualGarageManager *)&v3 dealloc];
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = MNVirtualGarageManager;
  v2 = [(MNVirtualGarageManager *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A22D8]) initWithProtocol:&unk_1F4EE8F28 queue:0];
    observers = v2->_observers;
    v2->_observers = v3;

    _standardVirtualGarageProvider = [(MNVirtualGarageManager *)v2 _standardVirtualGarageProvider];
    [(MNVirtualGarageManager *)v2 setProvider:_standardVirtualGarageProvider];
  }

  return v2;
}

+ (MNVirtualGarageManager)sharedManager
{
  if (sharedManager_onceToken_20775 != -1)
  {
    dispatch_once(&sharedManager_onceToken_20775, &__block_literal_global_20776);
  }

  v3 = sharedManager_sharedManager_20777;

  return v3;
}

void __39__MNVirtualGarageManager_sharedManager__block_invoke()
{
  v0 = [[MNVirtualGarageManager alloc] initPrivate];
  v1 = sharedManager_sharedManager_20777;
  sharedManager_sharedManager_20777 = v0;
}

@end