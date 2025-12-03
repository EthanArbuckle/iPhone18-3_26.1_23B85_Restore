@interface NSExpression
- (id)cr_expressionValue;
- (id)cr_sqlBindings;
@end

@implementation NSExpression

- (id)cr_expressionValue
{
  expressionType = [(NSExpression *)self expressionType];
  if (expressionType == NSVariableExpressionType)
  {

    return [(NSExpression *)self variable];
  }

  else if (expressionType == NSAggregateExpressionType)
  {
    collection = [(NSExpression *)self collection];

    return [collection arrayByApplyingSelector:"cr_expressionValue"];
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPredicateBindings.m" description:92, @"unhandled expression type"];
    return 0;
  }
}

- (id)cr_sqlBindings
{
  if ([(NSExpression *)self expressionType]== 14)
  {
    v4 = +[NSMutableArray array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    collection = [(NSExpression *)self collection];
    v6 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(collection);
          }

          [v4 addObjectsFromArray:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "cr_sqlBindings")}];
        }

        v7 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSPredicateBindings.m" description:111, @"unhandled expression type"];
    return 0;
  }

  return v4;
}

@end