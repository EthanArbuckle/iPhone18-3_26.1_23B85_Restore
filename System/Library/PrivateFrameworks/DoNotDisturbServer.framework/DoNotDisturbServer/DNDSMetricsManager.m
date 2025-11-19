@interface DNDSMetricsManager
- (DNDSMetricsManager)init;
- (id)_dateForYesterday;
- (id)_dateFormatter;
- (id)_metricsDayStringForDate:(id)a3;
- (id)_metricsMonthStringForDate:(id)a3;
- (id)_metricsWeekStringForDate:(id)a3;
- (id)_startOfLastMonth;
- (id)_startOfLastWeek;
- (id)_startOfMonthWithDate:(id)a3;
- (id)_startOfWeekWithDate:(id)a3;
- (void)_aggregateMetricsWithEnabled:(BOOL)a3 manuallyEnabled:(BOOL)a4 numberOfNewSessions:(int)a5 numberOfNewManualSessions:(int)a6 controlCenterPhone:(BOOL)a7 controlCenterWatch:(BOOL)a8 type:(id)a9 mode:(id)a10 dayOfWeek:(id)a11;
- (void)_sendDailyHeartbeatIfNeeded;
- (void)_sendMonthlyHeartbeatIfNeeded;
- (void)_sendWeeklyHeartbeatIfNeeded;
- (void)_writeMetricsToStore:(id)a3;
- (void)assertionTaken:(id)a3 withClientDetails:(id)a4 lockState:(unint64_t)a5;
- (void)sendMetricsHeartbeatsIfNeeded;
@end

@implementation DNDSMetricsManager

- (void)sendMetricsHeartbeatsIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DNDSMetricsManager_sendMetricsHeartbeatsIfNeeded__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __51__DNDSMetricsManager_sendMetricsHeartbeatsIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendDailyHeartbeatIfNeeded];
  [*(a1 + 32) _sendWeeklyHeartbeatIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _sendMonthlyHeartbeatIfNeeded];
}

- (void)_sendDailyHeartbeatIfNeeded
{
  v3 = [(DNDSMetricsRecord *)self->_metricsRecord lastDailyHeartbeat];
  v4 = [(DNDSMetricsManager *)self _calendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 startOfDayForDate:v5];
  v7 = [v3 compare:v6];

  if (v7 == -1)
  {
    v8 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, "Sending daily metrics heartbeat", buf, 2u);
    }

    v9 = [(DNDSMetricsManager *)self _dateForYesterday];
    v10 = [(DNDSMetricsManager *)self _metricsDayStringForDate:v9];
    v11 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v12 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByDay];
    v13 = [v12 objectForKey:v10];
    v14 = [DNDSDailyHeartbeatMetricsRecord newWithDictionaryRepresentation:v13 context:v11];

    if (v14)
    {
      v22 = v14;
      AnalyticsSendEventLazy();
    }

    metricsRecord = self->_metricsRecord;
    v16 = [MEMORY[0x277CBEAA8] date];
    [(DNDSMutableMetricsRecord *)metricsRecord setLastDailyHeartbeat:v16];

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = [MEMORY[0x277CBEAA8] date];
    v19 = [(DNDSMetricsManager *)self _metricsDayStringForDate:v18];

    v20 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByDay];
    v21 = [v20 objectForKey:v19];

    if (v21)
    {
      [v17 setValue:v21 forKey:v19];
    }

    [(DNDSMutableMetricsRecord *)self->_metricsRecord setMetricsByDay:v17];
    [(DNDSMetricsManager *)self _writeMetricsToStore:self->_metricsRecord];
  }
}

