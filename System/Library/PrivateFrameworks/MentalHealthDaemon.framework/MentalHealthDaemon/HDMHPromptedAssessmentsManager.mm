@interface HDMHPromptedAssessmentsManager
- (HDMHPromptedAssessmentsManager)initWithProfile:(id)profile periodicAssessmentsAvailability:(id)availability loggingPatternEscalationsAvailability:(id)escalationsAvailability;
- (HDMHPromptedAssessmentsManager)initWithProfile:(id)profile periodicAssessmentsAvailability:(id)availability loggingPatternEscalationsAvailability:(id)escalationsAvailability periodicAssessmentsManager:(id)manager loggingPatternEscalationsManager:(id)escalationsManager;
- (HDProfile)profile;
- (id)promptedAssessmentsWithError:(id *)error;
- (int64_t)periodicAssessmentPromptCadenceInDaysWithError:(id *)error;
- (void)_notifyObserversForPromptedAssessmentsUpdate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)loggingPatternEscalationsManagerDidUpdatePromptedAssessment:(id)assessment;
- (void)periodicPromptedAssessmentsManagerDidUpdatePromptedAssessment:(id)assessment;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation HDMHPromptedAssessmentsManager

- (HDMHPromptedAssessmentsManager)initWithProfile:(id)profile periodicAssessmentsAvailability:(id)availability loggingPatternEscalationsAvailability:(id)escalationsAvailability
{
  escalationsAvailabilityCopy = escalationsAvailability;
  availabilityCopy = availability;
  profileCopy = profile;
  v11 = [[HDMHPeriodicPromptedAssessmentsManager alloc] initWithProfile:profileCopy];
  v12 = [[HDMHLoggingPatternEscalationsManager alloc] initWithProfile:profileCopy];
  v13 = [(HDMHPromptedAssessmentsManager *)self initWithProfile:profileCopy periodicAssessmentsAvailability:availabilityCopy loggingPatternEscalationsAvailability:escalationsAvailabilityCopy periodicAssessmentsManager:v11 loggingPatternEscalationsManager:v12];

  return v13;
}

- (HDMHPromptedAssessmentsManager)initWithProfile:(id)profile periodicAssessmentsAvailability:(id)availability loggingPatternEscalationsAvailability:(id)escalationsAvailability periodicAssessmentsManager:(id)manager loggingPatternEscalationsManager:(id)escalationsManager
{
  profileCopy = profile;
  availabilityCopy = availability;
  escalationsAvailabilityCopy = escalationsAvailability;
  managerCopy = manager;
  escalationsManagerCopy = escalationsManager;
  v29.receiver = self;
  v29.super_class = HDMHPromptedAssessmentsManager;
  v17 = [(HDMHPromptedAssessmentsManager *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    v19 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:availabilityCopy healthDataSource:profileCopy countryCodeSource:0];
    periodicAssessmentsFeatureStatusManager = v18->_periodicAssessmentsFeatureStatusManager;
    v18->_periodicAssessmentsFeatureStatusManager = v19;

    v21 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:escalationsAvailabilityCopy healthDataSource:profileCopy countryCodeSource:0];
    loggingPatternEscalationsFeatureStatusManager = v18->_loggingPatternEscalationsFeatureStatusManager;
    v18->_loggingPatternEscalationsFeatureStatusManager = v21;

    objc_storeStrong(&v18->_periodicAssessmentsManager, manager);
    objc_storeStrong(&v18->_loggingPatternEscalationsManager, escalationsManager);
    v23 = objc_alloc(MEMORY[0x277CCD738]);
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v23 initWithName:v25 loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v18->_observers;
    v18->_observers = v26;
  }

  return v18;
}

- (int64_t)periodicAssessmentPromptCadenceInDaysWithError:(id *)error
{
  v4 = [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager featureStatusWithError:error];
  periodicAssessmentsManager = self->_periodicAssessmentsManager;
  onboardingRecord = [v4 onboardingRecord];
  featureSettings = [onboardingRecord featureSettings];
  v8 = [(HDMHPeriodicPromptedAssessmentsManager *)periodicAssessmentsManager _periodicAssessmentPromptCadenceInDaysWithFeatureSettings:featureSettings];

  return v8;
}

- (id)promptedAssessmentsWithError:(id *)error
{
  v5 = [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager featureStatusWithError:?];
  if (v5)
  {
    periodicAssessmentsManager = self->_periodicAssessmentsManager;
    v18 = 0;
    v7 = [(HDMHPeriodicPromptedAssessmentsManager *)periodicAssessmentsManager promptedAssessment:&v18 featureStatus:v5 error:error];
    v8 = v18;
    v9 = 0;
    if (v7)
    {
      v10 = [(HKFeatureStatusManager *)self->_loggingPatternEscalationsFeatureStatusManager featureStatusWithError:error];
      if (v10)
      {
        loggingPatternEscalationsManager = self->_loggingPatternEscalationsManager;
        v17 = 0;
        v12 = [(HDMHLoggingPatternEscalationsManager *)loggingPatternEscalationsManager promptedAssessment:&v17 featureStatus:v10 pendingStateOfMind:0 error:error];
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

- (void)registerObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HDMHPromptedAssessmentsManager_registerObserver_queue___block_invoke;
  v5[3] = &unk_2798AAB58;
  v5[4] = self;
  [(HKObserverSet *)observers registerObserver:observer queue:queue runIfFirstObserver:v5];
}

- (void)_startObserving
{
  [(HKFeatureStatusManager *)self->_periodicAssessmentsFeatureStatusManager registerObserver:self];
  [(HKFeatureStatusManager *)self->_loggingPatternEscalationsFeatureStatusManager registerObserver:self];
  [(HDMHPeriodicPromptedAssessmentsManager *)self->_periodicAssessmentsManager registerObserver:self];
  loggingPatternEscalationsManager = self->_loggingPatternEscalationsManager;

  [(HDMHLoggingPatternEscalationsManager *)loggingPatternEscalationsManager registerObserver:self];
}

- (void)unregisterObserver:(id)observer
{
  observers = self->_observers;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDMHPromptedAssessmentsManager_unregisterObserver___block_invoke;
  v4[3] = &unk_2798AAB58;
  v4[4] = self;
  [(HKObserverSet *)observers unregisterObserver:observer runIfLastObserver:v4];
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

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v16 = *MEMORY[0x277D85DE8];
  providingCopy = providing;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v8;
    featureIdentifier = [providingCopy featureIdentifier];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = featureIdentifier;
    _os_log_impl(&dword_258977000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Observed change in feature status for %{public}@", &v12, 0x16u);
  }

  [(HDMHPromptedAssessmentsManager *)self _notifyObserversForPromptedAssessmentsUpdate];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)periodicPromptedAssessmentsManagerDidUpdatePromptedAssessment:(id)assessment
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

- (void)loggingPatternEscalationsManagerDidUpdatePromptedAssessment:(id)assessment
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