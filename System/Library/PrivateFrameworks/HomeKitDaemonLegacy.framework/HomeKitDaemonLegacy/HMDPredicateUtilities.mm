@interface HMDPredicateUtilities
+ (NSSet)predicateCodingClasses;
+ (id)decodePredicateFromData:(id)a3 error:(id *)a4;
+ (id)encodePredicate:(id)a3 error:(id *)a4;
+ (id)filteredPredicate:(id)a3 withUserUUIDs:(id)a4;
+ (id)logCategory;
+ (id)unarchiveFromData:(id)a3 error:(id *)a4;
- (BOOL)containsPresenceEvents:(id)a3;
- (HMDHome)home;
- (HMDPredicateUtilities)initWithHome:(id)a3 logIdentifier:(id)a4 homePresenceProvider:(id)a5;
- (id)_updatePredicate:(id)a3 staleCharacteristicInCurrentPredicate:(BOOL *)a4 accessory:(id)a5 conditionModified:(BOOL *)a6;
- (id)addDeltaToNow:(id)a3;
- (id)comparePresence:(id)a3 operatorType:(id)a4 homePresence:(id)a5;
- (id)dateTodayMatchingComponents:(id)a3;
- (id)generateAnalyticsData:(id)a3;
- (id)predicateWithoutStaleCharacteristicsFromPredicate:(id)a3 accessory:(id)a4 conditionModified:(BOOL *)a5;
- (id)rewriteNowAdjustedForHomeTimeZone:(id)a3;
- (id)rewritePredicate:(id)a3 currentCharacteristicInPredicate:(id *)a4 characteristicsToRead:(id)a5 homePresence:(id)a6;
- (id)sunrise;
- (id)sunset;
- (id)updatePredicate:(id)a3 currentCharacteristicInPredicate:(id *)a4 conditionModified:(BOOL *)a5 removedCharacteristic:(id)a6 underService:(id)a7 underAccessory:(id)a8;
- (id)updatePredicate:(id)a3 removedUser:(id)a4 conditionModified:(BOOL *)a5;
- (void)fillAnalyticsData:(id)a3 forPredicate:(id)a4;
@end

