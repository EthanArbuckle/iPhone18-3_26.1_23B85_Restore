@interface IRBiomeProvider
- (IRBiomeProvider)init;
- (id)createStandardBiomeInterface;
- (id)fetchLatestEventsOfEventType:(int64_t)a3 numEvents:(unint64_t)a4;
- (void)addObserver:(id)a3 forEvent:(int64_t)a4;
- (void)notifyObserversOfEvent:(int64_t)a3 withValue:(id)a4;
- (void)removeObserver:(id)a3 forEvent:(int64_t)a4;
- (void)subscribe:(int64_t)a3;
- (void)unsubscribe:(int64_t)a3;
@end

@implementation IRBiomeProvider

- (IRBiomeProvider)init
{
  v9.receiver = self;
  v9.super_class = IRBiomeProvider;
  v2 = [(IRBiomeProvider *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.intelligentroutingd.biomeProvider", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    eventTypeToObservers = v2->_eventTypeToObservers;
    v2->_eventTypeToObservers = v6;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)subscribe:(int64_t)a3
{
  v4 = [(IRBiomeProvider *)self biomeInterface];
  [v4 subscribeEvent:a3];
}

- (void)unsubscribe:(int64_t)a3
{
  v4 = [(IRBiomeProvider *)self biomeInterface];
  [v4 unsubscribeEvent:a3];
}

- (void)addObserver:(id)a3 forEvent:(int64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v11 = self->_eventTypeToObservers;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMapTable *)v11 setObject:v10 forKey:v12];
  }

  v13 = self->_eventTypeToObservers;
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v15 = [(NSMapTable *)v13 objectForKey:v14];
  [v15 addObject:v6];

  v16 = self->_eventTypeToObservers;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v18 = [(NSMapTable *)v16 objectForKey:v17];
  v19 = [v18 count];

  v20 = MEMORY[0x277D21308];
  v21 = MEMORY[0x277D21260];
  if (v19 == 1)
  {
    [(IRBiomeProvider *)self subscribe:a4];
    v22 = dispatch_get_specific(*v20);
    v23 = *v21;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = IRBiomeEventTypeToString(a4);
      v35 = 136315650;
      v36 = "#biome-provider, ";
      v37 = 2112;
      v38 = v22;
      v39 = 2080;
      v40 = [v24 UTF8String];
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEFAULT, "%s[%@], subscribing to context notification event, %s", &v35, 0x20u);
    }
  }

  v25 = dispatch_get_specific(*v20);
  v26 = *v21;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = IRBiomeEventTypeToString(a4);
    v28 = v27;
    v29 = [v27 UTF8String];
    v30 = self->_eventTypeToObservers;
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v32 = [(NSMapTable *)v30 objectForKey:v31];
    v33 = [v32 count];
    v35 = 136315906;
    v36 = "#biome-provider, ";
    v37 = 2112;
    v38 = v25;
    v39 = 2080;
    v40 = v29;
    v41 = 2048;
    v42 = v33;
    _os_log_impl(&dword_25543D000, v26, OS_LOG_TYPE_DEBUG, "%s[%@], added an observer to context notification event, %s, current number of observers, %lu", &v35, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
  v34 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3 forEvent:(int64_t)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  if (v9)
  {
    v10 = self->_eventTypeToObservers;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v12 = [(NSMapTable *)v10 objectForKey:v11];
    [v12 removeObject:v6];

    v13 = self->_eventTypeToObservers;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v15 = [(NSMapTable *)v13 objectForKey:v14];
    v16 = [v15 count];

    v17 = MEMORY[0x277D21308];
    v18 = MEMORY[0x277D21260];
    if (!v16)
    {
      v19 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v20 = *v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = IRBiomeEventTypeToString(a4);
        v33 = 136315650;
        v34 = "#biome-provider, ";
        v35 = 2112;
        v36 = v19;
        v37 = 2080;
        v38 = [v21 UTF8String];
        _os_log_impl(&dword_25543D000, v20, OS_LOG_TYPE_DEFAULT, "%s[%@], unsubscribing to context notification event, %s", &v33, 0x20u);
      }

      [(IRBiomeProvider *)self unsubscribe:a4];
    }

    v22 = dispatch_get_specific(*v17);
    v23 = *v18;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = IRBiomeEventTypeToString(a4);
      v25 = v24;
      v26 = [v24 UTF8String];
      v27 = self->_eventTypeToObservers;
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v29 = [(NSMapTable *)v27 objectForKey:v28];
      v30 = [v29 count];
      v33 = 136315906;
      v34 = "#biome-provider, ";
      v35 = 2112;
      v36 = v22;
      v37 = 2080;
      v38 = v26;
      v39 = 2048;
      v40 = v30;
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEBUG, "%s[%@], removed an observer to context notification event, %s, current number of observers, %lu", &v33, 0x2Au);
    }
  }

  else
  {
    v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v23 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = IRBiomeEventTypeToString(a4);
      v33 = 136315650;
      v34 = "#biome-provider, ";
      v35 = 2112;
      v36 = v22;
      v37 = 2080;
      v38 = [v31 UTF8String];
      _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEFAULT, "%s[%@], asked to remove an observer but no observer registered for event: %s", &v33, 0x20u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfEvent:(int64_t)a3 withValue:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  eventTypeToObservers = self->_eventTypeToObservers;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [(NSMapTable *)eventTypeToObservers objectForKey:v8];

  v10 = [[IRBiomeParameters alloc] initWithBiomeEventType:a3];
  v11 = [v6 eventBody];
  [(IRBiomeParameters *)v10 biomeEventClass];
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v16 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = IRBiomeEventTypeToString(a3);
      *buf = 136315650;
      v45 = "#biome-provider, ";
      v46 = 2112;
      v47 = v13;
      v48 = 2080;
      v49 = [v21 UTF8String];
      _os_log_impl(&dword_25543D000, v16, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Biome event missmatch] received biome event data doesn't match event type, %s", buf, 0x20u);
    }

    goto LABEL_31;
  }

  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v13 = [v6 eventBody];
      v22 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v23 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v45 = "#biome-provider, ";
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&dword_25543D000, v23, OS_LOG_TYPE_DEBUG, "%s[%@], Notify clients of a DeviceWiFi event", buf, 0x16u);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = v9;
      v24 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v24)
      {
        goto LABEL_31;
      }

      v32 = v9;
      v33 = v6;
      v25 = *v39;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v16);
          }

          v27 = *(*(&v38 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v27 provider:self didUpdateDeviceWiFi:v13];
          }
        }

        v24 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v24);
      goto LABEL_30;
    }

    if (a3)
    {
      goto LABEL_32;
    }

