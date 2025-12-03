@interface CalLocationManager
+ (BOOL)isCurrentProcessEntitledToUseLocationServices;
+ (id)placemarkForAddress:(id)address withCompletionBlock:(id)block;
+ (id)placemarkForLocation:(id)location withCompletionBlock:(id)block;
+ (id)strictGeocodeString:(id)string withCompletionBlock:(id)block;
+ (void)_loadMapKit;
+ (void)currentLocationWithCompletionBlock:(id)block;
@end

@implementation CalLocationManager

+ (void)_loadMapKit
{
  if (_loadMapKit_onceToken != -1)
  {
    +[CalLocationManager _loadMapKit];
  }
}

void __33__CalLocationManager__loadMapKit__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MapKit"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 load];
    _sMapKitLoaded = v2;
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else if (_sMapKitLoaded)
  {
    goto LABEL_8;
  }

  v3 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __33__CalLocationManager__loadMapKit__block_invoke_cold_1();
  }

LABEL_8:
}

+ (void)currentLocationWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    locationServicesEnabled = [MEMORY[0x1E695FBE8] locationServicesEnabled];
    v6 = +[CalFoundationLogSubsystem locations];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (locationServicesEnabled)
    {
      if (v7)
      {
        +[CalLocationManager currentLocationWithCompletionBlock:];
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      v10 = +[CalFoundationLogSubsystem locations];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[CalLocationManager currentLocationWithCompletionBlock:];
      }

      if (([(__CFString *)bundleIdentifier isEqualToString:@"com.apple.reminders"]& 1) == 0)
      {
        v11 = +[CalFoundationLogSubsystem locations];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          +[CalLocationManager currentLocationWithCompletionBlock:];
        }

        bundleIdentifier = @"com.apple.iCal";
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke;
      v13[3] = &unk_1E7EC6750;
      v14 = bundleIdentifier;
      v15 = blockCopy;
      selfCopy = self;
      v12 = bundleIdentifier;
      [CalLocationAuthorization authorizationStatusForBundleIdentifier:v12 completion:v13];
    }

    else
    {
      if (v7)
      {
        +[CalLocationManager currentLocationWithCompletionBlock:];
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:CalLocationErrorDomain code:2 userInfo:0];
      (*(blockCopy + 2))(blockCopy, 0, v12);
    }
  }

  else
  {
    v12 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[CalLocationManager currentLocationWithCompletionBlock:];
    }
  }
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  v3 = a2 - 1;
  v4 = +[CalFoundationLogSubsystem locations];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 <= 1)
  {
    if (v5)
    {
      __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_4();
    }

LABEL_13:

    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:CalLocationErrorDomain code:1 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
    goto LABEL_16;
  }

  if (v5)
  {
    __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_1();
  }

  v6 = +[CalEntitlementsVerifier currentProcessHasLocationdEffectiveBundleEntitlement];
  v4 = +[CalFoundationLogSubsystem locations];
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v7)
    {
      __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_2();
    }

    goto LABEL_13;
  }

  if (v7)
  {
    __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_3();
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_34;
  aBlock[3] = &unk_1E7EC6728;
  v16 = *(a1 + 32);
  v12 = *(a1 + 40);
  v8 = v12;
  v17 = v12;
  v9 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v9[2](v9);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_45;
    block[3] = &unk_1E7EC64B8;
    v14 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v11 = v16;
LABEL_16:
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_34(void *a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v2 = [CalLocationManagerDelegate alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36;
  v7[3] = &unk_1E7EC6700;
  v4 = a1[4];
  v3 = a1[5];
  v10 = a1[6];
  v8 = v3;
  v9 = &v11;
  v5 = [(CalLocationManagerDelegate *)v2 initWithCurrentBundleID:v4 completionBlock:v7];
  v6 = v12[5];
  v12[5] = v5;

  _Block_object_dispose(&v11, 8);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_1();
    }

    [*(a1 + 48) _loadMapKit];
    v8 = _sMapKitLoaded;
    v9 = +[CalFoundationLogSubsystem locations];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 == 1)
    {
      if (v10)
      {
        __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_3();
      }

      v11 = objc_alloc_init(NSClassFromString(&cfstr_Mklocationshif.isa));
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_40;
      v16[3] = &unk_1E7EC66D8;
      v17 = *(a1 + 32);
      [v11 shiftLocation:v5 withCompletionHandler:v16 callbackQueue:MEMORY[0x1E69E96A0]];
    }

    else
    {
      if (v10)
      {
        __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_2();
      }

      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:CalLocationErrorDomain code:4 userInfo:0];
      (*(v12 + 16))(v12, 0, v13);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

+ (BOOL)isCurrentProcessEntitledToUseLocationServices
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = [currentConnection valueForEntitlement:@"com.apple.locationd.effective_bundle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)placemarkForLocation:(id)location withCompletionBlock:(id)block
{
  locationCopy = location;
  blockCopy = block;
  v7 = +[CalFoundationLogSubsystem locations];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (blockCopy)
  {
    if (v8)
    {
      +[CalLocationManager placemarkForLocation:withCompletionBlock:];
    }

    v9 = objc_alloc_init(MEMORY[0x1E695FBC8]);
    CFRetain(v9);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke;
    v18[3] = &unk_1E7EC6778;
    v10 = locationCopy;
    v19 = v10;
    v21 = blockCopy;
    v11 = v9;
    v20 = v11;
    [v11 reverseGeocodeLocation:v10 completionHandler:v18];
    v12 = [CalCancellableSearch alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_52;
    v15[3] = &unk_1E7EC6528;
    v16 = v10;
    v17 = v11;
    v7 = v11;
    v13 = [(CalCancellableSearch *)v12 initWithCancellationBlock:v15];
  }

  else
  {
    if (v8)
    {
      +[CalLocationManager placemarkForLocation:withCompletionBlock:];
    }

    v13 = 0;
  }

  return v13;
}

void __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_1(v5, a1);
  }

  if ([v5 count])
  {
    v8 = [v5 objectAtIndex:0];
    v9 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_2(v8, a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  CFRelease(*(a1 + 40));
}

uint64_t __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_52(uint64_t a1)
{
  v2 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_52_cold_1(a1);
  }

  return [*(a1 + 40) cancelGeocode];
}

+ (id)placemarkForAddress:(id)address withCompletionBlock:(id)block
{
  addressCopy = address;
  blockCopy = block;
  if (blockCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695FBC8]);
    CFRetain(v7);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke;
    v17[3] = &unk_1E7EC6778;
    v8 = addressCopy;
    v18 = v8;
    v20 = blockCopy;
    v9 = v7;
    v19 = v9;
    [v9 geocodeAddressString:v8 completionHandler:v17];
    v10 = [CalCancellableSearch alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_53;
    v14[3] = &unk_1E7EC6528;
    v15 = v8;
    v16 = v9;
    v11 = v9;
    v12 = [(CalCancellableSearch *)v10 initWithCancellationBlock:v14];
  }

  else
  {
    v11 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[CalLocationManager placemarkForAddress:withCompletionBlock:];
    }

    v12 = 0;
  }

  return v12;
}

