@interface _OSLogPredicateMapper
- (NSMutableSet)validKeyPaths;
- (_OSLogPredicateMapper)initWithPredicate:(id)a3 andValidate:(BOOL)a4;
- (id)caseInsensitiveMapKeywordToConstantExpression:(id)a3 keywordMap:(id)a4;
- (id)mapEventTypeExpression:(id)a3;
- (id)mapKeywordToConstantExpression:(id)a3 keywordMap:(id)a4;
- (id)mapMessageTypeExpression:(id)a3;
- (id)mapSignpostScopeExpression:(id)a3;
- (id)mapSignpostTypeExpression:(id)a3;
- (void)mapLeftExpression:(id *)a3 andRightExpression:(id *)a4;
- (void)processComparisonPredicate:(id)a3;
- (void)processCompoundPredicate:(id)a3;
- (void)validateExpression:(id)a3;
- (void)validateKeyPath:(id)a3;
- (void)visitPredicate:(id)a3;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation _OSLogPredicateMapper

- (NSMutableSet)validKeyPaths
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___OSLogPredicateMapper_validKeyPaths__block_invoke;
  block[3] = &unk_2787AE2F0;
  block[4] = self;
  if (validKeyPaths_once != -1)
  {
    dispatch_once(&validKeyPaths_once, block);
  }

  return validKeyPaths__validKeyPaths;
}

- (void)visitPredicateExpression:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_pass != 1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = v4;
  [(_OSLogPredicateMapper *)self validateExpression:v4];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)visitPredicateOperator:(id)a3
{
  v3 = a3;
  _os_crash();
  __break(1u);
}

- (void)validateExpression:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v4 = [v12 expressionType];
  if (v4 <= 0xE)
  {
    if (((1 << v4) & 0x4403) != 0)
    {
      goto LABEL_3;
    }

    if (v4 == 3)
    {
      v6 = [v12 operand];
      v7 = [v6 expressionType];

      if (v7 == 1)
      {
        v8 = [v12 arguments];
        v9 = [v8 count];

        if (v9 == 1)
        {
          [(_OSLogPredicateMapper *)self validateKeyPath:v12];
          goto LABEL_3;
        }
      }

      else
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  validationErrors = self->_validationErrors;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid expression: %@", v12];
  [(NSMutableArray *)validationErrors addObject:v11];

LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateKeyPath:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_OSLogPredicateMapper *)self validKeyPaths];
  v6 = [v4 keyPath];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_validKeyPathPrefixes;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [v4 keyPath];
        LOBYTE(v13) = [v14 hasPrefix:v13];

        if (v13)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      validationErrors = self->_validationErrors;
      v16 = MEMORY[0x277CCACA8];
      v8 = [v4 keyPath];
      v17 = [v16 stringWithFormat:@"no such field: %@", v8];
      [(NSMutableArray *)validationErrors addObject:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)processCompoundPredicate:(id)a3
{
  stack = self->_stack;
  v5 = a3;
  v6 = [(NSMutableArray *)stack count];
  v7 = [v5 subpredicates];
  v8 = v6 - [v7 count];
  v9 = [v5 subpredicates];
  v10 = [v9 count];

  v14 = [(NSMutableArray *)self->_stack subarrayWithRange:v8, v10];
  [(NSMutableArray *)self->_stack removeObjectsInRange:v8, v10];
  v11 = objc_alloc(MEMORY[0x277CCA920]);
  v12 = [v5 compoundPredicateType];

  v13 = [v11 initWithType:v12 subpredicates:v14];
  [(NSMutableArray *)self->_stack addObject:v13];
}

- (void)processComparisonPredicate:(id)a3
{
  v4 = a3;
  v13 = [v4 leftExpression];
  v12 = [v4 rightExpression];
  [(_OSLogPredicateMapper *)self mapLeftExpression:&v13 andRightExpression:&v12];
  [(_OSLogPredicateMapper *)self mapLeftExpression:&v12 andRightExpression:&v13];
  v5 = objc_alloc(MEMORY[0x277CCA918]);
  v7 = v12;
  v6 = v13;
  v8 = [v4 comparisonPredicateModifier];
  v9 = [v4 predicateOperatorType];
  v10 = [v4 options];

  v11 = [v5 initWithLeftExpression:v6 rightExpression:v7 modifier:v8 type:v9 options:v10];
  [(NSMutableArray *)self->_stack addObject:v11];
}

