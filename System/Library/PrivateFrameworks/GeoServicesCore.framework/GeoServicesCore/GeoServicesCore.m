uint64_t geo_isolater_create(uint64_t a1)
{
  v2 = [geo_isolater alloc];

  return [(geo_isolater *)v2 initWithName:a1];
}

uint64_t geo_get_global_workloop(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1 | 0x2000];
  os_unfair_lock_lock_with_options();
  v3 = _geo_get_global_queue_globalQueueMap;
  if (!_geo_get_global_queue_globalQueueMap)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = _geo_get_global_queue_globalQueueMap;
    _geo_get_global_queue_globalQueueMap = v4;

    v3 = _geo_get_global_queue_globalQueueMap;
  }

  v6 = [v3 objectForKey:v2];
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.x%x", @"com.apple.geo.global.queue.", a1];
    v6 = geo_dispatch_workloop_create_with_qos([v7 UTF8String]);
    [_geo_get_global_queue_globalQueueMap setObject:v6 forKey:v2];
  }

  os_unfair_lock_unlock(&_geo_get_global_queue_globalQueueLock);

  return v6;
}

dispatch_queue_t geo_dispatch_queue_create_with_target(const char *a1, NSObject *a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create_with_target_V2(a1, v4, a2);

  return v5;
}

uint64_t geo_get_global_queue(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1 | 0x1000];
  os_unfair_lock_lock_with_options();
  v3 = _geo_get_global_queue_globalQueueMap;
  if (!_geo_get_global_queue_globalQueueMap)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = _geo_get_global_queue_globalQueueMap;
    _geo_get_global_queue_globalQueueMap = v4;

    v3 = _geo_get_global_queue_globalQueueMap;
  }

  v6 = [v3 objectForKey:v2];
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.x%x", @"com.apple.geo.global.queue.", a1];
    v6 = geo_dispatch_workloop_create_with_qos([v7 UTF8String]);
    [_geo_get_global_queue_globalQueueMap setObject:v6 forKey:v2];
  }

  os_unfair_lock_unlock(&_geo_get_global_queue_globalQueueLock);

  return v6;
}

NSObject *geo_dispatch_workloop_create_with_qos(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_qos_class_floor();
  dispatch_activate(inactive);

  return inactive;
}

void geo_isolate_sync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v3;
  v5 = v4;
  os_unfair_lock_lock_with_options();
  v5[2](v5);
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1AB6F7110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(a10 + 4);
  objc_exception_rethrow();
}

void geo_isolate_sync_data(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v3;
  v5 = v4;
  os_unfair_lock_lock_with_options();
  v5[2](v5);
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1AB6F71D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(a10 + 4);
  objc_exception_rethrow();
}

geo_isolater *geo_isolater_create_with_format(char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x64uLL, __format, va);
  result = [[geo_isolater alloc] initWithName:__str];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id GEORegisterPListStateCaptureAtFrequency(unsigned int a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v17 = _GEORegisterPListStateCaptureAtFrequency(a1, v15, v14, v16);

  return v17;
}

dispatch_queue_t geo_dispatch_queue_create_with_qos(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  v6 = dispatch_queue_create(a1, v5);

  return v6;
}

