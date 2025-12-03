@interface _CDPolicyBasedPersisting
+ (id)persistenceWithPersistenceSurvivingReboot:(id)reboot persistenceSurvivingRelaunch:(id)relaunch;
- (_CDPolicyBasedPersisting)initWithPersistenceSurvivingReboot:(id)reboot persistenceSurvivingRelaunch:(id)relaunch;
- (id)loadRegistrations;
- (void)deleteAllData;
- (void)deleteDataCreatedBefore:(id)before;
- (void)deleteRegistration:(id)registration;
- (void)saveRegistration:(id)registration;
@end

@implementation _CDPolicyBasedPersisting

- (_CDPolicyBasedPersisting)initWithPersistenceSurvivingReboot:(id)reboot persistenceSurvivingRelaunch:(id)relaunch
{
  rebootCopy = reboot;
  relaunchCopy = relaunch;
  v12.receiver = self;
  v12.super_class = _CDPolicyBasedPersisting;
  v9 = [(_CDPolicyBasedPersisting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistenceSurvivingReboot, reboot);
    objc_storeStrong(&v10->_persistenceSurvivingRelaunch, relaunch);
  }

  return v10;
}

+ (id)persistenceWithPersistenceSurvivingReboot:(id)reboot persistenceSurvivingRelaunch:(id)relaunch
{
  v4 = 0;
  if (reboot && relaunch)
  {
    relaunchCopy = relaunch;
    rebootCopy = reboot;
    v4 = [[self alloc] initWithPersistenceSurvivingReboot:rebootCopy persistenceSurvivingRelaunch:relaunchCopy];
  }

  return v4;
}

- (void)saveRegistration:(id)registration
{
  v13 = *MEMORY[0x1E69E9840];
  registrationCopy = registration;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = registrationCopy;
      _os_log_impl(&dword_1A9611000, contextChannel, OS_LOG_TYPE_DEFAULT, "Registration persistance queued %@", buf, 0xCu);
    }
  }

  v6 = MEMORY[0x1E69C5D08];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45___CDPolicyBasedPersisting_saveRegistration___block_invoke;
  v9[3] = &unk_1E7886250;
  v9[4] = self;
  v10 = registrationCopy;
  v7 = registrationCopy;
  [v6 runBlockWhenDeviceIsClassCUnlocked:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = MEMORY[0x1E69C5D08];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___CDPolicyBasedPersisting_deleteRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = registrationCopy;
  v6 = registrationCopy;
  [v5 runBlockWhenDeviceIsClassCUnlocked:v7];
}

- (void)deleteAllData
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41___CDPolicyBasedPersisting_deleteAllData__block_invoke;
  v3[3] = &unk_1E7886288;
  v3[4] = self;
  [MEMORY[0x1E69C5D08] runBlockWhenDeviceIsClassCUnlocked:v3];
  [(_CDContextPersisting *)self->_persistenceSurvivingRelaunch deleteAllData];
}

- (void)deleteDataCreatedBefore:(id)before
{
  beforeCopy = before;
  v5 = MEMORY[0x1E69C5D08];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __52___CDPolicyBasedPersisting_deleteDataCreatedBefore___block_invoke;
  v10 = &unk_1E7886250;
  selfCopy = self;
  v12 = beforeCopy;
  v6 = beforeCopy;
  [v5 runBlockWhenDeviceIsClassCUnlocked:&v7];
  [(_CDContextPersisting *)self->_persistenceSurvivingRelaunch deleteDataCreatedBefore:v6, v7, v8, v9, v10, selfCopy];
}

- (id)loadRegistrations
{
  loadRegistrations = [(_CDContextPersisting *)self->_persistenceSurvivingReboot loadRegistrations];
  loadRegistrations2 = [(_CDContextPersisting *)self->_persistenceSurvivingRelaunch loadRegistrations];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(loadRegistrations2, "count") + objc_msgSend(loadRegistrations, "count")}];
  if ([loadRegistrations count])
  {
    [v5 addObjectsFromArray:loadRegistrations];
  }

  if ([loadRegistrations2 count])
  {
    [v5 addObjectsFromArray:loadRegistrations2];
  }

  v6 = [v5 copy];

  return v6;
}

@end