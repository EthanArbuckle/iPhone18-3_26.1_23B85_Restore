@interface CDMonitorManager
+ (id)monitorManagerForEventStreams:(id)streams domain:(unint64_t)domain;
- (BOOL)_hasMonitorForStreamName:(id)name;
- (BOOL)hasMonitor:(id)monitor;
- (CDMonitorManager)initWithEventStreams:(id)streams domain:(unint64_t)domain;
- (id)_allMonitors;
- (id)_allStreamNames;
- (id)_currentEventForStreamName:(id)name;
- (id)_lastUpdateForStreamName:(id)name;
- (id)_monitorForStreamName:(id)name;
- (id)currentEvent;
- (id)currentEventForStream:(id)stream;
- (id)lastUpdate;
- (id)lastUpdateForStream:(id)stream;
- (void)_addMonitor:(id)monitor forStreamName:(id)name;
- (void)_removeMonitorForStreamName:(id)name;
- (void)_setHistoricalHandler:(id)handler forStreamName:(id)name;
- (void)_setInstantHandler:(id)handler forStreamName:(id)name;
- (void)_startMonitorForStreamName:(id)name;
- (void)_stopMonitorForStreamName:(id)name;
- (void)_updateForStreamName:(id)name;
- (void)addMonitor:(id)monitor;
- (void)deliverNotificationEvent:(id)event;
- (void)handleShutdownNotification;
- (void)populateCurrentValueForStreamName:(id)name;
- (void)removeMonitor:(id)monitor;
- (void)setHistoricalDeletingHandler:(id)handler;
- (void)setHistoricalHandler:(id)handler;
- (void)setHistoricalHandler:(id)handler forStream:(id)stream;
- (void)setInstantHandler:(id)handler;
- (void)setInstantHandler:(id)handler forStream:(id)stream;
- (void)setShutdownHandler:(id)handler;
- (void)start;
- (void)startMonitorForStream:(id)stream;
- (void)stop;
- (void)stopMonitorForStream:(id)stream;
- (void)update;
- (void)updateForStream:(id)stream;
@end

@implementation CDMonitorManager

- (id)_allMonitors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_monitors allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (CDMonitorManager)initWithEventStreams:(id)streams domain:(unint64_t)domain
{
  v110 = *MEMORY[0x1E69E9840];
  streamsCopy = streams;
  v101.receiver = self;
  v101.super_class = CDMonitorManager;
  observer = [(CDMonitorManager *)&v101 init];
  if (!observer)
  {
    goto LABEL_71;
  }

  context = objc_autoreleasePoolPush();
  if (!KnowledgeMonitorLibraryCore())
  {
    v8 = +[_CDLogging contextChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager initWithEventStreams:domain:];
    }

    goto LABEL_17;
  }

  *location = 0;
  if (!KnowledgeMonitorLibraryCore())
  {
    goto LABEL_72;
  }

  if (*location)
  {
    free(*location);
  }

  if (!UsageTrackingLibraryCore())
  {
    contextChannel = +[_CDLogging contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager initWithEventStreams:domain:];
    }

    goto LABEL_15;
  }

  *location = 0;
  v5 = UsageTrackingLibraryCore();
  v6 = *location;
  if (v5)
  {
    self = 0x1E7366000;
    if (!*location)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_72:
    v64 = *location;
    v6 = abort_report_np();
    __break(1u);
  }

  free(v6);
