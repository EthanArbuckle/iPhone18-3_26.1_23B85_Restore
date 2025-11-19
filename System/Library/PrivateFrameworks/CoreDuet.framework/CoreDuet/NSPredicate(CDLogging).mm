@interface NSPredicate(CDLogging)
- (id)cd_sanitizeForLogging;
@end

@implementation NSPredicate(CDLogging)

- (id)cd_sanitizeForLogging
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = a1;
    v10 = v12;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = [v12 leftExpression];
    v14 = [v13 cd_containsSensitiveKeyPath];

    if (v14)
    {
      v15 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v16 = objc_alloc(MEMORY[0x1E696AB18]);
      v17 = [v10 leftExpression];
      v18 = [v10 comparisonPredicateModifier];
      v19 = [v10 predicateOperatorType];
      v20 = [v10 options];
      v21 = v16;
      v22 = v17;
      v23 = v15;
    }

    else
    {
      v24 = [v10 rightExpression];
      v25 = [v24 cd_containsSensitiveKeyPath];

      if (!v25)
      {
        v27 = v10;
        goto LABEL_19;
      }

      v15 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v26 = objc_alloc(MEMORY[0x1E696AB18]);
      v17 = [v10 rightExpression];
      v18 = [v10 comparisonPredicateModifier];
      v19 = [v10 predicateOperatorType];
      v20 = [v10 options];
      v21 = v26;
      v22 = v15;
      v23 = v17;
    }

    v27 = [v21 initWithLeftExpression:v22 rightExpression:v23 modifier:v18 type:v19 options:v20];

LABEL_19:
    v10 = v27;
    goto LABEL_20;
  }

  v2 = a1;
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v2 subpredicates];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v30 + 1) + 8 * i) cd_sanitizeForLogging];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(v2 subpredicates:{"compoundPredicateType"), v3}];
LABEL_20:
  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

@end