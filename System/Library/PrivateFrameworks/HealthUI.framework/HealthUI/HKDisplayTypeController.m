@interface HKDisplayTypeController
+ (HKDisplayTypeController)sharedInstance;
+ (NSMutableDictionary)controllers;
+ (id)displayTypeForObjectType:(id)a3 wheelchairUse:(int64_t)a4;
+ (id)sharedInstanceForHealthStore:(id)a3;
+ (void)_computeSharedDisplayTypes;
+ (void)_unitTest_resetSharedDisplayTypes;
+ (void)initializeSharedDisplayTypes;
- (HKDisplayTypeController)init;
- (HKDisplayTypeController)initWithHealthStore:(id)a3;
- (id)_displayTypeWithUpdatedWheelchairUserIfNecessary:(id)a3;
- (id)displayTypeForObjectType:(id)a3;
- (id)displayTypeForObjectTypeUnifyingBloodPressureTypes:(id)a3;
- (id)displayTypeWithIdentifier:(id)a3;
- (id)displayTypesForCategoryIdentifier:(int64_t)a3;
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation HKDisplayTypeController

+ (NSMutableDictionary)controllers
{
  os_unfair_lock_assert_owner(&_controllersLock);
  v2 = _controllers;
  if (!_controllers)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _controllers;
    _controllers = v3;

    v2 = _controllers;
  }

  return v2;
}

+ (void)initializeSharedDisplayTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__HKDisplayTypeController_initializeSharedDisplayTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initializeSharedDisplayTypes_onceToken != -1)
  {
    dispatch_once(&initializeSharedDisplayTypes_onceToken, block);
  }
}

+ (void)_computeSharedDisplayTypes
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = +[HKDisplayType builtinDisplayTypes];
  v3 = [v2 hk_filter:&__block_literal_global_19];
  v4 = _sharedDisplayTypes;
  _sharedDisplayTypes = v3;

  v29 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v28 = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = _sharedDisplayTypes;
  v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v30)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "displayTypeIdentifier")}];
        [v29 setObject:v7 forKeyedSubscript:v8];

        v9 = [MEMORY[0x1E695DF70] array];
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "categoryIdentifier")}];
        [v9 addObject:v10];

        v11 = [v7 secondaryCategoryIdentifiers];
        [v9 addObjectsFromArray:v11];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v31 + 1) + 8 * j);
              v18 = [v5 objectForKeyedSubscript:v17];
              if (!v18)
              {
                v18 = [MEMORY[0x1E695DF70] array];
                [v5 setObject:v18 forKeyedSubscript:v17];
              }

              [v18 addObject:v7];
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        v19 = [v7 objectType];
        [v28 setObject:v7 forKeyedSubscript:v19];
      }

      v30 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v30);
  }

  v20 = [v29 copy];
  v21 = _sharedDisplayTypesByIdentifier;
  _sharedDisplayTypesByIdentifier = v20;

  v22 = [v5 copy];
  v23 = _sharedDisplayTypesByCategoryIdentifier;
  _sharedDisplayTypesByCategoryIdentifier = v22;

  v24 = [v28 copy];
  v25 = _sharedDisplayTypesByObjectType;
  _sharedDisplayTypesByObjectType = v24;
}

uint64_t __53__HKDisplayTypeController__computeSharedDisplayTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectType];

  if (v3)
  {
    v4 = [v2 behavior];
    v5 = [v4 hidden] ^ 1;
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_FAULT))
    {
      __53__HKDisplayTypeController__computeSharedDisplayTypes__block_invoke_cold_1(v6, v2);
    }

    v5 = 0;
  }

  return v5;
}

+ (HKDisplayTypeController)sharedInstance
{
  os_unfair_lock_lock(&_controllersLock);
  v3 = [a1 controllers];
  v4 = [v3 count];

  if (v4 >= 0xA)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "Shared controllers reached more than 10, removing all cached controllers", v14, 2u);
    }

    v6 = [a1 controllers];
    [v6 removeAllObjects];
  }

  v7 = [a1 controllers];
  v8 = [MEMORY[0x1E696C1C8] primaryStoreIdentifier];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    v9 = [[HKDisplayTypeController alloc] initWithHealthStore:v10];
    v11 = [a1 controllers];
    v12 = [MEMORY[0x1E696C1C8] primaryStoreIdentifier];
    [v11 setObject:v9 forKey:v12];
  }

  os_unfair_lock_unlock(&_controllersLock);

  return v9;
}

+ (void)_unitTest_resetSharedDisplayTypes
{
  os_unfair_lock_lock(&_controllersLock);
  v3 = _controllers;
  _controllers = 0;

  [a1 _computeSharedDisplayTypes];

  os_unfair_lock_unlock(&_controllersLock);
}

