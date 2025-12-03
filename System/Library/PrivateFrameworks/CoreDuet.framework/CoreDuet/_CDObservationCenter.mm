@interface _CDObservationCenter
+ (id)sharedInstance;
- (_CDObservationCenter)init;
- (id)_notificationToObserverEntriesForSender:(int)sender observerObserver:(int)observer shouldCreate:;
- (id)_observerToEntriesForSender:(void *)sender name:(int)name observerObserver:(int)observer shouldCreate:;
- (unint64_t)observerCountOnName:(id)name;
- (void)_addObserver:(void *)observer name:(void *)name sender:(void *)sender queue:(int)queue observerObserver:(void *)observerObserver usingCall:;
- (void)_postNotificationName:(void *)name userInfo:(void *)info sender:(int)sender observerObserver:;
- (void)_postObserverChangesNotificationWithObserverCounts:(void *)counts;
- (void)_removeObserver:(int)observer observerObserver:;
- (void)_removeObserver:(void *)observer name:(int)name observerObserver:;
- (void)_removeObserver:(void *)observer name:(void *)name sender:(int)sender observerObserver:(void *)observerObserver observerCounts:;
- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingBlock:(id)block;
- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingSelector:(SEL)selector;
- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingBlock:(id)block;
- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingSelector:(SEL)selector;
@end

