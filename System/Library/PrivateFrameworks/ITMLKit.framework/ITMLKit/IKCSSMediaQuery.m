@interface IKCSSMediaQuery
+ (id)buildMediaQuery:(id)a3 offset:(unint64_t)a4 consumed:(unint64_t *)a5;
+ (id)buildMediaQueryExpression:(id)a3;
+ (id)buildMediaQueryList:(id)a3 offset:(unint64_t)a4 consumed:(unint64_t *)a5;
+ (id)mediaQueryFromTokenList:(id)a3;
- (BOOL)evaluate;
- (IKCSSMediaQuery)initWithQueryList:(id)a3;
- (id)queryExpression;
@end

@implementation IKCSSMediaQuery

- (IKCSSMediaQuery)initWithQueryList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IKCSSMediaQuery;
  v6 = [(IKCSSMediaQuery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_evaluated = 0;
    objc_storeStrong(&v6->_queryList, a3);
  }

  return v7;
}

- (id)queryExpression
{
  v2 = [(IKCSSMediaQuery *)self queryList];
  v3 = [v2 expressionAsString];

  return v3;
}

- (BOOL)evaluate
{
  if (self->_evaluated)
  {
    return self->_evaluationResult;
  }

  else
  {
    v3 = [(IKCSSMediaQueryList *)self->_queryList evaluate];
    self->_evaluationResult = v3;
    self->_evaluated = 1;
  }

  return v3;
}

+ (id)mediaQueryFromTokenList:(id)a3
{
  v8 = 0;
  v3 = a3;
  v4 = [IKCSSMediaQuery alloc];
  v5 = [IKCSSMediaQuery buildMediaQueryList:v3 offset:0 consumed:&v8];

  v6 = [(IKCSSMediaQuery *)v4 initWithQueryList:v5];

  return v6;
}

+ (id)buildMediaQueryList:(id)a3 offset:(unint64_t)a4 consumed:(unint64_t *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(IKCSSMediaQueryOrList);
  if ([v7 count] <= a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v13 = 0;
      v10 = [IKCSSMediaQuery buildMediaQuery:v7 offset:a4 consumed:&v13];
      [(IKCSSMediaQueryOrList *)v8 addSubQueryList:v10];
      v11 = v13;

      a4 += v11 + 1;
      v9 += v11 + 1;
    }

    while (a4 < [v7 count]);
  }

  *a5 = v9;

  return v8;
}

+ (id)buildMediaQuery:(id)a3 offset:(unint64_t)a4 consumed:(unint64_t *)a5
{
  v6 = a3;
  v7 = objc_alloc_init(IKCSSMediaQueryAndList);
  if ([v6 count] <= a4)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [v6 objectAtIndex:a4 + v8];
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

      v11 = [IKCSSMediaQuery buildMediaQueryExpression:v10];
      v14 = [(IKCSSMediaQueryAndList *)v7 type];
      [v11 setMediaType:v14];

      [(IKCSSMediaQueryAndList *)v7 addQuery:v11];
LABEL_13:
      v9 = 1;
      goto LABEL_14;
    }

LABEL_15:

    ++v8;
    if (a4 + v8 >= [v6 count])
    {
      goto LABEL_19;
    }
  }

  v11 = [v10 token];
  if ([v11 type] == 1)
  {
    goto LABEL_14;
  }

  if ([v11 type] != 14)
  {
    if (!(([v11 type] != 18) | v9 & 1))
    {
      v12 = [v11 stringValue];
      v13 = [v12 isEqualToString:@"not"];

      if (!v13)
      {
        v15 = [v11 stringValue];
        [(IKCSSMediaQueryAndList *)v7 setType:v15];

        goto LABEL_13;
      }

      [(IKCSSMediaQueryAndList *)v7 setNegated:1];
      v9 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  *a5 = v8;

  return v7;
}

+ (id)buildMediaQueryExpression:(id)a3
{
  v3 = a3;
  v4 = [v3 cssValue];
  if (![v4 count])
  {
    v6 = 0;
    v27 = 0;
    v9 = 0;
    v26 = 0;
    goto LABEL_48;
  }

  v5 = 0;
  v6 = 0;
  v32 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  do
  {
    v11 = [v4 objectAtIndex:v7];
    if ([v11 type] != 1)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v12 = [v11 token];
    if ([v12 type] == 1)
    {
      goto LABEL_5;
    }

    v14 = [v12 type];
    if (!v6)
    {
      if (v14 == 18)
      {
        v6 = [v12 stringValue];
        v13 = 0;
        v8 = 4;
        goto LABEL_16;
      }

      v6 = 0;
LABEL_5:
      v13 = 0;
      goto LABEL_16;
    }

    if (!v5)
    {
      v13 = 0;
      v5 = v14 == 21;
      goto LABEL_16;
    }

    if (v14 == 18 || [v12 type] == 3)
    {
      v15 = [v12 stringValue];

      v8 = 1;
      v9 = v15;
      v13 = 1;
LABEL_12:
      v5 = 1;
      goto LABEL_16;
    }

    if ([v12 type] == 11)
    {
      [v12 doubleValue];
      v10 = v16;
      v17 = [v12 properties];
      v18 = v17;
      v13 = v17 != 0;
      if (v17)
      {
        [v17 objectForKey:@"unit"];
        v19 = v29 = v3;

        v8 = 3;
        v32 = v19;
        v3 = v29;
      }

      goto LABEL_12;
    }

    if ([v12 type] != 13)
    {
      v13 = 0;
      goto LABEL_12;
    }

    [v12 doubleValue];
    v10 = v20;
    v21 = v7 + 1;
    if (v7 + 1 >= [v4 count])
    {
      v13 = 0;
      v5 = 1;
      v8 = 2;
      goto LABEL_16;
    }

    v30 = v3;
    v13 = 0;
    v31 = 0;
    while (1)
    {
      v22 = [v4 objectAtIndex:v21];
      if ([v22 type] == 1)
      {
        break;
      }

LABEL_37:

      ++v21;
      v5 = 1;
      if (v21 >= [v4 count])
      {
        goto LABEL_38;
      }
    }

    v23 = [v22 token];
    if ([v23 type] == 1)
    {
      goto LABEL_36;
    }

    v24 = [v23 type];
    if (v31)
    {
      if (v24 == 13)
      {
        [v23 doubleValue];
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

    if (v24 == 5 && [v23 charValue] == 47)
    {
      goto LABEL_35;
    }

    v5 = 1;
LABEL_38:
    v8 = 2;
    v3 = v30;
LABEL_16:

LABEL_17:
    ++v7;
  }

  while (v7 < [v4 count] && !v13);
  if (v8)
  {
    v26 = objc_alloc_init(IKCSSMediaQueryExpression);
    [(IKCSSMediaQueryExpression *)v26 setType:v8];
    [(IKCSSMediaQueryExpression *)v26 setKey:v6];
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