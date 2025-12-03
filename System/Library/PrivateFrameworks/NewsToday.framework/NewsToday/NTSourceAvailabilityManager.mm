@interface NTSourceAvailabilityManager
- (NTSourceAvailabilityManager)init;
- (NTSourceAvailabilityManager)initWithAvailabilityEntriesInPreferredOrder:(id)order queue:(id)queue;
- (id)preferredSourceChangedNotificationBlock;
- (void)_recomputePreferredAvailableTodayResultsSource;
- (void)_setPreferredAvailableTodayResultsSource:(Class)source;
- (void)setPreferredSourceChangedNotificationBlock:(id)block;
@end

@implementation NTSourceAvailabilityManager

- (NTSourceAvailabilityManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTSourceAvailabilityManager init]";
    v10 = 2080;
    v11 = "NTSourceAvailabilityManager.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSourceAvailabilityManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTSourceAvailabilityManager)initWithAvailabilityEntriesInPreferredOrder:(id)order queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  queueCopy = queue;
  v18 = orderCopy;
  if (!orderCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSourceAvailabilityManager initWithAvailabilityEntriesInPreferredOrder:queue:];
  }

  if (![orderCopy count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSourceAvailabilityManager initWithAvailabilityEntriesInPreferredOrder:queue:];
  }

  v27.receiver = self;
  v27.super_class = NTSourceAvailabilityManager;
  v8 = [(NTSourceAvailabilityManager *)&v27 init];
  if (v8)
  {
    v9 = [orderCopy copy];
    availabilityEntriesInPreferredOrder = v8->_availabilityEntriesInPreferredOrder;
    v8->_availabilityEntriesInPreferredOrder = v9;

    objc_storeStrong(&v8->_queue, queue);
    objc_initWeak(&location, v8);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = orderCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __81__NTSourceAvailabilityManager_initWithAvailabilityEntriesInPreferredOrder_queue___block_invoke;
          v19[3] = &unk_2799835B8;
          v20 = queueCopy;
          objc_copyWeak(&v21, &location);
          [v15 setAvailabilityChangedNotificationBlock:v19];
          objc_destroyWeak(&v21);
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v12);
    }

    [(NTSourceAvailabilityManager *)v8 _recomputePreferredAvailableTodayResultsSource];
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

void __81__NTSourceAvailabilityManager_initWithAvailabilityEntriesInPreferredOrder_queue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NTSourceAvailabilityManager_initWithAvailabilityEntriesInPreferredOrder_queue___block_invoke_2;
  block[3] = &unk_279983590;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __81__NTSourceAvailabilityManager_initWithAvailabilityEntriesInPreferredOrder_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recomputePreferredAvailableTodayResultsSource];
}

- (void)setPreferredSourceChangedNotificationBlock:(id)block
{
  v4 = [block copy];
  preferredSourceChangedNotificationBlock = self->_preferredSourceChangedNotificationBlock;
  self->_preferredSourceChangedNotificationBlock = v4;

  MEMORY[0x2821F96F8](v4, preferredSourceChangedNotificationBlock);
}

- (id)preferredSourceChangedNotificationBlock
{
  v2 = _Block_copy(self->_preferredSourceChangedNotificationBlock);

  return v2;
}

- (void)_recomputePreferredAvailableTodayResultsSource
{
  availabilityEntriesInPreferredOrder = [(NTSourceAvailabilityManager *)self availabilityEntriesInPreferredOrder];
  v3 = [availabilityEntriesInPreferredOrder indexOfObjectPassingTest:&__block_literal_global_10];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NTSourceAvailabilityManager *)self _setPreferredAvailableTodayResultsSource:0];
  }

  else
  {
    v4 = [availabilityEntriesInPreferredOrder objectAtIndexedSubscript:v3];
    -[NTSourceAvailabilityManager _setPreferredAvailableTodayResultsSource:](self, "_setPreferredAvailableTodayResultsSource:", [v4 todayResultsFetchDescriptorClass]);
  }
}

- (void)_setPreferredAvailableTodayResultsSource:(Class)source
{
  if ([(NTSourceAvailabilityManager *)self preferredSourceFetchDescriptorClass]!= source)
  {
    [(NTSourceAvailabilityManager *)self setPreferredSourceFetchDescriptorClass:source];
    preferredSourceChangedNotificationBlock = [(NTSourceAvailabilityManager *)self preferredSourceChangedNotificationBlock];

    if (preferredSourceChangedNotificationBlock)
    {
      preferredSourceChangedNotificationBlock2 = [(NTSourceAvailabilityManager *)self preferredSourceChangedNotificationBlock];
      preferredSourceChangedNotificationBlock2[2]();
    }
  }
}

- (void)initWithAvailabilityEntriesInPreferredOrder:queue:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "availabilityEntries"];
  *buf = 136315906;
  v3 = "[NTSourceAvailabilityManager initWithAvailabilityEntriesInPreferredOrder:queue:]";
  v4 = 2080;
  v5 = "NTSourceAvailabilityManager.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithAvailabilityEntriesInPreferredOrder:queue:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "availabilityEntries.count > 0"];
  *buf = 136315906;
  v3 = "[NTSourceAvailabilityManager initWithAvailabilityEntriesInPreferredOrder:queue:]";
  v4 = 2080;
  v5 = "NTSourceAvailabilityManager.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end