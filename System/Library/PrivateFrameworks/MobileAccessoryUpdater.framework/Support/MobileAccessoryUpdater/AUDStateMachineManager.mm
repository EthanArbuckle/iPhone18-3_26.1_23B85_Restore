@interface AUDStateMachineManager
- (AUDStateMachineManager)initWithStorage:(id)a3;
- (BOOL)dispatchCommand:(id)a3;
- (BOOL)dispatchStateMachineCommand:(id)a3;
- (BOOL)dispatchStatelessCommand:(id)a3;
- (BOOL)isStateMachineBusyInExclusionGroup:(id)a3;
- (BOOL)isStateMachineForFilterAcceptingNewStreamEvents:(id)a3;
- (BOOL)notifyAccessoryAttachedWithCommand:(id)a3;
- (BOOL)setLastRemoteFindWithCommand:(id)a3;
- (id)getPluginWithName:(id)a3 forFilter:(id)a4 delegate:(id)a5 info:(id *)a6 options:(id)a7;
- (int)getCommandForState:(int)a3;
- (void)accessoryDisconnected:(id)a3 error:(id)a4;
- (void)addCommandToQueue:(id)a3 withFilter:(id)a4 stateMachine:(id)a5;
- (void)aquireCriticalSectionLock;
- (void)disableStreamEventsForStateMachine:(id)a3;
- (void)doneWithOptions:(id)a3 filter:(id)a4 skipToEnd:(BOOL)a5;
- (void)enableStreamEventsForStateMachine:(id)a3;
- (void)issueNotification:(id)a3 request:(id)a4;
- (void)kickOffQueuedCommand:(int)a3 successful:(BOOL)a4;
- (void)performNextStepWithOptions:(id)a3 filter:(id)a4;
- (void)queueUpEventForAccessory:(id)a3 stateMachine:(id)a4;
- (void)releaseCriticalSectionLock;
- (void)stepComplete:(int)a3 stateMachine:(id)a4 status:(BOOL)a5 error:(id)a6 info:(id)a7;
- (void)stepProgress:(int)a3 stateMachine:(id)a4 progress:(double)a5 overallProgress:(double)a6;
@end

@implementation AUDStateMachineManager

- (AUDStateMachineManager)initWithStorage:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = AUDStateMachineManager;
  v6 = [(AUDStateMachineManager *)&v24 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "legacy");
    log = v6->_log;
    v6->_log = v7;

    v9 = objc_opt_new();
    eventFlags = v6->_eventFlags;
    v6->_eventFlags = v9;

    objc_storeStrong(&v6->_legacyUpdaterStorage, a3);
    v11 = objc_alloc_init(AUDStateMachineClient);
    stateMachineClient = v6->_stateMachineClient;
    v6->_stateMachineClient = v11;

    [(AUDStateMachineClient *)v6->_stateMachineClient setDelegate:v6];
    v6->_isActive = 1;
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_BACKGROUND, 0);

    v15 = dispatch_queue_create("austatemachinemgr.workQueue", v14);
    workQueue = v6->_workQueue;
    v6->_workQueue = v15;

    v17 = dispatch_queue_create("austatemachinemgr.client.workQueue", 0);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v17;

    v19 = dispatch_semaphore_create(1);
    criticalSectionSemaphore = v6->_criticalSectionSemaphore;
    v6->_criticalSectionSemaphore = v19;

    v21 = objc_opt_new();
    queuedEvents = v6->_queuedEvents;
    v6->_queuedEvents = v21;
  }

  return v6;
}

- (BOOL)notifyAccessoryAttachedWithCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];

  if (v5)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    v7 = [v4 filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:v7];

    if (!v8)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100049744(log);
      }

      v15 = 0;
      goto LABEL_18;
    }

    v9 = [v4 filter];
    v10 = [v8 getMatchingFilterWithName:v9];

    v11 = [v10 exclusionGroup];

    if (v11)
    {
      v12 = [v10 exclusionGroup];
      v13 = [(AUDStateMachineManager *)self isStateMachineBusyInExclusionGroup:v12];

      if (!v13)
      {
        clientQueue = self->_clientQueue;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10000D6CC;
        v20[3] = &unk_100081438;
        v20[4] = self;
        v21 = v4;
        dispatch_async(clientQueue, v20);

        v15 = 1;
        goto LABEL_17;
      }

      v14 = self->_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100049614(v14);
      }
    }

    else
    {
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000496AC(v17);
      }
    }

    v15 = 0;
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000497DC();
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (BOOL)setLastRemoteFindWithCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];

  if (v5)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    v7 = [v4 filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:v7];

    if (v8)
    {
      v9 = [v4 commandOptions];

      if (v9)
      {
        v10 = [v4 commandOptions];
        v11 = [v10 objectForKey:@"LastRemoteFindDate"];

        v12 = v11 != 0;
        if (v11)
        {
          v13 = self->_legacyUpdaterStorage;
          v14 = [v4 filter];
          [(FudStorage *)v13 recordSuccessfulRemoteFindForPolicy:v8 filter:v14 revision:0 date:v11];
        }

        else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100049818();
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100049888();
      }
    }

    else
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100049744(log);
      }
    }

    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000497DC();
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (BOOL)dispatchStatelessCommand:(id)a3
{
  v4 = a3;
  if ([v4 commandType] == 100)
  {
    v5 = [(AUDStateMachineManager *)self notifyAccessoryAttachedWithCommand:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 commandType] == 117)
  {
    v5 = [(AUDStateMachineManager *)self setLastRemoteFindWithCommand:v4];
    goto LABEL_5;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000498F8();
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)dispatchStateMachineCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];

  if (v5)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    v7 = [v4 filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:v7];

    if (!v8)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100049E98(log);
      }

      v16 = 0;
      goto LABEL_89;
    }

    v9 = [v4 filter];
    v10 = [v8 getMatchingFilterWithName:v9];

    if (!v10)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100049E00(v18);
      }

      v16 = 0;
      goto LABEL_88;
    }

    v11 = self->_legacyUpdaterStorage;
    v12 = [v4 filter];
    v13 = [(FudStorage *)v11 getStateMachineForFilterName:v12];

    if (v13 && [v4 isConnectionEvent])
    {
      v14 = [(FudStateMachine *)v13 isActive];
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100049968(v14, v15, v13);
        if (v14)
        {
          goto LABEL_8;
        }
      }

      else if (v14)
      {
LABEL_8:
        [(AUDStateMachineManager *)self addCommandToQueue:v4 withFilter:v10 stateMachine:v13];
LABEL_86:
        v16 = 1;
        goto LABEL_87;
      }
    }

    if (![v4 isConnectionEvent])
    {
LABEL_34:
      if (v13)
      {
        v31 = self->_log;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Resuming state machine", buf, 2u);
        }

        [(FudStateMachine *)v13 setDelegate:self];
      }

      else
      {
        v33 = self->_legacyUpdaterStorage;
        v34 = [v8 pluginName];
        v35 = [(FudStorage *)v33 isAnyStateMachineActiveForPlugin:v34];

        v36 = self->_log;
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v35)
        {
          if (v37)
          {
            v38 = v36;
            v39 = [v8 pluginName];
            v40 = [v4 filter];
            *buf = 138543618;
            v67 = v39;
            v68 = 2114;
            v69 = v40;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Active FW update detected for service %{public}@, queue up %{public}@", buf, 0x16u);
          }

          [(AUDStateMachineManager *)self addCommandToQueue:v4 withFilter:v10 stateMachine:0];
          v13 = 0;
          goto LABEL_86;
        }

        if (v37)
        {
          *buf = 138543362;
          v67 = v4;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creating new state machine for command: %{public}@", buf, 0xCu);
        }

        v44 = [FudStateMachine alloc];
        v45 = [v8 pluginName];
        v46 = [v4 filter];
        v47 = [v4 commandOptions];
        v13 = [(FudStateMachine *)v44 initWithPluginName:v45 filterName:v46 delegate:self options:v47];

        if (!v13)
        {
          v64 = self->_log;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            sub_100049D68(v64);
          }

          v13 = 0;
          goto LABEL_29;
        }

        v48 = [v4 accessory];
        [(FudStateMachine *)v13 setAccessory:v48];

        v49 = self->_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = v49;
          v51 = [v4 accessory];
          *buf = 138543618;
          v67 = v13;
          v68 = 2114;
          v69 = v51;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Set acc for statemachine %{public}@ %{public}@", buf, 0x16u);
        }

        v52 = self->_legacyUpdaterStorage;
        v53 = [v8 pluginName];
        v54 = [v4 filter];
        LOBYTE(v52) = [(FudStorage *)v52 setStateMachine:v13 forPlugin:v53 forFilter:v54];

        if ((v52 & 1) == 0)
        {
          v55 = self->_log;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_100049A40(v55);
          }
        }
      }

      v32 = [v4 commandType];
      if (v32 <= 110)
      {
        if (v32 > 108)
        {
          if (v32 == 109)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049BA8();
            }

            v41 = [v4 commandOptions];
            v42 = v13;
            v43 = 4;
          }

          else
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049B74();
            }

            v41 = [v4 commandOptions];
            v42 = v13;
            v43 = 7;
          }
        }

        else
        {
          if (v32 == 103)
          {
LABEL_70:
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049CA4();
            }

            v41 = [v4 commandOptions];
            [(FudStateMachine *)v13 performNextStepWithOptions:v41];
            goto LABEL_85;
          }

          if (v32 != 108)
          {
LABEL_95:
            v63 = self->_log;
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              sub_100049CD8(v63);
            }

            goto LABEL_29;
          }

          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100049BDC();
          }

          v41 = [v4 commandOptions];
          v42 = v13;
          v43 = 2;
        }
      }

      else if (v32 <= 112)
      {
        if (v32 == 111)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100049B40();
          }

          v41 = [v4 commandOptions];
          v42 = v13;
          v43 = 8;
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100049B0C();
          }

          v41 = [v4 commandOptions];
          v42 = v13;
          v43 = 9;
        }
      }

      else
      {
        if (v32 != 113)
        {
          if (v32 == 118)
          {
            v60 = self->_log;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              sub_100049C10(self, v60);
            }

            v61 = [v4 commandOptions];
            [(FudStateMachine *)v13 doneWithOptions:v61];

            if (self->_isActive)
            {
              workQueue = self->_workQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10000E388;
              block[3] = &unk_100081488;
              block[4] = self;
              dispatch_group_async(qword_10009A9D8, workQueue, block);
            }

            goto LABEL_86;
          }

          if (v32 != 114)
          {
            goto LABEL_95;
          }

          goto LABEL_70;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_100049AD8();
        }

        v41 = [v4 commandOptions];
        v42 = v13;
        v43 = 10;
      }

      [(FudStateMachine *)v42 performStep:v43 withOptions:v41];
