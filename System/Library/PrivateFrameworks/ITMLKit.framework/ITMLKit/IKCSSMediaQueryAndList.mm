@interface IKCSSMediaQueryAndList
- (BOOL)evaluate;
- (IKCSSMediaQueryAndList)init;
- (id)description;
- (id)expressionAsString;
- (void)setType:(id)a3;
@end

@implementation IKCSSMediaQueryAndList

- (IKCSSMediaQueryAndList)init
{
  v6.receiver = self;
  v6.super_class = IKCSSMediaQueryAndList;
  v2 = [(IKCSSMediaQueryAndList *)&v6 init];
  if (v2)
  {
    v3 = +[(IKArray *)IKMutableArray];
    queryList = v2->_queryList;
    v2->_queryList = v3;

    v2->_negated = 0;
  }

  return v2;
}

- (void)setType:(id)a3
{
  v4 = [a3 ik_sharedInstance];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x2821F96F8]();
}

- (id)expressionAsString
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_queryList;
  v5 = [(IKArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if (v8)
        {
          v11 = [(IKCSSMediaQueryAndList *)self type];
          v12 = [v10 expressionAsString];
          [v3 appendFormat:@"%@ and (%@)", v11, v12, v15];
        }

        else
        {
          v11 = [*(*(&v15 + 1) + 8 * i) expressionAsString];
          [v3 appendFormat:@" and (%@)", v11];
        }

        v8 = 0;
      }

      v6 = [(IKArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v8 = 0;
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)evaluate
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [[IKStyleMediaQuery alloc] initWithMediaType:self->_type featureValues:0 isNegated:0];
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = self->_queryList;
    v5 = [(IKArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v13 + 1) + 8 * i) evaluate])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [(IKArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  negated = self->_negated;

  v11 = *MEMORY[0x277D85DE8];
  return (v9 ^ negated) & 1;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  if (self->_negated)
  {
    [v3 appendString:@"!"];
  }

  objc_msgSend(v4, "appendFormat:", @"(type=%@, exprs=["), self->_type;
  if ([(IKArray *)self->_queryList count])
  {
    v5 = [(IKArray *)self->_queryList objectAtIndex:0];
    [v4 appendFormat:@"%@", v5];

    if ([(IKArray *)self->_queryList count]>= 2)
    {
      v6 = 1;
      do
      {
        v7 = [(IKArray *)self->_queryList objectAtIndex:v6];
        [v4 appendFormat:@" && %@", v7];

        ++v6;
      }

      while (v6 < [(IKArray *)self->_queryList count]);
    }
  }

  [v4 appendString:@"]"]);

  return v4;
}

@end