void __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_1(v5, a1);
  }

  if ([v5 count])
  {
    v8 = [v5 objectAtIndex:0];
    v9 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_2(v8, a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_cold_3(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  CFRelease(*(a1 + 40));
}

uint64_t __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_53(uint64_t a1)
{
  v2 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_53_cold_1(a1);
  }

  return [*(a1 + 40) cancelGeocode];
}

+ (id)strictGeocodeString:(id)string withCompletionBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  v8 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[CalLocationManager strictGeocodeString:withCompletionBlock:];
  }

  if (!blockCopy)
  {
    v9 = +[CalFoundationLogSubsystem locations];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[CalLocationManager strictGeocodeString:withCompletionBlock:];
    }
  }

  v10 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_1();
  }

  [self _loadMapKit];
  v11 = _sMapKitLoaded;
  v12 = +[CalFoundationLogSubsystem locations];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 == 1)
  {
    if (v13)
    {
      __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_3();
    }

    v14 = objc_alloc_init(NSClassFromString(&cfstr_Mklocalsearchr.isa));
    [v14 _setCanonicalSearchString:stringCopy];
    v15 = [objc_alloc(NSClassFromString(&cfstr_Mklocalsearch.isa)) initWithRequest:v14];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke;
    v23[3] = &unk_1E7EC67A0;
    v24 = blockCopy;
    [v15 startWithCompletionHandler:v23];
    v16 = [CalCancellableSearch alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_61;
    v20[3] = &unk_1E7EC6528;
    v21 = stringCopy;
    v22 = v15;
    v17 = v15;
    v18 = [(CalCancellableSearch *)v16 initWithCancellationBlock:v20];

    goto LABEL_17;
  }

  if (v13)
  {
    __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_2();
  }

  if (blockCopy)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:CalLocationErrorDomain code:4 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v14);
    v18 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v18 = 0;
LABEL_18:

  return v18;
}

void __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_cold_1(v5);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_61(uint64_t a1)
{
  v2 = +[CalFoundationLogSubsystem locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_61_cold_1(a1);
  }

  return [*(a1 + 40) cancel];
}

+ (void)currentLocationWithCompletionBlock:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)currentLocationWithCompletionBlock:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)currentLocationWithCompletionBlock:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)currentLocationWithCompletionBlock:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)currentLocationWithCompletionBlock:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__CalLocationManager_currentLocationWithCompletionBlock___block_invoke_36_cold_3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)placemarkForLocation:withCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)placemarkForLocation:withCompletionBlock:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7(&dword_1B990D000, v3, v4, "Choosing this placemark [%@] for this location [%@]");
  v5 = *MEMORY[0x1E69E9840];
}

void __63__CalLocationManager_placemarkForLocation_withCompletionBlock___block_invoke_52_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)placemarkForAddress:withCompletionBlock:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__CalLocationManager_placemarkForAddress_withCompletionBlock___block_invoke_53_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)strictGeocodeString:withCompletionBlock:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)strictGeocodeString:withCompletionBlock:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 mapItems];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  v11 = [a1 mapItems];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __62__CalLocationManager_strictGeocodeString_withCompletionBlock___block_invoke_61_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end