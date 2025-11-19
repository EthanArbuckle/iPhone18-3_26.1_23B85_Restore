@interface HFDateComponentsCondition
- (BOOL)isTimeOfDayCondition;
- (HFDateComponentsCondition)initWithDateComponents:(id)a3 comparisonType:(unint64_t)a4;
- (HFDateComponentsCondition)initWithPredicate:(id)a3;
- (NSString)description;
- (int64_t)compare:(id)a3;
- (unint64_t)timeConditionType;
@end

@implementation HFDateComponentsCondition

- (HFDateComponentsCondition)initWithDateComponents:(id)a3 comparisonType:(unint64_t)a4
{
  v6 = a3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__HFDateComponentsCondition_initWithDateComponents_comparisonType___block_invoke;
  v14 = &unk_277E010D8;
  v15 = v6;
  v16 = a4;
  v7 = v6;
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

- (HFDateComponentsCondition)initWithPredicate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HFDateComponentsCondition;
  v5 = [(HFCondition *)&v17 initWithPredicate:v4];
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v7 = [v6 predicateOperatorType];
    if (v7 > 4)
    {
LABEL_9:

      goto LABEL_10;
    }

    v5->_comparisonType = qword_20DD97820[v7];
    v8 = [v6 leftExpression];
    v9 = [v6 rightExpression];
    if ([v8 expressionType] != 4)
    {
LABEL_8:

      goto LABEL_9;
    }

    v10 = [v8 function];
    if (![v10 isEqualToString:@"now"] || objc_msgSend(v9, "expressionType"))
    {

      goto LABEL_8;
    }

    v12 = [v9 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    v14 = [v9 constantValue];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v14;

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
  v2 = [(HFDateComponentsCondition *)self dateComponents];
  v3 = ([v2 hf_validComponents] & 0xFFFFFFFFFFFFFF9FLL) == 0;

  return v3;
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

  if (v7)
  {
    v8 = [(HFDateComponentsCondition *)self dateComponents];
    v9 = [v7 dateComponents];
    v10 = [v8 hf_compareNextMatchingDate:v9];
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
  v4 = [(HFDateComponentsCondition *)self dateComponents];
  v5 = [v3 appendObject:v4 withName:@"dateComponents"];

  v6 = [(HFDateComponentsCondition *)self comparisonType];
  if (v6 > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_277E010F8[v6];
  }

  [v3 appendString:v7 withName:@"comparisonType"];
  v8 = [v3 build];

  return v8;
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