- (void)_sendWeeklyHeartbeatIfNeeded
{
  v3 = [(DNDSMetricsRecord *)self->_metricsRecord lastWeeklyHeartbeat];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(DNDSMetricsManager *)self _startOfWeekWithDate:v4];
  v6 = [v3 compare:v5];

  if (v6 == -1)
  {
    v7 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Sending weekly metrics heartbeat", buf, 2u);
    }

    v8 = [(DNDSMetricsManager *)self _startOfLastWeek];
    v9 = [(DNDSMetricsManager *)self _metricsWeekStringForDate:v8];
    v10 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v11 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByWeek];
    v12 = [v11 objectForKey:v9];
    v13 = [(DNDSHeartbeatMetricsRecord *)DNDSWeeklyHeartbeatMetricsRecord newWithDictionaryRepresentation:v12 context:v10];

    if (v13)
    {
      v21 = v13;
      AnalyticsSendEventLazy();
    }

    metricsRecord = self->_metricsRecord;
    v15 = [MEMORY[0x277CBEAA8] date];
    [(DNDSMutableMetricsRecord *)metricsRecord setLastWeeklyHeartbeat:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [(DNDSMetricsManager *)self _metricsWeekStringForDate:v17];

    v19 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByWeek];
    v20 = [v19 objectForKey:v18];

    if (v20)
    {
      [v16 setValue:v20 forKey:v18];
    }

    [(DNDSMutableMetricsRecord *)self->_metricsRecord setMetricsByWeek:v16];
    [(DNDSMetricsManager *)self _writeMetricsToStore:self->_metricsRecord];
  }
}

- (void)_sendMonthlyHeartbeatIfNeeded
{
  v3 = [(DNDSMetricsRecord *)self->_metricsRecord lastMonthlyHeartbeat];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(DNDSMetricsManager *)self _startOfMonthWithDate:v4];
  v6 = [v3 compare:v5];

  if (v6 == -1)
  {
    v7 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Sending monthly metrics heartbeat", buf, 2u);
    }

    v8 = [(DNDSMetricsManager *)self _startOfLastMonth];
    v9 = [(DNDSMetricsManager *)self _metricsMonthStringForDate:v8];
    v10 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
    v11 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByMonth];
    v12 = [v11 objectForKey:v9];
    v13 = [(DNDSHeartbeatMetricsRecord *)DNDSMonthlyHeartbeatMetricsRecord newWithDictionaryRepresentation:v12 context:v10];

    if (v13)
    {
      v21 = v13;
      AnalyticsSendEventLazy();
    }

    metricsRecord = self->_metricsRecord;
    v15 = [MEMORY[0x277CBEAA8] date];
    [(DNDSMutableMetricsRecord *)metricsRecord setLastMonthlyHeartbeat:v15];

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [(DNDSMetricsManager *)self _metricsMonthStringForDate:v17];

    v19 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByMonth];
    v20 = [v19 objectForKey:v18];

    if (v20)
    {
      [v16 setValue:v20 forKey:v18];
    }

    [(DNDSMutableMetricsRecord *)self->_metricsRecord setMetricsByMonth:v16];
    [(DNDSMetricsManager *)self _writeMetricsToStore:self->_metricsRecord];
  }
}

- (DNDSMetricsManager)init
{
  v19.receiver = self;
  v19.super_class = DNDSMetricsManager;
  v2 = [(DNDSMetricsManager *)&v19 init];
  if (v2)
  {
    v3 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.donotdisturb.server.MetricsManager"];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x277CBEBC0] dnds_metricsBackingStoreFileURL];
    v6 = [DNDSMetricsRecord backingStoreWithFileURL:v5];
    metricsBackingStore = v2->_metricsBackingStore;
    v2->_metricsBackingStore = v6;

    v8 = [(DNDSBackingStore *)v2->_metricsBackingStore readRecordWithError:0];
    v9 = [v8 mutableCopy];
    metricsRecord = v2->_metricsRecord;
    v2->_metricsRecord = v9;

    if (!v2->_metricsRecord)
    {
      v11 = objc_alloc_init(DNDSMutableMetricsRecord);
      v12 = v2->_metricsRecord;
      v2->_metricsRecord = v11;
    }

    v13 = objc_alloc(MEMORY[0x277CBEA80]);
    v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v2->_calendar;
    v2->_calendar = v14;

    v16 = v2->_calendar;
    v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSCalendar *)v16 setTimeZone:v17];
  }

  return v2;
}

