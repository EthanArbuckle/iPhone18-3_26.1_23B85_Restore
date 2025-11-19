@interface CPLCloudKitOperationsTracker
- (BOOL)isOperationBlocked:(id)a3;
- (CPLCloudKitOperationsTracker)init;
- (id)_bundleIdentifiersFromCKOperation:(id)a3;
- (id)_contextForOperation:(id)a3;
- (id)_pendingTaskStatus;
- (id)status;
- (id)statusDictionary;
- (void)_emitLogForCurrentTasks;
- (void)cancelAllOperationsWithCompletionHandler:(id)a3;
- (void)cancelBlockedTasksIncludingBackground:(BOOL)a3;
- (void)operation:(id)a3 updateContextWithBlock:(id)a4;
- (void)operation:(id)a3 updateProgress:(double)a4;
- (void)operationDidFinish:(id)a3;
- (void)operationDidProgressOneBatch:(id)a3;
- (void)operationHasBeenCancelled:(id)a3;
- (void)operationWillStart:(id)a3 forTask:(id)a4 withContext:(id)a5;
- (void)operationWillStart:(id)a3 forTask:(id)a4 withContext:(id)a5 bundleIdentifiers:(id)a6;
- (void)taskDidFinish:(id)a3;
- (void)taskHasBeenCancelled:(id)a3;
- (void)taskWillStart:(id)a3;
- (void)waitForAllTasksToFinishWithCompletionHandler:(id)a3;
@end

@implementation CPLCloudKitOperationsTracker

- (void)_emitLogForCurrentTasks
{
  v3 = sub_100004B38();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4 && (_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100004B38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(CPLCloudKitOperationsTracker *)self _pendingTaskStatus];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@", &v7, 0xCu);
    }
  }
}

- (CPLCloudKitOperationsTracker)init
{
  v11.receiver = self;
  v11.super_class = CPLCloudKitOperationsTracker;
  v2 = [(CPLCloudKitOperationsTracker *)&v11 init];
  if (v2)
  {
    v3 = CPLCopyDefaultSerialQueueAttributes();
    v4 = dispatch_queue_create("com.apple.cpl.cloudkit.operations", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    tasks = v2->_tasks;
    v2->_tasks = v6;

    v8 = objc_alloc_init(CPLCloudKitOperationCounter);
    operationCounter = v2->_operationCounter;
    v2->_operationCounter = v8;
  }

  return v2;
}

- (id)_pendingTaskStatus
{
  if ([(NSMutableArray *)self->_tasks count])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = self->_tasks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v17 + 1) + 8 * i) trackingContext];
          v10 = [v9 statusPerOperationType];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1000558AC;
          v15[3] = &unk_100273EC0;
          v16 = v3;
          [v10 enumerateKeysAndObjectsUsingBlock:v15];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100055950;
    v13[3] = &unk_100274AD8;
    v11 = [[NSMutableString alloc] initWithFormat:@"Pending CloudKit operations:"];
    v14 = v11;
    [v3 enumerateKeysAndObjectsUsingBlock:v13];
  }

  else
  {
    v11 = @"No pending CloudKit operations";
  }

  return v11;
}

- (void)taskWillStart:(id)a3
{
  v5 = a3;
  v6 = +[NSDate date];
  [(CPLCloudKitOperationCounter *)self->_operationCounter beginTask:v5];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100055B2C;
  v13[3] = &unk_100271D68;
  v14 = v5;
  v15 = self;
  v16 = v6;
  v17 = a2;
  v8 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v19 = v8;
  v9 = queue;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

- (id)_bundleIdentifiersFromCKOperation:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableSet alloc] initWithCapacity:2];
  v5 = [v3 configuration];
  v6 = [v5 applicationBundleIdentifierOverrideForNetworkAttribution];

  if (v6)
  {
    [v4 addObject:v6];
  }

  v7 = [v3 configuration];
  v8 = [v7 applicationBundleIdentifierOverrideForContainerAccess];

  if (v8)
  {
    [v4 addObject:v8];
  }

  v9 = [v4 allObjects];

  return v9;
}

