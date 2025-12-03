@interface CalLocationAuthorization
+ (BOOL)preciseLocationAuthorizedForBundleIdentifier:(id)identifier bundle:(id)bundle;
+ (id)_cachedInstanceForBundleID:(id)d bundle:(id)bundle;
+ (id)_keyForBundleID:(id)d bundle:(id)bundle;
+ (id)authorizationForBundleIdentifier:(id)identifier bundle:(id)bundle createIfNecessary:(BOOL)necessary;
+ (id)locationAuthorizationAsyncCallersQueue;
+ (id)logHandle;
+ (int)authorizationStatusForBundle:(id)bundle;
+ (int)authorizationStatusForBundleIdentifier:(id)identifier bundle:(id)bundle;
+ (unint64_t)locationPrecisionForBundleIdentifier:(id)identifier bundle:(id)bundle;
+ (unint64_t)ttlLocationStatus;
+ (void)authorizationStatusForBundle:(id)bundle completion:(id)completion;
+ (void)authorizationStatusForBundleIdentifier:(id)identifier bundle:(id)bundle completion:(id)completion;
+ (void)initializeQueueAndInstancesIfNeeded;
+ (void)preciseLocationAuthorizedForBundleIdentifier:(id)identifier bundle:(id)bundle completion:(id)completion;
+ (void)ttlLocationStatusWithCompletion:(id)completion;
- (CalLocationAuthorization)initWithBundleID:(id)d bundle:(id)bundle queue:(id)queue;
- (id)authorizationStatus;
- (unint64_t)waitForPrecision;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)waitForPrecision;
@end

@implementation CalLocationAuthorization

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[CalLocationAuthorization logHandle];
  }

  v3 = logHandle_logHandle;

  return v3;
}

uint64_t __37__CalLocationAuthorization_logHandle__block_invoke()
{
  logHandle_logHandle = os_log_create("CalendarFoundation", "CalLocationAuthorization");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)locationAuthorizationAsyncCallersQueue
{
  if (locationAuthorizationAsyncCallersQueue_onceToken != -1)
  {
    +[CalLocationAuthorization locationAuthorizationAsyncCallersQueue];
  }

  v3 = locationAuthorizationAsyncCallersQueue_queue;

  return v3;
}

void __66__CalLocationAuthorization_locationAuthorizationAsyncCallersQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.CalendarFoundation.CalLocationAuthorization.AsyncCallers", v2);
  v1 = locationAuthorizationAsyncCallersQueue_queue;
  locationAuthorizationAsyncCallersQueue_queue = v0;
}

+ (void)authorizationStatusForBundle:(id)bundle completion:(id)completion
{
  completionCopy = completion;
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  [self authorizationStatusForBundleIdentifier:bundleIdentifier bundle:bundleCopy completion:completionCopy];
}

+ (void)authorizationStatusForBundleIdentifier:(id)identifier bundle:(id)bundle completion:(id)completion
{
  identifierCopy = identifier;
  bundleCopy = bundle;
  completionCopy = completion;
  v11 = [self _cachedInstanceForBundleID:identifierCopy bundle:bundleCopy];
  v12 = v11;
  if (v11)
  {
    authorizationStatus = [v11 authorizationStatus];
    status = [authorizationStatus status];

    completionCopy[2](completionCopy, status);
  }

  else
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __85__CalLocationAuthorization_authorizationStatusForBundleIdentifier_bundle_completion___block_invoke;
    v20 = &unk_1E7EC6490;
    selfCopy = self;
    v21 = identifierCopy;
    v22 = bundleCopy;
    v23 = completionCopy;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v17);
    locationAuthorizationAsyncCallersQueue = [self locationAuthorizationAsyncCallersQueue];
    dispatch_async(locationAuthorizationAsyncCallersQueue, v15);
  }
}

uint64_t __85__CalLocationAuthorization_authorizationStatusForBundleIdentifier_bundle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 56) authorizationStatusForBundleIdentifier:*(a1 + 32) bundle:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

