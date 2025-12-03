@interface HDAutoPauseWorkoutEventCollector
- (HDAutoPauseWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate;
- (void)_deliverWorkoutEvent:(void *)event sessionId:(void *)id eventDate:;
- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity;
- (void)stop;
- (void)unitTest_setCMWorkoutManager:(id)manager;
- (void)workoutManager:(id)manager detectedChangeInWorkoutType:(id)type withOverview:(id)overview;
- (void)workoutManager:(id)manager didBeginWorkoutSessionWithWorkout:(id)workout withOverview:(id)overview;
- (void)workoutManager:(id)manager didEndWorkoutSessionWithWorkout:(id)workout withOverview:(id)overview;
- (void)workoutManager:(id)manager didFailWorkout:(id)workout withError:(id)error;
- (void)workoutManager:(id)manager didPauseWorkout:(id)workout withOverview:(id)overview;
- (void)workoutManager:(id)manager didResumeWorkout:(id)workout withOverview:(id)overview;
- (void)workoutManager:(id)manager didSetCurrentWorkoutType:(id)type withOverview:(id)overview;
- (void)workoutManager:(id)manager didStartWorkout:(id)workout atDate:(id)date;
- (void)workoutManager:(id)manager didStopWorkout:(id)workout atDate:(id)date;
- (void)workoutManager:(id)manager suggestedStopWorkout:(id)workout atDate:(id)date;
- (void)workoutManager:(id)manager willPauseWorkout:(id)workout atDate:(id)date;
- (void)workoutManager:(id)manager willResumeWorkout:(id)workout atDate:(id)date;
- (void)workoutManager:(id)manager workoutLocationEventUpdate:(id)update;
@end

@implementation HDAutoPauseWorkoutEventCollector

- (HDAutoPauseWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate
{
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = HDAutoPauseWorkoutEventCollector;
  v7 = [(HDWorkoutEventCollector *)&v15 initWithProfile:profileCopy delegate:delegate];
  if (v7)
  {
    daemon = [profileCopy daemon];
    workoutPluginExtension = [daemon workoutPluginExtension];
    coreMotionWorkoutInterface = [workoutPluginExtension coreMotionWorkoutInterface];
    cmWorkoutManager = [coreMotionWorkoutInterface cmWorkoutManager];
    cmWorkoutManager = v7->_cmWorkoutManager;
    v7->_cmWorkoutManager = cmWorkoutManager;

    [(CMWorkoutManager *)v7->_cmWorkoutManager setDelegate:v7];
    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      objc_initWeak(&location, v7);
      v13 = dispatch_get_global_queue(0, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __75__HDAutoPauseWorkoutEventCollector__listenForCatFlexingFakingNotifications__block_invoke;
      handler[3] = &unk_278613BF0;
      objc_copyWeak(&v17, &location);
      notify_register_dispatch("HDWorkoutManagerTriggerCatFlexingEvent", &v7->_catFlexingNotifyToken, v13, handler);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

- (void)stop
{
  v7.receiver = self;
  v7.super_class = HDAutoPauseWorkoutEventCollector;
  [(HDWorkoutEventCollector *)&v7 stop];
  isAppleInternalInstall = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (self)
  {
    if (isAppleInternalInstall)
    {
      catFlexingNotifyToken = self->_catFlexingNotifyToken;
      if (catFlexingNotifyToken != -1)
      {
        notify_cancel(catFlexingNotifyToken);
        self->_catFlexingNotifyToken = -1;
      }
    }
  }

  delegate = [(CMWorkoutManager *)self->_cmWorkoutManager delegate];

  if (delegate == self)
  {
    [(CMWorkoutManager *)self->_cmWorkoutManager setDelegate:0];
  }

  cmWorkoutManager = self->_cmWorkoutManager;
  self->_cmWorkoutManager = 0;
}

- (void)workoutManager:(id)manager didStartWorkout:(id)workout atDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dateCopy = date;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidStartWorkout event", &v12, 0xCu);
  }

  sessionId = [workoutCopy sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:sessionId sessionId:dateCopy eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_deliverWorkoutEvent:(void *)event sessionId:(void *)id eventDate:
{
  if (self)
  {
    v7 = MEMORY[0x277CCA970];
    idCopy = id;
    eventCopy = event;
    v12 = [[v7 alloc] initWithStartDate:idCopy duration:0.0];

    v10 = [objc_alloc(MEMORY[0x277CCDE58]) initWithEventType:a2 sessionId:eventCopy dateInterval:v12 metadata:0];
    delegate = [self delegate];
    [delegate receivedWorkoutEvent:v10];
  }
}

- (void)workoutManager:(id)manager didStopWorkout:(id)workout atDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dateCopy = date;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidStopWorkout event", &v12, 0xCu);
  }

  sessionId = [workoutCopy sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:sessionId sessionId:dateCopy eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager willPauseWorkout:(id)workout atDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dateCopy = date;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerWillPauseWorkout event", &v12, 0xCu);
  }

  sessionId = [workoutCopy sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:sessionId sessionId:dateCopy eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager willResumeWorkout:(id)workout atDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dateCopy = date;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerWillResumeWorkout event", &v12, 0xCu);
  }

  sessionId = [workoutCopy sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:sessionId sessionId:dateCopy eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didFailWorkout:(id)workout withError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  workoutCopy = workout;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidFail event", &v15, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CCDE58]);
  sessionId = [workoutCopy sessionId];

  v12 = [v10 initWithSessionId:sessionId error:errorCopy];
  delegate = [(HDWorkoutEventCollector *)self delegate];
  [delegate receivedWorkoutEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager suggestedStopWorkout:(id)workout atDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  dateCopy = date;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults valueForKey:@"HDEnableCatflexing"];
  v11 = v10;
  if (!v10 || [v10 BOOLValue])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%@: Received catflexing event", &v15, 0xCu);
    }

    sessionId = [workoutCopy sessionId];
    [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:sessionId sessionId:dateCopy eventDate:?];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager workoutLocationEventUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%@:Received workout configuration update", buf, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [updateCopy locationType] == 1;
  v9 = objc_alloc(MEMORY[0x277CCDE58]);
  sessionId = [updateCopy sessionId];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:date duration:0.0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{v8, *MEMORY[0x277CCC4C0]}];
  v18 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v9 initWithWorkoutEventType:12 sessionUUID:sessionId dateInterval:v11 metadata:v13 error:0];

  delegate = [(HDWorkoutEventCollector *)self delegate];
  [delegate receivedWorkoutEvent:v14];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didBeginWorkoutSessionWithWorkout:(id)workout withOverview:(id)overview
{
  v15 = *MEMORY[0x277D85DE8];
  overviewCopy = overview;
  workoutCopy = workout;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidBeginWorkoutSession event", &v13, 0xCu);
  }

  overviewId = [overviewCopy overviewId];
  startDate = [workoutCopy startDate];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:overviewId sessionId:startDate eventDate:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didEndWorkoutSessionWithWorkout:(id)workout withOverview:(id)overview
{
  v15 = *MEMORY[0x277D85DE8];
  overviewCopy = overview;
  workoutCopy = workout;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidEndWorkoutSession event", &v13, 0xCu);
  }

  overviewId = [overviewCopy overviewId];
  endDate = [workoutCopy endDate];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:overviewId sessionId:endDate eventDate:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didPauseWorkout:(id)workout withOverview:(id)overview
{
  v13 = *MEMORY[0x277D85DE8];
  overviewCopy = overview;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidPauseWorkout event", &v11, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  overviewId = [overviewCopy overviewId];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:overviewId sessionId:date eventDate:?];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didResumeWorkout:(id)workout withOverview:(id)overview
{
  v13 = *MEMORY[0x277D85DE8];
  overviewCopy = overview;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidResumeWorkout event", &v11, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  overviewId = [overviewCopy overviewId];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:overviewId sessionId:date eventDate:?];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager didSetCurrentWorkoutType:(id)type withOverview:(id)overview
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidSetCurrentWorkoutType event", &v16, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [typeCopy startDate];
  v10 = [v8 initWithStartDate:startDate duration:0.0];

  v11 = objc_alloc(MEMORY[0x277CCDE58]);
  sessionId = [typeCopy sessionId];

  v13 = [v11 initWithWorkoutEventType:13 sessionUUID:sessionId dateInterval:v10 metadata:0 error:0];
  delegate = [(HDWorkoutEventCollector *)self delegate];
  [delegate receivedWorkoutEvent:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)manager detectedChangeInWorkoutType:(id)type withOverview:(id)overview
{
  v42 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidDetectChangeInWorkoutType event", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [typeCopy startDate];
  v11 = [v9 initWithStartDate:startDate duration:0.0];

  v12 = objc_alloc(MEMORY[0x277CCDE58]);
  sessionId = [typeCopy sessionId];
  v14 = [v12 initWithWorkoutEventType:14 sessionUUID:sessionId dateInterval:v11 metadata:0 error:0];

  v15 = typeCopy;
  if (self)
  {
    v16 = objc_alloc_init(MEMORY[0x277CCDC38]);
    type = [v15 type];
    v18 = type;
    v19 = 52;
    switch(type)
    {
      case 0:
      case 8:
      case 10:
      case 13:
      case 14:
      case 25:
      case 26:
      case 96:
        goto LABEL_5;
      case 1:
      case 15:
      case 16:
        break;
      case 2:
      case 17:
      case 18:
        v19 = 37;
        break;
      case 3:
      case 4:
      case 5:
        v19 = 13;
        break;
      case 6:
        v19 = 57;
        break;
      case 7:
        v19 = 77;
        break;
      case 9:
        v19 = 16;
        break;
      case 11:
        v19 = 44;
        break;
      case 12:
      case 35:
        v19 = 35;
        break;
      case 19:
        v19 = 46;
        break;
      case 20:
        v19 = 70;
        break;
      case 21:
        v19 = 71;
        break;
      case 22:
        v19 = 63;
        break;
      case 23:
        v19 = 61;
        break;
      case 24:
        v19 = 24;
        break;
      case 27:
        v19 = 21;
        break;
      case 28:
        v19 = 20;
        break;
      case 29:
        v19 = 80;
        break;
      case 30:
        v19 = 59;
        break;
      case 31:
        v19 = 72;
        break;
      case 32:
        v19 = 66;
        break;
      case 33:
        v19 = 83;
        break;
      case 34:
        v19 = 65;
        break;
      case 36:
        v19 = 60;
        break;
      case 37:
        v19 = 67;
        break;
      case 38:
        v19 = 31;
        break;
      case 39:
      case 40:
        v19 = 41;
        break;
      case 41:
        v19 = 3;
        break;
      case 42:
        v19 = 1;
        break;
      case 43:
        v19 = 75;
        break;
      case 44:
        v19 = 36;
        break;
      case 45:
        v19 = 27;
        break;
      case 46:
      case 47:
        v19 = 39;
        break;
      case 48:
      case 49:
        v19 = 25;
        break;
      case 50:
        v19 = 6;
        break;
      case 51:
        v19 = 48;
        break;
      case 52:
        v19 = 4;
        break;
      case 53:
        v19 = 34;
        break;
      case 54:
        v19 = 79;
        break;
      case 55:
        v19 = 51;
        break;
      case 56:
        v19 = 43;
        break;
      case 57:
        v19 = 23;
        break;
      case 58:
        v19 = 49;
        break;
      case 59:
        v19 = 42;
        break;
      case 60:
        v19 = 5;
        break;
      case 61:
        v19 = 10;
        break;
      case 62:
        v19 = 47;
        break;
      case 63:
        v19 = 64;
        break;
      case 64:
        v19 = 8;
        break;
      case 66:
      case 67:
        v19 = 74;
        break;
      default:
        _HKInitializeLogging();
        v20 = *v7;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          LODWORD(selfCopy) = v18;
          _os_log_fault_impl(&dword_228986000, v20, OS_LOG_TYPE_FAULT, "Unknown CMWorkoutType %d", buf, 8u);
        }

LABEL_5:
        v19 = 3000;
        break;
    }

    [v16 setActivityType:v19];
    locationType = [v15 locationType];
    if (locationType > 4)
    {
      v22 = 3;
    }

    else
    {
      v22 = qword_229181648[locationType];
    }

    [v16 setLocationType:v22];
    if ([v15 type] == 19)
    {
      v23 = v15;
      location = [v23 location];
      if (location)
      {
        v25 = 2 * (location == 1);
      }

      else
      {
        v25 = 1;
      }

      [v16 setSwimmingLocationType:v25];
      [v16 setLocationType:3];
      if ([v16 swimmingLocationType] == 2)
      {
        [v16 setLapLength:0];
      }

      else
      {
        v26 = MEMORY[0x277CCD7E8];
        meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
        [v23 poolLength];
        v28 = [v26 quantityWithUnit:meterUnit doubleValue:?];
        [v16 setLapLength:v28];
      }
    }

    startDate2 = [v15 startDate];
    endDate = [v15 endDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v32 = [endDate isEqualToDate:distantFuture];

    if (v32)
    {
      endDate2 = 0;
    }

    else
    {
      endDate2 = [v15 endDate];
    }

    sessionId2 = [v15 sessionId];
    [v16 setSuggestedActivityUUID:sessionId2];

    v35 = objc_alloc(MEMORY[0x277CCDBF0]);
    sessionId3 = [v15 sessionId];
    v37 = [v35 _initWithUUID:sessionId3 workoutConfiguration:v16 startDate:startDate2 endDate:endDate2 workoutEvents:MEMORY[0x277CBEBF8] startsPaused:0 duration:0.0 metadata:0 statisticsPerType:0];
  }

  else
  {
    v37 = 0;
  }

  delegate = [(HDWorkoutEventCollector *)self delegate];
  [delegate receivedWorkoutEvent:v14 forWorkoutActivity:v37];

  v39 = *MEMORY[0x277D85DE8];
}

void __75__HDAutoPauseWorkoutEventCollector__listenForCatFlexingFakingNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = MEMORY[0x277CCC330];
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "CatFlexing: Triggering cat flexing event", buf, 2u);
    }

    _HKInitializeLogging();
    v3 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = 0x4014000000000000;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "CatFlexing: setting setSuggestedStopTimeout to %f seconds", buf, 0xCu);
    }

    v4 = [WeakRetained sessionId];
    v5 = [MEMORY[0x277CBEAA8] date];
    [(HDAutoPauseWorkoutEventCollector *)WeakRetained _deliverWorkoutEvent:v4 sessionId:v5 eventDate:?];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)unitTest_setCMWorkoutManager:(id)manager
{
  objc_storeStrong(&self->_cmWorkoutManager, manager);
  managerCopy = manager;
  [(CMWorkoutManager *)self->_cmWorkoutManager setDelegate:self];
}

- (void)fakeActivityDetection:(id)detection workoutActivity:(id)activity
{
  v6 = MEMORY[0x277CCDE58];
  activityCopy = activity;
  detectionCopy = detection;
  v9 = [v6 alloc];
  v10 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [activityCopy startDate];
  v12 = [v10 initWithStartDate:startDate duration:0.0];
  v14 = [v9 initWithWorkoutEventType:14 sessionUUID:detectionCopy dateInterval:v12 metadata:0 error:0];

  delegate = [(HDWorkoutEventCollector *)self delegate];
  [delegate receivedWorkoutEvent:v14 forWorkoutActivity:activityCopy];
}

@end