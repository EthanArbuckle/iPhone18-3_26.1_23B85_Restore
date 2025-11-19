@interface DDRWorker
- (DDRWorker)initWithQueue:(id)a3;
- (DDRWorkerDelegate)delegate;
- (void)didCompleteAllTasks;
- (void)progressDidUpdateWithPercentage:(double)a3;
- (void)resetDataWithRequest:(id)a3 completion:(id)a4;
@end

@implementation DDRWorker

- (DDRWorker)initWithQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DDRWorker;
  v5 = [(DDRWorker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DDRWorker *)v5 setWorkerQueue:v4];
  }

  return v6;
}

- (void)resetDataWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(DDRWorker *)self setCompletionBlock:a4];
  v7 = DDRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "entering data reset scheduler phase", buf, 2u);
  }

  v8 = [v6 mode];
  v9 = 0;
  v44 = v8;
  if (v8 > 3)
  {
    if ((v8 - 4) >= 3)
    {
      goto LABEL_22;
    }

    v12 = DDRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "data reset mode data partition reset", buf, 2u);
    }

    v13 = [[DDRSchedulerPreObliterate alloc] initWithRequest:v6];
  }

  else
  {
    switch(v8)
    {
      case 1:
        v14 = DDRLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "data reset mode scene understanding data reset", buf, 2u);
        }

        v11 = DDRSchedulerResetSceneUnderstandingData;
        break;
      case 2:
        v15 = DDRLogForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "data reset mode networksettings reset", buf, 2u);
        }

        v11 = DDRSchedulerResetNetworkSettings;
        break;
      case 3:
        v10 = DDRLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "data reset mode allsettings reset", buf, 2u);
        }

        v11 = DDRSchedulerResetAllSettings;
        break;
      default:
        goto LABEL_22;
    }

    v13 = objc_alloc_init(v11);
  }

  v9 = v13;
  [(DDRWorker *)self setResetScheduler:v13, v44];
  [(DDRSchedulerPreObliterate *)v9 configureTasks];
LABEL_22:
  v47 = v6;
  v16 = DDRLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "calling data reset in XPCService worker", buf, 2u);
  }

  v46 = self;

  v45 = v9;
  v17 = [(DDRSchedulerPreObliterate *)v9 scheduledTasks];
  v18 = dispatch_queue_create("com.apple.devicedatareset.taskqueue", 0);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    v23 = 0.0;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v53 + 1) + 8 * i);
        v26 = DDRLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v25 identifier];
          *buf = 138412290;
          v59 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Prereset with task: %@", buf, 0xCu);
        }

        [v25 configure];
        [v25 estimatedTimeOfCompletion];
        v29 = v28;
        v30 = DDRLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v25 identifier];
          *buf = 138412546;
          v59 = v31;
          v60 = 2048;
          v61 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Estimate completion time for reset task: %@ is %lf", buf, 0x16u);
        }

        v23 = v23 + v29;
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  v32 = -[DDRProgress initWithTotalDuration:totalTaskCount:progressTickInterval:]([DDRProgress alloc], "initWithTotalDuration:totalTaskCount:progressTickInterval:", [v19 count], v23, 0.05);
  [(DDRWorker *)v46 setProgress:v32];

  v33 = [(DDRWorker *)v46 progress];
  [v33 setDelegate:v46];

  v34 = [(DDRWorker *)v46 delegate];
  v35 = [(DDRWorker *)v46 resetScheduler];
  [v34 resetWithModeDidBegin:{objc_msgSend(v35, "mode")}];

  v36 = [(DDRWorker *)v46 resetScheduler];
  DDRDonateResetSignalStart([v36 mode]);

  v37 = DDRLogForCategory(0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v59 = v44;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Starting reset for mode: %ld", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v38 = v19;
  v39 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v50;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v49 + 1) + 8 * j);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000085B8;
        block[3] = &unk_100014640;
        block[4] = v43;
        block[5] = v46;
        dispatch_async(v18, block);
      }

      v40 = [v38 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v40);
  }
}

- (void)progressDidUpdateWithPercentage:(double)a3
{
  v5 = [(DDRWorker *)self workerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000087D4;
  v6[3] = &unk_1000147D8;
  *&v6[5] = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (void)didCompleteAllTasks
{
  v3 = [(DDRWorker *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000894C;
  block[3] = &unk_100014800;
  block[4] = self;
  dispatch_async(v3, block);
}

- (DDRWorkerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end