@interface PKProximityDetector
- (PKProximityDetector)initWithAdvertisingDeviceUUID:(id)d;
- (id)_createDeviceFoundBlockWithName:(id)name;
- (id)_createDeviceLostBlockWithName:(id)name;
- (id)_createDiscoveryActivationBlockWithName:(id)name duration:(double)duration completion:(id)completion;
- (void)_createPowerAssertion;
- (void)_endPowerAssertion;
- (void)_queue_endDetecting;
- (void)dealloc;
- (void)endDetecting;
- (void)startDetectingWithDuration:(double)duration completion:(id)completion;
@end

@implementation PKProximityDetector

- (PKProximityDetector)initWithAdvertisingDeviceUUID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = PKProximityDetector;
  v6 = [(PKProximityDetector *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_advertisingDeviceUUID, d);
    v7->_advertisingDeviceNearby = 0;
    v8 = dispatch_queue_create("PKProximityDetectorTimerQueue", 0);
    timerQueue = v7->_timerQueue;
    v7->_timerQueue = v8;

    v10 = dispatch_queue_create("PKProximityDetectorQueue", 0);
    discoveryQueue = v7->_discoveryQueue;
    v7->_discoveryQueue = v10;

    v7->_powerAssertionIdentifier = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(PKProximityDetector *)self endDetecting];
  v3.receiver = self;
  v3.super_class = PKProximityDetector;
  [(PKProximityDetector *)&v3 dealloc];
}

- (void)startDetectingWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  if (self->_isDetecting)
  {
    [(PKProximityDetector *)self endDetecting];
  }

  [(PKProximityDetector *)self _createPowerAssertion];
  v6 = objc_alloc_init(getSFDeviceDiscoveryClass[0]());
  nearbyInfoDiscovery = self->_nearbyInfoDiscovery;
  self->_nearbyInfoDiscovery = v6;

  if (self->_advertisingDeviceUUID)
  {
    v8 = self->_nearbyInfoDiscovery;
    v9 = [MEMORY[0x1E695DFD8] setWithObject:?];
    [(SFDeviceDiscovery *)v8 setDeviceFilter:v9];
  }

  [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery setDiscoveryFlags:1];
  [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery setScanRate:50];
  v10 = self->_nearbyInfoDiscovery;
  v11 = [(PKProximityDetector *)self _createDeviceFoundBlockWithName:@"NearbyInfo"];
  [(SFDeviceDiscovery *)v10 setDeviceFoundHandler:v11];

  v12 = self->_nearbyInfoDiscovery;
  v13 = [(PKProximityDetector *)self _createDeviceLostBlockWithName:@"NearbyInfo"];
  [(SFDeviceDiscovery *)v12 setDeviceLostHandler:v13];

  [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery setOverrideScreenOff:1];
  self->_isDetecting = 1;
  v14 = self->_nearbyInfoDiscovery;
  v15 = [(PKProximityDetector *)self _createDiscoveryActivationBlockWithName:@"NearbyInfo" duration:completionCopy completion:duration];
  [(SFDeviceDiscovery *)v14 activateWithCompletion:v15];
}

- (id)_createDeviceFoundBlockWithName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __55__PKProximityDetector__createDeviceFoundBlockWithName___block_invoke;
  v12 = &unk_1E79DC298;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v5 = nameCopy;
  v14 = v5;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v7;
}

void __55__PKProximityDetector__createDeviceFoundBlockWithName___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained advertisingDeviceUUID];
  v6 = [v3 identifier];
  v7 = [v5 isEqual:v6];

  if (v7 && (*(*(a1 + 32) + 16) & 1) == 0 && *(WeakRetained + 8))
  {
    v8 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v3 name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ device discovery detected device nearby: %@", &v11, 0x16u);
    }

    (*(*(WeakRetained + 8) + 16))();
    *(WeakRetained + 16) = 1;
  }
}

- (id)_createDeviceLostBlockWithName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __54__PKProximityDetector__createDeviceLostBlockWithName___block_invoke;
  v12 = &unk_1E79DC298;
  objc_copyWeak(&v15, &location);
  selfCopy = self;
  v5 = nameCopy;
  v14 = v5;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v7;
}

