@interface HDMHPromptedAssessmentsManager
- (HDMHPromptedAssessmentsManager)initWithProfile:(id)a3 periodicAssessmentsAvailability:(id)a4 loggingPatternEscalationsAvailability:(id)a5;
- (HDMHPromptedAssessmentsManager)initWithProfile:(id)a3 periodicAssessmentsAvailability:(id)a4 loggingPatternEscalationsAvailability:(id)a5 periodicAssessmentsManager:(id)a6 loggingPatternEscalationsManager:(id)a7;
- (HDProfile)profile;
- (id)promptedAssessmentsWithError:(id *)a3;
- (int64_t)periodicAssessmentPromptCadenceInDaysWithError:(id *)a3;
- (void)_notifyObserversForPromptedAssessmentsUpdate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)loggingPatternEscalationsManagerDidUpdatePromptedAssessment:(id)a3;
- (void)periodicPromptedAssessmentsManagerDidUpdatePromptedAssessment:(id)a3;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDMHPromptedAssessmentsManager

- (HDMHPromptedAssessmentsManager)initWithProfile:(id)a3 periodicAssessmentsAvailability:(id)a4 loggingPatternEscalationsAvailability:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HDMHPeriodicPromptedAssessmentsManager alloc] initWithProfile:v10];
  v12 = [[HDMHLoggingPatternEscalationsManager alloc] initWithProfile:v10];
  v13 = [(HDMHPromptedAssessmentsManager *)self initWithProfile:v10 periodicAssessmentsAvailability:v9 loggingPatternEscalationsAvailability:v8 periodicAssessmentsManager:v11 loggingPatternEscalationsManager:v12];

  return v13;
}

- (HDMHPromptedAssessmentsManager)initWithProfile:(id)a3 periodicAssessmentsAvailability:(id)a4 loggingPatternEscalationsAvailability:(id)a5 periodicAssessmentsManager:(id)a6 loggingPatternEscalationsManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HDMHPromptedAssessmentsManager;
  v17 = [(HDMHPromptedAssessmentsManager *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, v12);
    v19 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v13 healthDataSource:v12 countryCodeSource:0];
    periodicAssessmentsFeatureStatusManager = v18->_periodicAssessmentsFeatureStatusManager;
    v18->_periodicAssessmentsFeatureStatusManager = v19;

    v21 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v14 healthDataSource:v12 countryCodeSource:0];
    loggingPatternEscalationsFeatureStatusManager = v18->_loggingPatternEscalationsFeatureStatusManager;
    v18->_loggingPatternEscalationsFeatureStatusManager = v21;

    objc_storeStrong(&v18->_periodicAssessmentsManager, a6);
    objc_storeStrong(&v18->_loggingPatternEscalationsManager, a7);
    v23 = objc_alloc(MEMORY[0x277CCD738]);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v23 initWithName:v25 loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v18->_observers;
    v18->_observers = v26;
  }

  return v18;
}

- (int64_t)periodicAssessmentPromptCadenceInDaysWithError:(id *)a3
{
  v4 = [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager featureStatusWithError:a3];
  periodicAssessmentsManager = self->_periodicAssessmentsManager;
  v6 = [v4 onboardingRecord];
  v7 = [v6 featureSettings];
  v8 = [(HDMHPeriodicPromptedAssessmentsManager *)periodicAssessmentsManager _periodicAssessmentPromptCadenceInDaysWithFeatureSettings:v7];

  return v8;
}

- (id)promptedAssessmentsWithError:(id *)a3
{
  v5 = [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager featureStatusWithError:?];
  if (v5)
  {
    periodicAssessmentsManager = self->_periodicAssessmentsManager;
    v18 = 0;
    v7 = [(HDMHPeriodicPromptedAssessmentsManager *)periodicAssessmentsManager promptedAssessment:&v18 featureStatus:v5 error:a3];
    v8 = v18;
    v9 = 0;
    if (v7)
    {
      v10 = [(HKFeatureStatusManager *)self->_loggingPatternEscalationsFeatureStatusManager featureStatusWithError:a3];
      if (v10)
      {
        loggingPatternEscalationsManager = self->_loggingPatternEscalationsManager;
        v17 = 0;
        v12 = [(HDMHLoggingPatternEscalationsManager *)loggingPatternEscalationsManager promptedAssessment:&v17 featureStatus:v10 pendingStateOfMind:0 error:a3];
        v13 = v17;
        v9 = 0;
        if (v12)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v15 = v14;
          if (v8)
          {
            [v14 addObject:v8];
          }

          if (v13)
          {
            [v15 addObject:v13];
          }

          v9 = [v15 copy];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)registerObserver:(id)a3 queue:(id)a4
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HDMHPromptedAssessmentsManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_2798AAB58;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:a3 queue:a4 runIfFirstObserver:v5];
}

- (void)_startObserving
{
  [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager registerObserver:self];
  [(HKFeatureStatusManager *)self->_loggingPatternEscalationsFeatureStatusManager registerObserver:self];
  [(HDMHPeriodicPromptedAssessmentsManager *)self->_periodicAssessmentsManager registerObserver:self];
  loggingPatternEscalationsManager = self->_loggingPatternEscalationsManager;

  [(HDMHLoggingPatternEscalationsManager *)loggingPatternEscalationsManager registerObserver:self];
}

- (void)unregisterObserver:(id)a3
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDMHPromptedAssessmentsManager_unregisterObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:a3 runIfLastObserver:v4];
}

- (void)_stopObserving
{
  [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager unregisterObserver:self];
  [(HKFeatureStatusManager *)self->_loggingPatternEscalationsFeatureStatusManager unregisterObserver:self];
  [(HDMHPeriodicPromptedAssessmentsManager *)self->_periodicAssessmentsManager unregisterObserver:self];
  loggingPatternEscalationsManager = self->_loggingPatternEscalationsManager;

  [(HDMHLoggingPatternEscalationsManager *)loggingPatternEscalationsManager unregisterObserver:self];
}

- (void)_notifyObserversForPromptedAssessmentsUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__HDMHPromptedAssessmentsManager__notifyObserversForPromptedAssessmentsUpdate__block_invoke;
  v3[3] = &unk_2798AAEC8;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 featureIdentifier];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_258977000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed change in feature status for %{public}@", &v12, 0x16u);
  }

  [(HDMHPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentsUpdate];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)periodicPromptedAssessmentsManagerDidUpdatePromptedAssessment:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed change in periodic prompted assessment", v8, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentsUpdate];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)loggingPatternEscalationsManagerDidUpdatePromptedAssessment:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed change in logging pattern escalation", v8, 0xCu);
  }

  [(HDMHPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentsUpdate];
  v7 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end