LABEL_85:

      goto LABEL_86;
    }

    v19 = [v4 filter];
    v20 = [v8 getMatchingFilterWithName:v19];

    v21 = self->_log;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [v4 filter];
        v24 = [v20 exclusionGroup];
        *buf = 136315650;
        v67 = "[AUDStateMachineManager dispatchStateMachineCommand:]";
        v68 = 2112;
        v69 = v23;
        v70 = 2112;
        v71 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s - filter name: %@ - exclusion group - %@", buf, 0x20u);
      }

      v25 = [v20 exclusionGroup];
      v26 = [(AUDStateMachineManager *)self isStateMachineBusyInExclusionGroup:v25];

      if ((v26 & 1) == 0)
      {
        v27 = self->_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Clearing state for new event stream", buf, 2u);
        }

        v28 = self->_legacyUpdaterStorage;
        v29 = [v8 pluginName];
        v30 = [v4 filter];
        [(FudStorage *)v28 setStateMachine:0 forPlugin:v29 forFilter:v30];

        v13 = 0;
        goto LABEL_33;
      }

      if ([v20 needsMultiUpdateCheck])
      {
        [(AUDStateMachineManager *)self addCommandToQueue:v4 withFilter:v20 stateMachine:v13];
LABEL_33:

        goto LABEL_34;
      }

      v56 = self->_log;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
        v58 = [v20 exclusionGroup];
        *buf = 138543362;
        v67 = v58;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "State machine in exclusion group (%{public}@) is busy, dropping stream event", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100049E00(v21);
    }

LABEL_29:
    v16 = 0;
LABEL_87:

LABEL_88:
LABEL_89:

    goto LABEL_90;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100049F30();
  }

  v16 = 0;
LABEL_90:

  return v16;
}

- (BOOL)dispatchCommand:(id)a3
{
  v4 = a3;
  v5 = v4;
  isActive = self->_isActive;
  if (isActive)
  {
    v7 = qword_10009A9D8;
    workQueue = self->_workQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000E604;
    v10[3] = &unk_100081438;
    v10[4] = self;
    v11 = v4;
    dispatch_group_async(v7, workQueue, v10);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100049FE4();
  }

  return isActive;
}

