@interface HKMobilityWalkingSteadinessAnalyticsManager
- (BOOL)_collectDiagnosticFieldsForOnboardingMetric:(id)metric dataSource:(id)source error:(id *)error;
- (BOOL)_collectSensitiveFieldsForNotificationInteractionMetric:(id)metric dataSource:(id)source error:(id *)error;
- (BOOL)_collectSensitiveFieldsForNotificationMetric:(id)metric dataSource:(id)source error:(id *)error;
- (BOOL)_collectSensitiveFieldsForOnboardingMetric:(id)metric dataSource:(id)source error:(id *)error;
- (HKMobilityWalkingSteadinessAnalyticsManager)init;
- (id)_queue_submitNotificationEventWithDataSource:(id)source;
- (id)_queue_submitNotificationInteractionEventWithDataSource:(id)source;
- (id)_queue_submitOnboardingEventWithDataSource:(id)source;
- (void)submitNotificationEventWithDataSource:(id)source resultHandler:(id)handler;
- (void)submitNotificationInteractionEventWithDataSource:(id)source resultHandler:(id)handler;
- (void)submitOnboardingEventWithDataSource:(id)source resultHandler:(id)handler;
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

- (void)submitNotificationEventWithDataSource:(id)source resultHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = sourceCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sourceCopy;
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

- (void)submitNotificationInteractionEventWithDataSource:(id)source resultHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HKMobilityWalkingSteadinessAnalyticsManager_submitNotificationInteractionEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = sourceCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sourceCopy;
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

