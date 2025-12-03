@interface HDMirroredWorkoutAnalyticsCollector
- (HDMirroredWorkoutAnalyticsCollector)init;
- (uint64_t)_reset;
- (void)sentData;
- (void)startMirroring;
- (void)startedMirroring;
- (void)stoppedMirroring;
@end

@implementation HDMirroredWorkoutAnalyticsCollector

- (HDMirroredWorkoutAnalyticsCollector)init
{
  v5.receiver = self;
  v5.super_class = HDMirroredWorkoutAnalyticsCollector;
  v2 = [(HDMirroredWorkoutAnalyticsCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HDMirroredWorkoutAnalyticsCollector *)v2 _reset];
  }

  return v3;
}

- (uint64_t)_reset
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(HDMirroredWorkoutAnalyticEvent);
    v3 = *(v1 + 40);
    *(v1 + 40) = v2;

    v4 = [MEMORY[0x277CCD790] timerWithKey:@"StartMirroringTimerKey"];
    v5 = *(v1 + 8);
    *(v1 + 8) = v4;

    v6 = [MEMORY[0x277CCD790] timerWithKey:@"StopMirroringTimerKey"];
    v7 = *(v1 + 16);
    *(v1 + 16) = v6;

    v8 = [MEMORY[0x277CCD790] timerWithKey:@"SendDataTimerKey"];
    v9 = *(v1 + 24);
    *(v1 + 24) = v8;

    [*(v1 + 8) clear];
    [*(v1 + 16) clear];
    v10 = *(v1 + 24);

    return [v10 clear];
  }

  return result;
}

- (void)startMirroring
{
  self->_startTime = CFAbsoluteTimeGetCurrent();
  startMirroringTimer = self->_startMirroringTimer;

  [(HKPersistentTimer *)startMirroringTimer start];
}

- (void)startedMirroring
{
  timerValue = [(HKPersistentTimer *)self->_startMirroringTimer timerValue];

  if (timerValue)
  {
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToStartMirroring:[(HKPersistentTimer *)self->_startMirroringTimer elapsedMilliSeconds]];
    startMirroringTimer = self->_startMirroringTimer;

    [(HKPersistentTimer *)startMirroringTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful start of mirrored workout: timer does not exist.", v6, 2u);
    }
  }
}

- (void)stoppedMirroring
{
  timerValue = [(HKPersistentTimer *)self->_stopMirroringTimer timerValue];

  if (timerValue)
  {
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMirroringDuration:(CFAbsoluteTimeGetCurrent() - self->_startTime)];
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToStopMirroring:[(HKPersistentTimer *)self->_stopMirroringTimer elapsedMilliSeconds]];
    stopMirroringTimer = self->_stopMirroringTimer;

    [(HKPersistentTimer *)stopMirroringTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful stop of mirrored workout: timer does not exist.", v6, 2u);
    }
  }
}

- (void)sentData
{
  timerValue = [(HKPersistentTimer *)self->_sendDataTimer timerValue];

  if (timerValue)
  {
    elapsedMilliSeconds = [(HKPersistentTimer *)self->_sendDataTimer elapsedMilliSeconds];
    if (elapsedMilliSeconds <= [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent maxTimeTakenToSendData])
    {
      if (elapsedMilliSeconds < [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent minTimeTakenToSendData])
      {
        [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMinTimeTakenToSendData:elapsedMilliSeconds];
      }
    }

    else
    {
      [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setMaxTimeTakenToSendData:elapsedMilliSeconds];
    }

    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setTimeTakenToSendData:(elapsedMilliSeconds + [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent timeTakenToSendData])];
    [(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent setNumberOfSendRequests:[(HDMirroredWorkoutAnalyticEvent *)self->_mirroredWorkoutEvent numberOfSendRequests]+ 1];
    sendDataTimer = self->_sendDataTimer;

    [(HKPersistentTimer *)sendDataTimer clear];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to track successful stop of mirrored workout: timer does not exist.", v7, 2u);
    }
  }
}

@end