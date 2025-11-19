@interface FudStateMachine
+ (id)stepName:(int)a3;
+ (void)initialize;
- (BOOL)conformsToAllowedValuesForKey:(id)a3 value:(id)a4;
- (BOOL)isActive;
- (BOOL)performStep:(int)a3 withOptions:(id)a4;
- (BOOL)showPersonalizationRequiredDialogAndGetResponse;
- (FudStateMachine)initWithCoder:(id)a3;
- (FudStateMachine)initWithPluginName:(id)a3 filterName:(id)a4 delegate:(id)a5 options:(id)a6;
- (id)createBeginningOfUpdateDictForEvent:(id)a3 info:(id)a4;
- (id)createEndOfUpdateDictForEvent:(id)a3 info:(id)a4;
- (id)getMatchingFilter;
- (id)loadPlugin;
- (int)nextStep:(id *)a3;
- (int)performNextStepWithOptions:(id)a3;
- (void)accessoryDisconnected:(id)a3;
- (void)clearException;
- (void)dealloc;
- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didFind:(BOOL)a3 info:(id)a4 updateAvailable:(BOOL)a5 needsDownload:(BOOL)a6 error:(id)a7;
- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5;
- (void)didRunStateWithInfo:(id)a3;
- (void)doneWithOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)issueNotification:(id)a3;
- (void)personalizationDone:(id)a3 response:(id)a4 error:(id)a5;
- (void)personalizationRequest:(id)a3;
- (void)progress:(double)a3;
- (void)reportAnalytics:(id)a3 info:(id)a4;
- (void)runState;
- (void)runStateDoApply;
- (void)runStateDoBootstrap;
- (void)runStateDoCheck;
- (void)runStateDoDownload;
- (void)runStateDoFinish;
- (void)runStateDoPrepare;
- (void)runStateEnd;
- (void)runStateQueryNeedsBootstrap;
- (void)runStateQueryNeedsRemoteCheck;
- (void)runStateStart;
- (void)setException:(id)a3;
@end

@implementation FudStateMachine

+ (void)initialize
{
  qword_1000992D8 = "runStateStart";
  qword_1000992F8 = "runStateEnd";
  qword_100099318 = "runStateQueryNeedsBootstrap";
  qword_100099338 = "runStateDoBootstrap";
  qword_100099358 = "runStateQueryNeedsRemoteCheck";
  qword_100099378 = "runStateDoCheck";
  qword_100099398 = "runStateDoCheck";
  qword_1000993B8 = "runStateDoDownload";
  qword_1000993D8 = "runStateDoPrepare";
  qword_1000993F8 = "runStateDoApply";
  qword_100099418 = "runStateDoFinish";
  qword_100099438 = "runStateDoFinish";
}

+ (id)stepName:(int)a3
{
  if (a3 > 0xA)
  {
    return @"Invalid step: out of range";
  }

  else
  {
    return [NSString stringWithCString:(&off_100081970)[a3] encoding:4];
  }
}

- (FudStateMachine)initWithPluginName:(id)a3 filterName:(id)a4 delegate:(id)a5 options:(id)a6
{
  FudLog();
  v20.receiver = self;
  v20.super_class = FudStateMachine;
  v11 = [(FudStateMachine *)&v20 init];
  v12 = v11;
  if (a3 && a4)
  {
    if (v11)
    {
      v11[161] = 0;
      *(v11 + 164) = 0xFFFFFFFF00000002;
      *(v11 + 1) = a3;
      v12->stateMachineFilterName = a4;
      v12->stateMachineRevision = 0;
      v12->plugin = 0;
      v12->pluginInfo = 0;
      v13 = a6;
      v12->pluginOptions = 0;
      v12->defaultOptions = v13;
      v12->remoteCheck = 0;
      v12->pluginForcedSilentUpdate = 0;
      v12->exception = 0;
      v12->pluginProgressWeights = 0;
      v12->hasSleepAssertion = 0;
      if (qword_1000997E8 != -1)
      {
        sub_10004C8D4();
      }

      dispatch_semaphore_wait(qword_1000997F8, 0xFFFFFFFFFFFFFFFFLL);
      v14 = [qword_1000997F0 objectForKey:v12->stateMachinePluginName];
      v12->workQueue = v14;
      if (!v14)
      {
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
        v17 = dispatch_queue_create("com.apple.fud.statemachine", v16);
        v12->workQueue = v17;
        [qword_1000997F0 setObject:v17 forKey:v12->stateMachinePluginName];
      }

      dispatch_semaphore_signal(qword_1000997F8);
      v12->validCallback = 0;
      v12->personalizer = 0;
      v12->accessory = 0;
      v12->needsDeviceList = 0;
      v12->accessoryModelNumber = [NSString stringWithString:v12->stateMachineFilterName];
      v12->existingFWVersionOnAcc = [NSString stringWithString:@"Unknown"];
      v12->newFWVersionAvailable = [NSString stringWithString:@"Unknown"];
      v12->transportType = [NSString stringWithString:@"Unknown"];
      v12->resumePercent = [NSNumber numberWithUnsignedInteger:0];
      v12->resumeCount = [NSNumber numberWithUnsignedInteger:0];
      [(FudStateMachine *)v12 setDelegate:a5];
    }
  }

  else
  {
    FudLog();
    v18 = v12;
    return 0;
  }

  return v12;
}

- (void)dealloc
{
  FudLog();
  stateMachinePluginName = self->stateMachinePluginName;
  stateMachineFilterName = self->stateMachineFilterName;
  FudLog();
  [(FudStateMachine *)self clearException:stateMachinePluginName];
  plugin = self->plugin;
  if (plugin)
  {
    [(FudPlugin *)plugin setDelegate:0];
  }

  accessory = self->accessory;
  if (accessory)
  {
  }

  personalizer = self->personalizer;
  if (personalizer)
  {
  }

  v6 = self->stateMachinePluginName;
  if (v6)
  {
  }

  v7 = self->stateMachineFilterName;
  if (v7)
  {
  }

  stateMachineRevision = self->stateMachineRevision;
  if (stateMachineRevision)
  {
  }

  pluginProgressWeights = self->pluginProgressWeights;
  if (pluginProgressWeights)
  {
  }

  pluginInfo = self->pluginInfo;
  if (pluginInfo)
  {
  }

  pluginOptions = self->pluginOptions;
  if (pluginOptions)
  {
  }

  defaultOptions = self->defaultOptions;
  if (defaultOptions)
  {
  }

  accessoryModelNumber = self->accessoryModelNumber;
  if (accessoryModelNumber)
  {
  }

  existingFWVersionOnAcc = self->existingFWVersionOnAcc;
  if (existingFWVersionOnAcc)
  {
  }

  newFWVersionAvailable = self->newFWVersionAvailable;
  if (newFWVersionAvailable)
  {
  }

  transportType = self->transportType;
  if (transportType)
  {
  }

  resumePercent = self->resumePercent;
  if (resumePercent)
  {
  }

  resumeCount = self->resumeCount;
  if (resumeCount)
  {
  }

  v21.receiver = self;
  v21.super_class = FudStateMachine;
  [(FudStateMachine *)&v21 dealloc];
}

