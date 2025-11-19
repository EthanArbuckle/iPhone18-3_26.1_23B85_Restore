@interface IKCSSMediaQueryOrList
- (BOOL)evaluate;
- (IKCSSMediaQueryOrList)init;
- (id)description;
- (id)expressionAsString;
@end

@implementation IKCSSMediaQueryOrList

- (IKCSSMediaQueryOrList)init
{
  v6.receiver = self;
  v6.super_class = IKCSSMediaQueryOrList;
  v2 = [(IKCSSMediaQueryOrList *)&v6 init];
  if (v2)
  {
    v3 = +[(IKArray *)IKMutableArray];
    queryList = v2->_queryList;
    v2->_queryList = v3;
  }

  return v2;
}

- (id)expressionAsString
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_queryList;
  v5 = [(IKArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = @"%@";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) expressionAsString];
        [v3 appendFormat:v8, v10];

        v8 = @" or %@";
      }

      v6 = [(IKArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = @" or %@";
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)evaluate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_queryList;
  v3 = [(IKArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) evaluate])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(IKArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  objc_msgSend(v3, "appendString:", @"(");
  if ([(IKArray *)self->_queryList count])
  {
    v4 = [(IKArray *)self->_queryList objectAtIndex:0];
    [v3 appendFormat:@"%@", v4];

    if ([(IKArray *)self->_queryList count]>= 2)
    {
      v5 = 1;
      do
      {
        v6 = [(IKArray *)self->_queryList objectAtIndex:v5];
        [v3 appendFormat:@" || %@", v6];

        ++v5;
      }

      while (v5 < [(IKArray *)self->_queryList count]);
    }
  }

  [v3 appendString:@""]);

  return v3;
}

@end