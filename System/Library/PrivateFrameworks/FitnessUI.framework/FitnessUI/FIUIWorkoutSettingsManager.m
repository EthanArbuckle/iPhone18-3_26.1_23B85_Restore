@interface FIUIWorkoutSettingsManager
+ (int64_t)defaultMetricsVersionForDeviceType:(int64_t)a3;
+ (int64_t)readWorkoutMetricsActivityMoveMode;
+ (void)obliterateUserConfiguredWorkoutMetrics;
- (BOOL)_enabledMetricsAreDefaultAfterPaceMigration:(id)a3 workoutActivityType:(id)a4;
- (BOOL)_hasUserMadeMetricChangesToWorkoutType:(id)a3 enabledMetrics:(id)a4 settingOverridesByMetric:(id)a5 metricFormatVersion:(id)a6;
- (BOOL)_useUserConfiguredWorkoutMetricsForMetricsActivityMoveMode:(int64_t)a3 activityMoveMode:(int64_t)a4;
- (BOOL)isMetricEnabled:(unint64_t)a3;
- (FIUIWorkoutSettingsManager)initWithWorkoutActivityType:(id)a3 activityMoveMode:(int64_t)a4;
- (FIUIWorkoutSettingsManager)initWithWorkoutActivityType:(id)a3 activityMoveMode:(int64_t)a4 deviceType:(int64_t)a5;
- (NPSDomainAccessor)domainAccessor;
- (NPSManager)syncManager;
- (id)orderedDisabledMetrics;
- (id)orderedEnabledAndSupportedMetrics;
- (id)orderedSupportedMetrics;
- (id)supportedMetrics;
- (int64_t)disabledIndexForMetricType:(unint64_t)a3;
- (void)_clearOldMetricsIfNeeded;
- (void)_migratePaceViewSettingIfNeeded;
- (void)_readFromDomain;
- (void)_writeToDomainWithShouldUpdateVersion:(BOOL)a3;
- (void)assignMetricType:(unint64_t)a3 toSlotIndex:(int64_t)a4;
- (void)moveMetricType:(unint64_t)a3 toEnabledIndex:(int64_t)a4;
- (void)reloadMetrics;
- (void)setEnabled:(BOOL)a3 forMetricType:(unint64_t)a4 didChange:(BOOL *)a5;
@end

@implementation FIUIWorkoutSettingsManager

