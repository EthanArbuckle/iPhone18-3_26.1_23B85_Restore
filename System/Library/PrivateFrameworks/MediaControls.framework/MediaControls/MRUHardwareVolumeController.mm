@interface MRUHardwareVolumeController
+ (MRUHardwareVolumeController)sharedInstance;
- (MRUHardwareVolumeController)init;
- (id)requestControlsForVolumeDataSource:(id)a3 reason:(id)a4;
- (void)relinquishHardwareVolumeButtons;
- (void)unregisterAssertion:(id)a3;
- (void)updateControlsForAssertion:(id)a3;
@end

@implementation MRUHardwareVolumeController

+ (MRUHardwareVolumeController)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MRUHardwareVolumeController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __45__MRUHardwareVolumeController_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRUHardwareVolumeController)init
{
  v6.receiver = self;
  v6.super_class = MRUHardwareVolumeController;
  v2 = [(MRUHardwareVolumeController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (id)requestControlsForVolumeDataSource:(id)a3 reason:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[MRUHardwareVolumeAssertion alloc] initWithHardwareVolumeController:self volumeDataSource:v6 reason:v7];

  v9 = MCLogCategoryVolume();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting control for: %{public}@", &v12, 0x16u);
  }

  v10 = [(MRUHardwareVolumeController *)self assertions];
  [v10 addObject:v8];

  [(MRUHardwareVolumeController *)self updateControlsForAssertion:v8];

  return v8;
}

- (void)unregisterAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MCLogCategoryVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ relinquishing control for: %{public}@", &v10, 0x16u);
  }

  v6 = [(MRUHardwareVolumeController *)self assertions];
  [v6 removeObject:v4];

  v7 = [(MRUHardwareVolumeController *)self assertions];
  v8 = [v7 objectEnumerator];
  v9 = [v8 nextObject];

  [(MRUHardwareVolumeController *)self updateControlsForAssertion:v9];
}

- (void)updateControlsForAssertion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MRUHardwareVolumeController *)self relinquishHardwareVolumeButtons];
  v5 = [v4 volumeDataSource];
  if ([v5 applicationShouldOverrideHardwareVolumeBehavior])
  {
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ creating consumers for: %{public}@", buf, 0x16u);
    }

    v7 = [[MRUHardwareVolumeDataSource alloc] initWithVolumeDataSource:v5];
    v8 = [MEMORY[0x1E69D4220] sharedInstance];
    v9 = [v8 beginConsumingPressesForButtonKind:4 eventConsumer:v7 priority:0];
    v10 = [MEMORY[0x1E69D4220] sharedInstance];
    v11 = [v10 beginConsumingPressesForButtonKind:3 eventConsumer:v7 priority:0];
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    invalidators = self->_invalidators;
    self->_invalidators = v12;
  }
}

- (void)relinquishHardwareVolumeButtons
{
  [(NSArray *)self->_invalidators makeObjectsPerformSelector:sel_invalidate];
  invalidators = self->_invalidators;
  self->_invalidators = 0;
}

@end