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
    selfCopy = self;
    v10 = selfCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_20;
    }

    leftExpression = [selfCopy leftExpression];
    cd_containsSensitiveKeyPath = [leftExpression cd_containsSensitiveKeyPath];

    if (cd_containsSensitiveKeyPath)
    {
      v15 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v16 = objc_alloc(MEMORY[0x1E696AB18]);
      leftExpression2 = [v10 leftExpression];
      comparisonPredicateModifier = [v10 comparisonPredicateModifier];
      predicateOperatorType = [v10 predicateOperatorType];
      options = [v10 options];
      v21 = v16;
      v22 = leftExpression2;
      v23 = v15;
    }

    else
    {
      rightExpression = [v10 rightExpression];
      cd_containsSensitiveKeyPath2 = [rightExpression cd_containsSensitiveKeyPath];

      if (!cd_containsSensitiveKeyPath2)
      {
        v27 = v10;
        goto LABEL_19;
      }

      v15 = [MEMORY[0x1E696ABC8] expressionForConstantValue:@"<redacted>"];
      v26 = objc_alloc(MEMORY[0x1E696AB18]);
      leftExpression2 = [v10 rightExpression];
      comparisonPredicateModifier = [v10 comparisonPredicateModifier];
      predicateOperatorType = [v10 predicateOperatorType];
      options = [v10 options];
      v21 = v26;
      v22 = v15;
      v23 = leftExpression2;
    }

    v27 = [v21 initWithLeftExpression:v22 rightExpression:v23 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];

LABEL_19:
    v10 = v27;
    goto LABEL_20;
  }

  selfCopy2 = self;
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  subpredicates = [selfCopy2 subpredicates];
  v5 = [subpredicates countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(subpredicates);
        }

        cd_sanitizeForLogging = [*(*(&v30 + 1) + 8 * i) cd_sanitizeForLogging];
        if (cd_sanitizeForLogging)
        {
          [v3 addObject:cd_sanitizeForLogging];
        }
      }

      v6 = [subpredicates countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v10 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(selfCopy2 subpredicates:{"compoundPredicateType"), v3}];
LABEL_20:
  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

@end