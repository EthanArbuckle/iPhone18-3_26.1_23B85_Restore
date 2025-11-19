@interface MediaStreamMonitor
- (MSIOSAlbumSharingDaemon)albumSharingDaemon;
- (MediaStreamMonitor)init;
- (id)_dormantTimerWithSelector:(SEL)a3;
- (id)_scheduleNextBTAJobNextActivityDate:(id)a3 serviceName:(id)a4;
- (id)scheduleWakeupTaskAfter:(id)a3;
- (void)MSAlbumSharingDaemonDidIdle:(id)a3;
- (void)MSAlbumSharingDaemonDidUnidle:(id)a3;
- (void)_didIdle;
- (void)_didUnidle;
- (void)_resetIdleTimer;
- (void)_startIdleTimerWithInterval:(double)a3;
- (void)_stopIdleTimer;
- (void)albumSharingDaemonPokeTimerDidFire:(id)a3;
- (void)dealloc;
- (void)deregisterPluggedInTask;
- (void)deregisterWakeupTask;
- (void)handlePluggedInTask:(id)a3;
- (void)handleWakeupTask:(id)a3;
- (void)mstreamdIdleTimerDidFire:(id)a3;
- (void)schedulePluggedInTask;
@end

@implementation MediaStreamMonitor

- (MSIOSAlbumSharingDaemon)albumSharingDaemon
{
  WeakRetained = objc_loadWeakRetained(&self->_albumSharingDaemon);

  return WeakRetained;
}

- (void)handlePluggedInTask:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Checking for pending activities because external power has been applied.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_albumSharingDaemon);
  [WeakRetained retryOutstandingActivities];

  [v4 setTaskCompleted];
}

- (void)deregisterPluggedInTask
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "com.apple.mediastream.mstreamd.pluggedin";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Deregistering task %s", &v4, 0xCu);
  }

  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.pluggedin"];
  [v2 deregisterTaskWithIdentifier:v3];
}

- (void)schedulePluggedInTask
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.pluggedin"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000015A8;
  v14[3] = &unk_1000187F8;
  v14[4] = self;
  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v14];

  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.pluggedin"];
  v7 = [v5 taskRequestForIdentifier:v6];

  if (!v7)
  {
    v8 = [BGNonRepeatingSystemTaskRequest alloc];
    v9 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.pluggedin"];
    v7 = [v8 initWithIdentifier:v9];

    [v7 setRequiresExternalPower:1];
    [v7 setRequiresNetworkConnectivity:1];
    [v7 setRequiresInexpensiveNetworkConnectivity:1];
    [v7 setRandomInitialDelay:2.0];
    [v7 setScheduleAfter:10.0];
    [v7 setTrySchedulingBefore:86400.0];
    v10 = +[BGSystemTaskScheduler sharedScheduler];
    v13 = 0;
    v11 = [v10 submitTaskRequest:v7 error:&v13];
    v12 = v13;

    if ((v11 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BGST request failed: %@", buf, 0xCu);
    }
  }
}

- (void)mstreamdIdleTimerDidFire:(id)a3
{
  v4 = a3;
  v5 = +[NSThread currentThread];
  v6 = +[NSThread mainThread];

  if (v5 == v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Idle timer fired.", &v17, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_albumSharingDaemon);
    v8 = [WeakRetained nextActivityDate];

    v9 = [(MediaStreamMonitor *)self _scheduleNextBTAJobNextActivityDate:v8 serviceName:@"Shared Stream"];
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Monitoring for external power.", &v17, 2u);
      }

      [(MediaStreamMonitor *)self schedulePluggedInTask];
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v10)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Not monitoring for external power.", &v17, 2u);
      }

      [(MediaStreamMonitor *)self deregisterPluggedInTask];
      if (v9)
      {
LABEL_9:
        if (!v8)
        {
LABEL_26:
          if (byte_10001DD28 != 1)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

LABEL_15:
        v11 = objc_loadWeakRetained(&self->_albumSharingDaemon);
        v12 = [v11 isWaitingForAuth];

        if (v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "We are waiting for the user to refresh their iCloud passcode. Not quitting.", &v17, 2u);
          }

LABEL_25:
          [(MediaStreamMonitor *)self _startIdleTimerWithInterval:1800.0];
          goto LABEL_26;
        }

        if (v9)
        {
          v13 = v9;
          [v13 timeIntervalSinceNow];
          if (v14 > 0.0 && v14 < 1800.0)
          {
            v15 = objc_loadWeakRetained(&self->_albumSharingDaemon);
            v16 = [v15 isInRetryState];

            if (v16)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v17 = 138412290;
                v18 = v13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "We have retries pending. The next event is scheduled for %@, which is less than 30 minutes away. Not quitting.", &v17, 0xCu);
              }

              goto LABEL_25;
            }
          }
        }

        [(NSTimer *)self->_idleTimer invalidate];
        byte_10001DD28 = 1;
