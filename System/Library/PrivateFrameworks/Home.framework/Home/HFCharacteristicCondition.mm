@interface HFCharacteristicCondition
+ (id)_characteristicPredicateInCompoundPredicate:(id)predicate;
+ (id)_valuePredicateInCompoundPredicate:(id)predicate;
- (HFCharacteristicCondition)initWithCharacteristic:(id)characteristic operatorType:(unint64_t)type value:(id)value;
- (HFCharacteristicCondition)initWithPredicate:(id)predicate;
- (id)_nameFormattingContext:(int64_t)context;
- (id)hf_naturalLanguageSummaryWithOptions:(id)options;
@end

@implementation HFCharacteristicCondition

- (HFCharacteristicCondition)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v21.receiver = self;
  v21.super_class = HFCharacteristicCondition;
  v5 = [(HFCondition *)&v21 initWithPredicate:predicateCopy];
  if (!v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v6 = predicateCopy;
  subpredicates = [v6 subpredicates];
  v8 = [subpredicates count];

  if (v8 != 2 || ([objc_opt_class() _characteristicPredicateInCompoundPredicate:v6], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = [objc_opt_class() _characteristicPredicateInCompoundPredicate:v6];
  rightExpression = [v10 rightExpression];
  constantValue = [rightExpression constantValue];
  characteristic = v5->_characteristic;
  v5->_characteristic = constantValue;

  v14 = [objc_opt_class() _valuePredicateInCompoundPredicate:v6];

  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = [objc_opt_class() _valuePredicateInCompoundPredicate:v6];
  v5->_operatorType = [v15 predicateOperatorType];
  rightExpression2 = [v15 rightExpression];
  constantValue2 = [rightExpression2 constantValue];
  value = v5->_value;
  v5->_value = constantValue2;

LABEL_7:
  v19 = v5;
LABEL_11:

  return v19;
}

- (HFCharacteristicCondition)initWithCharacteristic:(id)characteristic operatorType:(unint64_t)type value:(id)value
{
  v6 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerWithCharacteristic:characteristic relatedBy:type toValue:value];
  v7 = [(HFCharacteristicCondition *)self initWithPredicate:v6];

  return v7;
}

+ (id)_characteristicPredicateInCompoundPredicate:(id)predicate
{
  subpredicates = [predicate subpredicates];
  v4 = [subpredicates na_firstObjectPassingTest:&__block_literal_global_191];

  return v4;
}

uint64_t __73__HFCharacteristicCondition__characteristicPredicateInCompoundPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v3 leftExpression];
  if ([v4 expressionType] != 3)
  {
    goto LABEL_5;
  }

  v5 = [v3 leftExpression];
  v6 = [v5 keyPath];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCF6A8]];

  if (v7)
  {
    v4 = [v3 rightExpression];
    if ([v4 expressionType])
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = [v3 rightExpression];
    v11 = [v10 constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = 1;
      goto LABEL_7;
    }
  }

LABEL_6:
  v8 = 0;
LABEL_7:

LABEL_9:
  return v8;
}

+ (id)_valuePredicateInCompoundPredicate:(id)predicate
{
  subpredicates = [predicate subpredicates];
  v4 = [subpredicates na_firstObjectPassingTest:&__block_literal_global_5_2];

  return v4;
}

BOOL __64__HFCharacteristicCondition__valuePredicateInCompoundPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 leftExpression];
    if ([v4 expressionType] == 3)
    {
      v5 = [v3 leftExpression];
      v6 = [v5 keyPath];
      v7 = [v6 isEqualToString:*MEMORY[0x277CCFBD0]];

      if (!v7)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v4 = [v3 rightExpression];
      v8 = [v4 expressionType] == 0;
    }

    else
    {
      v8 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)hf_naturalLanguageSummaryWithOptions:(id)options
{
  optionsCopy = options;
  v5 = -[HFCharacteristicCondition _nameFormattingContext:](self, "_nameFormattingContext:", [optionsCopy formattingContext]);
  formattingContext = [optionsCopy formattingContext];

  if (formattingContext != 5)
  {
    hf_stringByCapitalizingFirstWord = [v5 hf_stringByCapitalizingFirstWord];

    v5 = hf_stringByCapitalizingFirstWord;
  }

  v8 = [[HFConditionUISummary alloc] initWithCondition:self title:v5 description:0];

  return v8;
}

- (id)_nameFormattingContext:(int64_t)context
{
  v46 = *MEMORY[0x277D85DE8];
  characteristic = [(HFCharacteristicCondition *)self characteristic];
  if (!characteristic || (v6 = characteristic, [(HFCharacteristicCondition *)self value], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    value = [(HFCharacteristicCondition *)self value];

    if (value)
    {
      characteristic2 = [(HFCharacteristicCondition *)self characteristic];

      if (characteristic2)
      {
LABEL_17:
        hf_displayName = [@"HFConditionNameUnknown" stringByAppendingString:&stru_2824B1A78];
        v26 = _HFLocalizedStringWithDefaultValue(hf_displayName, hf_displayName, 1);
        goto LABEL_18;
      }

      v29 = HFLogForCategory(0x31uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(a2);
        *buf = 138412546;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@ missing characteristic. Using unknown condition string", buf, 0x16u);
      }
    }

    else
    {
      v29 = HFLogForCategory(0x31uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        characteristic3 = [(HFCharacteristicCondition *)self characteristic];
        uniqueIdentifier = [characteristic3 uniqueIdentifier];
        *buf = 138412802;
        v41 = v34;
        v42 = 2112;
        v43 = v35;
        v44 = 2112;
        v45 = uniqueIdentifier;
        _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@ missing value for characteristic %@. Using unknown condition string", buf, 0x20u);
      }
    }

    goto LABEL_17;
  }

  characteristic4 = [(HFCharacteristicCondition *)self characteristic];
  service = [characteristic4 service];
  hf_displayName = [service hf_displayName];

  v11 = MEMORY[0x277CCAA28];
  characteristic5 = [(HFCharacteristicCondition *)self characteristic];
  v13 = [v11 hf_valueFormatterForCharacteristic:characteristic5 options:0];

  value2 = [(HFCharacteristicCondition *)self value];
  v15 = [v13 stringForObjectValue:value2];

  operatorType = [(HFCharacteristicCondition *)self operatorType];
  v17 = 0;
  if (operatorType <= 5)
  {
    v17 = off_277E01058[operatorType];
  }

  v18 = [(__CFString *)v17 stringByAppendingString:&stru_2824B1A78];
  v25 = v18;
  v26 = 0;
  if (hf_displayName && v15 && v18)
  {
    v26 = HFLocalizedStringWithFormat(v18, @"%@%@", v19, v20, v21, v22, v23, v24, hf_displayName);
  }

LABEL_18:
  v38 = *MEMORY[0x277D85DE8];

  return v26;
}

@end