- (void)_readFromDomain
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  v4 = [v3 objectForKey:@"SettingsByActivityType"];
  v5 = [v4 mutableCopy];
  settingsByActivityType = self->_settingsByActivityType;
  self->_settingsByActivityType = v5;

  v7 = self->_settingsByActivityType;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = self->_settingsByActivityType;
    self->_settingsByActivityType = v8;

    v7 = self->_settingsByActivityType;
  }

  v10 = KeyForWorkoutActivityType(self->_workoutActivityType);
  v11 = [(NSMutableDictionary *)v7 objectForKey:v10];

  if (!v11)
  {
    if ([FIUIWorkoutActivityType shouldDisambiguateOnLocationType:[(FIUIWorkoutActivityType *)self->_workoutActivityType effectiveTypeIdentifier]])
    {
      v11 = 0;
    }

    else
    {
      v12 = [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier];
      v13 = [(FIUIWorkoutActivityType *)self->_workoutActivityType isIndoor];
      v14 = [(FIUIWorkoutActivityType *)self->_workoutActivityType metadata];
      v15 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:v12 isIndoor:!v13 metadata:v14];

      v16 = self->_settingsByActivityType;
      v17 = KeyForWorkoutActivityType(v15);
      v11 = [(NSMutableDictionary *)v16 objectForKey:v17];
    }
  }

  v18 = [v11 objectForKey:@"MetricSettingOverrides"];
  v19 = [v18 mutableCopy];
  settingOverridesByMetric = self->_settingOverridesByMetric;
  self->_settingOverridesByMetric = v19;

  v21 = [v11 objectForKey:@"EnabledMetrics"];
  v22 = [v21 mutableCopy];
  enabledMetrics = self->_enabledMetrics;
  self->_enabledMetrics = v22;

  _HKInitializeLogging();
  v24 = MEMORY[0x1E696B9A8];
  v25 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_settingsByActivityType;
    v27 = self->_enabledMetrics;
    v28 = v25;
    v29 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
    v30 = [v29 objectForKey:@"ActivitySettingsFormatVersion"];
    v42 = 138412802;
    v43 = v26;
    v44 = 2112;
    v45 = v27;
    v46 = 2112;
    v47 = v30;
    _os_log_impl(&dword_1E5D0F000, v28, OS_LOG_TYPE_DEFAULT, "[WorkoutSettingsManager] _readFromDomain called before _migratePaceViewSettingsIfNeeded with settingsByActivityType:%@ and enabledMetrics:%@ and versionNumber:%@", &v42, 0x20u);
  }

  if (!self->_enabledMetrics)
  {
    v31 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider defaultEnabledMetrics];
    v32 = [v31 mutableCopy];
    v33 = self->_enabledMetrics;
    self->_enabledMetrics = v32;
  }

  if (!self->_settingOverridesByMetric)
  {
    v34 = [MEMORY[0x1E695DF90] dictionary];
    v35 = self->_settingOverridesByMetric;
    self->_settingOverridesByMetric = v34;
  }

  [(FIUIWorkoutSettingsManager *)self _migratePaceViewSettingIfNeeded];
  _HKInitializeLogging();
  v36 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
  {
    v37 = self->_settingsByActivityType;
    v38 = self->_enabledMetrics;
    v39 = v36;
    v40 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
    v41 = [v40 objectForKey:@"ActivitySettingsFormatVersion"];
    v42 = 138412802;
    v43 = v37;
    v44 = 2112;
    v45 = v38;
    v46 = 2112;
    v47 = v41;
    _os_log_impl(&dword_1E5D0F000, v39, OS_LOG_TYPE_DEFAULT, "[WorkoutSettingsManager] _readFromDomain called after _migratePaceViewSettingsIfNeeded with settingsByActivityType:%@ and enabledMetrics:%@ and versionNumber:%@", &v42, 0x20u);
  }
}

- (void)_migratePaceViewSettingIfNeeded
{
  if (![(NSMutableDictionary *)self->_settingOverridesByMetric count]&& [(FIUIWorkoutSettingsManager *)self isMetricEnabled:4])
  {
    v3 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
    v8 = [v3 objectForKey:@"ShowAveragePace"];

    if ([v8 BOOLValue])
    {
      settingOverridesByMetric = self->_settingOverridesByMetric;
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 8];
      [(NSMutableDictionary *)settingOverridesByMetric setObject:MEMORY[0x1E695E118] forKey:v5];

      v6 = self->_settingOverridesByMetric;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 4];
      [(NSMutableDictionary *)v6 setObject:MEMORY[0x1E695E110] forKey:v7];

      [(NSMutableArray *)self->_enabledMetrics replaceObjectAtIndex:[(NSMutableArray *)self->_enabledMetrics indexOfObject:&unk_1F5F9B490] withObject:&unk_1F5F9B4A8];
      [(FIUIWorkoutSettingsManager *)self _writeToDomainWithShouldUpdateVersion:0];
    }
  }
}

- (id)orderedSupportedMetrics
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(FIUIWorkoutSettingsManager *)self supportedMetrics];
  v4 = [v3 allObjects];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider supportedMetrics];
  v8 = [v6 setWithArray:v7];

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v8 containsObject:{v15, v17}])
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v9 sortUsingFunction:_SortMetricBySortIndex context:0];

  return v9;
}

- (id)supportedMetrics
{
  v3 = [(FIUIWorkoutActivityType *)self->_workoutActivityType identifier];
  v4 = [(FIUIWorkoutActivityType *)self->_workoutActivityType isIndoor];
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider supportedMetrics];
  v7 = [v5 setWithArray:v6];

  if (([MEMORY[0x1E696C588] fiui_isHeartRateSupportedForActivityType:v3 isIndoor:v4] & 1) == 0)
  {
    [v7 removeObject:&unk_1F5F9B418];
    [v7 removeObject:&unk_1F5F9B430];
    [v7 removeObject:&unk_1F5F9B448];
    [v7 removeObject:&unk_1F5F9B460];
    [v7 removeObject:&unk_1F5F9B478];
  }

  return v7;
}

