@interface HMDNotificationConditionConverter
+ (BOOL)_isTimePredicate:(id)a3;
+ (id)_presencePredicatesFromPredicate:(id)a3;
+ (id)_sunriseSunsetTimePeriodElementFromComparisonPredicate:(id)a3;
+ (id)_timeOfDayTimePeriodElementFromComparisonPredicate:(id)a3;
+ (id)_timePredicatesFromPredicate:(id)a3;
+ (id)conditionsFromPredicate:(id)a3;
+ (id)logCategory;
+ (id)negateOffsetDateComponents:(id)a3;
+ (id)predicateFromPresenceCondition:(id)a3;
+ (id)predicateFromTimePeriodCondition:(id)a3;
+ (id)predicatesFromConditions:(id)a3;
+ (id)presenceNotificationConditionFromPredicate:(id)a3;
+ (id)timePeriodNotificationConditionFromPredicate:(id)a3;
@end

@implementation HMDNotificationConditionConverter

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_200717 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_200717, &__block_literal_global_38_200718);
  }

  v3 = logCategory__hmf_once_v22_200719;

  return v3;
}

void __48__HMDNotificationConditionConverter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22_200719;
  logCategory__hmf_once_v22_200719 = v1;
}

+ (id)predicateFromTimePeriodCondition:(id)a3
{
  v62[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 startElement];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v4 endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v9 hour];
    v14 = [v9 minute] + 60 * v13;
    v15 = [v12 hour];
    v16 = [v12 minute] + 60 * v15;
    v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v17 setHour:{objc_msgSend(v9, "hour")}];
    v18 = [v9 minute];

    [v17 setMinute:v18];
    v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v19 setHour:{objc_msgSend(v12, "hour")}];
    v20 = [v12 minute];

    [v19 setMinute:v20];
    v21 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterDateWithComponents:v17];
    v22 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeDateWithComponents:v19];
    v57 = MEMORY[0x277D85DD0];
    v58 = v14;
    if (v14 <= v16)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v24 = objc_alloc(MEMORY[0x277CCA920]);
    v62[0] = v21;
    v62[1] = v22;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:{2, v57, 3221225472, __70__HMDNotificationConditionConverter_predicateFromTimePeriodCondition___block_invoke, &__block_descriptor_48_e5_Q8__0l, v58, v16}];
    v26 = [v24 initWithType:v23 subpredicates:v25];

    goto LABEL_12;
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    v28 = [v4 startElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v17 = v29;

    v30 = [v4 endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v19 = v31;

    v32 = [v17 significantEvent];
    v33 = *MEMORY[0x277CD0FA8];
    if ([v32 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      v34 = [v19 significantEvent];
      v35 = *MEMORY[0x277CD0FB0];
      v36 = [v34 isEqualToString:*MEMORY[0x277CD0FB0]];

      if (v36)
      {
        v37 = 1;
LABEL_32:
        v43 = objc_alloc(MEMORY[0x277CD1E00]);
        v44 = [v17 significantEvent];
        v45 = [v17 offset];
        v21 = [v43 initWithSignificantEvent:v44 offset:v45];

        v22 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterSignificantEvent:v21];
        v46 = objc_alloc(MEMORY[0x277CD1E00]);
        v47 = [v19 significantEvent];
        v48 = [v19 offset];
        v49 = [v46 initWithSignificantEvent:v47 offset:v48];

        v50 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:v49];
        v51 = objc_alloc(MEMORY[0x277CCA920]);
        v59[0] = v22;
        v59[1] = v50;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        v26 = [v51 initWithType:v37 subpredicates:v52];

LABEL_12:
LABEL_13:

        goto LABEL_25;
      }
    }

    else
    {

      v35 = *MEMORY[0x277CD0FB0];
    }

    v40 = [v17 significantEvent];
    if ([v40 isEqualToString:v35])
    {
      v41 = [v19 significantEvent];
      v42 = [v41 isEqualToString:v33];

      if (v42)
      {
        v37 = 2;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v53 = objc_autoreleasePoolPush();
    v54 = a1;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v56;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Start & end are either both sunrise or both sunset, this is unsupported", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v53);
    v26 = 0;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_25:

  v38 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __70__HMDNotificationConditionConverter_predicateFromTimePeriodCondition___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) <= *(a1 + 40))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)predicateFromPresenceCondition:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 presenceEventType];
  [v3 presenceEventUserType];
  v4 = [v3 userUUIDs];

  v5 = [v4 na_map:&__block_literal_global_25_200734];

  v6 = presenceTypeForEventTypeAndGranularity();
  v7 = [MEMORY[0x277CD1D28] activationGranularityWithValue:granularityForEventType()];
  v8 = MEMORY[0x277CBEB38];
  v25[0] = *MEMORY[0x277CD2340];
  v9 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  v10 = [v9 UUIDString];
  v11 = *MEMORY[0x277CD22A0];
  v26[0] = v10;
  v26[1] = &unk_283E73D90;
  v12 = *MEMORY[0x277CD22F0];
  v25[1] = v11;
  v25[2] = v12;
  v13 = *MEMORY[0x277CD24C8];
  v26[2] = *MEMORY[0x277CD2308];
  v26[3] = v6;
  v14 = *MEMORY[0x277CD24C0];
  v25[3] = v13;
  v25[4] = v14;
  v15 = [v7 number];
  v26[4] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v17 = [v8 dictionaryWithDictionary:v16];

  if (([v5 hmf_isEmpty] & 1) == 0)
  {
    v18 = [v5 allObjects];
    [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD24D0]];
  }

  v19 = MEMORY[0x277CCAC30];
  v20 = *MEMORY[0x277CD0C40];
  v21 = [v17 copy];
  v22 = [v19 predicateWithFormat:@"%K = %@", v20, v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)negateOffsetDateComponents:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  if ([v3 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setMinute:{-objc_msgSend(v3, "minute")}];
  }

  if ([v3 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setHour:{-objc_msgSend(v3, "hour")}];
  }

  return v4;
}