- (void)assertionTaken:(id)a3 withClientDetails:(id)a4 lockState:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__DNDSMetricsManager_assertionTaken_withClientDetails_lockState___block_invoke;
  v13[3] = &unk_278F8AA28;
  v14 = v9;
  v15 = v8;
  v16 = self;
  v17 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, v13);
}

void __65__DNDSMetricsManager_assertionTaken_withClientDetails_lockState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isUserInteractionClient];
  v3 = [*(a1 + 40) details];
  v25 = [v3 modeIdentifier];

  v4 = [*(a1 + 40) details];
  v5 = [v4 identifier];

  v6 = [*(a1 + 40) source];
  v7 = [v6 clientIdentifier];

  v24 = [v7 isEqualToString:@"com.apple.donotdisturb.control-center.module"];
  v23 = [v7 isEqualToString:@"com.apple.private.Carousel.control-center.DND.state"];
  v8 = [*(a1 + 40) details];
  v9 = [v8 lifetime];

  objc_opt_class();
  v26 = v9;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 scheduleIdentifier];
  }

  else
  {
    v10 = @"none";
  }

  v11 = [*(a1 + 48) _calendar];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v11 component:32 fromDate:v12];

  v13 = MEMORY[0x277CCABB0];
  v14 = [*(a1 + 48) _calendar];
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v13 numberWithInteger:{objc_msgSend(v14, "component:fromDate:", 512, v15)}];

  v17 = DNDSLogMetrics;
  if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v17, OS_LOG_TYPE_DEFAULT, "Sending assertion taken event", buf, 2u);
  }

  v27 = v7;
  v28 = v10;
  v30 = *(a1 + 56);
  v29 = v16;
  v18 = v16;
  v19 = v10;
  v20 = v7;
  v21 = v5;
  v22 = v25;
  AnalyticsSendEventLazy();
  [*(a1 + 48) _aggregateMetricsWithEnabled:1 manuallyEnabled:v2 numberOfNewSessions:1 numberOfNewManualSessions:v2 controlCenterPhone:v24 controlCenterWatch:v23 type:v21 mode:v22 dayOfWeek:v18];
  [*(a1 + 48) sendMetricsHeartbeatsIfNeeded];
}

