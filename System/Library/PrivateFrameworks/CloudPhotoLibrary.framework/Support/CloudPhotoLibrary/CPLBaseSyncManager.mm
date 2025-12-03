@interface CPLBaseSyncManager
- (CPLBaseSyncManager)initWithAbstractObject:(id)object;
- (int64_t)_baseProgressForState:(unint64_t)state totalUnits:(int64_t *)units;
- (void)_actuallyStartShowingIndicatorLocked;
- (void)_actuallyStopShowingIndicatorLocked;
- (void)_emitActivityStateLog;
- (void)_startShowingIndicator:(id)indicator;
- (void)_stopShowingIndicator:(id)indicator;
- (void)_updateOverridingForeground;
- (void)didFinishSyncSession;
- (void)didMoveToState:(unint64_t)state;
- (void)didProgress:(float)progress userInfo:(id)info forState:(unint64_t)state;
- (void)prepareForClose;
- (void)setSyncSessionShouldBeForeground:(BOOL)foreground;
- (void)syncSessionDidFailWithError:(id)error;
- (void)syncSessionDidSucceed;
- (void)willStartSyncSession;
@end

@implementation CPLBaseSyncManager

- (void)_updateOverridingForeground
{
  if (self->_closed || !self->_foreground || self->_currentState - 1 > 0xB)
  {
    if (self->_overridingForeground)
    {
      abstractObject = [(CPLBaseSyncManager *)self abstractObject];
      engineLibrary = [abstractObject engineLibrary];
      systemMonitor = [engineLibrary systemMonitor];
      [systemMonitor stopOverridingSystemBudgets:8 reason:2];

      self->_overridingForeground = 0;
    }
  }

  else if (!self->_overridingForeground)
  {
    abstractObject2 = [(CPLBaseSyncManager *)self abstractObject];
    engineLibrary2 = [abstractObject2 engineLibrary];
    systemMonitor2 = [engineLibrary2 systemMonitor];
    [systemMonitor2 startOverridingSystemBudgets:8 reason:2];

    self->_overridingForeground = 1;
  }
}

- (CPLBaseSyncManager)initWithAbstractObject:(id)object
{
  v10.receiver = self;
  v10.super_class = CPLBaseSyncManager;
  v3 = [(CPLBaseSyncManager *)&v10 initWithAbstractObject:object];
  if (v3)
  {
    v4 = CPLCopyDefaultSerialQueueAttributes();
    v5 = dispatch_queue_create("com.apple.cpl.syncindicator", v4);
    indicatorQueue = v3->_indicatorQueue;
    v3->_indicatorQueue = v5;

    v7 = objc_alloc_init(NSCountedSet);
    activities = v3->_activities;
    v3->_activities = v7;

    v3->_currentState = 14;
  }

  return v3;
}

- (void)_actuallyStartShowingIndicatorLocked
{
  if (self->_startShowingIndicatorTime == 0.0 && [(CPLBaseSyncManager *)self _shouldShowIndicator])
  {
    sub_1001B9A4C(self, &self->_startShowingIndicatorTime);
  }

  ++self->_indicatorAge;
}

- (void)_actuallyStopShowingIndicatorLocked
{
  if (self->_startShowingIndicatorTime != 0.0)
  {
    v3 = CFAbsoluteTimeGetCurrent() - self->_startShowingIndicatorTime;
    if (v3 >= 1.0)
    {
      sub_1001B9B30(&self->_startShowingIndicatorTime, self);
    }

    else
    {
      indicatorAge = self->_indicatorAge;
      v5 = dispatch_walltime(0, ((1.0 - v3) * 1000000000.0));
      indicatorQueue = self->_indicatorQueue;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10014EEE8;
      v7[3] = &unk_100271F68;
      v7[4] = self;
      v7[5] = indicatorAge;
      dispatch_after(v5, indicatorQueue, v7);
    }
  }
}

