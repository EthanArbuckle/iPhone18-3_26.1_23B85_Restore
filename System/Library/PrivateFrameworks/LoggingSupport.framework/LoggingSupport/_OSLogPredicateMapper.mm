@interface _OSLogPredicateMapper
- (NSMutableSet)validKeyPaths;
- (_OSLogPredicateMapper)initWithPredicate:(id)predicate andValidate:(BOOL)validate;
- (id)caseInsensitiveMapKeywordToConstantExpression:(id)expression keywordMap:(id)map;
- (id)mapEventTypeExpression:(id)expression;
- (id)mapKeywordToConstantExpression:(id)expression keywordMap:(id)map;
- (id)mapMessageTypeExpression:(id)expression;
- (id)mapSignpostScopeExpression:(id)expression;
- (id)mapSignpostTypeExpression:(id)expression;
- (void)mapLeftExpression:(id *)expression andRightExpression:(id *)rightExpression;
- (void)processComparisonPredicate:(id)predicate;
- (void)processCompoundPredicate:(id)predicate;
- (void)validateExpression:(id)expression;
- (void)validateKeyPath:(id)path;
- (void)visitPredicate:(id)predicate;
- (void)visitPredicateExpression:(id)expression;
- (void)visitPredicateOperator:(id)operator;
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

- (void)visitPredicateExpression:(id)expression
{
  v7 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  if (self->_pass != 1)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = expressionCopy;
  [(_OSLogPredicateMapper *)self validateExpression:expressionCopy];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)visitPredicateOperator:(id)operator
{
  operatorCopy = operator;
  _os_crash();
  __break(1u);
}

