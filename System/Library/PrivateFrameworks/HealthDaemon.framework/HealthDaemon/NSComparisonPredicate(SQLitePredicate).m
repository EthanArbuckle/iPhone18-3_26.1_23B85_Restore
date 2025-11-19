@interface NSComparisonPredicate(SQLitePredicate)
- (id)hd_sqlPredicateForSelect;
@end

@implementation NSComparisonPredicate(SQLitePredicate)

- (id)hd_sqlPredicateForSelect
{
  v2 = [a1 leftExpression];
  v3 = [a1 rightExpression];
  v4 = [a1 predicateOperatorType];
  if (v4 >= 6 && v4 != 10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type in comparison expression: %@", a1}];
  }

  if ([v2 expressionType] == 3)
  {
    [v2 keyPath];
  }

  else
  {
    [v2 description];
  }
  v5 = ;
  if ([v3 expressionType])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Expected constant value in right side of comparison expression: %@", a1}];
    v6 = 0;
  }

  else
  {
    v6 = [v3 constantValue];
  }

  v7 = v6;
  v8 = v5;
  if (!a1)
  {
    v28 = 0;
    v11 = v7;
    goto LABEL_69;
  }

  if (qword_280D67CA8 != -1)
  {
    dispatch_once(&qword_280D67CA8, &__block_literal_global_137);
  }

  v9 = [_MergedGlobals_208 objectForKeyedSubscript:v8];
  v10 = v9;
  v11 = v7;
  if (!v9)
  {
    goto LABEL_62;
  }

  v37 = v2;
  v36 = v7;
  v12 = 0;
  if (![v9 count])
  {
    v11 = v7;
LABEL_51:
    v26 = [v10 count];
    v27 = *MEMORY[0x277CBE660];
    if (v26 == 1 && v12)
    {
      [MEMORY[0x277CBEAD8] raise:v27 format:{@"Expected constant value of type %@, received %@", v12, v11}];
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:v27 format:{@"Constant value %@ not matching any expected type", v11, v35}];
    }

    v28 = 0;
    v2 = v37;
    v7 = v36;
    goto LABEL_68;
  }

  v13 = 0;
  v11 = v7;
  while (1)
  {
    v14 = [v10 objectAtIndexedSubscript:v13];
    v15 = [v14 unsignedIntegerValue];

    if (v15 > 2u)
    {
      break;
    }

    switch(v15)
    {
      case 1u:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v21 = _HDSQLiteValueForDate();

          v11 = v21;
        }

LABEL_37:
        v30 = [objc_opt_class() description];

        v12 = v30;
        if (isKindOfClass)
        {
          goto LABEL_61;
        }

        break;
      case 2u:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = @"double";
          goto LABEL_60;
        }

        objc_opt_class();
        v18 = @"double";
        if (objc_opt_isKindOfClass())
        {
          v38 = 0.0;
          v19 = [MEMORY[0x277CCAC80] scannerWithString:v11];
          if ([v19 scanDouble:&v38] && (objc_msgSend(v19, "isAtEnd") & 1) != 0)
          {
            v29 = [MEMORY[0x277CCABB0] numberWithDouble:v38];

            v30 = @"double";
            goto LABEL_59;
          }

LABEL_32:
        }

LABEL_33:

        v12 = v18;
        break;
      case 0u:
        v30 = @"blob";
        goto LABEL_60;
    }

LABEL_46:
    if (++v13 >= [v10 count])
    {
      goto LABEL_51;
    }
  }

  if (v15 > 8u)
  {
    goto LABEL_46;
  }

  v16 = 1 << v15;
  if (((1 << v15) & 0x48) == 0)
  {
    if ((v16 & 0x90) != 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      goto LABEL_37;
    }

    if ((v16 & 0x120) == 0)
    {
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = _HDSQLiteValueForUUID();
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = 0;
LABEL_45:
        v30 = [objc_opt_class() description];

        v12 = v30;
        if (v25)
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [v11 stringByReplacingOccurrencesOfString:@"" withString:&stru_283BF39C8];
      v24 = [v22 initWithUUIDString:v23];

      v17 = _HDSQLiteValueForUUID();

      v11 = v24;
    }

    v25 = 1;
    v11 = v17;
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = @"integer";
    goto LABEL_60;
  }

  objc_opt_class();
  v18 = @"integer";
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_33;
  }

  v38 = 0.0;
  v19 = [MEMORY[0x277CCAC80] scannerWithString:v11];
  if (![v19 scanInteger:&v38] || (objc_msgSend(v19, "isAtEnd") & 1) == 0)
  {
    goto LABEL_32;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithInteger:*&v38];

  v30 = @"integer";
LABEL_59:
  v11 = v29;
LABEL_60:

LABEL_61:
  v2 = v37;
  v7 = v36;
LABEL_62:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = _HDSQLiteValueForDate();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = _HDSQLiteValueForUUID();

      v11 = v32;
    }

    v31 = v11;
    v11 = v31;
  }

  v28 = v31;
LABEL_68:

LABEL_69:
  [a1 predicateOperatorType];
  v33 = [MEMORY[0x277D10B18] predicateWithProperty:v8 value:v28 comparisonType:HDSQLiteComparisonTypeForPredicateOperator()];

  return v33;
}

@end