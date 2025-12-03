@interface MDMLostDeviceLocationManager
- (BOOL)_updateLostModeFileForOriginator:(id)originator;
- (MDMLostDeviceLocationManager)init;
- (NSString)lastLocationRequestedDateMessage;
- (void)_cleanupAfterResponseFromLocationManagerOrTimeout;
- (void)clearLastLocationRequestedDate;
- (void)getCurrentLocationForOriginator:(id)originator completion:(id)completion;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation MDMLostDeviceLocationManager

- (MDMLostDeviceLocationManager)init
{
  v8.receiver = self;
  v8.super_class = MDMLostDeviceLocationManager;
  v2 = [(MDMLostDeviceLocationManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create([@"MDMDLDLMServiceQueue" UTF8String], v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)getCurrentLocationForOriginator:(id)originator completion:(id)completion
{
  originatorCopy = originator;
  completionCopy = completion;
  queue = [(MDMLostDeviceLocationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__MDMLostDeviceLocationManager_getCurrentLocationForOriginator_completion___block_invoke;
  block[3] = &unk_27982BE10;
  v12 = originatorCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = originatorCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __75__MDMLostDeviceLocationManager_getCurrentLocationForOriginator_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D033D8] code:7000 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
    [*(a1 + 32) setOriginator:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [MEMORY[0x277CBFBD0] newAssertionForBundle:v4 withReason:@"MDMDLostDeviceLocationManager getCurrentLocationForOriginator:completion:"];
    [MEMORY[0x277CBFC10] setAuthorizationStatusByType:3 forBundle:v4];
    v6 = objc_alloc(MEMORY[0x277CBFC10]);
    v7 = [v4 bundlePath];
    v8 = *(a1 + 32);
    v9 = [v8 queue];
    v10 = [v6 initWithEffectiveBundlePath:v7 delegate:v8 onQueue:v9];
    [*(a1 + 32) setLocationManager:v10];

    v11 = *(a1 + 32);
    v12 = [v11 locationManager];
    [v12 setDelegate:v11];

    v13 = *MEMORY[0x277CE4208];
    v14 = [*(a1 + 32) locationManager];
    [v14 setDesiredAccuracy:v13];

    v15 = [*(a1 + 32) queue];
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v15);
    [*(a1 + 32) setTimeoutTimerDispatchSource:v16];

    v17 = [*(a1 + 32) timeoutTimerDispatchSource];
    v18 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 30000000000);
    dispatch_source_set_timer(v17, v18, 0x3B9ACA00uLL, 0x3B9ACA00uLL);

    v19 = [*(a1 + 32) timeoutTimerDispatchSource];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __75__MDMLostDeviceLocationManager_getCurrentLocationForOriginator_completion___block_invoke_2;
    handler[3] = &unk_27982BAC8;
    handler[4] = *(a1 + 32);
    v25 = v5;
    v20 = v5;
    dispatch_source_set_event_handler(v19, handler);

    v21 = [*(a1 + 32) timeoutTimerDispatchSource];
    dispatch_activate(v21);

    v22 = [*(a1 + 32) locationManager];
    [v22 requestLocation];
  }
}

void __75__MDMLostDeviceLocationManager_getCurrentLocationForOriginator_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_2561F5000, v3, OS_LOG_TYPE_ERROR, "Location Manager timed out", v6, 2u);
  }

  v4 = [*(a1 + 32) completionBlock];
  [*(a1 + 32) _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D033D8] code:7001 userInfo:0];
    (v4)[2](v4, 0, v5);
  }
}