@implementation HMDPredicateUtilities

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)fillAnalyticsData:(id)a3 forPredicate:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = [v7 subpredicates];
    v9 = [v8 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(HMDPredicateUtilities *)self fillAnalyticsData:v6 forPredicate:*(*(&v50 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v10);
    }

    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v13 = [v8 rightExpression];
    v14 = [v8 leftExpression];
    if ([v13 expressionType] == 4)
    {
      v15 = [v13 function];
      v16 = [v15 isEqualToString:@"add:to:"];

      if (v16)
      {
        v17 = [v13 arguments];
        v18 = [v17 objectAtIndexedSubscript:0];
        if ([v18 expressionType] != 4)
        {
          goto LABEL_51;
        }

        v19 = [v18 function];
        v20 = [v19 isEqualToString:@"now"];

        if (!v20)
        {
          goto LABEL_51;
        }

        v21 = [v17 objectAtIndexedSubscript:1];
        if (![v21 expressionType])
        {
          v22 = [v21 constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) != 0 && [v14 expressionType] == 3)
          {
            v24 = [v14 keyPath];
            if ([v24 isEqualToString:*MEMORY[0x277CD0FA8]])
            {

              if (!v6)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v46 = [v14 keyPath];
              v49 = [v46 isEqualToString:*MEMORY[0x277CD0FB0]];

              if (!v6 || !v49)
              {
                goto LABEL_50;
              }
            }

            v6[11] = 1;
            v6[10] = 1;
          }
        }

LABEL_50:

LABEL_51:
        goto LABEL_52;
      }
    }

    if ([v14 expressionType] == 4 && (objc_msgSend(v14, "function"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"now"), v25, v26))
    {
      if (v6)
      {
        v27 = 8;
LABEL_46:
        v6[v27] = 1;
      }
    }

    else if ([v13 expressionType] == 4 && (objc_msgSend(v13, "function"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", @"now"), v28, v29))
    {
      if ([v14 expressionType] == 3)
      {
        v30 = [v14 keyPath];
        if ([v30 isEqualToString:*MEMORY[0x277CD0FA8]])
        {

          if (!v6)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v44 = [v14 keyPath];
          v45 = [v44 isEqualToString:*MEMORY[0x277CD0FB0]];

          if (!v6 || !v45)
          {
            goto LABEL_52;
          }
        }

        v27 = 10;
        goto LABEL_46;
      }
    }

    else
    {
      if ([v14 expressionType] != 3 || (objc_msgSend(v14, "keyPath"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", *MEMORY[0x277CCF6A8]), v31, !v32))
      {
        if ([v14 expressionType] == 3)
        {
          v33 = [v14 keyPath];
          v34 = [v33 isEqualToString:*MEMORY[0x277CD0C40]];

          if (v34)
          {
            v35 = [v8 rightExpression];

            if (![v35 expressionType])
            {
              v36 = [v35 constantValue];
              objc_opt_class();
              v37 = objc_opt_isKindOfClass();

              if (v37)
              {
                v38 = [(HMDPredicateUtilities *)self home];
                v48 = [v35 constantValue];
                v39 = [HMDPresenceEventModel eventModelWithDictionary:"eventModelWithDictionary:home:eventTriggerUUID:message:" home:? eventTriggerUUID:? message:?];
                v40 = [[HMDPresenceEvent alloc] initWithModel:v39 home:v38];
                if (v6)
                {
                  v41 = *(v6 + 2);
                }

                else
                {
                  v41 = 0;
                }

                v42 = v41;
                v43 = [(HMDPresenceEvent *)v40 analyticsPresenceEventData];
                [v42 addObject:v43];
              }
            }

            v13 = v35;
          }
        }

        goto LABEL_52;
      }

      if (v6)
      {
        v27 = 9;
        goto LABEL_46;
      }
    }

LABEL_52:

LABEL_53:
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)generateAnalyticsData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDAnalyticsPredicateData);
  [(HMDPredicateUtilities *)self fillAnalyticsData:v5 forPredicate:v4];

  return v5;
}

- (BOOL)containsPresenceEvents:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v4 subpredicates];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      isKindOfClass = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if (isKindOfClass)
          {
            isKindOfClass = 1;
          }

          else
          {
            isKindOfClass = [(HMDPredicateUtilities *)self containsPresenceEvents:*(*(&v19 + 1) + 8 * i)];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
      v12 = [v11 rightExpression];
      v13 = [v11 leftExpression];
      if ([v13 expressionType] == 3 && (objc_msgSend(v13, "keyPath"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277CD0C40]), v14, v15) && !objc_msgSend(v12, "expressionType"))
      {
        v18 = [v12 constantValue];
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
  }

  v16 = *MEMORY[0x277D85DE8];
  return isKindOfClass & 1;
}

- (id)dateTodayMatchingComponents:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 components:124 fromDate:v5];
  [v7 setHour:{objc_msgSend(v4, "hour")}];
  v8 = [v4 minute];

  [v7 setMinute:v8];
  v9 = [v6 dateFromComponents:v7];

  return v9;
}

- (id)addDeltaToNow:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 date];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v6 setTimeZone:v7];

  v8 = [v6 dateByAddingComponents:v4 toDate:v5 options:0];

  return v8;
}

- (id)rewriteNowAdjustedForHomeTimeZone:(id)a3
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateStyle:4];
  [v7 setTimeStyle:4];
  [v7 setTimeZone:v4];
  [v7 setDateFormat:@"HH"];
  v8 = [v7 stringFromDate:v6];
  [v5 setHour:{objc_msgSend(v8, "intValue")}];

  [v7 setDateFormat:@"mm"];
  v9 = [v7 stringFromDate:v6];
  [v5 setMinute:{objc_msgSend(v9, "intValue")}];

  [v5 setTimeZone:v4];
  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'dateTodayMatchingComponents:', %@)", v5];

  return v10;
}

