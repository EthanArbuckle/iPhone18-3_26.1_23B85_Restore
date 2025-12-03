@interface ViewfinderReliability
+ (id)sharedInstance;
- (ViewfinderReliability)init;
- (void)_checkForRepeatedEvent:(int64_t)event;
- (void)_checkForUnexpectedEvent:(int64_t)event;
- (void)_print;
- (void)_registerSources;
- (void)_reset;
- (void)logEvent:(int64_t)event;
@end

@implementation ViewfinderReliability

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ViewfinderReliability_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __39__ViewfinderReliability_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ViewfinderReliability)init
{
  if (os_variant_has_internal_diagnostics())
  {
    v10.receiver = self;
    v10.super_class = ViewfinderReliability;
    v3 = [(ViewfinderReliability *)&v10 init];
    if (v3)
    {
      v4 = os_log_create("com.apple.NanoCamera", "ViewfinderReliability");
      log = v3->_log;
      v3->_log = v4;

      v6 = [MEMORY[0x277CCA940] set];
      events = v3->_events;
      v3->_events = v6;

      [(ViewfinderReliability *)v3 _registerSources];
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)logEvent:(int64_t)event
{
  v14 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = log;
    v7 = NSStringFromViewfinderReliabiliyEvent(event);
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_243CBC000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v12, 0xCu);
  }

  v8 = self->_events;
  objc_sync_enter(v8);
  events = self->_events;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  [(NSCountedSet *)events addObject:v10];

  [(ViewfinderReliability *)self _checkForUnexpectedEvent:event];
  [(ViewfinderReliability *)self _checkForRepeatedEvent:event];
  objc_sync_exit(v8);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerSources
{
  objc_initWeak(&location, self);
  signal(30, 1);
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, MEMORY[0x277D85CD0]);
  resetSource = self->_resetSource;
  self->_resetSource = v3;

  v5 = self->_resetSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__ViewfinderReliability__registerSources__block_invoke;
  handler[3] = &unk_278DEF0C0;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->_resetSource);
  signal(31, 1);
  v6 = MEMORY[0x277D85CD0];
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 0x1FuLL, 0, MEMORY[0x277D85CD0]);
  printSource = self->_printSource;
  self->_printSource = v7;

  v9 = self->_printSource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__ViewfinderReliability__registerSources__block_invoke_2;
  v10[3] = &unk_278DEF0C0;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_printSource);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __41__ViewfinderReliability__registerSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

void __41__ViewfinderReliability__registerSources__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _print];
}

- (void)_reset
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_243CBC000, log, OS_LOG_TYPE_DEFAULT, "Reset events.", v5, 2u);
  }

  v4 = self->_events;
  objc_sync_enter(v4);
  [(NSCountedSet *)self->_events removeAllObjects];
  objc_sync_exit(v4);
}

- (void)_print
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = self->_events;
  objc_sync_enter(v13);
  string = [MEMORY[0x277CCAB68] string];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_events;
  v4 = [(NSCountedSet *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = MEMORY[0x277CCACA8];
        v9 = NSStringFromViewfinderReliabiliyEvent([v7 integerValue]);
        v10 = [v8 stringWithFormat:@"%@: %lu\n", v9, -[NSCountedSet countForObject:](self->_events, "countForObject:", v7)];
        [string appendString:v10];
      }

      v4 = [(NSCountedSet *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = string;
    _os_log_impl(&dword_243CBC000, log, OS_LOG_TYPE_DEFAULT, "Count of events:\n%@", buf, 0xCu);
  }

  objc_sync_exit(v13);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_checkForUnexpectedEvent:(int64_t)event
{
  if (CFPreferencesGetAppBooleanValue(@"ViewfinderReliability_CheckUnexpectedEvents", @"com.apple.NanoCamera", 0))
  {
    v5 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_2856ED578, &unk_2856ED590, &unk_2856ED5A8, &unk_2856ED5C0, &unk_2856ED5D8, &unk_2856ED5F0, &unk_2856ED608, 0}];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        [(ViewfinderReliability *)log _checkForUnexpectedEvent:event];
      }
    }
  }
}

- (void)_checkForRepeatedEvent:(int64_t)event
{
  if (CFPreferencesGetAppBooleanValue(@"ViewfinderReliability_CheckRepeatedEvents", @"com.apple.NanoCamera", 0))
  {
    events = self->_events;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:event];
    v7 = [(NSCountedSet *)events countForObject:v6];

    if (v7 >= 2)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
      {
        [(ViewfinderReliability *)log _checkForRepeatedEvent:event];
      }
    }
  }
}

- (void)_checkForUnexpectedEvent:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromViewfinderReliabiliyEvent(a2);
  OUTLINED_FUNCTION_0_0(&dword_243CBC000, v5, v6, "Unexpected event: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_checkForRepeatedEvent:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromViewfinderReliabiliyEvent(a2);
  OUTLINED_FUNCTION_0_0(&dword_243CBC000, v5, v6, "Repeated event: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end