@interface ASMailboxSearchPredicate
- (ASMailboxSearchPredicate)initWithPredicate:(id)a3;
- (BOOL)isValid;
- (id)getString;
- (id)getStringForComparisonPredicate:(id)a3;
- (id)getStringForCompoundPredicate:(id)a3;
- (id)getStringForPredicate:(id)a3;
@end

@implementation ASMailboxSearchPredicate

- (ASMailboxSearchPredicate)initWithPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASMailboxSearchPredicate;
  v6 = [(ASMailboxSearchPredicate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, a3);
  }

  return v7;
}

- (BOOL)isValid
{
  v2 = [(ASMailboxSearchPredicate *)self getString];
  v3 = v2 != 0;

  return v3;
}

- (id)getStringForComparisonPredicate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 predicateOperatorType];
  v5 = [v3 leftExpression];
  v6 = [v3 rightExpression];
  if ([v5 expressionType] || objc_msgSend(v6, "expressionType"))
  {
    v7 = 0;
    goto LABEL_4;
  }

  v10 = [v5 constantValue];
  v11 = [v6 constantValue];
  if (v4 >= 5)
  {
    if (v4 == 99)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          if ([v12 isEqualToString:*MEMORY[0x277D03F48]])
          {
            v21 = objc_opt_new();
            v7 = v21;
LABEL_62:
            [v21 appendString:@""];
            [v7 appendString:v11];
            v15 = v7;
            v14 = @"";
LABEL_63:
            [v15 appendString:v14];
            goto LABEL_52;
          }

          if (([v12 isEqualToString:*MEMORY[0x277D03F78]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F20]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F28]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F50]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F68]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F80]]& 1) == 0 && ([v12 isEqualToString:*MEMORY[0x277D03F70]]& 1) == 0 && ![v12 isEqualToString:*MEMORY[0x277D03F18]])
          {
            v16 = DALoggingwithCategory();
            v17 = *(MEMORY[0x277D03988] + 3);
            if (!os_log_type_enabled(v16, v17))
            {
              goto LABEL_50;
            }

            v26 = 138412290;
            v27 = v12;
            v18 = "Predicate left string is not supported for contains operator type. Left string: %@";
            goto LABEL_49;
          }

LABEL_61:
          v7 = objc_opt_new();
          [v7 appendString:v12];
          [v7 appendString:@":"];
          v21 = v7;
          goto LABEL_62;
        }
      }

      v12 = DALoggingwithCategory();
      v19 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v12, v19))
      {
        LOWORD(v26) = 0;
        v20 = "Predicate left or right value is not string type for contains operator type.";
        goto LABEL_39;
      }
    }

    else
    {
      v12 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v12, v22))
      {
        v26 = 134217984;
        v27 = v4;
        v20 = "Predicate operator type is not supported. Operator type: %lu";
        v23 = v12;
        v24 = v22;
        v25 = 12;
LABEL_40:
        _os_log_impl(&dword_24A0AC000, v23, v24, v20, &v26, v25);
      }
    }

LABEL_51:
    v7 = 0;
    goto LABEL_52;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
        if (([v12 isEqualToString:*MEMORY[0x277D03F58]]& 1) == 0 && ![v12 isEqualToString:*MEMORY[0x277D03F60]])
        {
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v16, v17))
          {
            v26 = 138412290;
            v27 = v12;
            v18 = "Predicate left value is not supported for right value type. Left value is :%@";
            goto LABEL_49;
          }

          goto LABEL_50;
        }

        if (v4 == 4)
        {
          v7 = objc_opt_new();
          [v7 appendString:v12];
          [v7 appendString:@":"];
          if ([v11 BOOLValue])
          {
            v14 = @"yes";
          }

          else
          {
            v14 = @"no";
          }

          v15 = v7;
          goto LABEL_63;
        }

        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277D03988] + 3);
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_50;
        }

        v26 = 138412290;
        v27 = v12;
        v18 = "Predicate operator is not supported for given left value. Left value is :%@";