- (id)_updatePredicate:(id)a3 staleCharacteristicInCurrentPredicate:(BOOL *)a4 accessory:(id)a5 conditionModified:(BOOL *)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v10;
      v23 = [v22 rightExpression];
      v24 = [v22 leftExpression];
      if ([v24 expressionType] == 3 && (objc_msgSend(v24, "keyPath"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", *MEMORY[0x277CCF6A8]), v25, v26))
      {
        if (![v23 expressionType])
        {
          v27 = [v23 constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v29 = [v23 constantValue];
            v49 = [v29 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
            v30 = [v29 hmf_numberForKey:*MEMORY[0x277CD25F8]];
            v47 = HAPInstanceIDFromValue();

            v46 = v29;
            v31 = [v29 hmf_numberForKey:*MEMORY[0x277CD2140]];
            v32 = HAPInstanceIDFromValue();

            v33 = [v11 uuid];
            v45 = v32;
            if ([v33 isEqual:v49])
            {
              v34 = [v11 findCharacteristic:v32 forService:v47];

              if (!v34)
              {
                v51 = v10;
                v35 = objc_autoreleasePoolPush();
                v36 = self;
                v37 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v38 = v36;
                  v40 = v39 = v35;
                  *buf = 138543618;
                  v57 = v40;
                  v58 = 2112;
                  v59 = v22;
                  _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Removing predicate %@ because referenced characteristic no longer exists", buf, 0x16u);

                  v35 = v39;
                  v36 = v38;
                }

                objc_autoreleasePoolPop(v35);
                *a4 = 1;
                *a6 = 1;

                v10 = v51;
                goto LABEL_30;
              }
            }

            else
            {
            }
          }
        }
      }

      else if ([v24 expressionType] == 3)
      {
        v41 = [v24 keyPath];
        v42 = [v41 isEqualToString:*MEMORY[0x277CCFBD0]];

        if (v42)
        {
          if (![v23 expressionType] && *a4)
          {
            *a4 = 0;
            *a6 = 1;
LABEL_30:

            v21 = 0;
            goto LABEL_35;
          }
        }
      }
    }

    v21 = v10;
    goto LABEL_35;
  }

  v50 = v10;
  v12 = v10;
  v13 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v12;
  v14 = [v12 subpredicates];
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(HMDPredicateUtilities *)self _updatePredicate:*(*(&v52 + 1) + 8 * i) staleCharacteristicInCurrentPredicate:a4 accessory:v11 conditionModified:a6];
        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v20 = v48;
    v21 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v48 subpredicates:{"compoundPredicateType"), v13}];
  }

  else
  {
    v21 = 0;
    v20 = v48;
  }

  v10 = v50;
LABEL_35:

  v43 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)predicateWithoutStaleCharacteristicsFromPredicate:(id)a3 accessory:(id)a4 conditionModified:(BOOL *)a5
{
  v7 = 0;
  v5 = [(HMDPredicateUtilities *)self _updatePredicate:a3 staleCharacteristicInCurrentPredicate:&v7 accessory:a4 conditionModified:a5];

  return v5;
}

