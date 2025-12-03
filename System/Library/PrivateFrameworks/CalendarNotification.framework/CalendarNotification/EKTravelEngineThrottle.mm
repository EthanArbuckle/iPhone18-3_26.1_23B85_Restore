@interface EKTravelEngineThrottle
- (BOOL)receivedAlarmNamed:(id)named;
- (EKTravelEngineThrottle)init;
- (id)alarmName;
- (id)description;
- (void)_createEmissionTimerWithDate:(id)date;
- (void)_emissionTimerFired;
- (void)_fireEmissionBlock;
- (void)_significantTimeChangeNotificationReceived;
- (void)_uninstallEmissionTimer;
- (void)_updateEmissionDate:(id)date;
- (void)dealloc;
- (void)tearDown;
- (void)updatePredictedDepartureDate:(id)date;
@end

@implementation EKTravelEngineThrottle

- (EKTravelEngineThrottle)init
{
  v7.receiver = self;
  v7.super_class = EKTravelEngineThrottle;
  v2 = [(EKTravelEngineThrottle *)&v7 init];
  if (v2)
  {
    objc_opt_class();
    v3 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v3 UTF8String];

    v5 = dispatch_queue_create(uTF8String, 0);
    [(EKTravelEngineThrottle *)v2 setThrottleQueue:v5];

    [(EKTravelEngineThrottle *)v2 _registerForNotificationObservation];
  }

  return v2;
}

- (void)dealloc
{
  [(EKTravelEngineThrottle *)self _uninstallEmissionTimer];
  v3.receiver = self;
  v3.super_class = EKTravelEngineThrottle;
  [(EKTravelEngineThrottle *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v10.receiver = self;
  v10.super_class = EKTravelEngineThrottle;
  v4 = [(EKTravelEngineThrottle *)&v10 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  nextEmissionDate = [(EKTravelEngineThrottle *)self nextEmissionDate];
  [v5 setKey:@"nextEmissionDate" withDate:nextEmissionDate];

  throttleQueue = [(EKTravelEngineThrottle *)self throttleQueue];
  [v5 setKey:@"throttleQueue" withPointerAddress:throttleQueue];

  build = [v5 build];

  return build;
}

- (void)tearDown
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Throttle has been requested to tear down: [%@]", buf, 0xCu);
  }

  throttleQueue = [(EKTravelEngineThrottle *)self throttleQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__EKTravelEngineThrottle_tearDown__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(throttleQueue, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __34__EKTravelEngineThrottle_tearDown__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _uninstallEmissionTimer];
  v2 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Travel engine throttle tear down: [%@]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)updatePredictedDepartureDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = dateCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "updatePredictedDepartureDate: [%{public}@]", buf, 0xCu);
  }

  throttleQueue = [(EKTravelEngineThrottle *)self throttleQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__EKTravelEngineThrottle_updatePredictedDepartureDate___block_invoke;
  v9[3] = &unk_278D6F278;
  v10 = dateCopy;
  selfCopy = self;
  v7 = dateCopy;
  dispatch_async(throttleQueue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__EKTravelEngineThrottle_updatePredictedDepartureDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC5A18] shared];
  v3 = [v2 shouldBypassTravelEngineThrottle];

  if (*(a1 + 32))
  {
    if (v3)
    {
      [*(a1 + 40) _uninstallEmissionTimer];
      v4 = *(a1 + 40);

      [v4 _fireEmissionBlock];
    }

    else
    {
      [objc_opt_class() emissionThresholdTimeInterval];
      v7 = [*(a1 + 32) dateByAddingTimeInterval:-v6];
      [*(a1 + 40) _updateEmissionDate:v7];
    }
  }

  else
  {
    v5 = *MEMORY[0x277CC5980];
    if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "No date given.  Tearing down emission timer.", buf, 2u);
    }

    [*(a1 + 40) _uninstallEmissionTimer];
  }
}

- (id)alarmName
{
  v2 = MEMORY[0x277CCABB0];
  eventExternalURL = [(EKTravelEngineThrottle *)self eventExternalURL];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(eventExternalURL, "hash")}];
  stringValue = [v4 stringValue];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@throttle-%@", @"com.apple.calaccessd.travelEngine.", stringValue];

  return v6;
}

