@interface HDHRBloodPressureJournalNotificationManager
+ (id)_stringFromNotificationReason:(int64_t)a3;
- (BOOL)_isDueEventExpired:(id)a3 fromDate:(id)a4;
- (BOOL)_isEventOnHold:(id)a3;
- (BOOL)_isJournal:(id)a3 inNoticationPeriodFor:(id)a4 calendar:(id)a5;
- (BOOL)_notificationSchedulingIsEnabled;
- (BOOL)_notificationsEnabled;
- (BOOL)_scheduleNotificationsWithStartDate:(id)a3 error:(id *)a4;
- (BOOL)_scheduleNotificationsWithStartDate:(id)a3 schedulingUUID:(id)a4 error:(id *)a5;
- (BOOL)_scheduleRestorableAlarmEventsWith:(id)a3 forJournal:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7;
- (BOOL)scheduleNotificationsWithReason:(int64_t)a3 error:(id *)a4;
- (BOOL)snoozeBloodPressureJournalNotificationWithIdentifier:(id)a3 journalType:(int64_t)a4 userInfo:(id)a5 onDate:(id)a6 error:(id *)a7;
- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)a3;
- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)a3 operation:(id)a4;
- (id)_alarm:(id)a3 dueEventsToHandleFrom:(id)a4 date:(id)a5;
- (id)_alarmTimeForDate:(id)a3 withScheduleTimeInterval:(id)a4 calendar:(id)a5;
- (id)_bloodPressureSampleFrom:(id)a3 error:(id *)a4;
- (id)_nextDayFor:(id)a3 calendar:(id)a4;
- (id)_notificationInfoFor:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7;
- (id)_notificationInfoForLearnHypertensionRiskJournal:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7;
- (id)_notificationInfoForMonitorHypertensionJournal:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7;
- (unint64_t)removeDeliveredNotificationsForSamples:(id)a3 journal:(id)a4;
- (void)_alarm:(id)a3 confirmDeliveryByRemovingEvent:(id)a4;
- (void)_alarm:(id)a3 confirmDeliveryByRemovingEvents:(id)a4;
- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4;
- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4 date:(id)a5 handledEventsHandler:(id)a6;
- (void)_queue_alarm:(id)a3 didReceiveExpiredEvents:(id)a4;
- (void)_removeAllExpiredEvents;
- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6;
@end

@implementation HDHRBloodPressureJournalNotificationManager

- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277D10800];
  v5 = a3;
  v6 = [[v4 alloc] initWithProfile:v5 debugIdentifier:@"HDHRBloodPressureJournalNotificationManager" delegate:self];
  v7 = [(HDHRBloodPressureJournalNotificationManager *)self initWithProfile:v5 operation:v6];

  return v7;
}

- (HDHRBloodPressureJournalNotificationManager)initWithProfile:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = HDHRBloodPressureJournalNotificationManager;
  v8 = [(HDHRBloodPressureJournalNotificationManager *)&v44 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_operation, a4);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = objc_alloc(MEMORY[0x277D10838]);
    v13 = [v6 healthDaemon];
    v14 = [v13 primaryProfile];
    v15 = [v12 initWithProfile:v14 clientIdentifier:@"BloodPressureJournalNotificationAlarmIdentifier" eventHandlerQueue:v9->_queue];
    restorableAlarm = v9->_restorableAlarm;
    v9->_restorableAlarm = v15;

    v17 = objc_alloc(MEMORY[0x277D10838]);
    v18 = [v6 healthDaemon];
    v19 = [v18 primaryProfile];
    v20 = [v17 initWithProfile:v19 clientIdentifier:@"BloodPressureJournalNotificationSnoozeAlarmIdentifier" eventHandlerQueue:v9->_queue];
    snoozeRestorableAlarm = v9->_snoozeRestorableAlarm;
    v9->_snoozeRestorableAlarm = v20;

    objc_initWeak(&location, v9);
    v22 = v9->_restorableAlarm;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke;
    v41[3] = &unk_278660D20;
    objc_copyWeak(&v42, &location);
    [(HDRestorableAlarm *)v22 beginReceivingEventsWithHandler:v41];
    v23 = v9->_snoozeRestorableAlarm;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_2;
    v39[3] = &unk_278660D20;
    objc_copyWeak(&v40, &location);
    [(HDRestorableAlarm *)v23 beginReceivingEventsWithHandler:v39];
    v24 = objc_alloc(MEMORY[0x277D10838]);
    v25 = [v6 healthDaemon];
    v26 = [v25 primaryProfile];
    v27 = [v24 initWithProfile:v26 clientIdentifier:@"BloodPressureJournalNotificationExpirationAlarmIdentifier" eventHandlerQueue:v9->_queue];
    expirationRestorableAlarm = v9->_expirationRestorableAlarm;
    v9->_expirationRestorableAlarm = v27;

    v29 = v9->_expirationRestorableAlarm;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_3;
    v37[3] = &unk_278660D20;
    objc_copyWeak(&v38, &location);
    [(HDRestorableAlarm *)v29 beginReceivingEventsWithHandler:v37];
    v30 = objc_alloc(MEMORY[0x277CCCFE8]);
    v31 = HKLogBloodPressureJournal();
    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    v33 = [v30 initWithLoggingCategory:v31 healthDataSource:WeakRetained];

    v34 = [objc_alloc(MEMORY[0x277D12F88]) initWithEventSubmissionManager:v33];
    notificationAnalyticUtilities = v9->_notificationAnalyticUtilities;
    v9->_notificationAnalyticUtilities = v34;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

void __73__HDHRBloodPressureJournalNotificationManager_initWithProfile_operation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveExpiredEvents:v5];
}