LABEL_9:
  contextChannel = [(NSMutableSet *)self[6]._shutdownHandlingMonitors contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

LABEL_15:

  v8 = +[_CDLogging contextChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

LABEL_17:

  v70 = _CDDomainAvailabilityDescription(domain);
  v9 = +[_CDLogging contextChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:domain:];
  }

  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = *(observer + 9);
  *(observer + 9) = v10;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v68 = [MEMORY[0x1E695DFA8] set];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  allEventStreams = [streamsCopy allEventStreams];
  obj = [allEventStreams allValues];

  v13 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (v13)
  {
    v75 = *v98;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v98 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v97 + 1) + 8 * i);
        eventStreamProperties = [v15 eventStreamProperties];
        name = [eventStreamProperties name];

        if (!name)
        {
          monitorClass = +[_CDLogging contextChannel];
          if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_ERROR))
          {
            [(CDMonitorManager *)v107 initWithEventStreams:v15 domain:&v108, monitorClass];
          }

          goto LABEL_63;
        }

        lowercaseString = [name lowercaseString];
        v19 = [lowercaseString containsString:@"(internal)"];

        if (!v19 || +[_CDDeviceInfo isRunningOnInternalBuild])
        {
          eventStreamProperties2 = [v15 eventStreamProperties];
          isAvailable = [eventStreamProperties2 isAvailable];

          if (isAvailable)
          {
            eventStreamProperties3 = [v15 eventStreamProperties];
            v23 = ([eventStreamProperties3 domainAvailability] & domain) == 0;

            if (!v23)
            {
              eventStreamProperties4 = [v15 eventStreamProperties];
              monitorClass = [eventStreamProperties4 monitorClass];

              if (monitorClass)
              {
                v26 = NSClassFromString(&monitorClass->isa);
                v27 = v26;
                if (v26)
                {
                  v28 = objc_alloc_init(v26);
                  if (v28)
                  {
                    eventStreamProperties5 = [v15 eventStreamProperties];
                    isInstant = [eventStreamProperties5 isInstant];

                    eventStreamProperties6 = [v15 eventStreamProperties];
                    isHistorical = [eventStreamProperties6 isHistorical];

                    eventStreamProperties7 = [v15 eventStreamProperties];
                    setupOnDemand = [eventStreamProperties7 setupOnDemand];

                    eventStreamProperties8 = [v15 eventStreamProperties];
                    pollingPeriod = [eventStreamProperties8 pollingPeriod];

                    v36 = +[_CDLogging knowledgeChannel];
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      *location = 138544130;
                      *&location[4] = name;
                      v103 = 1024;
                      *v104 = isInstant;
                      *&v104[4] = 1024;
                      *&v104[6] = isHistorical;
                      v105 = 2048;
                      v106 = pollingPeriod;
                      _os_log_debug_impl(&dword_191750000, v36, OS_LOG_TYPE_DEBUG, "Monitor %{public}@ IsInstant=%d, IsHistorical=%d, PollingPeriod=%ld", location, 0x22u);
                    }

                    if (isInstant && [v28 conformsToProtocol:&unk_1F0624888])
                    {
                      v93[0] = MEMORY[0x1E69E9820];
                      v93[1] = 3221225472;
                      v93[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke;
                      v93[3] = &unk_1E7369FC8;
                      v94 = observer;
                      v95 = name;
                      v96 = v15;
                      [v28 setInstantHandler:v93];
                    }

                    if (isHistorical)
                    {
                      if ([v28 conformsToProtocol:&unk_1F06248E8])
                      {
                        v89[0] = MEMORY[0x1E69E9820];
                        v89[1] = 3221225472;
                        v89[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85;
                        v89[3] = &unk_1E7369FF0;
                        v67 = observer;
                        v90 = v67;
                        v37 = name;
                        v91 = v37;
                        v92 = v15;
                        [v28 setHistoricalHandler:v89];
                        if ((pollingPeriod - 1) <= 6)
                        {
                          v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduetd.monitor.%@", v37];
                          objc_initWeak(location, v28);
                          v87[0] = MEMORY[0x1E69E9820];
                          v87[1] = 3221225472;
                          v87[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_92;
                          v87[3] = &unk_1E7367220;
                          objc_copyWeak(&v88, location);
                          v39 = [_CDPeriodicSchedulerJob jobWithPeriod:pollingPeriod schedulerJobName:v38 handler:v87];
                          v40 = +[_CDPeriodicScheduler sharedInstance];
                          [v40 registerJob:v39];

                          objc_destroyWeak(&v88);
                          objc_destroyWeak(location);
                        }

                        eventStreamProperties9 = [v15 eventStreamProperties];
                        shouldSaveCurrentEventOnShutdown = [eventStreamProperties9 shouldSaveCurrentEventOnShutdown];

                        if (shouldSaveCurrentEventOnShutdown)
                        {
                          v43 = v28;
                          [*(observer + 9) addObject:v43];
                          v82[0] = MEMORY[0x1E69E9820];
                          v82[1] = 3221225472;
                          v82[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2;
                          v82[3] = &unk_1E736A018;
                          v83 = v67;
                          v84 = v37;
                          v85 = v15;
                          v86 = v43;
                          v44 = v43;
                          [v44 setShutdownHandler:v82];
                        }
                      }

                      if ([v28 conformsToProtocol:&unk_1F0624948])
                      {
                        v78[0] = MEMORY[0x1E69E9820];
                        v78[1] = 3221225472;
                        v78[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101;
                        v78[3] = &unk_1E736A040;
                        v79 = observer;
                        v80 = name;
                        v81 = v15;
                        [v28 setHistoricalDeletingHandler:v78];
                      }
                    }

                    [dictionary setObject:v28 forKey:name];
                    if (setupOnDemand)
                    {
                      [v68 addObject:name];
                    }
                  }

                  else
                  {
                    v48 = +[_CDLogging contextChannel];
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = NSStringFromClass(v27);
                      *location = 138543618;
                      *&location[4] = v49;
                      v103 = 2114;
                      *v104 = name;
                      _os_log_error_impl(&dword_191750000, v48, OS_LOG_TYPE_ERROR, "Unable to initialize monitor %{public}@ for streamName %{public}@", location, 0x16u);
                    }
                  }
                }

                else
                {
                  v28 = +[_CDLogging contextChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *location = 138543618;
                    *&location[4] = monitorClass;
                    v103 = 2114;
                    *v104 = name;
                    _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Unable to find monitor class %{public}@ for streamName %{public}@", location, 0x16u);
                  }
                }
              }

              else
              {
                v28 = +[_CDLogging contextChannel];
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *location = 138543362;
                  *&location[4] = name;
                  _os_log_impl(&dword_191750000, v28, OS_LOG_TYPE_INFO, "No monitor for %{public}@", location, 0xCu);
                }
              }

              goto LABEL_63;
            }

            monitorClass = +[_CDLogging contextChannel];
            if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_INFO))
            {
              *location = 138412546;
              *&location[4] = v70;
              v103 = 2112;
              *v104 = name;
              v45 = monitorClass;
              v46 = "Monitor is not supported in the %@ domain: %@ ";
              v47 = 22;
LABEL_54:
              _os_log_impl(&dword_191750000, v45, OS_LOG_TYPE_INFO, v46, location, v47);
            }
          }

          else
          {
            monitorClass = +[_CDLogging contextChannel];
            if (os_log_type_enabled(monitorClass, OS_LOG_TYPE_INFO))
            {
              *location = 138412290;
              *&location[4] = name;
              v45 = monitorClass;
              v46 = "Monitor is not supported on this platform: %@";
              v47 = 12;
              goto LABEL_54;
            }
          }

LABEL_63:
        }
      }

      v13 = [obj countByEnumeratingWithState:&v97 objects:v109 count:16];
    }

    while (v13);
  }

  objc_storeStrong(observer + 1, dictionary);
  objc_storeStrong(observer + 2, v68);
  v50 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    [CDMonitorManager initWithEventStreams:? domain:?];
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v52 = *(observer + 7);
  *(observer + 7) = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v54 = *(observer + 8);
  *(observer + 8) = dictionary3;

  v55 = dispatch_queue_create("com.apple.CDMonitorManager.workQueue", MEMORY[0x1E69E96A8]);
  v56 = *(observer + 10);
  *(observer + 10) = v55;

  v57 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    *location = 0;
    _os_log_impl(&dword_191750000, v57, OS_LOG_TYPE_INFO, "Registering for device shutdown notification", location, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observer, _handleShutdownNotification, @"com.apple.springboard.deviceWillShutDown", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  signal(15, 1);
  v59 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, MEMORY[0x1E69E96A0]);
  v60 = *(observer + 11);
  *(observer + 11) = v59;

  v61 = *(observer + 11);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_107;
  handler[3] = &unk_1E7367440;
  v77 = observer;
  dispatch_source_set_event_handler(v61, handler);
  dispatch_resume(*(observer + 11));

  objc_autoreleasePoolPop(context);
