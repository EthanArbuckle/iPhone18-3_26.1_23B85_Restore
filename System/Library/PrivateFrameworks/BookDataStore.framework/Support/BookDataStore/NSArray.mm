@interface NSArray
- (id)bds_arrayByRemovingNSNullsInvokingBlockForNulls:(id)nulls;
- (id)bds_dictionaryUsingPropertyAsKey:(id)key uniquingKeysWith:(id)with;
- (void)bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:(SEL)selector completion:(id)completion;
- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)selector completion:(id)completion;
- (void)bds_traverseBatchesOfSize:(unint64_t)size block:(id)block;
@end

@implementation NSArray

- (id)bds_dictionaryUsingPropertyAsKey:(id)key uniquingKeysWith:(id)with
{
  keyCopy = key;
  withCopy = with;
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
        v14 = [v13 valueForKey:{keyCopy, v21}];
        objc_opt_class();
        v21 = &OBJC_PROTOCOL___NSCopying;
        v15 = BUClassAndProtocolCast();
        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:{v15, &OBJC_PROTOCOL___NSCopying}];

          if (v16)
          {
            v17 = [v8 objectForKeyedSubscript:v15];
            v18 = withCopy[2](withCopy, v17, v13);
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

- (id)bds_arrayByRemovingNSNullsInvokingBlockForNulls:(id)nulls
{
  nullsCopy = nulls;
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
        v11 = objc_retainBlock(nullsCopy);
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

- (void)bds_traverseBatchesOfSize:(unint64_t)size block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v6 = [(NSArray *)self count];
    if (v6)
    {
      v7 = 0;
      v8 = v6 + size;
      v9 = -size;
      v10 = v6;
      do
      {
        v11 = v10 - size;
        if (v10 >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = v10;
        }

        sizeCopy = [(NSArray *)self subarrayWithRange:v7, sizeCopy];
        blockCopy[2](blockCopy, sizeCopy, v7, sizeCopy);

        v8 -= size;
        if (size >= v8)
        {
          sizeCopy2 = v8;
        }

        else
        {
          sizeCopy2 = size;
        }

        v9 += size;
        v15 = sizeCopy2 + v9;
        v7 += size;
        v10 = v11;
      }

      while (v15 < v6);
    }

    else
    {
      (blockCopy[2])();
    }
  }
}

- (void)bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:(SEL)selector completion:(id)completion
{
  completionCopy = completion;
  v7 = [[NSPointerArray alloc] initWithOptions:5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v9 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [v7 addPointer:{*(*(&v13 + 1) + 8 * v12), v13}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [v7 bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:selector successSoFar:1 errorSoFar:0 completion:completionCopy];
}

- (void)bds_chainUntilNoErrorCompletionSelectorCallsForSelector:(SEL)selector completion:(id)completion
{
  completionCopy = completion;
  v7 = [[NSPointerArray alloc] initWithOptions:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v9 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [v7 addPointer:{*(*(&v14 + 1) + 8 * v12), v14}];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [NSError errorWithDomain:@"BDSArrayAdditionsErrorDomain" code:0 userInfo:0];
  [v7 bds_chainUntilNoErrorCompletionSelectorCallsForSelector:selector successSoFar:1 errorSoFar:v13 completion:completionCopy];
}

@end