+ (int)authorizationStatusForBundle:(id)bundle
{
  bundleCopy = bundle;
  bundleIdentifier = [bundleCopy bundleIdentifier];
  LODWORD(self) = [self authorizationStatusForBundleIdentifier:bundleIdentifier bundle:bundleCopy];

  return self;
}

+ (int)authorizationStatusForBundleIdentifier:(id)identifier bundle:(id)bundle
{
  v4 = [self authorizationForBundleIdentifier:identifier bundle:bundle createIfNecessary:1];
  v5 = v4;
  if (v4)
  {
    authorizationStatus = [v4 authorizationStatus];
    status = [authorizationStatus status];
  }

  else
  {
    status = 2;
  }

  return status;
}

+ (unint64_t)locationPrecisionForBundleIdentifier:(id)identifier bundle:(id)bundle
{
  v4 = [self authorizationForBundleIdentifier:identifier bundle:bundle createIfNecessary:0];
  v5 = v4;
  if (v4)
  {
    authorizationStatus = [v4 authorizationStatus];
    precision = [authorizationStatus precision];
  }

  else
  {
    precision = 0;
  }

  return precision;
}

+ (void)preciseLocationAuthorizedForBundleIdentifier:(id)identifier bundle:(id)bundle completion:(id)completion
{
  identifierCopy = identifier;
  bundleCopy = bundle;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__CalLocationAuthorization_preciseLocationAuthorizedForBundleIdentifier_bundle_completion___block_invoke;
  aBlock[3] = &unk_1E7EC6490;
  selfCopy = self;
  v11 = identifierCopy;
  v21 = v11;
  v12 = bundleCopy;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [self _cachedInstanceForBundleID:v11 bundle:v12];
  if (v15)
  {
    v14[2](v14);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__CalLocationAuthorization_preciseLocationAuthorizedForBundleIdentifier_bundle_completion___block_invoke_2;
    block[3] = &unk_1E7EC64B8;
    v19 = v14;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    locationAuthorizationAsyncCallersQueue = [self locationAuthorizationAsyncCallersQueue];
    dispatch_async(locationAuthorizationAsyncCallersQueue, v16);
  }
}

uint64_t __91__CalLocationAuthorization_preciseLocationAuthorizedForBundleIdentifier_bundle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 56) preciseLocationAuthorizedForBundleIdentifier:*(a1 + 32) bundle:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

+ (BOOL)preciseLocationAuthorizedForBundleIdentifier:(id)identifier bundle:(id)bundle
{
  v4 = [self authorizationForBundleIdentifier:identifier bundle:bundle createIfNecessary:1];
  v5 = [v4 waitForPrecision] == 2;

  return v5;
}

+ (void)initializeQueueAndInstancesIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CalLocationAuthorization_initializeQueueAndInstancesIfNeeded__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initializeQueueAndInstancesIfNeeded_onceToken != -1)
  {
    dispatch_once(&initializeQueueAndInstancesIfNeeded_onceToken, block);
  }
}

void __63__CalLocationAuthorization_initializeQueueAndInstancesIfNeeded__block_invoke(uint64_t a1)
{
  if ([CalEntitlementsVerifier currentProcessHasBooleanEntitlement:@"com.apple.locationd.effective_bundle"])
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.CalendarFoundation.CalLocationAuthorization.Request", v2);
    v4 = locationAuthorizationQueue;
    locationAuthorizationQueue = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v6 = idInstances;
    idInstances = v5;

    bundleInstances = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

    MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v7 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__CalLocationAuthorization_initializeQueueAndInstancesIfNeeded__block_invoke_cold_1(v7);
    }
  }
}

+ (id)_keyForBundleID:(id)d bundle:(id)bundle
{
  dCopy = d;
  bundleCopy = bundle;
  v7 = dCopy;
  bundlePath = v7;
  if (!v7)
  {
    bundlePath = [bundleCopy bundlePath];
    if (!bundlePath)
    {
      bundleURL = [bundleCopy bundleURL];
      bundlePath = [bundleURL absoluteString];
    }
  }

  return bundlePath;
}