uint64_t GEOXPCServerTypeForIdentifier(void *a1)
{
  v1 = [a1 UTF8String];
  LOBYTE(v2) = *v1;
  if (!*v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v2 = v2;
    if (v3)
    {
      v2 = 0;
    }

    v4 += v2;
    if (v3 > 0x30)
    {
      break;
    }

    v2 = v1[++v3];
  }

  while (v2);
  if (v4 <= 612)
  {
    if (v4 > 503)
    {
      v5 = 15;
      v17 = 7;
      v18 = 21;
      if (v4 != 605)
      {
        v18 = 0;
      }

      if (v4 != 589)
      {
        v17 = v18;
      }

      if (v4 != 568)
      {
        v5 = v17;
      }

      v9 = 9;
      v19 = 3;
      v20 = 20;
      if (v4 != 560)
      {
        v20 = 0;
      }

      if (v4 != 528)
      {
        v19 = v20;
      }

      if (v4 != 504)
      {
        v9 = v19;
      }

      v12 = v4 <= 567;
    }

    else
    {
      v5 = 2;
      v14 = 18;
      if (v4 != 448)
      {
        v14 = v4 == 453;
      }

      if (v4 != 435)
      {
        v5 = v14;
      }

      v9 = 4;
      v15 = 16;
      v16 = 6;
      if (v4 != 433)
      {
        v16 = 0;
      }

      if (v4 != 339)
      {
        v15 = v16;
      }

      if (v4 != 134)
      {
        v9 = v15;
      }

      v12 = v4 <= 434;
    }
  }

  else if (v4 <= 758)
  {
    v5 = 23;
    v21 = 5;
    v22 = 17;
    if (v4 != 722)
    {
      v22 = 0;
    }

    if (v4 != 661)
    {
      v21 = v22;
    }

    if (v4 != 651)
    {
      v5 = v21;
    }

    v9 = 22;
    v23 = 24;
    v24 = 19;
    if (v4 != 645)
    {
      v24 = 0;
    }

    if (v4 != 636)
    {
      v23 = v24;
    }

    if (v4 != 613)
    {
      v9 = v23;
    }

    v12 = v4 <= 650;
  }

  else
  {
    v5 = 13;
    v6 = 12;
    if (v4 != 1755)
    {
      v6 = 0;
    }

    if (v4 != 961)
    {
      v5 = v6;
    }

    v7 = 25;
    v8 = 11;
    if (v4 != 881)
    {
      v8 = 0;
    }

    if (v4 != 866)
    {
      v7 = v8;
    }

    if (v4 <= 960)
    {
      v5 = v7;
    }

    v9 = 14;
    v10 = 10;
    v11 = 8;
    if (v4 != 770)
    {
      v11 = 0;
    }

    if (v4 != 766)
    {
      v10 = v11;
    }

    if (v4 != 759)
    {
      v9 = v10;
    }

    v12 = v4 <= 865;
  }

  if (v12)
  {
    return v9;
  }

  else
  {
    return v5;
  }
}

id GEOGetUserDefaultsLog()
{
  if (GEOGetUserDefaultsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetUserDefaultsLog_onceToken, &__block_literal_global_19);
  }

  v1 = GEOGetUserDefaultsLog_log;

  return v1;
}

NSObject *geo_dispatch_timer_create_on_qos(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  global_workloop = geo_get_global_workloop(a1);
  v11 = geo_dispatch_timer_create_on_queue(global_workloop, v9, a3, a4, a5);

  return v11;
}

NSObject *geo_dispatch_timer_create_on_queue(NSObject *a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  v11 = v10;
  if (v10)
  {
    if (a4 == -1.0)
    {
      v12 = -1;
    }

    else
    {
      v12 = (a4 * 1000000000.0);
    }

    dispatch_source_set_event_handler(v10, v9);
    v13 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v11, v13, v12, (a5 * 1000000.0));
    v14 = v11;
  }

  return v11;
}

id _GEOCreateTransaction(char *__format, ...)
{
  va_start(va, __format);
  v36 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  vsnprintf(__str, 0x1F4uLL, __format, va);
  v1 = os_transaction_create();
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

void geo_reentrant_isolate_sync_data(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v3;
  v5 = v4;
  os_unfair_recursive_lock_lock_with_options();
  v5[2](v5);
  os_unfair_recursive_lock_unlock();
}

void sub_1AB6F78E8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

geo_state_capture_handle *_GEORegisterPListStateCaptureAtFrequency(unsigned int a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(geo_state_capture_handle);
  v12 = v11;
  if (v11)
  {
    v11->_frequency = a1;
    objc_storeWeak(&v11->_weakStateCapturing, v9);
    objc_storeStrong(&v12->_queue, a2);
    v13 = [v10 dataUsingEncoding:4];
    description = v12->_description;
    v12->_description = v13;

    objc_initWeak(location, v12);
    if (_GEOStateCaptureQueue_once != -1)
    {
      dispatch_once(&_GEOStateCaptureQueue_once, &__block_literal_global_38);
    }

    v15 = _GEOStateCaptureQueue_queue;
    objc_copyWeak(&v19, location);
    v16 = os_state_add_handler();

    v12->_stateCaptureHandle = v16;
    v17 = v12;
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_fault_impl(&dword_1AB6F6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: handle != ((void*)0)", location, 2u);
  }

  return v12;
}

void geo_dispatch_async_qos(uint64_t a1, void *a2)
{
  v3 = a2;
  global_queue = geo_get_global_queue(a1);
  dispatch_async(global_queue, v3);
}

void GEORegisterPListStateCaptureLegacy(void *a1, void *a2, unsigned int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  if (!a1)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v24 = 0;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "Assertion failed: legacyHandle != ((void*)0)";
    v22 = &v24;
LABEL_13:
    _os_log_fault_impl(&dword_1AB6F6000, v20, OS_LOG_TYPE_FAULT, v21, v22, 2u);
    goto LABEL_8;
  }

  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "Assertion failed: self != ((void*)0)";
    v22 = buf;
    goto LABEL_13;
  }

  if (GEORegisterPListStateCaptureLegacy_onceToken != -1)
  {
    dispatch_once(&GEORegisterPListStateCaptureLegacy_onceToken, &__block_literal_global);
  }

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v15 arguments:&a9];
  v17 = _GEORegisterPListStateCaptureAtFrequency(a3, v14, v13, v16);
  if (v17)
  {
    *a1 = atomic_fetch_add(&_legacyHandleId, 1uLL);
    v18 = _legacyHandles;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v18 setObject:v17 forKeyedSubscript:v19];
  }

