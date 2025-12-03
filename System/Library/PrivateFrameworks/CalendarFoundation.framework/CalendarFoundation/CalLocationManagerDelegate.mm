@interface CalLocationManagerDelegate
- (CalLocationManagerDelegate)initWithCurrentBundleID:(id)d completionBlock:(id)block;
- (void)cancel;
- (void)dealloc;
- (void)didFinishLocationLookupWithLocation:(id)location error:(id)error;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)timeout;
@end

@implementation CalLocationManagerDelegate

- (void)dealloc
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self];
  [(CLLocationManager *)self->_manager stopUpdatingLocation];
  [(CLLocationManager *)self->_manager setDelegate:0];
  v3.receiver = self;
  v3.super_class = CalLocationManagerDelegate;
  [(CalLocationManagerDelegate *)&v3 dealloc];
}

- (CalLocationManagerDelegate)initWithCurrentBundleID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = CalLocationManagerDelegate;
  v9 = [(CalLocationManagerDelegate *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentBundleID, d);
    v11 = _Block_copy(blockCopy);
    completionBlock = v10->_completionBlock;
    v10->_completionBlock = v11;

    v13 = MEMORY[0x1E69E96A0];
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v14 = [objc_alloc(MEMORY[0x1E695FBE8]) initWithEffectiveBundleIdentifier:v10->_currentBundleID delegate:v10 onQueue:v13];
    manager = v10->_manager;
    v10->_manager = v14;

    v16 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate initWithCurrentBundleID:? completionBlock:?];
    }

    v17 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate initWithCurrentBundleID:? completionBlock:?];
    }

    [(CLLocationManager *)v10->_manager startUpdatingLocation];
    [(CalLocationManagerDelegate *)v10 performSelector:sel_timeout withObject:0 afterDelay:30.0];
  }

  return v10;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    v6 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate locationManager:didUpdateLocations:];
    }

    lastObject = [locationsCopy lastObject];
    [(CalLocationManagerDelegate *)self didFinishLocationLookupWithLocation:lastObject error:0];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  if ([authorization authorizationStatus] - 1 <= 1)
  {
    v4 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate locationManagerDidChangeAuthorization:];
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:CalLocationErrorDomain code:1 userInfo:0];
    [(CalLocationManagerDelegate *)self didFinishLocationLookupWithLocation:0 error:v5];
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  v8 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_12;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E695FC60]])
  {
    code = [v8 code];

    if (code == 1 && ![managerCopy authorizationStatus])
    {
      v11 = +[CalFoundationLogSubsystem locations];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [CalLocationManagerDelegate locationManager:didFailWithError:];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CalLocationManagerDelegate locationManager:didFailWithError:];
  }

  [(CalLocationManagerDelegate *)self didFinishLocationLookupWithLocation:0 error:v8];
LABEL_12:
}

- (void)timeout
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)cancel
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)didFinishLocationLookupWithLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CalLocationManagerDelegate *)selfCopy didFinish])
  {
    v9 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate didFinishLocationLookupWithLocation:error:];
    }
  }

  else
  {
    [(CalLocationManagerDelegate *)selfCopy setDidFinish:1];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:selfCopy];
    completionBlock = [(CalLocationManagerDelegate *)selfCopy completionBlock];
    (completionBlock)[2](completionBlock, locationCopy, errorCopy);

    v11 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate didFinishLocationLookupWithLocation:selfCopy error:?];
    }

    [(CLLocationManager *)selfCopy->_manager stopUpdatingLocation];
    [(CLLocationManager *)selfCopy->_manager setDelegate:0];
  }

  objc_sync_exit(selfCopy);
}

- (void)initWithCurrentBundleID:(uint64_t *)a1 completionBlock:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithCurrentBundleID:(uint64_t *)a1 completionBlock:.cold.2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:didUpdateLocations:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)locationManagerDidChangeAuthorization:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)locationManager:didFailWithError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1B990D000, v0, OS_LOG_TYPE_ERROR, "Our location manager failed with the error [%@]", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)locationManager:didFailWithError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didFinishLocationLookupWithLocation:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didFinishLocationLookupWithLocation:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end