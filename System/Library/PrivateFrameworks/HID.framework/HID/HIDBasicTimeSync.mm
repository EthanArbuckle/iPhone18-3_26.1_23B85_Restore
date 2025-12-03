@interface HIDBasicTimeSync
- (HIDBasicTimeSync)init;
- (id)dataFromSyncedTime:(unint64_t)time error:(id *)error;
- (unint64_t)syncedTimeFromData:(id)data error:(id *)error;
- (void)handleActivate;
- (void)handleCancel;
- (void)handlePropertyUpdate:(id)update;
@end

@implementation HIDBasicTimeSync

- (HIDBasicTimeSync)init
{
  v6.receiver = self;
  v6.super_class = HIDBasicTimeSync;
  initInternal = [(HIDTimeSync *)&v6 initInternal];
  mEMORY[0x277D714C8] = [MEMORY[0x277D714C8] sharedClockManager];
  tsMgr = initInternal->_tsMgr;
  initInternal->_tsMgr = mEMORY[0x277D714C8];

  return initInternal;
}

- (unint64_t)syncedTimeFromData:(id)data error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  info = 0xAAAAAAAAAAAAAAAALL;
  v7 = mach_absolute_time();
  if ([(HIDTimeSync *)self state]!= 1)
  {
    [HIDBasicTimeSync syncedTimeFromData:buf error:?];
  }

  v8 = 3758097090;
  if (!self->_active)
  {
    v8 = 3758097111;
LABEL_17:
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithIOReturn:v8];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_8;
  }

  if ([dataCopy length] != 8)
  {
    goto LABEL_17;
  }

  tsClock = self->_tsClock;
  if (!tsClock || [(TSUserFilteredClock *)tsClock lockState]!= 2)
  {
    [HIDBasicTimeSync syncedTimeFromData:? error:?];
    v8 = 3758097112;
    goto LABEL_17;
  }

  mach_timebase_info(&info);
  bytes = [dataCopy bytes];
  v11 = *bytes;
  v12 = [(TSUserFilteredClock *)self->_tsClock convertFromDomainToMachAbsoluteTime:*bytes];
  numer = info.numer;
  denom = info.denom;
  v15 = _IOHIDLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = v12 - v7;
    if (v7 > v12)
    {
      v18 = v7 - v12;
    }

    v19 = v18 * numer;
    v20 = "-";
    if (v7 > v12)
    {
      v20 = "+";
    }

    *buf = 134219010;
    v24 = v11;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v12;
    v29 = 2080;
    v30 = v20;
    v31 = 2048;
    v32 = v19 / denom;
    _os_log_debug_impl(&dword_22DF7D000, v15, OS_LOG_TYPE_DEBUG, "W2 btclk(ns):%llu local abs:%llu Synced ts:%llu remote->local latency(ns):%s%llu", buf, 0x34u);
  }

LABEL_8:
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)dataFromSyncedTime:(unint64_t)time error:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HIDTimeSync *)self state]!= 1)
  {
    [HIDBasicTimeSync syncedTimeFromData:v10 error:?];
  }

  if (error)
  {
    if (self->_active)
    {
      v6 = 3758097095;
    }

    else
    {
      v6 = 3758097111;
    }

    *error = [MEMORY[0x277CCA9B8] errorWithIOReturn:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)handleActivate
{
  if (![(HIDTimeSync *)self setProviderProperty:MEMORY[0x277CBEC38] forKey:@"TimeSyncEnabled"])
  {
    v2 = _IOHIDLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)v2 handleActivate:v3];
    }
  }
}

- (void)handleCancel
{
  if (![(HIDTimeSync *)self setProviderProperty:MEMORY[0x277CBEC28] forKey:@"TimeSyncEnabled"])
  {
    v2 = _IOHIDLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)v2 handleCancel:v3];
    }
  }
}

- (void)handlePropertyUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy objectForKeyedSubscript:@"Active"];
  v6 = [updateCopy objectForKeyedSubscript:@"TSClockID"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  if (self->_active)
  {
LABEL_5:
    if (([v5 isEqual:&unk_284199FE8] & 1) == 0)
    {
      self->_active = 0;
      eventHandler = [(HIDTimeSync *)self eventHandler];
      eventHandler[2](eventHandler, 0, 0);

      tsClock = self->_tsClock;
      self->_tsClock = 0;
    }

    goto LABEL_15;
  }

  if (([v5 isEqual:&unk_284199FE8] & 1) == 0)
  {
    if (!self->_active)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  self->_clockID = unsignedLongLongValue;
  v10 = [(TSClockManager *)self->_tsMgr clockWithClockIdentifier:unsignedLongLongValue];
  v11 = self->_tsClock;
  self->_tsClock = v10;

  if (self->_tsClock)
  {
    self->_active = 1;
    eventHandler2 = [(HIDTimeSync *)self eventHandler];
    (*(eventHandler2 + 16))(eventHandler2, 1, 0);
  }

  else
  {
    eventHandler2 = _IOHIDLog();
    if (os_log_type_enabled(eventHandler2, OS_LOG_TYPE_ERROR))
    {
      [(HIDBasicTimeSync *)eventHandler2 handlePropertyUpdate:v13, v14, v15, v16, v17, v18, v19];
    }
  }

LABEL_15:
}

- (void)syncedTimeFromData:(uint64_t *)a1 error:(_OWORD *)a2 .cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

- (void)syncedTimeFromData:(id *)a1 error:.cold.2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _IOHIDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [*a1 clockIdentifier];
    v5 = [*a1 lockState];
    v6 = 134218240;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_error_impl(&dword_22DF7D000, v2, OS_LOG_TYPE_ERROR, "TimeSync: not locked, clockID: 0x%llx state: %d", &v6, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end