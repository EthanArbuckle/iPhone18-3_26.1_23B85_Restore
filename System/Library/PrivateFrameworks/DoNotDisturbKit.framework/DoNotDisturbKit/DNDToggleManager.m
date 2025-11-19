@interface DNDToggleManager
+ (id)managerForClientIdentifier:(id)a3;
- (BOOL)_toggleDNDOffReturningError:(id *)a3;
- (BOOL)_toggleDNDOnReturningError:(id *)a3;
- (BOOL)toggleToTargetState:(unint64_t)a3 error:(id *)a4;
- (DNDToggleManager)initWithModeAssertionService:(id)a3 stateService:(id)a4;
- (void)setToggleAssertionIdentifier:(id)a3;
@end

@implementation DNDToggleManager

+ (id)managerForClientIdentifier:(id)a3
{
  v4 = MEMORY[0x277D05980];
  v5 = a3;
  v6 = [v4 serviceForClientIdentifier:v5];
  v7 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:v5];

  v8 = [[a1 alloc] initWithModeAssertionService:v6 stateService:v7];

  return v8;
}

- (DNDToggleManager)initWithModeAssertionService:(id)a3 stateService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DNDToggleManager;
  v9 = [(DNDToggleManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modeAssertionService, a3);
    objc_storeStrong(&v10->_stateService, a4);
    [(DNDToggleManager *)v10 setToggleAssertionIdentifier:0];
  }

  return v10;
}

- (void)setToggleAssertionIdentifier:(id)a3
{
  v4 = @"com.apple.donotdisturb.toggle-manager";
  if (a3)
  {
    v4 = a3;
  }

  v7 = v4;
  if (![(NSString *)self->_toggleAssertionIdentifier isEqualToString:?])
  {
    v5 = [(__CFString *)v7 copy];
    toggleAssertionIdentifier = self->_toggleAssertionIdentifier;
    self->_toggleAssertionIdentifier = v5;
  }
}

- (BOOL)toggleToTargetState:(unint64_t)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = DNDLogToggleManager;
  if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = DNDStringFromToggleTargetState(a3);
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_249121000, v8, OS_LOG_TYPE_DEFAULT, "Toggling DND: targetState=%{public}@", &v16, 0xCu);
  }

  if (!a3)
  {
    v10 = [(DNDStateService *)self->_stateService queryCurrentStateWithError:a4];
    if ([v10 isActive])
    {
      a3 = 1;
    }

    else
    {
      a3 = 2;
    }

    v11 = DNDLogToggleManager;
    if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = DNDStringFromToggleTargetState(a3);
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_249121000, v12, OS_LOG_TYPE_DEFAULT, "Resolved target state: targetState=%{public}@, currentState=%{public}@", &v16, 0x16u);
    }
  }

  if (a3 == 1)
  {
    result = [(DNDToggleManager *)self _toggleDNDOffReturningError:a4];
  }

  else
  {
    result = a3 == 2 && [(DNDToggleManager *)self _toggleDNDOnReturningError:a4];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_toggleDNDOnReturningError:(id *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = DNDLogToggleManager;
  if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249121000, v5, OS_LOG_TYPE_DEFAULT, "Taking toggle assertion", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D05A40]);
  v7 = [(DNDToggleManager *)self toggleAssertionIdentifier];
  [v6 setIdentifier:v7];

  v8 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
  [v6 setLifetime:v8];

  modeAssertionService = self->_modeAssertionService;
  v16 = 0;
  v10 = [(DNDModeAssertionService *)modeAssertionService takeModeAssertionWithDetails:v6 error:&v16];
  v11 = v16;
  v12 = DNDLogToggleManager;
  if (v10)
  {
    if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_249121000, v12, OS_LOG_TYPE_DEFAULT, "Successfully took toggle assertion; assertion=%{public}@", buf, 0xCu);
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_8:
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_8;
  }

  [(DNDToggleManager *)v11 _toggleDNDOnReturningError:v12];
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v11)
  {
    v13 = v11;
    *a3 = v11;
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)_toggleDNDOffReturningError:(id *)a3
{
  v5 = DNDLogToggleManager;
  if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249121000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating all assertions for toggle", buf, 2u);
  }

  modeAssertionService = self->_modeAssertionService;
  v13 = 0;
  v7 = [(DNDModeAssertionService *)modeAssertionService invalidateAllActiveModeAssertionsWithError:&v13];
  v8 = v13;
  v9 = DNDLogToggleManager;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_249121000, v9, OS_LOG_TYPE_DEFAULT, "Successfully invalidated all assertions", v12, 2u);
      if (!a3)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_8:
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!os_log_type_enabled(DNDLogToggleManager, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_8;
  }

  [(DNDToggleManager *)v8 _toggleDNDOffReturningError:v9];
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v8)
  {
    v10 = v8;
    *a3 = v8;
  }

LABEL_11:

  return v7;
}

- (void)_toggleDNDOnReturningError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_249121000, a2, OS_LOG_TYPE_ERROR, "Unable to take toggle assertion; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_toggleDNDOffReturningError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_249121000, a2, OS_LOG_TYPE_ERROR, "Unable to invalidate all assertions; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end