+ (id)_stringFromNotificationReason:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278661110[a3];
  }
}

- (BOOL)scheduleNotificationsWithReason:(int64_t)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v7 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_opt_class() _stringFromNotificationReason:a3];
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [scheduleNotificationsWithReason called with reason: %{public}@", &v12, 0x16u);
  }

  if (a3 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  result = [(HDProtectedDataOperation *)self->_operation requestWorkWithPriority:v9 error:a4];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performWorkForOperation:(id)a3 profile:(id)a4 databaseAccessibilityAssertion:(id)a5 completion:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v7 = MEMORY[0x277CCAD78];
    v8 = a6;
    v9 = [v7 UUID];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v11 setDateFormat:@"yyyy-MM-dd HH:mm"];
    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 UUIDString];
      v14 = [v11 stringFromDate:v10];
      *buf = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] performOperation started - notificationStartDate: %{public}@", buf, 0x20u);
    }

    v17 = 0;
    [(HDHRBloodPressureJournalNotificationManager *)self _scheduleNotificationsWithStartDate:v10 schedulingUUID:v9 error:&v17];
    v8[2](v8);
  }

  else
  {
    v9 = a6;
    _HKInitializeLogging();
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_229486000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ Unable to aquire database assertion]", buf, 0xCu);
    }

    v9[2](v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_scheduleNotificationsWithStartDate:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 UUID];
  LOBYTE(a4) = [(HDHRBloodPressureJournalNotificationManager *)self _scheduleNotificationsWithStartDate:v7 schedulingUUID:v8 error:a4];

  return a4;
}

