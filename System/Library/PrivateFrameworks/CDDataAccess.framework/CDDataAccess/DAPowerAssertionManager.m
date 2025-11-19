@interface DAPowerAssertionManager
+ (id)sharedPowerAssertionManager;
- (BOOL)_releaseAssertionForContext:(id)a3;
- (BOOL)_retainAssertionForContext:(id)a3;
- (DAPowerAssertionManager)init;
- (id)stateString;
- (unint64_t)powerAssertionRetainCount:(id)a3;
- (void)dropPowerAssertionsForGroupIdentifier:(id)a3;
- (void)reattainPowerAssertionsForGroupIdentifier:(id)a3;
- (void)releasePowerAssertion:(id)a3;
- (void)retainPowerAssertion:(id)a3 withGroupIdentifier:(id)a4;
@end

@implementation DAPowerAssertionManager

- (DAPowerAssertionManager)init
{
  v10.receiver = self;
  v10.super_class = DAPowerAssertionManager;
  v2 = [(DAPowerAssertionManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setContexts:v3];

    v4 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setGroupIdentifierToContexts:v4];

    v5 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setContextToGroupIdentifier:v5];

    v6 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setHeldAsideContexts:v6];

    v7 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setHeldAsideGroupIdentifiers:v7];

    v8 = objc_opt_new();
    [(DAPowerAssertionManager *)v2 setContextToPowerAssertionRef:v8];
  }

  return v2;
}

+ (id)sharedPowerAssertionManager
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedPowerAssertionManager_obj)
  {
    v3 = objc_opt_new();
    v4 = sharedPowerAssertionManager_obj;
    sharedPowerAssertionManager_obj = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedPowerAssertionManager_obj;

  return v5;
}

- (unint64_t)powerAssertionRetainCount:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [DAPowerAssertionManager powerAssertionRetainCount:];
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DAPowerAssertionManager *)v5 contexts];
  v7 = [v6 countForObject:v4];

  v8 = [(DAPowerAssertionManager *)v5 heldAsideContexts];
  v9 = [v8 countForObject:v4];

  objc_sync_exit(v5);
  return v9 + v7;
}

- (void)retainPowerAssertion:(id)a3 withGroupIdentifier:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [DAPowerAssertionManager retainPowerAssertion:withGroupIdentifier:];
  }

  if (!v7)
  {
    [DAPowerAssertionManager retainPowerAssertion:withGroupIdentifier:];
  }

  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277CF3AF0];
  v10 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    v29 = 138412546;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_24244C000, v8, v10, "Context %@ retaining power assertion with group identifier %@", &v29, 0x16u);
  }

  v11 = self;
  objc_sync_enter(v11);
  if (v7 && (-[DAPowerAssertionManager heldAsideGroupIdentifiers](v11, "heldAsideGroupIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:v7], v12, v13))
  {
    v14 = DALoggingwithCategory();
    v15 = *(v9 + 7);
    if (os_log_type_enabled(v14, v15))
    {
      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_24244C000, v14, v15, "Context %@ getting added to our held aside contexts, as group %@ is currently dropped", &v29, 0x16u);
    }

    v16 = [(DAPowerAssertionManager *)v11 heldAsideContexts];
    [v16 addObject:v6];

    v17 = 0;
  }

  else
  {
    v18 = [(DAPowerAssertionManager *)v11 contexts];
    v19 = [v18 countForObject:v6];

    v20 = [(DAPowerAssertionManager *)v11 contexts];
    [v20 addObject:v6];

    v21 = [(DAPowerAssertionManager *)v11 contexts];
    v22 = [v21 countForObject:v6];

    if (v19)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22 == 1;
    }

    v17 = v23;
  }

  v24 = [(DAPowerAssertionManager *)v11 groupIdentifierToContexts];
  v25 = [v24 objectForKey:v7];

  if (!v25)
  {
    v25 = objc_opt_new();
    v26 = [(DAPowerAssertionManager *)v11 groupIdentifierToContexts];
    [v26 setObject:v25 forKey:v7];
  }

  [v25 addObject:v6];
  v27 = [(DAPowerAssertionManager *)v11 contextToGroupIdentifier];
  [v27 setObject:v7 forKey:v6];

  if (v17)
  {
    [(DAPowerAssertionManager *)v11 _retainAssertionForContext:v6];
  }

  objc_sync_exit(v11);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)releasePowerAssertion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [DAPowerAssertionManager releasePowerAssertion:];
  }

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v28 = 138412290;
    v29 = v4;
    _os_log_impl(&dword_24244C000, v5, v6, "Context %@ releasing power assertion", &v28, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(DAPowerAssertionManager *)v7 heldAsideContexts];
  v9 = [v8 countForObject:v4] == 0;

  if (!v9)
  {
    v10 = [(DAPowerAssertionManager *)v7 heldAsideContexts];
    [v10 removeObject:v4];

LABEL_7:
    v11 = 0;
    goto LABEL_15;
  }

  v12 = [(DAPowerAssertionManager *)v7 contexts];
  v13 = [v12 countForObject:v4] == 0;

  if (v13)
  {
    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v6))
    {
      v28 = 138412290;
      v29 = v4;
      _os_log_impl(&dword_24244C000, v27, v6, "Context object %@ attempting to release power assertion without first retaining it", &v28, 0xCu);
    }

    goto LABEL_7;
  }

  v14 = [(DAPowerAssertionManager *)v7 contexts];
  v15 = [v14 countForObject:v4];

  v16 = [(DAPowerAssertionManager *)v7 contexts];
  [v16 removeObject:v4];

  v17 = [(DAPowerAssertionManager *)v7 contexts];
  v18 = [v17 countForObject:v4];

  v11 = v15 == 1 && v18 == 0;
