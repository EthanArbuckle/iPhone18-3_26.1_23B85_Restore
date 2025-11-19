@interface DNDNotificationFilterPredicateValidator
- (BOOL)validatePredicate:(id)a3 compileTimeIssues:(id *)a4 runTimeIssues:(id *)a5;
- (void)visitPredicateExpression:(id)a3;
- (void)visitPredicateOperator:(id)a3;
@end

@implementation DNDNotificationFilterPredicateValidator

- (BOOL)validatePredicate:(id)a3 compileTimeIssues:(id *)a4 runTimeIssues:(id *)a5
{
  v8 = a3;
  compileTimeIssues = self->_compileTimeIssues;
  self->_compileTimeIssues = 0;

  [v8 acceptVisitor:self flags:3];
  if (a4)
  {
    *a4 = self->_compileTimeIssues;
  }

  if (self->_compileTimeIssues)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v17 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v17];
    v13 = v17;
    v11 = 0;
    if ([v12 length] >= 0x186A1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"predicate will be ignored because it is too large"];
      v11 = v14;
      if (a5)
      {
        v15 = v14;
        *a5 = v11;
      }
    }

    if (self->_compileTimeIssues | v11)
    {
      v10 = 0;
    }

    else
    {
      [v8 allowEvaluation];
      v11 = 0;
      v10 = 1;
    }
  }

  return v10;
}

- (void)visitPredicateOperator:(id)a3
{
  v11 = a3;
  v4 = [v11 operatorType];
  if (v4 > 98)
  {
    if (v4 > 1099)
    {
      if ((v4 - 1100) < 2 || v4 == 2000)
      {
        goto LABEL_4;
      }
    }

    else if ((v4 - 99) < 2 || v4 == 1000)
    {
      goto LABEL_4;
    }
  }

  else if (v4 <= 0xB)
  {
    if (((1 << v4) & 0x7BF) != 0)
    {
      goto LABEL_4;
    }

    v6 = @"operator '%@' is not allowed";
    goto LABEL_18;
  }

  v5 = [v11 operatorType];
  if ((v5 - 1100) >= 2 && v5 != 1000 && v5 != 2000)
  {
    v6 = @"operator '%@' is not recognized";
LABEL_18:
    v7 = MEMORY[0x277CCACA8];
    v8 = [v11 symbol];
    v9 = [v7 stringWithFormat:v6, v8];
    compileTimeIssues = self->_compileTimeIssues;
    self->_compileTimeIssues = v9;
  }

LABEL_4:
}

- (void)visitPredicateExpression:(id)a3
{
  v8 = a3;
  v4 = [v8 expressionType];
  if (v4 > 0x14)
  {
    goto LABEL_9;
  }

  if (((1 << v4) & 0x10E0E3) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << v4) & 0x8001C) != 0)
  {
    v5 = @"expression '%@' is not allowed";
  }

  else
  {
LABEL_9:
    v5 = @"expression '%@' is not recognized";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v8];
  compileTimeIssues = self->_compileTimeIssues;
  self->_compileTimeIssues = v6;

LABEL_6:
}

@end