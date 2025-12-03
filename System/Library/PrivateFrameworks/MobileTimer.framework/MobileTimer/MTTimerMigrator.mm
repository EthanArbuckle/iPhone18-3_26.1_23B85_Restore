@interface MTTimerMigrator
- (void)migrateFromOldStorage;
- (void)removeFromOldStorage;
@end

@implementation MTTimerMigrator

- (void)migrateFromOldStorage
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTIsHorseman();
  defaultSound = MTLogForCategory(4);
  v5 = os_log_type_enabled(defaultSound, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v15 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, defaultSound, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping migration from old storage, as this device doesn't support the old storage", &v15, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v15 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, defaultSound, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating old timers to storage", &v15, 0xCu);
    }

    v6 = +[MTLegacyManager sharedManager];
    [v6 loadLegacyData];

    v7 = +[MTLegacyManager sharedManager];
    [v7 defaultDuration];
    v9 = v8;

    [MTTimerManager setDefaultDuration:v9];
    v10 = [(MTTimer *)[MTMutableTimer alloc] initWithState:1 duration:v9];
    [(MTTimer *)v10 setTitle:@"CURRENT_TIMER"];
    v11 = +[MTLegacyManager sharedManager];
    defaultSound = [v11 defaultSound];

    v12 = [MTSound toneSoundWithIdentifier:defaultSound vibrationIdentifer:0 volume:0];
    [(MTTimer *)v10 setSound:v12];

    timer = self->_timer;
    self->_timer = &v10->super;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeFromOldStorage
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ removing old timers and notifications from storage", &v6, 0xCu);
  }

  v4 = +[MTLegacyManager sharedManager];
  [v4 purgeLegacyData];

  v5 = *MEMORY[0x1E69E9840];
}

@end