- (BOOL)receivedAlarmNamed:(id)named
{
  v14 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  alarmName = [(EKTravelEngineThrottle *)self alarmName];
  v6 = [namedCopy isEqualToString:alarmName];

  if (v6)
  {
    v7 = *MEMORY[0x277CC5980];
    if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = namedCopy;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "EKTravelEngineThrottle received alarm named: %{public}@", buf, 0xCu);
    }

    throttleQueue = [(EKTravelEngineThrottle *)self throttleQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__EKTravelEngineThrottle_receivedAlarmNamed___block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_sync(throttleQueue, block);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_updateEmissionDate:(id)date
{
  v19 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  if (dateCopy)
  {
    if ([dateCopy CalIsBeforeOrSameAsDate:calSimulatedDateForNow])
    {
      v6 = *MEMORY[0x277CC5980];
      if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = dateCopy;
        v17 = 2112;
        v18 = calSimulatedDateForNow;
        _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "The given emission date %@ is before now %@.  Firing the emission block and uninstalling the timer.", &v15, 0x16u);
      }

      [(EKTravelEngineThrottle *)self _uninstallEmissionTimer];
      [(EKTravelEngineThrottle *)self _fireEmissionBlock];
    }

    else
    {
      nextEmissionDate = [(EKTravelEngineThrottle *)self nextEmissionDate];
      if (nextEmissionDate && (v9 = nextEmissionDate, -[EKTravelEngineThrottle nextEmissionDate](self, "nextEmissionDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isEqualToDate:dateCopy], v10, v9, v11))
      {
        v12 = *MEMORY[0x277CC5980];
        if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = dateCopy;
          _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "The given emission date is the same as the existing emission date.  Will not update the emission timer.  Emission date: [%@]", &v15, 0xCu);
        }
      }

      else
      {
        v13 = *MEMORY[0x277CC5980];
        if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16 = dateCopy;
          _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "updating emissionDate to [%{public}@]", &v15, 0xCu);
        }

        [(EKTravelEngineThrottle *)self _uninstallEmissionTimer];
        [(EKTravelEngineThrottle *)self setNextEmissionDate:dateCopy];
        [(EKTravelEngineThrottle *)self _createEmissionTimerWithDate:dateCopy];
      }
    }
  }

  else
  {
    v7 = *MEMORY[0x277CC5980];
    if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "'nil' emission timer given.  Uninstalling emission timer.", &v15, 2u);
    }

    [(EKTravelEngineThrottle *)self _uninstallEmissionTimer];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fireEmissionBlock
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Firing emission block for travel engine throttle: [%@]", &v7, 0xCu);
  }

  emissionBlock = [(EKTravelEngineThrottle *)self emissionBlock];
  v5 = emissionBlock;
  if (emissionBlock)
  {
    (*(emissionBlock + 16))(emissionBlock);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createEmissionTimerWithDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  v6 = ((ceil(v5) + time(0)) * 1000000000.0);
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v7, *MEMORY[0x277CF7888], v6);
  v8 = *MEMORY[0x277CF7880];
  alarmName = [(EKTravelEngineThrottle *)self alarmName];
  [alarmName UTF8String];
  xpc_set_event();

  v10 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = dateCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Created a new emission timer that will fire on the emission date: [%@]", &v15, 0xCu);
  }

  [objc_opt_class() _requestHypothesisRefreshInterval];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-v11];
  requestHypothesisRefreshBlock = [(EKTravelEngineThrottle *)self requestHypothesisRefreshBlock];
  (requestHypothesisRefreshBlock)[2](requestHypothesisRefreshBlock, v12);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallEmissionTimer
{
  v10 = *MEMORY[0x277D85DE8];
  cancelHypothesisRequestRefreshBlock = [(EKTravelEngineThrottle *)self cancelHypothesisRequestRefreshBlock];
  cancelHypothesisRequestRefreshBlock[2]();

  v4 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Uninstalling timer for travel engine throttle: [%@].", &v8, 0xCu);
  }

  v5 = *MEMORY[0x277CF7880];
  alarmName = [(EKTravelEngineThrottle *)self alarmName];
  [alarmName UTF8String];
  xpc_set_event();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_emissionTimerFired
{
  v3 = MEMORY[0x277CC5980];
  v4 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Emission timer fired", buf, 2u);
  }

  [(EKTravelEngineThrottle *)self setNextEmissionDate:0];
  v5 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Cleared out the next emission date due to emission timer firing.", v6, 2u);
  }

  [(EKTravelEngineThrottle *)self _fireEmissionBlock];
  [(EKTravelEngineThrottle *)self _uninstallEmissionTimer];
}

- (void)_significantTimeChangeNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5980];
  if (os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7908];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  throttleQueue = [(EKTravelEngineThrottle *)self throttleQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__EKTravelEngineThrottle__significantTimeChangeNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(throttleQueue, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __68__EKTravelEngineThrottle__significantTimeChangeNotificationReceived__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextEmissionDate];
  [*(a1 + 32) _uninstallEmissionTimer];
  if (v2)
  {
    [*(a1 + 32) setNextEmissionDate:0];
    [*(a1 + 32) _updateEmissionDate:v2];
  }
}

@end