@interface HMDPredicateUtilities
+ (NSSet)predicateCodingClasses;
+ (id)decodePredicateFromData:(id)data error:(id *)error;
+ (id)encodePredicate:(id)predicate error:(id *)error;
+ (id)filteredPredicate:(id)predicate withUserUUIDs:(id)ds;
+ (id)logCategory;
+ (id)unarchiveFromData:(id)data error:(id *)error;
- (BOOL)containsPresenceEvents:(id)events;
- (HMDHome)home;
- (HMDPredicateUtilities)initWithHome:(id)home logIdentifier:(id)identifier homePresenceProvider:(id)provider;
- (id)_updatePredicate:(id)predicate staleCharacteristicInCurrentPredicate:(BOOL *)currentPredicate accessory:(id)accessory conditionModified:(BOOL *)modified;
- (id)addDeltaToNow:(id)now;
- (id)comparePresence:(id)presence operatorType:(id)type homePresence:(id)homePresence;
- (id)dateTodayMatchingComponents:(id)components;
- (id)generateAnalyticsData:(id)data;
- (id)predicateWithoutStaleCharacteristicsFromPredicate:(id)predicate accessory:(id)accessory conditionModified:(BOOL *)modified;
- (id)rewriteNowAdjustedForHomeTimeZone:(id)zone;
- (id)rewritePredicate:(id)predicate currentCharacteristicInPredicate:(id *)inPredicate characteristicsToRead:(id)read homePresence:(id)presence;
- (id)sunrise;
- (id)sunset;
- (id)updatePredicate:(id)predicate currentCharacteristicInPredicate:(id *)inPredicate conditionModified:(BOOL *)modified removedCharacteristic:(id)characteristic underService:(id)service underAccessory:(id)accessory;
- (id)updatePredicate:(id)predicate removedUser:(id)user conditionModified:(BOOL *)modified;
- (void)fillAnalyticsData:(id)data forPredicate:(id)predicate;
@end

