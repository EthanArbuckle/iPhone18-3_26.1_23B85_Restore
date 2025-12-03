@interface IKCSSMediaQuery
+ (id)buildMediaQuery:(id)query offset:(unint64_t)offset consumed:(unint64_t *)consumed;
+ (id)buildMediaQueryExpression:(id)expression;
+ (id)buildMediaQueryList:(id)list offset:(unint64_t)offset consumed:(unint64_t *)consumed;
+ (id)mediaQueryFromTokenList:(id)list;
- (BOOL)evaluate;
- (IKCSSMediaQuery)initWithQueryList:(id)list;
- (id)queryExpression;
@end

@implementation IKCSSMediaQuery

- (IKCSSMediaQuery)initWithQueryList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = IKCSSMediaQuery;
  v6 = [(IKCSSMediaQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_evaluated = 0;
    objc_storeStrong(&v6->_queryList, list);
  }

  return v7;
}

- (id)queryExpression
{
  queryList = [(IKCSSMediaQuery *)self queryList];
  expressionAsString = [queryList expressionAsString];

  return expressionAsString;
}

- (BOOL)evaluate
{
  if (self->_evaluated)
  {
    return self->_evaluationResult;
  }

  else
  {
    evaluate = [(IKCSSMediaQueryList *)self->_queryList evaluate];
    self->_evaluationResult = evaluate;
    self->_evaluated = 1;
  }

  return evaluate;
}

+ (id)mediaQueryFromTokenList:(id)list
{
  v8 = 0;
  listCopy = list;
  v4 = [IKCSSMediaQuery alloc];
  v5 = [IKCSSMediaQuery buildMediaQueryList:listCopy offset:0 consumed:&v8];

  v6 = [(IKCSSMediaQuery *)v4 initWithQueryList:v5];

  return v6;
}

+ (id)buildMediaQueryList:(id)list offset:(unint64_t)offset consumed:(unint64_t *)consumed
{
  listCopy = list;
  v8 = objc_alloc_init(IKCSSMediaQueryOrList);
  if ([listCopy count] <= offset)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v13 = 0;
      v10 = [IKCSSMediaQuery buildMediaQuery:listCopy offset:offset consumed:&v13];
      [(IKCSSMediaQueryOrList *)v8 addSubQueryList:v10];
      v11 = v13;

      offset += v11 + 1;
      v9 += v11 + 1;
    }

    while (offset < [listCopy count]);
  }

  *consumed = v9;

  return v8;
}

