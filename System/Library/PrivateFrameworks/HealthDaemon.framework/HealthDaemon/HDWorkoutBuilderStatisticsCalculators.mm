@interface HDWorkoutBuilderStatisticsCalculators
- (HDWorkoutBuilderStatisticsCalculators)init;
- (HDWorkoutBuilderStatisticsCalculators)initWithCoder:(id)coder;
- (id)calculatorForQuantityType:(id)type activityUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateCalculatorsForActivityUUID:(id)d handler:(id)handler;
- (void)enumerateCalculatorsForQuantityType:(id)type handler:(id)handler;
- (void)enumerateCalculatorsWithHandler:(id)handler;
- (void)setCalculator:(id)calculator forQuantityType:(id)type activityUUID:(id)d;
@end

@implementation HDWorkoutBuilderStatisticsCalculators

- (HDWorkoutBuilderStatisticsCalculators)init
{
  v6.receiver = self;
  v6.super_class = HDWorkoutBuilderStatisticsCalculators;
  v2 = [(HDWorkoutBuilderStatisticsCalculators *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    calculatorsByTypeAndActivityUUID = v2->_calculatorsByTypeAndActivityUUID;
    v2->_calculatorsByTypeAndActivityUUID = v3;
  }

  return v2;
}

- (id)calculatorForQuantityType:(id)type activityUUID:(id)d
{
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  dCopy = d;
  v7 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID objectForKeyedSubscript:type];
  v8 = [v7 objectForKeyedSubscript:dCopy];

  return v8;
}

- (void)setCalculator:(id)calculator forQuantityType:(id)type activityUUID:(id)d
{
  typeCopy = type;
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  dCopy = d;
  calculatorCopy = calculator;
  v11 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID setObject:v12 forKeyedSubscript:typeCopy];
  }

  v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
  [v13 setObject:calculatorCopy forKeyedSubscript:dCopy];
}

- (void)enumerateCalculatorsWithHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v5 = self->_calculatorsByTypeAndActivityUUID;
  v19 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v6 = *v28;
    v21 = v5;
    v18 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v20 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [(NSMutableDictionary *)selfCopy->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v8];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = [(NSMutableDictionary *)selfCopy->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v8];
              v16 = [v15 objectForKeyedSubscript:v14];
              LODWORD(v14) = handlerCopy[2](handlerCopy, v16, v8, v14);

              if (!v14)
              {

                v5 = v21;
                goto LABEL_18;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v7 = v20 + 1;
        v5 = v21;
        v6 = v18;
      }

      while (v20 + 1 != v19);
      v19 = [(NSMutableDictionary *)v21 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateCalculatorsForQuantityType:(id)type handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:typeCopy];
      v14 = [v13 objectForKeyedSubscript:v12];
      LODWORD(v12) = handlerCopy[2](handlerCopy, v14, v12);

      if (!v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enumerateCalculatorsForActivityUUID:(id)d handler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_calculatorsByTypeAndActivityUUID;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_calculatorsByTypeAndActivityUUID objectForKeyedSubscript:v12];
        v14 = [v13 objectForKeyedSubscript:dCopy];

        if (v14 && !handlerCopy[2](handlerCopy, v14, v12))
        {

          goto LABEL_12;
        }
      }

      v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  calculatorsByTypeAndActivityUUID = self->_calculatorsByTypeAndActivityUUID;
  coderCopy = coder;
  v5 = [(NSMutableDictionary *)calculatorsByTypeAndActivityUUID hk_map:&__block_literal_global_205];
  [coderCopy encodeObject:v5 forKey:@"calculators"];
}

void __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke_2;
  v10[3] = &unk_27862A890;
  v11 = v6;
  v7 = v6;
  v8 = a4;
  v9 = [a3 hk_map:v10];
  v8[2](v8, v7, v9);
}

void __57__HDWorkoutBuilderStatisticsCalculators_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v14 = 0;
  v9 = [a3 archivedRepresentationWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v8[2](v8, v7, v9);
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to archive statistics calculator for type %{public}@ and activity %{public}@, %{public}@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutBuilderStatisticsCalculators)initWithCoder:(id)coder
{
  v60[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = HDWorkoutBuilderStatisticsCalculators;
  v5 = [(HDWorkoutBuilderStatisticsCalculators *)&v49 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v60[0] = objc_opt_class();
    v60[1] = objc_opt_class();
    v60[2] = objc_opt_class();
    v60[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    v8 = [v6 setWithArray:v7];

    v37 = v8;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"calculators"];
    v10 = 0x277CBE000uLL;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    calculatorsByTypeAndActivityUUID = v5->_calculatorsByTypeAndActivityUUID;
    v5->_calculatorsByTypeAndActivityUUID = v11;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v9;
    v33 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v33)
    {
      v13 = *v46;
      v35 = v5;
      v36 = coderCopy;
      v32 = *v46;
      do
      {
        v14 = 0;
        do
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v14;
          v15 = *(*(&v45 + 1) + 8 * v14);
          v16 = objc_alloc_init(*(v10 + 2872));
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v38 = [obj objectForKeyedSubscript:v15];
          v17 = [v38 countByEnumeratingWithState:&v41 objects:v58 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v42;
            while (2)
            {
              v20 = 0;
              do
              {
                if (*v42 != v19)
                {
                  objc_enumerationMutation(v38);
                }

                v21 = *(*(&v41 + 1) + 8 * v20);
                v22 = [obj objectForKeyedSubscript:v15];
                v23 = [v22 objectForKeyedSubscript:v21];
                v40 = 0;
                v24 = [HDStatisticsCollectionCalculator calculatorForArchivedRepresentation:v23 error:&v40];
                v25 = v40;

                if (!v24)
                {
                  _HKInitializeLogging();
                  v27 = *MEMORY[0x277CCC330];
                  v5 = v35;
                  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                  {
                    v30 = v27;
                    v31 = objc_opt_class();
                    *buf = 138544130;
                    v51 = v31;
                    v52 = 2114;
                    v53 = v15;
                    v54 = 2114;
                    v55 = v21;
                    v56 = 2114;
                    v57 = v25;
                    _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "%{public}@: Unable to unarchive calculator for type %{public}@ and activity %{public}@: %{public}@", buf, 0x2Au);
                  }

                  v26 = 0;
                  coderCopy = v36;
                  goto LABEL_22;
                }

                [v16 setObject:v24 forKeyedSubscript:v21];

                ++v20;
              }

              while (v18 != v20);
              v18 = [v38 countByEnumeratingWithState:&v41 objects:v58 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v5 = v35;
          [(NSMutableDictionary *)v35->_calculatorsByTypeAndActivityUUID setObject:v16 forKeyedSubscript:v15];

          v14 = v34 + 1;
          coderCopy = v36;
          v10 = 0x277CBE000;
          v13 = v32;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v33);
    }
  }

  v26 = v5;
LABEL_22:

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

@end