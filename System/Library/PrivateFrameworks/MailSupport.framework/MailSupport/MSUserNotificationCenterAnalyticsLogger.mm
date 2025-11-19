@interface MSUserNotificationCenterAnalyticsLogger
- (MSUserNotificationCenterAnalyticsLogger)initWithCoreAnalyticsCollector:(id)a3;
- (void)messageAddedWithNotificationIDs:(id)a3;
- (void)messageSummaryAddedForNotificationID:(id)a3 isGeneratedSummary:(BOOL)a4;
- (void)notificationRemovedWithNotificationIDs:(id)a3;
- (void)notificationSummaryUpdatedForNotificationID:(id)a3;
- (void)notificationWithSummaryPostedForNotificationID:(id)a3;
- (void)notificationWithoutSummaryPostedForNotificationID:(id)a3;
@end

@implementation MSUserNotificationCenterAnalyticsLogger

void ___ef_log_MSUserNotificationCenterAnalyticsLogger_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MSUserNotificationCenterAnalyticsLogger");
  v1 = _ef_log_MSUserNotificationCenterAnalyticsLogger_log;
  _ef_log_MSUserNotificationCenterAnalyticsLogger_log = v0;
}

- (MSUserNotificationCenterAnalyticsLogger)initWithCoreAnalyticsCollector:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MSUserNotificationCenterAnalyticsLogger;
  v6 = [(MSUserNotificationCenterAnalyticsLogger *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreAnalytics, a3);
    v8 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mail.analytics.notification" qualityOfService:9];
    scheduler = v7->_scheduler;
    v7->_scheduler = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    notificationIntervals = v7->_notificationIntervals;
    v7->_notificationIntervals = v10;
  }

  return v7;
}