- (id)orderedEnabledAndSupportedMetrics
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(FIUIWorkoutSettingsManager *)self supportedMetrics];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_enabledMetrics;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v4 containsObject:{v10, v12}])
        {
          [v3 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (FIUIWorkoutSettingsManager)initWithWorkoutActivityType:(id)a3 activityMoveMode:(int64_t)a4
{
  v6 = MEMORY[0x1E696C608];
  v7 = a3;
  v8 = [v6 sharedBehavior];
  v9 = [v8 currentDeviceClass];

  v10 = [(FIUIWorkoutSettingsManager *)self initWithWorkoutActivityType:v7 activityMoveMode:a4 deviceType:[FIUIDeviceTypeResolver deviceTypeForDeviceClass:v9]];
  return v10;
}

+ (int64_t)defaultMetricsVersionForDeviceType:(int64_t)a3
{
  if ((a3 - 2) < 2)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkoutsCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FIUIWorkoutSettingsManager *)a3 defaultMetricsVersionForDeviceType:v6];
    }

    return 0;
  }

  else
  {
    v4 = 6;
    if (a3 != 1)
    {
      v4 = 0;
    }

    if (a3)
    {
      return v4;
    }

    else
    {
      return 101;
    }
  }
}

- (FIUIWorkoutSettingsManager)initWithWorkoutActivityType:(id)a3 activityMoveMode:(int64_t)a4 deviceType:(int64_t)a5
{
  v9 = a3;
  v21.receiver = self;
  v21.super_class = FIUIWorkoutSettingsManager;
  v10 = [(FIUIWorkoutSettingsManager *)&v21 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workoutActivityType, a3);
    v11->_activityMoveMode = a4;
    v12 = [FIUIWorkoutSettingsManager defaultMetricsVersionForDeviceType:a5];
    v13 = [FIUIWorkoutDefaultMetricsProvider alloc];
    v14 = FIUIDeviceSupportsElevationGain();
    v15 = [(FIUIWorkoutDefaultMetricsProvider *)v13 initWithMetricsVersion:v12 activityType:v9 activityMoveMode:a4 deviceSupportsElevationMetrics:v14 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
    defaultMetricsProvider = v11->_defaultMetricsProvider;
    v11->_defaultMetricsProvider = v15;

    if ([(FIUIWorkoutSettingsManager *)v11 _useUserConfiguredWorkoutMetricsForMetricsActivityMoveMode:+[FIUIWorkoutSettingsManager activityMoveMode:"readWorkoutMetricsActivityMoveMode"], a4])
    {
      [(FIUIWorkoutSettingsManager *)v11 _clearOldMetricsIfNeeded];
      [(FIUIWorkoutSettingsManager *)v11 _readFromDomain];
    }

    else
    {
      v17 = [(FIUIWorkoutDefaultMetricsProvider *)v11->_defaultMetricsProvider defaultEnabledMetrics];
      v18 = [v17 mutableCopy];
      enabledMetrics = v11->_enabledMetrics;
      v11->_enabledMetrics = v18;
    }
  }

  return v11;
}

- (NPSDomainAccessor)domainAccessor
{
  lazy_domainAccessor = self->_lazy_domainAccessor;
  if (!lazy_domainAccessor)
  {
    v4 = objc_alloc(MEMORY[0x1E69B3588]);
    v5 = [v4 initWithDomain:*MEMORY[0x1E699CA20]];
    v6 = self->_lazy_domainAccessor;
    self->_lazy_domainAccessor = v5;

    lazy_domainAccessor = self->_lazy_domainAccessor;
  }

  return lazy_domainAccessor;
}

