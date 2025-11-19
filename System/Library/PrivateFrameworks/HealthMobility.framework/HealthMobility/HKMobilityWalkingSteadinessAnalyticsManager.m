@interface HKMobilityWalkingSteadinessAnalyticsManager
- (BOOL)_collectDiagnosticFieldsForOnboardingMetric:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (BOOL)_collectSensitiveFieldsForNotificationInteractionMetric:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (BOOL)_collectSensitiveFieldsForNotificationMetric:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (BOOL)_collectSensitiveFieldsForOnboardingMetric:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (HKMobilityWalkingSteadinessAnalyticsManager)init;
- (id)_queue_submitNotificationEventWithDataSource:(id)a3;
- (id)_queue_submitNotificationInteractionEventWithDataSource:(id)a3;
- (id)_queue_submitOnboardingEventWithDataSource:(id)a3;
- (void)submitNotificationEventWithDataSource:(id)a3 resultHandler:(id)a4;
- (void)submitNotificationInteractionEventWithDataSource:(id)a3 resultHandler:(id)a4;
- (void)submitOnboardingEventWithDataSource:(id)a3 resultHandler:(id)a4;
@end

@implementation HKMobilityWalkingSteadinessAnalyticsManager

- (HKMobilityWalkingSteadinessAnalyticsManager)init
{
  v6.receiver = self;
  v6.super_class = HKMobilityWalkingSteadinessAnalyticsManager;
  v2 = [(HKMobilityWalkingSteadinessAnalyticsManager *)&v6 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)submitNotificationEventWithDataSource:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __99__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationEventWithDataSource_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_submitNotificationEventWithDataSource:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)submitNotificationInteractionEventWithDataSource:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationInteractionEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __110__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationInteractionEventWithDataSource_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_submitNotificationInteractionEventWithDataSource:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)submitOnboardingEventWithDataSource:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HKMobilityWalkingSteadinessAnalyticsManager_submitOnboardingEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __97__HKMobilityWalkingSteadinessAnalyticsManager_submitOnboardingEventWithDataSource_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_submitOnboardingEventWithDataSource:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_queue_submitNotificationEventWithDataSource:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric requiresImproveHealthAndActivityAllowed];
  if (v5 || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric alloc] initWithImproveHealthAndActivityAllowed:v5];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForNotificationMetric:v8 dataSource:v4 error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForNotificationMetric:v8 dataSource:v4 error:&v17];
      v13 = v17;

      if (v12)
      {
        v14 = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)v8 eventName];
        v16 = v8;
        AnalyticsSendEventLazy();

        v7 = [HKMobilityAnalyticsResult resultWithStatus:0 error:0];
      }

      else
      {
        v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v13];
      }

      v11 = v13;
    }

    else
    {
      v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v10];
    }
  }

  else
  {
    v7 = [HKMobilityAnalyticsResult resultWithStatus:2 error:0];
  }

  return v7;
}

- (id)_queue_submitNotificationInteractionEventWithDataSource:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric requiresImproveHealthAndActivityAllowed];
  if (v5 || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric alloc] initWithImproveHealthAndActivityAllowed:v5];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForNotificationInteractionMetric:v8 dataSource:v4 error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForNotificationInteractionMetric:v8 dataSource:v4 error:&v17];
      v13 = v17;

      if (v12)
      {
        v14 = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)v8 eventName];
        v16 = v8;
        AnalyticsSendEventLazy();

        v7 = [HKMobilityAnalyticsResult resultWithStatus:0 error:0];
      }

      else
      {
        v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v13];
      }

      v11 = v13;
    }

    else
    {
      v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v10];
    }
  }

  else
  {
    v7 = [HKMobilityAnalyticsResult resultWithStatus:2 error:0];
  }

  return v7;
}

