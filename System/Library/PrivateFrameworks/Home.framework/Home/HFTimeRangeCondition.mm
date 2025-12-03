@interface HFTimeRangeCondition
+ (id)_primitiveTimePredicateClasses;
- (HFTimeRangeCondition)initWithPredicate:(id)predicate;
- (HFTimeRangeCondition)initWithStartCondition:(id)condition endCondition:(id)endCondition;
- (id)description;
- (unint64_t)timeConditionType;
@end

@implementation HFTimeRangeCondition

+ (id)_primitiveTimePredicateClasses
{
  if (_MergedGlobals_2_6 != -1)
  {
    dispatch_once(&_MergedGlobals_2_6, &__block_literal_global_9_11);
  }

  v3 = qword_280E02628;

  return v3;
}

void __54__HFTimeRangeCondition__primitiveTimePredicateClasses__block_invoke_2()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E02628;
  qword_280E02628 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (HFTimeRangeCondition)initWithPredicate:(id)predicate
{
  v55 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v52.receiver = self;
  v52.super_class = HFTimeRangeCondition;
  v5 = [(HFCondition *)&v52 initWithPredicate:predicateCopy];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_49:
      v37 = 0;
      goto LABEL_50;
    }

    v6 = predicateCopy;
    subpredicates = [v6 subpredicates];
    v8 = [subpredicates count];

    if (v8 != 2)
    {
      goto LABEL_48;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = v6;
    obj = [v6 subpredicates];
    v9 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      v40 = predicateCopy;
LABEL_6:
      v12 = 0;
      while (2)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        _primitiveTimePredicateClasses = [objc_opt_class() _primitiveTimePredicateClasses];
        v15 = [_primitiveTimePredicateClasses countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v45;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(_primitiveTimePredicateClasses);
            }

            v19 = [objc_alloc(*(*(&v44 + 1) + 8 * v18)) initWithPredicate:v13];
            if (v19)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [_primitiveTimePredicateClasses countByEnumeratingWithState:&v44 objects:v53 count:16];
              if (v16)
              {
                goto LABEL_11;
              }

              goto LABEL_26;
            }
          }

          v20 = v19;

          if ([v20 comparisonType] == 2 && (p_startCondition = &v5->_startCondition, !v5->_startCondition) || !objc_msgSend(v20, "comparisonType") && (p_startCondition = &v5->_endCondition, !v5->_endCondition))
          {
            objc_storeStrong(p_startCondition, v20);
          }

          if (++v12 != v10)
          {
            continue;
          }

          v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
          predicateCopy = v40;
          if (v10)
          {
            goto LABEL_6;
          }
        }

        else
        {
LABEL_26:

          predicateCopy = v40;
        }

        break;
      }
    }

    startCondition = v5->_startCondition;
    v6 = v41;
    if (!startCondition || !v5->_endCondition)
    {
LABEL_48:

      goto LABEL_49;
    }

    v23 = startCondition;
    v24 = &unk_282573590;
    v25 = [(HFPrimitiveTimeCondition *)v23 conformsToProtocol:v24];
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    v28 = v5->_endCondition;
    v29 = &unk_282573590;
    if ([(HFPrimitiveTimeCondition *)v28 conformsToProtocol:v29])
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v32 = v27;
    v33 = v31;
    v34 = v33;
    v35 = 0;
    v43 = v33;
    if (v32 && v33)
    {
      v35 = [(HFPrimitiveTimeCondition *)v32 compare:v33];
    }

    compoundPredicateType = [v41 compoundPredicateType];
    if (compoundPredicateType == 2)
    {
      if (!v25 || !v34 || v35 == -1)
      {
        goto LABEL_47;
      }
    }

    else if (compoundPredicateType != 1 || v35 == 1)
    {
LABEL_47:

      goto LABEL_48;
    }
  }

  v37 = v5;
LABEL_50:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

uint64_t __42__HFTimeRangeCondition_initWithPredicate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40))
  {
    return [v2 compare:?];
  }

  else
  {
    return 0;
  }
}

- (HFTimeRangeCondition)initWithStartCondition:(id)condition endCondition:(id)endCondition
{
  v33[2] = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  endConditionCopy = endCondition;
  v8 = &unk_282573590;
  if ([conditionCopy conformsToProtocol:v8])
  {
    v9 = conditionCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = endConditionCopy;
  v12 = &unk_282573590;
  if ([v11 conformsToProtocol:v12])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v30 = MEMORY[0x277D85DD0];
  v31 = v10;
  v32 = v14;
  v15 = v14;
  v16 = v10;
  v17 = 0;
  if (v16)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v17 = [v16 compare:v15];
  }

  v28 = MEMORY[0x277D85DD0];
  v29 = v17;
  if (v17 == 1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = objc_alloc(MEMORY[0x277CCA920]);
  predicate = [conditionCopy predicate];
  v33[0] = predicate;
  predicate2 = [v11 predicate];
  v33[1] = predicate2;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v24 = [v20 initWithType:v19 subpredicates:v23];

  v25 = [(HFTimeRangeCondition *)self initWithPredicate:v24];
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __60__HFTimeRangeCondition_initWithStartCondition_endCondition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40))
  {
    return [v2 compare:?];
  }

  else
  {
    return 0;
  }
}

uint64_t __60__HFTimeRangeCondition_initWithStartCondition_endCondition___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  startCondition = [(HFTimeRangeCondition *)self startCondition];
  v5 = [v3 appendObject:startCondition withName:@"startCondition"];

  endCondition = [(HFTimeRangeCondition *)self endCondition];
  v7 = [v3 appendObject:endCondition withName:@"endCondition"];

  build = [v3 build];

  return build;
}

- (unint64_t)timeConditionType
{
  startCondition = [(HFTimeRangeCondition *)self startCondition];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  endCondition = [(HFTimeRangeCondition *)self endCondition];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    startCondition2 = [(HFTimeRangeCondition *)self startCondition];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    endCondition2 = [(HFTimeRangeCondition *)self endCondition];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

    startCondition2 = [(HFTimeRangeCondition *)self startCondition];
    endCondition3 = [(HFTimeRangeCondition *)self endCondition];
    if ([startCondition2 isTimeOfDayCondition] && objc_msgSend(endCondition3, "isTimeOfDayCondition"))
    {

      return 2;
    }

LABEL_17:

    goto LABEL_18;
  }

  startCondition2 = [(HFTimeRangeCondition *)self startCondition];
  endCondition3 = [(HFTimeRangeCondition *)self endCondition];
  significantEvent = [startCondition2 significantEvent];
  v9 = *MEMORY[0x277CD0FB0];
  if ([significantEvent isEqualToString:*MEMORY[0x277CD0FB0]])
  {
    significantEvent2 = [endCondition3 significantEvent];
    v11 = *MEMORY[0x277CD0FA8];
    v12 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FA8]];

    if (v12)
    {

      return 1;
    }
  }

  else
  {

    v11 = *MEMORY[0x277CD0FA8];
  }

  significantEvent3 = [startCondition2 significantEvent];
  if (![significantEvent3 isEqualToString:v11])
  {

    goto LABEL_17;
  }

  significantEvent4 = [endCondition3 significantEvent];
  v18 = [significantEvent4 isEqualToString:v9];

  if (v18)
  {
    return 0;
  }

LABEL_19:
  v19.receiver = self;
  v19.super_class = HFTimeRangeCondition;
  return [(HFTimeCondition *)&v19 timeConditionType];
}

@end