LABEL_71:

  v62 = *MEMORY[0x1E69E9840];
  return observer;
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  if (v4 || (v4 = MEMORY[0x193B00C50](*(a1[4] + 24))) != 0)
  {
    v5 = v4;
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_cold_1(a1 + 5);
    }

    (v5)[2](v5, a1[6], v3);
  }
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85(void *a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  if (v4 || (v4 = MEMORY[0x193B00C50](*(a1[4] + 32))) != 0)
  {
    v5 = v4;
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85_cold_1(a1 + 5);
    }

    (v5)[2](v5, a1[6], v3);
  }
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_92(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained update];

  objc_autoreleasePoolPop(v2);
}

uint64_t __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 48))
  {
    v1 = result;
    v2 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2_cold_1(v1);
    }

    v3 = v1[6];
    v4 = v1[7];
    return (*(*(v1[4] + 48) + 16))();
  }

  return result;
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 40))
  {
    v3 = a2;
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101_cold_1(a1);
    }

    v5 = *(a1 + 48);
    (*(*(*(a1 + 32) + 40) + 16))();
  }
}

uint64_t __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_107(uint64_t a1)
{
  v2 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "Got a SIGTERM.", v4, 2u);
  }

  return [*(a1 + 32) handleShutdownNotification];
}