- (id)updatePredicate:(id)a3 removedUser:(id)a4 conditionModified:(BOOL *)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v8;
    v53 = v10;
    v11 = v8;
    v12 = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v13 = [v11 subpredicates];
    v14 = [v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(HMDPredicateUtilities *)self updatePredicate:*(*(&v57 + 1) + 8 * i) removedUser:v9 conditionModified:a5];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v15);
    }

    if ([v12 count])
    {
      v19 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v11 subpredicates:{"compoundPredicateType"), v12}];
    }

    else
    {
      v19 = 0;
    }

    v10 = v53;

    v8 = v51;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_26:
    v19 = v8;
    goto LABEL_27;
  }

  v20 = v8;
  v52 = [v20 predicateOperatorType];
  v21 = [v20 leftExpression];
  if ([v21 expressionType] != 3 || (objc_msgSend(v21, "keyPath"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277CD0C40]), v22, !v23))
  {
LABEL_25:

    goto LABEL_26;
  }

  v24 = [v20 rightExpression];
  if ([v24 expressionType] || (objc_msgSend(v24, "constantValue"), v50 = v24, v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v25, v24 = v50, (isKindOfClass & 1) == 0))
  {

    goto LABEL_25;
  }

  v49 = [v50 constantValue];
  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v30 = v54 = v27;
    *buf = 138543618;
    v62 = v30;
    v63 = 2112;
    v64 = v49;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@presence event dictionary: %@", buf, 0x16u);

    v27 = v54;
  }

  objc_autoreleasePoolPop(v27);
  v55 = *MEMORY[0x277CD24D0];
  v31 = [v49 hmf_arrayForKey:?];
  v32 = [v31 mutableCopy];

  v33 = [v9 uuid];
  v34 = [v33 UUIDString];

  v48 = v34;
  v35 = [v32 indexOfObject:v34];
  v36 = v49;
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    [v32 removeObjectAtIndex:v35];
    v39 = [v49 mutableCopy];
    v47 = v32;
    [v39 setObject:v32 forKey:v55];
    v46 = v39;
    v45 = [HMDPresenceEventModel eventModelWithDictionary:v39 home:v10 eventTriggerUUID:0 message:0];
    v56 = v10;
    v40 = [[HMDPresenceEvent alloc] initWithModel:v45 home:v10];
    v41 = MEMORY[0x277CCA9C0];
    v42 = v40;
    v43 = [(HMDPresenceEvent *)v40 createPresenceEventPayload:1];
    v44 = [v41 expressionForConstantValue:v43];

    v19 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:v21 rightExpression:v44 modifier:objc_msgSend(v20 type:"comparisonPredicateModifier") options:{v52, objc_msgSend(v20, "options")}];
    if (a5)
    {
      *a5 = 1;
    }

    v10 = v56;
    v36 = v49;
    v32 = v47;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)updatePredicate:(id)a3 currentCharacteristicInPredicate:(id *)a4 conditionModified:(BOOL *)a5 removedCharacteristic:(id)a6 underService:(id)a7 underAccessory:(id)a8
{
  v85 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v75 = a6;
  v74 = a7;
  v15 = a8;
  v16 = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_53:
      v26 = v14;
      goto LABEL_54;
    }

    v27 = v14;
    v28 = [v27 rightExpression];
    v29 = [v27 leftExpression];
    v69 = v28;
    if ([v29 expressionType] == 4)
    {
      v30 = [v29 function];
      if (![v30 isEqualToString:@"now"])
      {
LABEL_18:

        goto LABEL_19;
      }

      v71 = v27;
      v31 = v14;
      v32 = [v16 homeLocationHandler];
      v33 = [v32 timeZone];

      if (v33)
      {
        v30 = [v16 homeLocationHandler];
        v34 = [v30 timeZone];
        v35 = [(HMDPredicateUtilities *)self rewriteNowAdjustedForHomeTimeZone:v34];

        v29 = v35;
        v14 = v31;
        v28 = v69;
        v27 = v71;
        goto LABEL_18;
      }

      v14 = v31;
      v28 = v69;
      v27 = v71;
    }

LABEL_19:
    if ([v28 expressionType] == 4)
    {
      v36 = [v28 function];
      if ([v36 isEqualToString:@"now"])
      {
        v72 = v27;
        v37 = v14;
        v38 = [v16 homeLocationHandler];
        v39 = [v38 timeZone];

        if (!v39)
        {
          v14 = v37;
          v27 = v72;
          goto LABEL_24;
        }

        v36 = [v16 homeLocationHandler];
        v40 = [v36 timeZone];
        v41 = [(HMDPredicateUtilities *)self rewriteNowAdjustedForHomeTimeZone:v40];

        v69 = v41;
        v14 = v37;
        v27 = v72;
      }
    }

