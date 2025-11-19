@interface MILimitedConcurrencyQueue
- (MILimitedConcurrencyQueue)initWithName:(id)a3 width:(unint64_t)a4;
- (void)_onQueue_deQueueIfNeeded;
- (void)_onQueue_runAsyncForIdentifier:(id)a3 description:(id)a4 operation:(id)a5;
- (void)runAsyncForIdentifier:(id)a3 description:(id)a4 operation:(id)a5;
@end

@implementation MILimitedConcurrencyQueue

- (MILimitedConcurrencyQueue)initWithName:(id)a3 width:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = MILimitedConcurrencyQueue;
  v7 = [(MILimitedConcurrencyQueue *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_width = a4;
    v9 = [v6 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v11;

    v13 = [NSMutableDictionary dictionaryWithCapacity:0];
    waitingOperations = v8->_waitingOperations;
    v8->_waitingOperations = v13;

    v15 = [NSMutableSet setWithCapacity:0];
    activeIdentifiers = v8->_activeIdentifiers;
    v8->_activeIdentifiers = v15;

    v17 = [NSMutableArray arrayWithCapacity:0];
    identifierQueue = v8->_identifierQueue;
    v8->_identifierQueue = v17;
  }

  return v8;
}

- (void)runAsyncForIdentifier:(id)a3 description:(id)a4 operation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MILimitedConcurrencyQueue *)self internalQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BCE4;
  v15[3] = &unk_100024B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_onQueue_deQueueIfNeeded
{
  v3 = [(MILimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MILimitedConcurrencyQueue *)self waitingOperations];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
    v7 = [v6 count];
    v8 = [(MILimitedConcurrencyQueue *)self width];

    if (v7 >= v8)
    {
      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        v32 = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
        [v32 count];
        [(MILimitedConcurrencyQueue *)self width];
        MOLogWrite();
      }
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v9 = [(MILimitedConcurrencyQueue *)self identifierQueue];
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          v15 = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
          v16 = [v15 containsObject:v14];

          if (!v16)
          {
            break;
          }

          if (gLogHandle && *(gLogHandle + 44) >= 7)
          {
            v30 = v14;
            MOLogWrite();
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_14;
          }
        }

        v17 = v14;

        if (!v17)
        {
          goto LABEL_34;
        }

        v18 = [(MILimitedConcurrencyQueue *)self waitingOperations];
        v19 = [v18 objectForKeyedSubscript:v17];

        if (v19)
        {
          if ([v19 count])
          {
            v20 = [v19 objectAtIndex:0];
            [v19 removeObjectAtIndex:0];
            if ([v19 count])
            {
              v21 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              v22 = [v21 count];

              if (v22 == 1)
              {
                goto LABEL_48;
              }

              if (gLogHandle && *(gLogHandle + 44) >= 7)
              {
                v30 = v17;
                MOLogWrite();
              }

              v23 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [v23 removeObject:v17];

              v24 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [v24 addObject:v17];
            }

            else
            {
              if (gLogHandle && *(gLogHandle + 44) >= 7)
              {
                v30 = v17;
                MOLogWrite();
              }

              v25 = [(MILimitedConcurrencyQueue *)self waitingOperations];
              [v25 removeObjectForKey:v17];

              v24 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [v24 removeObject:v17];
            }

LABEL_48:
            if (gLogHandle && *(gLogHandle + 44) >= 7)
            {
              [v20 descString];
              v31 = v30 = v17;
              MOLogWrite();
            }

            v26 = [(MILimitedConcurrencyQueue *)self activeIdentifiers:v30];
            [v26 addObject:v17];

            v27 = qos_class_self();
            v28 = dispatch_get_global_queue(v27, 0);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000C2D8;
            block[3] = &unk_100024B70;
            v34 = v20;
            v35 = self;
            v36 = v17;
            v29 = v20;
            dispatch_async(v28, block);

            goto LABEL_52;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_52:

            return;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_52;
        }

        MOLogWrite();
        goto LABEL_52;
      }

LABEL_14:

LABEL_34:
      if (gLogHandle)
      {
        if (*(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }
      }
    }
  }

  else if (gLogHandle && *(gLogHandle + 44) >= 7)
  {

    MOLogWrite();
  }
}

- (void)_onQueue_runAsyncForIdentifier:(id)a3 description:(id)a4 operation:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MILimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(v10);

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v18 = v20;
    v19 = v8;
    MOLogWrite();
  }

  v11 = [(MILimitedConcurrencyQueue *)self waitingOperations:v18];
  v12 = [v11 objectForKeyedSubscript:v20];

  if (!v12)
  {
    v12 = [NSMutableArray arrayWithCapacity:1];
    v13 = [(MILimitedConcurrencyQueue *)self waitingOperations];
    [v13 setObject:v12 forKeyedSubscript:v20];
  }

  v14 = [[MILimitedConcurrencyOperation alloc] initWithBlock:v9 description:v8];

  [v12 addObject:v14];
  v15 = [(MILimitedConcurrencyQueue *)self identifierQueue];
  v16 = [v15 containsObject:v20];

  if ((v16 & 1) == 0)
  {
    v17 = [(MILimitedConcurrencyQueue *)self identifierQueue];
    [v17 addObject:v20];
  }

  [(MILimitedConcurrencyQueue *)self _onQueue_deQueueIfNeeded];
}

@end