- (void)_startShowingIndicator:(id)indicator
{
  indicatorCopy = indicator;
  indicatorQueue = self->_indicatorQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014F05C;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = indicatorCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C50;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = indicatorQueue;
  v8 = indicatorCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_stopShowingIndicator:(id)indicator
{
  indicatorCopy = indicator;
  indicatorQueue = self->_indicatorQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014F1E4;
  v11[3] = &unk_1002733C8;
  v11[4] = self;
  v12 = indicatorCopy;
  v13 = a2;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C50;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = indicatorQueue;
  v9 = indicatorCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)setSyncSessionShouldBeForeground:(BOOL)foreground
{
  self->_foreground = foreground;
  [(_CPLProgress *)self->_progress setForeground:?];

  [(CPLBaseSyncManager *)self _updateOverridingForeground];
}

- (void)willStartSyncSession
{
  if (!self->_closed && !self->_didStartSyncSession)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100002F50();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        if (self->_foreground)
        {
          v4 = " (foreground)";
        }

        else
        {
          v4 = "";
        }

        *v14 = 136315138;
        *&v14[4] = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Sync session is starting%s", v14, 0xCu);
      }
    }

    [(CPLBaseSyncManager *)self _startShowingIndicator:@"sync session"];
    [(CPLBaseSyncManager *)self beginClientWork:@"sync session"];
    progress = self->_progress;
    if (progress)
    {
      sub_1001B9DB4(&self->_progress, progress);
    }

    v6 = [_CPLProgress alloc];
    abstractObject = [(CPLBaseSyncManager *)self abstractObject];
    engineLibrary = [abstractObject engineLibrary];
    libraryIdentifier = [engineLibrary libraryIdentifier];
    v10 = [(_CPLProgress *)v6 initWithIdentifier:libraryIdentifier firstSyncOfMainLibrary:0];
    v11 = self->_progress;
    self->_progress = v10;

    if (qword_1002D2B20 != -1)
    {
      dispatch_once(&qword_1002D2B20, &stru_10027B418);
    }

    [(_CPLProgress *)self->_progress setTotalUnitCount:1000 * qword_1002D2A18];
    if (self->_currentState > 0xD)
    {
      v13 = self->_progress;
      v12 = 0;
    }

    else
    {
      v12 = [(CPLBaseSyncManager *)self _baseProgressForState:0 totalUnits:?];
      v13 = self->_progress;
    }

    [(_CPLProgress *)v13 setCompletedUnitCount:v12];
    [(_CPLProgress *)self->_progress setForeground:self->_foreground];
    [(_CPLProgress *)self->_progress publish];
    [(CPLBaseSyncManager *)self _updateOverridingForeground];
    self->_didStartSyncSession = 1;
  }
}

- (void)didFinishSyncSession
{
  if (self->_didStartSyncSession)
  {
    sub_1001B9E58(self, &self->_didStartSyncSession);
  }

  [(CPLBaseSyncManager *)self _updateOverridingForeground];
  abstractObject = [(CPLBaseSyncManager *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  [engineLibrary reportQuarantineCountIfNecessary];
}

- (int64_t)_baseProgressForState:(unint64_t)state totalUnits:(int64_t *)units
{
  if (state < 0xE)
  {
    if (state)
    {
      v5 = 8 * state - 8;
      *units = *(&qword_1002D2A20 + v5);
      return *(&qword_1002D2A90 + v5);
    }

    else
    {
      result = 0;
      *units = 0;
    }
  }

  else
  {
    *units = 0;
    return qword_1002D2A18;
  }

  return result;
}

- (void)didMoveToState:(unint64_t)state
{
  self->_currentState = state;
  if (state)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100002F50();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [CPLEngineSyncManager shortDescriptionForState:state];
        v7 = v6;
        if (self->_foreground)
        {
          v8 = " (foreground)";
        }

        else
        {
          v8 = "";
        }

        *v10 = 138412546;
        *&v10[4] = v6;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sync session moved to %@%s", v10, 0x16u);
      }
    }

    if (self->_progress)
    {
      *v10 = 0;
      v9 = [(CPLBaseSyncManager *)self _baseProgressForState:self->_currentState totalUnits:v10];
      if (state <= 0xB && ((0x631u >> (state - 1)) & 1) != 0)
      {
        [(_CPLProgress *)self->_progress setUserInfoObject:off_10027B438[state - 1] forKey:CPLSyncProgressStateKey];
      }

      [(_CPLProgress *)self->_progress setCompletedUnitCount:v9];
    }
  }

  [(CPLBaseSyncManager *)self _updateOverridingForeground];
}