+ (id)_cachedInstanceForBundleID:(id)d bundle:(id)bundle
{
  bundleCopy = bundle;
  dCopy = d;
  [self initializeQueueAndInstancesIfNeeded];
  v8 = &idInstances;
  if (bundleCopy)
  {
    v8 = &bundleInstances;
  }

  v9 = *v8;
  v10 = [self _keyForBundleID:dCopy bundle:bundleCopy];

  os_unfair_lock_lock(&instancesDictionaryLock);
  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:v10];
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock(&instancesDictionaryLock);

  return v11;
}

+ (id)authorizationForBundleIdentifier:(id)identifier bundle:(id)bundle createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  bundleCopy = bundle;
  if (identifierCopy | bundleCopy)
  {
    [self initializeQueueAndInstancesIfNeeded];
    if (!locationAuthorizationQueue)
    {
      v11 = 0;
      goto LABEL_19;
    }

    v12 = &idInstances;
    if (bundleCopy)
    {
      v12 = &bundleInstances;
    }

    logHandle = *v12;
    v13 = [self _keyForBundleID:identifierCopy bundle:bundleCopy];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    os_unfair_lock_lock(&instancesDictionaryLock);
    if (v13)
    {
      v14 = [logHandle objectForKeyedSubscript:v13];
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(v25 + 5, v14);
    if (v13)
    {
    }

    os_unfair_lock_unlock(&instancesDictionaryLock);
    v15 = v25[5];
    if (!v15 && necessaryCopy)
    {
      v16 = locationAuthorizationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__CalLocationAuthorization_authorizationForBundleIdentifier_bundle_createIfNecessary___block_invoke;
      block[3] = &unk_1E7EC6500;
      v19 = v13;
      v23 = &v24;
      v20 = logHandle;
      v21 = identifierCopy;
      v22 = bundleCopy;
      dispatch_sync(v16, block);

      v15 = v25[5];
    }

    v11 = v15;
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
    {
      [CalLocationAuthorization authorizationForBundleIdentifier:logHandle bundle:? createIfNecessary:?];
    }

    v11 = 0;
  }

LABEL_19:

  return v11;
}

void __86__CalLocationAuthorization_authorizationForBundleIdentifier_bundle_createIfNecessary___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    os_unfair_lock_lock(&instancesDictionaryLock);
    v2 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
    v3 = *(*(a1 + 64) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    os_unfair_lock_unlock(&instancesDictionaryLock);
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = [CalLocationAuthorization alloc];
    v6 = [(CalLocationAuthorization *)v5 initWithBundleID:*(a1 + 48) bundle:*(a1 + 56) queue:locationAuthorizationQueue];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(a1 + 32))
    {
      os_unfair_lock_lock(&instancesDictionaryLock);
      [*(a1 + 40) setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:*(a1 + 32)];

      os_unfair_lock_unlock(&instancesDictionaryLock);
    }
  }
}