LABEL_15:
  v20 = [(DAPowerAssertionManager *)v7 contextToGroupIdentifier];
  v21 = [v20 objectForKey:v4];

  if (v21)
  {
    v22 = [(DAPowerAssertionManager *)v7 groupIdentifierToContexts];
    v23 = [v22 objectForKey:v21];

    if (v23)
    {
      [v23 removeObject:v4];
      if (![v23 count])
      {
        v24 = [(DAPowerAssertionManager *)v7 groupIdentifierToContexts];
        [v24 removeObjectForKey:v21];
      }
    }

    v25 = [(DAPowerAssertionManager *)v7 contextToGroupIdentifier];
    [v25 removeObjectForKey:v4];
  }

  if (v11)
  {
    [(DAPowerAssertionManager *)v7 _releaseAssertionForContext:v4];
  }

  objc_sync_exit(v7);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DAPowerAssertionManager *)v2 contexts];
  v5 = [(DAPowerAssertionManager *)v2 heldAsideContexts];
  v6 = [(DAPowerAssertionManager *)v2 contextToPowerAssertionRef];
  v7 = [v3 stringWithFormat:@"Shared DAPowerAssertionManager object %@:\nContexts asserting power: %@\nContexts held aside: %@\nActive Assertions: %@\n", v2, v4, v5, v6];

  objc_sync_exit(v2);

  return v7;
}

- (void)dropPowerAssertionsForGroupIdentifier:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_24244C000, v5, v6, "Dropping power assertion for group identifier %@", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(DAPowerAssertionManager *)v7 heldAsideGroupIdentifiers];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(DAPowerAssertionManager *)v7 heldAsideGroupIdentifiers];
    [v11 addObject:v4];

    v12 = [(DAPowerAssertionManager *)v7 groupIdentifierToContexts];
    v13 = [v12 objectForKey:v4];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v13;
    v14 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = 0;
          v18 = *(*(&v32 + 1) + 8 * i);
          while (1)
          {
            v19 = [(DAPowerAssertionManager *)v7 contexts];
            v20 = [v19 countForObject:v18] > v17;

            if (!v20)
            {
              break;
            }

            v21 = [(DAPowerAssertionManager *)v7 heldAsideContexts];
            [v21 addObject:v18];

            v22 = [(DAPowerAssertionManager *)v7 contexts];
            [v22 removeObject:v18];

            ++v17;
          }
        }

        v14 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = [v10 copy];
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v24)
  {
    v25 = *v29;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(DAPowerAssertionManager *)v7 _releaseAssertionForContext:*(*(&v28 + 1) + 8 * j), v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  objc_sync_exit(v7);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)reattainPowerAssertionsForGroupIdentifier:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_24244C000, v5, v6, "Reattaining power assertion for group identifier %@", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(DAPowerAssertionManager *)v7 heldAsideGroupIdentifiers];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = [(DAPowerAssertionManager *)v7 heldAsideGroupIdentifiers];
    [v10 removeObject:v4];

    v11 = [(DAPowerAssertionManager *)v7 groupIdentifierToContexts];
    v12 = [v11 objectForKey:v4];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = 0;
          v18 = *(*(&v32 + 1) + 8 * i);
          while (1)
          {
            v19 = [(DAPowerAssertionManager *)v7 heldAsideContexts];
            v20 = [v19 countForObject:v18] > v17;

            if (!v20)
            {
              break;
            }

            v21 = [(DAPowerAssertionManager *)v7 contexts];
            [v21 addObject:v18];

            v22 = [(DAPowerAssertionManager *)v7 heldAsideContexts];
            [v22 removeObject:v18];

            ++v17;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v13 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = [v13 copy];
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v24)
  {
    v25 = *v29;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(DAPowerAssertionManager *)v7 _retainAssertionForContext:*(*(&v28 + 1) + 8 * j), v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  objc_sync_exit(v7);
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_retainAssertionForContext:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_retainAssertionForContext__onceToken != -1)
  {
    [DAPowerAssertionManager _retainAssertionForContext:];
  }

  [MEMORY[0x277CF3AC8] isAppleInternalInstall];
  v5 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  v6 = [v5 count];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.DataAccess:%d-%p", _retainAssertionForContext__pid, v4];
  v8 = CPPowerAssertionCreate();
  v9 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  [v9 setObject:v8 forKey:v4];

  CFRelease(v8);
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
    *buf = 138412802;
    v16 = v7;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = [v12 count];
    _os_log_impl(&dword_24244C000, v10, v11, "DAPowerAssertionManager retained power assertion %@ for context %p, outstanding assertion count %lu", buf, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

uint64_t __54__DAPowerAssertionManager__retainAssertionForContext___block_invoke()
{
  result = getpid();
  _retainAssertionForContext__pid = result;
  return result;
}

- (BOOL)_releaseAssertionForContext:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
    v13 = 134218240;
    v14 = v4;
    v15 = 1024;
    v16 = [v7 count] - 1;
    _os_log_impl(&dword_24244C000, v5, v6, "DAPowerAssertionManager releasing power assertion for context %p, outstanding assertion count %u ontext", &v13, 0x12u);
  }

  v8 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  [v8 removeObjectForKey:v4];

  v9 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  v10 = [v9 count] == 0;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)powerAssertionRetainCount:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_0(v8 v9];
}

- (void)retainPowerAssertion:withGroupIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_0(v8 v9];
}

- (void)retainPowerAssertion:withGroupIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_0(v8 v9];
}

- (void)releasePowerAssertion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_0(v8 v9];
}

@end