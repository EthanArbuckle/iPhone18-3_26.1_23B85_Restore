@interface HFDateComponentsCondition
- (BOOL)isTimeOfDayCondition;
- (HFDateComponentsCondition)initWithDateComponents:(id)components comparisonType:(unint64_t)type;
- (HFDateComponentsCondition)initWithPredicate:(id)predicate;
- (NSString)description;
- (int64_t)compare:(id)compare;
- (unint64_t)timeConditionType;
@end

@implementation HFDateComponentsCondition

- (HFDateComponentsCondition)initWithDateComponents:(id)components comparisonType:(unint64_t)type
{
  componentsCopy = components;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__HFDateComponentsCondition_initWithDateComponents_comparisonType___block_invoke;
  v14 = &unk_277E010D8;
  v15 = componentsCopy;
  typeCopy = type;
  v7 = componentsCopy;
  v8 = __67__HFDateComponentsCondition_initWithDateComponents_comparisonType___block_invoke(&v11);
  v9 = [(HFDateComponentsCondition *)self initWithPredicate:v8, v11, v12, v13, v14];

  return v9;
}

id __67__HFDateComponentsCondition_initWithDateComponents_comparisonType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2)
  {
    v2 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterDateWithComponents:*(a1 + 32)];
  }

  else if (v1 == 1)
  {
    v2 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringOnDateWithComponents:*(a1 + 32)];
  }

  else if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeDateWithComponents:*(a1 + 32)];
  }

  return v2;
}

- (HFDateComponentsCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v17.receiver = self;
  v17.super_class = HFDateComponentsCondition;
  v5 = [(HFCondition *)&v17 initWithPredicate:predicateCopy];
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = predicateCopy;
    predicateOperatorType = [v6 predicateOperatorType];
    if (predicateOperatorType > 4)
    {
LABEL_9:

      goto LABEL_10;
    }

    v5->_comparisonType = qword_20DD97820[predicateOperatorType];
    leftExpression = [v6 leftExpression];
    rightExpression = [v6 rightExpression];
    if ([leftExpression expressionType] != 4)
    {
LABEL_8:

      goto LABEL_9;
    }

    function = [leftExpression function];
    if (![function isEqualToString:@"now"] || objc_msgSend(rightExpression, "expressionType"))
    {

      goto LABEL_8;
    }

    constantValue = [rightExpression constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    constantValue2 = [rightExpression constantValue];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = constantValue2;

LABEL_13:
    v11 = v5;
    goto LABEL_14;
  }

LABEL_10:
  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)isTimeOfDayCondition
{
  dateComponents = [(HFDateComponentsCondition *)self dateComponents];
  v3 = ([dateComponents hf_validComponents] & 0xFFFFFFFFFFFFFF9FLL) == 0;

  return v3;
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

  if (v7)
  {
    dateComponents = [(HFDateComponentsCondition *)self dateComponents];
    dateComponents2 = [v7 dateComponents];
    v10 = [dateComponents hf_compareNextMatchingDate:dateComponents2];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  dateComponents = [(HFDateComponentsCondition *)self dateComponents];
  v5 = [v3 appendObject:dateComponents withName:@"dateComponents"];

  comparisonType = [(HFDateComponentsCondition *)self comparisonType];
  if (comparisonType > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_277E010F8[comparisonType];
  }

  [v3 appendString:v7 withName:@"comparisonType"];
  build = [v3 build];

  return build;
}

- (unint64_t)timeConditionType
{
  if ([(HFDateComponentsCondition *)self isTimeOfDayCondition])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = HFDateComponentsCondition;
  return [(HFTimeCondition *)&v4 timeConditionType];
}

@end