- (int)performNextStepWithOptions:(id)a3
{
  v11 = "[FudStateMachine performNextStepWithOptions:]";
  FudLog();
  objc_sync_enter(self);
  if (self->busy)
  {
    FudLog();
    objc_sync_exit(self);
    return -1;
  }

  state = self->state;
  defaultOptions = self->defaultOptions;
  if (!a3)
  {
    if (!defaultOptions)
    {
      v8 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (defaultOptions)
  {
LABEL_7:
    v7 = [(NSDictionary *)defaultOptions mutableCopy];
    goto LABEL_8;
  }

  v7 = objc_alloc_init(NSMutableDictionary);
LABEL_8:
  v8 = v7;
  [v7 addEntriesFromDictionary:{a3, v11}];
LABEL_9:
  self->busy = 1;
  [(FudStateMachine *)self setPluginOptions:v8, v11];

  objc_sync_exit(self);
  if (self->exception)
  {
    FudLog();
  }

  workQueue = self->workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CDD4;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_group_async(qword_10009A9D8, workQueue, block);
  FudLog();
  return state;
}

- (void)doneWithOptions:(id)a3
{
  FudLog();
  workQueue = self->workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CE94;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_group_async(qword_10009A9D8, workQueue, block);
  FudLog();
}

- (void)clearException
{
  FudLog();

  [(FudStateMachine *)self setException:0];
}

- (BOOL)performStep:(int)a3 withOptions:(id)a4
{
  FudLog();
  if (a3 >= 0xC)
  {
    goto LABEL_2;
  }

  state = self->state;
  if (a3 == 1)
  {
    v9 = 1;
    if (state == 1)
    {
      v9 = 0;
    }

    else
    {
      self->state = 1;
    }

    state = 1;
  }

  else
  {
    v9 = 0;
  }

  if (state != a3 && LODWORD((&off_1000992C0)[4 * state + 2]) != a3)
  {
    [FudStateMachine stepName:LODWORD((&off_1000992C0)[4 * a3 + 2]), "[FudStateMachine performStep:withOptions:]"];
    [FudStateMachine stepName:LODWORD((&off_1000992C0)[4 * self->state + 2])];
LABEL_2:
    FudLog();
    return 0;
  }

  if ([(FudStateMachine *)self performNextStepWithOptions:a4, "[FudStateMachine performStep:withOptions:]"]== -1)
  {
    return 0;
  }

  FudLog();
  if (v9)
  {
    workQueue = self->workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D104;
    block[3] = &unk_100080FC8;
    block[4] = self;
    dispatch_group_async(qword_10009A9D8, workQueue, block);
  }

  return 1;
}

- (int)nextStep:(id *)a3
{
  FudLog();
  objc_sync_enter(self);
  if (self->busy)
  {
    v10 = sub_10001D234(self, 8u, @"%s: state machine is busy", v5, v6, v7, v8, v9, "[FudStateMachine nextStep:]");
    if (a3)
    {
      *a3 = v10;
    }

    else if (v10)
    {
    }

    v11 = -1;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    v11 = (&off_1000992C0)[4 * self->state + 2];
  }

  objc_sync_exit(self);
  return v11;
}

- (void)setException:(id)a3
{
  exception = self->exception;
  if (exception)
  {

    self->exception = 0;
  }

  if (a3)
  {
    if ([a3 userInfo])
    {
      if ([objc_msgSend(a3 "userInfo")] && objc_msgSend(objc_msgSend(a3, "userInfo"), "objectForKey:", @"DeviceClassName"))
      {
        v6 = a3;
LABEL_17:
        self->exception = v6;
        return;
      }

      [a3 userInfo];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [a3 userInfo];
      v10 = v9;
      if (v7 == v8)
      {
LABEL_12:
        if (![(NSMutableDictionary *)v10 objectForKey:@"PluginName"])
        {
          [(NSMutableDictionary *)v10 setObject:self->stateMachinePluginName forKey:@"PluginName"];
        }

        if (![(NSMutableDictionary *)v10 objectForKey:@"DeviceClassName"])
        {
          [(NSMutableDictionary *)v10 setObject:self->stateMachineFilterName forKey:@"DeviceClassName"];
        }

        v6 = [[NSError alloc] initWithDomain:objc_msgSend(a3 code:"domain") userInfo:{objc_msgSend(a3, "code"), v10}];
        goto LABEL_17;
      }

      v11 = [(NSMutableDictionary *)v9 mutableCopy];
    }

    else
    {
      v11 = [NSMutableDictionary dictionaryWithCapacity:0];
    }

    v10 = v11;
    goto LABEL_12;
  }
}

- (BOOL)isActive
{
  nextState = self->nextState;
  stateMachineFilterName = self->stateMachineFilterName;
  state = self->state;
  FudLog();
  v3 = self->state;
  v4 = (v3 - 2) < 9;
  if (!v3)
  {
    v4 |= self->needsDeviceList;
  }

  v5 = (v3 == 2) & v4;
  if (self->nextState == -1)
  {
    v4 = v5;
  }

  return v4 & 1;
}

- (id)loadPlugin
{
  FudLog();
  result = self->plugin;
  if (!result)
  {
    stateMachineDelegate = self->stateMachineDelegate;
    if (stateMachineDelegate)
    {
      self->plugin = [(FudStateMachineDelegate *)stateMachineDelegate getPluginWithName:self->stateMachinePluginName forFilter:self->stateMachineFilterName delegate:self info:&self->pluginInfo options:self->pluginOptions, "[FudStateMachine loadPlugin]"];
      pluginInfo = self->pluginInfo;
      if (pluginInfo)
      {
        v11 = pluginInfo;
        v12 = self->pluginInfo;
        ProgressWeightsFromPluginInfo = getProgressWeightsFromPluginInfo();
        self->pluginProgressWeights = ProgressWeightsFromPluginInfo;
        if (ProgressWeightsFromPluginInfo)
        {
          v14 = ProgressWeightsFromPluginInfo;
        }

        if ([(NSDictionary *)self->pluginInfo objectForKey:@"AccessoryIdentifier"])
        {
          accessoryModelNumber = self->accessoryModelNumber;
          if (accessoryModelNumber)
          {

            self->accessoryModelNumber = 0;
          }

          self->accessoryModelNumber = [-[NSDictionary objectForKey:](self->pluginInfo objectForKey:{@"AccessoryIdentifier", "copy"}];
        }
      }

      pluginProgressWeights = self->pluginProgressWeights;
      FudLog();
    }

    else
    {
      [(FudStateMachine *)self setException:sub_10001D234(self, 1u, @"%s: unable to load plugin. no state machine delegate set!", v3, v4, v5, v6, v7, "[FudStateMachine loadPlugin]")];
    }

    result = self->plugin;
    if (!result)
    {
      [(FudStateMachine *)self setException:sub_10001D234(self, 3u, @"%s: failed to get plugin from delegate", v16, v17, v18, v19, v20, "[FudStateMachine loadPlugin]")];
      return self->plugin;
    }
  }

  return result;
}

- (void)runState
{
  FudLog();
  state = self->state;
  if (state >= 0xC)
  {
    v20 = self->state;
    v9 = sub_10001D234(self, 9u, @"%s: invalid state: %d", v3, v4, v5, v6, v7, "[FudStateMachine runState]");
LABEL_8:
    [(FudStateMachine *)self setException:v9];
    [(FudStateMachine *)self didRunStateWithInfo:0];
    goto LABEL_11;
  }

  v10 = (&off_1000992C0)[4 * state + 3];
  v11 = objc_opt_respondsToSelector();
  v17 = self->state;
  if ((v11 & 1) == 0)
  {
    v21 = (&off_1000992C0)[4 * v17];
    v9 = sub_10001D234(self, 0xAu, @"%s: invalid selector for state %s", v12, v13, v14, v15, v16, "[FudStateMachine runState]");
    goto LABEL_8;
  }

  self->nextState = v17;
  if (v17 == LODWORD((&off_1000992C0)[4 * v17 + 2]))
  {
    [(FudStateMachine *)self clearException];
    stateMachineDelegate = self->stateMachineDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(FudStateMachineDelegate *)self->stateMachineDelegate stepWillBegin:self->state stateMachine:self];
    }

    else
    {
      FudLog();
    }
  }

  v19 = self;
  dispatch_group_enter(qword_10009A9D8);
  v22 = (&off_1000992C0)[4 * self->state];
  FudLog();
  [(FudStateMachine *)self performSelector:(&off_1000992C0)[4 * self->state + 3], "[FudStateMachine runState]", v22];
LABEL_11:
  FudLog();
}

- (void)didRunStateWithInfo:(id)a3
{
  state = self->state;
  v17 = "[FudStateMachine didRunStateWithInfo:]";
  FudLog();
  if ((self->state - 5) <= 1)
  {
    plugin = self->plugin;
    if (objc_opt_respondsToSelector())
    {
      pluginForcedSilentUpdate = [(FudPlugin *)self->plugin shouldUpdateBeSilent:0, "[FudStateMachine didRunStateWithInfo:]"];
      self->pluginForcedSilentUpdate = pluginForcedSilentUpdate;
    }

    else
    {
      pluginForcedSilentUpdate = self->pluginForcedSilentUpdate;
    }

    v17 = "[FudStateMachine didRunStateWithInfo:]";
    v18 = pluginForcedSilentUpdate;
    FudLog();
  }

  nextState = self->nextState;
  if (nextState == -1)
  {
    nextState = self->state;
  }

  else
  {
    self->state = nextState;
  }

  self->busy = 0;
  v9 = &(&off_1000992C0)[4 * state];
  if (*(v9 + 4) != LODWORD((&off_1000992C0)[4 * nextState + 2]) || nextState != 11 && self->exception || (v10 = 0, state == 11) && nextState == 8)
  {
    v19 = [FudStateMachine stepName:"[FudStateMachine didRunStateWithInfo:]", v18];
    FudLog();
    [(FudStateMachineDelegate *)self->stateMachineDelegate stepComplete:*(v9 + 4) stateMachine:self status:self->exception == 0 error:"[FudStateMachine didRunStateWithInfo:]" info:v19];
    v10 = 1;
  }

  if (a3)
  {
    ProgressWeightsFromPluginInfo = getProgressWeightsFromPluginInfo();
    if (ProgressWeightsFromPluginInfo)
    {
      v12 = ProgressWeightsFromPluginInfo;

      self->pluginProgressWeights = v12;
    }

    v13 = [a3 objectForKey:{@"DeviceClassRevision", v17}];
    if (v13)
    {
      v14 = v13;

      self->stateMachineRevision = v14;
    }
  }

  dispatch_group_leave(qword_10009A9D8);

  v15 = self->state;
  v16 = *v9;
  if (state == v15)
  {
    FudLog();
  }

  else
  {
    v20 = *v9;
    v21 = (&off_1000992C0)[4 * v15];
    FudLog();
    if (!v10 || self->state == 1)
    {
      [(FudStateMachine *)self performNextStepWithOptions:self->pluginOptions, "[FudStateMachine didRunStateWithInfo:]", v20, v21];
    }
  }

  FudLog();
}

- (id)getMatchingFilter
{
  v3 = [(FudStateMachineDelegate *)self->stateMachineDelegate getStorage];
  if (v3)
  {
    v9 = [v3 getPolicyForFilterName:self->stateMachineFilterName];
    if (v9)
    {
      result = [v9 getMatchingFilterWithName:self->stateMachineFilterName];
      if (result)
      {
        return result;
      }

      stateMachineFilterName = self->stateMachineFilterName;
      v21 = sub_10001D234(self, 5u, @"%s: failed to get filter for %@ from policy", v16, v17, v18, v19, v20, "[FudStateMachine getMatchingFilter]");
    }

    else
    {
      v23 = self->stateMachineFilterName;
      v21 = sub_10001D234(self, 4u, @"%s: failed to get policy for %@ from storage", v10, v11, v12, v13, v14, "[FudStateMachine getMatchingFilter]");
    }
  }

  else
  {
    v21 = sub_10001D234(self, 2u, @"%s: failed to get storage from delegate", v4, v5, v6, v7, v8, "[FudStateMachine getMatchingFilter]");
  }

  [(FudStateMachine *)self setException:v21];
  return 0;
}

- (void)runStateStart
{
  FudLog();
  self->nextState = (&off_1000992C0)[4 * self->state + 1];

  [(FudStateMachine *)self didRunStateWithInfo:0];
}

- (void)runStateEnd
{
  FudLog();
  FudLog();

  [(FudStateMachine *)self didRunStateWithInfo:0];
}

- (void)runStateDoBootstrap
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didBootstrap:info:error:";
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;

    [(FudPlugin *)plugin bootstrapWithOptions:pluginOptions];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (void)didBootstrap:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v7 = a3;
  FudLog();
  objc_sync_enter(self);
  validCallback = self->validCallback;
  if (validCallback)
  {
    v10 = self->validCallback;
  }

  if (validCallback == "didBootstrap:info:error:")
  {
    self->validCallback = 0;
    objc_sync_exit(self);
    if ([(NSString *)self->stateMachineFilterName containsString:@"AppleSTDP2700Bootstrap", "[FudStateMachine didBootstrap:info:error:]"]|| !v7)
    {
      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.failure" info:0 value:1];
      +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", self->stateMachineFilterName, @"error", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"bootstrap.%@.%ld", [a5 domain], objc_msgSend(a5, "code")), 1);
      if ([(FudStateMachine *)self getMatchingFilter])
      {
        sub_10004C8FC(self, a5, a4, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      self->nextState = (&off_1000992C0)[4 * self->state + 1];
      if (a5)
      {
        FudLog();
      }
    }

    workQueue = self->workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001DEE8;
    block[3] = &unk_100081788;
    block[4] = self;
    block[5] = a4;
    dispatch_group_async(qword_10009A9D8, workQueue, block);
    FudLog();
  }

  else
  {
    FudLog();

    objc_sync_exit(self);
  }
}

- (void)runStateQueryNeedsRemoteCheck
{
  FudLog();
  v3 = [(FudStateMachineDelegate *)self->stateMachineDelegate getStorage];
  if (!v3)
  {
    v18 = sub_10001D234(self, 2u, @"%s: failed to get storage from delegate", v4, v5, v6, v7, v8, "[FudStateMachine runStateQueryNeedsRemoteCheck]");
LABEL_10:
    [(FudStateMachine *)self setException:v18];
    goto LABEL_14;
  }

  v9 = v3;
  v10 = [v3 getPolicyForPlugin:self->stateMachinePluginName];
  if (!v10)
  {
    v18 = sub_10001D234(self, 4u, @"%s: failed to get policy from storage", v11, v12, v13, v14, v15, "[FudStateMachine runStateQueryNeedsRemoteCheck]");
    goto LABEL_10;
  }

  self->remoteCheck = 0;
  self->nextState = *(&off_1000992C0 + 8 * self->state + 3);
  if ([v9 policyAllowsRemoteFindNow:v10 filter:self->stateMachineFilterName revision:self->stateMachineRevision])
  {
    flags = 0;
    address = xmmword_1000607D0;
    v16 = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
    if (v16)
    {
      v17 = v16;
      if (SCNetworkReachabilityGetFlags(v16, &flags) && (flags & 2) != 0)
      {
        FudLog();
        CFRelease(v17);
        self->remoteCheck = 1;
        self->nextState = (&off_1000992C0)[4 * self->state + 1];
        goto LABEL_14;
      }

      FudLog();
      CFRelease(v17);
    }

    else
    {
      FudLog();
    }

    FudLog();
  }

LABEL_14:
  [(FudStateMachine *)self didRunStateWithInfo:0];
}

- (void)runStateDoCheck
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didFind:info:updateAvailable:needsDownload:error:";
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;
    remoteCheck = self->remoteCheck;

    [(FudPlugin *)plugin findFirmwareWithOptions:pluginOptions remote:remoteCheck];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (void)didFind:(BOOL)a3 info:(id)a4 updateAvailable:(BOOL)a5 needsDownload:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v35 = "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]";
  FudLog();
  objc_sync_enter(self);
  validCallback = self->validCallback;
  if (validCallback)
  {
    v14 = self->validCallback;
  }

  if (validCallback == "didFind:info:updateAvailable:needsDownload:error:")
  {
    self->validCallback = 0;
    objc_sync_exit(self);
    if (a7)
    {
      [(FudStateMachine *)self setException:a7, "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]"];
      if (!v11)
      {
        goto LABEL_27;
      }
    }

    else if (!v11)
    {
      [(FudStateMachine *)self setException:sub_10001D234(self, 7u, @"%s: Unspecified error from plugin", v15, v16, v17, v18, v19, "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]")];
LABEL_27:
      v36 = "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]";
      exception = self->exception;
      FudLog();
      self->nextState = *(&off_1000992C0 + 8 * self->state + 3);
      if (a7)
      {
        if ([objc_msgSend(a7 domain] && objc_msgSend(a7, "code") == 1)
        {
          v37 = "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]";
          v39 = a7;
          FudLog();
          v32 = @"com.apple.fud.updateInterrupted";
        }

        else
        {
          v32 = @"com.apple.fud.updateFailed";
        }

        v33 = [NSString stringWithString:v32, v37, v39];
        v36 = v33;
        exception = [(FudStateMachine *)self createEndOfUpdateDictForEvent:v33 info:a4];
        FudLog();
        AnalyticsSendEvent();
        if (v33)
        {
        }
      }

      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.failure" info:0 value:1, v36, exception];
      +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", self->stateMachineFilterName, @"error", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"find.%@.%ld", [a7 domain], objc_msgSend(a7, "code")), 1);
LABEL_38:
      workQueue = self->workQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E718;
      block[3] = &unk_100081788;
      block[4] = self;
      block[5] = a4;
      dispatch_group_async(qword_10009A9D8, workQueue, block);
      FudLog();
      return;
    }

    if (v9)
    {
      if (a4)
      {
        if ([a4 objectForKeyedSubscript:@"existingFWVersionOnAccessory"])
        {
          existingFWVersionOnAcc = self->existingFWVersionOnAcc;
          if (existingFWVersionOnAcc)
          {

            self->existingFWVersionOnAcc = 0;
          }

          self->existingFWVersionOnAcc = [objc_msgSend(a4 objectForKeyedSubscript:{@"existingFWVersionOnAccessory", v35), "copy"}];
        }

        if ([a4 objectForKeyedSubscript:{@"newFWVersion", v35}])
        {
          newFWVersionAvailable = self->newFWVersionAvailable;
          if (newFWVersionAvailable)
          {

            self->newFWVersionAvailable = 0;
          }

          self->newFWVersionAvailable = [objc_msgSend(a4 objectForKeyedSubscript:{@"newFWVersion", "copy"}];
        }
      }

      stateMachinePluginName = self->stateMachinePluginName;
      v41[3] = @"newFWVersion";
      v42 = stateMachinePluginName;
      v41[0] = @"pluginName";
      v41[1] = @"modelName";
      v43 = *&self->accessoryModelNumber;
      v41[2] = @"existingFWVersionOnAccessory";
      v44 = self->newFWVersionAvailable;
      v23 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:&v42 forKeys:v41 count:4, v35]];
      if (v8)
      {
        v24 = &(&off_1000992C0)[4 * self->state + 1];
        v25 = @"mobileAsset";
      }

      else
      {
        FudLog();
        v25 = @"fileSystem";
        v24 = &dword_1000993A8;
      }

      self->nextState = *v24;
      [(NSMutableDictionary *)v23 setObject:v25 forKey:@"sourceOfFirmware"];
      FudLog();
      AnalyticsSendEvent();
    }

    else
    {
      self->nextState = *(&off_1000992C0 + 8 * self->state + 3);
      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.current" info:0 value:1];
      if (self->remoteCheck)
      {
        v26 = [(FudStateMachineDelegate *)self->stateMachineDelegate getStorage];
        if (v26)
        {
          [v26 recordSuccessfulRemoteFindForPolicy:objc_msgSend(v26 filter:"getPolicyForPlugin:" revision:self->stateMachinePluginName) date:{self->stateMachineFilterName, self->stateMachineRevision, 0}];
        }

        else
        {
          [(FudStateMachine *)self setException:sub_10001D234(self, 2u, @"%s: failed to get storage from delegate", v27, v28, v29, v30, v31, "[FudStateMachine didFind:info:updateAvailable:needsDownload:error:]")];
        }
      }

      else
      {
        FudLog();
      }
    }

    goto LABEL_38;
  }

  FudLog();

  objc_sync_exit(self);
}

- (void)runStateDoDownload
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didDownload:info:error:";
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;

    [(FudPlugin *)plugin downloadFirmwareWithOptions:pluginOptions];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (void)didDownload:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v7 = a3;
  FudLog();
  objc_sync_enter(self);
  validCallback = self->validCallback;
  if (validCallback)
  {
    v10 = self->validCallback;
  }

  if (validCallback == "didDownload:info:error:")
  {
    self->validCallback = 0;
    objc_sync_exit(self);
    if (v7)
    {
      v16 = [(FudStateMachineDelegate *)self->stateMachineDelegate getStorage];
      if (v16 && (v17 = v16, (v18 = [v16 getPolicyForPlugin:self->stateMachinePluginName]) != 0))
      {
        [v17 recordSuccessfulRemoteFindForPolicy:v18 filter:self->stateMachineFilterName revision:self->stateMachineRevision date:0];
      }

      else
      {
        FudLog();
      }

      self->nextState = (&off_1000992C0)[4 * self->state + 1];
      if (a5)
      {
        FudLog();
      }
    }

    else
    {
      self->nextState = *(&off_1000992C0 + 8 * self->state + 3);
      if (a5)
      {
        [(FudStateMachine *)self setException:a5, "[FudStateMachine didDownload:info:error:]"];
        if ([objc_msgSend(a5 "domain")] && objc_msgSend(a5, "code") == 1)
        {
          v22 = "[FudStateMachine didDownload:info:error:]";
          v24 = a5;
          FudLog();
          v19 = @"com.apple.fud.updateInterrupted";
        }

        else
        {
          v19 = @"com.apple.fud.updateFailed";
        }

        v20 = [NSString stringWithString:v19, v22, v24];
        v23 = v20;
        v24 = [(FudStateMachine *)self createEndOfUpdateDictForEvent:v20 info:a4];
        FudLog();
        AnalyticsSendEvent();
        if (v20)
        {
        }
      }

      else
      {
        [(FudStateMachine *)self setException:sub_10001D234(self, 7u, @"%s: unspecified error from plugin", v11, v12, v13, v14, v15, "[FudStateMachine didDownload:info:error:]")];
      }

      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.failure" info:0 value:1, v23, v24];
      +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", self->stateMachineFilterName, @"error", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"download.%@.%ld", [a5 domain], objc_msgSend(a5, "code")), 1);
    }

    workQueue = self->workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001EB50;
    block[3] = &unk_100081788;
    block[4] = self;
    block[5] = a4;
    dispatch_group_async(qword_10009A9D8, workQueue, block);
    FudLog();
  }

  else
  {
    FudLog();

    objc_sync_exit(self);
  }
}

