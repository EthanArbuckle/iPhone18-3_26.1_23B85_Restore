@interface HDMHLoggingPatternEscalationsManager
- (BOOL)_areEscalationsSnoozedWithCurrentDate:(id)date gregorianCalendar:(id)calendar featureSettings:(id)settings;
- (BOOL)_areEscalationsSupportedAndNotSnoozedWithCurrentDate:(id)date gregorianCalendar:(id)calendar featureStatus:(id)status;
- (BOOL)promptedAssessment:(id *)assessment featureStatus:(id)status pendingStateOfMind:(id)mind error:(id *)error;
- (HDMHLoggingPatternEscalationsManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_currentDate;
- (id)_currentGregorianCalendar;
- (id)_lastEscalationAcknowledgmentDateWithFeatureSettings:(id)settings;
- (void)_notifyObserversForPromptedAssessmentUpdate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)registerObserver:(id)observer;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDMHLoggingPatternEscalationsManager

- (HDMHLoggingPatternEscalationsManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HDMHLoggingPatternEscalationsManager;
  v5 = [(HDMHLoggingPatternEscalationsManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 initWithName:v9 loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v6->_observers;
    v6->_observers = v10;
  }

  return v6;
}

- (void)dealloc
{
  if ([(HKObserverSet *)self->_observers count])
  {
    [(HDMHLoggingPatternEscalationsManager *)self _stopObserving];
  }

  v3.receiver = self;
  v3.super_class = HDMHLoggingPatternEscalationsManager;
  [(HDMHLoggingPatternEscalationsManager *)&v3 dealloc];
}

- (BOOL)promptedAssessment:(id *)assessment featureStatus:(id)status pendingStateOfMind:(id)mind error:(id *)error
{
  mindCopy = mind;
  statusCopy = status;
  _currentDate = [(HDMHLoggingPatternEscalationsManager *)self _currentDate];
  _currentGregorianCalendar = [(HDMHLoggingPatternEscalationsManager *)self _currentGregorianCalendar];
  v14 = [(HDMHLoggingPatternEscalationsManager *)self _areEscalationsSupportedAndNotSnoozedWithCurrentDate:_currentDate gregorianCalendar:_currentGregorianCalendar featureStatus:statusCopy];

  if (v14)
  {
    v15 = [HDMHLoggingPatternDetector alloc];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v17 = [(HDMHLoggingPatternDetector *)v15 initWithProfile:WeakRetained];

    v27 = 0;
    v18 = [(HDMHLoggingPatternDetector *)v17 isUnpleasantLoggingPatternDetectedWithCurrentDate:_currentDate gregorianCalendar:_currentGregorianCalendar pendingStateOfMind:mindCopy error:&v27];
    v19 = v27;
    v20 = v18 != 0;
    if (v18)
    {
      if (![v18 BOOLValue])
      {
LABEL_14:

        goto LABEL_15;
      }

      v21 = [objc_alloc(MEMORY[0x277D280A0]) initWithEligibilityStartDate:_currentDate reason:2];
      v22 = v21;
      if (assessment)
      {
        v23 = v21;
        *assessment = v22;
      }
    }

    else
    {
      _HKInitializeLogging();
      v24 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [HDMHLoggingPatternEscalationsManager promptedAssessment:v24 featureStatus:self pendingStateOfMind:v19 error:?];
      }

      v22 = v19;
      if (v22)
      {
        if (error)
        {
          v25 = v22;
          *error = v22;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_14;
  }

  v20 = 1;
LABEL_15:

  return v20;
}

- (BOOL)_areEscalationsSupportedAndNotSnoozedWithCurrentDate:(id)date gregorianCalendar:(id)calendar featureStatus:(id)status
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendarCopy = calendar;
  statusCopy = status;
  v11 = *MEMORY[0x277CCBEA0];
  v12 = [statusCopy objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  areAllRequirementsSatisfied = [v12 areAllRequirementsSatisfied];

  if (areAllRequirementsSatisfied)
  {
    onboardingRecord = [statusCopy onboardingRecord];
    featureSettings = [onboardingRecord featureSettings];
    v16 = [(HDMHLoggingPatternEscalationsManager *)self _areEscalationsSnoozedWithCurrentDate:dateCopy gregorianCalendar:calendarCopy featureSettings:featureSettings];

    v17 = !v16;
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2F0];
    v17 = 0;
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [statusCopy objectForKeyedSubscript:v11];
      unsatisfiedRequirementIdentifiersDescription = [v22 unsatisfiedRequirementIdentifiersDescription];
      v26 = 138543618;
      v27 = v20;
      v28 = 2114;
      v29 = unsatisfiedRequirementIdentifiersDescription;
      _os_log_impl(&dword_258977000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Escalations not supported due to: %{public}@", &v26, 0x16u);

      v17 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_areEscalationsSnoozedWithCurrentDate:(id)date gregorianCalendar:(id)calendar featureSettings:(id)settings
{
  dateCopy = date;
  calendarCopy = calendar;
  v10 = [(HDMHLoggingPatternEscalationsManager *)self _lastEscalationAcknowledgmentDateWithFeatureSettings:settings];
  if (v10)
  {
    v11 = [calendarCopy hk_startOfDateByAddingDays:*MEMORY[0x277D28048] toDate:v10];
    if ([v10 hk_isBeforeDate:dateCopy])
    {
      v12 = [v11 hk_isAfterDate:dateCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_lastEscalationAcknowledgmentDateWithFeatureSettings:(id)settings
{
  v3 = [settings numberForKey:*MEMORY[0x277D27FE8]];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_currentDate
{
  unitTest_currentDate = self->_unitTest_currentDate;
  if (unitTest_currentDate)
  {
    v3 = unitTest_currentDate;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] now];
  }

  return v3;
}

- (id)_currentGregorianCalendar
{
  unitTest_gregorianCalendar = self->_unitTest_gregorianCalendar;
  if (unitTest_gregorianCalendar)
  {
    hk_gregorianCalendarWithLocalTimeZone = unitTest_gregorianCalendar;
  }

  else
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return hk_gregorianCalendarWithLocalTimeZone;
}

- (void)registerObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HDMHLoggingPatternEscalationsManager_registerObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:0 runIfFirstObserver:v4];
}

- (void)_startObserving
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  [dataManager addObserver:self forDataType:stateOfMindType];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HDMHLoggingPatternEscalationsManager_unregisterObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
}

- (void)_stopObserving
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  [dataManager removeObserver:self forDataType:stateOfMindType];
}

- (void)_notifyObserversForPromptedAssessmentUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__HDMHLoggingPatternEscalationsManager__notifyObserversForPromptedAssessmentUpdate__block_invoke;
  v3[3] = &unk_2798AAB80;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *v9 = 138543362;
    *&v9[4] = objc_opt_class();
    v7 = *&v9[4];
    _os_log_impl(&dword_258977000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed samples added", v9, 0xCu);
  }

  [(HDMHLoggingPatternEscalationsManager *)self _notifyObserversForPromptedAssessmentUpdate];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *v9 = 138543362;
    *&v9[4] = objc_opt_class();
    v7 = *&v9[4];
    _os_log_impl(&dword_258977000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed samples removed", v9, 0xCu);
  }

  [(HDMHLoggingPatternEscalationsManager *)self _notifyObserversForPromptedAssessmentUpdate];
  v8 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)promptedAssessment:(uint64_t)a3 featureStatus:pendingStateOfMind:error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_258977000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error seeking pattern in logging: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end