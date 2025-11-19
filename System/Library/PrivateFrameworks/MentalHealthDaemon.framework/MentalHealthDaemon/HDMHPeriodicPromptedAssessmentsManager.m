@interface HDMHPeriodicPromptedAssessmentsManager
- (BOOL)promptedAssessment:(id *)a3 featureStatus:(id)a4 error:(id *)a5;
- (HDMHPeriodicPromptedAssessmentsManager)initWithProfile:(id)a3;
- (HDProfile)profile;
- (id)_currentDate;
- (id)_currentGregorianCalendar;
- (id)_lastPromptAcknowledgmentDateWithFeatureSettings:(id)a3;
- (id)_mostRecentAssessmentDateWithError:(id *)a3;
- (id)_mostRecentAssessmentInteractionDateWithFeatureSettings:(id)a3 error:(id *)a4;
- (id)_mostRecentSampleStartDateForSampleType:(id)a3 error:(id *)a4;
- (id)_promptedAssessmentEligibilityStartDateWithFeatureStatus:(id)a3 error:(id *)a4;
- (int64_t)_periodicAssessmentPromptCadenceInDaysWithFeatureSettings:(id)a3;
- (void)_notifyObserversForPromptedAssessmentUpdate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDMHPeriodicPromptedAssessmentsManager

- (HDMHPeriodicPromptedAssessmentsManager)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDMHPeriodicPromptedAssessmentsManager;
  v5 = [(HDMHPeriodicPromptedAssessmentsManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
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
    [(HDMHPeriodicPromptedAssessmentsManager *)self _stopObserving];
  }

  v3.receiver = self;
  v3.super_class = HDMHPeriodicPromptedAssessmentsManager;
  [(HDMHPeriodicPromptedAssessmentsManager *)&v3 dealloc];
}

- (BOOL)promptedAssessment:(id *)a3 featureStatus:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = *MEMORY[0x277CCBEA0];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v11 = [v10 areAllRequirementsSatisfied];

  if (v11)
  {
    v32 = 0;
    v12 = [(HDMHPeriodicPromptedAssessmentsManager *)self _promptedAssessmentEligibilityStartDateWithFeatureStatus:v8 error:&v32];
    v13 = v32;
    v14 = v12 != 0;
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2F0];
    v16 = *MEMORY[0x277CCC2F0];
    if (v12)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v15;
        v18 = objc_opt_class();
        *buf = 138543618;
        v34 = v18;
        v35 = 2114;
        v36 = v12;
        v19 = v18;
        _os_log_impl(&dword_258977000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Next periodic prompted assessment due date: %{public}@", buf, 0x16u);
      }

      v20 = [objc_alloc(MEMORY[0x277D280A0]) initWithEligibilityStartDate:v12 reason:1];
      v21 = v20;
      if (a3)
      {
        v22 = v20;
        *a3 = v21;
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [HDMHPeriodicPromptedAssessmentsManager promptedAssessment:v15 featureStatus:self error:v13];
      }

      v21 = v13;
      if (v21)
      {
        if (a5)
        {
          v29 = v21;
          *a5 = v21;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = objc_opt_class();
      v26 = v25;
      v27 = [v8 objectForKeyedSubscript:v9];
      v28 = [v27 unsatisfiedRequirementIdentifiersDescription];
      *buf = 138543618;
      v34 = v25;
      v35 = 2114;
      v36 = v28;
      _os_log_impl(&dword_258977000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Periodic assessments not supported due to: %{public}@", buf, 0x16u);
    }

    v14 = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_promptedAssessmentEligibilityStartDateWithFeatureStatus:(id)a3 error:(id *)a4
{
  v6 = [a3 onboardingRecord];
  v7 = [v6 featureSettings];
  v21 = 0;
  v8 = [(HDMHPeriodicPromptedAssessmentsManager *)self _mostRecentAssessmentInteractionDateWithFeatureSettings:v7 error:&v21];
  v9 = v21;

  if (v9)
  {
    if (a4)
    {
      v10 = v9;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 featureSettings];
    v13 = [(HDMHPeriodicPromptedAssessmentsManager *)self _periodicAssessmentPromptCadenceInDaysWithFeatureSettings:v12];

    if (v8)
    {
      v14 = [(HDMHPeriodicPromptedAssessmentsManager *)self _currentGregorianCalendar];
      v11 = [v14 hk_startOfDateByAddingDays:v13 toDate:v8];
    }

    else
    {
      v14 = [v6 earliestDateOfAnyOnboardingCompletion];
      v15 = [(HDMHPeriodicPromptedAssessmentsManager *)self _currentDate];
      v16 = [v14 hk_isAfterDate:v15];
      v17 = [(HDMHPeriodicPromptedAssessmentsManager *)self _currentGregorianCalendar];
      v18 = v17;
      if (v16)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      v11 = [v17 hk_startOfDateByAddingDays:v13 toDate:v19];
    }
  }

  return v11;
}

- (id)_mostRecentAssessmentInteractionDateWithFeatureSettings:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDMHPeriodicPromptedAssessmentsManager *)self _mostRecentAssessmentDateWithError:a4];
  v8 = [(HDMHPeriodicPromptedAssessmentsManager *)self _lastPromptAcknowledgmentDateWithFeatureSettings:v6];

  v9 = [(HDMHPeriodicPromptedAssessmentsManager *)self _currentDate];
  if ([v7 hk_isAfterDate:v9])
  {

    v7 = 0;
  }

  if ([v8 hk_isAfterDate:v9])
  {

    v8 = 0;
    v10 = v7 != 0;
    goto LABEL_5;
  }

  v10 = v7 != 0;
  if (!v7 || !v8)
  {
LABEL_5:
    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    goto LABEL_12;
  }

  v12 = [v7 laterDate:v8];
