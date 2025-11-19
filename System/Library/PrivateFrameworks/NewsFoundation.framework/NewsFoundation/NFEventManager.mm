@interface NFEventManager
- (NFEventManager)init;
- (void)attemptTriggersForCurrentEvent:(id)a3;
- (void)fireEvent:(id)a3;
- (void)handleAlwaysTrigger:(id)a3 event:(id)a4;
- (void)handleOnceTrigger:(id)a3 event:(id)a4;
- (void)triggerAlwaysWhenAllEventsHaveOccurred:(id)a3 block:(id)a4;
- (void)triggerOnAnyEvent:(id)a3 block:(id)a4;
- (void)triggerOnEvent:(id)a3 block:(id)a4;
- (void)triggerOnceWhenAllEventsHaveOccurred:(id)a3 block:(id)a4;
- (void)triggerOnceWhenAnyEventHasOccurred:(id)a3 block:(id)a4;
@end

@implementation NFEventManager

- (NFEventManager)init
{
  v8.receiver = self;
  v8.super_class = NFEventManager;
  v2 = [(NFEventManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    events = v2->_events;
    v2->_events = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    triggers = v2->_triggers;
    v2->_triggers = v5;
  }

  return v2;
}

- (void)fireEvent:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v4)
  {
    v5 = [(NFEventManager *)self events];
    [v5 addObject:v4];

    [(NFEventManager *)self attemptTriggersForCurrentEvent:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager fireEvent:];
  }
}

- (void)triggerOnceWhenAllEventsHaveOccurred:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v7 && [v6 count])
  {
    v8 = [NFEventTrigger alloc];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:v10 fireOnce:1 fireOnAny:0 events:v6 block:v7];

    v12 = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [v12 setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnceWhenAllEventsHaveOccurred:block:];
  }
}

- (void)triggerAlwaysWhenAllEventsHaveOccurred:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v7 && [v6 count])
  {
    v8 = [NFEventTrigger alloc];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:v10 fireOnce:0 fireOnAny:0 events:v6 block:v7];

    v12 = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [v12 setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerAlwaysWhenAllEventsHaveOccurred:block:];
  }
}

- (void)triggerOnceWhenAnyEventHasOccurred:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v7 && [v6 count])
  {
    v8 = [NFEventTrigger alloc];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:v10 fireOnce:1 fireOnAny:1 events:v6 block:v7];

    v12 = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [v12 setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnceWhenAnyEventHasOccurred:block:];
  }
}

- (void)triggerOnEvent:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v6 && v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
    [(NFEventManager *)self triggerOnAnyEvent:v8 block:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnEvent:block:];
  }
}

- (void)triggerOnAnyEvent:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x277CCACC8] isMainThread];
  if (v6 && v7 && [v6 count])
  {
    v8 = [NFEventTrigger alloc];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:v10 fireOnce:0 fireOnAny:1 events:v6 block:v7];

    v12 = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [v12 setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnAnyEvent:block:];
  }
}

- (void)attemptTriggersForCurrentEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NFEventManager *)self triggers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 fireOnce])
        {
          [(NFEventManager *)self handleOnceTrigger:v11 event:v4];
        }

        else
        {
          [(NFEventManager *)self handleAlwaysTrigger:v11 event:v4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleOnceTrigger:(id)a3 event:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 fireOnAny])
  {
    v8 = [v6 events];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v6 events];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = [(NFEventManager *)self events];
        LODWORD(v15) = [v16 containsObject:v15];

        if (!v15)
        {
          goto LABEL_14;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v17 = [(NFEventManager *)self triggers];
  v18 = [v6 key];
  [v17 removeObjectForKey:v18];

  v10 = [v6 block];
  v10[2]();
LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAlwaysTrigger:(id)a3 event:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 fireOnAny])
  {
    v8 = [v6 events];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v6 events];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = [(NFEventManager *)self events];
        LODWORD(v15) = [v16 containsObject:v15];

        if (!v15)
        {
          goto LABEL_14;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v10 = [v6 block];
  v10[2]();
LABEL_14:

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)fireEvent:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"You cannot fire a nil event"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerOnceWhenAllEventsHaveOccurred:block:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"There is no point of creating a trigger without a block or events"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerAlwaysWhenAllEventsHaveOccurred:block:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"There is no point of creating a trigger without a block or events"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerOnceWhenAnyEventHasOccurred:block:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"There is no point of creating a trigger without a block or events"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerOnEvent:block:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"There is no point of creating a trigger without a block or event"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)triggerOnAnyEvent:block:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"There is no point of creating a trigger without a block or event"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BED3000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end