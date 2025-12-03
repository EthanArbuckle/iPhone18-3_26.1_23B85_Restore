@interface NPKOneShotLocationFetcher
- (NPKOneShotLocationFetcher)init;
- (void)_finishLocationFixWithLocation:(id)location;
- (void)dealloc;
- (void)fetchLocationWithCompletion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation NPKOneShotLocationFetcher

- (NPKOneShotLocationFetcher)init
{
  v6.receiver = self;
  v6.super_class = NPKOneShotLocationFetcher;
  v2 = [(NPKOneShotLocationFetcher *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanopassbook.locationfetch", 0);
    locationManagerQueue = v2->_locationManagerQueue;
    v2->_locationManagerQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_locationManager;
  v4 = self->_inUseAssertion;
  [(CLLocationManager *)v3 setDelegate:0];
  locationManagerQueue = self->_locationManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NPKOneShotLocationFetcher_dealloc__block_invoke;
  block[3] = &unk_2799454E0;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(locationManagerQueue, block);

  v8.receiver = self;
  v8.super_class = NPKOneShotLocationFetcher;
  [(NPKOneShotLocationFetcher *)&v8 dealloc];
}

uint64_t __36__NPKOneShotLocationFetcher_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopUpdatingLocation];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)fetchLocationWithCompletion:(id)completion
{
  [(NPKOneShotLocationFetcher *)self setCompletionHandler:completion];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke;
  v6[3] = &unk_279946BF8;
  v6[4] = self;
  v4 = v6;
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___CanDetermineDeviceLocation_block_invoke;
  block[3] = &unk_279945198;
  v8 = v4;
  dispatch_async(v5, block);
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (a2)
  {
    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Can determine device location.", buf, 2u);
      }
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_74;
    block[3] = &unk_279944F98;
    block[4] = v7;
    dispatch_async(v8, block);
  }

  else
  {
    if (v5)
    {
      v9 = pk_Payment_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Returning provisioning device data without location", buf, 2u);
      }
    }

    v10 = [*(a1 + 32) completionHandler];

    if (v10)
    {
      v11 = [*(a1 + 32) completionHandler];
      v11[2](v11, 0);

      [*(a1 + 32) setCompletionHandler:0];
    }
  }
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_74(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v3 = PKPassKitCoreBundle();
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 40)];

  v5 = MEMORY[0x277CBFBF8];
  v6 = PKPassKitCoreBundle();
  v7 = [v5 newAssertionForBundle:v6 withReason:@"NanoPassKit one-shot fetcher requested location"];

  [v4 requestWhenInUseAuthorization];
  v8 = [v4 location];
  v9 = v8;
  if (v8 && _LocationMeetsAccuracyCriteria(v8))
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Immediately retrieved location", buf, 2u);
      }
    }

    v13 = [*(a1 + 32) completionHandler];

    if (v13)
    {
      v14 = [*(a1 + 32) completionHandler];
      (v14)[2](v14, v9);

      [*(a1 + 32) setCompletionHandler:0];
    }

    [v7 invalidate];
  }

  else
  {
    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_Payment_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Start updating location…", buf, 2u);
      }
    }

    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 40));
    v19 = dispatch_walltime(0, 10000000000);
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(buf, *(a1 + 32));
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_79;
    handler[3] = &unk_279945030;
    objc_copyWeak(&v21, buf);
    dispatch_source_set_event_handler(v18, handler);
    dispatch_resume(v18);
    [v4 startUpdatingLocation];
    [*(a1 + 32) setLocationFixTimeout:v18];
    [*(a1 + 32) setLocationManager:v4];
    [*(a1 + 32) setInUseAssertion:v7];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __57__NPKOneShotLocationFetcher_fetchLocationWithCompletion___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Event handler fired", v7, 2u);
    }
  }

  if (WeakRetained)
  {
    v5 = [WeakRetained completionHandler];

    if (v5)
    {
      v6 = [WeakRetained completionHandler];
      v6[2](v6, 0);

      [WeakRetained setCompletionHandler:0];
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v29 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  locationsCopy = locations;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Location did update", buf, 2u);
    }
  }

  dispatch_assert_queue_V2(self->_locationManagerQueue);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = locationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  v13 = v11;
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = v12;
  v13 = 0;
  v15 = *v24;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      if (_LocationMeetsAccuracyCriteria(v17))
      {
        v18 = v17;

        v13 = v18;
      }
    }

    v14 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v14);

  if (v13)
  {
    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v21 = pk_Payment_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Found candidate location", buf, 2u);
      }
    }

    [(NPKOneShotLocationFetcher *)self _finishLocationFixWithLocation:v13, v23];
LABEL_20:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Location did fail", v8, 2u);
    }
  }

  dispatch_assert_queue_V2(self->_locationManagerQueue);
  [(NPKOneShotLocationFetcher *)self _finishLocationFixWithLocation:0];
}

- (void)_finishLocationFixWithLocation:(id)location
{
  locationCopy = location;
  dispatch_assert_queue_V2(self->_locationManagerQueue);
  locationManager = [(NPKOneShotLocationFetcher *)self locationManager];
  [locationManager stopUpdatingLocation];

  locationManager2 = [(NPKOneShotLocationFetcher *)self locationManager];
  [locationManager2 setDelegate:0];

  [(NPKOneShotLocationFetcher *)self setLocationManager:0];
  locationFixTimeout = [(NPKOneShotLocationFetcher *)self locationFixTimeout];

  if (locationFixTimeout)
  {
    locationFixTimeout2 = [(NPKOneShotLocationFetcher *)self locationFixTimeout];
    dispatch_source_cancel(locationFixTimeout2);

    [(NPKOneShotLocationFetcher *)self setLocationFixTimeout:0];
  }

  completionHandler = [(NPKOneShotLocationFetcher *)self completionHandler];

  v9 = locationCopy;
  if (completionHandler)
  {
    completionHandler2 = [(NPKOneShotLocationFetcher *)self completionHandler];
    (completionHandler2)[2](completionHandler2, locationCopy);

    [(NPKOneShotLocationFetcher *)self setCompletionHandler:0];
    v9 = locationCopy;
  }
}

@end