- (void)operationWillStart:(id)a3 forTask:(id)a4 withContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CPLCloudKitOperationsTracker *)self _bundleIdentifiersFromCKOperation:v10];
  [(CPLCloudKitOperationsTracker *)self operationWillStart:v10 forTask:v9 withContext:v8 bundleIdentifiers:v11];
}

- (void)operationWillStart:(id)a3 forTask:(id)a4 withContext:(id)a5 bundleIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 resolvedConfiguration];
  v16 = +[NSDate date];
  [v11 cpl_setTask:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(CPLCloudKitOperationContext);
  }

  [(CPLCloudKitOperationContext *)v13 setOperation:v11];
  [(CPLCloudKitOperationContext *)v13 setBundleIdentifiers:v14];
  [(CPLCloudKitOperationContext *)v13 setStartDate:v16];
  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100055F4C;
  v25[3] = &unk_100274B00;
  v26 = v12;
  v27 = v11;
  v28 = self;
  v29 = v14;
  v30 = v13;
  v31 = a2;
  v18 = v25;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v33 = v18;
  v19 = queue;
  v20 = v13;
  v21 = v14;
  v22 = v11;
  v23 = v12;
  v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v19, v24);
}

- (id)_contextForOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 cpl_task];
  if (!v6)
  {
    sub_10019D060(a2, self, v5);
  }

  v7 = v6;
  v8 = [v6 trackingContext];
  v9 = [v8 contextForOperation:v5];

  return v9;
}

- (void)operationDidProgressOneBatch:(id)a3
{
  v5 = a3;
  v6 = +[NSDate date];
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10005626C;
  v13[3] = &unk_100271D68;
  v13[4] = self;
  v14 = v5;
  v15 = v6;
  v16 = a2;
  v8 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v18 = v8;
  v9 = queue;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

- (BOOL)isOperationBlocked:(id)a3
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000563C0;
  v9[3] = &unk_100273628;
  v9[4] = self;
  v10 = v5;
  v11 = &v13;
  v12 = a2;
  v7 = v5;
  dispatch_sync(queue, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

- (void)operation:(id)a3 updateProgress:(double)a4
{
  v7 = a3;
  v8 = v7;
  v9 = 100.0;
  if (a4 <= 100.0)
  {
    v9 = a4;
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100056584;
  v15[3] = &unk_1002733A0;
  v15[4] = self;
  v16 = v7;
  v17 = a2;
  v18 = fmax(v9, 0.0);
  v11 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v20 = v11;
  v12 = queue;
  v13 = v8;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v14);
}

- (void)operation:(id)a3 updateContextWithBlock:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v7 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v11 = v7;
  v8 = queue;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v9);
}

- (void)operationDidFinish:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056768;
  block[3] = &unk_1002733C8;
  v10 = self;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, block);
}

- (void)operationHasBeenCancelled:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056A08;
  v11[3] = &unk_1002733C8;
  v11[4] = self;
  v12 = v5;
  v13 = a2;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)taskHasBeenCancelled:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056BAC;
  v11[3] = &unk_1002733C8;
  v13 = self;
  v14 = a2;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v16 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)taskDidFinish:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056D3C;
  v11[3] = &unk_1002733C8;
  v13 = self;
  v14 = a2;
  v12 = v5;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v16 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)cancelAllOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100057008;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)cancelBlockedTasksIncludingBackground:(BOOL)a3
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057188;
  v7[3] = &unk_100274B28;
  v7[4] = self;
  v8 = a3;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v10 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (id)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004430;
  v10 = sub_1000052FC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005742C;
  v5[3] = &unk_1002729E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)statusDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004430;
  v10 = sub_1000052FC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100057624;
  v5[3] = &unk_1002729E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)waitForAllTasksToFinishWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000578FC;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000029F0;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

@end