- (void)mapLeftExpression:(id *)a3 andRightExpression:(id *)a4
{
  if (mapLeftExpression_andRightExpression__once != -1)
  {
    dispatch_once(&mapLeftExpression_andRightExpression__once, &__block_literal_global_259);
  }

  if ([*a3 expressionType] == 3)
  {
    v24 = [*a3 keyPath];
    v7 = [mapLeftExpression_andRightExpression__keypathMaps objectForKeyedSubscript:?];

    if (v7)
    {
      v8 = MEMORY[0x277CCA9C0];
      v9 = [mapLeftExpression_andRightExpression__keypathMaps objectForKeyedSubscript:v24];
      v10 = [v8 expressionForKeyPath:v9];
      v11 = *a3;
      *a3 = v10;
    }

    else
    {
      if (([v24 isEqualToString:@"type"] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"eventType"))
      {
        v12 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"type"];
        v13 = *a3;
        *a3 = v12;

        v14 = [(_OSLogPredicateMapper *)self mapEventTypeExpression:*a4];
      }

      else if ([v24 isEqualToString:@"signpostScope"])
      {
        v14 = [(_OSLogPredicateMapper *)self mapSignpostScopeExpression:*a4];
      }

      else
      {
        if (![v24 isEqualToString:@"signpostType"])
        {
          if (([v24 isEqualToString:@"messageType"] & 1) == 0 && !objc_msgSend(v24, "isEqualToString:", @"logType"))
          {
            v23 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v24];
            v9 = *a3;
            *a3 = v23;
            goto LABEL_11;
          }

          v15 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"logType"];
          v16 = *a3;
          *a3 = v15;

          v17 = [(_OSLogPredicateMapper *)self mapMessageTypeExpression:*a4];
          v18 = *a4;
          *a4 = v17;

          if ([*a4 expressionType] || (objc_msgSend(*a4, "constantValue"), v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, (isKindOfClass & 1) == 0))
          {
LABEL_12:

            return;
          }

          v9 = [*a4 constantValue];
          v21 = [v9 integerValue];
          if (v21 == 2)
          {
            v22 = 1;
          }

          else
          {
            if (v21 != 1)
            {
              goto LABEL_11;
            }

            v22 = 2;
          }

          self->_flags |= v22;
          goto LABEL_11;
        }

        v14 = [(_OSLogPredicateMapper *)self mapSignpostTypeExpression:*a4];
      }

      v9 = *a4;
      *a4 = v14;
    }

LABEL_11:

    goto LABEL_12;
  }
}

- (id)mapSignpostTypeExpression:(id)a3
{
  v4 = mapSignpostTypeExpression__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&mapSignpostTypeExpression__once, &__block_literal_global_244);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v5 keywordMap:mapSignpostTypeExpression__types];

  return v6;
}

- (id)mapSignpostScopeExpression:(id)a3
{
  v4 = mapSignpostScopeExpression__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&mapSignpostScopeExpression__once, &__block_literal_global_223);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v5 keywordMap:mapSignpostScopeExpression__scopes];

  return v6;
}

- (id)mapMessageTypeExpression:(id)a3
{
  v4 = mapMessageTypeExpression__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&mapMessageTypeExpression__once, &__block_literal_global_189);
  }

  v6 = [(_OSLogPredicateMapper *)self caseInsensitiveMapKeywordToConstantExpression:v5 keywordMap:mapMessageTypeExpression__messageTypes];

  return v6;
}

- (id)mapEventTypeExpression:(id)a3
{
  v4 = mapEventTypeExpression__once;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&mapEventTypeExpression__once, &__block_literal_global_739);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v5 keywordMap:mapEventTypeExpression__eventTypes];

  return v6;
}

- (id)caseInsensitiveMapKeywordToConstantExpression:(id)a3 keywordMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 expressionType] || (objc_msgSend(v6, "constantValue"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) == 0))
  {
    v14 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v6 keywordMap:v7];
  }

  else
  {
    v10 = MEMORY[0x277CCA9C0];
    v11 = [v6 constantValue];
    v12 = [v11 lowercaseString];
    v13 = [v10 expressionForConstantValue:v12];

    v14 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v13 keywordMap:v7];
  }

  return v14;
}

- (id)mapKeywordToConstantExpression:(id)a3 keywordMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 expressionType] == 3)
  {
    v7 = [v5 keyPath];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = MEMORY[0x277CCA9C0];
      v10 = [v5 keyPath];
LABEL_8:
      v14 = v10;
      v15 = [v6 objectForKeyedSubscript:v10];
      v16 = [v9 expressionForConstantValue:v15];

      goto LABEL_11;
    }
  }

  if (![v5 expressionType])
  {
    v11 = [v5 constantValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v5 constantValue];
      v13 = [v6 objectForKeyedSubscript:v12];

      if (v13)
      {
        v9 = MEMORY[0x277CCA9C0];
        v10 = [v5 constantValue];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v16 = v5;
LABEL_11:

  return v16;
}

- (void)visitPredicate:(id)a3
{
  v4 = a3;
  if (!self->_pass)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_OSLogPredicateMapper *)self processComparisonPredicate:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_OSLogPredicateMapper *)self processCompoundPredicate:v5];
      }

      else
      {
        [(NSMutableArray *)self->_stack addObject:v5];
      }
    }

    v4 = v5;
  }
}

- (_OSLogPredicateMapper)initWithPredicate:(id)a3 andValidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_OSLogPredicateMapper *)self init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stack = v7->_stack;
    v7->_stack = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    validKeyPathPrefixes = v7->_validKeyPathPrefixes;
    v7->_validKeyPathPrefixes = v10;

    v7->_pass = 0;
    [v6 acceptVisitor:v7 flags:0];
    v12 = [(NSMutableArray *)v7->_stack lastObject];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    validationErrors = v7->_validationErrors;
    v7->_validationErrors = v13;

    if (v4)
    {
      v7->_pass = 1;
      [v12 acceptVisitor:v7 flags:1];
    }

    if (![(NSMutableArray *)v7->_validationErrors count])
    {
      objc_storeStrong(&v7->_predicate, v12);
      v15 = [[_OSLogPredicateCompiler alloc] initWithPredicate:v7->_predicate];
      v16 = [(_OSLogPredicateCompiler *)v15 compiledPredicate];
      compiledPredicate = v7->_compiledPredicate;
      v7->_compiledPredicate = v16;
    }
  }

  return v7;
}

@end