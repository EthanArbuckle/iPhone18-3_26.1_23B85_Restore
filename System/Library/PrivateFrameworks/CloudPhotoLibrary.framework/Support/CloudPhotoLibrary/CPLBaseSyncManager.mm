@interface CPLBaseSyncManager
- (CPLBaseSyncManager)initWithAbstractObject:(id)a3;
- (int64_t)_baseProgressForState:(unint64_t)a3 totalUnits:(int64_t *)a4;
- (void)_actuallyStartShowingIndicatorLocked;
- (void)_actuallyStopShowingIndicatorLocked;
- (void)_emitActivityStateLog;
- (void)_startShowingIndicator:(id)a3;
- (void)_stopShowingIndicator:(id)a3;
- (void)_updateOverridingForeground;
- (void)didFinishSyncSession;
- (void)didMoveToState:(unint64_t)a3;
- (void)didProgress:(float)a3 userInfo:(id)a4 forState:(unint64_t)a5;
- (void)prepareForClose;
- (void)setSyncSessionShouldBeForeground:(BOOL)a3;
- (void)syncSessionDidFailWithError:(id)a3;
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
      v6 = [(CPLBaseSyncManager *)self abstractObject];
      v7 = [v6 engineLibrary];
      v8 = [v7 systemMonitor];
      [v8 stopOverridingSystemBudgets:8 reason:2];

      self->_overridingForeground = 0;
    }
  }

  else if (!self->_overridingForeground)
  {
    v3 = [(CPLBaseSyncManager *)self abstractObject];
    v4 = [v3 engineLibrary];
    v5 = [v4 systemMonitor];
    [v5 startOverridingSystemBudgets:8 reason:2];

    self->_overridingForeground = 1;
  }
}

- (CPLBaseSyncManager)initWithAbstractObject:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPLBaseSyncManager;
  v3 = [(CPLBaseSyncManager *)&v10 initWithAbstractObject:a3];
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

- (void)_startShowingIndicator:(id)a3
{
  v4 = a3;
  indicatorQueue = self->_indicatorQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014F05C;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C50;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = indicatorQueue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_stopShowingIndicator:(id)a3
{
  v5 = a3;
  indicatorQueue = self->_indicatorQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014F1E4;
  v11[3] = &unk_1002733C8;
  v11[4] = self;
  v12 = v5;
  v13 = a2;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C50;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = indicatorQueue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)setSyncSessionShouldBeForeground:(BOOL)a3
{
  self->_foreground = a3;
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
    v7 = [(CPLBaseSyncManager *)self abstractObject];
    v8 = [v7 engineLibrary];
    v9 = [v8 libraryIdentifier];
    v10 = [(_CPLProgress *)v6 initWithIdentifier:v9 firstSyncOfMainLibrary:0];
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
  v3 = [(CPLBaseSyncManager *)self abstractObject];
  v4 = [v3 engineLibrary];
  [v4 reportQuarantineCountIfNecessary];
}

- (int64_t)_baseProgressForState:(unint64_t)a3 totalUnits:(int64_t *)a4
{
  if (a3 < 0xE)
  {
    if (a3)
    {
      v5 = 8 * a3 - 8;
      *a4 = *(&qword_1002D2A20 + v5);
      return *(&qword_1002D2A90 + v5);
    }

    else
    {
      result = 0;
      *a4 = 0;
    }
  }

  else
  {
    *a4 = 0;
    return qword_1002D2A18;
  }

  return result;
}

- (void)didMoveToState:(unint64_t)a3
{
  self->_currentState = a3;
  if (a3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100002F50();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [CPLEngineSyncManager shortDescriptionForState:a3];
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
      if (a3 <= 0xB && ((0x631u >> (a3 - 1)) & 1) != 0)
      {
        [(_CPLProgress *)self->_progress setUserInfoObject:off_10027B438[a3 - 1] forKey:CPLSyncProgressStateKey];
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
      v5 = [(NSCountedSet *)self->_activities allObjects];
      v17 = [v5 componentsJoinedByString:{@", "}];
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

- (void)syncSessionDidFailWithError:(id)a3
{
  v4 = a3;
  if ([v4 isCPLOperationCancelledError])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100002F50();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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
    if (![v4 isCPLErrorWithCode:10000])
    {
      v14 = [(CPLBaseSyncManager *)self abstractObject];
      v15 = [v14 engineLibrary];
      v5 = [v15 transport];

      v16 = [v4 userInfo];
      v17 = [v16 objectForKey:NSUnderlyingErrorKey];

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

          v20 = [v5 bestErrorForUnderlyingError:v17];
          v21 = 136315650;
          v22 = v19;
          v23 = 2112;
          v24 = v4;
          v25 = 2112;
          v26 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Sync session did fail with error%s: %@, underlying error: %@", &v21, 0x20u);
        }
      }

      goto LABEL_17;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100002F50();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        [v4 localizedDescription];
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

- (void)didProgress:(float)a3 userInfo:(id)a4 forState:(unint64_t)a5
{
  v8 = a4;
  self->_currentState = a5;
  currentState = a5;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_100002F50();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [CPLEngineSyncManager shortDescriptionForState:a5];
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
      v22 = (a3 * 100.0);
      v23 = 2080;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Sync session progress: %@/%lu%%%s", buf, 0x20u);
    }

    currentState = self->_currentState;
  }

  *buf = 0;
  v14 = [(CPLBaseSyncManager *)self _baseProgressForState:currentState totalUnits:buf];
  v15 = 0;
  if (a5 - 3 <= 0xA)
  {
    v15 = qword_10024B8F0[a5 - 3];
  }

  v16 = (*buf * a3);
  progress = self->_progress;
  v18 = [NSNumber numberWithUnsignedInteger:v15];
  [(_CPLProgress *)progress setUserInfoObject:v18 forKey:CPLSyncProgressStateKey];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10014F790;
  v19[3] = &unk_10027B3B8;
  v19[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v19];
  [(_CPLProgress *)self->_progress setCompletedUnitCount:v14 + v16];
}

@end