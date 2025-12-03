@interface DAPowerAssertionManager
+ (id)sharedPowerAssertionManager;
- (BOOL)_releaseAssertionForContext:(id)context;
- (BOOL)_retainAssertionForContext:(id)context;
- (DAPowerAssertionManager)init;
- (id)stateString;
- (unint64_t)powerAssertionRetainCount:(id)count;
- (void)dropPowerAssertionsForGroupIdentifier:(id)identifier;
- (void)reattainPowerAssertionsForGroupIdentifier:(id)identifier;
- (void)releasePowerAssertion:(id)assertion;
- (void)retainPowerAssertion:(id)assertion withGroupIdentifier:(id)identifier;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedPowerAssertionManager_obj)
  {
    v3 = objc_opt_new();
    v4 = sharedPowerAssertionManager_obj;
    sharedPowerAssertionManager_obj = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedPowerAssertionManager_obj;

  return v5;
}

- (unint64_t)powerAssertionRetainCount:(id)count
{
  countCopy = count;
  if (!countCopy)
  {
    [DAPowerAssertionManager powerAssertionRetainCount:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  contexts = [(DAPowerAssertionManager *)selfCopy contexts];
  v7 = [contexts countForObject:countCopy];

  heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
  v9 = [heldAsideContexts countForObject:countCopy];

  objc_sync_exit(selfCopy);
  return v9 + v7;
}

- (void)retainPowerAssertion:(id)assertion withGroupIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  identifierCopy = identifier;
  if (!assertionCopy)
  {
    [DAPowerAssertionManager retainPowerAssertion:withGroupIdentifier:];
  }

  if (!identifierCopy)
  {
    [DAPowerAssertionManager retainPowerAssertion:withGroupIdentifier:];
  }

  v8 = DALoggingwithCategory();
  v9 = MEMORY[0x277D03988];
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v10))
  {
    v29 = 138412546;
    v30 = assertionCopy;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_24844D000, v8, v10, "Context %@ retaining power assertion with group identifier %@", &v29, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy && (-[DAPowerAssertionManager heldAsideGroupIdentifiers](selfCopy, "heldAsideGroupIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:identifierCopy], v12, v13))
  {
    v14 = DALoggingwithCategory();
    v15 = *(v9 + 7);
    if (os_log_type_enabled(v14, v15))
    {
      v29 = 138412546;
      v30 = assertionCopy;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_24844D000, v14, v15, "Context %@ getting added to our held aside contexts, as group %@ is currently dropped", &v29, 0x16u);
    }

    heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
    [heldAsideContexts addObject:assertionCopy];

    v17 = 0;
  }

  else
  {
    contexts = [(DAPowerAssertionManager *)selfCopy contexts];
    v19 = [contexts countForObject:assertionCopy];

    contexts2 = [(DAPowerAssertionManager *)selfCopy contexts];
    [contexts2 addObject:assertionCopy];

    contexts3 = [(DAPowerAssertionManager *)selfCopy contexts];
    v22 = [contexts3 countForObject:assertionCopy];

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

  groupIdentifierToContexts = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
  v25 = [groupIdentifierToContexts objectForKey:identifierCopy];

  if (!v25)
  {
    v25 = objc_opt_new();
    groupIdentifierToContexts2 = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
    [groupIdentifierToContexts2 setObject:v25 forKey:identifierCopy];
  }

  [v25 addObject:assertionCopy];
  contextToGroupIdentifier = [(DAPowerAssertionManager *)selfCopy contextToGroupIdentifier];
  [contextToGroupIdentifier setObject:identifierCopy forKey:assertionCopy];

  if (v17)
  {
    [(DAPowerAssertionManager *)selfCopy _retainAssertionForContext:assertionCopy];
  }

  objc_sync_exit(selfCopy);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)releasePowerAssertion:(id)assertion
{
  v30 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (!assertionCopy)
  {
    [DAPowerAssertionManager releasePowerAssertion:];
  }

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v28 = 138412290;
    v29 = assertionCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Context %@ releasing power assertion", &v28, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
  v9 = [heldAsideContexts countForObject:assertionCopy] == 0;

  if (!v9)
  {
    heldAsideContexts2 = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
    [heldAsideContexts2 removeObject:assertionCopy];

LABEL_7:
    v11 = 0;
    goto LABEL_15;
  }

  contexts = [(DAPowerAssertionManager *)selfCopy contexts];
  v13 = [contexts countForObject:assertionCopy] == 0;

  if (v13)
  {
    v27 = DALoggingwithCategory();
    if (os_log_type_enabled(v27, v6))
    {
      v28 = 138412290;
      v29 = assertionCopy;
      _os_log_impl(&dword_24844D000, v27, v6, "Context object %@ attempting to release power assertion without first retaining it", &v28, 0xCu);
    }

    goto LABEL_7;
  }

  contexts2 = [(DAPowerAssertionManager *)selfCopy contexts];
  v15 = [contexts2 countForObject:assertionCopy];

  contexts3 = [(DAPowerAssertionManager *)selfCopy contexts];
  [contexts3 removeObject:assertionCopy];

  contexts4 = [(DAPowerAssertionManager *)selfCopy contexts];
  v18 = [contexts4 countForObject:assertionCopy];

  v11 = v15 == 1 && v18 == 0;
LABEL_15:
  contextToGroupIdentifier = [(DAPowerAssertionManager *)selfCopy contextToGroupIdentifier];
  v21 = [contextToGroupIdentifier objectForKey:assertionCopy];

  if (v21)
  {
    groupIdentifierToContexts = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
    v23 = [groupIdentifierToContexts objectForKey:v21];

    if (v23)
    {
      [v23 removeObject:assertionCopy];
      if (![v23 count])
      {
        groupIdentifierToContexts2 = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
        [groupIdentifierToContexts2 removeObjectForKey:v21];
      }
    }

    contextToGroupIdentifier2 = [(DAPowerAssertionManager *)selfCopy contextToGroupIdentifier];
    [contextToGroupIdentifier2 removeObjectForKey:assertionCopy];
  }

  if (v11)
  {
    [(DAPowerAssertionManager *)selfCopy _releaseAssertionForContext:assertionCopy];
  }

  objc_sync_exit(selfCopy);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CCACA8];
  contexts = [(DAPowerAssertionManager *)selfCopy contexts];
  heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
  contextToPowerAssertionRef = [(DAPowerAssertionManager *)selfCopy contextToPowerAssertionRef];
  v7 = [v3 stringWithFormat:@"Shared DAPowerAssertionManager object %@:\nContexts asserting power: %@\nContexts held aside: %@\nActive Assertions: %@\n\n", selfCopy, contexts, heldAsideContexts, contextToPowerAssertionRef];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)dropPowerAssertionsForGroupIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v39 = identifierCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Dropping power assertion for group identifier %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  heldAsideGroupIdentifiers = [(DAPowerAssertionManager *)selfCopy heldAsideGroupIdentifiers];
  v9 = [heldAsideGroupIdentifiers containsObject:identifierCopy];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    heldAsideGroupIdentifiers2 = [(DAPowerAssertionManager *)selfCopy heldAsideGroupIdentifiers];
    [heldAsideGroupIdentifiers2 addObject:identifierCopy];

    groupIdentifierToContexts = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
    v13 = [groupIdentifierToContexts objectForKey:identifierCopy];

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
            contexts = [(DAPowerAssertionManager *)selfCopy contexts];
            v20 = [contexts countForObject:v18] > v17;

            if (!v20)
            {
              break;
            }

            heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
            [heldAsideContexts addObject:v18];

            contexts2 = [(DAPowerAssertionManager *)selfCopy contexts];
            [contexts2 removeObject:v18];

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

        [(DAPowerAssertionManager *)selfCopy _releaseAssertionForContext:*(*(&v28 + 1) + 8 * j), v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  objc_sync_exit(selfCopy);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)reattainPowerAssertionsForGroupIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v39 = identifierCopy;
    _os_log_impl(&dword_24844D000, v5, v6, "Reattaining power assertion for group identifier %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  heldAsideGroupIdentifiers = [(DAPowerAssertionManager *)selfCopy heldAsideGroupIdentifiers];
  v9 = [heldAsideGroupIdentifiers containsObject:identifierCopy];

  if (v9)
  {
    heldAsideGroupIdentifiers2 = [(DAPowerAssertionManager *)selfCopy heldAsideGroupIdentifiers];
    [heldAsideGroupIdentifiers2 removeObject:identifierCopy];

    groupIdentifierToContexts = [(DAPowerAssertionManager *)selfCopy groupIdentifierToContexts];
    v12 = [groupIdentifierToContexts objectForKey:identifierCopy];

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
            heldAsideContexts = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
            v20 = [heldAsideContexts countForObject:v18] > v17;

            if (!v20)
            {
              break;
            }

            contexts = [(DAPowerAssertionManager *)selfCopy contexts];
            [contexts addObject:v18];

            heldAsideContexts2 = [(DAPowerAssertionManager *)selfCopy heldAsideContexts];
            [heldAsideContexts2 removeObject:v18];

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

        [(DAPowerAssertionManager *)selfCopy _retainAssertionForContext:*(*(&v28 + 1) + 8 * j), v28];
      }

      v24 = [v23 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  objc_sync_exit(selfCopy);
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_retainAssertionForContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (_retainAssertionForContext__onceToken != -1)
  {
    [DAPowerAssertionManager _retainAssertionForContext:];
  }

  [MEMORY[0x277D03910] isAppleInternalInstall];
  contextToPowerAssertionRef = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  v6 = [contextToPowerAssertionRef count];

  contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.DataAccess:%d-%p", _retainAssertionForContext__pid, contextCopy];
  v8 = CPPowerAssertionCreate();
  if (v8)
  {
    v9 = v8;
    contextToPowerAssertionRef2 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
    [contextToPowerAssertionRef2 setObject:v9 forKey:contextCopy];

    CFRelease(v9);
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v12))
    {
      contextToPowerAssertionRef3 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
      *buf = 138412802;
      v18 = contextCopy;
      v19 = 2048;
      v20 = contextCopy;
      v21 = 2048;
      v22 = [contextToPowerAssertionRef3 count];
      v14 = "DAPowerAssertionManager retained power assertion %@ for context %p, outstanding assertion count %lu";
LABEL_8:
      _os_log_impl(&dword_24844D000, v11, v12, v14, buf, 0x20u);
    }
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      contextToPowerAssertionRef3 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
      *buf = 138412802;
      v18 = contextCopy;
      v19 = 2048;
      v20 = contextCopy;
      v21 = 2048;
      v22 = [contextToPowerAssertionRef3 count];
      v14 = "DAPowerAssertionManager unable to get non-nil power assertion %@ for context %p, outstanding assertion count %lu";
      goto LABEL_8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

uint64_t __54__DAPowerAssertionManager__retainAssertionForContext___block_invoke()
{
  result = getpid();
  _retainAssertionForContext__pid = result;
  return result;
}

- (BOOL)_releaseAssertionForContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    contextToPowerAssertionRef = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
    v13 = 134218240;
    v14 = contextCopy;
    v15 = 1024;
    v16 = [contextToPowerAssertionRef count] - 1;
    _os_log_impl(&dword_24844D000, v5, v6, "DAPowerAssertionManager releasing power assertion for context %p, outstanding assertion count %u ontext", &v13, 0x12u);
  }

  contextToPowerAssertionRef2 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  [contextToPowerAssertionRef2 removeObjectForKey:contextCopy];

  contextToPowerAssertionRef3 = [(DAPowerAssertionManager *)self contextToPowerAssertionRef];
  v10 = [contextToPowerAssertionRef3 count] == 0;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)powerAssertionRetainCount:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_1(v8 v9];
}

- (void)retainPowerAssertion:withGroupIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_1(v8 v9];
}

- (void)retainPowerAssertion:withGroupIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_1(v8 v9];
}

- (void)releasePowerAssertion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v8 = OUTLINED_FUNCTION_2_0(v0, v1, v2, v3, v4, v5, v6, v7, v14, v15);
  [OUTLINED_FUNCTION_0_1(v8 v9];
}

@end