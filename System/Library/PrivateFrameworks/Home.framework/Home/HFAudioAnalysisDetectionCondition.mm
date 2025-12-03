@interface HFAudioAnalysisDetectionCondition
- (HFAudioAnalysisDetectionCondition)initWithPredicate:(id)predicate;
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
@end

@implementation HFAudioAnalysisDetectionCondition

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  v3 = [[HFConditionUISummary alloc] initWithCondition:self title:0 description:0];

  return v3;
}

- (HFAudioAnalysisDetectionCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v25.receiver = self;
  v25.super_class = HFAudioAnalysisDetectionCondition;
  v5 = [(HFCondition *)&v25 initWithPredicate:predicateCopy];
  if (!v5)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  firstObject = predicateCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = firstObject;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    objc_opt_class();
    v16 = firstObject;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    subpredicates = [v18 subpredicates];
    v20 = [subpredicates count];

    if (v20 != 1)
    {

      goto LABEL_22;
    }

    objc_opt_class();
    subpredicates2 = [v18 subpredicates];
    firstObject = [subpredicates2 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v22 = firstObject;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  leftExpression = [firstObject leftExpression];
  if ([leftExpression expressionType] != 4)
  {

    goto LABEL_20;
  }

  leftExpression2 = [firstObject leftExpression];
  arguments = [leftExpression2 arguments];
  firstObject2 = [arguments firstObject];
  keyPath = [firstObject2 keyPath];
  v14 = [keyPath isEqualToString:*MEMORY[0x277CCF2F0]];

  if (!v14)
  {
LABEL_20:

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

LABEL_9:
  v15 = v5;
LABEL_23:

  return v15;
}

@end