@interface _HDHealthConceptAuthorizationPromptSession
- (os_unfair_lock_s)requestCount;
- (void)addCompletion:(uint64_t)a1;
- (void)endPromptTransactionWithSuccess:(void *)a3 error:;
@end

@implementation _HDHealthConceptAuthorizationPromptSession

- (void)endPromptTransactionWithSuccess:(void *)a3 error:
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v23 = _Block_copy(v6);
      v7 = *(a1 + 40);
      *(a1 + 40) = 0;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = *(a1 + 16);
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            v14 = v5;
            if (v13)
            {
              v15 = *(v13 + 8);
              if (v15)
              {
                (*(v15 + 16))(v15, *(v13 + 16), a2, v14);
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v10);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = *(a1 + 24);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v26 = *(*(&v27 + 1) + 8 * j);
            v25 = v5;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v18);
      }

      v24 = v5;
      v21 = v23;
      HKDispatchAsyncOnGlobalConcurrentQueue();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (os_unfair_lock_s)requestCount
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 9);
    v2 = [*&v1[4]._os_unfair_lock_opaque count];
    os_unfair_lock_unlock(v1 + 9);
    return v2;
  }

  return result;
}

- (void)addCompletion:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 36));
    v4 = *(a1 + 24);
    v5 = _Block_copy(v3);

    [v4 addObject:v5];

    os_unfair_lock_unlock((a1 + 36));
  }
}

@end