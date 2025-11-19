@interface MSVPersistentTimer
- (BOOL)isValid;
- (MSVPersistentTimer)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6;
- (void)_handleTimerElapsed:(id)a3;
- (void)dealloc;
- (void)invalidateWithReason:(id)a3;
@end

@implementation MSVPersistentTimer

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timer != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)invalidateWithReason:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_timer)
  {
    v6 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        name = v5->_name;
        v15 = 138412546;
        v16 = name;
        v17 = 2112;
        v18 = v4;
        v9 = "[MSVPersistentTimer] Timer <%@> invalidated because <%@>";
        v10 = v6;
        v11 = 22;
LABEL_7:
        _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }

    else if (v7)
    {
      v12 = v5->_name;
      v15 = 138412290;
      v16 = v12;
      v9 = "[MSVPersistentTimer] Timer <%@> invalidated";
      v10 = v6;
      v11 = 12;
      goto LABEL_7;
    }

    [(PCPersistentTimer *)v5->_timer invalidate];
    timer = v5->_timer;
    v5->_timer = 0;
  }

  objc_sync_exit(v5);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleTimerElapsed:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_timer)
  {
    v6 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = v5->_name;
      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:v5->_startDate];
      interval = v5->_interval;
      v14 = 138412802;
      v15 = name;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = interval;
      _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "[MSVPersistentTimer] Timer <%@> elapased after <%lf> seconds (<%lf> expected)", &v14, 0x20u);
    }

    [(MSVPersistentTimer *)v5 invalidateWithReason:@"TimerElapsed"];
    timer = v5->_timer;
    v5->_timer = 0;

    v12 = [v5->_block copy];
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v5);

  if (v12)
  {
    v12[2](v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(MSVPersistentTimer *)self invalidateWithReason:@"Dealloc"];
  v3.receiver = self;
  v3.super_class = MSVPersistentTimer;
  [(MSVPersistentTimer *)&v3 dealloc];
}

- (MSVPersistentTimer)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v34.receiver = self;
  v34.super_class = MSVPersistentTimer;
  v13 = [(MSVPersistentTimer *)&v34 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = a3;
    v15 = [v12 copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%p", v10, v14];
    name = v14->_name;
    v14->_name = v17;

    v19 = [MEMORY[0x1E695DF00] date];
    startDate = v14->_startDate;
    v14->_startDate = v19;

    v21 = [MEMORY[0x1E696AAE8] mainBundle];
    v22 = [v21 bundleIdentifier];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [MEMORY[0x1E696AE30] processInfo];
      v24 = [v25 processName];
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.MSVTimer", v24];
    v27 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithTimeInterval:v26 serviceIdentifier:v14 target:sel__handleTimerElapsed_ selector:0 userInfo:a3];
    timer = v14->_timer;
    v14->_timer = v27;

    if (v11)
    {
      v29 = v11;
    }

    else
    {
      v29 = MEMORY[0x1E69E96A0];
    }

    [(PCPersistentTimer *)v14->_timer scheduleInQueue:v29];
    v30 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v14->_name;
      *buf = 138412546;
      v36 = v31;
      v37 = 2048;
      v38 = a3;
      _os_log_impl(&dword_1AC81F000, v30, OS_LOG_TYPE_DEFAULT, "[MSVPersistentTimer] Setting timer <%@> for <%lf> seconds", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v14;
}

@end