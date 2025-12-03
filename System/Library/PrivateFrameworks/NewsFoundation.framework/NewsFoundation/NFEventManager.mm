@interface NFEventManager
- (NFEventManager)init;
- (void)attemptTriggersForCurrentEvent:(id)event;
- (void)fireEvent:(id)event;
- (void)handleAlwaysTrigger:(id)trigger event:(id)event;
- (void)handleOnceTrigger:(id)trigger event:(id)event;
- (void)triggerAlwaysWhenAllEventsHaveOccurred:(id)occurred block:(id)block;
- (void)triggerOnAnyEvent:(id)event block:(id)block;
- (void)triggerOnEvent:(id)event block:(id)block;
- (void)triggerOnceWhenAllEventsHaveOccurred:(id)occurred block:(id)block;
- (void)triggerOnceWhenAnyEventHasOccurred:(id)occurred block:(id)block;
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

- (void)fireEvent:(id)event
{
  eventCopy = event;
  [MEMORY[0x277CCACC8] isMainThread];
  if (eventCopy)
  {
    events = [(NFEventManager *)self events];
    [events addObject:eventCopy];

    [(NFEventManager *)self attemptTriggersForCurrentEvent:eventCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager fireEvent:];
  }
}

- (void)triggerOnceWhenAllEventsHaveOccurred:(id)occurred block:(id)block
{
  occurredCopy = occurred;
  blockCopy = block;
  [MEMORY[0x277CCACC8] isMainThread];
  if (blockCopy && [occurredCopy count])
  {
    v8 = [NFEventTrigger alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:uUIDString fireOnce:1 fireOnAny:0 events:occurredCopy block:blockCopy];

    triggers = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [triggers setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnceWhenAllEventsHaveOccurred:block:];
  }
}

- (void)triggerAlwaysWhenAllEventsHaveOccurred:(id)occurred block:(id)block
{
  occurredCopy = occurred;
  blockCopy = block;
  [MEMORY[0x277CCACC8] isMainThread];
  if (blockCopy && [occurredCopy count])
  {
    v8 = [NFEventTrigger alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:uUIDString fireOnce:0 fireOnAny:0 events:occurredCopy block:blockCopy];

    triggers = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [triggers setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerAlwaysWhenAllEventsHaveOccurred:block:];
  }
}

- (void)triggerOnceWhenAnyEventHasOccurred:(id)occurred block:(id)block
{
  occurredCopy = occurred;
  blockCopy = block;
  [MEMORY[0x277CCACC8] isMainThread];
  if (blockCopy && [occurredCopy count])
  {
    v8 = [NFEventTrigger alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:uUIDString fireOnce:1 fireOnAny:1 events:occurredCopy block:blockCopy];

    triggers = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [triggers setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnceWhenAnyEventHasOccurred:block:];
  }
}

- (void)triggerOnEvent:(id)event block:(id)block
{
  eventCopy = event;
  blockCopy = block;
  [MEMORY[0x277CCACC8] isMainThread];
  if (eventCopy && blockCopy)
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:eventCopy];
    [(NFEventManager *)self triggerOnAnyEvent:v8 block:blockCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnEvent:block:];
  }
}

- (void)triggerOnAnyEvent:(id)event block:(id)block
{
  eventCopy = event;
  blockCopy = block;
  [MEMORY[0x277CCACC8] isMainThread];
  if (eventCopy && blockCopy && [eventCopy count])
  {
    v8 = [NFEventTrigger alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [(NFEventTrigger *)v8 initWithKey:uUIDString fireOnce:0 fireOnAny:1 events:eventCopy block:blockCopy];

    triggers = [(NFEventManager *)self triggers];
    v13 = [(NFEventTrigger *)v11 key];
    [triggers setObject:v11 forKey:v13];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NFEventManager triggerOnAnyEvent:block:];
  }
}

- (void)attemptTriggersForCurrentEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  triggers = [(NFEventManager *)self triggers];
  allValues = [triggers allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 fireOnce])
        {
          [(NFEventManager *)self handleOnceTrigger:v11 event:eventCopy];
        }

        else
        {
          [(NFEventManager *)self handleAlwaysTrigger:v11 event:eventCopy];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleOnceTrigger:(id)trigger event:(id)event
{
  v25 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  eventCopy = event;
  if ([triggerCopy fireOnAny])
  {
    events = [triggerCopy events];
    v9 = [events containsObject:eventCopy];

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
    events2 = [triggerCopy events];
    v11 = [events2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(events2);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        events3 = [(NFEventManager *)self events];
        LODWORD(v15) = [events3 containsObject:v15];

        if (!v15)
        {
          goto LABEL_14;
        }

        if (v12 == ++v14)
        {
          v12 = [events2 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  triggers = [(NFEventManager *)self triggers];
  v18 = [triggerCopy key];
  [triggers removeObjectForKey:v18];

  events2 = [triggerCopy block];
  events2[2]();
LABEL_14:

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleAlwaysTrigger:(id)trigger event:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  eventCopy = event;
  if ([triggerCopy fireOnAny])
  {
    events = [triggerCopy events];
    v9 = [events containsObject:eventCopy];

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
    events2 = [triggerCopy events];
    v11 = [events2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(events2);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        events3 = [(NFEventManager *)self events];
        LODWORD(v15) = [events3 containsObject:v15];

        if (!v15)
        {
          goto LABEL_14;
        }

        if (v12 == ++v14)
        {
          v12 = [events2 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  events2 = [triggerCopy block];
  events2[2]();
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