void __54__PKProximityDetector__createDeviceLostBlockWithName___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained advertisingDeviceUUID];
  v6 = [v3 identifier];
  v7 = [v5 isEqual:v6];

  if (v7 && *(*(a1 + 32) + 16) == 1 && *(WeakRetained + 8))
  {
    v8 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v3 name];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ device discovery lost device nearby: %@", &v11, 0x16u);
    }

    (*(*(WeakRetained + 8) + 16))();
    *(WeakRetained + 16) = 0;
  }
}

- (id)_createDiscoveryActivationBlockWithName:(id)name duration:(double)duration completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke;
  v18 = &unk_1E79DC2E8;
  selfCopy = self;
  v10 = nameCopy;
  v20 = v10;
  objc_copyWeak(v22, &location);
  v22[1] = *&duration;
  v11 = completionCopy;
  v21 = v11;
  v12 = _Block_copy(&v15);
  v13 = [v12 copy];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  return v13;
}

void __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke_2;
  v6[3] = &unk_1E79DC2C0;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  objc_copyWeak(v11, (a1 + 56));
  v9 = *(a1 + 32);
  v11[1] = *(a1 + 64);
  v10 = *(a1 + 48);
  dispatch_async(v4, v6);

  objc_destroyWeak(v11);
}

void __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PKLogFacilityTypeGetObject(9uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [v2 localizedDescription];
      *buf = 138412546;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Failed to activate %@ proximate device discovery: %@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained _queue_endDetecting];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 48) + 56);
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Activated %@ proximate device discovery for paired device: %@", buf, 0x16u);
    }

    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 48) + 32));
    v11 = *(a1 + 48);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v13 = *(*(a1 + 48) + 24);
    if (v13)
    {
      v14 = dispatch_time(0, (*(a1 + 72) * 1000000000.0));
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
      objc_initWeak(buf, *(a1 + 48));
      v15 = *(*(a1 + 48) + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke_21;
      handler[3] = &unk_1E79C9D80;
      objc_copyWeak(&v22, buf);
      dispatch_source_set_event_handler(v15, handler);
      dispatch_resume(*(*(a1 + 48) + 24));
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke_2_23;
    block[3] = &unk_1E79C44A0;
    v20 = v16;
    v19 = *(a1 + 32);
    dispatch_async(v17, block);
  }
}

void __83__PKProximityDetector__createDiscoveryActivationBlockWithName_duration_completion___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained endDetecting];
    WeakRetained = v2;
  }
}

- (void)_queue_endDetecting
{
  dispatch_assert_queue_V2(self->_discoveryQueue);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  if (self->_powerAssertionIdentifier)
  {
    [(PKProximityDetector *)self _endPowerAssertion];
  }

  [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery invalidate];
  handler = self->_handler;
  self->_handler = 0;

  self->_isDetecting = 0;
  v6 = PKLogFacilityTypeGetObject(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Deactivated proximate device discovery", v7, 2u);
  }
}

- (void)endDetecting
{
  discoveryQueue = self->_discoveryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PKProximityDetector_endDetecting__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_sync(discoveryQueue, block);
}

- (void)_createPowerAssertion
{
  v9[4] = *MEMORY[0x1E69E9840];
  AssertionID = 0;
  v8[0] = @"AssertType";
  v8[1] = @"AssertLevel";
  v9[0] = @"PreventUserIdleSystemSleep";
  v9[1] = &unk_1F23B53C0;
  v9[2] = @"Apple Pay Discovery Request: BT";
  v8[2] = @"AssertName";
  v8[3] = @"TimeoutSeconds";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:30];
  v9[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  if (!IOPMAssertionCreateWithProperties(v4, &AssertionID))
  {
    self->_powerAssertionIdentifier = AssertionID;
    v5 = PKLogFacilityTypeGetObject(9uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Created power assertion for sharing broadcast", v6, 2u);
    }
  }
}

- (void)_endPowerAssertion
{
  powerAssertionIdentifier = self->_powerAssertionIdentifier;
  if (powerAssertionIdentifier)
  {
    IOPMAssertionRelease(powerAssertionIdentifier);
  }
}

@end