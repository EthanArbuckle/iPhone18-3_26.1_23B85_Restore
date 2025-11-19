@interface DMMigrationState
+ (BOOL)_shouldSuppressMigrationFailureAlert;
+ (id)sharedInstance;
- (BOOL)_showIgnoreTapToRadarAlertOption;
- (BOOL)startMigrationAndOrBlockIfNecessaryWithClientInvocation:(id)a3 buildVersion:(id)a4 migrationStarterBlock:(id)a5;
- (DMMigrationState)initWithMigrationSentinelManager:(id)a3;
- (NSDictionary)pluginResults;
- (NSString)migrationPhaseDescription;
- (void)_clearPluginResults;
- (void)_createRecursiveMutex;
- (void)_releaseMigrationFailureNotification;
- (void)_reportMigrationFailureIfApplicable;
- (void)_userDidRespondToMigrationFailureNotificationToFileRadar:(BOOL)a3;
- (void)blockUntilProgressHostIsReadyWithTimeoutTimeInterval:(double)a3;
- (void)dealloc;
- (void)persistIfNecessary;
- (void)pluginDidFinish:(id)a3 withSuccess:(BOOL)a4 duration:(double)a5 incident:(id)a6 migrationPhaseDescription:(id)a7;
- (void)pluginWillRun:(id)a3 migrationPhaseDescription:(id)a4;
- (void)progressHostIsReady;
- (void)progressWindowHadIncident:(id)a3;
- (void)reportTelemetryForPluginIdentifier:(id)a3 duration:(double)a4 incident:(id)a5 countOfAttempts:(unint64_t)a6 userDataDisposition:(id)a7 userCategory:(unsigned int)a8;
- (void)sendMigrationResultsToClientInvocationsInterestedInEarlyResultsForPluginIdentifier:(id)a3;
- (void)setMigrationPhaseDescription:(id)a3;
- (void)setNeedsMigrationFailureReport;
- (void)willRunPlugins:(id)a3;
- (void)willStartMigration;
@end

@implementation DMMigrationState

+ (id)sharedInstance
{
  if (qword_100030990 != -1)
  {
    sub_100012AAC();
  }

  v3 = qword_100030988;

  return v3;
}

- (DMMigrationState)initWithMigrationSentinelManager:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = DMMigrationState;
  v6 = [(DMMigrationState *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_migrationSentinelManager, a3);
    [(DMMigrationState *)v7 _createRecursiveMutex];
    v8 = objc_alloc_init(NSMutableDictionary);
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = v7->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    v7->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers = v8;

    v10 = [NSMutableArray arrayWithCapacity:1];
    waitingClientInvocations = v7->_waitingClientInvocations;
    v7->_waitingClientInvocations = v10;

    v12 = objc_alloc_init(NSMutableSet);
    completedPluginIdentifiers = v7->_completedPluginIdentifiers;
    v7->_completedPluginIdentifiers = v12;

    pluginResults = v7->_pluginResults;
    v7->_pluginResults = 0;

    v15 = objc_alloc_init(NSMutableArray);
    incidents = v7->_incidents;
    v7->_incidents = v15;

    v7->_needsMigrationFailureReport = 0;
    migrationFailureNotificationTransaction = v7->_migrationFailureNotificationTransaction;
    v7->_migrationFailureNotification = 0;
    v7->_migrationFailureNotificationTransaction = 0;

    v7->_fastPluginMigrationDuration = 0.0;
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("com.apple.datamigrator.migration", v18);
    migrationSerialQueue = v7->_migrationSerialQueue;
    v7->_migrationSerialQueue = v19;
  }

  return v7;
}

- (void)_createRecursiveMutex
{
  v3.__sig = 0;
  *v3.__opaque = 0;
  if (pthread_mutexattr_init(&v3) || pthread_mutexattr_settype(&v3, 2) || pthread_mutex_init(&self->_recursiveMutex, &v3))
  {
    abort();
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_recursiveMutex);
  v3.receiver = self;
  v3.super_class = DMMigrationState;
  [(DMMigrationState *)&v3 dealloc];
}

