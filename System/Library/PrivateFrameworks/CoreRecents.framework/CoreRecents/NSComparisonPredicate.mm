@interface NSComparisonPredicate
- (BOOL)cr_isInvalidComparisonPredicate;
- (id)cr_sqlNameForFieldName:(id)a3;
- (void)cr_addToClause:(id)a3 usingOperator:(id)a4 bindings:(id)a5;
- (void)cr_processWithContext:(id)a3;
@end

@implementation NSComparisonPredicate

- (BOOL)cr_isInvalidComparisonPredicate
{
  if (qword_100034398 != -1)
  {
    sub_100019178();
  }

  v3 = [(NSComparisonPredicate *)self predicateOperatorType];
  result = 0;
  if (v3 <= NSEndsWithPredicateOperatorType)
  {
    if (v3 < NSMatchesPredicateOperatorType)
    {
      return result;
    }

    return 1;
  }

  if (v3 != NSInPredicateOperatorType && v3 != NSBetweenPredicateOperatorType)
  {
    if (v3 == NSCustomSelectorPredicateOperatorType)
    {
      return [qword_100034390 containsObject:{NSStringFromSelector(-[NSComparisonPredicate customSelector](self, "customSelector"))}] ^ 1;
    }

    return 1;
  }

  return result;
}

- (void)cr_processWithContext:(id)a3
{
  if ([(NSComparisonPredicate *)self cr_isInvalidComparisonPredicate])
  {
    goto LABEL_6;
  }

  v5 = [(NSComparisonPredicate *)self leftExpression];
  v6 = [(NSComparisonPredicate *)self rightExpression];
  if ([(NSExpression *)v5 expressionType]!= 3)
  {
    goto LABEL_6;
  }

  v7 = [(NSExpression *)v6 expressionType];
  if (v7)
  {
    if (v7 != 14)
    {
      goto LABEL_6;
    }
  }

  if ([(NSComparisonPredicate *)self comparisonPredicateModifier])
  {
    goto LABEL_6;
  }

  v8 = [(NSComparisonPredicate *)self predicateOperatorType];
  v9 = [(NSExpression *)v5 cr_expressionValue];
  v10 = [(NSExpression *)v6 cr_expressionValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v9 || [(NSComparisonPredicate *)self cr_isInvalidOperatorType:v8 forKeyPath:v9])
  {
    goto LABEL_6;
  }

  if (v8 == NSInPredicateOperatorType)
  {
    if ([v10 count])
    {
      if (![@"kind" caseInsensitiveCompare:v9])
      {
        [a3 setWantsGroups:{objc_msgSend(v10, "containsObject:", CRAddressKindGroup) | objc_msgSend(a3, "wantsGroups")}];
      }

      goto LABEL_16;
    }

LABEL_6:

    [a3 setHadError:1];
    return;
  }

LABEL_16:

  [a3 addPredicate:self forFieldName:v9];
}

- (id)cr_sqlNameForFieldName:(id)a3
{
  v3 = sub_10000172C(a3);

  return [v3 objectForKey:@"sql"];
}

- (void)cr_addToClause:(id)a3 usingOperator:(id)a4 bindings:(id)a5
{
  v9 = [(NSComparisonPredicate *)self leftExpression];
  v10 = [(NSComparisonPredicate *)self rightExpression];
  v11 = [(NSComparisonPredicate *)self predicateOperatorType];
  v12 = v11;
  if (v11 <= NSGreaterThanOrEqualToPredicateOperatorType)
  {
    if (v11 > NSLessThanOrEqualToPredicateOperatorType)
    {
      if (v11 == NSGreaterThanPredicateOperatorType)
      {
        v13 = @"%@%@ > ?";
      }

      else
      {
        v13 = @"%@%@ >= ?";
      }
    }

    else if (v11)
    {
      if (v11 != NSLessThanOrEqualToPredicateOperatorType)
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
    if (v11 > NSEndsWithPredicateOperatorType)
    {
      if (v11 == NSInPredicateOperatorType)
      {
        v13 = CFSTR("%@%@ IN (?");
        goto LABEL_28;
      }

      if (v11 != NSCustomSelectorPredicateOperatorType)
      {
        if (v11 == NSBetweenPredicateOperatorType)
        {
          v13 = @"%@%@ BETWEEN ? AND ?";
          goto LABEL_28;
        }

LABEL_36:
        sub_10001918C();
      }

      v14 = [(NSComparisonPredicate *)self customSelector];
      if (sel_isEqual(v14, "tokenSearch:"))
      {
        v15 = 5;
        v16 = @"cpsearch";
      }

      else
      {
        if (!sel_isEqual(v14, "prefixSearch:"))
        {
          if (!sel_isEqual(v14, "phoneSearch:"))
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

    if (v11 == NSEqualToPredicateOperatorType)
    {
      v13 = @"%@%@ == ?";
    }

    else
    {
      if (v11 != NSNotEqualToPredicateOperatorType)
      {
        goto LABEL_36;
      }

      v13 = @"%@%@ != ?";
    }
  }

LABEL_28:
  [a3 appendFormat:v13, a4, -[NSComparisonPredicate cr_sqlNameForFieldName:](self, "cr_sqlNameForFieldName:", objc_msgSend(objc_msgSend(-[NSExpression cr_expressionValue](v9, "cr_expressionValue"), "componentsSeparatedByString:", @".", "objectAtIndex:", 0))];
  if (v12 == NSInPredicateOperatorType)
  {
    v18 = [-[NSExpression cr_expressionValue](v10 "cr_expressionValue")];
    if (v18 >= 2)
    {
      v19 = v18 - 1;
      do
      {
        [a3 appendString:{@", ?"}];
        --v19;
      }

      while (v19);
    }

    [a3 appendString:@""]);
  }

  v20 = [(NSExpression *)v10 cr_sqlBindings];

  [a5 addObjectsFromArray:v20];
}

@end