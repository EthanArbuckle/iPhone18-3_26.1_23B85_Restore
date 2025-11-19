@interface HDFeatureAvailabilityHealthDataRequirementEvaluationManager
- (BOOL)registerObserver:(id)a3 forRequirements:(id)a4 queue:(id)a5 error:(id *)a6;
- (HDFeatureAvailabilityHealthDataRequirementEvaluationManager)initWithProfile:(id)a3;
- (id)_evaluatorForRequirement:(void *)a3 error:;
- (id)evaluationOfRequirements:(id)a3 error:(id *)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation HDFeatureAvailabilityHealthDataRequirementEvaluationManager

- (HDFeatureAvailabilityHealthDataRequirementEvaluationManager)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDFeatureAvailabilityHealthDataRequirementEvaluationManager;
  v5 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    lock_observedRequirementsByObserver = v6->_lock_observedRequirementsByObserver;
    v6->_lock_observedRequirementsByObserver = v7;
  }

  return v6;
}

- (id)evaluationOfRequirements:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v35)
  {
    v8 = *v37;
    v28 = a4;
    v29 = *v37;
    v30 = self;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = v10;
        if (!self)
        {

LABEL_27:
          v25 = 0;
          goto LABEL_28;
        }

        v12 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v10 error:a4];
        v13 = v12;
        if (v12)
        {
          v40 = 0;
          v14 = [v12 isRequirementSatisfied:v11 error:&v40];
          v15 = v40;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v34 = [objc_opt_class() requirementIdentifier];
            _HKInitializeLogging();
            v17 = HKLogInfrastructure();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v47 = self;
              v48 = 2114;
              v49 = v34;
              v50 = 2114;
              v51 = v15;
              _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Error evaluating requirement %{public}@: %{public}@", buf, 0x20u);
            }

            v18 = MEMORY[0x277CCA9B8];
            if (v15)
            {
              v19 = [v15 domain];
              v32 = [v15 code];
              v31 = [v15 userInfo];
              v44 = @"HKFeatureAvailabilityRequirementIdentifier";
              v45 = v34;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
              [v31 hk_dictionaryByAddingEntriesFromDictionary:v20];
              v22 = v21 = v7;
              v23 = [v18 errorWithDomain:v19 code:v32 userInfo:v22];

              v7 = v21;
              a4 = v28;
            }

            else
            {
              v42 = @"HKFeatureAvailabilityRequirementIdentifier";
              v43 = v34;
              v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v23 = [v18 hk_error:2000 userInfo:v19];
            }

            v15 = v23;
            v8 = v29;
            self = v30;
            if (v15)
            {
              if (a4)
              {
                v24 = v15;
                *a4 = v15;
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
          v14 = 0;
        }

        if (!v14)
        {
          goto LABEL_27;
        }

        [v7 setObject:v14 forKeyedSubscript:v11];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v25 = [v7 copy];
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_evaluatorForRequirement:(void *)a3 error:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained((a1 + 8));
      v8 = [v7 profileExtensionsConformingToProtocol:{&unk_283D71798, v23}];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v23 + 1) + 8 * i) evaluatorForRequirement:{v5, v23}];
          if (v13)
          {
            v20 = v13;
            goto LABEL_21;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = [objc_opt_class() requirementIdentifier];
    _HKInitializeLogging();
    v14 = HKLogInfrastructure();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v30 = a1;
      v31 = 2114;
      v32 = v8;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] No evaluator found for requirement %{public}@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v27 = @"HKFeatureAvailabilityRequirementIdentifier";
    v28 = v8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v17 = [v15 hk_error:3 userInfo:v16];

    v18 = v17;
    if (v18)
    {
      if (a3)
      {
        v19 = v18;
        *a3 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = 0;
LABEL_21:
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)registerObserver:(id)a3 forRequirements:(id)a4 queue:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 count])
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = self;
      v40 = 2114;
      v41 = v10;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering %{public}@ for changes", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    v14 = [(NSMapTable *)self->_lock_observedRequirementsByObserver objectForKey:v10];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277CBEB98] set];
    }

    v18 = v16;

    v31 = v18;
    v32 = v11;
    [v11 hk_minus:v18];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v36 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * i);
          v25 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v24 error:a6];
          if (!v25)
          {
            v17 = 0;
            v28 = v19;
            v27 = v31;
            goto LABEL_18;
          }

          v26 = v25;
          [v25 registerObserver:v10 forRequirement:v24 queue:v12];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v27 = v31;
    v28 = [v31 setByAddingObjectsFromSet:v19];
    [(NSMapTable *)self->_lock_observedRequirementsByObserver setObject:v28 forKey:v10];
    v17 = 1;
LABEL_18:
    os_unfair_lock_unlock(&self->_lock);

    v11 = v32;
  }

  else
  {
    v17 = 1;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)unregisterObserver:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering %{public}@ from changes", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMapTable *)self->_lock_observedRequirementsByObserver objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self _evaluatorForRequirement:v12 error:0];
          [v13 unregisterObserver:v4 forRequirement:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(NSMapTable *)self->_lock_observedRequirementsByObserver removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

@end