LABEL_24:
    if ([v29 expressionType] != 3 || (objc_msgSend(v29, "keyPath"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", *MEMORY[0x277CCF6A8]), v42, !v43))
    {
      if ([v29 expressionType] == 3)
      {
        v57 = [v29 keyPath];
        v58 = [v57 isEqualToString:*MEMORY[0x277CCFBD0]];

        if (v58)
        {
          v59 = [v69 expressionType];
          if (a4)
          {
            if (!v59 && *a4)
            {
              *a4 = 0;
              v56 = v69;
              if (a5)
              {
                *a5 = 1;
              }

              goto LABEL_46;
            }
          }
        }
      }

      goto LABEL_52;
    }

    if ([v69 expressionType] || (objc_msgSend(v69, "constantValue"), v44 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v44, (isKindOfClass & 1) == 0))
    {
LABEL_52:

      goto LABEL_53;
    }

    v46 = [v69 constantValue];
    v67 = [v46 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
    v47 = [v46 hmf_numberForKey:*MEMORY[0x277CD25F8]];
    v64 = HAPInstanceIDFromValue();

    v48 = [v46 hmf_numberForKey:*MEMORY[0x277CD2140]];
    v65 = HAPInstanceIDFromValue();

    v49 = [v15 uuid];
    if ([v67 isEqual:v49])
    {
      v63 = v46;
      v50 = [v75 instanceID];
      if ([v65 isEqual:v50])
      {
        [v74 instanceID];
        v51 = v73 = v14;
        v62 = [v64 isEqual:v51];

        v14 = v73;
        v46 = v63;
        if (v62)
        {
          v52 = objc_autoreleasePoolPush();
          v53 = self;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543618;
            v81 = v55;
            v82 = 2112;
            v83 = v75;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Char %@ has been removed, and it has reference in the condition, updating the condition", buf, 0x16u);

            v14 = v73;
          }

          objc_autoreleasePoolPop(v52);
          v46 = v63;
          if (a4)
          {
            *a4 = v75;
            if (a5)
            {
              *a5 = 1;
            }

            v56 = v69;
LABEL_46:

            v26 = 0;
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }

      v46 = v63;
    }

LABEL_51:
    goto LABEL_52;
  }

  v68 = v16;
  v70 = v14;
  v17 = v14;
  v18 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v17;
  v19 = [v17 subpredicates];
  v20 = [v19 countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v77;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v77 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [(HMDPredicateUtilities *)self updatePredicate:*(*(&v76 + 1) + 8 * i) currentCharacteristicInPredicate:a4 conditionModified:a5 removedCharacteristic:v75 underService:v74 underAccessory:v15];
        if (v24)
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v21);
  }

  if ([v18 count])
  {
    v25 = v66;
    v26 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v66 subpredicates:{"compoundPredicateType"), v18}];
  }

  else
  {
    v26 = 0;
    v25 = v66;
  }

  v16 = v68;

  v14 = v70;
LABEL_54:

  v60 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)comparePresence:(id)a3 operatorType:(id)a4 homePresence:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDPredicateUtilities *)self home];
  if (v11 && [v9 unsignedIntegerValue] == 4)
  {
    if (!v10)
    {
      v12 = [(HMDPredicateUtilities *)self homePresenceProvider];
      v10 = (v12)[2](v12, v11);
    }

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Checking whether the homePresence %@ agree with the presence events in condition: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v8 evaluateWithHomePresence:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)rewritePredicate:(id)a3 currentCharacteristicInPredicate:(id *)a4 characteristicsToRead:(id)a5 homePresence:(id)a6
{
  v101 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = 0x277CCA000uLL;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v26 = v10;
    v23 = v26;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_63;
    }

    v95 = v13;
    v90 = [v26 predicateOperatorType];
    v27 = [v23 rightExpression];
    v28 = [v23 leftExpression];
    if ([v27 expressionType] == 4)
    {
      v29 = [v27 function];
      v30 = [v29 isEqualToString:@"add:to:"];

      if (v30)
      {
        v31 = [v27 arguments];
        v32 = [v31 objectAtIndexedSubscript:0];
        if ([v32 expressionType] != 4)
        {
LABEL_43:

          goto LABEL_60;
        }

        v33 = [v32 function];
        v34 = [v33 isEqualToString:@"now"];

        if (!v34)
        {
          v24 = 0x277CCA000;
          goto LABEL_43;
        }

        v35 = [v31 objectAtIndexedSubscript:1];
        if (![v35 expressionType])
        {
          [v35 constantValue];
          v36 = v86 = v35;
          objc_opt_class();
          v37 = objc_opt_isKindOfClass();

          if ((v37 & 1) == 0)
          {
            v24 = 0x277CCA000;
            v35 = v86;
            goto LABEL_22;
          }

          v82 = MEMORY[0x277CCA9C0];
          v35 = v86;
          v38 = [v86 constantValue];
          v83 = [v82 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'addDeltaToNow:', %@)", v38];

          v27 = v83;
        }

        v24 = 0x277CCA000;
LABEL_22:

        goto LABEL_43;
      }
    }

    if (![v27 expressionType])
    {
      v39 = [v27 constantValue];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if (v40)
      {
        v41 = MEMORY[0x277CCA9C0];
        v42 = [v27 constantValue];
        v43 = [v41 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'dateTodayMatchingComponents:', %@)", v42];

        v27 = v43;
        goto LABEL_59;
      }
    }

    if ([v28 expressionType] == 3)
    {
      v44 = [v28 keyPath];
      v45 = [v44 isEqualToString:*MEMORY[0x277CCF6A8]];

      if (v45)
      {
        v46 = [v23 rightExpression];

        v24 = 0x277CCA000;
        if ([v46 expressionType])
        {
          v27 = v46;
LABEL_60:
          v56 = v90;
          goto LABEL_61;
        }

        v60 = [v46 constantValue];
        objc_opt_class();
        v61 = objc_opt_isKindOfClass();

        if (v61)
        {
          v62 = [v46 constantValue];
          v92 = [v62 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
          v63 = [v62 hmf_numberForKey:*MEMORY[0x277CD25F8]];
          v87 = HAPInstanceIDFromValue();

          v84 = v62;
          v64 = [v62 hmf_numberForKey:*MEMORY[0x277CD2140]];
          v65 = HAPInstanceIDFromValue();

          v66 = [v95 accessoryWithUUID:v92];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v67 = v66;
          }

          else
          {
            v67 = 0;
          }

          v68 = v67;

          if (v68)
          {
            v69 = v68;
            v70 = [v68 findCharacteristic:v65 forService:v87];
            v71 = v70;
            if (a4 && v70)
            {
              v72 = v70;
              *a4 = v71;
              v73 = [v11 objectForKey:v69];
              if (!v73)
              {
                v73 = [MEMORY[0x277CBEB58] set];
                [v11 setObject:v73 forKey:v69];
              }

              [v73 addObject:v71];
            }

            v68 = v69;
          }

          v50 = 0;
          goto LABEL_62;
        }

        v27 = v46;
LABEL_59:
        v24 = 0x277CCA000uLL;
        goto LABEL_60;
      }
    }

    if ([v28 expressionType] == 3)
    {
      v47 = [v28 keyPath];
      v48 = [v47 isEqualToString:*MEMORY[0x277CCFBD0]];

      if (v48)
      {
        v46 = [v23 rightExpression];

        v49 = [v46 expressionType];
        v50 = 0;
        if (!a4 || v49)
        {
          goto LABEL_62;
        }

        v91 = v10;
        v51 = *a4;
        if (!*a4)
        {
          v50 = 0;
          v10 = v91;
          goto LABEL_62;
        }

        v52 = MEMORY[0x277CCA9C0];
        v53 = [v46 constantValue];
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "predicateOperatorType")}];
        v55 = [v52 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'compareValueOfCharacteristic:againstValue:operatorType:', %@, %@, %@)", v51, v53, v54];

        v27 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];

        *a4 = 0;
        v56 = 4;
        v28 = v55;
        v10 = v91;
        goto LABEL_68;
      }
    }

    if ([v28 expressionType] != 3)
    {
      goto LABEL_59;
    }

    v57 = [v28 keyPath];
    v58 = [v57 isEqualToString:*MEMORY[0x277CD0C40]];

    v24 = 0x277CCA000;
    v56 = v90;
    if (v58)
    {
      v59 = [v23 rightExpression];

      if (![v59 expressionType])
      {
        v74 = [v59 constantValue];
        objc_opt_class();
        v75 = objc_opt_isKindOfClass();

        if (v75)
        {
          v93 = [v59 constantValue];
          v88 = [HMDPresenceEventModel eventModelWithDictionary:v93 home:v95 eventTriggerUUID:0 message:0];
          v76 = [[HMDPresenceEvent alloc] initWithModel:v88 home:v95];
          v77 = MEMORY[0x277CCA9C0];
          v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "predicateOperatorType")}];
          v79 = [v77 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'comparePresence:operatorType:homePresence:', %@, %@, %@)", v76, v78, v12];

          v27 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];

          v28 = v79;
          v56 = 4;
        }

        else
        {
          v27 = v59;
        }

