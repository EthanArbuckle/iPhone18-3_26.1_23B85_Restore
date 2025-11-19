@interface IRReplayWriter
- (IRReplayWriter)initWithServiceStore:(id)a3;
- (void)dealloc;
- (void)deallocSync;
- (void)writeReplayEventWithReason:(id)a3 SystemState:(id)a4 miloLslPrediction:(id)a5 candidatesContainerDO:(id)a6 nearbyDeviceContainerDO:(id)a7 date:(id)a8;
@end

@implementation IRReplayWriter

- (IRReplayWriter)initWithServiceStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IRReplayWriter;
  v6 = [(IRReplayWriter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = objc_opt_new();
    bufferedReplayEvents = v7->_bufferedReplayEvents;
    v7->_bufferedReplayEvents = v8;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRReplayWriter;
  [(IRReplayWriter *)&v2 dealloc];
}

- (void)deallocSync
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_bufferedReplayEvents count])
  {
    v3 = MEMORY[0x277D21308];
    v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v5 = MEMORY[0x277D21260];
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277CCABB0];
      bufferedReplayEvents = self->_bufferedReplayEvents;
      v9 = v6;
      v10 = [v7 numberWithUnsignedInteger:{-[NSMutableSet count](bufferedReplayEvents, "count")}];
      v19 = 136315650;
      v20 = "#replay-writer, ";
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEBUG, "%s[%@], Writing %@ replay events to DB on dealloc", &v19, 0x20u);
    }

    p_bufferedReplayEvents = &self->_bufferedReplayEvents;
    v11 = self->_bufferedReplayEvents;
    v12 = p_bufferedReplayEvents[1];
    v14 = +[IRPreferences shared];
    v15 = [v14 numberOfEventsToSaveInDisk];
    LOBYTE(v11) = -[NSMutableSet addReplayEvents:withLimit:](v12, "addReplayEvents:withLimit:", v11, [v15 unsignedIntValue]);

    if ((v11 & 1) == 0)
    {
      v16 = dispatch_get_specific(*v3);
      v17 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "#replay-writer, ";
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Replay dealloc error] Could not save replay events", &v19, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)writeReplayEventWithReason:(id)a3 SystemState:(id)a4 miloLslPrediction:(id)a5 candidatesContainerDO:(id)a6 nearbyDeviceContainerDO:(id)a7 date:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (+[IRPlatformInfo isInternalInstall])
  {
    v38 = v14;
    v37 = [[IRReplayEventDO alloc] initWithDate:v19 contextChangeReason:v14 candidatesContainer:v17 miloLslPrediction:v16 systemState:v15 nearbyDeviceContainerDO:v18];
    [(NSMutableSet *)self->_bufferedReplayEvents addObject:?];
    v20 = [(NSMutableSet *)self->_bufferedReplayEvents count];
    v21 = +[IRPreferences shared];
    v22 = [v21 replayWriterEventsSizeToBuffer];
    v23 = [v22 unsignedIntValue];

    if (v20 >= v23)
    {
      v24 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v25 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        v26 = MEMORY[0x277CCABB0];
        bufferedReplayEvents = self->_bufferedReplayEvents;
        v28 = v25;
        v29 = [v26 numberWithUnsignedInteger:{-[NSMutableSet count](bufferedReplayEvents, "count")}];
        *buf = 136315650;
        v40 = "#replay-writer, ";
        v41 = 2112;
        v42 = v24;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_25543D000, v28, OS_LOG_TYPE_DEBUG, "%s[%@], Writing %@ replay events to DB", buf, 0x20u);
      }

      v31 = self->_bufferedReplayEvents;
      store = self->_store;
      v32 = +[IRPreferences shared];
      v33 = [v32 numberOfEventsToSaveInDisk];
      LOBYTE(store) = -[IRServiceStore addReplayEvents:withLimit:](store, "addReplayEvents:withLimit:", v31, [v33 unsignedIntValue]);

      if ((store & 1) == 0)
      {
        v34 = dispatch_get_specific(*MEMORY[0x277D21308]);
        v35 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v40 = "#replay-writer, ";
          v41 = 2112;
          v42 = v34;
          _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Replay save error] Could not save replay events", buf, 0x16u);
        }
      }

      [(NSMutableSet *)self->_bufferedReplayEvents removeAllObjects];
    }

    v14 = v38;
  }

  v36 = *MEMORY[0x277D85DE8];
}

@end