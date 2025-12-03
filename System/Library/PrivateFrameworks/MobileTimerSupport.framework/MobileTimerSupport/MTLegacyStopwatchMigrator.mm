@interface MTLegacyStopwatchMigrator
- (BOOL)needsMigration;
- (MTLegacyStopwatchMigrator)initWithDefaults:(id)defaults manager:(id)manager;
- (id)generateStopwatchFromDefaults;
- (id)migrateLegacyStopwatch;
- (void)eraseLocalDefaults;
- (void)loadInitialState;
@end

@implementation MTLegacyStopwatchMigrator

- (void)loadInitialState
{
  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  -[MTLegacyStopwatchMigrator setIsTimerRunning:](self, "setIsTimerRunning:", [defaults BOOLForKey:@"TIMERRUNNING"]);

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  v4 = [defaults2 objectForKey:@"LASTTIME"];
  [v4 doubleValue];
  [(MTLegacyStopwatchMigrator *)self setCurrentInterval:?];
}

- (MTLegacyStopwatchMigrator)initWithDefaults:(id)defaults manager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = MTLegacyStopwatchMigrator;
  v8 = [(MTLegacyStopwatchMigrator *)&v12 init];
  if (v8)
  {
    v9 = MTLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_22D741000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }

    [(MTLegacyStopwatchMigrator *)v8 setDefaults:defaultsCopy];
    [(MTLegacyStopwatchMigrator *)v8 setManager:managerCopy];
    [(MTLegacyStopwatchMigrator *)v8 loadInitialState];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)migrateLegacyStopwatch
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating legacy stopwatch", buf, 0xCu);
  }

  generateStopwatchFromDefaults = [(MTLegacyStopwatchMigrator *)self generateStopwatchFromDefaults];
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v16 = 2114;
    v17 = generateStopwatchFromDefaults;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ generated stopwatch from previous defaults: %{public}@", buf, 0x16u);
  }

  manager = [(MTLegacyStopwatchMigrator *)self manager];
  getStopwatches = [manager getStopwatches];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke;
  v12[3] = &unk_278770B28;
  v12[4] = self;
  v13 = generateStopwatchFromDefaults;
  v8 = generateStopwatchFromDefaults;
  v9 = [getStopwatches flatMap:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_22D741000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved default stopwatch: %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) manager];
  v7 = [v6 createStopwatch:*(a1 + 40)];

  if (v3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke_16;
    v11[3] = &unk_278770B00;
    v11[4] = *(a1 + 32);
    v12 = v3;
    v8 = [v7 flatMap:v11];
  }

  else
  {
    v8 = v7;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke_16(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_22D741000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ created stopwatch from previous defaults, proceeding to delete default one", &v8, 0xCu);
  }

  v4 = [*(a1 + 32) manager];
  v5 = [v4 removeStopwatch:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)needsMigration
{
  if ([(MTLegacyStopwatchMigrator *)self isTimerRunning])
  {
    return 1;
  }

  [(MTLegacyStopwatchMigrator *)self currentInterval];
  return v4 > 0.0;
}

- (id)generateStopwatchFromDefaults
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  v5 = [defaults objectForKey:@"LAPS"];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        [v3 addObject:v11];
        [v11 doubleValue];
        v9 = v9 + v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  v14 = [defaults2 objectForKey:@"OFFSET"];
  [v14 doubleValue];
  v16 = v15;

  defaults3 = [(MTLegacyStopwatchMigrator *)self defaults];
  v18 = [defaults3 objectForKey:@"STARTTIME"];

  v19 = objc_opt_new();
  v20 = [v19 mutableCopy];

  [v20 setStartDate:v18];
  [v20 setOffset:v16];
  [(MTLegacyStopwatchMigrator *)self currentInterval];
  [v20 setCurrentInterval:?];
  [v20 setPreviousLapsTotalInterval:v9];
  [v20 setLaps:v3];
  [v20 setState:0];
  if ([(MTLegacyStopwatchMigrator *)self isTimerRunning])
  {
    v21 = 2;
  }

  else
  {
    [(MTLegacyStopwatchMigrator *)self currentInterval];
    if (v22 <= 0.0)
    {
      goto LABEL_15;
    }

    v21 = 1;
  }

  [v20 setState:v21];
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)eraseLocalDefaults
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ erasing local defaults", &v10, 0xCu);
  }

  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults removeObjectForKey:@"TIMERRUNNING"];

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults2 removeObjectForKey:@"LASTTIME"];

  defaults3 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults3 removeObjectForKey:@"LAPS"];

  defaults4 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults4 removeObjectForKey:@"OFFSET"];

  defaults5 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults5 removeObjectForKey:@"STARTTIME"];

  v9 = *MEMORY[0x277D85DE8];
}

@end