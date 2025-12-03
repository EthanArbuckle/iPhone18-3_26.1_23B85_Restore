@interface GKSimpleTimer
- (GKSimpleTimer)init;
- (void)dealloc;
- (void)fireIn:(double)in fromNow:(double)now;
- (void)init;
- (void)invalidate;
- (void)setDelegate:(id)delegate;
- (void)setTimer:(double)timer;
@end

@implementation GKSimpleTimer

- (GKSimpleTimer)init
{
  v18 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = GKSimpleTimer;
  v2 = [(GKSimpleTimer *)&v8 init];
  if (v2)
  {
    v17.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v17.__opaque = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutexattr_init(&v17);
    pthread_mutexattr_settype(&v17, 2);
    pthread_mutex_init(&v2->_lock, &v17);
    pthread_mutexattr_destroy(&v17);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      v5 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v10 = v3;
          v11 = 2080;
          v12 = "[GKSimpleTimer init]";
          v13 = 1024;
          v14 = 34;
          v15 = 2048;
          v16 = v2;
          _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] simpletimer set up", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(GKSimpleTimer *)v3 init];
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  pthread_mutex_destroy(&self->_lock);
  v4.receiver = self;
  v4.super_class = GKSimpleTimer;
  [(GKSimpleTimer *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v18 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  self->_delegate = delegate;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v5;
      v10 = 2080;
      v11 = "[GKSimpleTimer setDelegate:]";
      v12 = 1024;
      v13 = 48;
      v14 = 2048;
      selfCopy = self;
      v16 = 2048;
      delegateCopy = delegate;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] simpletimer setDelegate: [%p]", &v8, 0x30u);
    }
  }

  pthread_mutex_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setTimer:(double)timer
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = self->_interval - (timer - self->_startTime);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    v7 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v5;
        v16 = 2080;
        v17 = "[GKSimpleTimer setTimer:]";
        v18 = 1024;
        v19 = 53;
        v20 = 2048;
        selfCopy2 = self;
        v22 = 2048;
        v23 = v4;
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] simpletimer set timer: [%.3lf]", &v14, 0x30u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136316162;
      v15 = v5;
      v16 = 2080;
      v17 = "[GKSimpleTimer setTimer:]";
      v18 = 1024;
      v19 = 53;
      v20 = 2048;
      selfCopy2 = self;
      v22 = 2048;
      v23 = v4;
      _os_log_debug_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] simpletimer set timer: [%.3lf]", &v14, 0x30u);
    }
  }

  v8 = 0.0;
  if (v4 > 0.0)
  {
    v8 = v4;
  }

  v9 = v8 + 0.05;
  if (v9 * 0.25 <= 0.05)
  {
    v10 = v9 * 0.25;
  }

  else
  {
    v10 = 0.05;
  }

  timerSource = self->_timerSource;
  v12 = dispatch_time(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(timerSource, v12, 0xFFFFFFFFFFFFFFFFLL, (v10 * 1000000000.0));
  self->_timerSourceSet = 1;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)fireIn:(double)in fromNow:(double)now
{
  pthread_mutex_lock(&self->_lock);
  self->_startTime = now;
  if (in >= 0.0)
  {
    self->_interval = in;
  }

  if (self->_timerSource)
  {
    if (self->_timerSourceSet)
    {
      goto LABEL_8;
    }
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, global_queue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__GKSimpleTimer_fireIn_fromNow___block_invoke;
    handler[3] = &unk_279682BA8;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__GKSimpleTimer_fireIn_fromNow___block_invoke_4;
    v9[3] = &unk_279682BA8;
    v9[4] = v8;
    dispatch_source_set_cancel_handler(v8, v9);
    self->_timerSource = v8;
    dispatch_resume(v8);
  }

  [(GKSimpleTimer *)self setTimer:now];
LABEL_8:
  pthread_mutex_unlock(&self->_lock);
}

uint64_t __32__GKSimpleTimer_fireIn_fromNow___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 104) = 0;
  v2 = micro();
  v3 = v2 - *(*(a1 + 32) + 88);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = v6[11];
      v7 = v6[12];
      v9 = v6[10];
      v13 = 136316930;
      v14 = v4;
      v15 = 2080;
      v16 = "[GKSimpleTimer fireIn:fromNow:]_block_invoke";
      v17 = 1024;
      v18 = 81;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v3;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v9;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] simpletimer fires? start[%.3lf] elapsed[%.3lf] fireIn[%.3lf] delegate=%p", &v13, 0x4Eu);
    }
  }

  v10 = *(a1 + 32);
  if (v3 <= *(v10 + 96))
  {
    [v10 setTimer:v2];
  }

  else if (*(v10 + 88) != 0.0 && *(v10 + 80))
  {
    *(v10 + 88) = 0;
    [*(*(a1 + 32) + 80) timeout:*(a1 + 32)];
  }

  result = pthread_mutex_unlock((*(a1 + 32) + 8));
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->_lock);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      timerSource = self->_timerSource;
      v8 = 136316162;
      v9 = v3;
      v10 = 2080;
      v11 = "[GKSimpleTimer invalidate]";
      v12 = 1024;
      v13 = 107;
      v14 = 2048;
      selfCopy = self;
      v16 = 2048;
      v17 = timerSource;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] simpletimer invalidate (source=%p)", &v8, 0x30u);
    }
  }

  v6 = self->_timerSource;
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  self->_timerSource = 0;
  self->_delegate = 0;
  self->_startTime = 0.0;
  pthread_mutex_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = 136315906;
  selfCopy = self;
  v6 = 2080;
  v7 = "[GKSimpleTimer init]";
  v8 = 1024;
  v9 = 34;
  v10 = 2048;
  v11 = a2;
  _os_log_debug_impl(&dword_24E50C000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] simpletimer set up", &v4, 0x26u);
  v3 = *MEMORY[0x277D85DE8];
}

@end