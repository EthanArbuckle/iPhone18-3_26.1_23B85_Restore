@interface MILimitedConcurrencyQueue
- (MILimitedConcurrencyQueue)initWithName:(id)name width:(unint64_t)width;
- (void)_onQueue_deQueueIfNeeded;
- (void)_onQueue_runAsyncForIdentifier:(id)identifier description:(id)description operation:(id)operation;
- (void)runAsyncForIdentifier:(id)identifier description:(id)description operation:(id)operation;
@end

@implementation MILimitedConcurrencyQueue

- (MILimitedConcurrencyQueue)initWithName:(id)name width:(unint64_t)width
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = MILimitedConcurrencyQueue;
  v7 = [(MILimitedConcurrencyQueue *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_width = width;
    uTF8String = [nameCopy UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
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

- (void)runAsyncForIdentifier:(id)identifier description:(id)description operation:(id)operation
{
  identifierCopy = identifier;
  descriptionCopy = description;
  operationCopy = operation;
  internalQueue = [(MILimitedConcurrencyQueue *)self internalQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BCE4;
  v15[3] = &unk_100024B48;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = descriptionCopy;
  v18 = operationCopy;
  v12 = operationCopy;
  v13 = descriptionCopy;
  v14 = identifierCopy;
  dispatch_async(internalQueue, v15);
}

- (void)_onQueue_deQueueIfNeeded
{
  internalQueue = [(MILimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  waitingOperations = [(MILimitedConcurrencyQueue *)self waitingOperations];
  v5 = [waitingOperations count];

  if (v5)
  {
    activeIdentifiers = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
    v7 = [activeIdentifiers count];
    width = [(MILimitedConcurrencyQueue *)self width];

    if (v7 >= width)
    {
      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        activeIdentifiers2 = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
        [activeIdentifiers2 count];
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
      identifierQueue = [(MILimitedConcurrencyQueue *)self identifierQueue];
      v10 = [identifierQueue countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(identifierQueue);
          }

          v14 = *(*(&v37 + 1) + 8 * v13);
          activeIdentifiers3 = [(MILimitedConcurrencyQueue *)self activeIdentifiers];
          v16 = [activeIdentifiers3 containsObject:v14];

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
            v11 = [identifierQueue countByEnumeratingWithState:&v37 objects:v41 count:16];
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

        waitingOperations2 = [(MILimitedConcurrencyQueue *)self waitingOperations];
        v19 = [waitingOperations2 objectForKeyedSubscript:v17];

        if (v19)
        {
          if ([v19 count])
          {
            v20 = [v19 objectAtIndex:0];
            [v19 removeObjectAtIndex:0];
            if ([v19 count])
            {
              identifierQueue2 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              v22 = [identifierQueue2 count];

              if (v22 == 1)
              {
                goto LABEL_48;
              }

              if (gLogHandle && *(gLogHandle + 44) >= 7)
              {
                v30 = v17;
                MOLogWrite();
              }

              identifierQueue3 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [identifierQueue3 removeObject:v17];

              identifierQueue4 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [identifierQueue4 addObject:v17];
            }

            else
            {
              if (gLogHandle && *(gLogHandle + 44) >= 7)
              {
                v30 = v17;
                MOLogWrite();
              }

              waitingOperations3 = [(MILimitedConcurrencyQueue *)self waitingOperations];
              [waitingOperations3 removeObjectForKey:v17];

              identifierQueue4 = [(MILimitedConcurrencyQueue *)self identifierQueue];
              [identifierQueue4 removeObject:v17];
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
            selfCopy = self;
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

- (void)_onQueue_runAsyncForIdentifier:(id)identifier description:(id)description operation:(id)operation
{
  identifierCopy = identifier;
  descriptionCopy = description;
  operationCopy = operation;
  internalQueue = [(MILimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    v18 = identifierCopy;
    v19 = descriptionCopy;
    MOLogWrite();
  }

  v11 = [(MILimitedConcurrencyQueue *)self waitingOperations:v18];
  v12 = [v11 objectForKeyedSubscript:identifierCopy];

  if (!v12)
  {
    v12 = [NSMutableArray arrayWithCapacity:1];
    waitingOperations = [(MILimitedConcurrencyQueue *)self waitingOperations];
    [waitingOperations setObject:v12 forKeyedSubscript:identifierCopy];
  }

  v14 = [[MILimitedConcurrencyOperation alloc] initWithBlock:operationCopy description:descriptionCopy];

  [v12 addObject:v14];
  identifierQueue = [(MILimitedConcurrencyQueue *)self identifierQueue];
  v16 = [identifierQueue containsObject:identifierCopy];

  if ((v16 & 1) == 0)
  {
    identifierQueue2 = [(MILimitedConcurrencyQueue *)self identifierQueue];
    [identifierQueue2 addObject:identifierCopy];
  }

  [(MILimitedConcurrencyQueue *)self _onQueue_deQueueIfNeeded];
}

@end