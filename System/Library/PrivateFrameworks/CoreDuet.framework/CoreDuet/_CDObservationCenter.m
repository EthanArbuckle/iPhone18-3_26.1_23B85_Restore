@interface _CDObservationCenter
+ (id)sharedInstance;
- (_CDObservationCenter)init;
- (id)_notificationToObserverEntriesForSender:(int)a3 observerObserver:(int)a4 shouldCreate:;
- (id)_observerToEntriesForSender:(void *)a3 name:(int)a4 observerObserver:(int)a5 shouldCreate:;
- (unint64_t)observerCountOnName:(id)a3;
- (void)_addObserver:(void *)a3 name:(void *)a4 sender:(void *)a5 queue:(int)a6 observerObserver:(void *)a7 usingCall:;
- (void)_postNotificationName:(void *)a3 userInfo:(void *)a4 sender:(int)a5 observerObserver:;
- (void)_postObserverChangesNotificationWithObserverCounts:(void *)a1;
- (void)_removeObserver:(int)a3 observerObserver:;
- (void)_removeObserver:(void *)a3 name:(int)a4 observerObserver:;
- (void)_removeObserver:(void *)a3 name:(void *)a4 sender:(int)a5 observerObserver:(void *)a6 observerCounts:;
- (void)addObserver:(id)a3 name:(id)a4 sender:(id)a5 queue:(id)a6 usingBlock:(id)a7;
- (void)addObserver:(id)a3 name:(id)a4 sender:(id)a5 queue:(id)a6 usingSelector:(SEL)a7;
- (void)addObserverChangesObserver:(id)a3 onName:(id)a4 queue:(id)a5 usingBlock:(id)a6;
- (void)addObserverChangesObserver:(id)a3 onName:(id)a4 queue:(id)a5 usingSelector:(SEL)a6;
@end

@implementation _CDObservationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CDObservationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObservers = v2->_senderToNotificationObservers;
    v2->_senderToNotificationObservers = v3;

    v5 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    senderToNotificationObserverObservers = v2->_senderToNotificationObserverObservers;
    v2->_senderToNotificationObserverObservers = v5;
  }

  return v2;
}

- (void)_addObserver:(void *)a3 name:(void *)a4 sender:(void *)a5 queue:(int)a6 observerObserver:(void *)a7 usingCall:
{
  v30[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (a1)
  {
    v18 = a1;
    objc_sync_enter(v18);
    v19 = [(_CDObservationCenter *)v18 _observerToEntriesForSender:v15 name:v14 observerObserver:a6 shouldCreate:1];
    v20 = objc_opt_new();
    v22 = v20;
    if (v20)
    {
      objc_setProperty_atomic(v20, v21, v16, 8);
      objc_setProperty_atomic(v22, v23, v17, 16);
    }

    v24 = [v19 count];
    [v19 setObject:v22 forKey:v13];
    if ((a6 & 1) != 0 || [v19 count] == v24)
    {
      v25 = -1;
    }

    else
    {
      v25 = [v18 observerCountOnName:v14];
    }

    objc_sync_exit(v18);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v29 = @"observerCount";
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      v30[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      [(_CDObservationCenter *)v18 _postNotificationName:v14 userInfo:v27 sender:v18 observerObserver:1];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_postNotificationName:(void *)a3 userInfo:(void *)a4 sender:(int)a5 observerObserver:
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v59 = a3;
  v10 = a4;
  v58 = v10;
  v37 = v9;
  if (a1)
  {
    v11 = objc_opt_new();
    v12 = a1;
    objc_sync_enter(v12);
    v13 = [(_CDObservationCenter *)v12 _observerToEntriesForSender:v10 name:v9 observerObserver:a5 shouldCreate:0];
    v14 = [v13 copy];

    if (v14)
    {
      [v11 addObject:v14];
    }

    v15 = [(_CDObservationCenter *)v12 _observerToEntriesForSender:v37 name:a5 observerObserver:0 shouldCreate:?];
    v16 = [v15 copy];

    if (v16)
    {
      [v11 addObject:v16];
    }

    objc_sync_exit(v12);
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
                    [v33 setArgument:&v59 atIndex:3];
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
                      v46 = v59;
                      v30 = v30;
                      v47 = v30;
                      dispatch_async(v26, v44);
                    }

                    else
                    {
                      (*(v34 + 16))(v34, v58, v59);
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

    v10 = v58;
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(int)a3 observerObserver:
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = a1;
    objc_sync_enter(v7);
    v8 = 8;
    if (a3)
    {
      v8 = 16;
    }

    v9 = *&v7[v8];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v9;
    v10 = [v9 keyEnumerator];
    v11 = [v10 allObjects];
    v12 = [v11 copy];

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
          v17 = [v16 keyEnumerator];
          v18 = [v17 allObjects];
          v19 = [v18 copy];

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

                [(_CDObservationCenter *)v7 _removeObserver:v5 name:*(*(&v29 + 1) + 8 * j) sender:v15 observerObserver:a3 observerCounts:v6];
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

    [(_CDObservationCenter *)v12 _removeObserver:v26 observerObserver:v7, v6];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:(void *)a3 name:(void *)a4 sender:(int)a5 observerObserver:(void *)a6 observerCounts:
{
  v26 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (a1)
  {
    v15 = v13;
    if (!v13)
    {
      v15 = objc_opt_new();
    }

    v16 = a1;
    objc_sync_enter(v16);
    v17 = 8;
    if (a5)
    {
      v17 = 16;
    }

    v18 = *&v16[v17];
    v19 = [v18 objectForKey:v12];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 objectForKey:v11];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 count];
        [v22 removeObjectForKey:v26];
        if ((a5 & 1) == 0 && [v22 count] != v23)
        {
          v24 = [v16 observerCountOnName:v11];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
          [v15 setObject:v25 forKey:v11];
        }

        if (![v22 count])
        {
          [v20 removeObjectForKey:v11];
        }
      }

      if (![v20 count])
      {
        [v18 removeObjectForKey:v12];
      }
    }

    objc_sync_exit(v16);
    if (!v14)
    {
      [(_CDObservationCenter *)v16 _postObserverChangesNotificationWithObserverCounts:v15];
    }
  }

  else
  {
    v15 = v13;
  }
}

- (void)_removeObserver:(void *)a3 name:(int)a4 observerObserver:
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = objc_opt_new();
    v10 = a1;
    objc_sync_enter(v10);
    v11 = 8;
    if (a4)
    {
      v11 = 16;
    }

    v12 = *&v10[v11];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v12;
    v13 = [v12 keyEnumerator];
    v14 = [v13 allObjects];
    v15 = [v14 copy];

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
          [(_CDObservationCenter *)v10 _removeObserver:v7 name:v8 sender:v19 observerObserver:a4 observerCounts:v9];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [(_CDObservationCenter *)v15 _removeObserver:v21 observerObserver:v10, v9];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3 name:(id)a4 sender:(id)a5 queue:(id)a6 usingSelector:(SEL)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = NSStringFromSelector(a7);
  [(_CDObservationCenter *)self _addObserver:v15 name:v14 sender:v13 queue:v12 observerObserver:0 usingCall:v16];
}