- (BOOL)_scheduleNotificationsWithStartDate:(id)a3 schedulingUUID:(id)a4 error:(id *)a5
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm"];
  _HKInitializeLogging();
  v12 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 UUIDString];
    v14 = [v11 stringFromDate:v8];
    *buf = 138543874;
    v81 = self;
    v82 = 2114;
    v83 = v13;
    v84 = 2114;
    v85 = v14;
    _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: started - date: %{public}@", buf, 0x20u);
  }

  if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [WeakRetained heartHealthProfileExtension];
    v17 = [v16 bloodPressureJournalManager];

    v79 = 0;
    v18 = [v17 latestActiveBloodPressureJournalWithError:&v79];
    v19 = v79;
    if (v19)
    {
      _HKInitializeLogging();
      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [v9 UUIDString];
        v52 = v75 = a5;
        *buf = 138543874;
        v81 = self;
        v82 = 2114;
        v83 = v52;
        v84 = 2114;
        v85 = v19;
        _os_log_error_impl(&dword_229486000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to fetch latest active journal with error: %{public}@", buf, 0x20u);

        a5 = v75;
      }

      if (a5)
      {
        v21 = v19;
        v22 = a5;
        LOBYTE(a5) = 0;
        *v22 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    else
    {
      v74 = a5;
      _HKInitializeLogging();
      a5 = HKLogBloodPressureJournal();
      v26 = os_log_type_enabled(a5, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v26)
        {
          v64 = [v9 UUIDString];
          v68 = [v18 UUID];
          v27 = [v68 UUIDString];
          v63 = [v18 journalType];
          v62 = [v18 journalState];
          [v18 startDate];
          v28 = v71 = v10;
          v29 = [v11 stringFromDate:v28];
          *buf = 138544642;
          v81 = self;
          v82 = 2114;
          v83 = v64;
          v84 = 2114;
          v85 = v27;
          v86 = 2048;
          v87 = v63;
          v88 = 2048;
          v89 = v62;
          v90 = 2114;
          v91 = v29;
          v30 = v29;
          _os_log_impl(&dword_229486000, a5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Found active journal: UUID=%{public}@, type=%ld, state=%ld, startDate=%{public}@", buf, 0x3Eu);

          v10 = v71;
          v19 = 0;
        }

        if ([(HDHRBloodPressureJournalNotificationManager *)self _isJournal:v18 inNoticationPeriodFor:v8 calendar:v10])
        {
          v77 = 0;
          v31 = [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoFor:v18 startDate:v8 calendar:v10 schedulingUUID:v9 error:&v77];
          v72 = v77;
          if (v72)
          {
            v69 = v31;
            _HKInitializeLogging();
            v32 = HKLogBloodPressureJournal();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [v9 UUIDString];
              v56 = v55 = v18;
              *buf = 138543874;
              v81 = self;
              v82 = 2114;
              v83 = v56;
              v84 = 2114;
              v85 = v72;
              _os_log_error_impl(&dword_229486000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to compute notification info error: %{public}@", buf, 0x20u);

              v18 = v55;
            }

            v33 = v72;
            if (v74)
            {
              v34 = v72;
              LOBYTE(a5) = 0;
              *v74 = v72;
            }

            else
            {
              _HKLogDroppedError();
              LOBYTE(a5) = 0;
            }

            v31 = v69;
          }

          else
          {
            _HKInitializeLogging();
            a5 = HKLogBloodPressureJournal();
            v45 = os_log_type_enabled(a5, OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              if (v45)
              {
                [v9 UUIDString];
                v46 = v65 = v18;
                *buf = 138543874;
                v81 = self;
                v82 = 2114;
                v83 = v46;
                v84 = 2114;
                v85 = v31;
                _os_log_impl(&dword_229486000, a5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Computed notification info successfully: %{public}@", buf, 0x20u);

                v18 = v65;
              }

              v76 = 0;
              LOBYTE(a5) = [(HDHRBloodPressureJournalNotificationManager *)self _scheduleRestorableAlarmEventsWith:v31 forJournal:v18 calendar:v10 schedulingUUID:v9 error:&v76];
              v47 = v76;
              if ((a5 & 1) == 0)
              {
                v67 = v47;
                v70 = v31;
                _HKInitializeLogging();
                v48 = HKLogBloodPressureJournal();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  [v9 UUIDString];
                  v61 = v66 = v18;
                  *buf = 138543874;
                  v81 = self;
                  v82 = 2114;
                  v83 = v61;
                  v84 = 2114;
                  v85 = v67;
                  _os_log_error_impl(&dword_229486000, v48, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to schedule restorable alarms with error: %{public}@", buf, 0x20u);

                  v18 = v66;
                }

                v49 = v67;
                v50 = v49;
                if (v49)
                {
                  if (v74)
                  {
                    v51 = v49;
                    *v74 = v50;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                v47 = v67;
                v31 = v70;
              }
            }

            else
            {
              if (v45)
              {
                [v9 UUIDString];
                v54 = v53 = v18;
                *buf = 138543618;
                v81 = self;
                v82 = 2114;
                v83 = v54;
                _os_log_impl(&dword_229486000, a5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Active Journal is complete (notification info is nil) - returning early", buf, 0x16u);

                v18 = v53;
                v31 = 0;
              }

              LOBYTE(a5) = 1;
            }

            v33 = 0;
          }
        }

        else
        {
          _HKInitializeLogging();
          v42 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            [v9 UUIDString];
            v44 = v43 = v18;
            *buf = 138543618;
            v81 = self;
            v82 = 2114;
            v83 = v44;
            _os_log_impl(&dword_229486000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Active Journal Notification Period is complete - returning early", buf, 0x16u);

            v18 = v43;
          }

          LOBYTE(a5) = 1;
        }
      }

      else
      {
        if (v26)
        {
          v35 = [v9 UUIDString];
          *buf = 138543618;
          v81 = self;
          v82 = 2114;
          v83 = v35;
          _os_log_impl(&dword_229486000, a5, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: No active journal found to schedule notifications - removing alarms", buf, 0x16u);
        }

        restorableAlarm = self->_restorableAlarm;
        v78 = 0;
        LOBYTE(a5) = [(HDRestorableAlarm *)restorableAlarm removeAllEventsWithError:&v78];
        v37 = v78;
        if ((a5 & 1) == 0)
        {
          v73 = v37;
          _HKInitializeLogging();
          v38 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v57 = [v9 UUIDString];
            *buf = 138543874;
            v81 = self;
            v82 = 2114;
            v83 = v57;
            v58 = v57;
            v84 = 2114;
            v85 = v73;
            _os_log_error_impl(&dword_229486000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Failed to remove existing alarm events with error: %{public}@", buf, 0x20u);
          }

          v39 = v73;
          v40 = v39;
          if (v39)
          {
            if (v74)
            {
              v41 = v39;
              *v74 = v40;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v37 = v73;
        }
      }
    }

LABEL_56:
    goto LABEL_57;
  }

  _HKInitializeLogging();
  v23 = HKLogBloodPressureJournal();
  LOBYTE(a5) = 1;
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

  if (v24)
  {
    v17 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = [v9 UUIDString];
      *buf = 138543618;
      v81 = self;
      v82 = 2114;
      v83 = v25;
      _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_INFO, "[%{public}@] [UUID: %{public}@] _scheduleNotificationsWithStartDate: Notification scheduling is not enabled - returning early", buf, 0x16u);
    }

    goto LABEL_56;
  }

LABEL_57:

  v59 = *MEMORY[0x277D85DE8];
  return a5;
}

- (BOOL)_scheduleRestorableAlarmEventsWith:(id)a3 forJournal:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7
{
  v85 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v61 = a6;
  v14 = [v12 measurementsRequiredToCompleteJournal];
  v15 = [v12 journalType];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [v11 wakeupAlarmStartDate];
  v18 = [v12 wakeupTimeInterval];
  v19 = [(HDHRBloodPressureJournalNotificationManager *)self _alarmTimeForDate:v17 withScheduleTimeInterval:v18 calendar:v13];

  v63 = v11;
  v20 = [v11 wakeupAlarmStartDate];
  LODWORD(v18) = [v19 hk_isBeforeDate:v20];

  if (v18)
  {
    v21 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v19 calendar:v13];

    v19 = v21;
  }

  v67 = v14;
  v68 = v16;
  v69 = self;
  v70 = v13;
  v22 = [v11 wakeupAlarmCount];
  v23 = 0x27865E000uLL;
  v24 = 0x27865E000uLL;
  v66 = v12;
  v60 = v22;
  if (v22)
  {
    v25 = -v22;
    do
    {
      contexta = objc_autoreleasePoolPush();
      v26 = [objc_alloc(*(v23 + 2864)) initWithMeasurementIndex:v67 + v25 + 1 measurementCount:? measurementWindowType:?];
      v27 = objc_alloc(*(v24 + 2840));
      [v12 UUID];
      v29 = v28 = v23;
      v30 = [v27 initWithJournalIdentifier:v29 notificationDayIndex:objc_msgSend(v19 journalWindowType:{"hk_dayIndexWithCalendar:", v70), 0}];

      restorableAlarm = v69->_restorableAlarm;
      v32 = [v19 copy];
      [(HDRestorableAlarm *)restorableAlarm bloodPressureJournalAlarmEventWithNotificationIdentifier:v30 journalType:v15 dueDate:v32 isFollowUp:0 measurementInfo:v26];
      v34 = v33 = v15;

      v12 = v66;
      [v68 addObject:v34];
      v35 = [(HDHRBloodPressureJournalNotificationManager *)v69 _nextDayFor:v19 calendar:v70];

      v15 = v33;
      v23 = v28;
      v24 = 0x27865E000;

      objc_autoreleasePoolPop(contexta);
      v19 = v35;
      v36 = __CFADD__(v25++, 1);
    }

    while (!v36);
  }

  else
  {
    v35 = v19;
  }

  v37 = [v63 bedtimeAlarmStartDate];
  v38 = [v12 bedtimeTimeInterval];
  v39 = [(HDHRBloodPressureJournalNotificationManager *)v69 _alarmTimeForDate:v37 withScheduleTimeInterval:v38 calendar:v70];

  v40 = [v63 bedtimeAlarmStartDate];
  LOBYTE(v38) = [v39 hk_isBeforeDate:v40];

  if (v38)
  {
    v41 = [(HDHRBloodPressureJournalNotificationManager *)v69 _nextDayFor:v39 calendar:v70];

    v39 = v41;
  }

  v42 = [v63 bedtimeAlarmCount];
  v59 = v42;
  if (v42)
  {
    v43 = -v42;
    context = v15;
    do
    {
      v44 = objc_autoreleasePoolPush();
      v45 = [HDHRBloodPressureJournalNotificationMeasurementInfo initWithMeasurementIndex:"initWithMeasurementIndex:measurementCount:measurementWindowType:" measurementCount:v67 + v43 + 1 measurementWindowType:?];
      v46 = [HDHRBloodPressureJournalNotificationIdentifier alloc];
      v47 = [v12 UUID];
      v48 = -[HDHRBloodPressureJournalNotificationIdentifier initWithJournalIdentifier:notificationDayIndex:journalWindowType:](v46, "initWithJournalIdentifier:notificationDayIndex:journalWindowType:", v47, [v39 hk_dayIndexWithCalendar:v70], 1);

      v49 = v69->_restorableAlarm;
      v50 = [v39 copy];
      v51 = [(HDRestorableAlarm *)v49 bloodPressureJournalAlarmEventWithNotificationIdentifier:v48 journalType:context dueDate:v50 isFollowUp:0 measurementInfo:v45];

      v12 = v66;
      [v68 addObject:v51];
      v52 = [(HDHRBloodPressureJournalNotificationManager *)v69 _nextDayFor:v39 calendar:v70];

      objc_autoreleasePoolPop(v44);
      v39 = v52;
      v36 = __CFADD__(v43++, 1);
    }

    while (!v36);
  }

  else
  {
    v52 = v39;
  }

  _HKInitializeLogging();
  v53 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v61 UUIDString];
    *buf = 138544898;
    v72 = v69;
    v73 = 2114;
    v74 = v54;
    v75 = 2048;
    v76 = [v68 count];
    v77 = 2048;
    v78 = v60;
    v79 = 2048;
    v80 = v67 - v60 + 1;
    v81 = 2048;
    v82 = v59;
    v83 = 2048;
    v84 = v67 - v59 + 1;
    _os_log_impl(&dword_229486000, v53, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _scheduleRestorableAlarmEventsWith events count:(%lu) [WAKEUP: alarm count:(%lu) starting from index:(%lu)] [BEDTIME: alarm count:(%lu) starting from index:(%lu)]", buf, 0x48u);
  }

  v55 = [(HDRestorableAlarm *)v69->_restorableAlarm replaceAllScheduledEventsWithEvents:v68 error:a7];
  v56 = v55 != 0;

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

- (id)_notificationInfoForMonitorHypertensionJournal:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v49 = [v14 startOfDayForDate:v13];
  v50 = [HDHRBloodPressureJournalNotificationManager _bloodPressureSampleFrom:"_bloodPressureSampleFrom:error:" error:?];
  v16 = 0;
  v17 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v43 = [v15 UUIDString];
      *buf = 138543874;
      v52 = self;
      v53 = 2114;
      v54 = v43;
      v55 = 2114;
      v56 = v16;
      _os_log_error_impl(&dword_229486000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Failed to fetch blood pressure samples with error: %{public}@", buf, 0x20u);
    }

    if (a7)
    {
      v20 = v16;
      v21 = 0;
      *a7 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v21 = 0;
    }
  }

  else
  {
    v48 = v15;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v15 UUIDString];
      v23 = [v50 count];
      v24 = [v17 stringFromDate:v49];
      *buf = 138544130;
      v52 = self;
      v53 = 2114;
      v54 = v22;
      v55 = 2048;
      v56 = v23;
      v15 = v48;
      v57 = 2112;
      v58 = v24;
      _os_log_impl(&dword_229486000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Found %ld blood pressure samples from:%@", buf, 0x2Au);
    }

    v25 = [v12 timeIntervals];
    v26 = [v25 firstObject];
    v27 = [(HDHRBloodPressureJournalNotificationManager *)self _alarmTimeForDate:v13 withScheduleTimeInterval:v26 calendar:v14];

    v47 = v27;
    if (v50 && [v50 count] || (objc_msgSend(v13, "hk_isAfterDate:", v27) & 1) != 0)
    {
      v28 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v49 calendar:v14];
    }

    else
    {
      v28 = v13;
    }

    v29 = v28;
    v30 = [v12 notificationEndDateForIncompleteJournal:v14];
    if (!v30)
    {
      _HKInitializeLogging();
      v31 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalNotificationManager _notificationInfoForMonitorHypertensionJournal:v15 startDate:v31 calendar:? schedulingUUID:? error:?];
      }

      v30 = v29;
    }

    v32 = [v14 startOfDayForDate:v29];
    [v30 timeIntervalSinceDate:v32];
    v34 = (v33 / 86400.0);

    _HKInitializeLogging();
    v35 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [v48 UUIDString];
      v45 = v14;
      v36 = self;
      v38 = v37 = v17;
      [v37 stringFromDate:v29];
      v44 = v46 = v13;
      [v37 stringFromDate:v30];
      v40 = v39 = v34;
      *buf = 138544386;
      v52 = v36;
      v14 = v45;
      v53 = 2114;
      v54 = v38;
      v55 = 2114;
      v56 = v44;
      v57 = 2114;
      v58 = v40;
      v59 = 2048;
      v60 = v39;
      _os_log_impl(&dword_229486000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Notification start date: %{public}@, end date: %{public}@ Calculated %ld remaining notifications", buf, 0x34u);

      v17 = v37;
      v34 = v39;

      v13 = v46;
    }

    v21 = [[HDHRBloodPressureJournalNotificationInfo alloc] initWithWakeupAlarmStartDate:v29 wakeupAlarmCount:v34 bedtimeAlarmStartDate:0 bedtimeAlarmCount:0];
    v15 = v48;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_notificationInfoForLearnHypertensionRiskJournal:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v16 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v16 setTimeZone:v17];

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v15 UUIDString];
    *buf = 138543618;
    v65 = self;
    v66 = 2114;
    v67 = v19;
    _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Computing notification info for LearnHypertensionRisk journal", buf, 0x16u);
  }

  v20 = [v12 startDate];
  v21 = [v14 startOfDayForDate:v20];

  v63 = 0;
  v62 = [(HDHRBloodPressureJournalNotificationManager *)self _bloodPressureSampleFrom:v21 error:&v63];
  v22 = v63;
  _HKInitializeLogging();
  v23 = HKLogBloodPressureJournal();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [v15 UUIDString];
      v56 = v61 = v21;
      *buf = 138543874;
      v65 = self;
      v66 = 2114;
      v67 = v56;
      v68 = 2114;
      v69 = v22;
      _os_log_error_impl(&dword_229486000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Failed to fetch blood pressure samples with error: %{public}@", buf, 0x20u);

      v21 = v61;
    }

    if (a7)
    {
      v25 = v22;
      v26 = 0;
      *a7 = v22;
    }

    else
    {
      _HKLogDroppedError();
      v26 = 0;
    }
  }

  else
  {
    v60 = v21;
    v59 = v16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v15 UUIDString];
      v28 = [v62 count];
      [v16 stringFromDate:v60];
      v29 = v12;
      v31 = v30 = v13;
      *buf = 138544130;
      v65 = self;
      v66 = 2114;
      v67 = v27;
      v68 = 2048;
      v69 = v28;
      v70 = 2112;
      v71 = v31;
      _os_log_impl(&dword_229486000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Found %ld blood pressure samples since journal start of day:%@", buf, 0x2Au);

      v13 = v30;
      v12 = v29;
      v16 = v59;
    }

    v32 = [MEMORY[0x277D12FE8] summaryFromSamples:v62 journal:v12];
    v33 = [v32 isComplete];
    _HKInitializeLogging();
    v34 = HKLogBloodPressureJournal();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      if (v35)
      {
        v36 = [v15 UUIDString];
        *buf = 138543618;
        v65 = self;
        v66 = 2114;
        v67 = v36;
        _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Journal is complete - no notifications needed", buf, 0x16u);
      }

      v26 = 0;
    }

    else
    {
      v58 = v12;
      if (v35)
      {
        v37 = [v15 UUIDString];
        v38 = v13;
        v39 = [v32 wakeUpCount];
        v40 = [v32 bedTimeCount];
        v41 = [v58 measurementsRequiredToCompleteJournal];
        *buf = 138544386;
        v65 = self;
        v66 = 2114;
        v67 = v37;
        v68 = 2048;
        v69 = v39;
        v13 = v38;
        v70 = 2048;
        v71 = v40;
        v72 = 2048;
        v73 = v41;
        _os_log_impl(&dword_229486000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoForLearnHypertensionRiskJournal: Journal not complete - wakeup count: %ld, bedtime count: %ld, required: %ld", buf, 0x34u);
      }

      v42 = [v13 hk_dayIndexWithCalendar:v14];
      v43 = [v32 hasWakeupSamplesForDayIndex:v42];
      v57 = v15;
      v44 = v14;
      v45 = v13;
      v46 = [v32 hasBedtimeSamplesForDayIndex:v42];
      v47 = [v44 startOfDayForDate:v45];
      v34 = [(HDHRBloodPressureJournalNotificationManager *)self _nextDayFor:v47 calendar:v44];

      if (v43)
      {
        v48 = v34;
      }

      else
      {
        v48 = v45;
      }

      v49 = v48;
      v12 = v58;
      v50 = [v58 measurementsRequiredToCompleteJournal];
      v51 = v50 - [v32 wakeUpCount];
      if (v46)
      {
        v52 = v34;
      }

      else
      {
        v52 = v45;
      }

      v53 = v52;
      v26 = -[HDHRBloodPressureJournalNotificationInfo initWithWakeupAlarmStartDate:wakeupAlarmCount:bedtimeAlarmStartDate:bedtimeAlarmCount:]([HDHRBloodPressureJournalNotificationInfo alloc], "initWithWakeupAlarmStartDate:wakeupAlarmCount:bedtimeAlarmStartDate:bedtimeAlarmCount:", v49, v51, v53, [v58 measurementsRequiredToCompleteJournal] - objc_msgSend(v32, "bedTimeCount"));

      v13 = v45;
      v14 = v44;
      v15 = v57;

      v16 = v59;
    }

    v21 = v60;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_notificationInfoFor:(id)a3 startDate:(id)a4 calendar:(id)a5 schedulingUUID:(id)a6 error:(id *)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v16 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v16 setTimeZone:v17];

  _HKInitializeLogging();
  v18 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v15 UUIDString];
    v20 = [v12 journalType];
    [v16 stringFromDate:v13];
    v21 = v25 = a7;
    *buf = 138544130;
    v27 = self;
    v28 = 2114;
    v29 = v19;
    v30 = 2048;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] [UUID: %{public}@] _notificationInfoFor: Computing notification info for journal type: %ld, startDate: %{public}@", buf, 0x2Au);

    a7 = v25;
  }

  if ([v12 journalType] == 1)
  {
    [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoForMonitorHypertensionJournal:v12 startDate:v13 calendar:v14 schedulingUUID:v15 error:a7];
  }

  else
  {
    [(HDHRBloodPressureJournalNotificationManager *)self _notificationInfoForLearnHypertensionRiskJournal:v12 startDate:v13 calendar:v14 schedulingUUID:v15 error:a7];
  }
  v22 = ;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_alarmTimeForDate:(id)a3 withScheduleTimeInterval:(id)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 scheduledTime];
  v10 = [v7 components:28 fromDate:v8];

  [v10 setHour:{objc_msgSend(v9, "hour")}];
  [v10 setMinute:{objc_msgSend(v9, "minute")}];
  v11 = [v7 dateFromComponents:v10];

  return v11;
}