LABEL_8:
}

uint64_t __GEORegisterPListStateCaptureLegacy_block_invoke()
{
  _legacyHandleId = 1;
  _legacyHandles = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];

  return MEMORY[0x1EEE66BB8]();
}

dispatch_queue_t geo_dispatch_queue_create_with_workloop_qos(const char *a1, uint64_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  global_workloop = geo_get_global_workloop(a2);
  v7 = dispatch_queue_create_with_target_V2(a1, v5, global_workloop);

  return v7;
}

id geo_dispatch_block_clean_copy(dispatch_block_t block)
{
  v1 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS|DISPATCH_BLOCK_DETACHED|0x40, block);

  return v1;
}

id GEOGetStateCaptureLog()
{
  if (GEOGetStateCaptureLog_onceToken != -1)
  {
    dispatch_once(&GEOGetStateCaptureLog_onceToken, &__block_literal_global_25);
  }

  v1 = GEOGetStateCaptureLog_log;

  return v1;
}

id GEOGetCountryConfigurationLog()
{
  if (GEOGetCountryConfigurationLog_onceToken != -1)
  {
    dispatch_once(&GEOGetCountryConfigurationLog_onceToken, &__block_literal_global_41);
  }

  v1 = GEOGetCountryConfigurationLog_log;

  return v1;
}

uint64_t __GEOGetOfflineServiceLog_block_invoke()
{
  GEOGetOfflineServiceLog_log = os_log_create("com.apple.GeoServices", "OfflineService");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __GEOGetStateCaptureLog_block_invoke()
{
  GEOGetStateCaptureLog_log = os_log_create("com.apple.GeoServices", "StateCapture");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetOfflineStateLog()
{
  if (GEOGetOfflineStateLog_onceToken != -1)
  {
    dispatch_once(&GEOGetOfflineStateLog_onceToken, &__block_literal_global_43);
  }

  v1 = GEOGetOfflineStateLog_log;

  return v1;
}

uint64_t __GEOGetOfflineStateLog_block_invoke()
{
  GEOGetOfflineStateLog_log = os_log_create("com.apple.GeoServices", "OfflineState");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetResourceManifestLog()
{
  if (GEOGetResourceManifestLog_onceToken != -1)
  {
    dispatch_once(&GEOGetResourceManifestLog_onceToken, &__block_literal_global_10);
  }

  v1 = GEOGetResourceManifestLog_log;

  return v1;
}

id GEOGetOfflineServiceLog()
{
  if (GEOGetOfflineServiceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetOfflineServiceLog_onceToken, &__block_literal_global_40);
  }

  v1 = GEOGetOfflineServiceLog_log;

  return v1;
}

uint64_t __GEOGetResourceManifestLog_block_invoke()
{
  GEOGetResourceManifestLog_log = os_log_create("com.apple.GeoServices", "ResourceManifest");

  return MEMORY[0x1EEE66BB8]();
}

dispatch_queue_t geo_dispatch_queue_create_with_format(char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x64uLL, __format, va);
  result = geo_dispatch_queue_create_with_target(__str, 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

geo_reentrant_isolater *geo_reentrant_isolater_create_with_format(char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x64uLL, __format, va);
  result = [[geo_reentrant_isolater alloc] initWithName:__str];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id GEOGetUserSessionLog()
{
  if (GEOGetUserSessionLog_onceToken != -1)
  {
    dispatch_once(&GEOGetUserSessionLog_onceToken, &__block_literal_global_25_53);
  }

  v1 = GEOGetUserSessionLog_log;

  return v1;
}

uint64_t __GEOGetUserSessionLog_block_invoke()
{
  GEOGetUserSessionLog_log = os_log_create("com.apple.GeoServices", "UserSession");

  return MEMORY[0x1EEE66BB8]();
}

double GEOMachAbsoluteTimeGetCurrent()
{
  if (GEOMachAbsoluteTimeGetCurrent::onceToken != -1)
  {
    dispatch_once(&GEOMachAbsoluteTimeGetCurrent::onceToken, &__block_literal_global_5);
  }

  return *&GEOMachAbsoluteTimeGetCurrent::timeScale * mach_absolute_time();
}

double __GEOMachAbsoluteTimeGetCurrent_block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1 * 0.000000001;
  GEOMachAbsoluteTimeGetCurrent::timeScale = *&result;
  return result;
}

void geo_reentrant_isolate_sync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v3;
  v5 = v4;
  os_unfair_recursive_lock_lock_with_options();
  v5[2](v5);
  os_unfair_recursive_lock_unlock();
}

void sub_1AB6F8A5C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void __geo_isolate_async_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v2 = v1;
  os_unfair_lock_lock_with_options();
  v2[2](v2);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1AB6F8B54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(a10 + 4);
  objc_exception_rethrow();
}

