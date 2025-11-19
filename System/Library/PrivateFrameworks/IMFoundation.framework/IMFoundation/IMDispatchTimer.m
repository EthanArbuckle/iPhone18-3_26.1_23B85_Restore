@interface IMDispatchTimer
- (void)fire;
- (void)invalidate;
- (void)updateTimerInterval:(unint64_t)a3 repeats:(BOOL)a4;
@end

@implementation IMDispatchTimer

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_isValid)
  {
    if (v2->_timerSource)
    {
      v5 = objc_msgSend_timer(IMIDSLog, v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        timerSource = v2->_timerSource;
        v11 = 134218242;
        v12 = v2;
        v13 = 2112;
        v14 = timerSource;
        _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer invalidate] {self: %p, _timerSource: %@}", &v11, 0x16u);
      }

      dispatch_source_cancel(v2->_timerSource);
    }

    fireDate = v2->_fireDate;
    v2->_fireDate = 0;

    v2->_timeInterval = 0.0;
    *&v2->_isValid = 0;
    userInfo = v2->_userInfo;
    v2->_userInfo = 0;

    handlerBlock = v2->_handlerBlock;
    v2->_handlerBlock = 0;
  }

  objc_sync_exit(v2);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateTimerInterval:(unint64_t)a3 repeats:(BOOL)a4
{
  v4 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_isValid)
  {
    v6->_timeInterval = a3;
    v9 = a3 != -1 && v4;
    v6->_repeats = v9;
    if (a3 == -1)
    {
      fireDate = v6->_fireDate;
      v6->_fireDate = 0;

      v13 = -1;
      v12 = -1000000000;
    }

    else
    {
      v10 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8);
      v11 = v6->_fireDate;
      v6->_fireDate = v10;

      v12 = 1000000000 * a3;
      v13 = dispatch_time(0, 1000000000 * a3);
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = -1;
    }

    dispatch_source_set_timer(v6->_timerSource, v13, v15, 0x5F5E100uLL);
    v18 = objc_msgSend_timer(IMIDSLog, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      timerSource = v6->_timerSource;
      v20 = @"NO";
      v22 = 134219522;
      if (v4)
      {
        v20 = @"YES";
      }

      v23 = v6;
      v24 = 2112;
      v25 = timerSource;
      v26 = 2048;
      v27 = v13;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = 100000000;
      v32 = 2048;
      v33 = a3;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_195988000, v18, OS_LOG_TYPE_DEFAULT, "[IMDispatchTimer update] {self: %p, _timerSource: %@, timerStart: %llu, timerInterval: %llu, timerLeeway: %llu, newInterval: %llu, repeats: %@}", &v22, 0x48u);
    }
  }

  objc_sync_exit(v6);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fire
{
  v2 = self;
  objc_sync_enter(v2);
  isValid = v2->_isValid;
  objc_sync_exit(v2);

  if (isValid)
  {
    (*(v2->_handlerBlock + 2))();
    obj = v2;
    objc_sync_enter(obj);
    if (!obj->_repeats)
    {
      objc_msgSend_invalidate(obj, v4, v5);
    }

    objc_sync_exit(obj);
  }
}

@end