id __65__DNDSMetricsManager_assertionTaken_withClientDetails_lockState___block_invoke_315(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v13[0] = @"manual";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
  v14 = v2;
  v15 = *(a1 + 32);
  v13[1] = @"mode";
  v13[2] = @"type";
  v16 = *(a1 + 48);
  v13[3] = @"source";
  v13[4] = @"controlCenterPhone";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 89)];
  v17 = v3;
  v13[5] = @"controlCenterWatch";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 90)];
  v18 = v4;
  v13[6] = @"schedule";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 91)];
  v6 = *(a1 + 56);
  v19 = v5;
  v20 = v6;
  v13[7] = @"scheduleIdentifier";
  v13[8] = @"hour";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v21 = v7;
  v13[9] = @"lockState";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
  v9 = *(a1 + 64);
  v22 = v8;
  v23 = v9;
  v13[10] = @"weekday";
  v13[11] = @"version";
  v24 = &unk_285C534C0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:v13 count:12];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_aggregateMetricsWithEnabled:(BOOL)a3 manuallyEnabled:(BOOL)a4 numberOfNewSessions:(int)a5 numberOfNewManualSessions:(int)a6 controlCenterPhone:(BOOL)a7 controlCenterWatch:(BOOL)a8 type:(id)a9 mode:(id)a10 dayOfWeek:(id)a11
{
  v70 = a8;
  v67 = a7;
  v62 = a3;
  v63 = a4;
  v13 = a9;
  v14 = a10;
  v81 = a11;
  v15 = DNDSLogMetrics;
  if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Updating aggregated metrics", buf, 2u);
  }

  v64 = [v13 isEqualToString:@"com.apple.donotdisturb.kit.lifetime.one-hour"];
  v66 = [v13 isEqualToString:@"com.apple.donotdisturb.kit.lifetime.evening"];
  v68 = [v13 isEqualToString:@"com.apple.donotdisturb.kit.lifetime.morning"];
  v69 = [v13 isEqualToString:@"com.apple.donotdisturb.kit.lifetime.location"];
  v71 = [v13 isEqualToString:@"com.apple.donotdisturb.kit.lifetime.event"];
  v78 = [v14 isEqualToString:@"com.apple.donotdisturb.mode.driving"];
  v79 = v14;
  v74 = [v14 isEqualToString:*MEMORY[0x277D622D0]];
  v16 = [[DNDSBackingStoreDictionaryContext alloc] initWithDestination:1 partitionType:1 redactSensitiveData:0 contactProvider:0 applicationIdentifierMapper:0];
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [(DNDSMetricsManager *)self _metricsDayStringForDate:v17];

  v77 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByDay];
  v80 = v18;
  v19 = [v77 valueForKey:v18];
  v20 = [DNDSDailyHeartbeatMetricsRecord newWithDictionaryRepresentation:v19 context:v16];
  v21 = [v20 mutableCopy];

  v22 = v21;
  if (!v21)
  {
    v22 = objc_alloc_init(DNDSMutableDailyHeartbeatMetricsRecord);
  }

  v23 = [MEMORY[0x277CBEAA8] date];
  v24 = [(DNDSMetricsManager *)self _metricsWeekStringForDate:v23];

  v75 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByWeek];
  v76 = v24;
  v25 = [v75 valueForKey:v24];
  v26 = [(DNDSHeartbeatMetricsRecord *)DNDSWeeklyHeartbeatMetricsRecord newWithDictionaryRepresentation:v25 context:v16];
  v27 = [v26 mutableCopy];

  if (!v27)
  {
    v27 = objc_alloc_init(DNDSMutableWeeklyHeartbeatMetricsRecord);
  }

  v28 = [MEMORY[0x277CBEAA8] date];
  v29 = [(DNDSMetricsManager *)self _metricsMonthStringForDate:v28];

  v72 = [(DNDSMetricsRecord *)self->_metricsRecord metricsByMonth];
  v73 = v29;
  v30 = [v72 valueForKey:v29];
  v31 = [(DNDSHeartbeatMetricsRecord *)DNDSMonthlyHeartbeatMetricsRecord newWithDictionaryRepresentation:v30 context:v16];
  v32 = [v31 mutableCopy];

  if (!v32)
  {
    v32 = objc_alloc_init(DNDSMutableMonthlyHeartbeatMetricsRecord);
  }

  v33 = self;
  if (v62)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabled:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabled:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabled:1];
  }

  v34 = v16;
  if (v63)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setManuallyEnabled:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setManuallyEnabled:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setManuallyEnabled:1];
  }

  v35 = MEMORY[0x277CCABB0];
  v36 = [(DNDSHeartbeatMetricsRecord *)v22 numberOfSessions];
  v37 = [v35 numberWithInt:{objc_msgSend(v36, "intValue") + a5}];
  [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setNumberOfSessions:v37];

  v38 = MEMORY[0x277CCABB0];
  v39 = [(DNDSHeartbeatMetricsRecord *)v27 numberOfSessions];
  v40 = [v38 numberWithInt:{objc_msgSend(v39, "intValue") + a5}];
  [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setNumberOfSessions:v40];

  v41 = MEMORY[0x277CCABB0];
  v42 = [(DNDSHeartbeatMetricsRecord *)v32 numberOfSessions];
  v43 = [v41 numberWithInt:{objc_msgSend(v42, "intValue") + a5}];
  [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setNumberOfSessions:v43];

  v44 = MEMORY[0x277CCABB0];
  v45 = [(DNDSHeartbeatMetricsRecord *)v22 numberOfManualSessions];
  v46 = [v44 numberWithInt:{objc_msgSend(v45, "intValue") + a6}];
  [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setNumberOfManualSessions:v46];

  v47 = MEMORY[0x277CCABB0];
  v48 = [(DNDSHeartbeatMetricsRecord *)v27 numberOfManualSessions];
  v49 = [v47 numberWithInt:{objc_msgSend(v48, "intValue") + a6}];
  [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setNumberOfManualSessions:v49];

  v50 = MEMORY[0x277CCABB0];
  v51 = [(DNDSHeartbeatMetricsRecord *)v32 numberOfManualSessions];
  v52 = [v50 numberWithInt:{objc_msgSend(v51, "intValue") + a6}];
  [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setNumberOfManualSessions:v52];

  if (v67)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledFromControlCenterPhone:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledFromControlCenterPhone:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledFromControlCenterPhone:1];
  }

  if (v70)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledFromControlCenterWatch:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledFromControlCenterWatch:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledFromControlCenterWatch:1];
  }

  if (v64)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledForOneHour:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledForOneHour:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledForOneHour:1];
  }

  if (v66)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledUntilEvening:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledUntilEvening:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledUntilEvening:1];
  }

  if (v68)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledUntilMorning:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledUntilMorning:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledUntilMorning:1];
  }

  if (v69)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledAtLocation:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledAtLocation:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledAtLocation:1];
  }

  if (v71)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledDuringEvent:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledDuringEvent:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledDuringEvent:1];
  }

  if (v78)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledDrivingMode:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledDrivingMode:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledDrivingMode:1];
  }

  if (v74)
  {
    [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setEnabledSleepMode:1];
    [(DNDSMutableWeeklyHeartbeatMetricsRecord *)v27 setEnabledSleepMode:1];
    [(DNDSMutableMonthlyHeartbeatMetricsRecord *)v32 setEnabledSleepMode:1];
  }

  [(DNDSMutableDailyHeartbeatMetricsRecord *)v22 setDayOfWeek:v81];
  v53 = [(DNDSMetricsRecord *)v33->_metricsRecord metricsByDay];
  v54 = [v53 mutableCopy];

  v55 = [(DNDSDailyHeartbeatMetricsRecord *)v22 dictionaryRepresentationWithContext:v16];
  [v54 setValue:v55 forKey:v80];

  [(DNDSMutableMetricsRecord *)v33->_metricsRecord setMetricsByDay:v54];
  v56 = [(DNDSMetricsRecord *)v33->_metricsRecord metricsByWeek];
  v57 = [v56 mutableCopy];

  v58 = [(DNDSHeartbeatMetricsRecord *)v27 dictionaryRepresentationWithContext:v16];
  [v57 setValue:v58 forKey:v76];

  [(DNDSMutableMetricsRecord *)v33->_metricsRecord setMetricsByWeek:v57];
  v59 = [(DNDSMetricsRecord *)v33->_metricsRecord metricsByMonth];
  v60 = [v59 mutableCopy];

  v61 = [(DNDSHeartbeatMetricsRecord *)v32 dictionaryRepresentationWithContext:v34];
  [v60 setValue:v61 forKey:v73];

  [(DNDSMutableMetricsRecord *)v33->_metricsRecord setMetricsByMonth:v60];
  [(DNDSMetricsManager *)v33 _writeMetricsToStore:v33->_metricsRecord];
}

