@interface AUDStateMachineManager
- (AUDStateMachineManager)initWithStorage:(id)storage;
- (BOOL)dispatchCommand:(id)command;
- (BOOL)dispatchStateMachineCommand:(id)command;
- (BOOL)dispatchStatelessCommand:(id)command;
- (BOOL)isStateMachineBusyInExclusionGroup:(id)group;
- (BOOL)isStateMachineForFilterAcceptingNewStreamEvents:(id)events;
- (BOOL)notifyAccessoryAttachedWithCommand:(id)command;
- (BOOL)setLastRemoteFindWithCommand:(id)command;
- (id)getPluginWithName:(id)name forFilter:(id)filter delegate:(id)delegate info:(id *)info options:(id)options;
- (int)getCommandForState:(int)state;
- (void)accessoryDisconnected:(id)disconnected error:(id)error;
- (void)addCommandToQueue:(id)queue withFilter:(id)filter stateMachine:(id)machine;
- (void)aquireCriticalSectionLock;
- (void)disableStreamEventsForStateMachine:(id)machine;
- (void)doneWithOptions:(id)options filter:(id)filter skipToEnd:(BOOL)end;
- (void)enableStreamEventsForStateMachine:(id)machine;
- (void)issueNotification:(id)notification request:(id)request;
- (void)kickOffQueuedCommand:(int)command successful:(BOOL)successful;
- (void)performNextStepWithOptions:(id)options filter:(id)filter;
- (void)queueUpEventForAccessory:(id)accessory stateMachine:(id)machine;
- (void)releaseCriticalSectionLock;
- (void)stepComplete:(int)complete stateMachine:(id)machine status:(BOOL)status error:(id)error info:(id)info;
- (void)stepProgress:(int)progress stateMachine:(id)machine progress:(double)a5 overallProgress:(double)overallProgress;
@end

@implementation AUDStateMachineManager

