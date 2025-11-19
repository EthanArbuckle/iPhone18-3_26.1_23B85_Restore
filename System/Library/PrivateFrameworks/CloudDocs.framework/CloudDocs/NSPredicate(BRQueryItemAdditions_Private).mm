@interface NSPredicate(BRQueryItemAdditions_Private)
- (id)extractSearchTermFromPredicate;
- (uint64_t)_isContentTypeFolderComparisonPredicate;
- (uint64_t)isFolderOnlyPredicate;
@end

@implementation NSPredicate(BRQueryItemAdditions_Private)

- (uint64_t)_isContentTypeFolderComparisonPredicate
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 predicateOperatorType] == 1100 || objc_msgSend(v2, "predicateOperatorType") == 1101)
    {
      v3 = [v2 leftExpression];
      if ([v3 br_isKeyPathExpression:*MEMORY[0x1E696A5C0]])
      {
        v4 = [v2 rightExpression];
        v5 = [v4 br_isConstantValueExpression:*MEMORY[0x1E69637D0]];
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
  v1 = a1;
  if ([v1 _isContentTypeFolderComparisonPredicate])
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v1;
      if ([v3 compoundPredicateType] == 1)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v4 = [v3 subpredicates];
        v2 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v2)
        {
          v5 = *v10;
          while (2)
          {
            for (i = 0; i != v2; ++i)
            {
              if (*v10 != v5)
              {
                objc_enumerationMutation(v4);
              }

              if ([*(*(&v9 + 1) + 8 * i) isFolderOnlyPredicate])
              {
                v2 = 1;
                goto LABEL_17;
              }
            }

            v2 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if ([v2 compoundPredicateType] == 2)
    {
      v3 = [v2 subpredicates];
      if ([v3 count] == 2 && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5 & 1) != 0))
      {
        v6 = [v3 objectAtIndexedSubscript:0];
        v7 = 0;
        if ([v6 predicateOperatorType] == 8)
        {
          v8 = [v6 leftExpression];
          v9 = *MEMORY[0x1E696A5E8];
          if ([v8 br_isKeyPathExpression:*MEMORY[0x1E696A5E8]])
          {
            v10 = [v6 rightExpression];
            if ([v10 expressionType])
            {
              v7 = 0;
            }

            else
            {
              v11 = [v10 constantValue];
              v12 = [v3 objectAtIndexedSubscript:1];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v14 = [v3 objectAtIndexedSubscript:1];
                if ([v14 predicateOperatorType] == 7)
                {
                  v15 = [v14 leftExpression];

                  if ([v15 br_isKeyPathExpression:v9])
                  {
                    v16 = [v14 rightExpression];

                    v17 = MEMORY[0x1E696AEC0];
                    v18 = [MEMORY[0x1E696AE70] escapedPatternForString:v11];
                    v19 = [v17 stringWithFormat:@"* %@*", v18];

                    if ([v16 br_isConstantValueExpression:v19])
                    {
                      v7 = v11;
                    }

                    else
                    {
                      v7 = 0;
                    }

                    v10 = v16;
                  }

                  else
                  {
                    v7 = 0;
                  }
                }

                else
                {
                  v7 = 0;
                  v15 = v8;
                }

                v8 = v15;
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