+ (id)monitorManagerForEventStreams:(id)streams domain:(unint64_t)domain
{
  streamsCopy = streams;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CDMonitorManager_monitorManagerForEventStreams_domain___block_invoke;
  v11[3] = &unk_1E7368B18;
  v12 = streamsCopy;
  domainCopy = domain;
  v6 = monitorManagerForEventStreams_domain__onceToken;
  v7 = streamsCopy;
  if (v6 != -1)
  {
    dispatch_once(&monitorManagerForEventStreams_domain__onceToken, v11);
  }

  v8 = monitorManagerForEventStreams_domain__sharedInstance;
  v9 = monitorManagerForEventStreams_domain__sharedInstance;

  return v8;
}

uint64_t __57__CDMonitorManager_monitorManagerForEventStreams_domain___block_invoke(uint64_t a1)
{
  v1 = [[CDMonitorManager alloc] initWithEventStreams:*(a1 + 32) domain:*(a1 + 40)];
  v2 = monitorManagerForEventStreams_domain__sharedInstance;
  monitorManagerForEventStreams_domain__sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)_monitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_monitors objectForKeyedSubscript:nameCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allStreamNames
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_monitors allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (void)_setInstantHandler:(id)handler forStreamName:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x193B00C50](handler);
  [(NSMutableDictionary *)self->_instantHandlerMap setObject:v7 forKeyedSubscript:nameCopy];
}

- (void)setInstantHandler:(id)handler forStream:(id)stream
{
  handlerCopy = handler;
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _setInstantHandler:handlerCopy forStreamName:name];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setInstantHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalInstantHandler = self->_generalInstantHandler;
  self->_generalInstantHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)_setHistoricalHandler:(id)handler forStreamName:(id)name
{
  nameCopy = name;
  v7 = MEMORY[0x193B00C50](handler);
  [(NSMutableDictionary *)self->_historicalHandlerMap setObject:v7 forKeyedSubscript:nameCopy];
}

- (void)setHistoricalHandler:(id)handler forStream:(id)stream
{
  handlerCopy = handler;
  streamCopy = stream;
  v7 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _setHistoricalHandler:handlerCopy forStreamName:name];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setHistoricalHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalHistoricalHandler = self->_generalHistoricalHandler;
  self->_generalHistoricalHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)setHistoricalDeletingHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalHistoricalDeletingHandler = self->_generalHistoricalDeletingHandler;
  self->_generalHistoricalDeletingHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)setShutdownHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x193B00C50](handlerCopy);
  generalShutdownHandler = self->_generalShutdownHandler;
  self->_generalShutdownHandler = v5;

  objc_autoreleasePoolPop(v4);
}

- (void)_startMonitorForStreamName:(id)name
{
  v4 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v5 = os_transaction_create();
  if (v4 && [v4 conformsToProtocol:&unk_1F0624888])
  {
    monitorWorkQueue = self->_monitorWorkQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__CDMonitorManager__startMonitorForStreamName___block_invoke;
    v9[3] = &unk_1E7367440;
    v10 = v4;
    v7 = v5;
    v8 = v9;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_1E7367818;
    v12 = v7;
    v13 = v8;
    dispatch_async(monitorWorkQueue, block);
  }
}