id __49__DNDSMetricsManager__sendDailyHeartbeatIfNeeded__block_invoke(uint64_t a1)
{
  v20[15] = *MEMORY[0x277D85DE8];
  v19[0] = @"enabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabled")}];
  v20[0] = v18;
  v19[1] = @"manuallyEnabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "manuallyEnabled")}];
  v20[1] = v17;
  v19[2] = @"numberOfSessions";
  v16 = [*(a1 + 32) numberOfSessions];
  v20[2] = v16;
  v19[3] = @"numberOfManualSessions";
  v15 = [*(a1 + 32) numberOfManualSessions];
  v20[3] = v15;
  v19[4] = @"enabledFromControlCenterPhone";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterPhone")}];
  v20[4] = v14;
  v19[5] = @"enabledFromControlCenterWatch";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterWatch")}];
  v20[5] = v2;
  v19[6] = @"enabledForOneHour";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledForOneHour")}];
  v20[6] = v3;
  v19[7] = @"enabledUntilEvening";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilEvening")}];
  v20[7] = v4;
  v19[8] = @"enabledUntilMorning";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilMorning")}];
  v20[8] = v5;
  v19[9] = @"enabledAtLocation";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledAtLocation")}];
  v20[9] = v6;
  v19[10] = @"enabledDuringEvent";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDuringEvent")}];
  v20[10] = v7;
  v19[11] = @"enabledDrivingMode";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDrivingMode")}];
  v20[11] = v8;
  v19[12] = @"enabledSleepMode";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledSleepMode")}];
  v20[12] = v9;
  v19[13] = @"dayOfWeek";
  v10 = [*(a1 + 32) dayOfWeek];
  v19[14] = @"version";
  v20[13] = v10;
  v20[14] = &unk_285C534C0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:15];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __50__DNDSMetricsManager__sendWeeklyHeartbeatIfNeeded__block_invoke(uint64_t a1)
{
  v19[14] = *MEMORY[0x277D85DE8];
  v18[0] = @"enabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabled")}];
  v19[0] = v17;
  v18[1] = @"manuallyEnabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "manuallyEnabled")}];
  v19[1] = v16;
  v18[2] = @"numberOfSessions";
  v15 = [*(a1 + 32) numberOfSessions];
  v19[2] = v15;
  v18[3] = @"numberOfManualSessions";
  v14 = [*(a1 + 32) numberOfManualSessions];
  v19[3] = v14;
  v18[4] = @"enabledFromControlCenterPhone";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterPhone")}];
  v19[4] = v2;
  v18[5] = @"enabledFromControlCenterWatch";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterWatch")}];
  v19[5] = v3;
  v18[6] = @"enabledForOneHour";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledForOneHour")}];
  v19[6] = v4;
  v18[7] = @"enabledUntilEvening";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilEvening")}];
  v19[7] = v5;
  v18[8] = @"enabledUntilMorning";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilMorning")}];
  v19[8] = v6;
  v18[9] = @"enabledAtLocation";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledAtLocation")}];
  v19[9] = v7;
  v18[10] = @"enabledDuringEvent";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDuringEvent")}];
  v19[10] = v8;
  v18[11] = @"enabledDrivingMode";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDrivingMode")}];
  v19[11] = v9;
  v18[12] = @"enabledSleepMode";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledSleepMode")}];
  v18[13] = @"version";
  v19[12] = v10;
  v19[13] = &unk_285C534C0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __51__DNDSMetricsManager__sendMonthlyHeartbeatIfNeeded__block_invoke(uint64_t a1)
{
  v19[14] = *MEMORY[0x277D85DE8];
  v18[0] = @"enabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabled")}];
  v19[0] = v17;
  v18[1] = @"manuallyEnabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "manuallyEnabled")}];
  v19[1] = v16;
  v18[2] = @"numberOfSessions";
  v15 = [*(a1 + 32) numberOfSessions];
  v19[2] = v15;
  v18[3] = @"numberOfManualSessions";
  v14 = [*(a1 + 32) numberOfManualSessions];
  v19[3] = v14;
  v18[4] = @"enabledFromControlCenterPhone";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterPhone")}];
  v19[4] = v2;
  v18[5] = @"enabledFromControlCenterWatch";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledFromControlCenterWatch")}];
  v19[5] = v3;
  v18[6] = @"enabledForOneHour";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledForOneHour")}];
  v19[6] = v4;
  v18[7] = @"enabledUntilEvening";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilEvening")}];
  v19[7] = v5;
  v18[8] = @"enabledUntilMorning";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledUntilMorning")}];
  v19[8] = v6;
  v18[9] = @"enabledAtLocation";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledAtLocation")}];
  v19[9] = v7;
  v18[10] = @"enabledDuringEvent";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDuringEvent")}];
  v19[10] = v8;
  v18[11] = @"enabledDrivingMode";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledDrivingMode")}];
  v19[11] = v9;
  v18[12] = @"enabledSleepMode";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "enabledSleepMode")}];
  v18[13] = @"version";
  v19[12] = v10;
  v19[13] = &unk_285C534C0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_writeMetricsToStore:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  metricsBackingStore = self->_metricsBackingStore;
  v13 = 0;
  v4 = [(DNDSBackingStore *)metricsBackingStore writeRecord:a3 error:&v13];
  v5 = v13;
  if (v4)
  {
    if (v4 == 1)
    {
      v10 = DNDSLogMetrics;
      if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v5;
        v7 = "Metrics Failed to write store, but error can be ignored; error=%{public}@";
        v8 = v10;
        v9 = 12;
        goto LABEL_8;
      }
    }

    else if (v4 == 2)
    {
      v6 = DNDSLogMetrics;
      if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Metrics Wrote out store to file";
        v8 = v6;
        v9 = 2;
LABEL_8:
        _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    v11 = DNDSLogMetrics;
    if (os_log_type_enabled(DNDSLogMetrics, OS_LOG_TYPE_ERROR))
    {
      [(DNDSMetricsManager *)v5 _writeMetricsToStore:v11];
    }

    _DNDSRequestRadar(@"Failed to write store", v5, 0, @"/Library/Caches/com.apple.xbs/Sources/DoNotDisturbServer/DoNotDisturbServer/Metrics/DNDSMetricsManager.m", 434);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_metricsDayStringForDate:(id)a3
{
  v4 = a3;
  v5 = [(DNDSMetricsManager *)self _dateFormatter];
  [v5 setDateStyle:3];
  [v5 setTimeStyle:0];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)_metricsWeekStringForDate:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(DNDSMetricsManager *)self _startOfWeekWithDate:v4];
  v6 = [(DNDSMetricsManager *)self _metricsDayStringForDate:v5];

  return v6;
}

