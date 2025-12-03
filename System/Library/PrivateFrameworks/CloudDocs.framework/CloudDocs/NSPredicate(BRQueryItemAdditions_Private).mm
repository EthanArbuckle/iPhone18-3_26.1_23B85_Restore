@interface NSPredicate(BRQueryItemAdditions_Private)
- (id)extractSearchTermFromPredicate;
- (uint64_t)_isContentTypeFolderComparisonPredicate;
- (uint64_t)isFolderOnlyPredicate;
@end

@implementation NSPredicate(BRQueryItemAdditions_Private)

- (uint64_t)_isContentTypeFolderComparisonPredicate
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = selfCopy;
    if ([v2 predicateOperatorType] == 1100 || objc_msgSend(v2, "predicateOperatorType") == 1101)
    {
      leftExpression = [v2 leftExpression];
      if ([leftExpression br_isKeyPathExpression:*MEMORY[0x1E696A5C0]])
      {
        rightExpression = [v2 rightExpression];
        v5 = [rightExpression br_isConstantValueExpression:*MEMORY[0x1E69637D0]];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)isFolderOnlyPredicate
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if ([selfCopy _isContentTypeFolderComparisonPredicate])
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = selfCopy;
      if ([v3 compoundPredicateType] == 1)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        subpredicates = [v3 subpredicates];
        v2 = [subpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v2)
        {
          v5 = *v10;
          while (2)
          {
            for (i = 0; i != v2; ++i)
            {
              if (*v10 != v5)
              {
                objc_enumerationMutation(subpredicates);
              }

              if ([*(*(&v9 + 1) + 8 * i) isFolderOnlyPredicate])
              {
                v2 = 1;
                goto LABEL_17;
              }
            }

            v2 = [subpredicates countByEnumeratingWithState:&v9 objects:v13 count:16];
            if (v2)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)extractSearchTermFromPredicate
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = selfCopy;
    if ([v2 compoundPredicateType] == 2)
    {
      subpredicates = [v2 subpredicates];
      if ([subpredicates count] == 2 && (objc_msgSend(subpredicates, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5 & 1) != 0))
      {
        v6 = [subpredicates objectAtIndexedSubscript:0];
        v7 = 0;
        if ([v6 predicateOperatorType] == 8)
        {
          leftExpression = [v6 leftExpression];
          v9 = *MEMORY[0x1E696A5E8];
          if ([leftExpression br_isKeyPathExpression:*MEMORY[0x1E696A5E8]])
          {
            rightExpression = [v6 rightExpression];
            if ([rightExpression expressionType])
            {
              v7 = 0;
            }

            else
            {
              constantValue = [rightExpression constantValue];
              v12 = [subpredicates objectAtIndexedSubscript:1];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v14 = [subpredicates objectAtIndexedSubscript:1];
                if ([v14 predicateOperatorType] == 7)
                {
                  leftExpression2 = [v14 leftExpression];

                  if ([leftExpression2 br_isKeyPathExpression:v9])
                  {
                    rightExpression2 = [v14 rightExpression];

                    v17 = MEMORY[0x1E696AEC0];
                    v18 = [MEMORY[0x1E696AE70] escapedPatternForString:constantValue];
                    v19 = [v17 stringWithFormat:@"* %@*", v18];

                    if ([rightExpression2 br_isConstantValueExpression:v19])
                    {
                      v7 = constantValue;
                    }

                    else
                    {
                      v7 = 0;
                    }

                    rightExpression = rightExpression2;
                  }

                  else
                  {
                    v7 = 0;
                  }
                }

                else
                {
                  v7 = 0;
                  leftExpression2 = leftExpression;
                }

                leftExpression = leftExpression2;
              }

              else
              {
                v7 = 0;
              }
            }
          }

          else
          {
            v7 = 0;
          }
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end