@interface HFSunriseSunsetCondition
- (HFSunriseSunsetCondition)initWithPredicate:(id)predicate;
- (HFSunriseSunsetCondition)initWithSignificantEvent:(id)event offset:(id)offset comparisonType:(unint64_t)type;
- (NSString)description;
- (int64_t)compare:(id)compare;
@end

@implementation HFSunriseSunsetCondition

- (HFSunriseSunsetCondition)initWithPredicate:(id)predicate
{
  v32[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v31.receiver = self;
  v31.super_class = HFSunriseSunsetCondition;
  v5 = [(HFCondition *)&v31 initWithPredicate:predicateCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = predicateCopy;
      predicateOperatorType = [v6 predicateOperatorType];
      if (predicateOperatorType <= 3)
      {
        v5->_comparisonType = qword_20DD97800[predicateOperatorType];
        leftExpression = [v6 leftExpression];
        if ([leftExpression expressionType] == 3)
        {
          v9 = *MEMORY[0x277CD0FB0];
          v32[0] = *MEMORY[0x277CD0FA8];
          v32[1] = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
          keyPath = [leftExpression keyPath];
          v12 = [v10 containsObject:keyPath];

          if (v12)
          {
            keyPath2 = [leftExpression keyPath];
            significantEvent = v5->_significantEvent;
            v5->_significantEvent = keyPath2;

            rightExpression = [v6 rightExpression];
            if ([rightExpression expressionType] == 4)
            {
              function = [rightExpression function];
              v17 = [function isEqualToString:@"add:to:"];

              if (v17)
              {
                arguments = [rightExpression arguments];
                firstObject = [arguments firstObject];
                if ([firstObject expressionType] == 4)
                {
                  function2 = [firstObject function];
                  v21 = [function2 isEqualToString:@"now"];

                  if (v21)
                  {
                    lastObject = [arguments lastObject];
                    if (![lastObject expressionType])
                    {
                      constantValue = [lastObject constantValue];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        constantValue2 = [lastObject constantValue];
                        hf_negativeValue = [constantValue2 hf_negativeValue];
                        offset = v5->_offset;
                        v5->_offset = hf_negativeValue;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_16;
          }
        }
      }
    }

    v28 = 0;
    goto LABEL_20;
  }

LABEL_16:
  v28 = v5;
LABEL_20:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (HFSunriseSunsetCondition)initWithSignificantEvent:(id)event offset:(id)offset comparisonType:(unint64_t)type
{
  eventCopy = event;
  offsetCopy = offset;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HFSunriseSunsetCondition_initWithSignificantEvent_offset_comparisonType___block_invoke;
  v15[3] = &unk_277E010B0;
  v16 = eventCopy;
  v17 = offsetCopy;
  typeCopy = type;
  v10 = offsetCopy;
  v11 = eventCopy;
  v12 = __75__HFSunriseSunsetCondition_initWithSignificantEvent_offset_comparisonType___block_invoke(v15);
  v13 = [(HFSunriseSunsetCondition *)self initWithPredicate:v12];

  return v13;
}

id __75__HFSunriseSunsetCondition_initWithSignificantEvent_offset_comparisonType___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x277CD1E00]) initWithSignificantEvent:a1[4] offset:a1[5]];
  v3 = a1[6];
  if (v3 == 2)
  {
    v4 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterSignificantEvent:v2];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:v2];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = compareCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  significantEvent = [(HFSunriseSunsetCondition *)self significantEvent];
  v9 = *MEMORY[0x277CD0FB0];
  if ([significantEvent isEqualToString:*MEMORY[0x277CD0FB0]])
  {
    significantEvent2 = [v7 significantEvent];
    v11 = *MEMORY[0x277CD0FA8];
    v12 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FA8]];

    if (v12)
    {
      v13 = 1;
      goto LABEL_18;
    }
  }

  else
  {

    v11 = *MEMORY[0x277CD0FA8];
  }

  significantEvent3 = [(HFSunriseSunsetCondition *)self significantEvent];
  if ([significantEvent3 isEqualToString:v11])
  {
    significantEvent4 = [v7 significantEvent];
    v16 = [significantEvent4 isEqualToString:v9];

    if (v16)
    {
LABEL_11:
      v13 = -1;
      goto LABEL_18;
    }
  }

  else
  {
  }

  offset = [(HFSunriseSunsetCondition *)self offset];
  v18 = 0.0;
  v19 = 0.0;
  if (offset)
  {
    offset2 = [(HFSunriseSunsetCondition *)self offset];
    [offset2 hf_timeInterval];
    v19 = v21;
  }

  offset3 = [v7 offset];
  if (offset3)
  {
    offset4 = [v7 offset];
    [offset4 hf_timeInterval];
    v18 = v24;
  }

  v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v13 = [v25 compare:v26];

LABEL_18:
  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  significantEvent = [(HFSunriseSunsetCondition *)self significantEvent];
  v5 = [v3 appendObject:significantEvent withName:@"significantEvent"];

  offset = [(HFSunriseSunsetCondition *)self offset];
  v7 = [v3 appendObject:offset withName:@"offset"];

  comparisonType = [(HFSunriseSunsetCondition *)self comparisonType];
  if (comparisonType > 2)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_277E010F8[comparisonType];
  }

  [v3 appendString:v9 withName:@"comparisonType"];
  build = [v3 build];

  return build;
}

@end