- (AUDStateMachineManager)initWithStorage:(id)storage
{
  storageCopy = storage;
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

    objc_storeStrong(&v6->_legacyUpdaterStorage, storage);
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

- (BOOL)notifyAccessoryAttachedWithCommand:(id)command
{
  commandCopy = command;
  filter = [commandCopy filter];

  if (filter)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    filter2 = [commandCopy filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:filter2];

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

    filter3 = [commandCopy filter];
    v10 = [v8 getMatchingFilterWithName:filter3];

    exclusionGroup = [v10 exclusionGroup];

    if (exclusionGroup)
    {
      exclusionGroup2 = [v10 exclusionGroup];
      v13 = [(AUDStateMachineManager *)self isStateMachineBusyInExclusionGroup:exclusionGroup2];

      if (!v13)
      {
        clientQueue = self->_clientQueue;
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10000D6CC;
        v20[3] = &unk_100081438;
        v20[4] = self;
        v21 = commandCopy;
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

- (BOOL)setLastRemoteFindWithCommand:(id)command
{
  commandCopy = command;
  filter = [commandCopy filter];

  if (filter)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    filter2 = [commandCopy filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:filter2];

    if (v8)
    {
      commandOptions = [commandCopy commandOptions];

      if (commandOptions)
      {
        commandOptions2 = [commandCopy commandOptions];
        v11 = [commandOptions2 objectForKey:@"LastRemoteFindDate"];

        v12 = v11 != 0;
        if (v11)
        {
          v13 = self->_legacyUpdaterStorage;
          filter3 = [commandCopy filter];
          [(FudStorage *)v13 recordSuccessfulRemoteFindForPolicy:v8 filter:filter3 revision:0 date:v11];
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

- (BOOL)dispatchStatelessCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy commandType] == 100)
  {
    v5 = [(AUDStateMachineManager *)self notifyAccessoryAttachedWithCommand:commandCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  if ([commandCopy commandType] == 117)
  {
    v5 = [(AUDStateMachineManager *)self setLastRemoteFindWithCommand:commandCopy];
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

- (BOOL)dispatchStateMachineCommand:(id)command
{
  commandCopy = command;
  filter = [commandCopy filter];

  if (filter)
  {
    legacyUpdaterStorage = self->_legacyUpdaterStorage;
    filter2 = [commandCopy filter];
    v8 = [(FudStorage *)legacyUpdaterStorage getPolicyForFilterName:filter2];

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

    filter3 = [commandCopy filter];
    v10 = [v8 getMatchingFilterWithName:filter3];

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
    filter4 = [commandCopy filter];
    v13 = [(FudStorage *)v11 getStateMachineForFilterName:filter4];

    if (v13 && [commandCopy isConnectionEvent])
    {
      isActive = [(FudStateMachine *)v13 isActive];
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100049968(isActive, v15, v13);
        if (isActive)
        {
          goto LABEL_8;
        }
      }

      else if (isActive)
      {
LABEL_8:
        [(AUDStateMachineManager *)self addCommandToQueue:commandCopy withFilter:v10 stateMachine:v13];
LABEL_86:
        v16 = 1;
        goto LABEL_87;
      }
    }

    if (![commandCopy isConnectionEvent])
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
        pluginName = [v8 pluginName];
        v35 = [(FudStorage *)v33 isAnyStateMachineActiveForPlugin:pluginName];

        v36 = self->_log;
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
        if (v35)
        {
          if (v37)
          {
            v38 = v36;
            pluginName2 = [v8 pluginName];
            filter5 = [commandCopy filter];
            *buf = 138543618;
            v67 = pluginName2;
            v68 = 2114;
            v69 = filter5;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Active FW update detected for service %{public}@, queue up %{public}@", buf, 0x16u);
          }

          [(AUDStateMachineManager *)self addCommandToQueue:commandCopy withFilter:v10 stateMachine:0];
          v13 = 0;
          goto LABEL_86;
        }

        if (v37)
        {
          *buf = 138543362;
          v67 = commandCopy;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creating new state machine for command: %{public}@", buf, 0xCu);
        }

        v44 = [FudStateMachine alloc];
        pluginName3 = [v8 pluginName];
        filter6 = [commandCopy filter];
        commandOptions = [commandCopy commandOptions];
        v13 = [(FudStateMachine *)v44 initWithPluginName:pluginName3 filterName:filter6 delegate:self options:commandOptions];

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

        accessory = [commandCopy accessory];
        [(FudStateMachine *)v13 setAccessory:accessory];

        v49 = self->_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = v49;
          accessory2 = [commandCopy accessory];
          *buf = 138543618;
          v67 = v13;
          v68 = 2114;
          v69 = accessory2;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "Set acc for statemachine %{public}@ %{public}@", buf, 0x16u);
        }

        v52 = self->_legacyUpdaterStorage;
        pluginName4 = [v8 pluginName];
        filter7 = [commandCopy filter];
        LOBYTE(v52) = [(FudStorage *)v52 setStateMachine:v13 forPlugin:pluginName4 forFilter:filter7];

        if ((v52 & 1) == 0)
        {
          v55 = self->_log;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_100049A40(v55);
          }
        }
      }

      commandType = [commandCopy commandType];
      if (commandType <= 110)
      {
        if (commandType > 108)
        {
          if (commandType == 109)
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049BA8();
            }

            commandOptions2 = [commandCopy commandOptions];
            v42 = v13;
            v43 = 4;
          }

          else
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049B74();
            }

            commandOptions2 = [commandCopy commandOptions];
            v42 = v13;
            v43 = 7;
          }
        }

        else
        {
          if (commandType == 103)
          {
LABEL_70:
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
            {
              sub_100049CA4();
            }

            commandOptions2 = [commandCopy commandOptions];
            [(FudStateMachine *)v13 performNextStepWithOptions:commandOptions2];
            goto LABEL_85;
          }

          if (commandType != 108)
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

          commandOptions2 = [commandCopy commandOptions];
          v42 = v13;
          v43 = 2;
        }
      }

      else if (commandType <= 112)
      {
        if (commandType == 111)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100049B40();
          }

          commandOptions2 = [commandCopy commandOptions];
          v42 = v13;
          v43 = 8;
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            sub_100049B0C();
          }

          commandOptions2 = [commandCopy commandOptions];
          v42 = v13;
          v43 = 9;
        }
      }

      else
      {
        if (commandType != 113)
        {
          if (commandType == 118)
          {
            v60 = self->_log;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              sub_100049C10(self, v60);
            }

            commandOptions3 = [commandCopy commandOptions];
            [(FudStateMachine *)v13 doneWithOptions:commandOptions3];

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

          if (commandType != 114)
          {
            goto LABEL_95;
          }

          goto LABEL_70;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          sub_100049AD8();
        }

        commandOptions2 = [commandCopy commandOptions];
        v42 = v13;
        v43 = 10;
      }

      [(FudStateMachine *)v42 performStep:v43 withOptions:commandOptions2];