- (NPSManager)syncManager
{
  lazy_syncManager = self->_lazy_syncManager;
  if (!lazy_syncManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B3590]);
    v5 = self->_lazy_syncManager;
    self->_lazy_syncManager = v4;

    lazy_syncManager = self->_lazy_syncManager;
  }

  return lazy_syncManager;
}

- (void)_clearOldMetricsIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  v4 = [v3 objectForKey:@"SettingsByActivityType"];
  v5 = [v4 mutableCopy];
  settingsByActivityType = self->_settingsByActivityType;
  self->_settingsByActivityType = v5;

  v7 = self->_settingsByActivityType;
  v8 = KeyForWorkoutActivityType(self->_workoutActivityType);
  v9 = [(NSMutableDictionary *)v7 objectForKey:v8];

  v10 = [v9 objectForKey:@"MetricSettingOverrides"];
  v11 = [v10 mutableCopy];
  settingOverridesByMetric = self->_settingOverridesByMetric;
  self->_settingOverridesByMetric = v11;

  v13 = [v9 objectForKey:@"EnabledMetrics"];
  v14 = [v13 mutableCopy];
  enabledMetrics = self->_enabledMetrics;
  self->_enabledMetrics = v14;

  v16 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  v17 = [v16 objectForKey:@"ActivitySettingsFormatVersion"];

  if ([(FIUIWorkoutActivityType *)self->_workoutActivityType identifier]== 37 && ![(FIUIWorkoutActivityType *)self->_workoutActivityType isIndoor]&& FIDeviceMeetsMinimumOSVersionGlory() && ![(FIUIWorkoutSettingsManager *)self _hasUserMadeMetricChangesToWorkoutType:self->_workoutActivityType enabledMetrics:self->_enabledMetrics settingOverridesByMetric:self->_settingOverridesByMetric metricFormatVersion:v17])
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      workoutActivityType = self->_workoutActivityType;
      v20 = self->_settingsByActivityType;
      v23 = 138543874;
      v24 = workoutActivityType;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_1E5D0F000, v18, OS_LOG_TYPE_DEFAULT, "[WorkoutSettingsManager] Clearing metrics for activity type: %{public}@, version number: %{public}@, settingsByActivityType: %{public}@", &v23, 0x20u);
    }

    v21 = self->_settingOverridesByMetric;
    self->_settingOverridesByMetric = 0;

    v22 = self->_enabledMetrics;
    self->_enabledMetrics = 0;

    [(FIUIWorkoutSettingsManager *)self _writeToDomainWithShouldUpdateVersion:1];
  }
}

- (BOOL)isMetricEnabled:(unint64_t)a3
{
  settingOverridesByMetric = self->_settingOverridesByMetric;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a3];
  v7 = [(NSMutableDictionary *)settingOverridesByMetric objectForKey:v6];

  if (v7)
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v9 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider defaultEnabledMetrics];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8 = [v9 containsObject:v10];
  }

  return v8;
}

- (id)orderedDisabledMetrics
{
  v3 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider supportedMetrics];
  v4 = [v3 mutableCopy];

  [v4 removeObjectsInArray:self->_enabledMetrics];
  [v4 sortUsingFunction:_SortMetricBySortIndex context:0];

  return v4;
}

- (void)setEnabled:(BOOL)a3 forMetricType:(unint64_t)a4 didChange:(BOOL *)a5
{
  v7 = a3;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a4];
  v17 = v9;
  if (a5)
  {
    v10 = [(NSMutableDictionary *)self->_settingOverridesByMetric objectForKey:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 BOOLValue] ^ v7;
    }

    else
    {
      v12 = 1;
    }

    *a5 = v12;
  }

  settingOverridesByMetric = self->_settingOverridesByMetric;
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [(NSMutableDictionary *)settingOverridesByMetric setObject:v14 forKey:v17];

  enabledMetrics = self->_enabledMetrics;
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  if (v7)
  {
    [(NSMutableArray *)enabledMetrics addObject:v16];
  }

  else
  {
    [(NSMutableArray *)enabledMetrics removeObject:v16];
  }

  [(FIUIWorkoutSettingsManager *)self _writeToDomainWithShouldUpdateVersion:0];
}