LABEL_12:
  v13 = v12;

  return v13;
}

- (id)_mostRecentAssessmentDateWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  v6 = [(HDMHPeriodicPromptedAssessmentsManager *)self _mostRecentSampleStartDateForSampleType:v5 error:a3];

  v7 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v8 = [(HDMHPeriodicPromptedAssessmentsManager *)self _mostRecentSampleStartDateForSampleType:v7 error:a3];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = [v6 laterDate:v8];
  }

  v12 = v11;

  return v12;
}

- (id)_mostRecentSampleStartDateForSampleType:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D10848];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [v6 mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:a4];

  v10 = [v9 startDate];

  return v10;
}

- (id)_lastPromptAcknowledgmentDateWithFeatureSettings:(id)a3
{
  v3 = [a3 numberForKey:*MEMORY[0x277D27FF0]];
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
    v3 = unitTest_gregorianCalendar;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return v3;
}

- (int64_t)_periodicAssessmentPromptCadenceInDaysWithFeatureSettings:(id)a3
{
  v3 = [a3 numberForKey:*MEMORY[0x277D27FF8]];
  v4 = v3;
  if (v3 && [v3 integerValue] > 0)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = *MEMORY[0x277D27FE0];
  }

  return v5;
}

- (void)registerObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__HDMHPeriodicPromptedAssessmentsManager_registerObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:0 runIfFirstObserver:v4];
}

- (void)_startObserving
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  [v4 addObserver:self forDataType:v5];

  v8 = objc_loadWeakRetained(&self->_profile);
  v6 = [v8 dataManager];
  v7 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  [v6 addObserver:self forDataType:v7];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HDMHPeriodicPromptedAssessmentsManager_unregisterObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

- (void)_stopObserving
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained dataManager];
  v5 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  [v4 removeObserver:self forDataType:v5];

  v8 = objc_loadWeakRetained(&self->_profile);
  v6 = [v8 dataManager];
  v7 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  [v6 removeObserver:self forDataType:v7];
}

- (void)_notifyObserversForPromptedAssessmentUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__HDMHPeriodicPromptedAssessmentsManager__notifyObserversForPromptedAssessmentUpdate__block_invoke;
  v3[3] = &unk_2798AAC60;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
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

  [(HDMHPeriodicPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentUpdate];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
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

  [(HDMHPeriodicPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentUpdate];
  v8 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)promptedAssessment:(void *)a1 featureStatus:(uint64_t)a2 error:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_258977000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error determining eligibility start date: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end