LABEL_49:
        _os_log_impl(&dword_24A0AC000, v16, v17, v18, &v26, 0xCu);
        goto LABEL_50;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
        if (![v12 isEqualToString:*MEMORY[0x277D03F30]])
        {
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (!os_log_type_enabled(v16, v17))
          {
            goto LABEL_50;
          }

          v26 = 138412290;
          v27 = v12;
          v18 = "Predicate left value is not supported for right value type. Left value is :%@";
          goto LABEL_49;
        }

        if (v4 != 4)
        {
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 3);
          if (!os_log_type_enabled(v16, v17))
          {
            goto LABEL_50;
          }

          v26 = 138412290;
          v27 = v12;
          v18 = "Predicate operator is not supported for given left value. Left value is :%@";
          goto LABEL_49;
        }

        goto LABEL_61;
      }
    }

    v12 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v19))
    {
      LOWORD(v26) = 0;
      v20 = "Predicate left value is not string type or right value is not date, number, or string type for less, less than, greater, greater than, or equal operator type.";
LABEL_39:
      v23 = v12;
      v24 = v19;
      v25 = 2;
      goto LABEL_40;
    }

    goto LABEL_51;
  }

  v12 = v10;
  if (([v12 isEqualToString:*MEMORY[0x277D03F40]]& 1) == 0 && ![v12 isEqualToString:*MEMORY[0x277D03F38]])
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v16, v17))
    {
      v26 = 138412290;
      v27 = v12;
      v18 = "Predicate left value is not supported for less, less than, greater, greater than, or equal operator type. Left value is :%@";
      goto LABEL_49;
    }

LABEL_50:

    goto LABEL_51;
  }

  v7 = objc_opt_new();
  [v7 appendString:v12];
  [v7 appendString:off_278FC7ED8[v4]];
  v13 = [v11 activeSyncString];
  [v7 appendString:v13];

LABEL_52:
LABEL_4:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getStringForCompoundPredicate:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 compoundPredicateType];
  if (v5 > 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = off_278FC7F00[v5];
  }

  if ([v4 compoundPredicateType])
  {
    v6 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [v4 subpredicates];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v8)
    {
      goto LABEL_33;
    }

    v9 = v8;
    v28 = v4;
    v10 = *v31;
    v11 = 1;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v14 = [(ASMailboxSearchPredicate *)self getStringForComparisonPredicate:v13];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      if ((v11 & 1) == 0)
      {
        v18 = @" ";
        [v6 appendString:@" "];
        [v6 appendString:v29];
        v16 = v15;
LABEL_19:
        [v6 appendString:{v18, v28}];
        goto LABEL_20;
      }

      v16 = v14;
LABEL_20:
      [v6 appendString:{v15, v28}];

      v11 = 0;
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v11 = 0;
        if (v9)
        {
          goto LABEL_7;
        }

LABEL_24:
        v4 = v28;
LABEL_33:

        goto LABEL_34;
      }
    }

    v17 = [(ASMailboxSearchPredicate *)self getStringForCompoundPredicate:v13];
    if (!v17)
    {
LABEL_23:

      v6 = 0;
      goto LABEL_24;
    }

    v18 = v17;
    if ((v11 & 1) == 0)
    {
      [v6 appendString:@" "];
      [v6 appendString:v29];
      [v6 appendString:@" "];
    }

    objc_msgSend(v6, "appendString:", @"("), v28;
    v15 = @"");
    v16 = v18;
    goto LABEL_19;
  }

  v19 = [v4 subpredicates];
  v20 = [v19 count];

  if (v20 == 1)
  {
    v21 = [v4 subpredicates];
    v7 = [v21 firstObject];

    v22 = [(ASMailboxSearchPredicate *)self getStringForPredicate:v7];
    if (v22)
    {
      v6 = [MEMORY[0x277CCAB68] stringWithString:v29];
      [v6 appendString:@" "];
      [v6 appendString:v22];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_33;
  }

  v23 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = [v4 subpredicates];
    *buf = 134217984;
    v36 = [v25 count];
    _os_log_impl(&dword_24A0AC000, v23, v24, "Invalid NOT predicate, because it contains %lu subpredicates.", buf, 0xCu);
  }

  v6 = 0;
LABEL_34:

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getStringForPredicate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ASMailboxSearchPredicate *)self getStringForComparisonPredicate:v4];
LABEL_5:
    v8 = v5;
    goto LABEL_7;
  }

  v6 = [(ASMailboxSearchPredicate *)self predicate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ASMailboxSearchPredicate *)self getStringForCompoundPredicate:v4];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)getString
{
  v3 = [(ASMailboxSearchPredicate *)self predicate];
  v4 = [(ASMailboxSearchPredicate *)self getStringForPredicate:v3];

  return v4;
}

@end