- (void)moveMetricType:(unint64_t)a3 toEnabledIndex:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_enabledMetrics count]>= a4)
  {
    enabledMetrics = self->_enabledMetrics;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableArray *)enabledMetrics removeObject:v9];

    v10 = self->_enabledMetrics;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableArray *)v10 insertObject:v11 atIndex:a4];

    [(FIUIWorkoutSettingsManager *)self _writeToDomainWithShouldUpdateVersion:0];
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = v7;
      v14 = [v12 numberWithUnsignedInteger:a3];
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_enabledMetrics, "count")}];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_1E5D0F000, v13, OS_LOG_TYPE_ERROR, "Workout Settings Manager attempting to move metric %@ to index %@ (enabled count = %@)", &v17, 0x20u);
    }
  }
}

- (void)assignMetricType:(unint64_t)a3 toSlotIndex:(int64_t)a4
{
  [(NSMutableArray *)self->_enabledMetrics removeObjectAtIndex:a4];
  enabledMetrics = self->_enabledMetrics;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)enabledMetrics insertObject:v8 atIndex:a4];

  [(FIUIWorkoutSettingsManager *)self _writeToDomainWithShouldUpdateVersion:0];
}

- (int64_t)disabledIndexForMetricType:(unint64_t)a3
{
  v5 = [(FIUIWorkoutSettingsManager *)self orderedDisabledMetrics];
  v6 = [v5 mutableCopy];

  if ([(FIUIWorkoutSettingsManager *)self isMetricEnabled:a3])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v6 addObject:v7];

    [v6 sortUsingFunction:_SortMetricBySortIndex context:0];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v6 indexOfObject:v8];

  return v9;
}

- (void)reloadMetrics
{
  if ([(FIUIWorkoutSettingsManager *)self _useUserConfiguredWorkoutMetricsForMetricsActivityMoveMode:+[FIUIWorkoutSettingsManager activityMoveMode:"readWorkoutMetricsActivityMoveMode"], self->_activityMoveMode])
  {

    [(FIUIWorkoutSettingsManager *)self _readFromDomain];
  }

  else
  {
    v5 = [(FIUIWorkoutDefaultMetricsProvider *)self->_defaultMetricsProvider defaultEnabledMetrics];
    v3 = [v5 mutableCopy];
    enabledMetrics = self->_enabledMetrics;
    self->_enabledMetrics = v3;
  }
}