@implementation HMDPredicateUtilities

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)fillAnalyticsData:(id)data forPredicate:(id)predicate
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    subpredicates = [predicateCopy subpredicates];
    v9 = [subpredicates countByEnumeratingWithState:&v50 objects:v54 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          [(HMDPredicateUtilities *)self fillAnalyticsData:dataCopy forPredicate:*(*(&v50 + 1) + 8 * i)];
        }

        v10 = [subpredicates countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v10);
    }

    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subpredicates = predicateCopy;
    rightExpression = [subpredicates rightExpression];
    leftExpression = [subpredicates leftExpression];
    if ([rightExpression expressionType] == 4)
    {
      function = [rightExpression function];
      v16 = [function isEqualToString:@"add:to:"];

      if (v16)
      {
        arguments = [rightExpression arguments];
        v18 = [arguments objectAtIndexedSubscript:0];
        if ([v18 expressionType] != 4)
        {
          goto LABEL_51;
        }

        function2 = [v18 function];
        v20 = [function2 isEqualToString:@"now"];

        if (!v20)
        {
          goto LABEL_51;
        }

        v21 = [arguments objectAtIndexedSubscript:1];
        if (![v21 expressionType])
        {
          constantValue = [v21 constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) != 0 && [leftExpression expressionType] == 3)
          {
            keyPath = [leftExpression keyPath];
            if ([keyPath isEqualToString:*MEMORY[0x277CD0FA8]])
            {

              if (!dataCopy)
              {
                goto LABEL_50;
              }
            }

            else
            {
              keyPath2 = [leftExpression keyPath];
              v49 = [keyPath2 isEqualToString:*MEMORY[0x277CD0FB0]];

              if (!dataCopy || !v49)
              {
                goto LABEL_50;
              }
            }

            dataCopy[11] = 1;
            dataCopy[10] = 1;
          }
        }

LABEL_50:

LABEL_51:
        goto LABEL_52;
      }
    }

    if ([leftExpression expressionType] == 4 && (objc_msgSend(leftExpression, "function"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", @"now"), v25, v26))
    {
      if (dataCopy)
      {
        v27 = 8;
LABEL_46:
        dataCopy[v27] = 1;
      }
    }

    else if ([rightExpression expressionType] == 4 && (objc_msgSend(rightExpression, "function"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", @"now"), v28, v29))
    {
      if ([leftExpression expressionType] == 3)
      {
        keyPath3 = [leftExpression keyPath];
        if ([keyPath3 isEqualToString:*MEMORY[0x277CD0FA8]])
        {

          if (!dataCopy)
          {
            goto LABEL_52;
          }
        }

        else
        {
          keyPath4 = [leftExpression keyPath];
          v45 = [keyPath4 isEqualToString:*MEMORY[0x277CD0FB0]];

          if (!dataCopy || !v45)
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
      if ([leftExpression expressionType] != 3 || (objc_msgSend(leftExpression, "keyPath"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", *MEMORY[0x277CCF6A8]), v31, !v32))
      {
        if ([leftExpression expressionType] == 3)
        {
          keyPath5 = [leftExpression keyPath];
          v34 = [keyPath5 isEqualToString:*MEMORY[0x277CD0C40]];

          if (v34)
          {
            rightExpression2 = [subpredicates rightExpression];

            if (![rightExpression2 expressionType])
            {
              constantValue2 = [rightExpression2 constantValue];
              objc_opt_class();
              v37 = objc_opt_isKindOfClass();

              if (v37)
              {
                home = [(HMDPredicateUtilities *)self home];
                constantValue3 = [rightExpression2 constantValue];
                v39 = [HMDPresenceEventModel eventModelWithDictionary:"eventModelWithDictionary:home:eventTriggerUUID:message:" home:? eventTriggerUUID:? message:?];
                v40 = [[HMDPresenceEvent alloc] initWithModel:v39 home:home];
                if (dataCopy)
                {
                  v41 = *(dataCopy + 2);
                }

                else
                {
                  v41 = 0;
                }

                v42 = v41;
                analyticsPresenceEventData = [(HMDPresenceEvent *)v40 analyticsPresenceEventData];
                [v42 addObject:analyticsPresenceEventData];
              }
            }

            rightExpression = rightExpression2;
          }
        }

        goto LABEL_52;
      }

      if (dataCopy)
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

- (id)generateAnalyticsData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(HMDAnalyticsPredicateData);
  [(HMDPredicateUtilities *)self fillAnalyticsData:v5 forPredicate:dataCopy];

  return v5;
}

- (BOOL)containsPresenceEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subpredicates = [eventsCopy subpredicates];
    v6 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(subpredicates);
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

        v7 = [subpredicates countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      v11 = eventsCopy;
      rightExpression = [v11 rightExpression];
      leftExpression = [v11 leftExpression];
      if ([leftExpression expressionType] == 3 && (objc_msgSend(leftExpression, "keyPath"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x277CD0C40]), v14, v15) && !objc_msgSend(rightExpression, "expressionType"))
      {
        constantValue = [rightExpression constantValue];
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

- (id)dateTodayMatchingComponents:(id)components
{
  v3 = MEMORY[0x277CBEAA8];
  componentsCopy = components;
  date = [v3 date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar components:124 fromDate:date];
  [v7 setHour:{objc_msgSend(componentsCopy, "hour")}];
  minute = [componentsCopy minute];

  [v7 setMinute:minute];
  v9 = [currentCalendar dateFromComponents:v7];

  return v9;
}

- (id)addDeltaToNow:(id)now
{
  v3 = MEMORY[0x277CBEAA8];
  nowCopy = now;
  date = [v3 date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [currentCalendar setTimeZone:localTimeZone];

  v8 = [currentCalendar dateByAddingComponents:nowCopy toDate:date options:0];

  return v8;
}

- (id)rewriteNowAdjustedForHomeTimeZone:(id)zone
{
  v3 = MEMORY[0x277CBEAB8];
  zoneCopy = zone;
  v5 = objc_alloc_init(v3);
  date = [MEMORY[0x277CBEAA8] date];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateStyle:4];
  [v7 setTimeStyle:4];
  [v7 setTimeZone:zoneCopy];
  [v7 setDateFormat:@"HH"];
  v8 = [v7 stringFromDate:date];
  [v5 setHour:{objc_msgSend(v8, "intValue")}];

  [v7 setDateFormat:@"mm"];
  v9 = [v7 stringFromDate:date];
  [v5 setMinute:{objc_msgSend(v9, "intValue")}];

  [v5 setTimeZone:zoneCopy];
  v10 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'dateTodayMatchingComponents:', %@)", v5];

  return v10;
}

- (id)_updatePredicate:(id)predicate staleCharacteristicInCurrentPredicate:(BOOL *)currentPredicate accessory:(id)accessory conditionModified:(BOOL *)modified
{
  v61 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  accessoryCopy = accessory;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = predicateCopy;
      rightExpression = [v22 rightExpression];
      leftExpression = [v22 leftExpression];
      if ([leftExpression expressionType] == 3 && (objc_msgSend(leftExpression, "keyPath"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToString:", *MEMORY[0x277CCF6A8]), v25, v26))
      {
        if (![rightExpression expressionType])
        {
          constantValue = [rightExpression constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            constantValue2 = [rightExpression constantValue];
            v49 = [constantValue2 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
            v30 = [constantValue2 hmf_numberForKey:*MEMORY[0x277CD25F8]];
            v47 = HAPInstanceIDFromValue();

            v46 = constantValue2;
            v31 = [constantValue2 hmf_numberForKey:*MEMORY[0x277CD2140]];
            v32 = HAPInstanceIDFromValue();

            uuid = [accessoryCopy uuid];
            v45 = v32;
            if ([uuid isEqual:v49])
            {
              v34 = [accessoryCopy findCharacteristic:v32 forService:v47];

              if (!v34)
              {
                v51 = predicateCopy;
                v35 = objc_autoreleasePoolPush();
                selfCopy = self;
                v37 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v38 = selfCopy;
                  v40 = v39 = v35;
                  *buf = 138543618;
                  v57 = v40;
                  v58 = 2112;
                  v59 = v22;
                  _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Removing predicate %@ because referenced characteristic no longer exists", buf, 0x16u);

                  v35 = v39;
                  selfCopy = v38;
                }

                objc_autoreleasePoolPop(v35);
                *currentPredicate = 1;
                *modified = 1;

                predicateCopy = v51;
                goto LABEL_30;
              }
            }

            else
            {
            }
          }
        }
      }

      else if ([leftExpression expressionType] == 3)
      {
        keyPath = [leftExpression keyPath];
        v42 = [keyPath isEqualToString:*MEMORY[0x277CCFBD0]];

        if (v42)
        {
          if (![rightExpression expressionType] && *currentPredicate)
          {
            *currentPredicate = 0;
            *modified = 1;
LABEL_30:

            v21 = 0;
            goto LABEL_35;
          }
        }
      }
    }

    v21 = predicateCopy;
    goto LABEL_35;
  }

  v50 = predicateCopy;
  v12 = predicateCopy;
  array = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v12;
  subpredicates = [v12 subpredicates];
  v15 = [subpredicates countByEnumeratingWithState:&v52 objects:v60 count:16];
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
          objc_enumerationMutation(subpredicates);
        }

        v19 = [(HMDPredicateUtilities *)self _updatePredicate:*(*(&v52 + 1) + 8 * i) staleCharacteristicInCurrentPredicate:currentPredicate accessory:accessoryCopy conditionModified:modified];
        if (v19)
        {
          [array addObject:v19];
        }
      }

      v16 = [subpredicates countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v16);
  }

  if ([array count])
  {
    v20 = v48;
    v21 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v48 subpredicates:{"compoundPredicateType"), array}];
  }

  else
  {
    v21 = 0;
    v20 = v48;
  }

  predicateCopy = v50;
LABEL_35:

  v43 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)predicateWithoutStaleCharacteristicsFromPredicate:(id)predicate accessory:(id)accessory conditionModified:(BOOL *)modified
{
  v7 = 0;
  v5 = [(HMDPredicateUtilities *)self _updatePredicate:predicate staleCharacteristicInCurrentPredicate:&v7 accessory:accessory conditionModified:modified];

  return v5;
}

- (id)updatePredicate:(id)predicate removedUser:(id)user conditionModified:(BOOL *)modified
{
  v66 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  userCopy = user;
  home = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = predicateCopy;
    v53 = home;
    v11 = predicateCopy;
    array = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    subpredicates = [v11 subpredicates];
    v14 = [subpredicates countByEnumeratingWithState:&v57 objects:v65 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          v18 = [(HMDPredicateUtilities *)self updatePredicate:*(*(&v57 + 1) + 8 * i) removedUser:userCopy conditionModified:modified];
          if (v18)
          {
            [array addObject:v18];
          }
        }

        v15 = [subpredicates countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v15);
    }

    if ([array count])
    {
      v19 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v11 subpredicates:{"compoundPredicateType"), array}];
    }

    else
    {
      v19 = 0;
    }

    home = v53;

    predicateCopy = v51;
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_26:
    v19 = predicateCopy;
    goto LABEL_27;
  }

  v20 = predicateCopy;
  predicateOperatorType = [v20 predicateOperatorType];
  leftExpression = [v20 leftExpression];
  if ([leftExpression expressionType] != 3 || (objc_msgSend(leftExpression, "keyPath"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277CD0C40]), v22, !v23))
  {
LABEL_25:

    goto LABEL_26;
  }

  rightExpression = [v20 rightExpression];
  if ([rightExpression expressionType] || (objc_msgSend(rightExpression, "constantValue"), v50 = rightExpression, v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v25, rightExpression = v50, (isKindOfClass & 1) == 0))
  {

    goto LABEL_25;
  }

  constantValue = [v50 constantValue];
  v27 = objc_autoreleasePoolPush();
  selfCopy = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v30 = v54 = v27;
    *buf = 138543618;
    v62 = v30;
    v63 = 2112;
    v64 = constantValue;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@presence event dictionary: %@", buf, 0x16u);

    v27 = v54;
  }

  objc_autoreleasePoolPop(v27);
  v55 = *MEMORY[0x277CD24D0];
  v31 = [constantValue hmf_arrayForKey:?];
  v32 = [v31 mutableCopy];

  uuid = [userCopy uuid];
  uUIDString = [uuid UUIDString];

  v48 = uUIDString;
  v35 = [v32 indexOfObject:uUIDString];
  v36 = constantValue;
  if (v35 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    [v32 removeObjectAtIndex:v35];
    v39 = [constantValue mutableCopy];
    v47 = v32;
    [v39 setObject:v32 forKey:v55];
    v46 = v39;
    v45 = [HMDPresenceEventModel eventModelWithDictionary:v39 home:home eventTriggerUUID:0 message:0];
    v56 = home;
    v40 = [[HMDPresenceEvent alloc] initWithModel:v45 home:home];
    v41 = MEMORY[0x277CCA9C0];
    v42 = v40;
    v43 = [(HMDPresenceEvent *)v40 createPresenceEventPayload:1];
    v44 = [v41 expressionForConstantValue:v43];

    v19 = [objc_alloc(MEMORY[0x277CCA918]) initWithLeftExpression:leftExpression rightExpression:v44 modifier:objc_msgSend(v20 type:"comparisonPredicateModifier") options:{predicateOperatorType, objc_msgSend(v20, "options")}];
    if (modified)
    {
      *modified = 1;
    }

    home = v56;
    v36 = constantValue;
    v32 = v47;
  }

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)updatePredicate:(id)predicate currentCharacteristicInPredicate:(id *)inPredicate conditionModified:(BOOL *)modified removedCharacteristic:(id)characteristic underService:(id)service underAccessory:(id)accessory
{
  v85 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  characteristicCopy = characteristic;
  serviceCopy = service;
  accessoryCopy = accessory;
  home = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_53:
      v26 = predicateCopy;
      goto LABEL_54;
    }

    v27 = predicateCopy;
    rightExpression = [v27 rightExpression];
    leftExpression = [v27 leftExpression];
    v69 = rightExpression;
    if ([leftExpression expressionType] == 4)
    {
      function = [leftExpression function];
      if (![function isEqualToString:@"now"])
      {
LABEL_18:

        goto LABEL_19;
      }

      v71 = v27;
      v31 = predicateCopy;
      homeLocationHandler = [home homeLocationHandler];
      timeZone = [homeLocationHandler timeZone];

      if (timeZone)
      {
        function = [home homeLocationHandler];
        timeZone2 = [function timeZone];
        v35 = [(HMDPredicateUtilities *)self rewriteNowAdjustedForHomeTimeZone:timeZone2];

        leftExpression = v35;
        predicateCopy = v31;
        rightExpression = v69;
        v27 = v71;
        goto LABEL_18;
      }

      predicateCopy = v31;
      rightExpression = v69;
      v27 = v71;
    }

LABEL_19:
    if ([rightExpression expressionType] == 4)
    {
      function2 = [rightExpression function];
      if ([function2 isEqualToString:@"now"])
      {
        v72 = v27;
        v37 = predicateCopy;
        homeLocationHandler2 = [home homeLocationHandler];
        timeZone3 = [homeLocationHandler2 timeZone];

        if (!timeZone3)
        {
          predicateCopy = v37;
          v27 = v72;
          goto LABEL_24;
        }

        function2 = [home homeLocationHandler];
        timeZone4 = [function2 timeZone];
        v41 = [(HMDPredicateUtilities *)self rewriteNowAdjustedForHomeTimeZone:timeZone4];

        v69 = v41;
        predicateCopy = v37;
        v27 = v72;
      }
    }

LABEL_24:
    if ([leftExpression expressionType] != 3 || (objc_msgSend(leftExpression, "keyPath"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", *MEMORY[0x277CCF6A8]), v42, !v43))
    {
      if ([leftExpression expressionType] == 3)
      {
        keyPath = [leftExpression keyPath];
        v58 = [keyPath isEqualToString:*MEMORY[0x277CCFBD0]];

        if (v58)
        {
          expressionType = [v69 expressionType];
          if (inPredicate)
          {
            if (!expressionType && *inPredicate)
            {
              *inPredicate = 0;
              v56 = v69;
              if (modified)
              {
                *modified = 1;
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

    constantValue = [v69 constantValue];
    v67 = [constantValue hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
    v47 = [constantValue hmf_numberForKey:*MEMORY[0x277CD25F8]];
    v64 = HAPInstanceIDFromValue();

    v48 = [constantValue hmf_numberForKey:*MEMORY[0x277CD2140]];
    v65 = HAPInstanceIDFromValue();

    uuid = [accessoryCopy uuid];
    if ([v67 isEqual:uuid])
    {
      v63 = constantValue;
      instanceID = [characteristicCopy instanceID];
      if ([v65 isEqual:instanceID])
      {
        [serviceCopy instanceID];
        v51 = v73 = predicateCopy;
        v62 = [v64 isEqual:v51];

        predicateCopy = v73;
        constantValue = v63;
        if (v62)
        {
          v52 = objc_autoreleasePoolPush();
          selfCopy = self;
          v54 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            *buf = 138543618;
            v81 = v55;
            v82 = 2112;
            v83 = characteristicCopy;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Char %@ has been removed, and it has reference in the condition, updating the condition", buf, 0x16u);

            predicateCopy = v73;
          }

          objc_autoreleasePoolPop(v52);
          constantValue = v63;
          if (inPredicate)
          {
            *inPredicate = characteristicCopy;
            if (modified)
            {
              *modified = 1;
            }

            v56 = v69;
LABEL_46:

            v26 = 0;
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }

      constantValue = v63;
    }

LABEL_51:
    goto LABEL_52;
  }

  v68 = home;
  v70 = predicateCopy;
  v17 = predicateCopy;
  array = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v17;
  subpredicates = [v17 subpredicates];
  v20 = [subpredicates countByEnumeratingWithState:&v76 objects:v84 count:16];
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
          objc_enumerationMutation(subpredicates);
        }

        v24 = [(HMDPredicateUtilities *)self updatePredicate:*(*(&v76 + 1) + 8 * i) currentCharacteristicInPredicate:inPredicate conditionModified:modified removedCharacteristic:characteristicCopy underService:serviceCopy underAccessory:accessoryCopy];
        if (v24)
        {
          [array addObject:v24];
        }
      }

      v21 = [subpredicates countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v21);
  }

  if ([array count])
  {
    v25 = v66;
    v26 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v66 subpredicates:{"compoundPredicateType"), array}];
  }

  else
  {
    v26 = 0;
    v25 = v66;
  }

  home = v68;

  predicateCopy = v70;
LABEL_54:

  v60 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)comparePresence:(id)presence operatorType:(id)type homePresence:(id)homePresence
{
  v27 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  typeCopy = type;
  homePresenceCopy = homePresence;
  home = [(HMDPredicateUtilities *)self home];
  if (home && [typeCopy unsignedIntegerValue] == 4)
  {
    if (!homePresenceCopy)
    {
      homePresenceProvider = [(HMDPredicateUtilities *)self homePresenceProvider];
      homePresenceCopy = (homePresenceProvider)[2](homePresenceProvider, home);
    }

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = homePresenceCopy;
      v25 = 2112;
      v26 = presenceCopy;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Checking whether the homePresence %@ agree with the presence events in condition: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [presenceCopy evaluateWithHomePresence:homePresenceCopy];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)rewritePredicate:(id)predicate currentCharacteristicInPredicate:(id *)inPredicate characteristicsToRead:(id)read homePresence:(id)presence
{
  v101 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  readCopy = read;
  presenceCopy = presence;
  home = [(HMDPredicateUtilities *)self home];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = 0x277CCA000uLL;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v26 = predicateCopy;
    v23 = v26;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_63;
    }

    v95 = home;
    predicateOperatorType = [v26 predicateOperatorType];
    rightExpression = [v23 rightExpression];
    leftExpression = [v23 leftExpression];
    if ([rightExpression expressionType] == 4)
    {
      function = [rightExpression function];
      v30 = [function isEqualToString:@"add:to:"];

      if (v30)
      {
        arguments = [rightExpression arguments];
        v32 = [arguments objectAtIndexedSubscript:0];
        if ([v32 expressionType] != 4)
        {
LABEL_43:

          goto LABEL_60;
        }

        function2 = [v32 function];
        v34 = [function2 isEqualToString:@"now"];

        if (!v34)
        {
          v24 = 0x277CCA000;
          goto LABEL_43;
        }

        v35 = [arguments objectAtIndexedSubscript:1];
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
          constantValue = [v86 constantValue];
          v83 = [v82 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'addDeltaToNow:', %@)", constantValue];

          rightExpression = v83;
        }

        v24 = 0x277CCA000;
LABEL_22:

        goto LABEL_43;
      }
    }

    if (![rightExpression expressionType])
    {
      constantValue2 = [rightExpression constantValue];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if (v40)
      {
        v41 = MEMORY[0x277CCA9C0];
        constantValue3 = [rightExpression constantValue];
        v43 = [v41 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'dateTodayMatchingComponents:', %@)", constantValue3];

        rightExpression = v43;
        goto LABEL_59;
      }
    }

    if ([leftExpression expressionType] == 3)
    {
      keyPath = [leftExpression keyPath];
      v45 = [keyPath isEqualToString:*MEMORY[0x277CCF6A8]];

      if (v45)
      {
        rightExpression2 = [v23 rightExpression];

        v24 = 0x277CCA000;
        if ([rightExpression2 expressionType])
        {
          rightExpression = rightExpression2;
LABEL_60:
          v56 = predicateOperatorType;
          goto LABEL_61;
        }

        constantValue4 = [rightExpression2 constantValue];
        objc_opt_class();
        v61 = objc_opt_isKindOfClass();

        if (v61)
        {
          constantValue5 = [rightExpression2 constantValue];
          v92 = [constantValue5 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
          v63 = [constantValue5 hmf_numberForKey:*MEMORY[0x277CD25F8]];
          v87 = HAPInstanceIDFromValue();

          v84 = constantValue5;
          v64 = [constantValue5 hmf_numberForKey:*MEMORY[0x277CD2140]];
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
            if (inPredicate && v70)
            {
              v72 = v70;
              *inPredicate = v71;
              v73 = [readCopy objectForKey:v69];
              if (!v73)
              {
                v73 = [MEMORY[0x277CBEB58] set];
                [readCopy setObject:v73 forKey:v69];
              }

              [v73 addObject:v71];
            }

            v68 = v69;
          }

          v50 = 0;
          goto LABEL_62;
        }

        rightExpression = rightExpression2;
LABEL_59:
        v24 = 0x277CCA000uLL;
        goto LABEL_60;
      }
    }

    if ([leftExpression expressionType] == 3)
    {
      keyPath2 = [leftExpression keyPath];
      v48 = [keyPath2 isEqualToString:*MEMORY[0x277CCFBD0]];

      if (v48)
      {
        rightExpression2 = [v23 rightExpression];

        expressionType = [rightExpression2 expressionType];
        v50 = 0;
        if (!inPredicate || expressionType)
        {
          goto LABEL_62;
        }

        v91 = predicateCopy;
        v51 = *inPredicate;
        if (!*inPredicate)
        {
          v50 = 0;
          predicateCopy = v91;
          goto LABEL_62;
        }

        v52 = MEMORY[0x277CCA9C0];
        constantValue6 = [rightExpression2 constantValue];
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "predicateOperatorType")}];
        v55 = [v52 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'compareValueOfCharacteristic:againstValue:operatorType:', %@, %@, %@)", v51, constantValue6, v54];

        rightExpression = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];

        *inPredicate = 0;
        v56 = 4;
        leftExpression = v55;
        predicateCopy = v91;
        goto LABEL_68;
      }
    }

    if ([leftExpression expressionType] != 3)
    {
      goto LABEL_59;
    }

    keyPath3 = [leftExpression keyPath];
    v58 = [keyPath3 isEqualToString:*MEMORY[0x277CD0C40]];

    v24 = 0x277CCA000;
    v56 = predicateOperatorType;
    if (v58)
    {
      rightExpression3 = [v23 rightExpression];

      if (![rightExpression3 expressionType])
      {
        constantValue7 = [rightExpression3 constantValue];
        objc_opt_class();
        v75 = objc_opt_isKindOfClass();

        if (v75)
        {
          constantValue8 = [rightExpression3 constantValue];
          v88 = [HMDPresenceEventModel eventModelWithDictionary:constantValue8 home:v95 eventTriggerUUID:0 message:0];
          v76 = [[HMDPresenceEvent alloc] initWithModel:v88 home:v95];
          v77 = MEMORY[0x277CCA9C0];
          v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "predicateOperatorType")}];
          presenceCopy = [v77 expressionWithFormat:@"FUNCTION($THIS_OBJECT, 'comparePresence:operatorType:homePresence:', %@, %@, %@)", v76, v78, presenceCopy];

          rightExpression = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];

          leftExpression = presenceCopy;
          v56 = 4;
        }

        else
        {
          rightExpression = rightExpression3;
        }

