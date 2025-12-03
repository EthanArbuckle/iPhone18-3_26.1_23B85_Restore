@interface MSVPersistentTimer
- (BOOL)isValid;
- (MSVPersistentTimer)initWithInterval:(double)interval name:(id)name queue:(id)queue block:(id)block;
- (void)_handleTimerElapsed:(id)elapsed;
- (void)dealloc;
- (void)invalidateWithReason:(id)reason;
@end

@implementation MSVPersistentTimer

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timer != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)invalidateWithReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_timer)
  {
    v6 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (reasonCopy)
    {
      if (v7)
      {
        name = selfCopy->_name;
        v15 = 138412546;
        v16 = name;
        v17 = 2112;
        v18 = reasonCopy;
        v9 = "[MSVPersistentTimer] Timer <%@> invalidated because <%@>";
        v10 = v6;
        v11 = 22;
LABEL_7:
        _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }

    else if (v7)
    {
      v12 = selfCopy->_name;
      v15 = 138412290;
      v16 = v12;
      v9 = "[MSVPersistentTimer] Timer <%@> invalidated";
      v10 = v6;
      v11 = 12;
      goto LABEL_7;
    }

    [(PCPersistentTimer *)selfCopy->_timer invalidate];
    timer = selfCopy->_timer;
    selfCopy->_timer = 0;
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleTimerElapsed:(id)elapsed
{
  v20 = *MEMORY[0x1E69E9840];
  elapsedCopy = elapsed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_timer)
  {
    v6 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = selfCopy->_name;
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:selfCopy->_startDate];
      interval = selfCopy->_interval;
      v14 = 138412802;
      v15 = name;
      v16 = 2048;
      v17 = v10;
      v18 = 2048;
      v19 = interval;
      _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_DEFAULT, "[MSVPersistentTimer] Timer <%@> elapased after <%lf> seconds (<%lf> expected)", &v14, 0x20u);
    }

    [(MSVPersistentTimer *)selfCopy invalidateWithReason:@"TimerElapsed"];
    timer = selfCopy->_timer;
    selfCopy->_timer = 0;

    v12 = [selfCopy->_block copy];
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

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

- (MSVPersistentTimer)initWithInterval:(double)interval name:(id)name queue:(id)queue block:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v34.receiver = self;
  v34.super_class = MSVPersistentTimer;
  v13 = [(MSVPersistentTimer *)&v34 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = interval;
    v15 = [blockCopy copy];
    block = v14->_block;
    v14->_block = v15;

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%p", nameCopy, v14];
    name = v14->_name;
    v14->_name = v17;

    date = [MEMORY[0x1E695DF00] date];
    startDate = v14->_startDate;
    v14->_startDate = date;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v23 = bundleIdentifier;
    if (bundleIdentifier)
    {
      processName = bundleIdentifier;
    }

    else
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.MSVTimer", processName];
    v27 = [objc_alloc(MEMORY[0x1E69BDC30]) initWithTimeInterval:v26 serviceIdentifier:v14 target:sel__handleTimerElapsed_ selector:0 userInfo:interval];
    timer = v14->_timer;
    v14->_timer = v27;

    if (queueCopy)
    {
      v29 = queueCopy;
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
      intervalCopy = interval;
      _os_log_impl(&dword_1AC81F000, v30, OS_LOG_TYPE_DEFAULT, "[MSVPersistentTimer] Setting timer <%@> for <%lf> seconds", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return v14;
}

@end