- (void)startMonitorForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  v8 = +[_CDLogging knowledgeChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (name)
  {
    if (v9)
    {
      [CDMonitorManager startMonitorForStream:];
    }

    [(CDMonitorManager *)self _startMonitorForStreamName:name];
  }

  else
  {
    if (v9)
    {
      [(CDMonitorManager *)v8 startMonitorForStream:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v4 = [_allStreamNames countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_lazyMonitorNames containsObject:v8]& 1) != 0)
        {
          v9 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v17 = v8;
            _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "------> Skipping start for OnDemand monitor : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [(CDMonitorManager *)self _startMonitorForStreamName:v8];
        }
      }

      v5 = [_allStreamNames countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_stopMonitorForStreamName:(id)name
{
  v4 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:&unk_1F0624888])
  {
    monitorWorkQueue = self->_monitorWorkQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__CDMonitorManager__stopMonitorForStreamName___block_invoke;
    v11[3] = &unk_1E7367440;
    v12 = v5;
    v7 = v11;
    v8 = monitorWorkQueue;
    v9 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
    block[3] = &unk_1E7367818;
    v14 = v9;
    v15 = v7;
    v10 = v9;
    dispatch_async(v8, block);
  }
}

- (void)stopMonitorForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  v8 = +[_CDLogging knowledgeChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (name)
  {
    if (v9)
    {
      [CDMonitorManager stopMonitorForStream:];
    }

    [(CDMonitorManager *)self _stopMonitorForStreamName:name];
  }

  else
  {
    if (v9)
    {
      [(CDMonitorManager *)v8 stopMonitorForStream:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)stop
{
  v19 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v4 = [_allStreamNames countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_lazyMonitorNames containsObject:v8]& 1) != 0)
        {
          v9 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v17 = v8;
            _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "------> Skipping stop for OnDemand monitor : %{public}@", buf, 0xCu);
          }
        }

        else
        {
          [(CDMonitorManager *)self _stopMonitorForStreamName:v8];
        }
      }

      v5 = [_allStreamNames countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(context);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)populateCurrentValueForStreamName:(id)name
{
  nameCopy = name;
  v4 = objc_autoreleasePoolPush();
  v5 = [(CDMonitorManager *)self _monitorForStreamName:nameCopy];
  v6 = v5;
  if (v5 && [v5 conformsToProtocol:&unk_1F0624888])
  {
    [v6 synchronouslyReflectCurrentValue];
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_currentEventForStreamName:(id)name
{
  v3 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F0624888])
  {
    currentEvent = [v4 currentEvent];
  }

  else
  {
    currentEvent = 0;
  }

  return currentEvent;
}

- (id)currentEventForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    v8 = [(CDMonitorManager *)self _currentEventForStreamName:name];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)currentEvent
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v6 = [_allStreamNames countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(CDMonitorManager *)self _currentEventForStreamName:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [_allStreamNames countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)_updateForStreamName:(id)name
{
  nameCopy = name;
  v5 = [(CDMonitorManager *)self _monitorForStreamName:nameCopy];
  v6 = v5;
  if (v5 && [v5 conformsToProtocol:&unk_1F06248E8])
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CDMonitorManager _updateForStreamName:];
    }

    [v6 update];
  }
}

- (void)updateForStream:(id)stream
{
  streamCopy = stream;
  v4 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    [(CDMonitorManager *)self _updateForStreamName:name];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)update
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v5 = [_allStreamNames countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        [(CDMonitorManager *)self _updateForStreamName:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [_allStreamNames countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)_lastUpdateForStreamName:(id)name
{
  v3 = [(CDMonitorManager *)self _monitorForStreamName:name];
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&unk_1F06248E8])
  {
    lastUpdate = [v4 lastUpdate];
  }

  else
  {
    lastUpdate = 0;
  }

  return lastUpdate;
}

- (id)lastUpdateForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_autoreleasePoolPush();
  eventStreamProperties = [streamCopy eventStreamProperties];
  name = [eventStreamProperties name];

  if (name)
  {
    v8 = [(CDMonitorManager *)self _lastUpdateForStreamName:name];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v8;
}