LABEL_85:

      goto LABEL_86;
    }

    filter8 = [commandCopy filter];
    v20 = [v8 getMatchingFilterWithName:filter8];

    v21 = self->_log;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        filter9 = [commandCopy filter];
        exclusionGroup = [v20 exclusionGroup];
        *buf = 136315650;
        v67 = "[AUDStateMachineManager dispatchStateMachineCommand:]";
        v68 = 2112;
        v69 = filter9;
        v70 = 2112;
        v71 = exclusionGroup;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s - filter name: %@ - exclusion group - %@", buf, 0x20u);
      }

      exclusionGroup2 = [v20 exclusionGroup];
      v26 = [(AUDStateMachineManager *)self isStateMachineBusyInExclusionGroup:exclusionGroup2];

      if ((v26 & 1) == 0)
      {
        v27 = self->_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Clearing state for new event stream", buf, 2u);
        }

        v28 = self->_legacyUpdaterStorage;
        pluginName5 = [v8 pluginName];
        filter10 = [commandCopy filter];
        [(FudStorage *)v28 setStateMachine:0 forPlugin:pluginName5 forFilter:filter10];

        v13 = 0;
        goto LABEL_33;
      }

      if ([v20 needsMultiUpdateCheck])
      {
        [(AUDStateMachineManager *)self addCommandToQueue:commandCopy withFilter:v20 stateMachine:v13];
LABEL_33:

        goto LABEL_34;
      }

      v56 = self->_log;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
        exclusionGroup3 = [v20 exclusionGroup];
        *buf = 138543362;
        v67 = exclusionGroup3;
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

- (BOOL)dispatchCommand:(id)command
{
  commandCopy = command;
  v5 = commandCopy;
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
    v11 = commandCopy;
    dispatch_group_async(v7, workQueue, v10);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100049FE4();
  }

  return isActive;
}