- (NSString)migrationPhaseDescription
{
  pthread_mutex_lock(&self->_recursiveMutex);
  v3 = [(NSString *)self->_migrationPhaseDescription copy];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  if (![(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers count])
  {
    goto LABEL_20;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers allKeys];
  v6 = [v5 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v25;
  do
  {
    v10 = 0;
    v11 = v4;
    do
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = [(NSMutableDictionary *)self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v10)];
      v13 = [NSString stringWithFormat:@" (Concurrent: %@)", v12];
      v4 = [(__CFString *)v11 stringByAppendingString:v13];

      v10 = v10 + 1;
      v11 = v4;
    }

    while (v8 != v10);
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v8);

  if (!v4)
  {
LABEL_11:
    v14 = +[DMEnvironment sharedInstance];
    v15 = [v14 buildVersion];

    v16 = +[DMEnvironment sharedInstance];
    v17 = [v16 lastMigrationResultsPref];

    v18 = [v17 dmlmr_buildVersion];
    obj = v15;
    if (([DMEnvironment isBuildVersion:v15 equalToBuildVersion:v18]& 1) != 0)
    {
      v19 = [v17 dmlmr_success];

      if (v19)
      {
        v20 = [v17 dmlmr_success];
        v21 = [v20 BOOLValue];

        if (v21)
        {
          v4 = @"kDMMigrationPhaseDescriptionDidFinishWithSuccess";
        }

        else
        {
          v4 = @"kDMMigrationPhaseDescriptionDidFinishWithFailure";
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    v4 = 0;
LABEL_18:

LABEL_19:
  }

LABEL_20:
  pthread_mutex_unlock(&self->_recursiveMutex);

  return v4;
}

- (NSDictionary)pluginResults
{
  v3 = +[DMEnvironment sharedInstance];
  v4 = [v3 implementMigrationPluginResults];

  if (v4)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    v5 = [(NSMutableDictionary *)self->_pluginResults copy];
    if (!v5)
    {
      v6 = +[DMEnvironment sharedInstance];
      v5 = [v6 migrationPluginResultsPref];
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMigrationPhaseDescription:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_recursiveMutex);
  v5 = [v4 copy];

  migrationPhaseDescription = self->_migrationPhaseDescription;
  self->_migrationPhaseDescription = v5;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (BOOL)startMigrationAndOrBlockIfNecessaryWithClientInvocation:(id)a3 buildVersion:(id)a4 migrationStarterBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(DMMigrationState *)self _lastPointBeforeEnteringPotentialStartOfMigrationCriticalSection];
  pthread_mutex_lock(&self->_recursiveMutex);
  v11 = +[DMEnvironment sharedInstance];
  v12 = [v11 lastBuildVersionPref];

  if ([v8 checkNecessity] && !-[DMMigrationState isMigrationNeededWithBuildVersion:lastBuildVersion:clientPID:](self, "isMigrationNeededWithBuildVersion:lastBuildVersion:clientPID:", v9, v12, objc_msgSend(v8, "pid")))
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100006980;
    v34[3] = &unk_100024858;
    v17 = &v35;
    v35 = v9;
    v36 = v8;
    v18 = objc_retainBlock(v34);
  }

  else
  {
    v13 = [v8 earlyResultsPluginIdentifier];
    if (!v13 || (v14 = v13, completedPluginIdentifiers = self->_completedPluginIdentifiers, [v8 earlyResultsPluginIdentifier], v16 = objc_claimAutoreleasedReturnValue(), LODWORD(completedPluginIdentifiers) = -[NSMutableSet containsObject:](completedPluginIdentifiers, "containsObject:", v16), v16, v14, !completedPluginIdentifiers))
    {
      v19 = v10;
      v20 = [(NSMutableArray *)self->_waitingClientInvocations count];
      v21 = v20 == 0;
      [(NSMutableArray *)self->_waitingClientInvocations addObject:v8];
      v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
      _DMLogFunc();

      if (v20)
      {
        v10 = v19;
      }

      else
      {
        migrationSerialQueue = self->_migrationSerialQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100006AEC;
        block[3] = &unk_100024880;
        v10 = v19;
        v31 = v19;
        v30 = v12;
        dispatch_async(migrationSerialQueue, block);
      }

      pthread_mutex_unlock(&self->_recursiveMutex);
      if ([v8 isProgressHost])
      {
        v23 = dispatch_time(0, 1000000000);
        v24 = dispatch_get_global_queue(25, 0);
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100006B60;
        v28[3] = &unk_100024768;
        v28[4] = self;
        dispatch_after(v23, v24, v28);
      }

      v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
      _DMLogFunc();

      dispatch_sync(self->_migrationSerialQueue, &stru_1000248A0);
      v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pid]);
      _DMLogFunc();
      goto LABEL_15;
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100006A2C;
    v32[3] = &unk_100024768;
    v17 = &v33;
    v33 = v8;
    v18 = objc_retainBlock(v32);
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
  if (!v18)
  {
    v21 = 0;
    goto LABEL_16;
  }

  (*(v18 + 16))(v18);
  v21 = 0;
LABEL_15:

LABEL_16:
  return v21;
}

- (void)willStartMigration
{
  pthread_mutex_lock(&self->_recursiveMutex);
  pluginResults = self->_pluginResults;
  self->_pluginResults = 0;

  [(NSMutableArray *)self->_incidents removeAllObjects];
  self->_fastPluginMigrationDuration = 0.0;
  blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
  self->_blockWaitingUntilProgressHostIsReady = 0;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)progressHostIsReady
{
  pthread_mutex_lock(&self->_recursiveMutex);
  _DMLogFunc();
  v3 = +[DMEnvironment sharedInstance];
  [v3 setProgressHostIsReady];

  blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
  if (blockWaitingUntilProgressHostIsReady)
  {
    blockWaitingUntilProgressHostIsReady[2]();
    v5 = self->_blockWaitingUntilProgressHostIsReady;
    self->_blockWaitingUntilProgressHostIsReady = 0;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)blockUntilProgressHostIsReadyWithTimeoutTimeInterval:(double)a3
{
  pthread_mutex_lock(&self->_recursiveMutex);
  v5 = +[DMEnvironment sharedInstance];
  v6 = [v5 isProgressHostReady];

  if (v6)
  {
    _DMLogFunc();

    pthread_mutex_unlock(&self->_recursiveMutex);
  }

  else
  {
    _DMLogFunc();
    v7 = dispatch_block_create(0, &stru_1000248C0);
    blockWaitingUntilProgressHostIsReady = self->_blockWaitingUntilProgressHostIsReady;
    self->_blockWaitingUntilProgressHostIsReady = v7;

    block = objc_retainBlock(self->_blockWaitingUntilProgressHostIsReady);
    pthread_mutex_unlock(&self->_recursiveMutex);
    if (block)
    {
      v9 = dispatch_time(0, (a3 * 1000000000.0));
      v10 = [NSNumber numberWithInt:dispatch_block_wait(block, v9) != 0];
      _DMLogFunc();
    }
  }
}

- (void)progressWindowHadIncident:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_recursiveMutex);
  if (v4)
  {
    [(NSMutableArray *)self->_incidents addObject:v4];
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)willRunPlugins:(id)a3
{
  v4 = a3;
  v5 = +[DMEnvironment sharedInstance];
  v6 = [v5 implementMigrationPluginResults];

  if (v6)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    pluginResults = self->_pluginResults;
    self->_pluginResults = v7;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if ([v14 existsAndShouldRun])
          {
            v24[0] = @"kDMMigrationPluginResultsBundlePathKey";
            v15 = [v14 rep];
            v16 = [v15 path];
            v24[1] = @"kDMMigrationPluginResultsPhaseDescription";
            v25[0] = v16;
            v25[1] = @"kDMMigrationPhaseDescriptionRunPending";
            v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

            v18 = self->_pluginResults;
            v19 = [v14 identifier];
            [(NSMutableDictionary *)v18 setObject:v17 forKey:v19];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }
}

- (void)sendMigrationResultsToClientInvocationsInterestedInEarlyResultsForPluginIdentifier:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_recursiveMutex);
  [(NSMutableSet *)self->_completedPluginIdentifiers addObject:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_waitingClientInvocations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 earlyResultsPluginIdentifier];
        if ([v11 isEqualToString:v4])
        {
          v12 = [v10 resultsHandler];

          if (v12)
          {
            v13 = [v10 resultsHandler];
            v13[2](v13, 3);

            [v10 setResultsHandler:0];
          }
        }

        else
        {
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)pluginWillRun:(id)a3 migrationPhaseDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_recursiveMutex);
  v8 = +[DMEnvironment sharedInstance];
  v9 = [v8 implementMigrationPluginResults];

  if (v9)
  {
    v31[0] = @"kDMMigrationPluginResultsBundlePathKey";
    v10 = [v6 rep];
    v11 = [v10 path];
    v32[0] = v11;
    v32[1] = &off_100027958;
    v31[1] = @"kDMMigrationPluginResultsDuration";
    v31[2] = @"kDMMigrationPluginResultsPhaseDescription";
    v32[2] = @"kDMMigrationPhaseDescriptionRunning";
    v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    pluginResults = self->_pluginResults;
    v14 = [v6 identifier];
    [(NSMutableDictionary *)pluginResults setObject:v12 forKey:v14];

    v15 = +[NSDate date];
    v16 = dispatch_get_global_queue(21, 0);
    v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);

    v18 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v17, v18, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100007780;
    handler[3] = &unk_1000248E8;
    handler[4] = self;
    v28 = v6;
    v29 = v15;
    v30 = v17;
    v19 = v17;
    v20 = v15;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_resume(v19);
  }

  v21 = [v6 isConcurrent];
  v22 = [v7 copy];
  v23 = v22;
  if (v21)
  {
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    v25 = [v6 identifier];
    [(NSMutableDictionary *)migrationPhaseDescriptionsByConcurrentPluginIdentifiers setObject:v23 forKeyedSubscript:v25];
  }

  else
  {
    migrationPhaseDescription = self->_migrationPhaseDescription;
    self->_migrationPhaseDescription = v22;
    v23 = migrationPhaseDescription;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)pluginDidFinish:(id)a3 withSuccess:(BOOL)a4 duration:(double)a5 incident:(id)a6 migrationPhaseDescription:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  pthread_mutex_lock(&self->_recursiveMutex);
  [v12 timeIntervalBeforeWatchdog];
  if (v15 > 0.0)
  {
    self->_fastPluginMigrationDuration = self->_fastPluginMigrationDuration + a5;
  }

  if (v13)
  {
    [(NSMutableArray *)self->_incidents addObject:v13];
  }

  v16 = +[DMEnvironment sharedInstance];
  v17 = [v16 implementMigrationPluginResults];

  if (v17)
  {
    v29[0] = @"kDMMigrationPluginResultsBundlePathKey";
    v18 = [v12 rep];
    v19 = [v18 path];
    v30[0] = v19;
    v29[1] = @"kDMMigrationPluginResultsDuration";
    v20 = [NSNumber numberWithDouble:a5];
    v21 = v20;
    v29[2] = @"kDMMigrationPluginResultsPhaseDescription";
    v22 = @"kDMMigrationPhaseDescriptionDidFinishWithFailure";
    if (v10)
    {
      v22 = @"kDMMigrationPhaseDescriptionDidFinishWithSuccess";
    }

    v30[1] = v20;
    v30[2] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

    pluginResults = self->_pluginResults;
    v25 = [v12 identifier];
    [(NSMutableDictionary *)pluginResults setObject:v23 forKey:v25];
  }

  if ([v12 isConcurrent])
  {
    migrationPhaseDescriptionsByConcurrentPluginIdentifiers = self->_migrationPhaseDescriptionsByConcurrentPluginIdentifiers;
    migrationPhaseDescription = [v12 identifier];
    [(NSMutableDictionary *)migrationPhaseDescriptionsByConcurrentPluginIdentifiers removeObjectForKey:migrationPhaseDescription];
  }

  else
  {
    v28 = [v14 copy];
    migrationPhaseDescription = self->_migrationPhaseDescription;
    self->_migrationPhaseDescription = v28;
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)persistIfNecessary
{
  v3 = +[DMEnvironment sharedInstance];
  v4 = [v3 implementMigrationPluginResults];

  if (v4)
  {
    pthread_mutex_lock(&self->_recursiveMutex);
    if (self->_pluginResults)
    {
      v5 = +[DMEnvironment sharedInstance];
      [v5 setMigrationPluginResultsPref:self->_pluginResults];
    }

    pthread_mutex_unlock(&self->_recursiveMutex);
  }
}

