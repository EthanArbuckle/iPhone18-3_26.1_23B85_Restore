@interface MXExclaves
+ (id)sharedInstance;
- (BOOL)shouldSendSensorStatusStatistics:(unsigned int)statistics newStatus:(unsigned int)status;
- (MXExclaves)init;
- (int)updateSensorStatus:(id)status reason:(id)reason;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handleSensorStatusChanged;
- (void)reportExclavesSensorStatusStatistics:(unint64_t)statistics previousStatus:(unsigned int)status newStatus:(unsigned int)newStatus;
- (void)resetClientsStillUsingExclavesSensor;
- (void)updateSessionTimestampFromSensorStart:(unint64_t)start;
@end

@implementation MXExclaves

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[MXExclaves sharedInstance];
  }

  return sharedInstance_sSharedInstance_5;
}

MXExclaves *__28__MXExclaves_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXExclaves);
  sharedInstance_sSharedInstance_5 = result;
  return result;
}

- (MXExclaves)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MXExclaves;
  v2 = [(MXExclaves *)&v6 init];
  if (v2)
  {
    if (!CMSMDeviceState_DeviceHasExclaveCapability())
    {
      goto LABEL_5;
    }

    if (exclaves_sensor_create())
    {
      if (!dword_1EB75DE40)
      {
LABEL_8:

        v2 = 0;
        goto LABEL_9;
      }

LABEL_5:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_8;
    }

    v2->mSensorAccessCount = 0;
    v2->mSensorPortLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->mSensorStatus = 2;
    v2->mClientsUsingSensorToRecord = objc_alloc_init(MEMORY[0x1E695DF70]);
    vaeAddExclavesStatusChangedNotificationListener();
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], self->mSensorPort);

  self->mSensorPortLock = 0;
  self->mClientsUsingSensorToRecord = 0;
  v3.receiver = self;
  v3.super_class = MXExclaves;
  [(MXExclaves *)&v3 dealloc];
}

