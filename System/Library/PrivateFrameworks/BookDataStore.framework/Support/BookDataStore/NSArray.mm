@interface NSArray
- (id)bds_arrayByRemovingNSNullsInvokingBlockForNulls:(id)a3;
- (id)bds_dictionaryUsingPropertyAsKey:(id)a3 uniquingKeysWith:(id)a4;
- (void)bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:(SEL)a3 completion:(id)a4;
- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)a3 completion:(id)a4;
- (void)bds_traverseBatchesOfSize:(unint64_t)a3 block:(id)a4;
@end

@implementation NSArray

- (id)bds_dictionaryUsingPropertyAsKey:(id)a3 uniquingKeysWith:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 valueForKey:{v6, v21}];
        objc_opt_class();
        v21 = &OBJC_PROTOCOL___NSCopying;
        v15 = BUClassAndProtocolCast();
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:{v15, &OBJC_PROTOCOL___NSCopying}];

          if (v16)
          {
            v17 = [v8 objectForKeyedSubscript:v15];
            v18 = v7[2](v7, v17, v13);
            [v8 setObject:v18 forKeyedSubscript:v15];
          }

          else
          {
            [v8 setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v10 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = [v8 copy];

  return v19;
}

- (id)bds_arrayByRemovingNSNullsInvokingBlockForNulls:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSArray *)self count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(NSArray *)self objectAtIndex:i];
      v10 = +[NSNull null];

      if (v9 == v10)
      {
        v11 = objc_retainBlock(v4);
        v12 = v11;
        if (v11)
        {
          (*(v11 + 2))(v11, i);
        }
      }

      else
      {
        [v5 addObject:v9];
      }
    }
  }

  v13 = [v5 copy];

  return v13;
}

- (void)bds_traverseBatchesOfSize:(unint64_t)a3 block:(id)a4
{
  v16 = a4;
  if (v16)
  {
    v6 = [(NSArray *)self count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 + a3;
      v9 = -a3;
      v10 = v6;
      do
      {
        v11 = v10 - a3;
        if (v10 >= a3)
        {
          v12 = a3;
        }

        else
        {
          v12 = v10;
        }

        v13 = [(NSArray *)self subarrayWithRange:v7, v12];
        v16[2](v16, v13, v7, v12);

        v8 -= a3;
        if (a3 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = a3;
        }

        v9 += a3;
        v15 = v14 + v9;
        v7 += a3;
        v10 = v11;
      }

      while (v15 < v6);
    }

    else
    {
      (v16[2])();
    }
  }
}

- (void)bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[NSPointerArray alloc] initWithOptions:5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v13 + 1) + 8 * v12), v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:0 completion:v6];
}

- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [[NSPointerArray alloc] initWithOptions:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addPointer:{*(*(&v14 + 1) + 8 * v12), v14}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [NSError errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:0 userInfo:0];
  [v7 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:a3 successSoFar:1 errorSoFar:v13 completion:v6];
}

@end