- (void)addObserver:(id)a3 name:(id)a4 sender:(id)a5 queue:(id)a6 usingBlock:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = MEMORY[0x193B00C50](a7);
  [(_CDObservationCenter *)self _addObserver:v15 name:v14 sender:v13 queue:v12 observerObserver:0 usingCall:v16];
}

- (void)addObserverChangesObserver:(id)a3 onName:(id)a4 queue:(id)a5 usingSelector:(SEL)a6
{
  v10 = a3;
  v18 = a4;
  v11 = a5;
  v12 = [objc_opt_class() instanceMethodSignatureForSelector:a6];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v12];
    [v13 setSelector:a6];
    [v13 setTarget:v10];
    [v13 setArgument:&v18 atIndex:2];
    v14 = v18;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78___CDObservationCenter_addObserverChangesObserver_onName_queue_usingSelector___block_invoke;
    v16[3] = &unk_1E7368390;
    v17 = v13;
    v15 = v13;
    [(_CDObservationCenter *)self addObserverChangesObserver:v10 onName:v14 queue:v11 usingBlock:v16];
  }
}

- (void)addObserverChangesObserver:(id)a3 onName:(id)a4 queue:(id)a5 usingBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75___CDObservationCenter_addObserverChangesObserver_onName_queue_usingBlock___block_invoke;
  v18[3] = &unk_1E73683B8;
  v15 = v13;
  v20 = v15;
  v16 = v11;
  v19 = v16;
  v17 = MEMORY[0x193B00C50](v18);
  [(_CDObservationCenter *)v14 _addObserver:v10 name:v16 sender:v14 queue:v12 observerObserver:1 usingCall:v17];

  objc_sync_exit(v14);
}

- (unint64_t)observerCountOnName:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_senderToNotificationObservers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(NSMapTable *)v6 keyEnumerator];
  v8 = [v7 allObjects];

  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [(_CDObservationCenter *)v5 _observerToEntriesForSender:v13 name:v4 observerObserver:0 shouldCreate:0];
        v15 = v14;
        if (v14)
        {
          v9 += [v14 count];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v5);
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)_notificationToObserverEntriesForSender:(int)a3 observerObserver:(int)a4 shouldCreate:
{
  v7 = a2;
  if (a1)
  {
    v8 = 8;
    if (a3)
    {
      v8 = 16;
    }

    v9 = *(a1 + v8);
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DFB0] null];
    }

    v10 = [v9 objectForKey:v7];
    if (!v10 && a4)
    {
      v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      OUTLINED_FUNCTION_1_9(v11);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_observerToEntriesForSender:(void *)a3 name:(int)a4 observerObserver:(int)a5 shouldCreate:
{
  v9 = a3;
  if (a1)
  {
    v10 = [(_CDObservationCenter *)a1 _notificationToObserverEntriesForSender:a2 observerObserver:a4 shouldCreate:a5];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:v9];
      if (!v12 && a5)
      {
        v13 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        OUTLINED_FUNCTION_1_9(v13);
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

- (void)_postObserverChangesNotificationWithObserverCounts:(void *)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
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
          v12 = [v11 unsignedIntegerValue];
          v21 = @"observerCount";
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v22 = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          [(_CDObservationCenter *)a1 _postNotificationName:v10 userInfo:v14 sender:a1 observerObserver:1];
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