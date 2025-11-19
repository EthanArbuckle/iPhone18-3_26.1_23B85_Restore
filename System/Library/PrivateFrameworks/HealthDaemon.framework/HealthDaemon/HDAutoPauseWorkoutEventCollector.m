@interface HDAutoPauseWorkoutEventCollector
- (HDAutoPauseWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4;
- (void)_deliverWorkoutEvent:(void *)a3 sessionId:(void *)a4 eventDate:;
- (void)fakeActivityDetection:(id)a3 workoutActivity:(id)a4;
- (void)stop;
- (void)unitTest_setCMWorkoutManager:(id)a3;
- (void)workoutManager:(id)a3 detectedChangeInWorkoutType:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didBeginWorkoutSessionWithWorkout:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didEndWorkoutSessionWithWorkout:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didFailWorkout:(id)a4 withError:(id)a5;
- (void)workoutManager:(id)a3 didPauseWorkout:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didResumeWorkout:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didSetCurrentWorkoutType:(id)a4 withOverview:(id)a5;
- (void)workoutManager:(id)a3 didStartWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 didStopWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 suggestedStopWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 willPauseWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 willResumeWorkout:(id)a4 atDate:(id)a5;
- (void)workoutManager:(id)a3 workoutLocationEventUpdate:(id)a4;
@end

@implementation HDAutoPauseWorkoutEventCollector

- (HDAutoPauseWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = HDAutoPauseWorkoutEventCollector;
  v7 = [(HDWorkoutEventCollector *)&v15 initWithProfile:v6 delegate:a4];
  if (v7)
  {
    v8 = [v6 daemon];
    v9 = [v8 workoutPluginExtension];
    v10 = [v9 coreMotionWorkoutInterface];
    v11 = [v10 cmWorkoutManager];
    cmWorkoutManager = v7->_cmWorkoutManager;
    v7->_cmWorkoutManager = v11;

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
  v3 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  if (self)
  {
    if (v3)
    {
      catFlexingNotifyToken = self->_catFlexingNotifyToken;
      if (catFlexingNotifyToken != -1)
      {
        notify_cancel(catFlexingNotifyToken);
        self->_catFlexingNotifyToken = -1;
      }
    }
  }

  v5 = [(CMWorkoutManager *)self->_cmWorkoutManager delegate];

  if (v5 == self)
  {
    [(CMWorkoutManager *)self->_cmWorkoutManager setDelegate:0];
  }

  cmWorkoutManager = self->_cmWorkoutManager;
  self->_cmWorkoutManager = 0;
}

- (void)workoutManager:(id)a3 didStartWorkout:(id)a4 atDate:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidStartWorkout event", &v12, 0xCu);
  }

  v10 = [v7 sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v8 eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_deliverWorkoutEvent:(void *)a3 sessionId:(void *)a4 eventDate:
{
  if (a1)
  {
    v7 = MEMORY[0x277CCA970];
    v8 = a4;
    v9 = a3;
    v12 = [[v7 alloc] initWithStartDate:v8 duration:0.0];

    v10 = [objc_alloc(MEMORY[0x277CCDE58]) initWithEventType:a2 sessionId:v9 dateInterval:v12 metadata:0];
    v11 = [a1 delegate];
    [v11 receivedWorkoutEvent:v10];
  }
}

- (void)workoutManager:(id)a3 didStopWorkout:(id)a4 atDate:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidStopWorkout event", &v12, 0xCu);
  }

  v10 = [v7 sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v8 eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 willPauseWorkout:(id)a4 atDate:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerWillPauseWorkout event", &v12, 0xCu);
  }

  v10 = [v7 sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v8 eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 willResumeWorkout:(id)a4 atDate:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerWillResumeWorkout event", &v12, 0xCu);
  }

  v10 = [v7 sessionId];
  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v8 eventDate:?];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didFailWorkout:(id)a4 withError:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerDidFail event", &v15, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CCDE58]);
  v11 = [v8 sessionId];

  v12 = [v10 initWithSessionId:v11 error:v7];
  v13 = [(HDWorkoutEventCollector *)self delegate];
  [v13 receivedWorkoutEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 suggestedStopWorkout:(id)a4 atDate:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 valueForKey:@"HDEnableCatflexing"];
  v11 = v10;
  if (!v10 || [v10 BOOLValue])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = self;
      _os_log_debug_impl(&dword_228986000, v12, OS_LOG_TYPE_DEBUG, "%@: Received catflexing event", &v15, 0xCu);
    }

    v13 = [v7 sessionId];
    [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v13 sessionId:v8 eventDate:?];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 workoutLocationEventUpdate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = self;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%@:Received workout configuration update", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v5 locationType] == 1;
  v9 = objc_alloc(MEMORY[0x277CCDE58]);
  v10 = [v5 sessionId];

  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 duration:0.0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{v8, *MEMORY[0x277CCC4C0]}];
  v18 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v9 initWithWorkoutEventType:12 sessionUUID:v10 dateInterval:v11 metadata:v13 error:0];

  v15 = [(HDWorkoutEventCollector *)self delegate];
  [v15 receivedWorkoutEvent:v14];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didBeginWorkoutSessionWithWorkout:(id)a4 withOverview:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidBeginWorkoutSession event", &v13, 0xCu);
  }

  v10 = [v7 overviewId];
  v11 = [v8 startDate];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v11 eventDate:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didEndWorkoutSessionWithWorkout:(id)a4 withOverview:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = self;
    _os_log_debug_impl(&dword_228986000, v9, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidEndWorkoutSession event", &v13, 0xCu);
  }

  v10 = [v7 overviewId];
  v11 = [v8 endDate];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v10 sessionId:v11 eventDate:?];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didPauseWorkout:(id)a4 withOverview:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidPauseWorkout event", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v6 overviewId];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v9 sessionId:v8 eventDate:?];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didResumeWorkout:(id)a4 withOverview:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidResumeWorkout event", &v11, 0xCu);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v6 overviewId];

  [(HDAutoPauseWorkoutEventCollector *)self _deliverWorkoutEvent:v9 sessionId:v8 eventDate:?];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 didSetCurrentWorkoutType:(id)a4 withOverview:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = self;
    _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidSetCurrentWorkoutType event", &v16, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = [v6 startDate];
  v10 = [v8 initWithStartDate:v9 duration:0.0];

  v11 = objc_alloc(MEMORY[0x277CCDE58]);
  v12 = [v6 sessionId];

  v13 = [v11 initWithWorkoutEventType:13 sessionUUID:v12 dateInterval:v10 metadata:0 error:0];
  v14 = [(HDWorkoutEventCollector *)self delegate];
  [v14 receivedWorkoutEvent:v13];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)workoutManager:(id)a3 detectedChangeInWorkoutType:(id)a4 withOverview:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v41 = self;
    _os_log_debug_impl(&dword_228986000, v8, OS_LOG_TYPE_DEBUG, "%@: Received workoutManagerdidDetectChangeInWorkoutType event", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v6 startDate];
  v11 = [v9 initWithStartDate:v10 duration:0.0];

  v12 = objc_alloc(MEMORY[0x277CCDE58]);
  v13 = [v6 sessionId];
  v14 = [v12 initWithWorkoutEventType:14 sessionUUID:v13 dateInterval:v11 metadata:0 error:0];

  v15 = v6;
  if (self)
  {
    v16 = objc_alloc_init(MEMORY[0x277CCDC38]);
    v17 = [v15 type];
    v18 = v17;
    v19 = 52;
    switch(v17)
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
          LODWORD(v41) = v18;
          _os_log_fault_impl(&dword_228986000, v20, OS_LOG_TYPE_FAULT, "Unknown CMWorkoutType %d", buf, 8u);
        }