- (id)getPluginWithName:(id)name forFilter:(id)filter delegate:(id)delegate info:(id *)info options:(id)options
{
  nameCopy = name;
  filterCopy = filter;
  delegateCopy = delegate;
  optionsCopy = options;
  if (nameCopy && filterCopy)
  {
    v16 = [FudUtilities getURLForServiceIdentifier:nameCopy];
    if (v16)
    {
      v21 = 0;
      v17 = [FudUtilities copyPluginAtURL:v16 forFilter:filterCopy delegate:delegateCopy info:info options:optionsCopy bundleVersion:&v21];
      v18 = v21;
      if (v17)
      {
        [v17 setDelegate:delegateCopy];
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

- (void)queueUpEventForAccessory:(id)accessory stateMachine:(id)machine
{
  accessoryCopy = accessory;
  machineCopy = machine;
  v8 = machineCopy;
  if (machineCopy && ([machineCopy stateMachineFilterName], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    workQueue = self->_workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E954;
    block[3] = &unk_1000814D8;
    v12 = v8;
    v13 = accessoryCopy;
    selfCopy = self;
    dispatch_sync(workQueue, block);
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A1C0();
  }
}

- (void)kickOffQueuedCommand:(int)command successful:(BOOL)successful
{
  if ((command == 1 || !successful) && [(NSMutableArray *)self->_queuedEvents count])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      queuedEvents = self->_queuedEvents;
      v7 = log;
      firstObject = [(NSMutableArray *)queuedEvents firstObject];
      v14 = 138543362;
      v15 = firstObject;
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

    firstObject2 = [(NSMutableArray *)self->_queuedEvents firstObject];
    [(AUDStateMachineManager *)self dispatchCommand:firstObject2];

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

- (void)stepComplete:(int)complete stateMachine:(id)machine status:(BOOL)status error:(id)error info:(id)info
{
  statusCopy = status;
  machineCopy = machine;
  errorCopy = error;
  infoCopy = info;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = log;
    stateMachinePluginName = [machineCopy stateMachinePluginName];
    *buf = 138543874;
    v27 = stateMachinePluginName;
    v28 = 1026;
    v29 = statusCopy;
    v30 = 2114;
    v31 = infoCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Step Complete for plugin:%{public}@ status:%{public}d info=%{public}@", buf, 0x1Cu);
  }

  if (self->_isActive)
  {
    stateMachineFilterName = [machineCopy stateMachineFilterName];

    if (stateMachineFilterName)
    {
      workQueue = self->_workQueue;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000EE60;
      v20[3] = &unk_100081500;
      completeCopy = complete;
      v21 = machineCopy;
      selfCopy = self;
      v25 = statusCopy;
      v23 = infoCopy;
      dispatch_sync(workQueue, v20);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A1FC();
    }
  }
}

- (void)stepProgress:(int)progress stateMachine:(id)machine progress:(double)a5 overallProgress:(double)overallProgress
{
  machineCopy = machine;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    stateMachinePluginName = [machineCopy stateMachinePluginName];
    *buf = 138543362;
    v23 = stateMachinePluginName;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Step Progress for plugin:%{public}@", buf, 0xCu);
  }

  if (self->_isActive)
  {
    stateMachineFilterName = [machineCopy stateMachineFilterName];

    if (stateMachineFilterName)
    {
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F500;
      block[3] = &unk_100081550;
      v17 = machineCopy;
      selfCopy = self;
      progressCopy = progress;
      v19 = a5;
      overallProgressCopy = overallProgress;
      dispatch_sync(workQueue, block);
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A1FC();
    }
  }
}

- (void)accessoryDisconnected:(id)disconnected error:(id)error
{
  disconnectedCopy = disconnected;
  errorCopy = error;
  stateMachineFilterName = [disconnectedCopy stateMachineFilterName];

  if (stateMachineFilterName)
  {
    if (self->_isActive)
    {
      workQueue = self->_workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F830;
      block[3] = &unk_1000814D8;
      block[4] = self;
      v11 = disconnectedCopy;
      v12 = errorCopy;
      dispatch_sync(workQueue, block);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A358();
  }
}

- (void)addCommandToQueue:(id)queue withFilter:(id)filter stateMachine:(id)machine
{
  queueCopy = queue;
  filterCopy = filter;
  machineCopy = machine;
  LOBYTE(machine) = [filterCopy needsMultiUpdateCheck];
  log = self->_log;
  v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (machine)
  {
    if (v11)
    {
      v12 = log;
      exclusionGroup = [filterCopy exclusionGroup];
      *buf = 138543362;
      v44 = exclusionGroup;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking exclusion group (%{public}@) for already queued commands", buf, 0xCu);
    }

    v35 = filterCopy;
    selfCopy = self;
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
          commandOptions = [v18 commandOptions];
          v20 = [commandOptions objectForKey:@"SerialNumber"];

          commandOptions2 = [queueCopy commandOptions];
          v22 = [commandOptions2 objectForKey:@"SerialNumber"];

          filter = [v18 filter];
          filter2 = [queueCopy filter];
          if ([filter isEqualToString:filter2])
          {
            if (!v20)
            {

LABEL_20:
              v26 = selfCopy->_log;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = v26;
                filter3 = [queueCopy filter];
                *buf = 138543362;
                v44 = filter3;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Dequeue duplicate connection event: %{public}@", buf, 0xCu);
              }

              [(NSMutableArray *)selfCopy->_queuedEvents removeObject:v18];

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

    filterCopy = v35;
    self = selfCopy;
  }

  else if (v11)
  {
    *buf = 138543362;
    v44 = queueCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Does not need multi-update queue up command:%{public}@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_queuedEvents addObject:queueCopy];
  v29 = self->_log;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    queuedEvents = self->_queuedEvents;
    v31 = v29;
    v32 = [(NSMutableArray *)queuedEvents count];
    stateMachinePluginName = [machineCopy stateMachinePluginName];
    stateMachineFilterName = [machineCopy stateMachineFilterName];
    *buf = 134349570;
    v44 = v32;
    v45 = 2114;
    v46 = stateMachinePluginName;
    v47 = 2114;
    v48 = stateMachineFilterName;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Event queued up [%{public}lu] - [%{public}@ : %{public}@]", buf, 0x20u);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004A394(&self->_queuedEvents);
  }
}

- (BOOL)isStateMachineBusyInExclusionGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = [(FudStorage *)self->_legacyUpdaterStorage getFiltersInExclusionGroup:groupCopy];
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
              filterName = [v11 filterName];
              *buf = 138543618;
              v25 = filterName;
              v26 = 2114;
              v27 = groupCopy;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ExclusionGroupFilter: %{public}@ (%{public}@)", buf, 0x16u);
            }

            filterName2 = [v11 filterName];
            v16 = [(AUDStateMachineManager *)self isStateMachineForFilterAcceptingNewStreamEvents:filterName2];

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

- (BOOL)isStateMachineForFilterAcceptingNewStreamEvents:(id)events
{
  v3 = [(NSMutableDictionary *)self->_eventFlags objectForKey:events];

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

- (void)disableStreamEventsForStateMachine:(id)machine
{
  stateMachineFilterName = [machine stateMachineFilterName];
  if (stateMachineFilterName)
  {
    eventFlags = self->_eventFlags;
    v6 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)eventFlags setObject:v6 forKey:stateMachineFilterName];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A550();
  }
}

- (void)enableStreamEventsForStateMachine:(id)machine
{
  stateMachineFilterName = [machine stateMachineFilterName];
  if (stateMachineFilterName)
  {
    [(NSMutableDictionary *)self->_eventFlags removeObjectForKey:stateMachineFilterName];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A58C();
  }
}

- (int)getCommandForState:(int)state
{
  v3 = state - 1;
  if (state - 1) < 9 && ((0x1CBu >> v3))
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

- (void)issueNotification:(id)notification request:(id)request
{
  notificationCopy = notification;
  requestCopy = request;
  if (self->_isActive)
  {
    stateMachineFilterName = [notificationCopy stateMachineFilterName];

    log = self->_log;
    if (stateMachineFilterName)
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
      v12 = requestCopy;
      dispatch_async(clientQueue, v11);
    }

    else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A63C();
    }
  }
}

- (void)doneWithOptions:(id)options filter:(id)filter skipToEnd:(BOOL)end
{
  optionsCopy = options;
  filterCopy = filter;
  workQueue = self->_workQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100010618;
  v13[3] = &unk_1000815A0;
  v13[4] = self;
  v14 = filterCopy;
  v15 = optionsCopy;
  endCopy = end;
  v11 = optionsCopy;
  v12 = filterCopy;
  dispatch_async(workQueue, v13);
}

- (void)performNextStepWithOptions:(id)options filter:(id)filter
{
  optionsCopy = options;
  filterCopy = filter;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010820;
  block[3] = &unk_1000814D8;
  block[4] = self;
  v12 = filterCopy;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = filterCopy;
  dispatch_async(workQueue, block);
}

@end