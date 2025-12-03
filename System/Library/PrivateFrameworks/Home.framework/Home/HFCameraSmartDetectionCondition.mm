@interface HFCameraSmartDetectionCondition
+ (BOOL)_predicateIsValidForPersonFamiliarityKeyPath:(id)path;
+ (BOOL)_predicateIsValidForSignificantEventKeyPath:(id)path;
- (HFCameraSmartDetectionCondition)initWithPredicate:(id)predicate;
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
@end

@implementation HFCameraSmartDetectionCondition

- (HFCameraSmartDetectionCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v31.receiver = self;
  v31.super_class = HFCameraSmartDetectionCondition;
  v5 = [(HFCondition *)&v31 initWithPredicate:predicateCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = predicateCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      subpredicates = [v8 subpredicates];
      v10 = [subpredicates count];

      if (v10 != 2)
      {
        goto LABEL_26;
      }

      subpredicates2 = [v8 subpredicates];
      v12 = [subpredicates2 objectAtIndexedSubscript:0];
      v13 = [HFCameraSmartDetectionCondition _predicateIsValidForSignificantEventKeyPath:v12];
      if (v13)
      {
        subpredicates3 = [v8 subpredicates];
        v15 = [subpredicates3 objectAtIndexedSubscript:1];
        if ([HFCameraSmartDetectionCondition _predicateIsValidForPersonFamiliarityKeyPath:v15])
        {

LABEL_18:
          v16 = v5;
LABEL_27:

          goto LABEL_28;
        }

        v29 = v15;
        v26 = subpredicates3;
      }

      v30 = v12;
      subpredicates4 = [v8 subpredicates];
      v18 = [subpredicates4 objectAtIndexedSubscript:1];
      if ([HFCameraSmartDetectionCondition _predicateIsValidForSignificantEventKeyPath:v18])
      {
        subpredicates5 = [v8 subpredicates];
        [subpredicates5 objectAtIndexedSubscript:0];
        v20 = v28 = subpredicates2;
        v21 = [HFCameraSmartDetectionCondition _predicateIsValidForPersonFamiliarityKeyPath:v20];

        subpredicates2 = v28;
      }

      else
      {
        v21 = 0;
      }

      if (v13)
      {
      }

      if (v21)
      {
        goto LABEL_18;
      }
    }

    objc_opt_class();
    v22 = v6;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24 && [HFCameraSmartDetectionCondition _predicateIsValidForSignificantEventKeyPath:v24])
    {
      v16 = v5;

      goto LABEL_27;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v16 = 0;
LABEL_28:

  return v16;
}

+ (BOOL)_predicateIsValidForSignificantEventKeyPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v4 = pathCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  leftExpression = [v6 leftExpression];
  if ([leftExpression expressionType] == 4)
  {
    leftExpression2 = [v6 leftExpression];
    arguments = [leftExpression2 arguments];
    firstObject = [arguments firstObject];
    keyPath = [firstObject keyPath];
    v12 = [keyPath isEqualToString:*MEMORY[0x277CCF598]];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_predicateIsValidForPersonFamiliarityKeyPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v4 = pathCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  leftExpression = [v6 leftExpression];
  if ([leftExpression expressionType] == 4)
  {
    leftExpression2 = [v6 leftExpression];
    arguments = [leftExpression2 arguments];
    firstObject = [arguments firstObject];
    keyPath = [firstObject keyPath];
    v12 = [keyPath isEqualToString:*MEMORY[0x277CCF5A0]];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  v3 = [[HFConditionUISummary alloc] initWithCondition:self title:0 description:0];

  return v3;
}

@end