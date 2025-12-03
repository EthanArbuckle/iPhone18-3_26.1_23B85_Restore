@interface NSComparisonPredicate
- (BOOL)cr_isInvalidComparisonPredicate;
- (id)cr_sqlNameForFieldName:(id)name;
- (void)cr_addToClause:(id)clause usingOperator:(id)operator bindings:(id)bindings;
- (void)cr_processWithContext:(id)context;
@end

@implementation NSComparisonPredicate

- (BOOL)cr_isInvalidComparisonPredicate
{
  if (qword_100034398 != -1)
  {
    sub_100019178();
  }

  predicateOperatorType = [(NSComparisonPredicate *)self predicateOperatorType];
  result = 0;
  if (predicateOperatorType <= NSEndsWithPredicateOperatorType)
  {
    if (predicateOperatorType < NSMatchesPredicateOperatorType)
    {
      return result;
    }

    return 1;
  }

  if (predicateOperatorType != NSInPredicateOperatorType && predicateOperatorType != NSBetweenPredicateOperatorType)
  {
    if (predicateOperatorType == NSCustomSelectorPredicateOperatorType)
    {
      return [qword_100034390 containsObject:{NSStringFromSelector(-[NSComparisonPredicate customSelector](self, "customSelector"))}] ^ 1;
    }

    return 1;
  }

  return result;
}

- (void)cr_processWithContext:(id)context
{
  if ([(NSComparisonPredicate *)self cr_isInvalidComparisonPredicate])
  {
    goto LABEL_6;
  }

  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  rightExpression = [(NSComparisonPredicate *)self rightExpression];
  if ([(NSExpression *)leftExpression expressionType]!= 3)
  {
    goto LABEL_6;
  }

  expressionType = [(NSExpression *)rightExpression expressionType];
  if (expressionType)
  {
    if (expressionType != 14)
    {
      goto LABEL_6;
    }
  }

  if ([(NSComparisonPredicate *)self comparisonPredicateModifier])
  {
    goto LABEL_6;
  }

  predicateOperatorType = [(NSComparisonPredicate *)self predicateOperatorType];
  cr_expressionValue = [(NSExpression *)leftExpression cr_expressionValue];
  cr_expressionValue2 = [(NSExpression *)rightExpression cr_expressionValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !cr_expressionValue || [(NSComparisonPredicate *)self cr_isInvalidOperatorType:predicateOperatorType forKeyPath:cr_expressionValue])
  {
    goto LABEL_6;
  }

  if (predicateOperatorType == NSInPredicateOperatorType)
  {
    if ([cr_expressionValue2 count])
    {
      if (![@"kind" caseInsensitiveCompare:cr_expressionValue])
      {
        [context setWantsGroups:{objc_msgSend(cr_expressionValue2, "containsObject:", CRAddressKindGroup) | objc_msgSend(context, "wantsGroups")}];
      }

      goto LABEL_16;
    }

LABEL_6:

    [context setHadError:1];
    return;
  }

LABEL_16:

  [context addPredicate:self forFieldName:cr_expressionValue];
}

- (id)cr_sqlNameForFieldName:(id)name
{
  v3 = sub_10000172C(name);

  return [v3 objectForKey:@"sql"];
}

- (void)cr_addToClause:(id)clause usingOperator:(id)operator bindings:(id)bindings
{
  leftExpression = [(NSComparisonPredicate *)self leftExpression];
  rightExpression = [(NSComparisonPredicate *)self rightExpression];
  predicateOperatorType = [(NSComparisonPredicate *)self predicateOperatorType];
  v12 = predicateOperatorType;
  if (predicateOperatorType <= NSGreaterThanOrEqualToPredicateOperatorType)
  {
    if (predicateOperatorType > NSLessThanOrEqualToPredicateOperatorType)
    {
      if (predicateOperatorType == NSGreaterThanPredicateOperatorType)
      {
        v13 = @"%@%@ > ?";
      }

      else
      {
        v13 = @"%@%@ >= ?";
      }
    }

    else if (predicateOperatorType)
    {
      if (predicateOperatorType != NSLessThanOrEqualToPredicateOperatorType)
      {
        goto LABEL_36;
      }

      v13 = @"%@%@ <= ?";
    }

    else
    {
      v13 = @"%@%@ < ?";
    }
  }

  else
  {
    if (predicateOperatorType > NSEndsWithPredicateOperatorType)
    {
      if (predicateOperatorType == NSInPredicateOperatorType)
      {
        v13 = CFSTR("%@%@ IN (?");
        goto LABEL_28;
      }

      if (predicateOperatorType != NSCustomSelectorPredicateOperatorType)
      {
        if (predicateOperatorType == NSBetweenPredicateOperatorType)
        {
          v13 = @"%@%@ BETWEEN ? AND ?";
          goto LABEL_28;
        }

LABEL_36:
        sub_10001918C();
      }

      customSelector = [(NSComparisonPredicate *)self customSelector];
      if (sel_isEqual(customSelector, "tokenSearch:"))
      {
        v15 = 5;
        v16 = @"cpsearch";
      }

      else
      {
        if (!sel_isEqual(customSelector, "prefixSearch:"))
        {
          if (!sel_isEqual(customSelector, "phoneSearch:"))
          {
            goto LABEL_36;
          }

          v17 = [NSString stringWithFormat:@"%%@%@(%%@, ?, %ld)", @"phonesearch", 1];
          goto LABEL_27;
        }

        v15 = 2;
        v16 = @"icusearch";
      }

      v17 = [NSString stringWithFormat:@"%%@%@(%%@, ?, %d)", v16, v15];
LABEL_27:
      v13 = v17;
      goto LABEL_28;
    }

    if (predicateOperatorType == NSEqualToPredicateOperatorType)
    {
      v13 = @"%@%@ == ?";
    }

    else
    {
      if (predicateOperatorType != NSNotEqualToPredicateOperatorType)
      {
        goto LABEL_36;
      }

      v13 = @"%@%@ != ?";
    }
  }

LABEL_28:
  [clause appendFormat:v13, operator, -[NSComparisonPredicate cr_sqlNameForFieldName:](self, "cr_sqlNameForFieldName:", objc_msgSend(objc_msgSend(-[NSExpression cr_expressionValue](leftExpression, "cr_expressionValue"), "componentsSeparatedByString:", @".", "objectAtIndex:", 0))];
  if (v12 == NSInPredicateOperatorType)
  {
    v18 = [-[NSExpression cr_expressionValue](rightExpression "cr_expressionValue")];
    if (v18 >= 2)
    {
      v19 = v18 - 1;
      do
      {
        [clause appendString:{@", ?"}];
        --v19;
      }

      while (v19);
    }

    [clause appendString:@""]);
  }

  cr_sqlBindings = [(NSExpression *)rightExpression cr_sqlBindings];

  [bindings addObjectsFromArray:cr_sqlBindings];
}

@end