- (void)submitOnboardingEventWithDataSource:(id)source resultHandler:(id)handler
{
  sourceCopy = source;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HKMobilityWalkingSteadinessAnalyticsManager_submitOnboardingEventWithDataSource_resultHandler___block_invoke;
  block[3] = &unk_2796D8728;
  block[4] = self;
  v12 = sourceCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = sourceCopy;
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

- (id)_queue_submitNotificationEventWithDataSource:(id)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  _isImproveHealthAndActivityAllowed = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric requiresImproveHealthAndActivityAllowed];
  if (_isImproveHealthAndActivityAllowed || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric alloc] initWithImproveHealthAndActivityAllowed:_isImproveHealthAndActivityAllowed];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForNotificationMetric:v8 dataSource:sourceCopy error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForNotificationMetric:v8 dataSource:sourceCopy error:&v17];
      v13 = v17;

      if (v12)
      {
        eventName = [(HKMobilityWalkingSteadinessAnalyticsNotificationEventMetric *)v8 eventName];
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

- (id)_queue_submitNotificationInteractionEventWithDataSource:(id)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  _isImproveHealthAndActivityAllowed = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric requiresImproveHealthAndActivityAllowed];
  if (_isImproveHealthAndActivityAllowed || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric alloc] initWithImproveHealthAndActivityAllowed:_isImproveHealthAndActivityAllowed];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForNotificationInteractionMetric:v8 dataSource:sourceCopy error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForNotificationInteractionMetric:v8 dataSource:sourceCopy error:&v17];
      v13 = v17;

      if (v12)
      {
        eventName = [(HKMobilityWalkingSteadinessAnalyticsNotificationInteractionEventMetric *)v8 eventName];
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

- (id)_queue_submitOnboardingEventWithDataSource:(id)source
{
  sourceCopy = source;
  dispatch_assert_queue_V2(self->_queue);
  _isImproveHealthAndActivityAllowed = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _isImproveHealthAndActivityAllowed];
  v6 = +[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric requiresImproveHealthAndActivityAllowed];
  if (_isImproveHealthAndActivityAllowed || !v6)
  {
    v8 = [[HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric alloc] initWithImproveHealthAndActivityAllowed:_isImproveHealthAndActivityAllowed];
    v18 = 0;
    v9 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectDiagnosticFieldsForOnboardingMetric:v8 dataSource:sourceCopy error:&v18];
    v10 = v18;
    v11 = v10;
    if (v9)
    {
      v17 = v10;
      v12 = [(HKMobilityWalkingSteadinessAnalyticsManager *)self _collectSensitiveFieldsForOnboardingMetric:v8 dataSource:sourceCopy error:&v17];
      v13 = v17;

      if (v12)
      {
        eventName = [(HKMobilityWalkingSteadinessAnalyticsOnboardingEventMetric *)v8 eventName];
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

- (BOOL)_collectSensitiveFieldsForNotificationMetric:(id)metric dataSource:(id)source error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  sourceCopy = source;
  if ([metricCopy isImproveHealthAndActivityAllowed])
  {
    v35 = 0;
    v9 = [sourceCopy notificationClassificationWithError:&v35];
    v10 = v35;
    [metricCopy setNotificationClassification:v9];

    v11 = v10;
    if (v11)
    {
      goto LABEL_8;
    }

    v34 = 0;
    v12 = [sourceCopy notificationTypeWithError:&v34];
    v13 = v34;
    [metricCopy setNotificationType:v12];

    v11 = v13;
    if (v11)
    {
      goto LABEL_8;
    }

    v33 = 0;
    v14 = [sourceCopy ageWithError:&v33];
    v15 = v33;
    [metricCopy setAge:v14];

    v11 = v15;
    if (v11)
    {
      goto LABEL_8;
    }

    v32 = 0;
    v16 = [sourceCopy biologicalSexWithError:&v32];
    v17 = v32;
    [metricCopy setBiologicalSex:v16];

    v11 = v17;
    if (v11)
    {
      goto LABEL_8;
    }

    v31 = 0;
    v18 = [sourceCopy daysSinceLastNotificationWithError:&v31];
    v19 = v31;
    [metricCopy setDaysSinceLastNotification:v18];

    v11 = v19;
    if (v11 || (v30 = 0, [sourceCopy areHealthNotificationsAuthorizedWithError:&v30], v20 = objc_claimAutoreleasedReturnValue(), v21 = v30, objc_msgSend(metricCopy, "setAreHealthNotificationsAuthorized:", v20), v20, (v11 = v21) != 0))
    {
LABEL_8:
      isShowingPregnancyContent = v11;
      if (error)
      {
        v23 = v11;
        *error = isShowingPregnancyContent;
      }

      else
      {
        _HKLogDroppedError();
      }

      v27 = 0;
    }

    else
    {
      isShowingPregnancyContent = [sourceCopy isShowingPregnancyContent];
      [metricCopy setIsShowingPregnancyContent:isShowingPregnancyContent];
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

- (BOOL)_collectSensitiveFieldsForNotificationInteractionMetric:(id)metric dataSource:(id)source error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  sourceCopy = source;
  if ([metricCopy isImproveHealthAndActivityAllowed])
  {
    v32 = 0;
    v9 = [sourceCopy notificationClassificationWithError:&v32];
    v10 = v32;
    [metricCopy setNotificationClassification:v9];

    v11 = v10;
    if (v11)
    {
      goto LABEL_7;
    }

    v31 = 0;
    v12 = [sourceCopy notificationTypeWithError:&v31];
    v13 = v31;
    [metricCopy setNotificationType:v12];

    v11 = v13;
    if (v11)
    {
      goto LABEL_7;
    }

    v30 = 0;
    v14 = [sourceCopy ageWithError:&v30];
    v15 = v30;
    [metricCopy setAge:v14];

    v11 = v15;
    if (v11)
    {
      goto LABEL_7;
    }

    v29 = 0;
    v16 = [sourceCopy biologicalSexWithError:&v29];
    v17 = v29;
    [metricCopy setBiologicalSex:v16];

    v11 = v17;
    if (v11 || (v28 = 0, [sourceCopy notificationInteractionTypeWithError:&v28], v18 = objc_claimAutoreleasedReturnValue(), v19 = v28, objc_msgSend(metricCopy, "setNotificationInteractionType:", v18), v18, (v11 = v19) != 0))
    {
LABEL_7:
      isShowingPregnancyContent = v11;
      if (error)
      {
        v21 = v11;
        *error = isShowingPregnancyContent;
      }

      else
      {
        _HKLogDroppedError();
      }

      v25 = 0;
    }

    else
    {
      isShowingPregnancyContent = [sourceCopy isShowingPregnancyContent];
      [metricCopy setIsShowingPregnancyContent:isShowingPregnancyContent];
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

- (BOOL)_collectDiagnosticFieldsForOnboardingMetric:(id)metric dataSource:(id)source error:(id *)error
{
  metricCopy = metric;
  sourceCopy = source;
  v41 = 0;
  v9 = [sourceCopy stepWithError:&v41];
  v10 = v41;
  [metricCopy setStep:v9];

  v11 = v10;
  if (v11)
  {
    goto LABEL_9;
  }

  v40 = 0;
  v12 = [sourceCopy featureVersionWithError:&v40];
  v13 = v40;
  [metricCopy setFeatureVersion:v12];

  v11 = v13;
  if (v11)
  {
    goto LABEL_9;
  }

  v39 = 0;
  v14 = [sourceCopy provenanceWithError:&v39];
  v15 = v39;
  [metricCopy setProvenance:v14];

  v11 = v15;
  if (v11)
  {
    goto LABEL_9;
  }

  v38 = 0;
  v16 = [sourceCopy activeWatchProductTypeWithError:&v38];
  v17 = v38;
  [metricCopy setActiveWatchProductType:v16];

  v11 = v17;
  if (v11)
  {
    goto LABEL_9;
  }

  v37 = 0;
  v18 = [sourceCopy hasDefaultHeightWithError:&v37];
  v19 = v37;
  [metricCopy setHasDefaultHeight:v18];

  v11 = v19;
  if (v11)
  {
    goto LABEL_9;
  }

  v36 = 0;
  v20 = [sourceCopy hasDefaultWeightWithError:&v36];
  v21 = v36;
  [metricCopy setHasDefaultWeight:v20];

  v11 = v21;
  if (v11)
  {
    goto LABEL_9;
  }

  v35 = 0;
  v22 = [sourceCopy acceptDefaultHeightWithError:&v35];
  v23 = v35;
  [metricCopy setAcceptDefaultHeight:v22];

  v11 = v23;
  if (v11 || (v34 = 0, [sourceCopy acceptDefaultWeightWithError:&v34], v24 = objc_claimAutoreleasedReturnValue(), v25 = v34, objc_msgSend(metricCopy, "setAcceptDefaultWeight:", v24), v24, (v11 = v25) != 0))
  {
LABEL_9:
    v26 = v11;
    if (!error)
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
    v30 = [sourceCopy acceptDefaultNotificationsWithError:&v33];
    v31 = v33;
    [metricCopy setAcceptDefaultNotifications:v30];

    v26 = v31;
    v28 = v26 == 0;
    if (!v26)
    {
      goto LABEL_13;
    }

    if (!error)
    {
      _HKLogDroppedError();
      goto LABEL_13;
    }

    v32 = v26;
  }

  *error = v26;
LABEL_13:

  return v28;
}

- (BOOL)_collectSensitiveFieldsForOnboardingMetric:(id)metric dataSource:(id)source error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  sourceCopy = source;
  if ([metricCopy isImproveHealthAndActivityAllowed])
  {
    v24 = 0;
    v9 = [sourceCopy ageWithError:&v24];
    v10 = v24;
    [metricCopy setAge:v9];

    v11 = v10;
    if (v11)
    {
      v12 = v11;
      if (!error)
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
      v18 = [sourceCopy biologicalSexWithError:&v23];
      v19 = v23;
      [metricCopy setBiologicalSex:v18];

      v12 = v19;
      v14 = v12 == 0;
      if (!v12)
      {
LABEL_14:

        goto LABEL_15;
      }

      if (!error)
      {
        _HKLogDroppedError();
        goto LABEL_14;
      }

      v20 = v12;
    }

    *error = v12;
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