+ (id)_timeOfDayTimePeriodElementFromComparisonPredicate:(id)a3
{
  v3 = a3;
  if ([v3 predicateOperatorType] > 4)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v4 = [v3 leftExpression];
  v5 = [v3 rightExpression];
  if ([v4 expressionType] != 4)
  {
    goto LABEL_10;
  }

  v6 = [v4 function];
  if ([v6 isEqualToString:@"now"] && !objc_msgSend(v5, "expressionType"))
  {
    v8 = [v5 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v5 constantValue];
      v7 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:]([HMDTimeOfDayTimePeriodElement alloc], "initWithHour:minute:", [v6 hour], objc_msgSend(v6, "minute"));
      goto LABEL_6;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_6:

LABEL_11:
LABEL_12:

  return v7;
}

+ (id)_sunriseSunsetTimePeriodElementFromComparisonPredicate:(id)a3
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 predicateOperatorType] > 3)
  {
    v23 = 0;
  }

  else
  {
    v5 = [v4 leftExpression];
    if ([v5 expressionType] != 3)
    {
      goto LABEL_21;
    }

    v6 = *MEMORY[0x277CD0FB0];
    v28[0] = *MEMORY[0x277CD0FA8];
    v28[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v8 = [v5 keyPath];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [v5 keyPath];
      v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v12 = [v4 rightExpression];
      if ([v12 expressionType] == 4)
      {
        v13 = [v12 function];
        v14 = [v13 isEqualToString:@"add:to:"];

        if (v14)
        {
          v15 = [v12 arguments];
          v16 = [v15 firstObject];
          if ([v16 expressionType] == 4)
          {
            v17 = [v16 function];
            v18 = [v17 isEqualToString:@"now"];

            if (v18)
            {
              v19 = [v15 lastObject];
              if (![v19 expressionType])
              {
                [v19 constantValue];
                v20 = v27 = v19;
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v19 = v27;
                  v26 = [v27 constantValue];
                  if ([v26 hour] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v26, "minute") != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v22 = [v27 constantValue];

                    if ([v22 hour] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v22, "hour"))
                    {
                      [v22 setHour:0x7FFFFFFFFFFFFFFFLL];
                    }

                    if ([v22 minute] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v22, "minute"))
                    {
                      [v22 setMinute:0x7FFFFFFFFFFFFFFFLL];
                    }

                    v11 = [a1 negateOffsetDateComponents:v22];

                    v19 = v27;
                  }
                }

                else
                {
                  v19 = v27;
                }
              }
            }
          }
        }
      }

      v23 = [[HMDSunriseSunsetTimePeriodElement alloc] initWithSignificantEvent:v10 offset:v11];
    }

    else
    {
LABEL_21:
      v23 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)_timePredicatesFromPredicate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if ([a1 _isTimePredicate:v6])
    {
      [v5 addObject:v6];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [v6 subpredicates];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [a1 _timePredicatesFromPredicate:*(*(&v16 + 1) + 8 * i)];
            [v5 unionSet:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  v13 = [v5 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_isTimePredicate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5 && ([v5 subpredicates], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 2))
  {
    v9 = [v6 subpredicates];
    v10 = [v9 na_filter:&__block_literal_global_14_200754];

    v11 = [v10 count] == 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __54__HMDNotificationConditionConverter__isTimePredicate___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 leftExpression];
    v7 = [v5 rightExpression];
    if ([v6 expressionType] == 4)
    {
      v8 = [v6 function];
      if ([v8 isEqualToString:@"now"] && !objc_msgSend(v7, "expressionType"))
      {
        v17 = [v7 constantValue];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }

    if ([v6 expressionType] == 3)
    {
      v11 = *MEMORY[0x277CD0FB0];
      v18[0] = *MEMORY[0x277CD0FA8];
      v18[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      v13 = [v6 keyPath];
      v14 = [v12 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v10 = isKindOfClass | v14;
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

+ (id)_presencePredicatesFromPredicate:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v4 subpredicates];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a1 _presencePredicatesFromPredicate:*(*(&v22 + 1) + 8 * i)];
          [v5 unionSet:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v4;
      v13 = [v12 rightExpression];
      v14 = [v12 leftExpression];
      if ([v14 expressionType] == 3)
      {
        v15 = [v14 keyPath];
        v16 = [v15 isEqualToString:*MEMORY[0x277CD0C40]];

        if (v16)
        {
          if (![v13 expressionType])
          {
            v17 = [v13 constantValue];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v5 addObject:v12];
            }
          }
        }
      }
    }
  }

  v19 = [v5 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)timePeriodNotificationConditionFromPredicate:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _timePredicatesFromPredicate:v4];
  if ([v5 hmf_isEmpty])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v9;
      v10 = "%{public}@No time predicate found to convert.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_7:
      _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v5 count] >= 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v9;
      v37 = 2112;
      v38 = v5;
      v10 = "%{public}@Expected at most 1 time predicate, found: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    v14 = 0;
    goto LABEL_30;
  }

  v15 = [v5 allObjects];
  v16 = [v15 firstObject];

  v17 = objc_autoreleasePoolPush();
  v18 = a1;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v20;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Converting time range predicate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__HMDNotificationConditionConverter_timePeriodNotificationConditionFromPredicate___block_invoke;
  aBlock[3] = &__block_descriptor_40_e53___HMDTimePeriodElement_16__0__NSComparisonPredicate_8l;
  aBlock[4] = v18;
  v21 = _Block_copy(aBlock);
  v22 = [v16 subpredicates];
  v23 = [v22 objectAtIndexedSubscript:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = v21[2](v21, v25);
    if (v26)
    {
      v27 = [v16 subpredicates];
      v28 = [v27 objectAtIndexedSubscript:1];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if (v30)
      {
        v31 = v21[2](v21, v30);
        if (v31)
        {
          v14 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v26 endElement:v31];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_30:
  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

id __82__HMDNotificationConditionConverter_timePeriodNotificationConditionFromPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _timeOfDayTimePeriodElementFromComparisonPredicate:v3];
  if (!v4)
  {
    v4 = [*(a1 + 32) _sunriseSunsetTimePeriodElementFromComparisonPredicate:v3];
  }

  return v4;
}

+ (id)presenceNotificationConditionFromPredicate:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _presencePredicatesFromPredicate:v4];
  if ([v5 hmf_isEmpty])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v9;
      v10 = "%{public}@No presence predicate found to convert.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_7:
      _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v5 count] >= 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v9;
      v37 = 2112;
      v38 = v5;
      v10 = "%{public}@Expected at most 1 presence predicate, found: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    v14 = 0;
    goto LABEL_12;
  }

  v34 = v4;
  v15 = [v5 allObjects];
  v16 = [v15 firstObject];

  v17 = objc_autoreleasePoolPush();
  v18 = a1;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v20;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Converting presence predicate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [v16 rightExpression];
  v22 = [v21 constantValue];

  v23 = [v22 hmf_stringForKey:*MEMORY[0x277CD24C8]];
  v33 = [MEMORY[0x277CD1D28] activationGranularityWithDict:v22];
  [v33 value];
  v24 = [v22 hmf_arrayForKey:*MEMORY[0x277CD24D0]];
  v25 = [v24 na_map:&__block_literal_global_200767];
  v26 = eventTypeForPresenceTypeAndGranularity();
  v27 = userTypeForPresenceTypeAndGranularity();
  v28 = [HMDPresenceNotificationCondition alloc];
  [MEMORY[0x277CBEB98] setWithArray:v25];
  v30 = v29 = v16;
  v14 = [(HMDPresenceNotificationCondition *)v28 initWithPresenceEventType:v26 presenceEventUserType:v27 userUUIDs:v30];

  v4 = v34;
LABEL_12:

  v31 = *MEMORY[0x277D85DE8];

  return v14;
}

id __80__HMDNotificationConditionConverter_presenceNotificationConditionFromPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (id)predicatesFromConditions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HMDNotificationConditionConverter_predicatesFromConditions___block_invoke;
  v12[3] = &__block_descriptor_40_e34__16__0__HMDNotificationCondition_8l;
  v12[4] = a1;
  v5 = [v4 na_map:v12];
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Converted conditions: %@ to predicates: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

id __62__HMDNotificationConditionConverter_predicatesFromConditions___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v4 predicateFromTimePeriodCondition:v7];
LABEL_11:
    v12 = v8;

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    v8 = [v9 predicateFromPresenceCondition:v7];
    goto LABEL_11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unsupported condition: %@ when converting to predicate", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)conditionsFromPredicate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [a1 presenceNotificationConditionFromPredicate:v4];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [a1 timePeriodNotificationConditionFromPredicate:v4];
    if (v7)
    {
      [v5 addObject:v7];
    }

    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Converted predicate: %@ to conditions: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v5 copy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Predicate is nil, nothing to convert", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

@end