@interface CCSetChangeQueue
+ (void)groupSetsByPersonaIdentifier:(id)a3 enumerateGroupsUsingBlock:(id)a4;
- (CCSetChangeQueue)init;
- (id)dequeueAll;
- (void)enqueue:(id)a3;
@end

@implementation CCSetChangeQueue

- (CCSetChangeQueue)init
{
  v9.receiver = self;
  v9.super_class = CCSetChangeQueue;
  v2 = [(CCSetChangeQueue *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    setChanges = v2->_setChanges;
    v2->_setChanges = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cascade.setChange.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (void)groupSetsByPersonaIdentifier:(id)a3 enumerateGroupsUsingBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if ([v5 count] == 1)
    {
      v7 = [v5 anyObject];
      v8 = [v7 personaIdentifier];
      v9 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      v6[2](v6, v8, v9);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v5 allObjects];
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            v17 = [v16 personaIdentifier];
            if (!v17)
            {
              if (!v13)
              {
                v13 = objc_opt_new();
              }

              [v13 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
      }

      if ([v13 count])
      {
        v6[2](v6, 0, v13);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dequeueAll
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CCSetChangeQueue_dequeueAll__block_invoke;
  v5[3] = &unk_1E7C8BE98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__CCSetChangeQueue_dequeueAll__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 8);

  return [v5 removeAllObjects];
}

- (void)enqueue:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__CCSetChangeQueue_enqueue___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end