- (id)getPluginWithName:(id)a3 forFilter:(id)a4 delegate:(id)a5 info:(id *)a6 options:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12 && v13)
  {
    v16 = [FudUtilities getURLForServiceIdentifier:v12];
    if (v16)
    {
      v21 = 0;
      v17 = [FudUtilities copyPluginAtURL:v16 forFilter:v13 delegate:v14 info:a6 options:v15 bundleVersion:&v21];
      v18 = v21;
      if (v17)
      {
        [v17 setDelegate:v14];
        v19 = v17;
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004A090();
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004A0CC();
      }

      v17 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A13C();
    }

    v17 = 0;
  }

  return v17;
}

- (void)queueUpEventForAccessory:(id)a3 stateMachine:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ([v7 stateMachineFilterName], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E954;
    block[3] = &unk_1000814D8;
    v12 = v8;
    v13 = v6;
    v14 = self;
    dispatch_sync(workQueue, block);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A1C0();
  }
}

- (void)kickOffQueuedCommand:(int)a3 successful:(BOOL)a4
{
  if ((a3 == 1 || !a4) && [(NSMutableArray *)self->_queuedEvents count])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      queuedEvents = self->_queuedEvents;
      v7 = log;
      v8 = [(NSMutableArray *)queuedEvents firstObject];
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off queuedEvent=%{public}@", &v14, 0xCu);
    }

    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_queuedEvents;
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Current queuedEvents=%{public}@", &v14, 0xCu);
    }

    v11 = [(NSMutableArray *)self->_queuedEvents firstObject];
    [(AUDStateMachineManager *)self dispatchCommand:v11];

    [(NSMutableArray *)self->_queuedEvents removeObjectAtIndex:0];
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_queuedEvents;
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updated queuedEvents=%@", &v14, 0xCu);
    }
  }
}

- (void)stepComplete:(int)a3 stateMachine:(id)a4 status:(BOOL)a5 error:(id)a6 info:(id)a7
{
  v9 = a5;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = log;
    v17 = [v12 stateMachinePluginName];
    *buf = 138543874;
    v27 = v17;
    v28 = 1026;
    v29 = v9;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Step Complete for plugin:%{public}@ status:%{public}d info=%{public}@", buf, 0x1Cu);
  }

  if (self->_isActive)
  {
    v18 = [v12 stateMachineFilterName];

    if (v18)
    {
      workQueue = self->_workQueue;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000EE60;
      v20[3] = &unk_100081500;
      v24 = a3;
      v21 = v12;
      v22 = self;
      v25 = v9;
      v23 = v14;
      dispatch_sync(workQueue, v20);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A1FC();
    }
  }
}

- (void)stepProgress:(int)a3 stateMachine:(id)a4 progress:(double)a5 overallProgress:(double)a6
{
  v10 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    v13 = [v10 stateMachinePluginName];
    *buf = 138543362;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Step Progress for plugin:%{public}@", buf, 0xCu);
  }

  if (self->_isActive)
  {
    v14 = [v10 stateMachineFilterName];

    if (v14)
    {
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F500;
      block[3] = &unk_100081550;
      v17 = v10;
      v18 = self;
      v21 = a3;
      v19 = a5;
      v20 = a6;
      dispatch_sync(workQueue, block);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A1FC();
    }
  }
}

- (void)accessoryDisconnected:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stateMachineFilterName];

  if (v8)
  {
    if (self->_isActive)
    {
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F830;
      block[3] = &unk_1000814D8;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_sync(workQueue, block);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A358();
  }
}