- (id)_nextDayFor:(id)a3 calendar:(id)a4
{
  v5 = MEMORY[0x277CBEAB8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setDay:1];
  v9 = [v6 dateByAddingComponents:v8 toDate:v7 options:2];

  return v9;
}

- (BOOL)_isJournal:(id)a3 inNoticationPeriodFor:(id)a4 calendar:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12 = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v11 setTimeZone:v12];

  _HKInitializeLogging();
  v13 = HKLogBloodPressureJournal();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v8 journalState];
      v27 = [v11 stringFromDate:v9];
      v28 = 138543874;
      v29 = self;
      v30 = 2048;
      v31 = v26;
      v32 = 2114;
      v33 = v27;
      _os_log_debug_impl(&dword_229486000, v15, OS_LOG_TYPE_DEBUG, "[%{public}@] _isJournal:inNoticationPeriodFor: Checking notification period for journal state: %ld, date: %{public}@", &v28, 0x20u);
    }
  }

  if ([v8 journalState] != 1)
  {
    v16 = [v8 notificationEndDateForIncompleteJournal:v10];
    if (v16)
    {
      v17 = [v9 hk_isBeforeDate:v16];
      _HKInitializeLogging();
      v18 = HKLogBloodPressureJournal();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [v11 stringFromDate:v16];
        v22 = v21;
        v23 = @"NO";
        v28 = 138543874;
        v29 = self;
        v30 = 2114;
        if (v17)
        {
          v23 = @"YES";
        }

        v31 = v21;
        v32 = 2114;
        v33 = v23;
        _os_log_debug_impl(&dword_229486000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] _isJournal:inNoticationPeriodFor: Notification period check - endDate: %{public}@, isInPeriod: %{public}@", &v28, 0x20u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v20 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [HDHRBloodPressureJournalNotificationManager _isJournal:v20 inNoticationPeriodFor:? calendar:?];
      }

      LOBYTE(v17) = 0;
    }

    goto LABEL_19;
  }

  _HKInitializeLogging();
  v16 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543362;
    v29 = self;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] _isJournal:inNoticationPeriodFor: Journal is closed - not in notification period", &v28, 0xCu);
  }

  LOBYTE(v17) = 0;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_bloodPressureSampleFrom:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = HDSampleEntityPredicateForEndDate();
  v7 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v14 = *MEMORY[0x277D10400];
  v15[0] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = MEMORY[0x277D10668];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [v9 samplesWithType:v7 profile:WeakRetained encodingOptions:v8 predicate:v6 limit:0 anchor:0 error:a4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_notificationSchedulingIsEnabled
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 features];
  v4 = [v3 chutney];

  return v4;
}

