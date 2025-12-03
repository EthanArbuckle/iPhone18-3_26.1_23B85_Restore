@interface JFXThermalMonitor
+ (id)sharedInstance;
+ (id)stringFromThermalPressureLevel:(int)level;
+ (void)enumerateThermalPressureLevel:(id)level;
- (BOOL)_disabledThermalTracking;
- (BOOL)_updateThermalLevelsWithToken:(int)token;
- (BOOL)thermalLevelExceededNominal;
- (JFXThermalMonitor)init;
- (id)_analyticValueForThermalLevelBefore:(int)before after:(int)after;
- (id)thermalLevelLabel;
- (int)highestThermalLevelReached;
- (int)thermalLevel;
- (void)_postNotification:(id)notification;
@end

@implementation JFXThermalMonitor

- (JFXThermalMonitor)init
{
  v20.receiver = self;
  v20.super_class = JFXThermalMonitor;
  v2 = [(JFXThermalMonitor *)&v20 init];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.JFXThermalMonitor", bundleIdentifier];
  [(JFXThermalMonitor *)v2 setHighestThermalLevel:0];
  [(JFXThermalMonitor *)v2 setCurrentThermalLevel:0];
  v6 = dispatch_queue_create([v5 UTF8String], 0);
  [(JFXThermalMonitor *)v2 setQueue:v6];

  queue = [(JFXThermalMonitor *)v2 queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __25__JFXThermalMonitor_init__block_invoke;
  handler[3] = &unk_278D7A740;
  v8 = v2;
  v19 = v8;
  v9 = notify_register_dispatch("com.apple.system.thermalpressurelevel", &init_s_token, queue, handler);

  if (v9)
  {
    v10 = JFXLog_core();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242A3B000, v10, OS_LOG_TYPE_DEFAULT, "unable to notify_register_dispatch", buf, 2u);
    }

    v11 = 0;
  }

  else
  {
    queue2 = [(JFXThermalMonitor *)v8 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__JFXThermalMonitor_init__block_invoke_14;
    block[3] = &unk_278D79D20;
    v13 = v8;
    p_super = &v13->super;
    dispatch_async(queue2, block);

    v11 = v13;
    v10 = p_super;
  }

  return v11;
}

void __25__JFXThermalMonitor_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) currentThermalLevel];
  if ([*(a1 + 32) _updateThermalLevelsWithToken:a2])
  {
    v5 = [*(a1 + 32) currentThermalLevel];
    v6 = [*(a1 + 32) _analyticValueForThermalLevelBefore:v4 after:v5];
    if (v6)
    {
      v7 = +[JFXAnalyticsManager sharedInstance];
      [v7 trackEventWithName:v6];
    }

    [*(a1 + 32) _postNotification:v6];
    v8 = JFXLog_core();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:v4];
      v10 = [v9 UTF8String];
      v11 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:v5];
      v12 = [v11 UTF8String];
      v13 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:{objc_msgSend(*(a1 + 32), "highestThermalLevel")}];
      v14 = 136315650;
      v15 = v10;
      v16 = 2080;
      v17 = v12;
      v18 = 2080;
      v19 = [v13 UTF8String];
      _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "thermal change: %s => %s (highest: %s)", &v14, 0x20u);
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[JFXThermalMonitor sharedInstance];
  }

  v3 = sharedInstance_s_sharedInstance_1;

  return v3;
}

uint64_t __35__JFXThermalMonitor_sharedInstance__block_invoke()
{
  sharedInstance_s_sharedInstance_1 = objc_alloc_init(JFXThermalMonitor);

  return MEMORY[0x2821F96F8]();
}

+ (void)enumerateThermalPressureLevel:(id)level
{
  v4 = 0;
  do
  {
    v6 = 0;
    (*(level + 2))(level, dword_242B5BB40[v4], &v6);
    if (v6)
    {
      break;
    }
  }

  while (v4++ != 5);
}