LABEL_68:
        v24 = 0x277CCA000;
        goto LABEL_61;
      }

      v27 = v59;
    }

LABEL_61:
    v50 = [objc_alloc(*(v24 + 2328)) initWithLeftExpression:v28 rightExpression:v27 modifier:objc_msgSend(v23 type:"comparisonPredicateModifier") options:{v56, objc_msgSend(v23, "options")}];
    v46 = v27;
LABEL_62:

    v23 = v50;
    v13 = v95;
    goto LABEL_63;
  }

  v89 = v10;
  v94 = v13;
  v14 = v10;
  v15 = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v85 = v14;
  v16 = [v14 subpredicates];
  v17 = [v16 countByEnumeratingWithState:&v96 objects:v100 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v97;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v97 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(HMDPredicateUtilities *)self rewritePredicate:*(*(&v96 + 1) + 8 * i) currentCharacteristicInPredicate:a4 characteristicsToRead:v11 homePresence:v12];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v96 objects:v100 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    v22 = v85;
    v23 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v85 subpredicates:{"compoundPredicateType"), v15}];
    v13 = v94;
  }

  else
  {
    v23 = 0;
    v13 = v94;
    v22 = v85;
  }

  v10 = v89;
LABEL_63:

  v80 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)sunset
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPredicateUtilities *)self home];
  v4 = [v3 homeLocationHandler];
  v5 = [v4 location];
  v6 = [HMDLocation sunsetTimeForLocation:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 hmf_localTimeDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sunset time: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sunrise
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPredicateUtilities *)self home];
  v4 = [v3 homeLocationHandler];
  v5 = [v4 location];
  v6 = [HMDLocation sunriseTimeForLocation:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 hmf_localTimeDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sunrise time: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDPredicateUtilities)initWithHome:(id)a3 logIdentifier:(id)a4 homePresenceProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
    v23.receiver = self;
    v23.super_class = HMDPredicateUtilities;
    v12 = [(HMDPredicateUtilities *)&v23 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_home, v8);
      v14 = [v9 copy];
      logIdentifier = v13->_logIdentifier;
      v13->_logIdentifier = v14;

      v16 = _Block_copy(v11);
      homePresenceProvider = v13->_homePresenceProvider;
      v13->_homePresenceProvider = v16;
    }

    return v13;
  }

  else
  {
    v19 = _HMFPreconditionFailure();
    return [(HMDPredicateUtilities *)v19 initWithHome:v20 logIdentifier:v21, v22];
  }
}