- (void)clearLastLocationRequestedDate
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = DMCSystemLostModeRequestPath();
  v4 = [v2 fileURLWithPath:v3 isDirectory:0];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = objc_opt_new();
  v11 = &v13;
  v12 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__MDMLostDeviceLocationManager_clearLastLocationRequestedDate__block_invoke;
  v9[3] = &unk_27982BE38;
  v10 = 0;
  [v5 coordinateWritingItemAtURL:v4 options:1 error:&v12 byAccessor:v9];
  v6 = v12;

  if ((v14[3] & 1) == 0)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Could not read device last location requested file: %@", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__MDMLostDeviceLocationManager_clearLastLocationRequestedDate__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v12 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v12];

  v7 = v12;
  if (v6)
  {
  }

  else
  {
    v8 = [*(a1 + 32) domain];
    if ([v8 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v9 = [*(a1 + 32) code];

      if (v9 == 4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_ERROR, "Could not remove device last located file: %@", buf, 0xCu);
    }
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)lastLocationRequestedDateMessage
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBC0];
  v3 = DMCSystemLostModeRequestPath();
  v4 = [v2 fileURLWithPath:v3 isDirectory:0];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v5 = objc_opt_new();
  v26[4] = &v28;
  v27 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__MDMLostDeviceLocationManager_lastLocationRequestedDateMessage__block_invoke;
  v26[3] = &unk_27982BE60;
  [v5 coordinateReadingItemAtURL:v4 options:0 error:&v27 byAccessor:v26];
  v6 = v27;

  if (v6)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v6;
      _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_DEFAULT, "MDMLostDeviceLocationManager+iphoneOS could not read last location request date with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = [v29[5] objectForKeyedSubscript:*MEMORY[0x277D26440]];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_DEFAULT, "MDMLostDeviceLocationManager+iphoneOS last located device on %{public}@.", buf, 0xCu);
    }

    v13 = objc_opt_new();
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v13 setLocale:currentLocale];

    [v13 setTimeStyle:1];
    v15 = [v13 stringFromDate:v11];
    [v13 setTimeStyle:0];
    [v13 setDateStyle:3];
    v16 = [v13 stringFromDate:v11];
    v17 = [v29[5] objectForKeyedSubscript:@"originator"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v21 = [v29[5] objectForKeyedSubscript:@"organizationName"];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = [v29[5] objectForKeyedSubscript:@"serverName"];
      }

      v19 = v23;
    }

    v20 = DMCLocalizedFormat();
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v28, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __64__MDMLostDeviceLocationManager_lastLocationRequestedDateMessage__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  queue = [(MDMLostDeviceLocationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  lastObject = [locationsCopy lastObject];

  v8 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v8, OS_LOG_TYPE_DEFAULT, "Location Manager returned a location.", buf, 2u);
  }

  originator = [(MDMLostDeviceLocationManager *)self originator];
  v10 = [(MDMLostDeviceLocationManager *)self _updateLostModeFileForOriginator:originator];

  completionBlock = [(MDMLostDeviceLocationManager *)self completionBlock];
  [(MDMLostDeviceLocationManager *)self _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (v10)
  {
    if (completionBlock)
    {
      (completionBlock)[2](completionBlock, lastObject, 0);
    }
  }

  else
  {
    v12 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_2561F5000, v12, OS_LOG_TYPE_ERROR, "Location Manager returned a location, but we can't report it because we can't record that fact. Throwing location information away.", v14, 2u);
    }

    if (completionBlock)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D033D8] code:7002 userInfo:0];
      (completionBlock)[2](completionBlock, 0, v13);
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queue = [(MDMLostDeviceLocationManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = errorCopy;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Location Manager failed: error=%{public}@", &v10, 0xCu);
  }

  completionBlock = [(MDMLostDeviceLocationManager *)self completionBlock];
  [(MDMLostDeviceLocationManager *)self _cleanupAfterResponseFromLocationManagerOrTimeout];
  if (completionBlock)
  {
    (completionBlock)[2](completionBlock, 0, errorCopy);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupAfterResponseFromLocationManagerOrTimeout
{
  locationManager = [(MDMLostDeviceLocationManager *)self locationManager];
  [locationManager stopUpdatingLocation];

  [(MDMLostDeviceLocationManager *)self setLocationManager:0];
  [(MDMLostDeviceLocationManager *)self setCompletionBlock:0];
  timeoutTimerDispatchSource = [(MDMLostDeviceLocationManager *)self timeoutTimerDispatchSource];
  if (timeoutTimerDispatchSource)
  {
    v5 = timeoutTimerDispatchSource;
    dispatch_source_cancel(timeoutTimerDispatchSource);
    [(MDMLostDeviceLocationManager *)self setTimeoutTimerDispatchSource:0];
    timeoutTimerDispatchSource = v5;
  }
}

- (BOOL)_updateLostModeFileForOriginator:(id)originator
{
  v29 = *MEMORY[0x277D85DE8];
  originatorCopy = originator;
  v4 = MEMORY[0x277CBEBC0];
  v5 = DMCSystemLostModeRequestPath();
  v6 = [v4 fileURLWithPath:v5 isDirectory:0];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = objc_opt_new();
  v18 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__MDMLostDeviceLocationManager__updateLostModeFileForOriginator___block_invoke;
  v14[3] = &unk_27982BE88;
  v16 = &v23;
  v8 = originatorCopy;
  v15 = v8;
  v17 = &v19;
  [v7 coordinateWritingItemAtURL:v6 options:0 error:&v18 byAccessor:v14];
  v9 = v18;

  if ((v24[3] & 1) == 0)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_2561F5000, v10, OS_LOG_TYPE_DEFAULT, "Could not read device last located time interval for update: %@", buf, 0xCu);
    }
  }

  v11 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void __65__MDMLostDeviceLocationManager__updateLostModeFileForOriginator___block_invoke(void *a1, void *a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1[5] + 8) + 24) = 1;
  v4 = MEMORY[0x277CCABB0];
  v5 = objc_opt_new();
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];

  v22[0] = *MEMORY[0x277D26440];
  v22[1] = @"originator";
  v7 = a1[4];
  v23[0] = v6;
  v23[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  if ([v8 writeToURL:v3 atomically:1])
  {
    v9 = *MEMORY[0x277CCA1B8];
    v10 = *MEMORY[0x277CBE878];
    v20[0] = *MEMORY[0x277CCA1B0];
    v20[1] = v10;
    v21[0] = v9;
    v21[1] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v17 = 0;
    v12 = [v3 setResourceValues:v11 error:&v17];
    v13 = v17;

    if (v12)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    else
    {
      v15 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_2561F5000, v15, OS_LOG_TYPE_ERROR, "Could not write device last located time interval URL resourve values: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "Could not write device last located time interval", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end