- (void)_clearPluginResults
{
  pthread_mutex_lock(&self->_recursiveMutex);
  pluginResults = self->_pluginResults;
  self->_pluginResults = 0;

  pthread_mutex_unlock(&self->_recursiveMutex);
}

+ (BOOL)_shouldSuppressMigrationFailureAlert
{
  if (qword_1000309A0 != -1)
  {
    sub_100012AC0();
  }

  return byte_100030998;
}

- (void)setNeedsMigrationFailureReport
{
  pthread_mutex_lock(&self->_recursiveMutex);
  if (+[DMMigrationState _shouldSuppressMigrationFailureAlert])
  {
    _DMLogFunc();
  }

  else
  {
    v3 = [NSNumber numberWithBool:self->_needsMigrationFailureReport];
    _DMLogFunc();

    if (!self->_needsMigrationFailureReport)
    {
      self->_needsMigrationFailureReport = 1;
      [(DMMigrationState *)self _reportMigrationFailureIfApplicable];
    }
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)_reportMigrationFailureIfApplicable
{
  pthread_mutex_lock(&self->_recursiveMutex);
  if (self->_needsMigrationFailureReport && !self->_migrationFailureNotification && ![(NSMutableArray *)self->_waitingClientInvocations count])
  {
    _DMLogFunc();
    v11[0] = kCFUserNotificationAlertHeaderKey;
    v11[1] = kCFUserNotificationDefaultButtonTitleKey;
    v12[0] = @"Data Migration Failed";
    v12[1] = @"Tap-to-Radar";
    v3 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v4 = [NSMutableDictionary dictionaryWithDictionary:v3];
    if ([(DMMigrationState *)self _showIgnoreTapToRadarAlertOption])
    {
      [v4 setObject:@"Ignore" forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
    }

    v5 = [v4 copy];
    self->_migrationFailureNotification = CFUserNotificationCreate(0, 0.0, 0, 0, v5);

    if (self->_migrationFailureNotification)
    {
      v6 = os_transaction_create();
      migrationFailureNotificationTransaction = self->_migrationFailureNotificationTransaction;
      self->_migrationFailureNotificationTransaction = v6;

      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, self->_migrationFailureNotification, sub_100007FF4, 0);
      if (RunLoopSource)
      {
        v9 = RunLoopSource;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v9, kCFRunLoopCommonModes);
        CFRelease(v9);
      }
    }
  }

  pthread_mutex_unlock(&self->_recursiveMutex);
}

