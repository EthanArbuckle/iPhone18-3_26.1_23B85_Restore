@interface _CDPolicyBasedPersisting
+ (id)persistenceWithPersistenceSurvivingReboot:(id)a3 persistenceSurvivingRelaunch:(id)a4;
- (_CDPolicyBasedPersisting)initWithPersistenceSurvivingReboot:(id)a3 persistenceSurvivingRelaunch:(id)a4;
- (id)loadRegistrations;
- (void)deleteAllData;
- (void)deleteDataCreatedBefore:(id)a3;
- (void)deleteRegistration:(id)a3;
- (void)saveRegistration:(id)a3;
@end

@implementation _CDPolicyBasedPersisting

- (_CDPolicyBasedPersisting)initWithPersistenceSurvivingReboot:(id)a3 persistenceSurvivingRelaunch:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _CDPolicyBasedPersisting;
  v9 = [(_CDPolicyBasedPersisting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistenceSurvivingReboot, a3);
    objc_storeStrong(&v10->_persistenceSurvivingRelaunch, a4);
  }

  return v10;
}

+ (id)persistenceWithPersistenceSurvivingReboot:(id)a3 persistenceSurvivingRelaunch:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v4 = [[a1 alloc] initWithPersistenceSurvivingReboot:v8 persistenceSurvivingRelaunch:v7];
  }

  return v4;
}

- (void)saveRegistration:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E69C5D08] isClassCLocked])
  {
    v5 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_DEFAULT, "Registration persistance queued %@", buf, 0xCu);
    }
  }

  v6 = MEMORY[0x1E69C5D08];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45___CDPolicyBasedPersisting_saveRegistration___block_invoke;
  v9[3] = &unk_1E7886250;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [v6 runBlockWhenDeviceIsClassCUnlocked:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteRegistration:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D08];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___CDPolicyBasedPersisting_deleteRegistration___block_invoke;
  v7[3] = &unk_1E7886250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)deleteDataCreatedBefore:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D08];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __52___CDPolicyBasedPersisting_deleteDataCreatedBefore___block_invoke;
  v10 = &unk_1E7886250;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [v5 runBlockWhenDeviceIsClassCUnlocked:&v7];
  [(_CDContextPersisting *)self->_persistenceSurvivingRelaunch deleteDataCreatedBefore:v6, v7, v8, v9, v10, v11];
}

- (id)loadRegistrations
{
  v3 = [(_CDContextPersisting *)self->_persistenceSurvivingReboot loadRegistrations];
  v4 = [(_CDContextPersisting *)self->_persistenceSurvivingRelaunch loadRegistrations];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    [v5 addObjectsFromArray:v3];
  }

  if ([v4 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  v6 = [v5 copy];

  return v6;
}

@end