- (void)personalizationDone:(id)a3 response:(id)a4 error:(id)a5
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    if (!a5)
    {
      plugin = self->plugin;
      v10 = a3;
      v11 = a4;
      v12 = 0;
      goto LABEL_7;
    }

    v13 = "[FudStateMachine personalizationDone:response:error:]";
    v14 = a5;
    FudLog();
    plugin = self->plugin;
LABEL_5:
    v10 = a3;
    v11 = 0;
    v12 = a5;
LABEL_7:
    [(FudPlugin *)plugin personalizationResponse:v10 response:v11 status:v12, v13, v14];
    goto LABEL_8;
  }

  v13 = "[FudStateMachine personalizationDone:response:error:]";
  FudLog();
  plugin = self->plugin;
  if (plugin)
  {
    goto LABEL_5;
  }

LABEL_8:
  FudLog();
}

- (BOOL)showPersonalizationRequiredDialogAndGetResponse
{
  FudLog();
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  v3 = [(FudStateMachine *)self getMatchingFilter];
  v4 = [v3 filterReadableName] ? +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"New Firmware available for %@. This requires Personalization, you will be prompted for your credentials.", objc_msgSend(v3, "filterReadableName")) : +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"New Firmware available for %@. This requires Personalization, you will be prompted for your credentials.", @"your accessory");
  v5 = v4;
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:@"*** INTERNAL ONLY ***" forKey:kCFUserNotificationAlertHeaderKey];
  [v6 setObject:v5 forKey:kCFUserNotificationAlertMessageKey];
  [v6 setObject:@"OK" forKey:kCFUserNotificationDefaultButtonTitleKey];
  [v6 setObject:@"Cancel" forKey:kCFUserNotificationAlternateButtonTitleKey];
  error = 0;
  v7 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x21uLL, &error, v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  responseFlags = 0;
  CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags);
  v9 = responseFlags == 0;
  CFRelease(v8);
  return v9;
}