- (id)lastUpdate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _allStreamNames = [(CDMonitorManager *)self _allStreamNames];
  v6 = [_allStreamNames countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(_allStreamNames);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(CDMonitorManager *)self _lastUpdateForStreamName:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [_allStreamNames countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)deliverNotificationEvent:(id)event
{
  v29 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v17 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  if (eventCopy)
  {
    context = v5;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [(CDMonitorManager *)self _allMonitors];
    v6 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          if ([v10 conformsToProtocol:&unk_1F06249A8])
          {
            monitorWorkQueue = self->_monitorWorkQueue;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __45__CDMonitorManager_deliverNotificationEvent___block_invoke;
            v19[3] = &unk_1E7367710;
            v19[4] = v10;
            v20 = eventCopy;
            v12 = v17;
            v13 = v19;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __cd_dispatch_async_capture_tx_block_invoke_7;
            block[3] = &unk_1E7367818;
            v26 = v12;
            v27 = v13;
            v14 = v12;
            dispatch_async(monitorWorkQueue, block);
          }
        }

        v7 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v7);
    }

    v5 = context;
  }

  objc_autoreleasePoolPop(v5);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)handleShutdownNotification
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_shutdownHandlingMonitors;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    v7 = MEMORY[0x1E69E9C10];
    *&v4 = 138412290;
    v13 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        shutdownHandler = [*(*(&v14 + 1) + 8 * v8) shutdownHandler];
        if (shutdownHandler)
        {
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = v13;
            v19 = v11;
            _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, "Calling shutdown handler for monitor %@.", buf, 0xCu);
          }

          shutdownHandler[2](shutdownHandler);
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_addMonitor:(id)monitor forStreamName:(id)name
{
  monitorCopy = monitor;
  nameCopy = name;
  if (monitorCopy && nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_monitors setObject:monitorCopy forKeyedSubscript:nameCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)addMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  [(CDMonitorManager *)self _addMonitor:monitorCopy forStreamName:eventStream];

  objc_autoreleasePoolPop(v4);
}

- (void)_removeMonitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = nameCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_monitors removeObjectForKey:v6];
    objc_sync_exit(selfCopy);

    nameCopy = v6;
  }
}

- (void)removeMonitor:(id)monitor
{
  monitorCopy = monitor;
  v4 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  [(CDMonitorManager *)self _removeMonitorForStreamName:eventStream];

  objc_autoreleasePoolPop(v4);
}

- (BOOL)_hasMonitorForStreamName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_monitors objectForKeyedSubscript:nameCopy];
    v7 = v6 != 0;

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasMonitor:(id)monitor
{
  monitorCopy = monitor;
  v5 = objc_autoreleasePoolPush();
  eventStream = [objc_opt_class() eventStream];
  LOBYTE(self) = [(CDMonitorManager *)self _hasMonitorForStreamName:eventStream];

  objc_autoreleasePoolPop(v5);
  return self;
}

- (void)initWithEventStreams:domain:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithEventStreams:domain:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v0, v1, "Initializing monitor manager for domain %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithEventStreams:(void *)a3 domain:(NSObject *)a4 .cold.6(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_191750000, a4, OS_LOG_TYPE_ERROR, "Stream missing name: %@", a1, 0xCu);
}

- (void)initWithEventStreams:(uint64_t *)a1 domain:.cold.7(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v2, v3, "Lazily initialized Monitors = %{public}@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v2, v3, "Calling instant handler for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_85_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v2, v3, "Calling historical handler for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v2, v3, "Calling shutdown handler for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__CDMonitorManager_initWithEventStreams_domain___block_invoke_101_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v2, v3, "Calling deletion handler for %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startMonitorForStream:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v0, v1, "------> -startMonitorForStream: (OnDemand monitor) %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startMonitorForStream:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_191750000, a1, a3, "------>Did NOT -startMonitorForStream: (OnDemand monitor) %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitorForStream:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v0, v1, "------> -stopMonitorForStream: (OnDemand monitor) %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitorForStream:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_191750000, a1, a3, "------>Did NOT -stopMonitorForStream: (OnDemand monitor) %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_updateForStreamName:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_191750000, v0, v1, "Updating monitor %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end