id GEOGetTileLoadingLog()
{
  if (GEOGetTileLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetTileLoadingLog_onceToken, &__block_literal_global_16);
  }

  v1 = GEOGetTileLoadingLog_log;

  return v1;
}

uint64_t __GEOGetCountryConfigurationLog_block_invoke()
{
  GEOGetCountryConfigurationLog_log = os_log_create("com.apple.GeoServices", "CountryConfiguration");

  return MEMORY[0x1EEE66BB8]();
}

void geo_isolate_async(void *a1, NSObject *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __geo_isolate_async_block_invoke;
  v9[3] = &unk_1E795E858;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(a2, v9);
}

uint64_t __GEOGetTileLoadingLog_block_invoke()
{
  GEOGetTileLoadingLog_log = os_log_create("com.apple.GeoServices", "TileLoading");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t geo_reentrant_isolater_create(uint64_t a1)
{
  v2 = [geo_reentrant_isolater alloc];

  return [(geo_reentrant_isolater *)v2 initWithName:a1];
}

__CFString *GEOXPCServerIdentifierForType(uint64_t a1)
{
  if ((a1 - 1) > 0x18)
  {
    return @"_any_";
  }

  else
  {
    return off_1E795E6E8[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __47__geo_state_capture_handle__capturePlistState___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v2 = [WeakRetained captureStatePlistWithHints:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void GEOUnregisterStateCaptureLegacy(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = _legacyHandles;
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v2 removeObjectForKey:v3];

      *a1 = 0;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&dword_1AB6F6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: legacyHandle != ((void*)0)", v4, 2u);
  }
}

uint64_t GEOMachContinuousTimeForTimestamp(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = mach_continuous_time();
  if (GEOMachContinuousTimeForTimestamp::onceToken != -1)
  {
    dispatch_once(&GEOMachContinuousTimeForTimestamp::onceToken, &__block_literal_global_3);
  }

  return v3 + ((a1 - Current) / *&GEOMachContinuousTimeForTimestamp::timeScale);
}

double __GEOMachContinuousTimeForTimestamp_block_invoke()
{
  mach_timebase_info(&info);
  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  result = v0 / v1 * 0.000000001;
  GEOMachContinuousTimeForTimestamp::timeScale = *&result;
  return result;
}

dispatch_queue_t geo_dispatch_queue_create_with_target_and_qos(const char *a1, void *a2, dispatch_qos_class_t a3)
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a3, 0);
  v8 = a2;

  v9 = dispatch_queue_create_with_target_V2(a1, v7, v8);

  return v9;
}

dispatch_workloop_t geo_dispatch_workloop_create_with_format(char *__format, ...)
{
  va_start(va, __format);
  v4 = *MEMORY[0x1E69E9840];
  vsnprintf(__str, 0x64uLL, __format, va);
  result = dispatch_workloop_create(__str);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id geo_get_global_operation_queue(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  os_unfair_lock_lock_with_options();
  v3 = geo_get_global_operation_queue_globalOpQueueMap;
  if (!geo_get_global_operation_queue_globalOpQueueMap)
  {
    v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v5 = geo_get_global_operation_queue_globalOpQueueMap;
    geo_get_global_operation_queue_globalOpQueueMap = v4;

    v3 = geo_get_global_operation_queue_globalOpQueueMap;
  }

  v6 = [v3 objectForKey:v2];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.x%x", @"com.apple.geo.global.opqueue.", a1];
    [v6 setName:v7];

    [v6 setMaxConcurrentOperationCount:1];
    global_queue = geo_get_global_queue(a1);
    [v6 setUnderlyingQueue:global_queue];
    [geo_get_global_operation_queue_globalOpQueueMap setObject:v6 forKey:v2];
  }

  os_unfair_lock_unlock(&geo_get_global_operation_queue_globalOpQueueLock);

  return v6;
}

geo_object_isolater *geo_object_isolater_create(void *a1)
{
  v1 = a1;
  v2 = [[geo_object_isolater alloc] initWithValue:v1];

  return v2;
}

id GEOGetCuratedCollectionsLog()
{
  if (GEOGetCuratedCollectionsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetCuratedCollectionsLog_onceToken, &__block_literal_global_4);
  }

  v1 = GEOGetCuratedCollectionsLog_log;

  return v1;
}