- (void)personalizationRequest:(id)a3
{
  FudLog();
  personalizer = self->personalizer;
  if (!personalizer)
  {
    personalizer = [[FudPersonalizer alloc] initWithDelegate:self, "[FudStateMachine personalizationRequest:]"];
    self->personalizer = personalizer;
  }

  [(FudPersonalizer *)personalizer doPersonalization:a3];
}

- (void)runStateDoPrepare
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didPrepare:info:error:";
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;

    [(FudPlugin *)plugin prepareFirmwareWithOptions:pluginOptions];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (void)didPrepare:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v7 = a3;
  FudLog();
  objc_sync_enter(self);
  validCallback = self->validCallback;
  if (validCallback)
  {
    v10 = self->validCallback;
  }

  if (validCallback == "didPrepare:info:error:")
  {
    self->validCallback = 0;
    objc_sync_exit(self);
    v16 = &(&off_1000992C0)[4 * self->state];
    if (v7)
    {
      self->nextState = *(v16 + 2);
      if (a5)
      {
        FudLog();
      }
    }

    else
    {
      self->nextState = *(v16 + 3);
      if (a5)
      {
        [(FudStateMachine *)self setException:a5, "[FudStateMachine didPrepare:info:error:]"];
        if ([objc_msgSend(a5 "domain")] && objc_msgSend(a5, "code") == 1)
        {
          v20 = "[FudStateMachine didPrepare:info:error:]";
          v22 = a5;
          FudLog();
          v17 = @"com.apple.fud.updateInterrupted";
        }

        else
        {
          v17 = @"com.apple.fud.updateFailed";
        }

        v18 = [NSString stringWithString:v17, v20, v22];
        v21 = v18;
        v22 = [(FudStateMachine *)self createEndOfUpdateDictForEvent:v18 info:a4];
        FudLog();
        AnalyticsSendEvent();
        if (v18)
        {
        }
      }

      else
      {
        [(FudStateMachine *)self setException:sub_10001D234(self, 7u, @"%s: unspecified error from plugin", v11, v12, v13, v14, v15, "[FudStateMachine didPrepare:info:error:]")];
      }

      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.failure" info:0 value:1, v21, v22];
      +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", self->stateMachineFilterName, @"error", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"prepare.%@.%ld", [a5 domain], objc_msgSend(a5, "code")), 1);
    }

    workQueue = self->workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F1F0;
    block[3] = &unk_100081788;
    block[4] = self;
    block[5] = a4;
    dispatch_group_async(qword_10009A9D8, workQueue, block);
    FudLog();
  }

  else
  {
    FudLog();

    objc_sync_exit(self);
  }
}