+ (id)buildMediaQuery:(id)query offset:(unint64_t)offset consumed:(unint64_t *)consumed
{
  queryCopy = query;
  v7 = objc_alloc_init(IKCSSMediaQueryAndList);
  if ([queryCopy count] <= offset)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [queryCopy objectAtIndex:offset + v8];
    if ([v10 type] == 1)
    {
      break;
    }

    if ([v10 type] == 6)
    {
      if ((v9 & 1) == 0)
      {
        [(IKCSSMediaQueryAndList *)v7 setType:@"all"];
      }

      token = [IKCSSMediaQuery buildMediaQueryExpression:v10];
      type = [(IKCSSMediaQueryAndList *)v7 type];
      [token setMediaType:type];

      [(IKCSSMediaQueryAndList *)v7 addQuery:token];
LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

LABEL_15:

    ++v8;
    if (offset + v8 >= [queryCopy count])
    {
      goto LABEL_19;
    }
  }

  token = [v10 token];
  if ([token type] == 1)
  {
    goto LABEL_14;
  }

  if ([token type] != 14)
  {
    if (!(([token type] != 18) | v9 & 1))
    {
      stringValue = [token stringValue];
      v13 = [stringValue isEqualToString:@"not"];

      if (!v13)
      {
        stringValue2 = [token stringValue];
        [(IKCSSMediaQueryAndList *)v7 setType:stringValue2];

        goto LABEL_13;
      }

      [(IKCSSMediaQueryAndList *)v7 setNegated:1];
      v9 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  *consumed = v8;

  return v7;
}

+ (id)buildMediaQueryExpression:(id)expression
{
  expressionCopy = expression;
  cssValue = [expressionCopy cssValue];
  if (![cssValue count])
  {
    stringValue = 0;
    v27 = 0;
    v9 = 0;
    v26 = 0;
    goto LABEL_48;
  }

  v5 = 0;
  stringValue = 0;
  v32 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  do
  {
    v11 = [cssValue objectAtIndex:v7];
    if ([v11 type] != 1)
    {
      v13 = 0;
      goto LABEL_17;
    }

    token = [v11 token];
    if ([token type] == 1)
    {
      goto LABEL_5;
    }

    type = [token type];
    if (!stringValue)
    {
      if (type == 18)
      {
        stringValue = [token stringValue];
        v13 = 0;
        v8 = 4;
        goto LABEL_16;
      }

      stringValue = 0;
LABEL_5:
      v13 = 0;
      goto LABEL_16;
    }

    if (!v5)
    {
      v13 = 0;
      v5 = type == 21;
      goto LABEL_16;
    }

    if (type == 18 || [token type] == 3)
    {
      stringValue2 = [token stringValue];

      v8 = 1;
      v9 = stringValue2;
      v13 = 1;
LABEL_12:
      v5 = 1;
      goto LABEL_16;
    }

    if ([token type] == 11)
    {
      [token doubleValue];
      v10 = v16;
      properties = [token properties];
      v18 = properties;
      v13 = properties != 0;
      if (properties)
      {
        [properties objectForKey:@"unit"];
        v19 = v29 = expressionCopy;

        v8 = 3;
        v32 = v19;
        expressionCopy = v29;
      }

      goto LABEL_12;
    }

    if ([token type] != 13)
    {
      v13 = 0;
      goto LABEL_12;
    }

    [token doubleValue];
    v10 = v20;
    v21 = v7 + 1;
    if (v7 + 1 >= [cssValue count])
    {
      v13 = 0;
      v5 = 1;
      v8 = 2;
      goto LABEL_16;
    }

    v30 = expressionCopy;
    v13 = 0;
    v31 = 0;
    while (1)
    {
      v22 = [cssValue objectAtIndex:v21];
      if ([v22 type] == 1)
      {
        break;
      }

LABEL_37:

      ++v21;
      v5 = 1;
      if (v21 >= [cssValue count])
      {
        goto LABEL_38;
      }
    }

    token2 = [v22 token];
    if ([token2 type] == 1)
    {
      goto LABEL_36;
    }

    type2 = [token2 type];
    if (v31)
    {
      if (type2 == 13)
      {
        [token2 doubleValue];
        v13 = 1;
        v31 = 1;
        v10 = v10 / v25;
      }

      else
      {
LABEL_35:
        v31 = 1;
      }

LABEL_36:

      goto LABEL_37;
    }

    if (type2 == 5 && [token2 charValue] == 47)
    {
      goto LABEL_35;
    }

    v5 = 1;
LABEL_38:
    v8 = 2;
    expressionCopy = v30;
LABEL_16:

LABEL_17:
    ++v7;
  }

  while (v7 < [cssValue count] && !v13);
  if (v8)
  {
    v26 = objc_alloc_init(IKCSSMediaQueryExpression);
    [(IKCSSMediaQueryExpression *)v26 setType:v8];
    [(IKCSSMediaQueryExpression *)v26 setKey:stringValue];
    if (v8 == 1)
    {
      [(IKCSSMediaQueryExpression *)v26 setStringValue:v9];
      goto LABEL_47;
    }

    [(IKCSSMediaQueryExpression *)v26 setDoubleValue:v10];
    v27 = v32;
    if (v8 == 3)
    {
      [(IKCSSMediaQueryExpression *)v26 setDimension:v32];
    }
  }

  else
  {
    v26 = 0;
LABEL_47:
    v27 = v32;
  }

LABEL_48:

  return v26;
}

@end