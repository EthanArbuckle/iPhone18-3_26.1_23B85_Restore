@interface FCPrivateDataSyncAvailability
+ (id)defaultAvailability;
+ (id)notAvailable;
- (BOOL)isPrivateDataSyncingAllowed;
- (FCPrivateDataSyncAvailability)initWithConditions:(id)a3;
@end

@implementation FCPrivateDataSyncAvailability

+ (id)defaultAvailability
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v11[0] = v3;
  v4 = objc_opt_new();
  v11[1] = v4;
  v5 = objc_opt_new();
  v11[2] = v5;
  v6 = objc_opt_new();
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v8 = [v2 initWithConditions:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isPrivateDataSyncingAllowed
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(FCPrivateDataSyncAvailability *)self conditions];
  v3 = [v2 fc_firstObjectPassingTest:&__block_literal_global_44];

  v4 = FCPrivateDataLog;
  v5 = os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v11 = 138543362;
      v12 = v3;
      v6 = "private data syncing is not allowed because condition failed: %{public}@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, v6, &v11, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    v6 = "private data syncing is allowed";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3 == 0;
}

+ (id)notAvailable
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = objc_opt_new();
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 initWithConditions:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (FCPrivateDataSyncAvailability)initWithConditions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCPrivateDataSyncAvailability;
  v5 = [(FCPrivateDataSyncAvailability *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    conditions = v5->_conditions;
    v5->_conditions = v6;
  }

  return v5;
}

@end