- (void)messageAddedWithNotificationIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    objc_initWeak(&location, self);
    v5 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__MSUserNotificationCenterAnalyticsLogger_messageAddedWithNotificationIDs___block_invoke;
    v6[3] = &unk_27985BBD0;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    [v5 performBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75__MSUserNotificationCenterAnalyticsLogger_messageAddedWithNotificationIDs___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v6)
    {
      v8 = *v24;
      *&v7 = 138543618;
      v22 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v11 = [WeakRetained notificationIntervals];
          v12 = [v11 objectForKeyedSubscript:v10];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = v22;
              v30 = v10;
              v31 = 2048;
              v32 = v4;
              _os_log_debug_impl(&dword_257F8E000, v14, OS_LOG_TYPE_DEBUG, "Message added: %{public}@, initialDate: %f", buf, 0x16u);
            }

            v15 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
            v16 = [WeakRetained notificationIntervals];
            [v16 setObject:v15 forKeyedSubscript:v10];

            v27[0] = @"type";
            v27[1] = @"generatedSummarySupported";
            v28[0] = &unk_286935488;
            v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "generatedSummarySupported")}];
            v28[1] = v17;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

            v19 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.notification.add" collectionData:v18];
            v20 = [WeakRetained coreAnalytics];
            [v20 logOneTimeEvent:v19];
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v6);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)notificationRemovedWithNotificationIDs:(id)a3
{
  v4 = a3;
  v5 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MSUserNotificationCenterAnalyticsLogger *)v4 notificationRemovedWithNotificationIDs:v5];
  }

  objc_initWeak(&location, self);
  v6 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__MSUserNotificationCenterAnalyticsLogger_notificationRemovedWithNotificationIDs___block_invoke;
  v8[3] = &unk_27985BBD0;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v6 performBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __82__MSUserNotificationCenterAnalyticsLogger_notificationRemovedWithNotificationIDs___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained notificationIntervals];
    [v3 removeObjectsForKeys:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)notificationWithoutSummaryPostedForNotificationID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSUserNotificationCenterAnalyticsLogger.m" lineNumber:81 description:@"notificationID cannot be nil"];
  }

  objc_initWeak(&location, self);
  v6 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__MSUserNotificationCenterAnalyticsLogger_notificationWithoutSummaryPostedForNotificationID___block_invoke;
  v9[3] = &unk_27985BBD0;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v10 = v7;
  [v6 performBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __93__MSUserNotificationCenterAnalyticsLogger_notificationWithoutSummaryPostedForNotificationID___block_invoke(uint64_t a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained notificationIntervals];
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = [v4 objectForKeyedSubscript:v6];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10 - v9;
    v12 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __93__MSUserNotificationCenterAnalyticsLogger_notificationWithoutSummaryPostedForNotificationID___block_invoke_cold_1(v5);
    }

    v19[0] = @"messageSummaryPresent";
    v19[1] = @"type";
    v20[0] = MEMORY[0x277CBEC28];
    v20[1] = &unk_2869354A0;
    v19[2] = @"generatedSummarySupported";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "generatedSummarySupported")}];
    v20[2] = v13;
    v19[3] = @"notificationPostDuration";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v20[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

    v16 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.notification.add" collectionData:v15];
    v17 = [v3 coreAnalytics];
    [v17 logOneTimeEvent:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)notificationWithSummaryPostedForNotificationID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSUserNotificationCenterAnalyticsLogger.m" lineNumber:102 description:@"notificationID cannot be nil"];
  }

  objc_initWeak(&location, self);
  v6 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__MSUserNotificationCenterAnalyticsLogger_notificationWithSummaryPostedForNotificationID___block_invoke;
  v9[3] = &unk_27985BBD0;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v10 = v7;
  [v6 performBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __90__MSUserNotificationCenterAnalyticsLogger_notificationWithSummaryPostedForNotificationID___block_invoke(uint64_t a1)
{
  v20[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained notificationIntervals];
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = [v4 objectForKeyedSubscript:v6];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10 - v9;
    v12 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __90__MSUserNotificationCenterAnalyticsLogger_notificationWithSummaryPostedForNotificationID___block_invoke_cold_1(v5);
    }

    v19[0] = @"messageSummaryPresent";
    v19[1] = @"type";
    v20[0] = MEMORY[0x277CBEC38];
    v20[1] = &unk_2869354A0;
    v19[2] = @"generatedSummarySupported";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "generatedSummarySupported")}];
    v20[2] = v13;
    v19[3] = @"notificationPostDuration";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v20[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

    v16 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.notification.add" collectionData:v15];
    v17 = [v3 coreAnalytics];
    [v17 logOneTimeEvent:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)notificationSummaryUpdatedForNotificationID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MSUserNotificationCenterAnalyticsLogger.m" lineNumber:123 description:@"notificationID cannot be nil"];
  }

  objc_initWeak(&location, self);
  v6 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__MSUserNotificationCenterAnalyticsLogger_notificationSummaryUpdatedForNotificationID___block_invoke;
  v9[3] = &unk_27985BBD0;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v10 = v7;
  [v6 performBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __87__MSUserNotificationCenterAnalyticsLogger_notificationSummaryUpdatedForNotificationID___block_invoke(uint64_t a1)
{
  v20[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained notificationIntervals];
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = [v4 objectForKeyedSubscript:v6];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10 - v9;
    v12 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __87__MSUserNotificationCenterAnalyticsLogger_notificationSummaryUpdatedForNotificationID___block_invoke_cold_1(v5);
    }

    v20[0] = &unk_2869354B8;
    v19[0] = @"type";
    v19[1] = @"generatedSummarySupported";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "generatedSummarySupported")}];
    v20[1] = v13;
    v19[2] = @"notificationPostDuration";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v20[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

    v16 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.notification.add" collectionData:v15];
    v17 = [v3 coreAnalytics];
    [v17 logOneTimeEvent:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)messageSummaryAddedForNotificationID:(id)a3 isGeneratedSummary:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MSUserNotificationCenterAnalyticsLogger.m" lineNumber:143 description:@"notificationID cannot be nil"];
  }

  objc_initWeak(&location, self);
  v8 = [(MSUserNotificationCenterAnalyticsLogger *)self scheduler];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__MSUserNotificationCenterAnalyticsLogger_messageSummaryAddedForNotificationID_isGeneratedSummary___block_invoke;
  v11[3] = &unk_27985BBF8;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  v14 = a4;
  [v8 performBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __99__MSUserNotificationCenterAnalyticsLogger_messageSummaryAddedForNotificationID_isGeneratedSummary___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained notificationIntervals];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    if (v5)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v7 = v6;
      [v5 doubleValue];
      v9 = v7 - v8;
      v10 = _ef_log_MSUserNotificationCenterAnalyticsLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 48);
        *buf = 138543874;
        v23 = v18;
        v24 = 1024;
        v25 = v19;
        v26 = 2048;
        v27 = v9;
        _os_log_debug_impl(&dword_257F8E000, v10, OS_LOG_TYPE_DEBUG, "Summary updated: %{public}@, isGeneratedSummary: %{BOOL}d, duration: %f", buf, 0x1Cu);
      }

      v11 = &unk_2869354E8;
      if (*(a1 + 48))
      {
        v11 = &unk_2869354D0;
      }

      v21[0] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "generatedSummarySupported", @"type", @"generatedSummarySupported"}];
      v21[1] = v12;
      v20[2] = @"messageSummaryAddedDuration";
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      v21[2] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

      v15 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.notification.add" collectionData:v14];
      v16 = [v3 coreAnalytics];
      [v16 logOneTimeEvent:v15];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)notificationRemovedWithNotificationIDs:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_257F8E000, a2, OS_LOG_TYPE_DEBUG, "Notifications removed: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __93__MSUserNotificationCenterAnalyticsLogger_notificationWithoutSummaryPostedForNotificationID___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F8E000, v2, v3, "Notification without summary added: %{public}@, duration: %f", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __90__MSUserNotificationCenterAnalyticsLogger_notificationWithSummaryPostedForNotificationID___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F8E000, v2, v3, "Notification with summary added: %{public}@, duration: %f", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __87__MSUserNotificationCenterAnalyticsLogger_notificationSummaryUpdatedForNotificationID___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_257F8E000, v2, v3, "Notification with summary updated: %{public}@, duration: %f", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end