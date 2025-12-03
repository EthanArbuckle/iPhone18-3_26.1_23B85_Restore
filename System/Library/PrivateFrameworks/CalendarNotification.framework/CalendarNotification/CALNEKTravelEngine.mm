@interface CALNEKTravelEngine
- (CALNEKTravelEngine)initWithTravelEngine:(id)engine;
- (CALNTravelEngineDelegate)delegate;
- (id)_adviceReceivedBlock;
- (id)_authorizationChangedBlock;
- (id)_eventSignficantlyChangedBlock;
- (void)activate;
- (void)cancelHypothesisRefreshRequestForEventWithExternalURL:(id)l;
- (void)ceaseMonitoringForEventWithExternalURL:(id)l;
- (void)deactivate;
- (void)didRegisterForAlarms;
- (void)receivedAlarmNamed:(id)named;
- (void)receivedNotificationNamed:(id)named;
- (void)requestHypothesisRefreshAtDate:(id)date forEventWithExternalURL:(id)l;
- (void)sendFeedbackForPostingLeaveByNotificationForEventWithExternalURL:(id)l;
- (void)sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:(id)l;
@end

@implementation CALNEKTravelEngine

- (CALNEKTravelEngine)initWithTravelEngine:(id)engine
{
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = CALNEKTravelEngine;
  v6 = [(CALNEKTravelEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_travelEngine, engine);
  }

  return v7;
}

- (void)activate
{
  if ([MEMORY[0x277CC5A50] isTravelAdvisorySupported])
  {
    travelEngine = [(CALNEKTravelEngine *)self travelEngine];
    _adviceReceivedBlock = [(CALNEKTravelEngine *)self _adviceReceivedBlock];
    [travelEngine setAdviceBlock:_adviceReceivedBlock];

    _eventSignficantlyChangedBlock = [(CALNEKTravelEngine *)self _eventSignficantlyChangedBlock];
    [travelEngine setEventSignificantlyChangedBlock:_eventSignficantlyChangedBlock];

    objc_initWeak(location, self);
    objc_initWeak(&from, travelEngine);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__CALNEKTravelEngine_activate__block_invoke;
    v6[3] = &unk_278D6FA40;
    objc_copyWeak(&v7, location);
    objc_copyWeak(&v8, &from);
    [travelEngine setAuthorizationChangedBlock:v6];
    [(CALNEKTravelEngine *)self setActive:1];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    travelEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(travelEngine, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_242909000, travelEngine, OS_LOG_TYPE_DEFAULT, "Travel advisories are not supported. Will not start travel engine.", location, 2u);
    }
  }
}

void __30__CALNEKTravelEngine_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 authorized];
  v4 = [WeakRetained _authorizationChangedBlock];
  v4[2](v4, v3);
}

- (void)deactivate
{
  if ([MEMORY[0x277CC5A50] isTravelAdvisorySupported])
  {
    [(CALNEKTravelEngine *)self setActive:0];
    travelEngine = [(CALNEKTravelEngine *)self travelEngine];
    [travelEngine stop];
  }

  else
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Travel advisories are not supported. Will not stop travel engine.", buf, 2u);
    }
  }
}

- (void)receivedNotificationNamed:(id)named
{
  namedCopy = named;
  if ([(CALNEKTravelEngine *)self isActive])
  {
    travelEngine = [(CALNEKTravelEngine *)self travelEngine];
    [travelEngine handleDarwinNotification:namedCopy];
  }

  else
  {
    travelEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(travelEngine, OS_LOG_TYPE_ERROR))
    {
      [CALNEKTravelEngine receivedNotificationNamed:];
    }
  }
}

- (void)didRegisterForAlarms
{
  isActive = [(CALNEKTravelEngine *)self isActive];
  v4 = +[CALNLogSubsystem calendar];
  travelEngine = v4;
  if (isActive)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_242909000, travelEngine, OS_LOG_TYPE_DEFAULT, "Travel engine wrapper received did register for did register for alarms message. Starting travel engine.", v6, 2u);
    }

    travelEngine = [(CALNEKTravelEngine *)self travelEngine];
    [travelEngine start];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [CALNEKTravelEngine didRegisterForAlarms];
  }
}

