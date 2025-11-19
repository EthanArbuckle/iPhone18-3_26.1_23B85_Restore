@interface CalLocationManagerDelegate
- (CalLocationManagerDelegate)initWithCurrentBundleID:(id)a3 completionBlock:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)didFinishLocationLookupWithLocation:(id)a3 error:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
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

- (CalLocationManagerDelegate)initWithCurrentBundleID:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = CalLocationManagerDelegate;
  v9 = [(CalLocationManagerDelegate *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentBundleID, a3);
    v11 = _Block_copy(v8);
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

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate locationManager:didUpdateLocations:];
    }

    v7 = [v5 lastObject];
    [(CalLocationManagerDelegate *)self didFinishLocationLookupWithLocation:v7 error:0];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  if ([a3 authorizationStatus] - 1 <= 1)
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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = [v7 domain];
  if ([v9 isEqualToString:*MEMORY[0x1E695FC60]])
  {
    v10 = [v8 code];

    if (v10 == 1 && ![v6 authorizationStatus])
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

- (void)didFinishLocationLookupWithLocation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([(CalLocationManagerDelegate *)v8 didFinish])
  {
    v9 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate didFinishLocationLookupWithLocation:error:];
    }
  }

  else
  {
    [(CalLocationManagerDelegate *)v8 setDidFinish:1];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v8];
    v10 = [(CalLocationManagerDelegate *)v8 completionBlock];
    (v10)[2](v10, v6, v7);

    v11 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [CalLocationManagerDelegate didFinishLocationLookupWithLocation:v8 error:?];
    }

    [(CLLocationManager *)v8->_manager stopUpdatingLocation];
    [(CLLocationManager *)v8->_manager setDelegate:0];
  }

  objc_sync_exit(v8);
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