+ (id)stringFromThermalPressureLevel:(int)level
{
  v3 = @"Nominal";
  v4 = @"Heavy";
  v5 = @"Trapping";
  v6 = @"Sleeping";
  if (level != 50)
  {
    v6 = @"Nominal";
  }

  if (level != 40)
  {
    v5 = v6;
  }

  if (level != 30)
  {
    v4 = v5;
  }

  if (level == 20)
  {
    v3 = @"Moderate";
  }

  if (level == 10)
  {
    v3 = @"Light";
  }

  if (level <= 29)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (BOOL)thermalLevelExceededNominal
{
  if ([(JFXThermalMonitor *)self _disabledThermalTracking])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    queue = [(JFXThermalMonitor *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__JFXThermalMonitor_thermalLevelExceededNominal__block_invoke;
    v6[3] = &unk_278D79C60;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(queue, v6);

    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __48__JFXThermalMonitor_thermalLevelExceededNominal__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) highestThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (int)thermalLevel
{
  if ([(JFXThermalMonitor *)self _disabledThermalTracking])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(JFXThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__JFXThermalMonitor_thermalLevel__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __33__JFXThermalMonitor_thermalLevel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) currentThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)highestThermalLevelReached
{
  if ([(JFXThermalMonitor *)self _disabledThermalTracking])
  {
    return 0;
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(JFXThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__JFXThermalMonitor_highestThermalLevelReached__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __47__JFXThermalMonitor_highestThermalLevelReached__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) highestThermalLevel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)thermalLevelLabel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  queue = [(JFXThermalMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__JFXThermalMonitor_thermalLevelLabel__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__JFXThermalMonitor_thermalLevelLabel__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) currentThermalLevel];
  v4 = [*(a1 + 32) _disabledThermalTracking];
  v5 = &stru_28553D028;
  if (v4)
  {
    v5 = @"*";
  }

  *(*(*(a1 + 40) + 8) + 40) = [v2 stringWithFormat:@"T %d%@", v3, v5];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_updateThermalLevelsWithToken:(int)token
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (!state)
  {
    [(JFXThermalMonitor *)self setCurrentThermalLevel:state64];
    currentThermalLevel = [(JFXThermalMonitor *)self currentThermalLevel];
    if (currentThermalLevel > [(JFXThermalMonitor *)self highestThermalLevel])
    {
      [(JFXThermalMonitor *)self setHighestThermalLevel:[(JFXThermalMonitor *)self currentThermalLevel]];
    }
  }

  return state == 0;
}

- (void)_postNotification:(id)notification
{
  notificationCopy = notification;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__JFXThermalMonitor__postNotification___block_invoke;
  block[3] = &unk_278D79D20;
  v6 = notificationCopy;
  v4 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__JFXThermalMonitor__postNotification___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v4 = @"JFXThermalMonitorLevelChangedKey";
    v5[0] = v1;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"JFXThermalMonitorLevelChangedNotification" object:0 userInfo:v2];
}

- (BOOL)_disabledThermalTracking
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"JFXDisableThermalTrackingKey"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_analyticValueForThermalLevelBefore:(int)before after:(int)after
{
  v4 = *&after;
  v5 = *&before;
  if (_analyticValueForThermalLevelBefore_after__onceToken != -1)
  {
    [JFXThermalMonitor _analyticValueForThermalLevelBefore:after:];
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:v5];
  v8 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:v4];
  v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];

  v10 = [_analyticValueForThermalLevelBefore_after__s_thermalAnalyticValueLookup objectForKeyedSubscript:v9];

  return v10;
}

void __63__JFXThermalMonitor__analyticValueForThermalLevelBefore_after___block_invoke()
{
  v11[10] = *MEMORY[0x277D85DE8];
  v11[0] = @"thermalnominaltolight";
  v11[1] = @"thermallighttomoderate";
  v11[2] = @"thermalmoderatetoheavy";
  v11[3] = @"thermalheavytotrapping";
  v11[4] = @"thermaltrappingtosleeping";
  v11[5] = @"thermalsleepingtotrapping";
  v11[6] = @"thermaltrappingtoheavy";
  v11[7] = @"thermalheavytomoderate";
  v11[8] = @"thermalmoderatetolight";
  v11[9] = @"thermallighttonominal";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:10];
  v1 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
  v2 = _analyticValueForThermalLevelBefore_after__s_thermalAnalyticValueLookup;
  _analyticValueForThermalLevelBefore_after__s_thermalAnalyticValueLookup = v1;

  if ([v0 count])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v5;
      v7 = v4;
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:dword_242B5BB58[v3]];
      v10 = [MEMORY[0x277CCACA8] stringFromOSThermalPressureLevel:dword_242B5BB80[v3]];
      v5 = [v8 stringWithFormat:@"%@ %@", v9, v10];

      v4 = [v0 objectAtIndexedSubscript:v3];

      [_analyticValueForThermalLevelBefore_after__s_thermalAnalyticValueLookup setObject:v4 forKeyedSubscript:v5];
      ++v3;
    }

    while (v3 < [v0 count]);
  }
}

@end