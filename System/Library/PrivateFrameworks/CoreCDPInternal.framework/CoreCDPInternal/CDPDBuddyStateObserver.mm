@interface CDPDBuddyStateObserver
- (CDPDBuddyStateObserver)init;
- (void)eventReceived:(const char *)a3 eventValue:(unint64_t)a4;
- (void)registerListener:(id)a3;
@end

@implementation CDPDBuddyStateObserver

- (CDPDBuddyStateObserver)init
{
  v6.receiver = self;
  v6.super_class = CDPDBuddyStateObserver;
  v2 = [(CDPDBuddyStateObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB40]);
    listeners = v2->_listeners;
    v2->_listeners = v3;
  }

  return v2;
}

- (void)registerListener:(id)a3
{
  v4 = a3;
  [(NSMutableOrderedSet *)self->_listeners addObject:?];
  if ([MEMORY[0x277CFD560] isBuddyFinished])
  {
    [v4 buddyFinished];
  }
}

- (void)eventReceived:(const char *)a3 eventValue:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [CDPDBuddyStateObserver eventReceived:a3 eventValue:v6];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v7 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  v28 = getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr;
  if (!getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke;
    v23 = &unk_278E259A8;
    v24 = &v25;
    __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(buf);
    v7 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v7)
  {
    [CDPDBuddyStateObserver eventReceived:eventValue:];
    __break(1u);
  }

  v8 = *v7;
  v9 = strcmp([v8 UTF8String], a3);

  if (!v9)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "CDPDBuddyStateObserver: Buddy Completed. Calling listeners.", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_listeners;
    v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v16 objects:v29 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * i) buddyFinished];
        }

        v12 = [(NSMutableOrderedSet *)v11 countByEnumeratingWithState:&v16 objects:v29 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)eventReceived:(uint64_t)a1 eventValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDPDBuddyStateObserver Received event %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (uint64_t)eventReceived:eventValue:.cold.2()
{
  dlerror();
  v0 = abort_report_np();
  return [CDPDSOSCircleController _joinCircleIgnoringBackups:v0 completion:?];
}

@end