- (CalLocationAuthorization)initWithBundleID:(id)d bundle:(id)bundle queue:(id)queue
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  bundleCopy = bundle;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v30.receiver = self;
  v30.super_class = CalLocationAuthorization;
  v11 = [(CalLocationAuthorization *)&v30 init];
  v12 = v11;
  if (v11)
  {
    if (bundleCopy)
    {
      v13 = bundleCopy;
    }

    else
    {
      v13 = dCopy;
    }

    objc_storeStrong(&v11->_bundleOrBundleIdentifier, v13);
    v14 = dispatch_group_create();
    initializationGroup = v12->_initializationGroup;
    v12->_initializationGroup = v14;

    v16 = MEMORY[0x1E695FBE8];
    if (bundleCopy)
    {
      bundlePath = [bundleCopy bundlePath];
      v18 = [v16 authorizationStatusForBundlePath:bundlePath];
    }

    else
    {
      v18 = [MEMORY[0x1E695FBE8] authorizationStatusForBundleIdentifier:dCopy];
    }

    if (v18 >= 3)
    {
      dispatch_group_enter(v12->_initializationGroup);
    }

    v19 = [[CalLocationAuthorizationStatus alloc] initWithStatus:v18 precision:v18 < 3];
    status = v12->_status;
    v12->_status = v19;

    logHandle = [objc_opt_class() logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = dCopy;
      v33 = 1024;
      v34 = v18;
      _os_log_impl(&dword_1B990D000, logHandle, OS_LOG_TYPE_DEFAULT, "Got initial location auth status for %{public}@ = %d", buf, 0x12u);
    }

    v12->_initializedTimestamp = CalApproximateContinuousTime();
    v22 = objc_alloc(MEMORY[0x1E695FBE8]);
    v23 = v22;
    if (bundleCopy)
    {
      bundlePath2 = [bundleCopy bundlePath];
      v25 = [v23 initWithEffectiveBundlePath:bundlePath2 delegate:v12 onQueue:queueCopy];
      locationManager = v12->_locationManager;
      v12->_locationManager = v25;
    }

    else
    {
      v27 = [v22 initWithEffectiveBundleIdentifier:dCopy delegate:v12 onQueue:queueCopy];
      bundlePath2 = v12->_locationManager;
      v12->_locationManager = v27;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)authorizationStatus
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_status;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v32 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  logHandle = [objc_opt_class() logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    bundleOrBundleIdentifier = self->_bundleOrBundleIdentifier;
    *buf = 138543618;
    v29 = *&bundleOrBundleIdentifier;
    v30 = 1024;
    v31 = authorizationStatus;
    _os_log_impl(&dword_1B990D000, logHandle, OS_LOG_TYPE_DEFAULT, "Got updated location auth status for %{public}@ = %d", buf, 0x12u);
  }

  _limitsPrecision = [authorizationCopy _limitsPrecision];
  v9 = 1;
  if (_limitsPrecision)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [[CalLocationAuthorizationStatus alloc] initWithStatus:authorizationStatus precision:v10];
  os_unfair_lock_lock(&self->_lock);
  precision = [(CalLocationAuthorizationStatus *)self->_status precision];
  if ([(CalLocationAuthorizationStatus *)self->_status status]== authorizationStatus)
  {
    v9 = [(CalLocationAuthorizationStatus *)self->_status precision]!= v10;
  }

  objc_storeStrong(&self->_status, v11);
  if (!self->_firstCallbackReceivedTimestamp)
  {
    self->_firstCallbackReceivedTimestamp = CalApproximateContinuousTime();
    v13 = CalApproximateContinuousTime();
    v14 = CalContinuousIntervalToNSTimeInterval(v13 - self->_initializedTimestamp);
    if (v14 <= 20.0)
    {
      v15 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v15 = OS_LOG_TYPE_ERROR;
    }

    v16 = +[CalLocationAuthorization logHandle];
    if (os_log_type_enabled(v16, v15))
    {
      *buf = 134217984;
      v29 = v14;
      _os_log_impl(&dword_1B990D000, v16, v15, "It took %f seconds for CLLocationManager to deliver its first callback", buf, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (precision)
  {
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_group_leave(self->_initializationGroup);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  if (locationManagerDidChangeAuthorization__onceToken != -1)
  {
    [CalLocationAuthorization locationManagerDidChangeAuthorization:];
  }

  v17 = self->_bundleOrBundleIdentifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = @"CalLocationAuthorizationBundleIdentifierKey";
  }

  else
  {
    v18 = @"CalLocationAuthorizationBundleKey";
  }

  v19 = self->_bundleOrBundleIdentifier;
  v26 = v18;
  v27 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v21 = locationManagerDidChangeAuthorization__notificationQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__CalLocationAuthorization_locationManagerDidChangeAuthorization___block_invoke_2;
  v24[3] = &unk_1E7EC6528;
  v24[4] = self;
  v25 = v20;
  v22 = v20;
  dispatch_async(v21, v24);

LABEL_25:
  v23 = *MEMORY[0x1E69E9840];
}

void __66__CalLocationAuthorization_locationManagerDidChangeAuthorization___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.CalendarFoundation.CalLocationAuthorization.Notification", v2);
  v1 = locationManagerDidChangeAuthorization__notificationQueue;
  locationManagerDidChangeAuthorization__notificationQueue = v0;
}

void __66__CalLocationAuthorization_locationManagerDidChangeAuthorization___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"CalLocationAuthorizationChangedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (unint64_t)waitForPrecision
{
  os_unfair_lock_lock(&self->_lock);
  precision = [(CalLocationAuthorizationStatus *)self->_status precision];
  if (precision || !self->_firstCallbackReceivedTimestamp && (v5 = CalApproximateContinuousTime(), v6 = 60.0 - CalContinuousIntervalToNSTimeInterval(v5 - self->_initializedTimestamp), v6 > 0.0) && (v7 = dispatch_time(0, (v6 * 1000000000.0)), os_unfair_lock_unlock(&self->_lock), dispatch_group_wait(self->_initializationGroup, v7), os_unfair_lock_lock(&self->_lock), (precision = [(CalLocationAuthorizationStatus *)self->_status precision]) != 0))
  {
    v4 = precision;
  }

  else
  {
    if (!self->_failedToInitializePrecision)
    {
      self->_failedToInitializePrecision = 1;
      v8 = +[CalLocationAuthorization logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CalLocationAuthorization *)self waitForPrecision];
      }

      v9 = [[CalABCReporter alloc] initWithType:@"Foundation" subtype:@"Location" context:@"Precision Timeout"];
      [(CalABCReporter *)v9 report];
    }

    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

+ (void)ttlLocationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CalLocationAuthorization_ttlLocationStatusWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7EC6550;
  selfCopy = self;
  v5 = completionCopy;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [self _cachedInstanceForBundleID:@"com.apple.mobilecal" bundle:0];
  if (v7)
  {
    v6[2](v6);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CalLocationAuthorization_ttlLocationStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E7EC64B8;
    v11 = v6;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    locationAuthorizationAsyncCallersQueue = [self locationAuthorizationAsyncCallersQueue];
    dispatch_async(locationAuthorizationAsyncCallersQueue, v8);
  }
}

uint64_t __60__CalLocationAuthorization_ttlLocationStatusWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 40) ttlLocationStatus];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (unint64_t)ttlLocationStatus
{
  if ([CalLocationAuthorization authorizationStatusForBundleIdentifier:@"com.apple.mobilecal"]< 3)
  {
    return 1;
  }

  v3 = +[CalLocationBundle bundle];
  v4 = [CalLocationAuthorization authorizationStatusForBundle:v3];

  if (v4 != 3)
  {
    return 3;
  }

  v5 = [CalLocationAuthorization locationPrecisionForBundleIdentifier:@"com.apple.mobilecal"];
  if (v5 == 1)
  {
    return 2;
  }

  else
  {
    return 4 * (v5 != 0);
  }
}

void __63__CalLocationAuthorization_initializeQueueAndInstancesIfNeeded__block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"com.apple.locationd.effective_bundle";
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Need the '%{public}@' entitlement in order to determine if current process has location authorization", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)waitForPrecision
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(self + 8);
  v5 = CalApproximateContinuousTime();
  v6 = CalContinuousIntervalToNSTimeInterval(v5 - *(self + 48));
  v8 = 138412546;
  v9 = v4;
  v10 = 2048;
  v11 = v6;
  _os_log_fault_impl(&dword_1B990D000, a2, OS_LOG_TYPE_FAULT, "Timed out waiting on location precision for bundle %@ (initialization was %f seconds ago)", &v8, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end