- (int)updateSensorStatus:(id)status reason:(id)reason
{
  v34[24] = *MEMORY[0x1E69E9840];
  if (status)
  {
    v31 = 0;
    [(NSLock *)self->mSensorPortLock lock];
    if (([status isUsingExclaveSensor] & 1) != 0 || !objc_msgSend(status, "requiresExclaveSensor"))
    {
      if ([status isUsingExclaveSensor] && (objc_msgSend(status, "requiresExclaveSensor") & 1) == 0)
      {
        mSensorPort = self->mSensorPort;
        if (exclaves_sensor_stop())
        {
LABEL_12:
          *v30 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v9 = -15685;
LABEL_30:
          [(NSLock *)self->mSensorPortLock unlock:v23];
          goto LABEL_31;
        }

        --self->mSensorAccessCount;
        [status setIsUsingExclaveSensor:0];
        if (dword_1EB75DE40)
        {
          *v30 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v15 = [(NSMutableArray *)self->mClientsUsingSensorToRecord copy:v23];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              if ([objc_msgSend(v20 "allKeys")])
              {
                [(NSMutableArray *)self->mClientsUsingSensorToRecord removeObject:v20];
                goto LABEL_28;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v32 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_28:
      }

      else if (dword_1EB75DE40)
      {
        *v30 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v6 = self->mSensorPort;
      if (exclaves_sensor_start())
      {
        goto LABEL_12;
      }

      ++self->mSensorAccessCount;
      [status setIsUsingExclaveSensor:1];
      if (dword_1EB75DE40)
      {
        *v30 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      mClientsUsingSensorToRecord = self->mClientsUsingSensorToRecord;
      displayID = [status displayID];
      v34[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      -[NSMutableArray addObject:](mClientsUsingSensorToRecord, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&displayID count:1]);
    }

    v9 = 0;
    goto LABEL_30;
  }

  v31 = 0;
  v30[0] = OS_LOG_TYPE_DEFAULT;
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v9 = -12981;
LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)dumpDebugInfo
{
  v11 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mSensorPortLock lock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  mSensorPort = self->mSensorPort;
  if (exclaves_sensor_status() || dword_1EB75DE40)
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  [(NSLock *)self->mSensorPortLock unlock:v9];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleSensorStatusChanged
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = vaeCopyExclavesSensorStatusInfo();
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"YYYY.MM.dd HH:mm:ss:ms"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v18 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v18)
  {
    v5 = *v20;
    v15 = v4;
    v16 = *v20;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 objectForKey:{@"machAbsoluteTime", "unsignedLongLongValue"}];
        [v4 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceReferenceDate:", v8)}];
        v9 = [objc_msgSend(v7 objectForKey:{@"statusRawValue", "intValue"}];
        if ([objc_msgSend(v7 objectForKey:{@"operation", "unsignedLongLongValue"}] == 1)
        {
          [(MXExclaves *)self updateSessionTimestampFromSensorStart:v8];
        }

        mSensorStatus = self->mSensorStatus;
        if (mSensorStatus != v9)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            mSensorStatus = self->mSensorStatus;
            v4 = v15;
            v5 = v16;
          }

          if ([(MXExclaves *)self shouldSendSensorStatusStatistics:mSensorStatus newStatus:v9, v13, v14])
          {
            [(MXExclaves *)self reportExclavesSensorStatusStatistics:v8 previousStatus:self->mSensorStatus newStatus:v9];
          }

          if (self->mSensorStatus == 1)
          {
            [(MXExclaves *)self resetClientsStillUsingExclavesSensor];
          }

          self->mSensorStatus = v9;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v18);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)reportExclavesSensorStatusStatistics:(unint64_t)statistics previousStatus:(unsigned int)status newStatus:(unsigned int)newStatus
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->mClientsUsingSensorToRecord;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 "allKeys")];
        v11 = [objc_msgSend(objc_msgSend(v9 "allValues")];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:statistics - v11];
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v14 = kMXAudioStatistics_ExclavesRecordingClientBundleId;
        v15 = [MXExclaves sensorStatusToString:status];
        v16 = kMXAudioStatistics_ExclavesPreviousSensorStatus;
        v17 = [MXExclaves sensorStatusToString:newStatus];
        v18 = [v13 initWithObjectsAndKeys:{v10, v14, v15, v16, v17, kMXAudioStatistics_ExclavesNewSensorStatus, v12, kMXAudioStatistics_DurationInNanoSeconds, 0}];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXAudioStatistics sendSingleMessageWithDictionary:v21]eventType:"sendSingleMessageWithDictionary:eventCategory:eventType:", v18, 2, 18];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updateSessionTimestampFromSensorStart:(unint64_t)start
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->mClientsUsingSensorToRecord count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:start];
    v6 = [objc_msgSend(-[NSMutableArray firstObject](self->mClientsUsingSensorToRecord "firstObject")];
    mClientsUsingSensorToRecord = self->mClientsUsingSensorToRecord;
    v9 = v6;
    v10[0] = v5;
    -[NSMutableArray replaceObjectAtIndex:withObject:](mClientsUsingSensorToRecord, "replaceObjectAtIndex:withObject:", 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1]);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldSendSensorStatusStatistics:(unsigned int)statistics newStatus:(unsigned int)status
{
  v18 = *MEMORY[0x1E69E9840];
  if (statistics != status)
  {
    if (status == 1)
    {
      copyMXCoreSessionList = 0;
    }

    else
    {
      if (status != 2)
      {
        LOBYTE(v8) = 0;
        copyMXCoreSessionList = 0;
        goto LABEL_17;
      }

      copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (!v8)
      {
LABEL_17:

        goto LABEL_18;
      }

      v6 = *v12;
LABEL_7:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        if ([*(*(&v11 + 1) + 8 * v7) isUsingExclaveSensor])
        {
          break;
        }

        if (v8 == ++v7)
        {
          v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }
    }

    LOBYTE(v8) = 1;
    goto LABEL_17;
  }

  v16 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  LOBYTE(v8) = 0;
LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)resetClientsStillUsingExclavesSensor
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->mClientsUsingSensorToRecord removeAllObjects];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        if ([*(*(&v11 + 1) + 8 * i) isUsingExclaveSensor])
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          MXSimulateCrash("Clients are still using exclaves sensor after switching to a non allowed sensor status. Please file a bug to MediaExperience (New Bugs) | All.");
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end