- (id)_metricsMonthStringForDate:(id)a3
{
  v4 = a3;
  v5 = [(DNDSMetricsManager *)self _dateFormatter];
  [v5 setLocalizedDateFormatFromTemplate:@"MMMMYYYY"];
  v6 = [v5 stringFromDate:v4];

  return v6;
}

- (id)_dateForYesterday
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setDay:-1];
  v4 = [(DNDSMetricsManager *)self _calendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 dateByAddingComponents:v3 toDate:v5 options:1];

  return v6;
}

- (id)_startOfWeekWithDate:(id)a3
{
  v4 = a3;
  v5 = [(DNDSMetricsManager *)self _calendar];
  v6 = [v5 components:540 fromDate:v4];

  [v6 setDay:{objc_msgSend(v6, "day") - objc_msgSend(v6, "weekday") + 1}];
  v7 = [(DNDSMetricsManager *)self _calendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

- (id)_startOfLastWeek
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(DNDSMetricsManager *)self _startOfWeekWithDate:v3];

  v5 = [(DNDSMetricsManager *)self _calendar];
  v6 = [v5 components:540 fromDate:v4];

  [v6 setDay:{objc_msgSend(v6, "day") - 7}];
  v7 = [(DNDSMetricsManager *)self _calendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

- (id)_startOfMonthWithDate:(id)a3
{
  v4 = a3;
  v5 = [(DNDSMetricsManager *)self _calendar];
  v6 = [v5 components:12 fromDate:v4];

  v7 = [(DNDSMetricsManager *)self _calendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

- (id)_startOfLastMonth
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(DNDSMetricsManager *)self _startOfMonthWithDate:v3];

  v5 = [(DNDSMetricsManager *)self _calendar];
  v6 = [v5 components:12 fromDate:v4];

  [v6 setMonth:{objc_msgSend(v6, "month") - 1}];
  v7 = [(DNDSMetricsManager *)self _calendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

- (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  return v2;
}

- (void)_writeMetricsToStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24912E000, a2, OS_LOG_TYPE_ERROR, "Metrics Failed to write store, will request radar; error=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end