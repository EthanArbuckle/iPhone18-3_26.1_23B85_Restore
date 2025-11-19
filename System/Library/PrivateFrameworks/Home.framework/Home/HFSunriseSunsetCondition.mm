@interface HFSunriseSunsetCondition
- (HFSunriseSunsetCondition)initWithPredicate:(id)a3;
- (HFSunriseSunsetCondition)initWithSignificantEvent:(id)a3 offset:(id)a4 comparisonType:(unint64_t)a5;
- (NSString)description;
- (int64_t)compare:(id)a3;
@end

@implementation HFSunriseSunsetCondition

- (HFSunriseSunsetCondition)initWithPredicate:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = HFSunriseSunsetCondition;
  v5 = [(HFCondition *)&v31 initWithPredicate:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 predicateOperatorType];
      if (v7 <= 3)
      {
        v5->_comparisonType = qword_20DD97800[v7];
        v8 = [v6 leftExpression];
        if ([v8 expressionType] == 3)
        {
          v9 = *MEMORY[0x277CD0FB0];
          v32[0] = *MEMORY[0x277CD0FA8];
          v32[1] = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
          v11 = [v8 keyPath];
          v12 = [v10 containsObject:v11];

          if (v12)
          {
            v13 = [v8 keyPath];
            significantEvent = v5->_significantEvent;
            v5->_significantEvent = v13;

            v15 = [v6 rightExpression];
            if ([v15 expressionType] == 4)
            {
              v16 = [v15 function];
              v17 = [v16 isEqualToString:@"add:to:"];

              if (v17)
              {
                v18 = [v15 arguments];
                v19 = [v18 firstObject];
                if ([v19 expressionType] == 4)
                {
                  v20 = [v19 function];
                  v21 = [v20 isEqualToString:@"now"];

                  if (v21)
                  {
                    v22 = [v18 lastObject];
                    if (![v22 expressionType])
                    {
                      v23 = [v22 constantValue];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v25 = [v22 constantValue];
                        v26 = [v25 hf_negativeValue];
                        offset = v5->_offset;
                        v5->_offset = v26;
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

- (HFSunriseSunsetCondition)initWithSignificantEvent:(id)a3 offset:(id)a4 comparisonType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HFSunriseSunsetCondition_initWithSignificantEvent_offset_comparisonType___block_invoke;
  v15[3] = &unk_277E010B0;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v10 = v9;
  v11 = v8;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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

  v8 = [(HFSunriseSunsetCondition *)self significantEvent];
  v9 = *MEMORY[0x277CD0FB0];
  if ([v8 isEqualToString:*MEMORY[0x277CD0FB0]])
  {
    v10 = [v7 significantEvent];
    v11 = *MEMORY[0x277CD0FA8];
    v12 = [v10 isEqualToString:*MEMORY[0x277CD0FA8]];

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

  v14 = [(HFSunriseSunsetCondition *)self significantEvent];
  if ([v14 isEqualToString:v11])
  {
    v15 = [v7 significantEvent];
    v16 = [v15 isEqualToString:v9];

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

  v17 = [(HFSunriseSunsetCondition *)self offset];
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v20 = [(HFSunriseSunsetCondition *)self offset];
    [v20 hf_timeInterval];
    v19 = v21;
  }

  v22 = [v7 offset];
  if (v22)
  {
    v23 = [v7 offset];
    [v23 hf_timeInterval];
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
  v4 = [(HFSunriseSunsetCondition *)self significantEvent];
  v5 = [v3 appendObject:v4 withName:@"significantEvent"];

  v6 = [(HFSunriseSunsetCondition *)self offset];
  v7 = [v3 appendObject:v6 withName:@"offset"];

  v8 = [(HFSunriseSunsetCondition *)self comparisonType];
  if (v8 > 2)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_277E010F8[v8];
  }

  [v3 appendString:v9 withName:@"comparisonType"];
  v10 = [v3 build];

  return v10;
}

@end