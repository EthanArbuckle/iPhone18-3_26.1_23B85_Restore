@interface UARPAnalyticsUpdateFirmwareManager
- (UARPAnalyticsUpdateFirmwareManager)initWithController:(id)controller queue:(id)queue;
- (id)description;
- (id)updateStateForAccessoryID:(id)d assetID:(id)iD;
- (id)updateStatesForAccessoryID:(id)d;
- (void)configurePurgeTimer;
- (void)dealloc;
- (void)purgeStaleUpdateStateRecords;
- (void)setAccessoryIDUnreachable:(id)unreachable;
- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status;
- (void)updateComplete:(id)complete;
@end

@implementation UARPAnalyticsUpdateFirmwareManager

- (UARPAnalyticsUpdateFirmwareManager)initWithController:(id)controller queue:(id)queue
{
  controllerCopy = controller;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = UARPAnalyticsUpdateFirmwareManager;
  v8 = [(UARPAnalyticsUpdateFirmwareManager *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_controller, controllerCopy);
    v10 = os_log_create("com.apple.accessoryupdater.uarp", "analytics");
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_queue, queue);
    array = [MEMORY[0x277CBEB18] array];
    stateArray = v9->_stateArray;
    v9->_stateArray = array;

    [(UARPAnalyticsUpdateFirmwareManager *)v9 configurePurgeTimer];
  }

  return v9;
}

- (void)dealloc
{
  purgeTimer = self->_purgeTimer;
  if (purgeTimer)
  {
    dispatch_source_cancel(purgeTimer);
  }

  v4.receiver = self;
  v4.super_class = UARPAnalyticsUpdateFirmwareManager;
  [(UARPAnalyticsUpdateFirmwareManager *)&v4 dealloc];
}

- (void)configurePurgeTimer
{
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  purgeTimer = self->_purgeTimer;
  self->_purgeTimer = v3;

  v5 = self->_purgeTimer;
  v6 = dispatch_time(0, 3600000000000);
  dispatch_source_set_timer(v5, v6, 0x34630B8A000uLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  v7 = self->_purgeTimer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__UARPAnalyticsUpdateFirmwareManager_configurePurgeTimer__block_invoke;
  v8[3] = &unk_278EC13E8;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_purgeTimer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__UARPAnalyticsUpdateFirmwareManager_configurePurgeTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained purgeStaleUpdateStateRecords];
}

- (id)updateStateForAccessoryID:(id)d assetID:(id)iD
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_stateArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        accessoryID = [v12 accessoryID];
        if ([dCopy analyticsIsEqual:accessoryID])
        {
          assetID = [v12 assetID];
          v15 = [iDCopy analyticsIsEqual:assetID];

          if (v15)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)updateStatesForAccessoryID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_stateArray;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        accessoryID = [v11 accessoryID];
        v13 = [dCopy analyticsIsEqual:accessoryID];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:array];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)stagingCompleteForAccessoryID:(id)d assetID:(id)iD status:(unint64_t)status
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v18 = 136315906;
    v19 = "[UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:assetID:status:]";
    v20 = 2112;
    v21 = dCopy;
    v22 = 2112;
    v23 = iDCopy;
    v24 = 2080;
    v25 = UARPFirmwareStagingCompletionStatusToString(status);
    _os_log_impl(&dword_247AA7000, v11, OS_LOG_TYPE_INFO, "%s: %@ %@ status=%s", &v18, 0x2Au);
  }

  v12 = [(UARPAnalyticsUpdateFirmwareManager *)self updateStateForAccessoryID:dCopy assetID:iDCopy];
  v13 = v12;
  if (v12)
  {
    [v12 stagingCompleteWithStatus:status];
    isUrgentUpdate = [iDCopy isUrgentUpdate];
    assetID = [v13 assetID];
    [assetID setIsUrgentUpdate:isUrgentUpdate];

    [(UARPAnalyticsUpdateFirmwareManager *)self updateComplete:v13];
  }

  else
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:dCopy assetID:iDCopy status:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setAccessoryIDUnreachable:(id)unreachable
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(UARPAnalyticsUpdateFirmwareManager *)self updateStatesForAccessoryID:unreachable];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 136315394;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = v13;
          v19 = "[UARPAnalyticsUpdateFirmwareManager setAccessoryIDUnreachable:]";
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@ unreachable", buf, 0x16u);
        }

        [v10 accessoryUnreachable];
      }

      v7 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)purgeStaleUpdateStateRecords
{
  v37 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Purge timer fired", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_stateArray;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        if ([v10 age] >> 7 >= 0x2A3)
        {
          [array addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_stateArray removeObjectsInArray:array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = array;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v26;
    *&v13 = 138412290;
    v24 = v13;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * j);
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          v34 = v17;
          _os_log_error_impl(&dword_247AA7000, v18, OS_LOG_TYPE_ERROR, "Purging %@", buf, 0xCu);
        }

        [v17 accessoryUnreachable];
        WeakRetained = objc_loadWeakRetained(&self->_controller);
        accessoryID = [v17 accessoryID];
        assetID = [v17 assetID];
        eventParams = [v17 eventParams];
        [WeakRetained sendUpdateFirmwareAnalyticsEventForAccessoryID:accessoryID assetID:assetID params:eventParams];
      }

      v14 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateComplete:(id)complete
{
  v15 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[UARPAnalyticsUpdateFirmwareManager updateComplete:]";
    v13 = 2112;
    v14 = completeCopy;
    _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "%s: %@", &v11, 0x16u);
  }

  [(NSMutableArray *)self->_stateArray removeObject:completeCopy];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  accessoryID = [completeCopy accessoryID];
  assetID = [completeCopy assetID];
  eventParams = [completeCopy eventParams];
  [WeakRetained sendUpdateFirmwareAnalyticsEventForAccessoryID:accessoryID assetID:assetID params:eventParams];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\n{\n", v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_stateArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@\n", *(*(&v15 + 1) + 8 * i)];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [v6 appendString:@"}"];
  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)stagingCompleteForAccessoryID:(uint64_t)a1 assetID:(uint64_t)a2 status:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "[UARPAnalyticsUpdateFirmwareManager stagingCompleteForAccessoryID:assetID:status:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "%s: No record for %@ %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end