LABEL_68:
        v24 = 0x277CCA000;
        goto LABEL_61;
      }

      rightExpression = rightExpression3;
    }

LABEL_61:
    v50 = [objc_alloc(*(v24 + 2328)) initWithLeftExpression:leftExpression rightExpression:rightExpression modifier:objc_msgSend(v23 type:"comparisonPredicateModifier") options:{v56, objc_msgSend(v23, "options")}];
    rightExpression2 = rightExpression;
LABEL_62:

    v23 = v50;
    home = v95;
    goto LABEL_63;
  }

  v89 = predicateCopy;
  v94 = home;
  v14 = predicateCopy;
  array = [MEMORY[0x277CBEB18] array];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v85 = v14;
  subpredicates = [v14 subpredicates];
  v17 = [subpredicates countByEnumeratingWithState:&v96 objects:v100 count:16];
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
          objc_enumerationMutation(subpredicates);
        }

        v21 = [(HMDPredicateUtilities *)self rewritePredicate:*(*(&v96 + 1) + 8 * i) currentCharacteristicInPredicate:inPredicate characteristicsToRead:readCopy homePresence:presenceCopy];
        if (v21)
        {
          [array addObject:v21];
        }
      }

      v18 = [subpredicates countByEnumeratingWithState:&v96 objects:v100 count:16];
    }

    while (v18);
  }

  if ([array count])
  {
    v22 = v85;
    v23 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v85 subpredicates:{"compoundPredicateType"), array}];
    home = v94;
  }

  else
  {
    v23 = 0;
    home = v94;
    v22 = v85;
  }

  predicateCopy = v89;