- (void)prepareForClose
{
  self->_closed = 1;
  progress = self->_progress;
  if (progress)
  {
    [(_CPLProgress *)progress unpublish];
    v4 = self->_progress;
    self->_progress = 0;
  }

  [(CPLBaseSyncManager *)self _updateOverridingForeground];
}

- (void)_emitActivityStateLog
{
  if ([(NSCountedSet *)self->_activities count])
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v4 = sub_10014EDBC();
    if (sub_10014FD8C(v4))
    {
      allObjects = [(NSCountedSet *)self->_activities allObjects];
      v17 = [allObjects componentsJoinedByString:{@", "}];
      sub_10014FD7C();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  else
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v11 = sub_10014EDBC();
    if (sub_10014FD8C(v11))
    {
      sub_10014FD7C();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
    }
  }
}

- (void)syncSessionDidFailWithError:(id)error
{
  errorCopy = error;
  if ([errorCopy isCPLOperationCancelledError])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      transport = sub_100002F50();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        sub_100013984();
        _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }

LABEL_17:
    }
  }

  else
  {
    if (![errorCopy isCPLErrorWithCode:10000])
    {
      abstractObject = [(CPLBaseSyncManager *)self abstractObject];
      engineLibrary = [abstractObject engineLibrary];
      transport = [engineLibrary transport];

      userInfo = [errorCopy userInfo];
      v17 = [userInfo objectForKey:NSUnderlyingErrorKey];

      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = sub_100002F50();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if (self->_foreground)
          {
            v19 = " (foreground)";
          }

          else
          {
            v19 = "";
          }

          v20 = [transport bestErrorForUnderlyingError:v17];
          v21 = 136315650;
          v22 = v19;
          v23 = 2112;
          v24 = errorCopy;
          v25 = 2112;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Sync session did fail with error%s: %@, underlying error: %@", &v21, 0x20u);
        }
      }

      goto LABEL_17;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      transport = sub_100002F50();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        [errorCopy localizedDescription];
        v22 = v21 = 138412290;
        sub_100013984();
        _os_log_impl(v10, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 0xCu);
      }

      goto LABEL_17;
    }
  }
}

- (void)syncSessionDidSucceed
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100002F50();
    if (sub_10014FD8C(v4))
    {
      self->_foreground;
      sub_10014FD7C();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

- (void)didProgress:(float)progress userInfo:(id)info forState:(unint64_t)state
{
  infoCopy = info;
  self->_currentState = state;
  currentState = state;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_100002F50();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [CPLEngineSyncManager shortDescriptionForState:state];
      foreground = self->_foreground;
      *buf = 138412802;
      *&buf[4] = v11;
      if (foreground)
      {
        v13 = " (foreground)";
      }

      else
      {
        v13 = "";
      }

      v21 = 2048;
      v22 = (progress * 100.0);
      v23 = 2080;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sync session progress: %@/%lu%%%s", buf, 0x20u);
    }

    currentState = self->_currentState;
  }

  *buf = 0;
  v14 = [(CPLBaseSyncManager *)self _baseProgressForState:currentState totalUnits:buf];
  v15 = 0;
  if (state - 3 <= 0xA)
  {
    v15 = qword_10024B8F0[state - 3];
  }

  v16 = (*buf * progress);
  progress = self->_progress;
  v18 = [NSNumber numberWithUnsignedInteger:v15];
  [(_CPLProgress *)progress setUserInfoObject:v18 forKey:CPLSyncProgressStateKey];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014F790;
  v19[3] = &unk_10027B3B8;
  v19[4] = self;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v19];
  [(_CPLProgress *)self->_progress setCompletedUnitCount:v14 + v16];
}

@end