- (void)runStateDoApply
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didApply:info:error:";
    v3 = [(FudStateMachine *)self getMatchingFilter];
    if ([v3 noPowerAssertion])
    {
      [v3 filterName];
    }

    else if (self->hasSleepAssertion)
    {
      sleepAssertionId = self->sleepAssertionId;
    }

    else if (!IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.MobileAccessoryUpdater.SleepAssertionID", &self->sleepAssertionId))
    {
      self->hasSleepAssertion = 1;
      v7 = self->sleepAssertionId;
    }

    FudLog();
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;

    [(FudPlugin *)plugin applyFirmwareWithOptions:pluginOptions];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (id)createEndOfUpdateDictForEvent:(id)a3 info:(id)a4
{
  FudLog();
  if (!a3 || ([a3 isEqualToString:{@"com.apple.fud.updateCompleted", "-[FudStateMachine createEndOfUpdateDictForEvent:info:]"}] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"com.apple.fud.updateInterrupted") & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"com.apple.fud.updateFailed") & 1) == 0)
  {
    FudLog();
    return 0;
  }

  stateMachinePluginName = self->stateMachinePluginName;
  v33[0] = @"pluginName";
  v33[1] = @"modelName";
  accessoryModelNumber = self->accessoryModelNumber;
  v34[0] = stateMachinePluginName;
  v34[1] = accessoryModelNumber;
  resumePercent = self->resumePercent;
  v34[2] = self->transportType;
  v33[2] = @"transportType";
  v33[3] = @"existingFWVersionOnAccessory";
  v35 = *&self->existingFWVersionOnAcc;
  v33[4] = @"newFWVersion";
  v33[5] = @"resumedFromPercent";
  v36 = resumePercent;
  v10 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6]];
  v32 = a3;
  if (a4)
  {
    if ([a4 objectForKeyedSubscript:@"cumulativeProgressPercent"])
    {
      v11 = [a4 objectForKeyedSubscript:@"cumulativeProgressPercent"];
    }

    else
    {
      v11 = &off_1000881C0;
    }

    if ([a4 objectForKeyedSubscript:@"currentSessionTimeTaken"])
    {
      v19 = [a4 objectForKeyedSubscript:@"currentSessionTimeTaken"];
    }

    else
    {
      v19 = &off_1000881C0;
    }

    if ([a4 objectForKeyedSubscript:@"cumulativeTimeTaken"])
    {
      v20 = [a4 objectForKeyedSubscript:@"cumulativeTimeTaken"];
    }

    else
    {
      v20 = &off_1000881C0;
    }

    if ([a4 objectForKeyedSubscript:@"cumulativeCalendarTimeTaken"])
    {
      v21 = [a4 objectForKeyedSubscript:@"cumulativeCalendarTimeTaken"];
    }

    else
    {
      v21 = &off_1000881C0;
    }

    if ([a4 objectForKeyedSubscript:@"cumulativeCloakingTime"])
    {
      v22 = [a4 objectForKeyedSubscript:@"cumulativeCloakingTime"];
    }

    else
    {
      v22 = &off_1000881C0;
    }

    v16 = v22;
    if ([a4 objectForKeyedSubscript:@"averageBitRate"])
    {
      v17 = [a4 objectForKeyedSubscript:@"averageBitRate"];
    }

    else
    {
      v17 = &off_1000881C0;
    }

    v15 = v21;
    v14 = v20;
    if ([a4 objectForKeyedSubscript:@"totalSessionCount"])
    {
      v31 = [a4 objectForKeyedSubscript:@"totalSessionCount"];
    }

    else
    {
      v31 = &off_1000881C0;
    }

    v13 = v19;
    if ([a4 objectForKeyedSubscript:@"error"])
    {
      v12 = [a4 objectForKeyedSubscript:@"error"];
    }

    else
    {
      v12 = @"Unknown";
    }

    if ([a4 objectForKeyedSubscript:@"interruptedState"])
    {
      v30 = [a4 objectForKeyedSubscript:@"interruptedState"];
    }

    else
    {
      v30 = @"Unknown";
    }

    if ([a4 objectForKeyedSubscript:@"failureState"])
    {
      v29 = [a4 objectForKeyedSubscript:@"failureState"];
    }

    else
    {
      v29 = @"Unknown";
    }

    v18 = v31;
  }

  else
  {
    v12 = @"Unknown";
    v11 = &off_1000881C0;
    v13 = &off_1000881C0;
    v14 = &off_1000881C0;
    v15 = &off_1000881C0;
    v16 = &off_1000881C0;
    v17 = &off_1000881C0;
    v18 = &off_1000881C0;
    v29 = @"Unknown";
    v30 = @"Unknown";
  }

  [(NSMutableDictionary *)v10 setObject:v11 forKey:@"cumulativeProgressPercent"];
  [(NSMutableDictionary *)v10 setObject:v13 forKey:@"currentSessionTimeTaken"];
  [(NSMutableDictionary *)v10 setObject:v14 forKey:@"cumulativeTimeTaken"];
  [(NSMutableDictionary *)v10 setObject:v15 forKey:@"cumulativeCalendarTimeTaken"];
  [(NSMutableDictionary *)v10 setObject:v16 forKey:@"cumulativeCloakingTime"];
  [(NSMutableDictionary *)v10 setObject:v17 forKey:@"averageBitRate"];
  [(NSMutableDictionary *)v10 setObject:v18 forKey:@"totalSessionCount"];
  [(NSMutableDictionary *)v10 setObject:v12 forKey:@"error"];
  if (([v32 isEqualToString:@"com.apple.fud.updateCompleted"] & 1) == 0)
  {
    v23 = [v32 isEqualToString:@"com.apple.fud.updateInterrupted"];
    if (a4 && v23)
    {
      v24 = @"interruptedState";
      v25 = v10;
      v26 = v30;
LABEL_45:
      [(NSMutableDictionary *)v25 setObject:v26 forKey:v24];
      return v10;
    }

    v27 = [v32 isEqualToString:@"com.apple.fud.updateFailed"];
    if (a4 && v27)
    {
      v24 = @"failureState";
      v25 = v10;
      v26 = v29;
      goto LABEL_45;
    }
  }

  return v10;
}