- (BOOL)_enabledMetricsAreDefaultAfterPaceMigration:(id)a3 workoutActivityType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 isIndoor];
  v8 = [v6 identifier];

  v9 = 0;
  if (v8 == 37 && (v7 & 1) == 0)
  {
    if ([v5 count] == 4 && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "unsignedIntegerValue"), v10, v11 == 3) && (objc_msgSend(v5, "objectAtIndexedSubscript:", 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "unsignedIntegerValue"), v12, v13 == 8) && (objc_msgSend(v5, "objectAtIndexedSubscript:", 2), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedIntegerValue"), v14, v15 == 5))
    {
      v16 = [v5 objectAtIndexedSubscript:3];
      v9 = [v16 unsignedIntegerValue] == 1;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)_hasUserMadeMetricChangesToWorkoutType:(id)a3 enabledMetrics:(id)a4 settingOverridesByMetric:(id)a5 metricFormatVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11 | v12)
  {
    if ([v13 intValue] == 1 || objc_msgSend(v14, "intValue") == 2)
    {
      v15 = ![(FIUIWorkoutSettingsManager *)self _enabledMetricsAreDefaultAfterPaceMigration:v11 workoutActivityType:v10];
    }

    else
    {
      LOBYTE(v15) = 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (int64_t)readWorkoutMetricsActivityMoveMode
{
  v2 = objc_alloc(MEMORY[0x1E69B3588]);
  v3 = [v2 initWithDomain:*MEMORY[0x1E699CA20]];
  v4 = [v3 synchronize];
  v8 = 0;
  v5 = [v3 integerForKey:@"WorkoutMetricsActivityMoveMode" keyExistsAndHasValidFormat:&v8];
  if (v8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_writeToDomainWithShouldUpdateVersion:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  enabledMetrics = self->_enabledMetrics;
  if (enabledMetrics)
  {
    [v5 setObject:enabledMetrics forKey:@"EnabledMetrics"];
  }

  settingOverridesByMetric = self->_settingOverridesByMetric;
  if (settingOverridesByMetric)
  {
    [v6 setObject:settingOverridesByMetric forKey:@"MetricSettingOverrides"];
  }

  v9 = [v6 count];
  settingsByActivityType = self->_settingsByActivityType;
  v11 = KeyForWorkoutActivityType(self->_workoutActivityType);
  if (v9)
  {
    [(NSMutableDictionary *)settingsByActivityType setObject:v6 forKey:v11];
  }

  else
  {
    [(NSMutableDictionary *)settingsByActivityType removeObjectForKey:v11];
  }

  v12 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  [v12 setObject:self->_settingsByActivityType forKey:@"SettingsByActivityType"];

  if (v3)
  {
    v13 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FIUIWorkoutDefaultMetricsProvider metricsVersion](self->_defaultMetricsProvider, "metricsVersion")}];
    [v13 setObject:v14 forKey:@"ActivitySettingsFormatVersion"];
  }

  v15 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  v16 = [v15 synchronize];

  v17 = [(FIUIWorkoutSettingsManager *)self syncManager];
  v18 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
  v19 = [v18 domain];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:@"SettingsByActivityType"];
  [v17 synchronizeNanoDomain:v19 keys:v20];

  _HKInitializeLogging();
  v21 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_settingsByActivityType;
    v23 = self->_enabledMetrics;
    if (v3)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = v21;
    v26 = [(FIUIWorkoutSettingsManager *)self domainAccessor];
    v27 = [v26 objectForKey:@"ActivitySettingsFormatVersion"];
    v28 = 138413058;
    v29 = v22;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    v33 = v24;
    v34 = 2112;
    v35 = v27;
    _os_log_impl(&dword_1E5D0F000, v25, OS_LOG_TYPE_DEFAULT, "[WorkoutSettingsManager] _writeToDomain called with settingsByActivityType:%@ and enabledMetrics:%@ and shouldUpdateVersion:%@ and metricsVersion:%@", &v28, 0x2Au);
  }
}

- (BOOL)_useUserConfiguredWorkoutMetricsForMetricsActivityMoveMode:(int64_t)a3 activityMoveMode:(int64_t)a4
{
  v4 = a3 != 2 || a4 > 1;
  if (a3 >= 2)
  {
    return v4;
  }

  else
  {
    return a4 != 2;
  }
}

+ (void)obliterateUserConfiguredWorkoutMetrics
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69B3588]);
  v3 = [v2 initWithDomain:*MEMORY[0x1E699CA20]];
  v4 = [v3 synchronize];
  [v3 removeObjectForKey:@"SettingsByActivityType"];
  [v3 removeObjectForKey:@"ActivitySettingsFormatVersion"];
  [v3 removeObjectForKey:@"WorkoutMetricsActivityMoveMode"];
  v5 = [v3 synchronize];
  v6 = objc_alloc_init(MEMORY[0x1E69B3590]);
  v7 = MEMORY[0x1E695DFA8];
  v13[0] = @"SettingsByActivityType";
  v13[1] = @"ActivitySettingsFormatVersion";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v7 setWithArray:v8];

  [v9 addObject:@"WorkoutMetricsActivityMoveMode"];
  v10 = [v3 domain];
  [v6 synchronizeNanoDomain:v10 keys:v9];

  _HKInitializeLogging();
  v11 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E5D0F000, v11, OS_LOG_TYPE_DEFAULT, "[WorkoutSettingsManager] user configured workout metrics obliterated", v12, 2u);
  }
}

+ (void)defaultMetricsVersionForDeviceType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = HKStringForDeviceType();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E5D0F000, a2, OS_LOG_TYPE_ERROR, "Unsupported deviceType=%@ when determining default metrics version.", &v4, 0xCu);
}

@end