- (void)addCommandToQueue:(id)a3 withFilter:(id)a4 stateMachine:(id)a5
{
  v38 = a3;
  v8 = a4;
  v9 = a5;
  LOBYTE(a5) = [v8 needsMultiUpdateCheck];
  log = self->_log;
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (a5)
  {
    if (v11)
    {
      v12 = log;
      v13 = [v8 exclusionGroup];
      *buf = 138543362;
      v44 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking exclusion group (%{public}@) for already queued commands", buf, 0xCu);
    }

    v35 = v8;
    v36 = self;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = self->_queuedEvents;
    v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = [v18 commandOptions];
          v20 = [v19 objectForKey:@"SerialNumber"];

          v21 = [v38 commandOptions];
          v22 = [v21 objectForKey:@"SerialNumber"];

          v23 = [v18 filter];
          v24 = [v38 filter];
          if ([v23 isEqualToString:v24])
          {
            if (!v20)
            {

LABEL_20:
              v26 = v36->_log;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                v28 = [v38 filter];
                *buf = 138543362;
                v44 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Dequeue duplicate connection event: %{public}@", buf, 0xCu);
              }

              [(NSMutableArray *)v36->_queuedEvents removeObject:v18];

              goto LABEL_23;
            }

            v25 = [v20 isEqualToString:v22];

            if (v25)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v8 = v35;
    self = v36;
  }

  else if (v11)
  {
    *buf = 138543362;
    v44 = v38;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Does not need multi-update queue up command:%{public}@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_queuedEvents addObject:v38];
  v29 = self->_log;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    queuedEvents = self->_queuedEvents;
    v31 = v29;
    v32 = [(NSMutableArray *)queuedEvents count];
    v33 = [v9 stateMachinePluginName];
    v34 = [v9 stateMachineFilterName];
    *buf = 134349570;
    v44 = v32;
    v45 = 2114;
    v46 = v33;
    v47 = 2114;
    v48 = v34;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Event queued up [%{public}lu] - [%{public}@ : %{public}@]", buf, 0x20u);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A394(&self->_queuedEvents);
  }
}

- (BOOL)isStateMachineBusyInExclusionGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FudStorage *)self->_legacyUpdaterStorage getFiltersInExclusionGroup:v4];
    if ([v5 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = v5;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v21;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v20 + 1) + 8 * i);
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v13 = log;
              v14 = [v11 filterName];
              *buf = 138543618;
              v25 = v14;
              v26 = 2114;
              v27 = v4;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ExclusionGroupFilter: %{public}@ (%{public}@)", buf, 0x16u);
            }

            v15 = [v11 filterName];
            v16 = [(AUDStateMachineManager *)self isStateMachineForFilterAcceptingNewStreamEvents:v15];

            if (!v16)
            {

              v17 = 1;
              goto LABEL_18;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v17 = 0;
LABEL_18:
      v5 = v19;
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10004A408();
      }

      v17 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A478();
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)isStateMachineForFilterAcceptingNewStreamEvents:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_eventFlags objectForKey:a3];

  return v3 == 0;
}

- (void)aquireCriticalSectionLock
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A4B4();
  }

  dispatch_semaphore_wait(self->_criticalSectionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A4E8();
  }
}

- (void)releaseCriticalSectionLock
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A51C();
  }

  dispatch_semaphore_signal(self->_criticalSectionSemaphore);
}

- (void)disableStreamEventsForStateMachine:(id)a3
{
  v4 = [a3 stateMachineFilterName];
  if (v4)
  {
    eventFlags = self->_eventFlags;
    v6 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)eventFlags setObject:v6 forKey:v4];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A550();
  }
}

- (void)enableStreamEventsForStateMachine:(id)a3
{
  v4 = [a3 stateMachineFilterName];
  if (v4)
  {
    [(NSMutableDictionary *)self->_eventFlags removeObjectForKey:v4];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A58C();
  }
}

- (int)getCommandForState:(int)a3
{
  v3 = a3 - 1;
  if (a3 - 1) < 9 && ((0x1CBu >> v3))
  {
    return dword_100060768[v3];
  }

  result = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10004A5C8();
    return 0;
  }

  return result;
}

- (void)issueNotification:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isActive)
  {
    v8 = [v6 stateMachineFilterName];

    log = self->_log;
    if (v8)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = "[AUDStateMachineManager issueNotification:request:]";
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Sending darwin notification for restarting pending", buf, 0xCu);
      }

      clientQueue = self->_clientQueue;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100010534;
      v11[3] = &unk_100081438;
      v11[4] = self;
      v12 = v7;
      dispatch_async(clientQueue, v11);
    }

    else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A63C();
    }
  }
}

- (void)doneWithOptions:(id)a3 filter:(id)a4 skipToEnd:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010618;
  v13[3] = &unk_1000815A0;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_async(workQueue, v13);
}

- (void)performNextStepWithOptions:(id)a3 filter:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010820;
  block[3] = &unk_1000814D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(workQueue, block);
}

@end