+ (id)sharedInstanceForHealthStore:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&_controllersLock);
  v5 = [a1 controllers];
  v6 = [v5 count];

  if (v6 >= 0xA)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "Shared controllers reached more than 10, removing all cached controllers", v15, 2u);
    }

    v8 = [a1 controllers];
    [v8 removeAllObjects];
  }

  v9 = [a1 controllers];
  v10 = [v4 identifier];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v11 = [[HKDisplayTypeController alloc] initWithHealthStore:v4];
    v12 = [a1 controllers];
    v13 = [v4 identifier];
    [v12 setObject:v11 forKey:v13];
  }

  os_unfair_lock_unlock(&_controllersLock);

  return v11;
}

+ (id)displayTypeForObjectType:(id)a3 wheelchairUse:(int64_t)a4
{
  v5 = a3;
  +[HKDisplayTypeController initializeSharedDisplayTypes];
  v6 = [_sharedDisplayTypesByObjectType objectForKeyedSubscript:v5];

  if (a4 && ([v6 _isWheelchairUser] & 1) == 0)
  {
    v7 = [v6 copyWithIsWheelchairUser:1];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (HKDisplayTypeController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDisplayTypeController)initWithHealthStore:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKDisplayTypeController;
  v5 = [(HKDisplayTypeController *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696C678]) initWithHealthStore:v4];
    wheelchairUseCharacteristicCache = v5->_wheelchairUseCharacteristicCache;
    v5->_wheelchairUseCharacteristicCache = v6;

    [(_HKWheelchairUseCharacteristicCache *)v5->_wheelchairUseCharacteristicCache registerObserver:v5];
    [(_HKWheelchairUseCharacteristicCache *)v5->_wheelchairUseCharacteristicCache isWheelchairUser];
    +[HKDisplayTypeController initializeSharedDisplayTypes];
    objc_storeStrong(&v5->_displayTypes, _sharedDisplayTypes);
    objc_storeStrong(&v5->_displayTypesByIdentifier, _sharedDisplayTypesByIdentifier);
    objc_storeStrong(&v5->_displayTypesByCategoryIdentifier, _sharedDisplayTypesByCategoryIdentifier);
    objc_storeStrong(&v5->_displayTypesByObjectType, _sharedDisplayTypesByObjectType);
  }

  return v5;
}

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"HKDisplayTypeControllerDisplayTypeStringValuesChangedNotification" object:0];
}

- (id)displayTypeForObjectType:(id)a3
{
  v4 = [(NSDictionary *)self->_displayTypesByObjectType objectForKeyedSubscript:a3];
  v5 = [(HKDisplayTypeController *)self _displayTypeWithUpdatedWheelchairUserIfNecessary:v4];

  return v5;
}

- (id)_displayTypeWithUpdatedWheelchairUserIfNecessary:(id)a3
{
  v4 = a3;
  if (-[_HKWheelchairUseCharacteristicCache isWheelchairUser](self->_wheelchairUseCharacteristicCache, "isWheelchairUser") && ([v4 _isWheelchairUser] & 1) == 0)
  {
    v5 = [v4 copyWithIsWheelchairUser:1];
  }

  else
  {
    v5 = [v4 copy];
  }

  v6 = v5;

  return v6;
}

- (id)displayTypeForObjectTypeUnifyingBloodPressureTypes:(id)a3
{
  v4 = a3;
  if ([v4 code] == 17 || objc_msgSend(v4, "code") == 16)
  {
    v5 = [MEMORY[0x1E696C060] correlationTypeForIdentifier:*MEMORY[0x1E696B730]];

    v4 = v5;
  }

  v6 = [(HKDisplayTypeController *)self displayTypeForObjectType:v4];

  return v6;
}

- (id)displayTypeWithIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_displayTypesByIdentifier objectForKeyedSubscript:a3];
  v5 = [(HKDisplayTypeController *)self _displayTypeWithUpdatedWheelchairUserIfNecessary:v4];

  return v5;
}

- (id)displayTypesForCategoryIdentifier:(int64_t)a3
{
  displayTypesByCategoryIdentifier = self->_displayTypesByCategoryIdentifier;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)displayTypesByCategoryIdentifier objectForKeyedSubscript:v4];

  return v5;
}

void __53__HKDisplayTypeController__computeSharedDisplayTypes__block_invoke_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 displayTypeIdentifier];
  _os_log_fault_impl(&dword_1C3942000, v3, OS_LOG_TYPE_FAULT, "Unexpected nil object type for display type %ld", &v4, 0xCu);
}

@end