@implementation _CDObservationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CDObservationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_initialized_1 != -1)
  {
    dispatch_once(&sharedInstance_initialized_1, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

- (_CDObservationCenter)init
{
  v8.receiver = self;
  v8.super_class = _CDObservationCenter;
  v2 = [(_CDObservationCenter *)&v8 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObservers = v2->_senderToNotificationObservers;
    v2->_senderToNotificationObservers = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObserverObservers = v2->_senderToNotificationObserverObservers;
    v2->_senderToNotificationObserverObservers = weakToStrongObjectsMapTable2;
  }

  return v2;
}

- (void)_addObserver:(void *)observer name:(void *)name sender:(void *)sender queue:(int)queue observerObserver:(void *)observerObserver usingCall:
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  observerCopy = observer;
  nameCopy = name;
  senderCopy = sender;
  observerObserverCopy = observerObserver;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v19 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:nameCopy name:observerCopy observerObserver:queue shouldCreate:1];
    v20 = objc_opt_new();
    v22 = v20;
    if (v20)
    {
      objc_setProperty_atomic(v20, v21, senderCopy, 8);
      objc_setProperty_atomic(v22, v23, observerObserverCopy, 16);
    }

    v24 = [v19 count];
    [v19 setObject:v22 forKey:v13];
    if ((queue & 1) != 0 || [v19 count] == v24)
    {
      v25 = -1;
    }

    else
    {
      v25 = [selfCopy observerCountOnName:observerCopy];
    }

    objc_sync_exit(selfCopy);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v29 = @"observerCount";
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      v30[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      [(_CDObservationCenter *)selfCopy _postNotificationName:observerCopy userInfo:v27 sender:selfCopy observerObserver:1];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_postNotificationName:(void *)name userInfo:(void *)info sender:(int)sender observerObserver:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  nameCopy = name;
  infoCopy = info;
  v58 = infoCopy;
  v37 = v9;
  if (self)
  {
    v11 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:infoCopy name:v9 observerObserver:sender shouldCreate:0];
    v14 = [v13 copy];

    if (v14)
    {
      [v11 addObject:v14];
    }

    v15 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:v37 name:sender observerObserver:0 shouldCreate:?];
    v16 = [v15 copy];

    if (v16)
    {
      [v11 addObject:v16];
    }

    objc_sync_exit(selfCopy);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v11;
    v40 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v40)
    {
      v39 = *v55;
      do
      {
        v17 = 0;
        do
        {
          if (*v55 != v39)
          {
            v18 = v17;
            objc_enumerationMutation(obj);
            v17 = v18;
          }

          v41 = v17;
          v19 = *(*(&v54 + 1) + 8 * v17);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v20 = v19;
          v43 = [v20 countByEnumeratingWithState:&v50 objects:v60 count:16];
          if (v43)
          {
            v42 = *v51;
            do
            {
              v21 = 0;
              do
              {
                if (*v51 != v42)
                {
                  objc_enumerationMutation(v20);
                }

                v22 = *(*(&v50 + 1) + 8 * v21);
                v23 = [v20 objectForKey:v22];
                v25 = v23;
                if (v23)
                {
                  v26 = objc_getProperty(v23, v24, 8, 1);
                  Property = objc_getProperty(v25, v27, 16, 1);
                }

                else
                {
                  v26 = 0;
                  Property = 0;
                }

                v29 = Property;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v30 = v29;
                  v31 = NSSelectorFromString(v30);
                  v32 = [objc_opt_class() instanceMethodSignatureForSelector:v31];
                  if (v32)
                  {
                    v33 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v32];
                    [v33 setSelector:v31];
                    [v33 setTarget:v22];
                    [v33 setArgument:&v58 atIndex:2];
                    [v33 setArgument:&nameCopy atIndex:3];
                    if (v26)
                    {
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 3221225472;
                      block[2] = __79___CDObservationCenter__postNotificationName_userInfo_sender_observerObserver___block_invoke;
                      block[3] = &unk_1E7367440;
                      v49 = v33;
                      dispatch_async(v26, block);
                    }

                    else
                    {
                      [v33 invoke];
                    }
                  }
                }

                else
                {
                  v34 = MEMORY[0x193B00C50](v29);
                  v30 = v34;
                  if (v34)
                  {
                    if (v26)
                    {
                      v44[0] = MEMORY[0x1E69E9820];
                      v44[1] = 3221225472;
                      v44[2] = __79___CDObservationCenter__postNotificationName_userInfo_sender_observerObserver___block_invoke_2;
                      v44[3] = &unk_1E7368368;
                      v45 = v58;
                      v46 = nameCopy;
                      v30 = v30;
                      v47 = v30;
                      dispatch_async(v26, v44);
                    }

                    else
                    {
                      (*(v34 + 16))(v34, v58, nameCopy);
                    }
                  }
                }

                ++v21;
              }

              while (v43 != v21);
              v35 = [v20 countByEnumeratingWithState:&v50 objects:v60 count:16];
              v43 = v35;
            }

            while (v35);
          }

          v17 = v41 + 1;
        }

        while (v41 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v40);
    }

    infoCopy = v58;
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(int)observer observerObserver:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = 8;
    if (observer)
    {
      v8 = 16;
    }

    v9 = *&selfCopy[v8];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v9;
    keyEnumerator = [v9 keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v12 = [allObjects copy];

    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v24 = v12;
      v25 = *v34;
      do
      {
        v27 = v13;
        for (i = 0; i != v27; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v26 objectForKey:v15];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = v16;
          keyEnumerator2 = [v16 keyEnumerator];
          allObjects2 = [keyEnumerator2 allObjects];
          v19 = [allObjects2 copy];

          v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v20)
          {
            v21 = *v30;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v30 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                [(_CDObservationCenter *)selfCopy _removeObserver:v5 name:*(*(&v29 + 1) + 8 * j) sender:v15 observerObserver:observer observerCounts:v6];
              }

              v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v20);
          }

          v12 = v24;
        }

        v13 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);
    }

    [(_CDObservationCenter *)v12 _removeObserver:v26 observerObserver:selfCopy, v6];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(void *)observer name:(void *)name sender:(int)sender observerObserver:(void *)observerObserver observerCounts:
{
  v26 = a2;
  observerCopy = observer;
  nameCopy = name;
  observerObserverCopy = observerObserver;
  v14 = observerObserverCopy;
  if (self)
  {
    v15 = observerObserverCopy;
    if (!observerObserverCopy)
    {
      v15 = objc_opt_new();
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = 8;
    if (sender)
    {
      v17 = 16;
    }

    v18 = *&selfCopy[v17];
    v19 = [v18 objectForKey:nameCopy];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 objectForKey:observerCopy];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 count];
        [v22 removeObjectForKey:v26];
        if ((sender & 1) == 0 && [v22 count] != v23)
        {
          v24 = [selfCopy observerCountOnName:observerCopy];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [v15 setObject:v25 forKey:observerCopy];
        }

        if (![v22 count])
        {
          [v20 removeObjectForKey:observerCopy];
        }
      }

      if (![v20 count])
      {
        [v18 removeObjectForKey:nameCopy];
      }
    }

    objc_sync_exit(selfCopy);
    if (!v14)
    {
      [(_CDObservationCenter *)selfCopy _postObserverChangesNotificationWithObserverCounts:v15];
    }
  }

  else
  {
    v15 = observerObserverCopy;
  }
}

