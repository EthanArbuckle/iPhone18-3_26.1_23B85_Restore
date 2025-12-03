@interface CSSiriQueueMonitor
+ (id)sharedMonitor;
- (CSSiriQueueMonitor)init;
- (void)_addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler;
- (void)_beginMonitoring;
- (void)_endMonitoring;
- (void)_removeQueue:(id)queue;
- (void)addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler;
- (void)beginMonitoring;
- (void)endMonitoring;
- (void)removeQueue:(id)queue;
@end

@implementation CSSiriQueueMonitor

- (void)_endMonitoring
{
  v18 = *MEMORY[0x277D85DE8];
  numberOfTransactions = self->_numberOfTransactions;
  if (numberOfTransactions == 1)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[CSSiriQueueMonitor _endMonitoring]";
      _os_log_debug_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_observersByIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v9++) stop];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    numberOfTransactions = self->_numberOfTransactions;
  }

  self->_numberOfTransactions = numberOfTransactions - 1;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginMonitoring
{
  v18 = *MEMORY[0x277D85DE8];
  numberOfTransactions = self->_numberOfTransactions;
  if (!numberOfTransactions)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[CSSiriQueueMonitor _beginMonitoring]";
      _os_log_debug_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_observersByIdentifier allValues];
    v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * v9++) startWithQueue:self->_queue];
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    numberOfTransactions = self->_numberOfTransactions;
  }

  self->_numberOfTransactions = numberOfTransactions + 1;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeQueue:(id)queue
{
  v4 = MEMORY[0x277CCACA8];
  queueCopy = queue;
  v6 = [v4 alloc];
  label = dispatch_queue_get_label(queueCopy);

  v9 = [v6 initWithUTF8String:label];
  v8 = [(NSMutableDictionary *)self->_observersByIdentifier objectForKey:?];
  if (v8)
  {
    [(NSMutableDictionary *)self->_observersByIdentifier removeObjectForKey:v9];
    [v8 stop];
  }
}

- (void)_addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v11 = MEMORY[0x277CCACA8];
  handlerCopy = handler;
  v13 = [[v11 alloc] initWithUTF8String:dispatch_queue_get_label(queueCopy)];
  v14 = [(NSMutableDictionary *)self->_observersByIdentifier objectForKey:v13];

  if (v14)
  {
    v15 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "[CSSiriQueueMonitor _addQueue:heartBeatInterval:timeoutInterval:timeoutHandler:]";
      v20 = 2112;
      v21 = queueCopy;
      _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s Queue %@ is already being observed.", &v18, 0x16u);
    }
  }

  [(CSSiriQueueMonitor *)self _removeQueue:queueCopy];
  v16 = [[_CSSiriQueueObserver alloc] initWithQueue:queueCopy heartBeatInterval:handlerCopy timeoutInterval:interval timeoutHandler:timeoutInterval];

  [(NSMutableDictionary *)self->_observersByIdentifier setObject:v16 forKey:v13];
  if (self->_numberOfTransactions >= 1)
  {
    [(_CSSiriQueueObserver *)v16 startWithQueue:self->_queue];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)endMonitoring
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[CSSiriQueueMonitor endMonitoring]";
    _os_log_debug_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CSSiriQueueMonitor_endMonitoring__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginMonitoring
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v8 = "[CSSiriQueueMonitor beginMonitoring]";
    _os_log_debug_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CSSiriQueueMonitor_beginMonitoring__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeQueue:(id)queue
{
  queueCopy = queue;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__CSSiriQueueMonitor_removeQueue___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)addQueue:(id)queue heartBeatInterval:(double)interval timeoutInterval:(double)timeoutInterval timeoutHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CSSiriQueueMonitor_addQueue_heartBeatInterval_timeoutInterval_timeoutHandler___block_invoke;
  block[3] = &unk_2784C5650;
  block[4] = self;
  v16 = queueCopy;
  intervalCopy = interval;
  timeoutIntervalCopy = timeoutInterval;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = queueCopy;
  dispatch_async(queue, block);
}

- (CSSiriQueueMonitor)init
{
  v9.receiver = self;
  v9.super_class = CSSiriQueueMonitor;
  v2 = [(CSSiriQueueMonitor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.assistant.queue-monitor", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByIdentifier = v2->_observersByIdentifier;
    v2->_observersByIdentifier = v6;
  }

  return v2;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_20186 != -1)
  {
    dispatch_once(&sharedMonitor_onceToken_20186, &__block_literal_global_20187);
  }

  v3 = sharedMonitor_sharedMonitor_20188;

  return v3;
}

void __35__CSSiriQueueMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(CSSiriQueueMonitor);
  v1 = sharedMonitor_sharedMonitor_20188;
  sharedMonitor_sharedMonitor_20188 = v0;
}

@end