LABEL_63:

  v80 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)sunset
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDPredicateUtilities *)self home];
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  v6 = [HMDLocation sunsetTimeForLocation:location];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    hmf_localTimeDescription = [v6 hmf_localTimeDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = hmf_localTimeDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sunset time: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sunrise
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDPredicateUtilities *)self home];
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];
  v6 = [HMDLocation sunriseTimeForLocation:location];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    hmf_localTimeDescription = [v6 hmf_localTimeDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = hmf_localTimeDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sunrise time: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDPredicateUtilities)initWithHome:(id)home logIdentifier:(id)identifier homePresenceProvider:(id)provider
{
  homeCopy = home;
  identifierCopy = identifier;
  providerCopy = provider;
  if (providerCopy)
  {
    v11 = providerCopy;
    v23.receiver = self;
    v23.super_class = HMDPredicateUtilities;
    v12 = [(HMDPredicateUtilities *)&v23 init];
    v13 = v12;
    if (v12)
    {
      objc_storeWeak(&v12->_home, homeCopy);
      v14 = [identifierCopy copy];
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

+ (id)unarchiveFromData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v20 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:dataCopy error:&v20];
  v11 = v20;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v10;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    if (error)
    {
      v17 = v11;
      v12 = 0;
      *error = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)filteredPredicate:(id)predicate withUserUUIDs:(id)ds
{
  v52 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  dsCopy = ds;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = predicateCopy;
    array = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    subpredicates = [v8 subpredicates];
    v11 = [subpredicates countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v41 = v8;
      v43 = predicateCopy;
      v13 = 0;
      v14 = *v48;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(subpredicates);
          }

          v16 = *(*(&v47 + 1) + 8 * i);
          v17 = [self filteredPredicate:v16 withUserUUIDs:dsCopy];
          if (v17)
          {
            [array addObject:v17];
          }

          v13 |= v17 != v16;
        }

        v12 = [subpredicates countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v12);

      v8 = v41;
      predicateCopy = v43;
      if (v13)
      {
        if (![array count])
        {
          v37 = 0;
          goto LABEL_26;
        }

        v18 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:objc_msgSend(v41 subpredicates:{"compoundPredicateType"), array}];
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
    v8 = predicateCopy;
    array = [v8 leftExpression];
    if ([array expressionType] == 3)
    {
      keyPath = [array keyPath];
      v20 = [keyPath isEqualToString:*MEMORY[0x277CD0C40]];

      if (v20)
      {
        rightExpression = [v8 rightExpression];
        if (![rightExpression expressionType])
        {
          constantValue = [rightExpression constantValue];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            constantValue2 = [rightExpression constantValue];
            v25 = *MEMORY[0x277CD24D0];
            v26 = [constantValue2 hmf_arrayForKey:*MEMORY[0x277CD24D0]];
            if ([v26 count])
            {
              v44 = constantValue2;
              v45[0] = MEMORY[0x277D85DD0];
              v45[1] = 3221225472;
              v45[2] = __57__HMDPredicateUtilities_filteredPredicate_withUserUUIDs___block_invoke;
              v45[3] = &unk_27972D738;
              v46 = dsCopy;
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
                  comparisonPredicateModifier = [v8 comparisonPredicateModifier];
                  predicateOperatorType = [v8 predicateOperatorType];
                  options = [v8 options];
                  v36 = v32;
                  rightExpression = v40;
                  v37 = [v36 initWithLeftExpression:array rightExpression:v40 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];
                }

                else
                {
                  v37 = 0;
                  v31 = v44;
                }

                goto LABEL_26;
              }

              constantValue2 = v44;
            }
          }
        }
      }
    }
  }

  v37 = predicateCopy;
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

+ (id)encodePredicate:(id)predicate error:(id *)error
{
  if (predicate)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:predicate requiringSecureCoding:1 error:error];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)decodePredicateFromData:(id)data error:(id *)error
{
  if (data)
  {
    v6 = MEMORY[0x277CCAAC8];
    dataCopy = data;
    predicateCodingClasses = [self predicateCodingClasses];
    v9 = [v6 unarchivedObjectOfClasses:predicateCodingClasses fromData:dataCopy error:error];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *error = v10 = 0;
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