- (void)receivedAlarmNamed:(id)named
{
  namedCopy = named;
  if ([(CALNEKTravelEngine *)self isActive])
  {
    travelEngine = [(CALNEKTravelEngine *)self travelEngine];
    [travelEngine receivedAlarmNamed:namedCopy];
  }

  else
  {
    travelEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(travelEngine, OS_LOG_TYPE_ERROR))
    {
      [CALNEKTravelEngine receivedAlarmNamed:];
    }
  }
}

- (void)requestHypothesisRefreshAtDate:(id)date forEventWithExternalURL:(id)l
{
  lCopy = l;
  dateCopy = date;
  travelEngine = [(CALNEKTravelEngine *)self travelEngine];
  [travelEngine requestHypothesisRefreshAtDate:dateCopy forEventWithExternalURL:lCopy];
}

- (void)cancelHypothesisRefreshRequestForEventWithExternalURL:(id)l
{
  lCopy = l;
  travelEngine = [(CALNEKTravelEngine *)self travelEngine];
  [travelEngine cancelHypothesisRefreshRequestForEventWithExternalURL:lCopy];
}

- (void)ceaseMonitoringForEventWithExternalURL:(id)l
{
  lCopy = l;
  travelEngine = [(CALNEKTravelEngine *)self travelEngine];
  [travelEngine ceaseMonitoringForEventWithExternalURL:lCopy];
}

- (void)sendFeedbackForPostingLeaveByNotificationForEventWithExternalURL:(id)l
{
  lCopy = l;
  travelEngine = [(CALNEKTravelEngine *)self travelEngine];
  [travelEngine sendFeedbackForPostingLeaveByNotificationForEventWithExternalURL:lCopy];
}

- (void)sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:(id)l
{
  lCopy = l;
  travelEngine = [(CALNEKTravelEngine *)self travelEngine];
  [travelEngine sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:lCopy];
}

- (id)_adviceReceivedBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CALNEKTravelEngine__adviceReceivedBlock__block_invoke;
  v4[3] = &unk_278D6FA68;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x245D1CD80](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __42__CALNEKTravelEngine__adviceReceivedBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained delegate];
    v10 = v9;
    if (v9)
    {
      [v9 travelEngine:v8 receivedHypothesis:v6 eventExternalURL:v5];
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __42__CALNEKTravelEngine__adviceReceivedBlock__block_invoke_cold_1();
      }
    }
  }
}

- (id)_eventSignficantlyChangedBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__CALNEKTravelEngine__eventSignficantlyChangedBlock__block_invoke;
  v4[3] = &unk_278D6FA90;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x245D1CD80](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __52__CALNEKTravelEngine__eventSignficantlyChangedBlock__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    v7 = v6;
    if (v6)
    {
      [v6 travelEngine:v5 eventSignificantlyChangedWithEventExternalURL:v3];
    }

    else
    {
      v8 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __52__CALNEKTravelEngine__eventSignficantlyChangedBlock__block_invoke_cold_1();
      }
    }
  }
}

- (id)_authorizationChangedBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__CALNEKTravelEngine__authorizationChangedBlock__block_invoke;
  v4[3] = &unk_278D6FAB8;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x245D1CD80](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __48__CALNEKTravelEngine__authorizationChangedBlock__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    v6 = v5;
    if (v5)
    {
      [v5 travelEngine:v4 authorizationChanged:a2];
    }

    else
    {
      v7 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __48__CALNEKTravelEngine__authorizationChangedBlock__block_invoke_cold_1();
      }
    }
  }
}

- (CALNTravelEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receivedNotificationNamed:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedAlarmNamed:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__CALNEKTravelEngine__adviceReceivedBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__CALNEKTravelEngine__eventSignficantlyChangedBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__CALNEKTravelEngine__authorizationChangedBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end