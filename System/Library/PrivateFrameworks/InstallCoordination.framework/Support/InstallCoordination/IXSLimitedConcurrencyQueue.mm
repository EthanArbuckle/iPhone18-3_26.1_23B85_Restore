@interface IXSLimitedConcurrencyQueue
+ (id)launchServicesQueue;
+ (id)uninstallConcurrencyQueue;
- (IXSLimitedConcurrencyQueue)initWithWidth:(unint64_t)width;
- (void)_onQueue_deQueueIfNeeded;
- (void)_onQueue_runAsyncForIdentity:(id)identity description:(id)description operation:(id)operation;
- (void)runAsyncForIdentity:(id)identity description:(id)description operation:(id)operation;
@end

@implementation IXSLimitedConcurrencyQueue

+ (id)launchServicesQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012E4C;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121CA0 != -1)
  {
    dispatch_once(&qword_100121CA0, block);
  }

  v2 = qword_100121C98;

  return v2;
}

+ (id)uninstallConcurrencyQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012F30;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121CB0 != -1)
  {
    dispatch_once(&qword_100121CB0, block);
  }

  v2 = qword_100121CA8;

  return v2;
}

- (IXSLimitedConcurrencyQueue)initWithWidth:(unint64_t)width
{
  v16.receiver = self;
  v16.super_class = IXSLimitedConcurrencyQueue;
  v4 = [(IXSLimitedConcurrencyQueue *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_width = width;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.installcoordinationd.LimitedConcurrencyQueue", v6);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v7;

    v9 = [NSMutableDictionary dictionaryWithCapacity:0];
    waitingOperations = v5->_waitingOperations;
    v5->_waitingOperations = v9;

    v11 = [NSMutableSet setWithCapacity:0];
    activeIdentities = v5->_activeIdentities;
    v5->_activeIdentities = v11;

    v13 = [NSMutableArray arrayWithCapacity:0];
    identityQueue = v5->_identityQueue;
    v5->_identityQueue = v13;
  }

  return v5;
}

- (void)runAsyncForIdentity:(id)identity description:(id)description operation:(id)operation
{
  identityCopy = identity;
  descriptionCopy = description;
  operationCopy = operation;
  internalQueue = [(IXSLimitedConcurrencyQueue *)self internalQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001315C;
  v15[3] = &unk_1001010C8;
  v15[4] = self;
  v16 = identityCopy;
  v17 = descriptionCopy;
  v18 = operationCopy;
  v12 = operationCopy;
  v13 = descriptionCopy;
  v14 = identityCopy;
  sub_100071134(internalQueue, v15);
}

- (void)_onQueue_deQueueIfNeeded
{
  internalQueue = [(IXSLimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  waitingOperations = [(IXSLimitedConcurrencyQueue *)self waitingOperations];
  v5 = [waitingOperations count];

  if (v5)
  {
    activeIdentities = [(IXSLimitedConcurrencyQueue *)self activeIdentities];
    v7 = [activeIdentities count];
    width = [(IXSLimitedConcurrencyQueue *)self width];

    if (v7 >= width)
    {
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100098FD4(self);
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      identityQueue = [(IXSLimitedConcurrencyQueue *)self identityQueue];
      v10 = [identityQueue countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v40;
        *&v11 = 136315394;
        v34 = v11;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v40 != v13)
          {
            objc_enumerationMutation(identityQueue);
          }

          v15 = *(*(&v39 + 1) + 8 * v14);
          activeIdentities2 = [(IXSLimitedConcurrencyQueue *)self activeIdentities];
          v17 = [activeIdentities2 containsObject:v15];

          if (!v17)
          {
            break;
          }

          v18 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v34;
            v44 = "[IXSLimitedConcurrencyQueue _onQueue_deQueueIfNeeded]";
            v45 = 2112;
            v46 = v15;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s: Skipping dequeue for %@; work item already active for that identity", buf, 0x16u);
          }

          if (v12 == ++v14)
          {
            v12 = [identityQueue countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_13;
          }
        }

        v19 = v15;

        if (!v19)
        {
          goto LABEL_26;
        }

        waitingOperations2 = [(IXSLimitedConcurrencyQueue *)self waitingOperations];
        v21 = [waitingOperations2 objectForKeyedSubscript:v19];

        if (!v21)
        {
          v28 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000992C0();
          }

          goto LABEL_39;
        }

        if (![v21 count])
        {
          v28 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100099240();
          }

          goto LABEL_39;
        }

        v22 = [v21 objectAtIndex:0];
        [v21 removeObjectAtIndex:0];
        if ([v21 count])
        {
          identityQueue2 = [(IXSLimitedConcurrencyQueue *)self identityQueue];
          v24 = [identityQueue2 count];

          if (v24 == 1)
          {
LABEL_36:
            v31 = sub_1000031B0(off_100121958);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              sub_10009918C(v19, v22);
            }

            activeIdentities3 = [(IXSLimitedConcurrencyQueue *)self activeIdentities];
            [activeIdentities3 addObject:v19];

            v33 = sub_10007124C();
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_1000136AC;
            v35[3] = &unk_100101300;
            v36 = v22;
            selfCopy = self;
            v38 = v19;
            v28 = v22;
            sub_100071134(v33, v35);

LABEL_39:
            goto LABEL_40;
          }

          v25 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_100099094();
          }

          identityQueue3 = [(IXSLimitedConcurrencyQueue *)self identityQueue];
          [identityQueue3 removeObject:v19];

          identityQueue4 = [(IXSLimitedConcurrencyQueue *)self identityQueue];
          [identityQueue4 addObject:v19];
        }

        else
        {
          v29 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            sub_100099110();
          }

          waitingOperations3 = [(IXSLimitedConcurrencyQueue *)self waitingOperations];
          [waitingOperations3 removeObjectForKey:v19];

          identityQueue4 = [(IXSLimitedConcurrencyQueue *)self identityQueue];
          [identityQueue4 removeObject:v19];
        }

        goto LABEL_36;
      }

LABEL_13:

LABEL_26:
      v19 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100099340();
      }
    }
  }

  else
  {
    v19 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1000993C0();
    }
  }

LABEL_40:
}

- (void)_onQueue_runAsyncForIdentity:(id)identity description:(id)description operation:(id)operation
{
  identityCopy = identity;
  descriptionCopy = description;
  operationCopy = operation;
  internalQueue = [(IXSLimitedConcurrencyQueue *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v12 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000994F0();
  }

  waitingOperations = [(IXSLimitedConcurrencyQueue *)self waitingOperations];
  v14 = [waitingOperations objectForKeyedSubscript:identityCopy];

  if (!v14)
  {
    v14 = [NSMutableArray arrayWithCapacity:1];
    waitingOperations2 = [(IXSLimitedConcurrencyQueue *)self waitingOperations];
    [waitingOperations2 setObject:v14 forKeyedSubscript:identityCopy];
  }

  v16 = [[IXSLimitedConcurrencyOperation alloc] initWithBlock:operationCopy description:descriptionCopy];

  [v14 addObject:v16];
  identityQueue = [(IXSLimitedConcurrencyQueue *)self identityQueue];
  v18 = [identityQueue containsObject:identityCopy];

  if ((v18 & 1) == 0)
  {
    identityQueue2 = [(IXSLimitedConcurrencyQueue *)self identityQueue];
    [identityQueue2 addObject:identityCopy];
  }

  [(IXSLimitedConcurrencyQueue *)self _onQueue_deQueueIfNeeded];
}

@end