uint64_t __GEOGetCuratedCollectionsLog_block_invoke()
{
  GEOGetCuratedCollectionsLog_log = os_log_create("com.apple.GeoServices", "CuratedCollections");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetPlaceRequestLog()
{
  if (GEOGetPlaceRequestLog_onceToken != -1)
  {
    dispatch_once(&GEOGetPlaceRequestLog_onceToken, &__block_literal_global_7);
  }

  v1 = GEOGetPlaceRequestLog_log;

  return v1;
}

uint64_t __GEOGetPlaceRequestLog_block_invoke()
{
  GEOGetPlaceRequestLog_log = os_log_create("com.apple.GeoServices", "PlaceRequest");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetRoutePreloaderLog()
{
  if (GEOGetRoutePreloaderLog_onceToken != -1)
  {
    dispatch_once(&GEOGetRoutePreloaderLog_onceToken, &__block_literal_global_13);
  }

  v1 = GEOGetRoutePreloaderLog_log;

  return v1;
}

uint64_t __GEOGetRoutePreloaderLog_block_invoke()
{
  GEOGetRoutePreloaderLog_log = os_log_create("com.apple.GeoServices", "RoutePreloader");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __GEOGetUserDefaultsLog_block_invoke()
{
  GEOGetUserDefaultsLog_log = os_log_create("com.apple.GeoServices", "UserDefaults");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetPOIBusynessLog()
{
  if (GEOGetPOIBusynessLog_onceToken != -1)
  {
    dispatch_once(&GEOGetPOIBusynessLog_onceToken, &__block_literal_global_22);
  }

  v1 = GEOGetPOIBusynessLog_log;

  return v1;
}

uint64_t __GEOGetPOIBusynessLog_block_invoke()
{
  GEOGetPOIBusynessLog_log = os_log_create("com.apple.GeoServices", "POIBusyness");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetLaunchLog()
{
  if (GEOGetLaunchLog_onceToken != -1)
  {
    dispatch_once(&GEOGetLaunchLog_onceToken, &__block_literal_global_28);
  }

  v1 = GEOGetLaunchLog_log;

  return v1;
}

uint64_t __GEOGetLaunchLog_block_invoke()
{
  GEOGetLaunchLog_log = os_log_create("com.apple.GeoServices", "Launch");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetPlaceCardLayoutLog()
{
  if (GEOGetPlaceCardLayoutLog_onceToken != -1)
  {
    dispatch_once(&GEOGetPlaceCardLayoutLog_onceToken, &__block_literal_global_31);
  }

  v1 = GEOGetPlaceCardLayoutLog_log;

  return v1;
}

uint64_t __GEOGetPlaceCardLayoutLog_block_invoke()
{
  GEOGetPlaceCardLayoutLog_log = os_log_create("com.apple.GeoServices", "PlaceCardLayout");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetSubscriptionsLog()
{
  if (GEOGetSubscriptionsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetSubscriptionsLog_onceToken, &__block_literal_global_34);
  }

  v1 = GEOGetSubscriptionsLog_log;

  return v1;
}

uint64_t __GEOGetSubscriptionsLog_block_invoke()
{
  GEOGetSubscriptionsLog_log = os_log_create("com.apple.GeoServices", "Subscriptions");

  return MEMORY[0x1EEE66BB8]();
}

id GEOGetOfflineDataAccessLog()
{
  if (GEOGetOfflineDataAccessLog_onceToken != -1)
  {
    dispatch_once(&GEOGetOfflineDataAccessLog_onceToken, &__block_literal_global_37);
  }

  v1 = GEOGetOfflineDataAccessLog_log;

  return v1;
}

uint64_t __GEOGetOfflineDataAccessLog_block_invoke()
{
  GEOGetOfflineDataAccessLog_log = os_log_create("com.apple.GeoServices", "OfflineDataAccess");

  return MEMORY[0x1EEE66BB8]();
}