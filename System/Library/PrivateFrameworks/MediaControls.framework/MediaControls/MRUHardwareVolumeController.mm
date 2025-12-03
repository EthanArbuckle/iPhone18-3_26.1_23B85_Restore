@interface MRUHardwareVolumeController
+ (MRUHardwareVolumeController)sharedInstance;
- (MRUHardwareVolumeController)init;
- (id)requestControlsForVolumeDataSource:(id)source reason:(id)reason;
- (void)relinquishHardwareVolumeButtons;
- (void)unregisterAssertion:(id)assertion;
- (void)updateControlsForAssertion:(id)assertion;
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
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v2->_assertions;
    v2->_assertions = weakObjectsHashTable;
  }

  return v2;
}

- (id)requestControlsForVolumeDataSource:(id)source reason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  reasonCopy = reason;
  v8 = [[MRUHardwareVolumeAssertion alloc] initWithHardwareVolumeController:self volumeDataSource:sourceCopy reason:reasonCopy];

  v9 = MCLogCategoryVolume();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = sourceCopy;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting control for: %{public}@", &v12, 0x16u);
  }

  assertions = [(MRUHardwareVolumeController *)self assertions];
  [assertions addObject:v8];

  [(MRUHardwareVolumeController *)self updateControlsForAssertion:v8];

  return v8;
}

- (void)unregisterAssertion:(id)assertion
{
  v14 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = MCLogCategoryVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = assertionCopy;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ relinquishing control for: %{public}@", &v10, 0x16u);
  }

  assertions = [(MRUHardwareVolumeController *)self assertions];
  [assertions removeObject:assertionCopy];

  assertions2 = [(MRUHardwareVolumeController *)self assertions];
  objectEnumerator = [assertions2 objectEnumerator];
  nextObject = [objectEnumerator nextObject];

  [(MRUHardwareVolumeController *)self updateControlsForAssertion:nextObject];
}

- (void)updateControlsForAssertion:(id)assertion
{
  v19 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  [(MRUHardwareVolumeController *)self relinquishHardwareVolumeButtons];
  volumeDataSource = [assertionCopy volumeDataSource];
  if ([volumeDataSource applicationShouldOverrideHardwareVolumeBehavior])
  {
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = assertionCopy;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ creating consumers for: %{public}@", buf, 0x16u);
    }

    v7 = [[MRUHardwareVolumeDataSource alloc] initWithVolumeDataSource:volumeDataSource];
    mEMORY[0x1E69D4220] = [MEMORY[0x1E69D4220] sharedInstance];
    v9 = [mEMORY[0x1E69D4220] beginConsumingPressesForButtonKind:4 eventConsumer:v7 priority:0];
    mEMORY[0x1E69D4220]2 = [MEMORY[0x1E69D4220] sharedInstance];
    v11 = [mEMORY[0x1E69D4220]2 beginConsumingPressesForButtonKind:3 eventConsumer:v7 priority:0];
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