- (id)_queue_submitOnboardingEventWithDataSource:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric requiresImproveHealthAndActivityAllowed];
  if (v5 || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric alloc] initWithImproveHealthAndActivityAllowed:v5];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForOnboardingMetric:v8 dataSource:v4 error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForOnboardingMetric:v8 dataSource:v4 error:&v17];
      v13 = v17;

      if (v12)
      {
        v14 = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)v8 eventName];
        v16 = v8;
        AnalyticsSendEventLazy();

        v7 = [HKMobilityAnalyticsResult resultWithStatus:0 error:0];
      }

      else
      {
        v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v13];
      }

      v11 = v13;
    }

    else
    {
      v7 = [HKMobilityAnalyticsResult resultWithStatus:1 error:v10];
    }
  }

  else
  {
    v7 = [HKMobilityAnalyticsResult resultWithStatus:2 error:0];
  }

  return v7;
}

- (BOOL)_collectSensitiveFieldsForNotificationMetric:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isImproveHealthAndActivityAllowed])
  {
    v35 = 0;
    v9 = [v8 notificationClassificationWithError:&v35];
    v10 = v35;
    [v7 setNotificationClassification:v9];

    v11 = v10;
    if (v11)
    {
      goto LABEL_8;
    }

    v34 = 0;
    v12 = [v8 notificationTypeWithError:&v34];
    v13 = v34;
    [v7 setNotificationType:v12];

    v11 = v13;
    if (v11)
    {
      goto LABEL_8;
    }

    v33 = 0;
    v14 = [v8 ageWithError:&v33];
    v15 = v33;
    [v7 setAge:v14];

    v11 = v15;
    if (v11)
    {
      goto LABEL_8;
    }

    v32 = 0;
    v16 = [v8 biologicalSexWithError:&v32];
    v17 = v32;
    [v7 setBiologicalSex:v16];

    v11 = v17;
    if (v11)
    {
      goto LABEL_8;
    }

    v31 = 0;
    v18 = [v8 daysSinceLastNotificationWithError:&v31];
    v19 = v31;
    [v7 setDaysSinceLastNotification:v18];

    v11 = v19;
    if (v11 || (v30 = 0, [v8 areHealthNotificationsAuthorizedWithError:&v30], v20 = objc_claimAutoreleasedReturnValue(), v21 = v30, objc_msgSend(v7, "setAreHealthNotificationsAuthorized:", v20), v20, (v11 = v21) != 0))
    {
LABEL_8:
      v22 = v11;
      if (a5)
      {
        v23 = v11;
        *a5 = v22;
      }

      else
      {
        _HKLogDroppedError();
      }

      v27 = 0;
    }

    else
    {
      v22 = [v8 isShowingPregnancyContent];
      [v7 setIsShowingPregnancyContent:v22];
      v27 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      *buf = 138543362;
      v37 = objc_opt_class();
      v26 = v37;
      _os_log_impl(&dword_251952000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping collecting metrics due to IH&A not allowed", buf, 0xCu);
    }

    v27 = 1;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)_collectSensitiveFieldsForNotificationInteractionMetric:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isImproveHealthAndActivityAllowed])
  {
    v32 = 0;
    v9 = [v8 notificationClassificationWithError:&v32];
    v10 = v32;
    [v7 setNotificationClassification:v9];

    v11 = v10;
    if (v11)
    {
      goto LABEL_7;
    }

    v31 = 0;
    v12 = [v8 notificationTypeWithError:&v31];
    v13 = v31;
    [v7 setNotificationType:v12];

    v11 = v13;
    if (v11)
    {
      goto LABEL_7;
    }

    v30 = 0;
    v14 = [v8 ageWithError:&v30];
    v15 = v30;
    [v7 setAge:v14];

    v11 = v15;
    if (v11)
    {
      goto LABEL_7;
    }

    v29 = 0;
    v16 = [v8 biologicalSexWithError:&v29];
    v17 = v29;
    [v7 setBiologicalSex:v16];

    v11 = v17;
    if (v11 || (v28 = 0, [v8 notificationInteractionTypeWithError:&v28], v18 = objc_claimAutoreleasedReturnValue(), v19 = v28, objc_msgSend(v7, "setNotificationInteractionType:", v18), v18, (v11 = v19) != 0))
    {
LABEL_7:
      v20 = v11;
      if (a5)
      {
        v21 = v11;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }

      v25 = 0;
    }

    else
    {
      v20 = [v8 isShowingPregnancyContent];
      [v7 setIsShowingPregnancyContent:v20];
      v25 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      *buf = 138543362;
      v34 = objc_opt_class();
      v24 = v34;
      _os_log_impl(&dword_251952000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping collecting metrics due to IH&A not allowed", buf, 0xCu);
    }

    v25 = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)_collectDiagnosticFieldsForOnboardingMetric:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v41 = 0;
  v9 = [v8 stepWithError:&v41];
  v10 = v41;
  [v7 setStep:v9];

  v11 = v10;
  if (v11)
  {
    goto LABEL_9;
  }

  v40 = 0;
  v12 = [v8 featureVersionWithError:&v40];
  v13 = v40;
  [v7 setFeatureVersion:v12];

  v11 = v13;
  if (v11)
  {
    goto LABEL_9;
  }

  v39 = 0;
  v14 = [v8 provenanceWithError:&v39];
  v15 = v39;
  [v7 setProvenance:v14];

  v11 = v15;
  if (v11)
  {
    goto LABEL_9;
  }

  v38 = 0;
  v16 = [v8 activeWatchProductTypeWithError:&v38];
  v17 = v38;
  [v7 setActiveWatchProductType:v16];

  v11 = v17;
  if (v11)
  {
    goto LABEL_9;
  }

  v37 = 0;
  v18 = [v8 hasDefaultHeightWithError:&v37];
  v19 = v37;
  [v7 setHasDefaultHeight:v18];

  v11 = v19;
  if (v11)
  {
    goto LABEL_9;
  }

  v36 = 0;
  v20 = [v8 hasDefaultWeightWithError:&v36];
  v21 = v36;
  [v7 setHasDefaultWeight:v20];

  v11 = v21;
  if (v11)
  {
    goto LABEL_9;
  }

  v35 = 0;
  v22 = [v8 acceptDefaultHeightWithError:&v35];
  v23 = v35;
  [v7 setAcceptDefaultHeight:v22];

  v11 = v23;
  if (v11 || (v34 = 0, [v8 acceptDefaultWeightWithError:&v34], v24 = objc_claimAutoreleasedReturnValue(), v25 = v34, objc_msgSend(v7, "setAcceptDefaultWeight:", v24), v24, (v11 = v25) != 0))
  {
LABEL_9:
    v26 = v11;
    if (!a5)
    {
      _HKLogDroppedError();
      v28 = 0;
      goto LABEL_13;
    }

    v27 = v11;
    v28 = 0;
  }

  else
  {
    v33 = 0;
    v30 = [v8 acceptDefaultNotificationsWithError:&v33];
    v31 = v33;
    [v7 setAcceptDefaultNotifications:v30];

    v26 = v31;
    v28 = v26 == 0;
    if (!v26)
    {
      goto LABEL_13;
    }

    if (!a5)
    {
      _HKLogDroppedError();
      goto LABEL_13;
    }

    v32 = v26;
  }

  *a5 = v26;
LABEL_13:

  return v28;
}

- (BOOL)_collectSensitiveFieldsForOnboardingMetric:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 isImproveHealthAndActivityAllowed])
  {
    v24 = 0;
    v9 = [v8 ageWithError:&v24];
    v10 = v24;
    [v7 setAge:v9];

    v11 = v10;
    if (v11)
    {
      v12 = v11;
      if (!a5)
      {
        _HKLogDroppedError();
        v14 = 0;
        goto LABEL_14;
      }

      v13 = v11;
      v14 = 0;
    }

    else
    {
      v23 = 0;
      v18 = [v8 biologicalSexWithError:&v23];
      v19 = v23;
      [v7 setBiologicalSex:v18];

      v12 = v19;
      v14 = v12 == 0;
      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      if (!a5)
      {
        _HKLogDroppedError();
        goto LABEL_14;
      }

      v20 = v12;
    }

    *a5 = v12;
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    *buf = 138543362;
    v26 = objc_opt_class();
    v17 = v26;
    _os_log_impl(&dword_251952000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping collecting metrics due to IH&A not allowed", buf, 0xCu);
  }

  v14 = 1;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

@end