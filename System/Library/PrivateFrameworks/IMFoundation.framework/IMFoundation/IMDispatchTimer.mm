@interface IMDispatchTimer
- (void)fire;
- (void)invalidate;
- (void)updateTimerInterval:(unint64_t)interval repeats:(BOOL)repeats;
@end

@implementation IMDispatchTimer

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isValid)
  {
    if (selfCopy->_timerSource)
    {
      v5 = objc_msgSend_timer(IMIDSLog, v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        timerSource = selfCopy->_timerSource;
        v11 = 134218242;
        v12 = selfCopy;
        v13 = 2112;
        v14 = timerSource;
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer invalidate] {self: %p, _timerSource: %@}", &v11, 0x16u);
      }

      dispatch_source_cancel(selfCopy->_timerSource);
    }

    fireDate = selfCopy->_fireDate;
    selfCopy->_fireDate = 0;

    selfCopy->_timeInterval = 0.0;
    *&selfCopy->_isValid = 0;
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = 0;

    handlerBlock = selfCopy->_handlerBlock;
    selfCopy->_handlerBlock = 0;
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateTimerInterval:(unint64_t)interval repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v36 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isValid)
  {
    selfCopy->_timeInterval = interval;
    v9 = interval != -1 && repeatsCopy;
    selfCopy->_repeats = v9;
    if (interval == -1)
    {
      fireDate = selfCopy->_fireDate;
      selfCopy->_fireDate = 0;

      v13 = -1;
      v12 = -1000000000;
    }

    else
    {
      v10 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8);
      v11 = selfCopy->_fireDate;
      selfCopy->_fireDate = v10;

      v12 = 1000000000 * interval;
      v13 = dispatch_time(0, 1000000000 * interval);
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = -1;
    }

    dispatch_source_set_timer(selfCopy->_timerSource, v13, v15, 0x5F5E100uLL);
    v18 = objc_msgSend_timer(IMIDSLog, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      timerSource = selfCopy->_timerSource;
      v20 = @"NO";
      v22 = 134219522;
      if (repeatsCopy)
      {
        v20 = @"YES";
      }

      v23 = selfCopy;
      v24 = 2112;
      v25 = timerSource;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = 100000000;
      v32 = 2048;
      intervalCopy = interval;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer update] {self: %p, _timerSource: %@, timerStart: %llu, timerInterval: %llu, timerLeeway: %llu, newInterval: %llu, repeats: %@}", &v22, 0x48u);
    }
  }

  objc_sync_exit(selfCopy);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fire
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isValid = selfCopy->_isValid;
  objc_sync_exit(selfCopy);

  if (isValid)
  {
    (*(selfCopy->_handlerBlock + 2))();
    obj = selfCopy;
    objc_sync_enter(obj);
    if (!obj->_repeats)
    {
      objc_msgSend_invalidate(obj, v4, v5);
    }

    objc_sync_exit(obj);
  }
}

@end