- (void)_userDidRespondToMigrationFailureNotificationToFileRadar:(BOOL)a3
{
  v4 = self;
  [(DMMigrationState *)self _releaseMigrationFailureNotification];
  if (a3)
  {
    pthread_mutex_lock(&v4->_recursiveMutex);
    _DMLogFunc();
    v5 = +[DMEnvironment sharedInstance];
    v6 = [v5 buildVersion];

    v7 = [NSString stringWithFormat:@"Data Migration failed on %@", v6];
    if ([(NSMutableArray *)v4->_incidents count])
    {
      v38 = v6;
      v36 = v7;
      if ([(NSMutableArray *)v4->_incidents count]== 1)
      {
        v8 = [(NSMutableArray *)v4->_incidents firstObject];
        v9 = [v8 responsiblePluginRep];
        v10 = [v9 bundleIdentifier];

        if ([v10 length])
        {
          v11 = [NSString stringWithFormat:@" (%@)", v10];
        }

        else
        {
          v14 = [v8 details];
          v15 = [v14 length];

          if (v15)
          {
            v16 = [v8 details];
            v11 = [NSString stringWithFormat:@" (%@)", v16];
          }

          else
          {
            v11 = @" (single reason)";
          }
        }

        v37 = v11;
      }

      else
      {
        v37 = @" (multiple reasons)";
      }

      v17 = objc_alloc_init(NSDateFormatter);
      [v17 setDateStyle:1];
      [v17 setDateFormat:@"yyyy-MM-dd-HHmmss"];
      v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](v4->_incidents, "count")}];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v39 = v4;
      obj = v4->_incidents;
      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v42 + 1) + 8 * i);
            v24 = [v23 details];
            v25 = [v23 date];
            v26 = [v17 stringFromDate:v25];
            v27 = [NSString stringWithFormat:@"%@ (%@)", v24, v26];

            [v18 addObject:v27];
          }

          v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v20);
      }

      v28 = [v18 componentsJoinedByString:@"\n"];
      v7 = [NSString stringWithFormat:@"%@\nReasons:\n%@", v36, v28];

      v6 = v38;
      v4 = v39;
      v13 = v37;
    }

    else
    {
      v13 = &stru_1000259A0;
    }

    v29 = [NSString stringWithFormat:@"%@\n\nAdditional diagnostic info in stackshots with prefixes:\nstacks+com.apple.datamigrator\ncom.apple.migrationpluginwrapper (for plugin crashes, if any)", v7];

    v30 = objc_alloc_init(RadarDraft);
    v31 = [NSString stringWithFormat:@"Data Migration failed on %@%@", v6, v13];
    [v30 setTitle:v31];

    [v30 setProblemDescription:v29];
    [v30 setClassification:2];
    [v30 setReproducibility:5];
    v32 = [[RadarComponent alloc] initWithName:@"Data Migrator" version:@"iOS" identifier:396123];
    [v30 setComponent:v32];

    [v30 setIsUserInitiated:1];
    v33 = +[TapToRadarService shared];
    v41 = 0;
    [v33 createDraft:v30 forProcessNamed:@"Data Migrator" withDisplayReason:0 error:&v41];
    v34 = v41;

    _DMLogFunc();
    migrationFailureNotificationTransaction = v4->_migrationFailureNotificationTransaction;
    v4->_migrationFailureNotificationTransaction = 0;

    pthread_mutex_unlock(&v4->_recursiveMutex);
  }

  else
  {
    _DMLogFunc();
    v12 = v4->_migrationFailureNotificationTransaction;
    v4->_migrationFailureNotificationTransaction = 0;
  }
}

- (void)_releaseMigrationFailureNotification
{
  CFUserNotificationCancel(self->_migrationFailureNotification);
  CFRelease(self->_migrationFailureNotification);
  self->_migrationFailureNotification = 0;
  self->_needsMigrationFailureReport = 0;
}

- (BOOL)_showIgnoreTapToRadarAlertOption
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_incidents;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) kind] != 5)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)reportTelemetryForPluginIdentifier:(id)a3 duration:(double)a4 incident:(id)a5 countOfAttempts:(unint64_t)a6 userDataDisposition:(id)a7 userCategory:(unsigned int)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = [v16 objectForKeyedSubscript:@"previousBuildVersion"];
  v18 = [DMUserDataDispositionManager dispositionFlagsFromDispositionDict:v16];

  v19 = +[DMAnalytics sharedInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100008BC4;
  v23[3] = &unk_100024930;
  v23[4] = self;
  v24 = v14;
  v27 = a4;
  v28 = a6;
  v25 = v15;
  v26 = v17;
  v29 = v18;
  v30 = a8;
  v20 = v17;
  v21 = v15;
  v22 = v14;
  [v19 sendLazyEventWithName:@"com.apple.migration.pluginDidComplete" payloadBuilder:v23];
}

@end