LABEL_36:
    v29 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v30 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v31 = IRBiomeEventTypeToString(a3);
      *buf = 136315650;
      v45 = "#biome-provider, ";
      v46 = 2112;
      v47 = v29;
      v48 = 2080;
      v49 = [v31 UTF8String];
      _os_log_impl(&dword_25543D000, v30, OS_LOG_TYPE_FAULT, "%s[%@], [ErrorId - Biome unsupported event on notify] IRBiome, can't notify clients of biome event type %s", buf, 0x20u);
    }

    [IRBiomeProvider notifyObserversOfEvent:v30 withValue:v29];
  }

  if (a3 != 2)
  {
    if ((a3 - 3) >= 2)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

  v13 = [v6 eventBody];
  v14 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v15 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v45 = "#biome-provider, ";
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_DEBUG, "%s[%@], Notify clients of a MediaRoute event", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v17)
  {
    goto LABEL_31;
  }

  v32 = v9;
  v33 = v6;
  v18 = *v35;
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v34 + 1) + 8 * j);
      if (objc_opt_respondsToSelector())
      {
        [v20 provider:self didUpdateMediaRoute:v13];
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
  }

  while (v17);
LABEL_30:
  v9 = v32;
  v6 = v33;
LABEL_31:

LABEL_32:
  os_unfair_lock_unlock(&self->_lock);

  v28 = *MEMORY[0x277D85DE8];
}

- (id)fetchLatestEventsOfEventType:(int64_t)a3 numEvents:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(IRBiomeProvider *)self biomeInterface];
  v8 = [v7 fetchLatestEventsOfEventType:a3 numEvents:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)createStandardBiomeInterface
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [[IRBiomeBridge alloc] initWithBiomeProvider:self targetQueue:self->_internalQueue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)notifyObserversOfEvent:(void *)a1 withValue:(void *)a2 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];

  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_3(&dword_25543D000, v4, v5, "%s[%@], %s:%d: assertion failure in %s", v6, v7, v8, v9, 2u);
  }

  abort();
}

@end