LABEL_5:
        v19 = 3000;
        break;
    }

    [v16 setActivityType:v19];
    v21 = [v15 locationType];
    if (v21 > 4)
    {
      v22 = 3;
    }

    else
    {
      v22 = qword_229181648[v21];
    }

    [v16 setLocationType:v22];
    if ([v15 type] == 19)
    {
      v23 = v15;
      v24 = [v23 location];
      if (v24)
      {
        v25 = 2 * (v24 == 1);
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
        v27 = [MEMORY[0x277CCDAB0] meterUnit];
        [v23 poolLength];
        v28 = [v26 quantityWithUnit:v27 doubleValue:?];
        [v16 setLapLength:v28];
      }
    }

    v29 = [v15 startDate];
    v30 = [v15 endDate];
    v31 = [MEMORY[0x277CBEAA8] distantFuture];
    v32 = [v30 isEqualToDate:v31];

    if (v32)
    {
      v33 = 0;
    }

    else
    {
      v33 = [v15 endDate];
    }

    v34 = [v15 sessionId];
    [v16 setSuggestedActivityUUID:v34];

    v35 = objc_alloc(MEMORY[0x277CCDBF0]);
    v36 = [v15 sessionId];
    v37 = [v35 _initWithUUID:v36 workoutConfiguration:v16 startDate:v29 endDate:v33 workoutEvents:MEMORY[0x277CBEBF8] startsPaused:0 duration:0.0 metadata:0 statisticsPerType:0];
  }

  else
  {
    v37 = 0;
  }

  v38 = [(HDWorkoutEventCollector *)self delegate];
  [v38 receivedWorkoutEvent:v14 forWorkoutActivity:v37];

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

- (void)unitTest_setCMWorkoutManager:(id)a3
{
  objc_storeStrong(&self->_cmWorkoutManager, a3);
  v5 = a3;
  [(CMWorkoutManager *)self->_cmWorkoutManager setDelegate:self];
}

- (void)fakeActivityDetection:(id)a3 workoutActivity:(id)a4
{
  v6 = MEMORY[0x277CCDE58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = objc_alloc(MEMORY[0x277CCA970]);
  v11 = [v7 startDate];
  v12 = [v10 initWithStartDate:v11 duration:0.0];
  v14 = [v9 initWithWorkoutEventType:14 sessionUUID:v8 dateInterval:v12 metadata:0 error:0];

  v13 = [(HDWorkoutEventCollector *)self delegate];
  [v13 receivedWorkoutEvent:v14 forWorkoutActivity:v7];
}

@end