- (void)validateExpression:(id)expression
{
  v13 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  expressionType = [expressionCopy expressionType];
  if (expressionType <= 0xE)
  {
    if (((1 << expressionType) & 0x4403) != 0)
    {
      goto LABEL_3;
    }

    if (expressionType == 3)
    {
      operand = [expressionCopy operand];
      expressionType2 = [operand expressionType];

      if (expressionType2 == 1)
      {
        arguments = [expressionCopy arguments];
        v9 = [arguments count];

        if (v9 == 1)
        {
          [(_OSLogPredicateMapper *)self validateKeyPath:expressionCopy];
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
  expressionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid expression: %@", expressionCopy];
  [(NSMutableArray *)validationErrors addObject:expressionCopy];

LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)validateKeyPath:(id)path
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  validKeyPaths = [(_OSLogPredicateMapper *)self validKeyPaths];
  keyPath = [pathCopy keyPath];
  v7 = [validKeyPaths containsObject:keyPath];

  if ((v7 & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    keyPath3 = self->_validKeyPathPrefixes;
    v9 = [(NSMutableArray *)keyPath3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(keyPath3);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        keyPath2 = [pathCopy keyPath];
        LOBYTE(v13) = [keyPath2 hasPrefix:v13];

        if (v13)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableArray *)keyPath3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
      keyPath3 = [pathCopy keyPath];
      v17 = [v16 stringWithFormat:@"no such field: %@", keyPath3];
      [(NSMutableArray *)validationErrors addObject:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)processCompoundPredicate:(id)predicate
{
  stack = self->_stack;
  predicateCopy = predicate;
  v6 = [(NSMutableArray *)stack count];
  subpredicates = [predicateCopy subpredicates];
  v8 = v6 - [subpredicates count];
  subpredicates2 = [predicateCopy subpredicates];
  v10 = [subpredicates2 count];

  v14 = [(NSMutableArray *)self->_stack subarrayWithRange:v8, v10];
  [(NSMutableArray *)self->_stack removeObjectsInRange:v8, v10];
  v11 = objc_alloc(MEMORY[0x277CCA920]);
  compoundPredicateType = [predicateCopy compoundPredicateType];

  v13 = [v11 initWithType:compoundPredicateType subpredicates:v14];
  [(NSMutableArray *)self->_stack addObject:v13];
}

- (void)processComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  [(_OSLogPredicateMapper *)self mapLeftExpression:&leftExpression andRightExpression:&rightExpression];
  [(_OSLogPredicateMapper *)self mapLeftExpression:&rightExpression andRightExpression:&leftExpression];
  v5 = objc_alloc(MEMORY[0x277CCA918]);
  v7 = rightExpression;
  v6 = leftExpression;
  comparisonPredicateModifier = [predicateCopy comparisonPredicateModifier];
  predicateOperatorType = [predicateCopy predicateOperatorType];
  options = [predicateCopy options];

  v11 = [v5 initWithLeftExpression:v6 rightExpression:v7 modifier:comparisonPredicateModifier type:predicateOperatorType options:options];
  [(NSMutableArray *)self->_stack addObject:v11];
}

- (void)mapLeftExpression:(id *)expression andRightExpression:(id *)rightExpression
{
  if (mapLeftExpression_andRightExpression__once != -1)
  {
    dispatch_once(&mapLeftExpression_andRightExpression__once, &__block_literal_global_259);
  }

  if ([*expression expressionType] == 3)
  {
    keyPath = [*expression keyPath];
    v7 = [mapLeftExpression_andRightExpression__keypathMaps objectForKeyedSubscript:?];

    if (v7)
    {
      v8 = MEMORY[0x277CCA9C0];
      constantValue = [mapLeftExpression_andRightExpression__keypathMaps objectForKeyedSubscript:keyPath];
      v10 = [v8 expressionForKeyPath:constantValue];
      v11 = *expression;
      *expression = v10;
    }

    else
    {
      if (([keyPath isEqualToString:@"type"] & 1) != 0 || objc_msgSend(keyPath, "isEqualToString:", @"eventType"))
      {
        v12 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"type"];
        v13 = *expression;
        *expression = v12;

        v14 = [(_OSLogPredicateMapper *)self mapEventTypeExpression:*rightExpression];
      }

      else if ([keyPath isEqualToString:@"signpostScope"])
      {
        v14 = [(_OSLogPredicateMapper *)self mapSignpostScopeExpression:*rightExpression];
      }

      else
      {
        if (![keyPath isEqualToString:@"signpostType"])
        {
          if (([keyPath isEqualToString:@"messageType"] & 1) == 0 && !objc_msgSend(keyPath, "isEqualToString:", @"logType"))
          {
            v23 = [MEMORY[0x277CCA9C0] expressionForKeyPath:keyPath];
            constantValue = *expression;
            *expression = v23;
            goto LABEL_11;
          }

          v15 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"logType"];
          v16 = *expression;
          *expression = v15;

          v17 = [(_OSLogPredicateMapper *)self mapMessageTypeExpression:*rightExpression];
          v18 = *rightExpression;
          *rightExpression = v17;

          if ([*rightExpression expressionType] || (objc_msgSend(*rightExpression, "constantValue"), v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, (isKindOfClass & 1) == 0))
          {
LABEL_12:

            return;
          }

          constantValue = [*rightExpression constantValue];
          integerValue = [constantValue integerValue];
          if (integerValue == 2)
          {
            v22 = 1;
          }

          else
          {
            if (integerValue != 1)
            {
              goto LABEL_11;
            }

            v22 = 2;
          }

          self->_flags |= v22;
          goto LABEL_11;
        }

        v14 = [(_OSLogPredicateMapper *)self mapSignpostTypeExpression:*rightExpression];
      }

      constantValue = *rightExpression;
      *rightExpression = v14;
    }

LABEL_11:

    goto LABEL_12;
  }
}

- (id)mapSignpostTypeExpression:(id)expression
{
  v4 = mapSignpostTypeExpression__once;
  expressionCopy = expression;
  if (v4 != -1)
  {
    dispatch_once(&mapSignpostTypeExpression__once, &__block_literal_global_244);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:expressionCopy keywordMap:mapSignpostTypeExpression__types];

  return v6;
}

- (id)mapSignpostScopeExpression:(id)expression
{
  v4 = mapSignpostScopeExpression__once;
  expressionCopy = expression;
  if (v4 != -1)
  {
    dispatch_once(&mapSignpostScopeExpression__once, &__block_literal_global_223);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:expressionCopy keywordMap:mapSignpostScopeExpression__scopes];

  return v6;
}

- (id)mapMessageTypeExpression:(id)expression
{
  v4 = mapMessageTypeExpression__once;
  expressionCopy = expression;
  if (v4 != -1)
  {
    dispatch_once(&mapMessageTypeExpression__once, &__block_literal_global_189);
  }

  v6 = [(_OSLogPredicateMapper *)self caseInsensitiveMapKeywordToConstantExpression:expressionCopy keywordMap:mapMessageTypeExpression__messageTypes];

  return v6;
}

- (id)mapEventTypeExpression:(id)expression
{
  v4 = mapEventTypeExpression__once;
  expressionCopy = expression;
  if (v4 != -1)
  {
    dispatch_once(&mapEventTypeExpression__once, &__block_literal_global_739);
  }

  v6 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:expressionCopy keywordMap:mapEventTypeExpression__eventTypes];

  return v6;
}

- (id)caseInsensitiveMapKeywordToConstantExpression:(id)expression keywordMap:(id)map
{
  expressionCopy = expression;
  mapCopy = map;
  if ([expressionCopy expressionType] || (objc_msgSend(expressionCopy, "constantValue"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) == 0))
  {
    v14 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:expressionCopy keywordMap:mapCopy];
  }

  else
  {
    v10 = MEMORY[0x277CCA9C0];
    constantValue = [expressionCopy constantValue];
    lowercaseString = [constantValue lowercaseString];
    v13 = [v10 expressionForConstantValue:lowercaseString];

    v14 = [(_OSLogPredicateMapper *)self mapKeywordToConstantExpression:v13 keywordMap:mapCopy];
  }

  return v14;
}

- (id)mapKeywordToConstantExpression:(id)expression keywordMap:(id)map
{
  expressionCopy = expression;
  mapCopy = map;
  if ([expressionCopy expressionType] == 3)
  {
    keyPath = [expressionCopy keyPath];
    v8 = [mapCopy objectForKeyedSubscript:keyPath];

    if (v8)
    {
      v9 = MEMORY[0x277CCA9C0];
      keyPath2 = [expressionCopy keyPath];
LABEL_8:
      v14 = keyPath2;
      v15 = [mapCopy objectForKeyedSubscript:keyPath2];
      v16 = [v9 expressionForConstantValue:v15];

      goto LABEL_11;
    }
  }

  if (![expressionCopy expressionType])
  {
    constantValue = [expressionCopy constantValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      constantValue2 = [expressionCopy constantValue];
      v13 = [mapCopy objectForKeyedSubscript:constantValue2];

      if (v13)
      {
        v9 = MEMORY[0x277CCA9C0];
        keyPath2 = [expressionCopy constantValue];
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v16 = expressionCopy;
LABEL_11:

  return v16;
}

- (void)visitPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (!self->_pass)
  {
    v5 = predicateCopy;
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

    predicateCopy = v5;
  }
}

- (_OSLogPredicateMapper)initWithPredicate:(id)predicate andValidate:(BOOL)validate
{
  validateCopy = validate;
  predicateCopy = predicate;
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
    [predicateCopy acceptVisitor:v7 flags:0];
    lastObject = [(NSMutableArray *)v7->_stack lastObject];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    validationErrors = v7->_validationErrors;
    v7->_validationErrors = v13;

    if (validateCopy)
    {
      v7->_pass = 1;
      [lastObject acceptVisitor:v7 flags:1];
    }

    if (![(NSMutableArray *)v7->_validationErrors count])
    {
      objc_storeStrong(&v7->_predicate, lastObject);
      v15 = [[_OSLogPredicateCompiler alloc] initWithPredicate:v7->_predicate];
      compiledPredicate = [(_OSLogPredicateCompiler *)v15 compiledPredicate];
      compiledPredicate = v7->_compiledPredicate;
      v7->_compiledPredicate = compiledPredicate;
    }
  }

  return v7;
}

@end