- (void)_removeObserver:(void *)observer name:(int)name observerObserver:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  observerCopy = observer;
  if (self)
  {
    v9 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 8;
    if (name)
    {
      v11 = 16;
    }

    v12 = *&selfCopy[v11];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v12;
    keyEnumerator = [v12 keyEnumerator];
    allObjects = [keyEnumerator allObjects];
    v15 = [allObjects copy];

    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          [(_CDObservationCenter *)selfCopy _removeObserver:v7 name:observerCopy sender:v19 observerObserver:name observerCounts:v9];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [(_CDObservationCenter *)v15 _removeObserver:v21 observerObserver:selfCopy, v9];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingSelector:(SEL)selector
{
  queueCopy = queue;
  senderCopy = sender;
  nameCopy = name;
  observerCopy = observer;
  v16 = NSStringFromSelector(selector);
  [(_CDObservationCenter *)self _addObserver:observerCopy name:nameCopy sender:senderCopy queue:queueCopy observerObserver:0 usingCall:v16];
}

- (void)addObserver:(id)observer name:(id)name sender:(id)sender queue:(id)queue usingBlock:(id)block
{
  queueCopy = queue;
  senderCopy = sender;
  nameCopy = name;
  observerCopy = observer;
  v16 = MEMORY[0x193B00C50](block);
  [(_CDObservationCenter *)self _addObserver:observerCopy name:nameCopy sender:senderCopy queue:queueCopy observerObserver:0 usingCall:v16];
}

- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingSelector:(SEL)selector
{
  observerCopy = observer;
  nameCopy = name;
  queueCopy = queue;
  v12 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    [v13 setSelector:selector];
    [v13 setTarget:observerCopy];
    [v13 setArgument:&nameCopy atIndex:2];
    v14 = nameCopy;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78___CDObservationCenter_addObserverChangesObserver_onName_queue_usingSelector___block_invoke;
    v16[3] = &unk_1E7368390;
    v17 = v13;
    v15 = v13;
    [(_CDObservationCenter *)self addObserverChangesObserver:observerCopy onName:v14 queue:queueCopy usingBlock:v16];
  }
}

- (void)addObserverChangesObserver:(id)observer onName:(id)name queue:(id)queue usingBlock:(id)block
{
  observerCopy = observer;
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___CDObservationCenter_addObserverChangesObserver_onName_queue_usingBlock___block_invoke;
  v18[3] = &unk_1E73683B8;
  v15 = blockCopy;
  v20 = v15;
  v16 = nameCopy;
  v19 = v16;
  v17 = MEMORY[0x193B00C50](v18);
  [(_CDObservationCenter *)selfCopy _addObserver:observerCopy name:v16 sender:selfCopy queue:queueCopy observerObserver:1 usingCall:v17];

  objc_sync_exit(selfCopy);
}

- (unint64_t)observerCountOnName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_senderToNotificationObservers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  keyEnumerator = [(NSMapTable *)v6 keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v9 = 0;
  v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allObjects);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [(_CDObservationCenter *)selfCopy _observerToEntriesForSender:v13 name:nameCopy observerObserver:0 shouldCreate:0];
        v15 = v14;
        if (v14)
        {
          v9 += [v14 count];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_notificationToObserverEntriesForSender:(int)sender observerObserver:(int)observer shouldCreate:
{
  null = a2;
  if (self)
  {
    v8 = 8;
    if (sender)
    {
      v8 = 16;
    }

    v9 = *(self + v8);
    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v10 = [v9 objectForKey:null];
    if (!v10 && observer)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      OUTLINED_FUNCTION_1_9(strongToStrongObjectsMapTable);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_observerToEntriesForSender:(void *)sender name:(int)name observerObserver:(int)observer shouldCreate:
{
  senderCopy = sender;
  if (self)
  {
    v10 = [(_CDObservationCenter *)self _notificationToObserverEntriesForSender:a2 observerObserver:name shouldCreate:observer];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:senderCopy];
      if (!v12 && observer)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        OUTLINED_FUNCTION_1_9(weakToStrongObjectsMapTable);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_postObserverChangesNotificationWithObserverCounts:(void *)counts
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (counts && [v3 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          unsignedIntegerValue = [v11 unsignedIntegerValue];
          v21 = @"observerCount";
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
          v22 = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [(_CDObservationCenter *)counts _postNotificationName:v10 userInfo:v14 sender:counts observerObserver:1];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v7);
    }

    v4 = v16;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(void *)a3 observerObserver:(void *)a4 .cold.1(void *a1, void *a2, void *a3, void *a4)
{
  objc_sync_exit(a3);

  if ([a4 count])
  {
    [(_CDObservationCenter *)a3 _postObserverChangesNotificationWithObserverCounts:a4];
  }
}

@end