- (id)createBeginningOfUpdateDictForEvent:(id)a3 info:(id)a4
{
  FudLog();
  if (a4)
  {
    if (a3 && (([a3 isEqualToString:{@"com.apple.fud.updateStarted", "-[FudStateMachine createBeginningOfUpdateDictForEvent:info:]"}] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.fud.updateResumed") & 1) != 0))
    {
      if ([a4 objectForKeyedSubscript:@"transportType"] && -[FudStateMachine conformsToAllowedValuesForKey:value:](self, "conformsToAllowedValuesForKey:value:", @"transportType", objc_msgSend(a4, "objectForKeyedSubscript:", @"transportType")))
      {
        transportType = self->transportType;
        if (transportType)
        {

          self->transportType = 0;
        }

        self->transportType = [objc_msgSend(a4 objectForKeyedSubscript:{@"transportType", "copy"}];
      }

      if ([a4 objectForKeyedSubscript:@"resumingFromPercent"])
      {
        resumePercent = self->resumePercent;
        if (resumePercent)
        {

          self->resumePercent = 0;
        }

        self->resumePercent = [objc_msgSend(a4 objectForKeyedSubscript:{@"resumingFromPercent", "copy"}];
      }

      if ([a4 objectForKeyedSubscript:@"resumeCount"])
      {
        resumeCount = self->resumeCount;
        if (resumeCount)
        {

          self->resumeCount = 0;
        }

        self->resumeCount = [objc_msgSend(a4 objectForKeyedSubscript:{@"resumeCount", "copy"}];
      }

      stateMachinePluginName = self->stateMachinePluginName;
      v13[0] = @"pluginName";
      v13[1] = @"modelName";
      accessoryModelNumber = self->accessoryModelNumber;
      v14[0] = stateMachinePluginName;
      v14[1] = accessoryModelNumber;
      v14[2] = self->transportType;
      v13[2] = @"transportType";
      v13[3] = @"existingFWVersionOnAccessory";
      v13[4] = @"newFWVersion";
      v15 = *&self->existingFWVersionOnAcc;
      a4 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5]];
      if (([a3 isEqualToString:@"com.apple.fud.updateStarted"] & 1) == 0 && objc_msgSend(a3, "isEqualToString:", @"com.apple.fud.updateResumed"))
      {
        [a4 setObject:self->resumePercent forKey:@"resumingFromPercent"];
        [a4 setObject:self->resumeCount forKey:@"resumeCount"];
      }
    }

    else
    {
      sub_10004CA7C();
      return 0;
    }
  }

  else
  {
    sub_10004CA88();
  }

  return a4;
}

- (void)didApply:(BOOL)a3 info:(id)a4 error:(id)a5
{
  v7 = a3;
  FudLog();
  if (self->hasSleepAssertion)
  {
    v9 = IOPMAssertionRelease(self->sleepAssertionId);
    v26 = @"com.apple.MobileAccessoryUpdater.SleepAssertionID";
    sleepAssertionId = self->sleepAssertionId;
    v24 = v9;
    FudLog();
    self->hasSleepAssertion = 0;
  }

  else
  {
    FudLog();
  }

  objc_sync_enter(self);
  validCallback = self->validCallback;
  if (validCallback)
  {
    v11 = self->validCallback;
  }

  if (validCallback == "didApply:info:error:")
  {
    self->validCallback = 0;
    objc_sync_exit(self);
    v17 = &(&off_1000992C0)[4 * self->state];
    if (v7)
    {
      self->nextState = *(v17 + 2);
      [(FudStateMachine *)self createEndOfUpdateDictForEvent:@"com.apple.fud.updateCompleted" info:a4, "[FudStateMachine didApply:info:error:]"];
      FudLog();
      AnalyticsSendEvent();
      if (a5)
      {
        FudLog();
      }
    }

    else
    {
      self->nextState = *(v17 + 3);
      if (a5)
      {
        [(FudStateMachine *)self setException:a5, "[FudStateMachine didApply:info:error:]"];
        if ([objc_msgSend(a5 "domain")] && objc_msgSend(a5, "code") == -1)
        {
          v21 = "[FudStateMachine didApply:info:error:]";
          v24 = a5;
          FudLog();
          self->nextState = 9;
        }

        if ([objc_msgSend(a5 domain] && objc_msgSend(a5, "code") == 1)
        {
          v22 = "[FudStateMachine didApply:info:error:]";
          v25 = a5;
          FudLog();
          v18 = @"com.apple.fud.updateInterrupted";
        }

        else
        {
          v18 = @"com.apple.fud.updateFailed";
        }

        v19 = [NSString stringWithString:v18, v22, v25];
        v23 = v19;
        v24 = [(FudStateMachine *)self createEndOfUpdateDictForEvent:v19 info:a4];
        FudLog();
        AnalyticsSendEvent();
        if (v19)
        {
        }
      }

      else
      {
        [(FudStateMachine *)self setException:sub_10001D234(self, 7u, @"%s: unspecified error from plugin", v12, v13, v14, v15, v16, "[FudStateMachine didApply:info:error:]")];
      }

      [FudUtilities logFudAggd:self->stateMachineFilterName status:@"updates.failure" info:0 value:1, v23, v24];
      +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", self->stateMachineFilterName, @"error", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"apply.%@.%ld", [a5 domain], objc_msgSend(a5, "code")), 1);
    }

    workQueue = self->workQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001FEC0;
    block[3] = &unk_100081788;
    block[4] = self;
    block[5] = a4;
    dispatch_group_async(qword_10009A9D8, workQueue, block);
    FudLog();
  }

  else
  {
    FudLog();

    objc_sync_exit(self);
  }
}

- (void)runStateDoFinish
{
  FudLog();
  if ([(FudStateMachine *)self loadPlugin])
  {
    self->validCallback = "didFinish:info:error:";
    plugin = self->plugin;
    pluginOptions = self->pluginOptions;

    [(FudPlugin *)plugin finishWithOptions:pluginOptions];
  }

  else
  {
    self->nextState = *(&off_1000992C0 + 8 * self->state + 3);

    [(FudStateMachine *)self didRunStateWithInfo:0];
  }
}

- (void)reportAnalytics:(id)a3 info:(id)a4
{
  FudLog();
  if (a3 && a4)
  {
    v7 = @"com.apple.fud.updateStarted";
    if ((([a3 isEqualToString:{@"com.apple.fud.updateStarted", "-[FudStateMachine reportAnalytics:info:]"}] & 1) != 0 || (v7 = @"com.apple.fud.updateResumed", objc_msgSend(a3, "isEqualToString:", @"com.apple.fud.updateResumed"))) && -[FudStateMachine createBeginningOfUpdateDictForEvent:info:](self, "createBeginningOfUpdateDictForEvent:info:", v7, a4))
    {
      FudLog();
      AnalyticsSendEvent();
    }

    else
    {
      FudLog();
    }
  }

  else
  {
    sub_10004CA94();
  }

  FudLog();
}

- (BOOL)conformsToAllowedValuesForKey:(id)a3 value:(id)a4
{
  v5 = [a3 isEqualToString:@"transportType"];
  if (v5)
  {
    if ([a4 isEqualToString:@"USB"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"UART") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BT") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"AirPlay") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"AIDBus") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"Scorpius") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"EATransport"))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = [a4 isEqualToString:@"Generic"];
    }
  }

  return v5 & 1;
}

- (void)progress:(double)a3
{
  pluginProgressWeights = self->pluginProgressWeights;
  v6 = -1.0;
  if (pluginProgressWeights && (self->state - 8) <= 2)
  {
    [(FudProgressWeights *)pluginProgressWeights calculateOverallProgressWithStepProgress:a3 step:-1.0];
    v6 = v7;
  }

  stateMachineDelegate = self->stateMachineDelegate;
  v9 = LODWORD((&off_1000992C0)[4 * self->state + 2]);

  [(FudStateMachineDelegate *)stateMachineDelegate stepProgress:v9 stateMachine:self progress:a3 overallProgress:v6];
}

- (void)accessoryDisconnected:(id)a3
{
  workQueue = self->workQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020538;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_group_async(qword_10009A9D8, workQueue, v4);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->stateMachinePluginName forKey:@"PluginName"];
  [a3 encodeObject:self->stateMachineFilterName forKey:@"FilterName"];
  if (self->personalizer || self->needsDeviceList)
  {
    state = 1;
  }

  else
  {
    state = self->state;
  }

  [a3 encodeInt:state forKey:@"StateNumber"];
}

- (FudStateMachine)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = FudStateMachine;
  v4 = [(FudStateMachine *)&v10 init];
  if (v4)
  {
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"PluginName"];
    if (-[FudStateMachine initWithPluginName:filterName:delegate:options:](v4, "initWithPluginName:filterName:delegate:options:", v5, [a3 decodeObjectOfClass:objc_opt_class() forKey:@"FilterName"], 0, 0))
    {
      v6 = [a3 decodeIntForKey:@"StateNumber"];
      v4->state = v6;
      if (v6 < 0xC)
      {
        v9 = (&off_1000992C0)[4 * v6];
        FudLog();
        return v4;
      }

      FudLog();
      v7 = v4;
    }

    return 0;
  }

  return v4;
}

- (void)issueNotification:(id)a3
{
  stateMachineDelegate = self->stateMachineDelegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->stateMachineDelegate;

    [(FudStateMachineDelegate *)v6 issueNotification:self request:a3];
  }
}

- (void)runStateQueryNeedsBootstrap
{
  FudLog();
  v3 = [(FudStateMachine *)self getMatchingFilter];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  +[FudUtilities logFudAggd:status:info:value:](FudUtilities, "logFudAggd:status:info:value:", [v3 filterName], @"updates.attempts", 0, 1);
  v15 = [v4 needsQueryDevices];
  accessory = self->accessory;
  FudLog();
  if ([v4 needsQueryDevices])
  {
    v5 = self->accessory;
    if (v5)
    {
LABEL_14:
      pluginOptions = self->pluginOptions;
      if (!pluginOptions)
      {
        pluginOptions = objc_alloc_init(NSMutableDictionary);
        self->pluginOptions = pluginOptions;
        v5 = self->accessory;
      }

      [(NSMutableDictionary *)pluginOptions setObject:v5 forKey:@"AccessoryOption"];
      goto LABEL_17;
    }

    v17 = 0;
    self->needsDeviceList = 1;
    self->nextState = 1;
    if ([(FudStateMachine *)self loadPlugin])
    {
      if (([(FudPlugin *)self->plugin conformsToProtocol:&OBJC_PROTOCOL___FudQueryPlugin]& 1) != 0)
      {
        [(FudPlugin *)self->plugin queryDeviceList:&v17];
        if (v17 && [v17 count])
        {
          v6 = v17;
          v7 = [v17 objectAtIndex:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self->accessory = v7;
            if ([v17 count] >= 2)
            {
              v8 = 1;
              v9 = 1;
              do
              {
                -[FudStateMachineDelegate queueUpEventForAccessory:stateMachine:](self->stateMachineDelegate, "queueUpEventForAccessory:stateMachine:", [v17 objectAtIndex:v8], self);
                v8 = ++v9;
              }

              while ([v17 count] > v9);
            }

            goto LABEL_13;
          }

          v14 = "[FudStateMachine runStateQueryNeedsBootstrap]";
        }

        else
        {
          v14 = "[FudStateMachine runStateQueryNeedsBootstrap]";
        }
      }

      else
      {
        v14 = "[FudStateMachine runStateQueryNeedsBootstrap]";
      }
    }

    else
    {
      v14 = "[FudStateMachine runStateQueryNeedsBootstrap]";
    }

    FudLog();
    goto LABEL_21;
  }

LABEL_13:
  v5 = self->accessory;
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_17:
  v11 = [v4 needsBootstrapping];
  v12 = &(&off_1000992C0)[4 * self->state];
  if (v11)
  {
    v13 = *(v12 + 2);
  }

  else
  {
    v13 = *(v12 + 3);
  }

  self->nextState = v13;
LABEL_21:
  [(FudStateMachine *)self didRunStateWithInfo:0, v14];
}

@end