id __52__HMDPredicateUtilities_initWithHome_logIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presenceMonitor];
  v3 = [v2 currentHomePresence];

  return v3;
}

+ (id)unarchiveFromData:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v20 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v6 error:&v20];
  v11 = v20;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v10;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive predicate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (a4)
    {
      v17 = v11;
      v12 = 0;
      *a4 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)filteredPredicate:(id)a3 withUserUUIDs:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = [v8 subpredicates];
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v41 = v8;
      v43 = v6;
      v13 = 0;
      v14 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v47 + 1) + 8 * i);
          v17 = [a1 filteredPredicate:v16 withUserUUIDs:v7];
          if (v17)
          {
            [v9 addObject:v17];
          }

          v13 |= v17 != v16;
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v12);

      v8 = v41;
      v6 = v43;
      if (v13)
      {
        if (![v9 count])
        {
          v37 = 0;
          goto LABEL_26;
        }

        v18 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v41 subpredicates:{"compoundPredicateType"), v9}];
LABEL_25:
        v37 = v18;
LABEL_26:

        goto LABEL_33;
      }
    }

    else
    {
    }

    v18 = v8;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 leftExpression];
    if ([v9 expressionType] == 3)
    {
      v19 = [v9 keyPath];
      v20 = [v19 isEqualToString:*MEMORY[0x277CD0C40]];

      if (v20)
      {
        v21 = [v8 rightExpression];
        if (![v21 expressionType])
        {
          v22 = [v21 constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v24 = [v21 constantValue];
            v25 = *MEMORY[0x277CD24D0];
            v26 = [v24 hmf_arrayForKey:*MEMORY[0x277CD24D0]];
            if ([v26 count])
            {
              v44 = v24;
              v45[0] = MEMORY[0x277D85DD0];
              v45[1] = 3221225472;
              v45[2] = __57__HMDPredicateUtilities_filteredPredicate_withUserUUIDs___block_invoke;
              v45[3] = &unk_27972D738;
              v46 = v7;
              v27 = [v26 hmf_objectsPassingTest:v45];
              v28 = [v27 count];
              if (v28 < [v26 count])
              {
                if ([v27 count])
                {
                  v42 = [v44 mutableCopy];
                  [v42 setObject:v27 forKeyedSubscript:v25];
                  v29 = MEMORY[0x277CCA9C0];
                  v30 = [v42 copy];
                  v40 = [v29 expressionForConstantValue:v30];

                  v31 = v44;
                  v32 = objc_alloc(MEMORY[0x277CCA918]);
                  v33 = [v8 comparisonPredicateModifier];
                  v34 = [v8 predicateOperatorType];
                  v35 = [v8 options];
                  v36 = v32;
                  v21 = v40;
                  v37 = [v36 initWithLeftExpression:v9 rightExpression:v40 modifier:v33 type:v34 options:v35];
                }

                else
                {
                  v37 = 0;
                  v31 = v44;
                }

                goto LABEL_26;
              }

              v24 = v44;
            }
          }
        }
      }
    }
  }

  v37 = v6;
LABEL_33:

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t __57__HMDPredicateUtilities_filteredPredicate_withUserUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [v2 containsObject:v5];
  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_136174 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_136174, &__block_literal_global_12_136175);
  }

  v3 = logCategory__hmf_once_v2_136176;

  return v3;
}

uint64_t __36__HMDPredicateUtilities_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_136176;
  logCategory__hmf_once_v2_136176 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)encodePredicate:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:a4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)decodePredicateFromData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = a3;
    v8 = [a1 predicateCodingClasses];
    v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else if (a4)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (NSSet)predicateCodingClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

@end