- (BOOL)_notificationsEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_unitTesting_forceEnableNotifications)
  {
    result = 1;
LABEL_7:
    v9 = *MEMORY[0x277D85DE8];
    return result;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained daemon];
  v6 = [v5 behavior];
  v7 = [v6 healthAppHiddenOrNotInstalled];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = self;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Journal notification scheduling is disabled. Health app is hidden or not installed.", &v14, 0xCu);
    }

    result = 0;
    goto LABEL_7;
  }

  v10 = objc_loadWeakRetained(&self->_profile);
  v11 = [v10 notificationManager];
  v12 = [v11 areHealthNotificationsAuthorized];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)snoozeBloodPressureJournalNotificationWithIdentifier:(id)a3 journalType:(int64_t)a4 userInfo:(id)a5 onDate:(id)a6 error:(id *)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
  {
    v15 = [[HDHRBloodPressureJournalNotificationIdentifier alloc] initWithIdentifierString:v12];
    if (v15)
    {
      if (a4)
      {
        v16 = 0;
LABEL_5:
        v17 = [v14 dateByAddingTimeInterval:600.0];
        v18 = [(HDRestorableAlarm *)self->_snoozeRestorableAlarm bloodPressureJournalAlarmEventWithNotificationIdentifier:v15 journalType:a4 dueDate:v17 isFollowUp:1 measurementInfo:v16];
        snoozeRestorableAlarm = self->_snoozeRestorableAlarm;
        v36 = v18;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        v21 = [(HDRestorableAlarm *)snoozeRestorableAlarm scheduleEvents:v20 error:a7];

LABEL_21:
        goto LABEL_22;
      }

      if (v13)
      {
        v27 = [v13 objectForKey:*MEMORY[0x277D12ED0]];
        v28 = [v13 objectForKey:*MEMORY[0x277D12EC8]];
        v29 = [v13 objectForKey:*MEMORY[0x277D12ED8]];
        v30 = v29;
        if (v27 && v28 && v29)
        {
          v35 = v27;
          v16 = -[HDHRBloodPressureJournalNotificationMeasurementInfo initWithMeasurementIndex:measurementCount:measurementWindowType:]([HDHRBloodPressureJournalNotificationMeasurementInfo alloc], "initWithMeasurementIndex:measurementCount:measurementWindowType:", [v27 integerValue], objc_msgSend(v28, "integerValue"), objc_msgSend(v29, "integerValue"));

          goto LABEL_5;
        }

        v33 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"UserInfo does not contain measurement related info %@", v13}];
        if (v33)
        {
          if (a7)
          {
            v34 = v33;
            *a7 = v33;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_20:
        v21 = 0;
        goto LABEL_21;
      }

      v24 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"UserInfo should be provided for LearnHypertensionRisk journal type"];
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"notificationIdentifier provided is invalid %@", v12}];
    }

    v25 = v24;
    if (v25)
    {
      if (a7)
      {
        v26 = v25;
        *a7 = v25;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v22 = HKLogBloodPressureJournal();
  v21 = 1;
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

  if (v23)
  {
    v15 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v38 = self;
      _os_log_impl(&dword_229486000, &v15->super, OS_LOG_TYPE_INFO, "[%{public}@] Notification scheduling is not enabled.", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

- (unint64_t)removeDeliveredNotificationsForSamples:(id)a3 journal:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    *&v10 = 138543874;
    v24 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [HDHRBloodPressureJournalNotificationIdentifier identifierFromBPSample:v14 journal:v6, v24];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 identifierString];
          [v7 addObject:v17];
        }

        else
        {
          _HKInitializeLogging();
          v17 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v31 = self;
            v32 = 2114;
            v33 = v14;
            v34 = 2114;
            v35 = v6;
            _os_log_error_impl(&dword_229486000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Could not make identifier for sample [%{public}@] and  journal [%{public}@].", buf, 0x20u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained notificationManager];
  v20 = [v7 allObjects];
  [v19 removeDeliveredNotificationsWithIdentifiers:v20];

  v21 = [v7 count];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)_alarm:(id)a3 confirmDeliveryByRemovingEvent:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(HDHRBloodPressureJournalNotificationManager *)self _alarm:v8 confirmDeliveryByRemovingEvents:v9, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_alarm:(id)a3 confirmDeliveryByRemovingEvents:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v12 = 0;
  v7 = [a3 removeEvents:v6 error:&v12];
  v8 = v12;
  _HKInitializeLogging();
  v9 = HKLogBloodPressureJournal();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed event: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_229486000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to confirm delivery by removing event for client identifier: %{public}@, error: %{public}@", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEventOnHold:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained heartHealthProfileExtension];
  v7 = [v6 bloodPressureJournalNotificationSyncManager];

  v8 = [v4 notificationIdentifierString];
  v9 = [v4 journalIdentifierString];

  v15 = 0;
  v10 = [v7 isAlarmEventWithIdentifiersOnHold:v8 journalIdentifier:v9 error:&v15];
  v11 = v15;

  if (!v10)
  {
    _HKInitializeLogging();
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HDHRBloodPressureJournalNotificationManager _isEventOnHold:];
    }

    goto LABEL_7;
  }

  if (v10 == 2)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (id)_alarm:(id)a3 dueEventsToHandleFrom:(id)a4 date:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([(HDHRBloodPressureJournalNotificationManager *)self _isDueEventExpired:v17 fromDate:v9])
        {
          _HKInitializeLogging();
          v18 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v28 = self;
            v29 = 2114;
            v30 = v17;
            _os_log_impl(&dword_229486000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stale event. Removing alarmEvent: %{public}@", buf, 0x16u);
          }

          v19 = v10;
        }

        else if ([(HDHRBloodPressureJournalNotificationManager *)self _isEventOnHold:v17])
        {
          v19 = v10;
        }

        else
        {
          v19 = v11;
        }

        [v19 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }

  [(HDHRBloodPressureJournalNotificationManager *)self _alarm:v22 confirmDeliveryByRemovingEvents:v10];
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_isDueEventExpired:(id)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = [a3 dueDate];
  v7 = [v6 dateByAddingTimeInterval:43200.0];

  LOBYTE(v6) = [v7 hk_isBeforeOrEqualToDate:v5];
  return v6;
}

- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 now];
  [(HDHRBloodPressureJournalNotificationManager *)self _queue_alarm:v8 didReceiveDueEvents:v7 date:v9 handledEventsHandler:0];
}

- (void)_queue_alarm:(id)a3 didReceiveDueEvents:(id)a4 date:(id)a5 handledEventsHandler:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!self->_unitTesting_shouldIgnoreDeliveredAlarmEvents)
  {
    dispatch_assert_queue_V2(self->_queue);
    _HKInitializeLogging();
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      *buf = 138543874;
      v67 = self;
      v68 = 2114;
      v69 = v14;
      v70 = 2114;
      v71 = v10;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %{public}@", buf, 0x20u);
    }

    v52 = self;
    if ([(HDHRBloodPressureJournalNotificationManager *)self _notificationsEnabled]&& [(HDHRBloodPressureJournalNotificationManager *)self _notificationSchedulingIsEnabled])
    {
      v47 = v11;
      v48 = v10;
      v15 = [(HDHRBloodPressureJournalNotificationManager *)self _alarm:v53 dueEventsToHandleFrom:v10 date:v11];
      if ([v15 count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v17 = [WeakRetained notificationManager];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke;
        v64[3] = &unk_2786610D0;
        v64[4] = self;
        [v17 getBloodPressureJournalDeliveredNotificationIdentifiersWithCompletionHandler:v64];
      }

      [(HDHRBloodPressureJournalNotificationManager *)self _removeAllExpiredEvents];
      v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v15;
      v18 = self;
      v54 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v54)
      {
        v49 = *v61;
        v19 = 0x277D12000uLL;
        v50 = v12;
        do
        {
          for (i = 0; i != v54; ++i)
          {
            if (*v61 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v60 + 1) + 8 * i);
            v22 = [v21 notificationIdentifierString];
            v23 = [v21 isFollowUp];
            v24 = *(v19 + 3968);
            v25 = [v21 dueDate];
            v26 = [v24 notificationToMonitorHypertensionWithIdentifier:v22 dueDate:v25 isFollowUp:v23];

            if (![v21 journalType])
            {
              v27 = [v21 measurementInfo];
              v28 = *(v19 + 3968);
              v29 = [v21 dueDate];
              v30 = [v28 notificationForLearnHypertensionRiskWithIdentifier:v22 dueDate:v29 isFollowUp:v23 measurementIndex:objc_msgSend(v27 measurementCount:"measurementIndex") measurementWindowType:{objc_msgSend(v27, "measurementCount"), objc_msgSend(v27, "measurementWindowType")}];

              v26 = v30;
            }

            v31 = v26;
            v32 = [MEMORY[0x277CE1FC0] hkhrBPJ_requestForNotification:v26];
            v33 = [v21 dueDate];
            v34 = [v33 dateByAddingTimeInterval:43200.0];

            v18 = v52;
            v35 = [(HDRestorableAlarm *)v52->_expirationRestorableAlarm bloodPressureJournalExpirationEventWithIdentifier:v22 dueDate:v34];
            [v51 addObject:v35];
            _HKInitializeLogging();
            v36 = HKLogBloodPressureJournal();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v67 = v52;
              v68 = 2114;
              v69 = v32;
              _os_log_impl(&dword_229486000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting notification with request: %{public}@", buf, 0x16u);
            }

            v37 = objc_loadWeakRetained(&v52->_profile);
            v38 = [v37 notificationManager];
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372;
            v57[3] = &unk_278660128;
            v57[4] = v52;
            v39 = v22;
            v58 = v39;
            v40 = v32;
            v59 = v40;
            [v38 postNotificationWithRequest:v40 completion:v57];

            [(HDHRBloodPressureJournalNotificationManager *)v52 _alarm:v53 confirmDeliveryByRemovingEvent:v21];
            v12 = v50;
            if (v50)
            {
              v50[2](v50, obj);
            }

            v19 = 0x277D12000;
          }

          v54 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v54);
      }

      expirationRestorableAlarm = v18->_expirationRestorableAlarm;
      v56 = 0;
      v42 = [(HDRestorableAlarm *)expirationRestorableAlarm scheduleEvents:v51 error:&v56];
      v43 = v56;
      v11 = v47;
      v10 = v48;
      if ((v42 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [HDHRBloodPressureJournalNotificationManager _queue_alarm:didReceiveDueEvents:date:handledEventsHandler:];
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v45 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v67 = self;
        _os_log_impl(&dword_229486000, v45, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications are disabled. Removing alarmEvents.", buf, 0xCu);
      }

      [(HDHRBloodPressureJournalNotificationManager *)self _alarm:v53 confirmDeliveryByRemovingEvents:v10];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] notificationIdentifiers being removed: %{public}@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained notificationManager];
  [v7 removeDeliveredNotificationsWithIdentifiers:v3];

  v8 = *MEMORY[0x277D85DE8];
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogBloodPressureJournal();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did successfully post notification for : %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 48) content];
    v11 = [v10 userInfo];
    v7 = [v11 objectForKey:*MEMORY[0x277D12ED8]];

    v13 = *(a1 + 32);
    v12 = (a1 + 32);
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    v15 = [WeakRetained heartHealthProfileExtension];
    v16 = [v15 bloodPressureJournalManager];

    v21 = 0;
    v17 = [v16 latestActiveBloodPressureJournalWithError:&v21];
    v18 = v21;
    if (v18)
    {
      _HKInitializeLogging();
      v19 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_2(v12);
      }
    }

    [*(*v12 + 48) submitAnalyticsEvent:0 forJournal:v17 windowType:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_1(a1);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllExpiredEvents
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alarm:(id)a3 didReceiveExpiredEvents:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v8 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v14 = 138543874;
    v15 = self;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received ExpiredEvents %{public}@ events: %{public}@", &v14, 0x20u);
  }

  v10 = [v7 hk_map:&__block_literal_global_18];
  if ([v10 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [WeakRetained notificationManager];
    [v12 removeDeliveredNotificationsWithIdentifiers:v10];

    [(HDHRBloodPressureJournalNotificationManager *)self _alarm:v6 confirmDeliveryByRemovingEvents:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_notificationInfoForMonitorHypertensionJournal:(NSObject *)a3 startDate:calendar:schedulingUUID:error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 UUIDString];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] [UUID: %{public}@] _notificationInfoForMonitorHypertensionJournal: Failed to calculate notification end date. Got nil for Notification End date.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isJournal:(uint64_t)a1 inNoticationPeriodFor:(NSObject *)a2 calendar:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_229486000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] _isJournal:inNoticationPeriodFor: Failed to calculate notification end date. Got nil for Notification End date.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_isEventOnHold:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_alarm:didReceiveDueEvents:date:handledEventsHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __106__HDHRBloodPressureJournalNotificationManager__queue_alarm_didReceiveDueEvents_date_handledEventsHandler___block_invoke_372_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end