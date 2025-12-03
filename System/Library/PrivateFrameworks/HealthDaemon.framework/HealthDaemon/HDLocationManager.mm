@interface HDLocationManager
- (HDLocationManager)init;
- (HDLocationManagerUnitTestDelegate)unitTestDelegate;
- (id)_mainQueue_newLocationManager;
- (id)takeLocationUpdatingAssertionForOwnerIdentifier:(id)identifier desiredAccuracy:(double)accuracy;
- (void)_mainQueue_releaseLocationUpdatingAssertion;
- (void)_mainQueue_takeLocationUpdatingAssertionWithAccuracy:(double)accuracy;
- (void)_mainQueue_updateLocationManager;
- (void)_unitTest_didInvalidateAssertion:(id)assertion;
- (void)_unitTest_didTakeAssertion:(id)assertion;
- (void)addObserver:(id)observer;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)removeObserver:(id)observer;
- (void)setLocationManagerConfiguration:(void *)configuration;
@end

@implementation HDLocationManager

- (HDLocationManager)init
{
  v9.receiver = self;
  v9.super_class = HDLocationManager;
  v2 = [(HDLocationManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v2->_assertionManager;
    v2->_assertionManager = v3;

    [(HDAssertionManager *)v2->_assertionManager addObserver:v2 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierLocationUpdating" queue:MEMORY[0x277D85CD0]];
    v5 = objc_alloc(MEMORY[0x277CCD738]);
    v6 = [v5 initWithName:@"health-location-manager-observers" loggingCategory:*MEMORY[0x277CCC330]];
    observers = v2->_observers;
    v2->_observers = v6;

    [(HDLocationManager *)v2 setLocationManagerConfiguration:?];
  }

  return v2;
}

- (void)setLocationManagerConfiguration:(void *)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    if (v3)
    {
      v5 = _Block_copy(v3);
      v6 = configuration[5];
      configuration[5] = v5;
    }

    else
    {
      objc_initWeak(&location, configuration);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __53__HDLocationManager_setLocationManagerConfiguration___block_invoke;
      v9[3] = &unk_278615D68;
      objc_copyWeak(&v10, &location);
      v7 = _Block_copy(v9);
      v8 = configuration[5];
      configuration[5] = v7;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)dealloc
{
  [(HDAssertionManager *)self->_assertionManager removeObserver:self];
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  [(CLInUseAssertion *)self->_inUseAssertion invalidate];
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;

  v5.receiver = self;
  v5.super_class = HDLocationManager;
  [(HDLocationManager *)&v5 dealloc];
}

- (id)takeLocationUpdatingAssertionForOwnerIdentifier:(id)identifier desiredAccuracy:(double)accuracy
{
  v6 = MEMORY[0x277D10AB8];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierLocationUpdating" ownerIdentifier:identifierCopy];

  if ([(HDAssertionManager *)self->_assertionManager takeAssertion:v8])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HDLocationManager_takeLocationUpdatingAssertionForOwnerIdentifier_desiredAccuracy___block_invoke;
    block[3] = &unk_278614E78;
    block[4] = self;
    accuracyCopy = accuracy;
    v9 = v8;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __85__HDLocationManager_takeLocationUpdatingAssertionForOwnerIdentifier_desiredAccuracy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_takeLocationUpdatingAssertionWithAccuracy:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _unitTest_didTakeAssertion:v3];
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierLocationUpdating"];
  v6 = [v5 count];

  if (!v6)
  {
    [(HDLocationManager *)self _mainQueue_releaseLocationUpdatingAssertion];
  }

  [(HDLocationManager *)self _mainQueue_updateLocationManager];
  [(HDLocationManager *)self _unitTest_didInvalidateAssertion:invalidatedCopy];
}

id __53__HDLocationManager_setLocationManagerConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _mainQueue_newLocationManager];

  return v2;
}

- (id)_mainQueue_newLocationManager
{
  v3 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = objc_alloc(MEMORY[0x277CBFC10]);
  v5 = [v4 initWithEffectiveBundleIdentifier:*MEMORY[0x277CCE340] delegate:self onQueue:v3];
  [v5 setActivityType:3];

  return v5;
}

- (void)_mainQueue_updateLocationManager
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierLocationUpdating"];
  v4 = [v3 count];

  v5 = [(HKObserverSet *)self->_observers count];
  locationManager = self->_locationManager;
  if (v4 | v5)
  {
    if (!locationManager)
    {
      v8 = (*(self->_locationManagerConfiguration + 2))();
      v9 = self->_locationManager;
      self->_locationManager = v8;

      v10 = self->_locationManager;

      [(CLLocationManager *)v10 setDelegate:self];
    }
  }

  else
  {
    [(CLLocationManager *)locationManager setDelegate:0];
    v7 = self->_locationManager;
    self->_locationManager = 0;
  }
}

- (void)_mainQueue_takeLocationUpdatingAssertionWithAccuracy:(double)accuracy
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(HDLocationManager *)self _mainQueue_updateLocationManager];
  if (!self->_inUseAssertion)
  {
    v5 = [MEMORY[0x277CBFBF8] newAssertionForBundleIdentifier:*MEMORY[0x277CCE340] withReason:@"HDLocationManager requested location"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v5;
  }

  [(CLLocationManager *)self->_locationManager setDesiredAccuracy:accuracy];
  locationManager = self->_locationManager;

  [(CLLocationManager *)locationManager startUpdatingLocation];
}

- (void)_mainQueue_releaseLocationUpdatingAssertion
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  [(CLInUseAssertion *)self->_inUseAssertion invalidate];
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDLocationManager_locationManagerDidChangeAuthorization___block_invoke;
  v7[3] = &unk_278615D90;
  v7[4] = self;
  v8 = authorizationCopy;
  v6 = authorizationCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

void __59__HDLocationManager_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 healthLocationManager:v2 didChangeAuthorizationStatus:{objc_msgSend(v3, "authorizationStatus")}];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDLocationManager_locationManager_didUpdateLocations___block_invoke;
  v8[3] = &unk_278615D90;
  v8[4] = self;
  v9 = locationsCopy;
  v7 = locationsCopy;
  [(HKObserverSet *)observers notifyObservers:v8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HDLocationManager_locationManager_didFailWithError___block_invoke;
  v8[3] = &unk_278615D90;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  [(HKObserverSet *)observers notifyObservers:v8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HDLocationManager_addObserver___block_invoke;
  v6[3] = &unk_278613920;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __33__HDLocationManager_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) registerObserver:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _mainQueue_updateLocationManager];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HDLocationManager_removeObserver___block_invoke;
  v6[3] = &unk_278613920;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __36__HDLocationManager_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) unregisterObserver:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _mainQueue_updateLocationManager];
}

- (void)_unitTest_didTakeAssertion:(id)assertion
{
  assertionCopy = assertion;
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_unitTestDelegate);
    [v6 _unitTest_healthLocationManager:self didTakeAssertion:assertionCopy];
  }
}

- (void)_unitTest_didInvalidateAssertion:(id)assertion
{
  assertionCopy = assertion;
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_unitTestDelegate);
    [v6 _unitTest_healthLocationManager:self didInvalidateAssertion:assertionCopy];
  }
}

- (HDLocationManagerUnitTestDelegate)unitTestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);

  return WeakRetained;
}

@end