LABEL_30:
        dispatch_async(&_dispatch_main_q, &stru_100018818);
LABEL_31:

        goto LABEL_32;
      }
    }

    byte_10001DD28 = 1;
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  [(MediaStreamMonitor *)self performSelectorOnMainThread:"mstreamdIdleTimerDidFire:" withObject:v4 waitUntilDone:1];
LABEL_32:
}

- (void)handleWakeupTask:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "...checking for pending Shared Photo Stream activities.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_albumSharingDaemon);
  [WeakRetained retryOutstandingActivities];

  [v4 setTaskCompleted];
}

- (void)deregisterWakeupTask
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "com.apple.mediastream.mstreamd.as.wakeup";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Deregistering task %s", &v4, 0xCu);
  }

  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.as.wakeup"];
  [v2 deregisterTaskWithIdentifier:v3];
}

- (id)scheduleWakeupTaskAfter:(id)a3
{
  v4 = a3;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.as.wakeup"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001DD4;
  v20[3] = &unk_1000187F8;
  v20[4] = self;
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v20];

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.as.wakeup"];
  v9 = [v7 taskRequestForIdentifier:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Scheduling Photo Stream job for %{public}@", buf, 0xCu);
    }

    v11 = [BGNonRepeatingSystemTaskRequest alloc];
    v12 = [NSString stringWithUTF8String:"com.apple.mediastream.mstreamd.as.wakeup"];
    v9 = [v11 initWithIdentifier:v12];

    [v9 setResourceIntensive:1];
    [v9 setRequiresNetworkConnectivity:1];
    [v9 setRequiresInexpensiveNetworkConnectivity:0];
    [v9 setRequiresUnconstrainedNetworkConnectivity:0];
    [v4 timeIntervalSinceNow];
    if (v13 <= 0.0)
    {
      v14 = +[NSDate now];

      v4 = v14;
    }

    else
    {
      [v9 setScheduleAfter:?];
    }

    [v9 setTrySchedulingBefore:86400.0];
    v15 = +[BGSystemTaskScheduler sharedScheduler];
    v19 = 0;
    v16 = [v15 submitTaskRequest:v9 error:&v19];
    v17 = v19;

    if (v16)
    {
      v10 = v4;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v17;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "BGST request failed: %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)_scheduleNextBTAJobNextActivityDate:(id)a3 serviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Checking on job state for %{public}@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [(MediaStreamMonitor *)self scheduleWakeupTaskAfter:v6];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "No jobs scheduled for %{public}@.", &v10, 0xCu);
    }

    [(MediaStreamMonitor *)self deregisterWakeupTask];
    v8 = 0;
  }

  return v8;
}

- (void)albumSharingDaemonPokeTimerDidFire:(id)a3
{
  v4 = a3;
  v5 = +[NSDate distantFuture];
  [v4 setFireDate:v5];

  WeakRetained = objc_loadWeakRetained(&self->_albumSharingDaemon);
  [WeakRetained retryOutstandingActivities];
}

- (void)MSAlbumSharingDaemonDidUnidle:(id)a3
{
  albumSharingDaemonPokeTimer = self->_albumSharingDaemonPokeTimer;
  v5 = +[NSDate distantFuture];
  [(NSTimer *)albumSharingDaemonPokeTimer setFireDate:v5];

  [(MediaStreamMonitor *)self _didUnidle];
}

- (void)MSAlbumSharingDaemonDidIdle:(id)a3
{
  v9 = [a3 nextActivityDate];
  if (v9)
  {
    v4 = +[NSDate distantPast];
    v5 = [v9 isEqualToDate:v4];

    if ((v5 & 1) == 0)
    {
      v6 = v9;
      [v6 timeIntervalSinceNow];
      if (v7 < 300.0)
      {
        v8 = [NSDate dateWithTimeIntervalSinceNow:?];

        v6 = v8;
      }

      [(NSTimer *)self->_albumSharingDaemonPokeTimer setFireDate:v6];
    }
  }

  [(MediaStreamMonitor *)self _didIdle];
}

