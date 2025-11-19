@interface _DPPrivacyBudgetProperties
+ (_DPPrivacyBudgetProperties)budgetPropertiesWithName:(id)a3 fromDictionary:(id)a4;
+ (id)budgetMaintenanceSchedule;
+ (id)budgetPropertiesForKey:(id)a3;
+ (id)budgetPropertiesFromFile:(id)a3;
+ (void)initializeAllBudgetProperties;
- (_DPPrivacyBudgetProperties)initWithName:(id)a3 dictionary:(id)a4;
- (id)description;
@end

@implementation _DPPrivacyBudgetProperties

- (_DPPrivacyBudgetProperties)initWithName:(id)a3 dictionary:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = _DPPrivacyBudgetProperties;
  v9 = [(_DPPrivacyBudgetProperties *)&v44 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_38;
  }

  objc_storeStrong(&v9->_name, a3);
  v11 = [v8 objectForKeyedSubscript:@"SessionSeconds"];
  objc_storeStrong(&v10->_interval, v11);
  v12 = [v8 objectForKeyedSubscript:@"SessionAmount"];
  objc_storeStrong(&v10->_intervalBudgetValue, v12);
  v13 = [v8 objectForKeyedSubscript:@"RefillInterval"];
  objc_storeStrong(&v10->_refillInterval, v13);
  v14 = [v8 objectForKeyedSubscript:@"RefillAmount"];
  objc_storeStrong(&v10->_refillAmount, v14);
  v15 = [v8 objectForKeyedSubscript:@"CohortAggregateSessionAmount"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &unk_283976338;
  }

  objc_storeStrong(&v10->_intervalCohortAggregateBudgetValue, v17);
  if (!v10->_name || !v10->_interval || !v10->_intervalBudgetValue || !v10->_refillInterval || !v10->_refillAmount)
  {
    goto LABEL_30;
  }

  v18 = [v8 objectForKeyedSubscript:@"SessionChunks"];
  v43 = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &unk_283976018;
  }

  objc_storeStrong(&v10->_intervalChunksValue, v19);
  v20 = [(NSNumber *)v10->_interval unsignedLongLongValue];
  if (v20 < kSecondsInOneDay)
  {
    v21 = +[_DPLog framework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      name = v10->_name;
      interval = v10->_interval;
      *buf = 138412802;
      v46 = name;
      v47 = 2112;
      v48 = interval;
      v49 = 2048;
      v50 = kSecondsInOneDay;
      v24 = "%@: _interval=%@ ; budgetIntervalSecondsMIN()=%lld";
LABEL_27:
      v33 = v21;
      v34 = 32;
LABEL_28:
      _os_log_impl(&dword_22622D000, v33, OS_LOG_TYPE_INFO, v24, buf, v34);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if ([(NSNumber *)v10->_intervalBudgetValue unsignedLongLongValue]< 0x15)
  {
    if (![(NSNumber *)v10->_intervalChunksValue unsignedLongLongValue]|| [(NSNumber *)v10->_intervalChunksValue unsignedLongLongValue]>= 0x12D)
    {
      v21 = +[_DPLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = v10->_name;
        intervalChunksValue = v10->_intervalChunksValue;
        *buf = 138412802;
        v46 = v27;
        v47 = 2112;
        v48 = intervalChunksValue;
        v49 = 2048;
        v50 = 300;
        v24 = "%@: _intervalChunksValue=%@ ; chunksValueInIntervalMAX()=%lld";
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (![(NSNumber *)v10->_refillInterval unsignedLongLongValue]|| (v29 = [(NSNumber *)v10->_interval unsignedIntegerValue], v29 < [(NSNumber *)v10->_refillInterval unsignedIntegerValue]))
    {
      v21 = +[_DPLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v30 = v10->_name;
        v31 = v10->_interval;
        refillInterval = v10->_refillInterval;
        *buf = 138412802;
        v46 = v30;
        v47 = 2112;
        v48 = v31;
        v49 = 2112;
        v50 = refillInterval;
        v24 = "%@:  _interval=%@ ; _refillInterval=%@";
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if ([(NSNumber *)v10->_refillAmount unsignedIntegerValue]>= 0x65)
    {
      v21 = +[_DPLog framework];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v36 = v10->_name;
      refillAmount = v10->_refillAmount;
      *buf = 138412802;
      v46 = v36;
      v47 = 2048;
      v48 = 100;
      v49 = 2112;
      v50 = refillAmount;
      v24 = "%@: _kDPMaxRefillAmount=%lu ; _refillAmount=%@";
      goto LABEL_27;
    }

    [(NSNumber *)v10->_intervalCohortAggregateBudgetValue doubleValue];
    if (v38 < 0.0)
    {
      v21 = +[_DPLog framework];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_29;
      }

      v39 = v10->_name;
      intervalCohortAggregateBudgetValue = v10->_intervalCohortAggregateBudgetValue;
      *buf = 138412546;
      v46 = v39;
      v47 = 2112;
      v48 = intervalCohortAggregateBudgetValue;
      v24 = "%@: _intervalCohortAggregateBudgetValue=%@";
      v33 = v21;
      v34 = 22;
      goto LABEL_28;
    }

LABEL_38:
    v35 = v10;
    goto LABEL_39;
  }

  v21 = +[_DPLog framework];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v25 = v10->_name;
    intervalBudgetValue = v10->_intervalBudgetValue;
    *buf = 138412802;
    v46 = v25;
    v47 = 2112;
    v48 = intervalBudgetValue;
    v49 = 2048;
    v50 = 20;
    v24 = "%@: _intervalBudgetValue=%@ ; budgetValueInIntervalMAX()=%lld";
    goto LABEL_27;
  }

LABEL_29:

LABEL_30:
  v35 = 0;
LABEL_39:

  v41 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (_DPPrivacyBudgetProperties)budgetPropertiesWithName:(id)a3 fromDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 dictionary:v6];

  return v8;
}

+ (void)initializeAllBudgetProperties
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[_DPStrings budgetPropertiesPath];
  v4 = [_DPPrivacyBudgetProperties budgetPropertiesFromFile:v3];

  objc_autoreleasePoolPop(v2);
}

+ (id)budgetPropertiesForKey:(id)a3
{
  v3 = a3;
  v4 = +[_DPStrings budgetPropertiesPath];
  v5 = [_DPPrivacyBudgetProperties budgetPropertiesFromFile:v4];

  v6 = [v5 objectForKeyedSubscript:v3];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { name=%@  interval=%@ ; intervalBudgetValue=%@ ; intervalCohortAggregateBudgetValue=%@ ; refillInterval=%@ ; refillAmount=%@ }", v5, self->_name, self->_interval, self->_intervalBudgetValue, self->_intervalCohortAggregateBudgetValue, self->_refillInterval, self->_refillAmount];;

  return v6;
}

+ (id)budgetPropertiesFromFile:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55___DPPrivacyBudgetProperties_budgetPropertiesFromFile___block_invoke;
  v10[3] = &unk_27858ABB8;
  v11 = v4;
  v12 = a1;
  v5 = budgetPropertiesFromFile__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&budgetPropertiesFromFile__onceToken, v10);
  }

  v7 = gAllBudgetProperties;
  v8 = gAllBudgetProperties;

  return v7;
}

+ (id)budgetMaintenanceSchedule
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [gAllBudgetProperties allValues];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 interval];
        v10 = [v8 name];
        if (v10)
        {
          v11 = [v2 objectForKeyedSubscript:v9];
          if (v11)
          {
            v12 = v11;
            [v11 addObject:v10];
          }

          else
          {
            v12 = [MEMORY[0x277CBEB58] setWithObject:v10];
            [v2 setObject:v12 forKeyedSubscript:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v2;
}

@end