- (void)_didUnidle
{
  busyCount = self->_busyCount;
  self->_busyCount = busyCount + 1;
  if (!busyCount)
  {
    v9 = v2;
    v10 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Daemon unidled.", v8, 2u);
    }

    [(MediaStreamMonitor *)self _stopIdleTimer];
    idleStateNotificationTimer = self->_idleStateNotificationTimer;
    v7 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    [(NSTimer *)idleStateNotificationTimer setFireDate:v7];
  }
}

- (void)_resetIdleTimer
{
  v3 = [(NSTimer *)self->_idleTimer fireDate];
  v4 = +[NSDate date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 < 40.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Extending exit timer period.", v7, 2u);
    }

    [(MediaStreamMonitor *)self _startIdleTimerWithInterval:40.0];
  }
}

- (void)_didIdle
{
  v4 = self->_busyCount - 1;
  self->_busyCount = v4;
  if (!v4)
  {
    v14 = v2;
    v15 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Daemon idled.", buf, 2u);
    }

    v6 = +[NSThread currentThread];
    v7 = +[NSThread mainThread];

    if (v6 == v7)
    {
      v8 = +[MSPauseManager sharedManager];
      v9 = [v8 isPaused];

      if (v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 0;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Not starting exit timer because daemon is paused.", v12, 2u);
        }
      }

      else
      {
        [(MediaStreamMonitor *)self _startIdleTimerWithInterval:40.0];
      }

      idleStateNotificationTimer = self->_idleStateNotificationTimer;
      v11 = [NSDate dateWithTimeIntervalSinceNow:1.0];
      [(NSTimer *)idleStateNotificationTimer setFireDate:v11];
    }

    else
    {
      [(MediaStreamMonitor *)self performSelectorOnMainThread:"_didIdle" withObject:0 waitUntilDone:1];
    }
  }
}

- (void)_stopIdleTimer
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Stopping idle timer", v5, 2u);
  }

  idleTimer = self->_idleTimer;
  v4 = +[NSDate distantFuture];
  [(NSTimer *)idleTimer setFireDate:v4];
}

- (void)_startIdleTimerWithInterval:(double)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Starting idle check timer with an interval of %.1f seconds.", &v7, 0xCu);
  }

  idleTimer = self->_idleTimer;
  v6 = [NSDate dateWithTimeIntervalSinceNow:a3];
  [(NSTimer *)idleTimer setFireDate:v6];
}

- (void)dealloc
{
  [(NSTimer *)self->_idleStateNotificationTimer invalidate];
  [(NSTimer *)self->_idleTimer invalidate];
  [(NSTimer *)self->_albumSharingDaemonPokeTimer invalidate];
  v3.receiver = self;
  v3.super_class = MediaStreamMonitor;
  [(MediaStreamMonitor *)&v3 dealloc];
}

- (MediaStreamMonitor)init
{
  v11.receiver = self;
  v11.super_class = MediaStreamMonitor;
  v2 = [(MediaStreamMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MediaStreamMonitor *)v2 _dormantTimerWithSelector:"mstreamdIdleTimerDidFire:"];
    idleTimer = v3->_idleTimer;
    v3->_idleTimer = v4;

    v6 = +[NSRunLoop currentRunLoop];
    [v6 addTimer:v3->_idleTimer forMode:NSDefaultRunLoopMode];

    v7 = [(MediaStreamMonitor *)v3 _dormantTimerWithSelector:"albumSharingDaemonPokeTimerDidFire:"];
    albumSharingDaemonPokeTimer = v3->_albumSharingDaemonPokeTimer;
    v3->_albumSharingDaemonPokeTimer = v7;

    v9 = +[NSRunLoop currentRunLoop];
    [v9 addTimer:v3->_albumSharingDaemonPokeTimer forMode:NSDefaultRunLoopMode];
  }

  return v3;
}

- (id)_dormantTimerWithSelector:(SEL)a3
{
  v5 = [NSTimer alloc];
  v6 = +[NSDate distantFuture];
  v7 = [v5 initWithFireDate:v6 interval:self target:a3 selector:0 userInfo:1 repeats:1000000000.0];

  return v7;
}

@end