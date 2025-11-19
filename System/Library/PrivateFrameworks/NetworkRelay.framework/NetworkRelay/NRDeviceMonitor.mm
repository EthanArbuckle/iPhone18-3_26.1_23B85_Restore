@interface NRDeviceMonitor
- (BOOL)isAsleep;
- (BOOL)isClassCConnected;
- (BOOL)isCloudConnected;
- (BOOL)isConnected;
- (BOOL)isEnabled;
- (BOOL)isNearby;
- (BOOL)isRegistered;
- (BOOL)pluggedIn;
- (NRDeviceIdentifier)deviceIdentifier;
- (NRDeviceInfo)deviceInfo;
- (NRDeviceMonitor)initWithDeviceIdentifier:(id)a3 delegate:(id)a4 queue:(id)a5;
- (NSString)proxyServiceInterfaceName;
- (int)thermalPressureLevel;
- (unsigned)linkSubtype;
- (unsigned)linkType;
- (void)checkInWithRetryCount:(uint64_t)a3;
- (void)dealloc;
- (void)setInternalProxySvcIntfName:(uint64_t)a1;
- (void)updateStateFromResponse:(uint64_t)a1;
@end

@implementation NRDeviceMonitor

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsConnected = self->_internalIsConnected;
  }

  else
  {
    internalIsConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsConnected;
}

- (NRDeviceInfo)deviceInfo
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalDeviceInfo = self->_internalDeviceInfo;
  }

  else
  {
    internalDeviceInfo = 0;
  }

  v4 = internalDeviceInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)pluggedIn
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalPluggedIn = self->_internalPluggedIn;
  }

  else
  {
    internalPluggedIn = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalPluggedIn;
}

- (int)thermalPressureLevel
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalThermalPressureLevel = self->_internalThermalPressureLevel;
  }

  else
  {
    internalThermalPressureLevel = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalThermalPressureLevel;
}

- (unsigned)linkSubtype
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalLinkSubtype = self->_internalLinkSubtype;
  }

  else
  {
    internalLinkSubtype = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalLinkSubtype;
}

- (NSString)proxyServiceInterfaceName
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalProxySvcIntfName = self->_internalProxySvcIntfName;
  }

  else
  {
    internalProxySvcIntfName = 0;
  }

  v4 = [(NSString *)internalProxySvcIntfName copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (unsigned)linkType
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalLinkType = self->_internalLinkType;
  }

  else
  {
    internalLinkType = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalLinkType;
}

- (BOOL)isClassCConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsClassCConnected = self->_internalIsClassCConnected;
  }

  else
  {
    internalIsClassCConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsClassCConnected;
}

- (BOOL)isAsleep
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsAsleep = self->_internalIsAsleep;
  }

  else
  {
    internalIsAsleep = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsAsleep;
}

- (BOOL)isCloudConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsCloudConnected = self->_internalIsCloudConnected;
  }

  else
  {
    internalIsCloudConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsCloudConnected;
}

- (BOOL)isNearby
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsNearby = self->_internalIsNearby;
  }

  else
  {
    internalIsNearby = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsNearby;
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsEnabled = self->_internalIsEnabled;
  }

  else
  {
    internalIsEnabled = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsEnabled;
}

- (BOOL)isRegistered
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsRegistered = self->_internalIsRegistered;
  }

  else
  {
    internalIsRegistered = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsRegistered;
}

- (NRDeviceIdentifier)deviceIdentifier
{
  if (self)
  {
    self = self->_internalDeviceIdentifier;
  }

  return self;
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEFAULT))
  {
    v3 = nrCopyLogObj_sNRLogObj_229;
    v11 = [(NRDeviceMonitor *)self deviceIdentifier];
    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Dealloc %@ for %@", v4, v5, v6, v7, v8, "");
  }

  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      v10 = self->_connection;
      self->_connection = 0;
    }
  }

  v12.receiver = self;
  v12.super_class = NRDeviceMonitor;
  [(NRDeviceMonitor *)&v12 dealloc];
}

- (NRDeviceMonitor)initWithDeviceIdentifier:(id)a3 delegate:(id)a4 queue:(id)a5
{
  location[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v40 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v44 = v40;
      v45 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

      if (!v45)
      {
        goto LABEL_38;
      }
    }

    v46 = nrCopyLogObj_237();
    _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", v47, v48, v49, v50, v51, "");

    goto LABEL_38;
  }

  if (!v10)
  {
    v41 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v52 = v41;
      v53 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

      if (!v53)
      {
        goto LABEL_38;
      }
    }

    v54 = nrCopyLogObj_237();
    _NRLogWithArgs(v54, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL delegate", v55, v56, v57, v58, v59, "");

LABEL_38:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v68 = *__error();
    v69 = _os_log_pack_fill();
    *v69 = 136446466;
    *(v69 + 4) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
    *(v69 + 12) = 2080;
    *(v69 + 14) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
    v70 = nrCopyLogObj_237();
    _NRLogAbortWithPack(v70);
  }

  v12 = v11;
  if (!v11)
  {
    v42 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v42;
      v61 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
        goto LABEL_38;
      }
    }

    v62 = nrCopyLogObj_237();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL queue", v63, v64, v65, v66, v67, "");

    goto LABEL_38;
  }

  v83.receiver = self;
  v83.super_class = NRDeviceMonitor;
  v13 = [(NRDeviceMonitor *)&v83 init];
  v14 = v13;
  if (!v13)
  {
    v43 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v71 = v43;
      v72 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

      if (!v72)
      {
        goto LABEL_41;
      }
    }

    v73 = nrCopyLogObj_237();
    _NRLogWithArgs(v73, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v74, v75, v76, v77, v78, "");

LABEL_41:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v79 = *__error();
    v80 = _os_log_pack_fill();
    *v80 = 136446210;
    *(v80 + 4) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
    v81 = nrCopyLogObj_237();
    _NRLogAbortWithPack(v81);
  }

  objc_storeStrong(&v13->_internalDeviceIdentifier, a3);
  objc_storeWeak(&v14->_delegate, v10);
  objc_storeStrong(&v14->_delegateQueue, a5);
  *&v14->_internalLinkType = 0;
  *&v14->_internalIsRegistered = 0;
  internalProxySvcIntfName = v14->_internalProxySvcIntfName;
  v14->_internalProxySvcIntfName = 0;

  v14->_internalThermalPressureLevel = 0;
  v14->_lock._os_unfair_lock_opaque = 0;
  v16 = v14->_delegateQueue;
  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v16, 2uLL);
  connection = v14->_connection;
  v14->_connection = mach_service;

  if (!v14->_connection)
  {
    if (nrCopyLogObj_onceToken_227 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    }

    if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Failed to create NRDeviceMonitor XPC connection", v19, v20, v21, v22, v23, v82), nrCopyLogObj_onceToken_227 != -1))
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    else if (sNRCopyLogToStdErr)
    {
      goto LABEL_19;
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v37 = 0;
      goto LABEL_21;
    }

LABEL_19:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Failed to start %@ for %@", v19, v20, v21, v22, v23, "");
    goto LABEL_20;
  }

  objc_initWeak(location, v14);
  v24 = v14->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __24__NRDeviceMonitor_start__block_invoke;
  handler[3] = &unk_27996B2D8;
  objc_copyWeak(&v85, location);
  xpc_connection_set_event_handler(v24, handler);

  v25 = v14->_connection;
  xpc_connection_activate(v25);

  [(NRDeviceMonitor *)&v14->super.isa checkInWithRetryCount:v26, v27, v28, v29, v30, v31, v82];
  objc_destroyWeak(&v85);
  objc_destroyWeak(location);
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 0, "%s%.30s:%-4d Started %@ for %@", v32, v33, v34, v35, v36, "");
  }

  v37 = v14;
LABEL_21:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

void __24__NRDeviceMonitor_start__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v12);
    if (v4 == MEMORY[0x277D86468])
    {
      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEBUG))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 2, "%s%.30s:%-4d Received XPC dict: %@", v5, v6, v7, v8, v9, "");
      }

      [(NRDeviceMonitor *)WeakRetained updateStateFromResponse:v12];
    }

    else
    {
      if (v4 != MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_227 != -1))
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          if ((sNRCopyLogToStdErr & 1) == 0)
          {
LABEL_10:
            if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }
          }
        }

        else if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_10;
        }

        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Received unexpected XPC object", v5, v6, v7, v8, v9, v11);
        goto LABEL_24;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Received XPC error: %@, retrying", v5, v6, v7, v8, v9, "");
      }

      [(NRDeviceMonitor *)WeakRetained checkInWithRetryCount:v10, v5, v6, v7, v8, v9, v11];
    }
  }

LABEL_24:
}

- (void)checkInWithRetryCount:(uint64_t)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if (a2 < 6)
  {
    if (!a1[9])
    {
      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
      {
        v9 = nrCopyLogObj_sNRLogObj_229;
        v25 = *MEMORY[0x277D85DE8];
        v11 = "Could not check in with server as no connection found";
        goto LABEL_18;
      }

LABEL_12:
      v24 = *MEMORY[0x277D85DE8];
      return;
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    if (v14)
    {
      v15 = v14;
      xpc_dictionary_set_uint64(v14, "Type", 0xAuLL);
      v16 = a1[4];
      v17 = [v16 nrDeviceIdentifier];
      v18 = v15;
      v19 = v17;
      v20 = v19;
      if (v19)
      {
        *uuid = 0;
        v52 = 0;
        [v19 getUUIDBytes:uuid];
        xpc_dictionary_set_uuid(v18, "DeviceIdentifier", uuid);
LABEL_11:

        objc_initWeak(uuid, a1);
        v21 = a1[9];
        v22 = a1[7];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __41__NRDeviceMonitor_checkInWithRetryCount___block_invoke;
        handler[3] = &unk_27996B300;
        objc_copyWeak(&v49, uuid);
        v23 = v18;
        v48 = v23;
        v50 = a2;
        xpc_connection_send_message_with_reply(v21, v23, v22, handler);

        objc_destroyWeak(&v49);
        objc_destroyWeak(uuid);

        goto LABEL_12;
      }

      v27 = nrCopyLogObj_237();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v39 = v27;
        v40 = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);

        if (!v40)
        {
          goto LABEL_11;
        }
      }

      v41 = nrCopyLogObj_237();
      _NRLogWithArgs(v41, 17, "%s called with null uuid", v42, v43, v44, v45, v46, "nr_xpc_dictionary_set_nsuuid");

      goto LABEL_11;
    }

    v26 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v26;
      v29 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
        goto LABEL_27;
      }
    }

    v30 = nrCopyLogObj_237();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v31, v32, v33, v34, v35, "");

LABEL_27:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v36 = *__error();
    v37 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v37, "nr_xpc_dictionary_create");
    v38 = nrCopyLogObj_237();
    _NRLogAbortWithPack(v38);
  }

  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_12;
  }

  v9 = nrCopyLogObj_sNRLogObj_229;
  v10 = *MEMORY[0x277D85DE8];
  v11 = "Failed to checkin NRDeviceMonitor after retries";
LABEL_18:

  _NRLogWithArgs(v9, 17, v11, a4, a5, a6, a7, a8, a9);
}

void __41__NRDeviceMonitor_checkInWithRetryCount___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v12);
    if (v4 == MEMORY[0x277D86468])
    {
      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEBUG))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 2, "%s%.30s:%-4d Checkin received XPC dict: %@", v5, v6, v7, v8, v9, "");
      }

      [(NRDeviceMonitor *)WeakRetained updateStateFromResponse:v12];
    }

    else
    {
      if (v4 != MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Checkin received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_227 != -1))
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          if ((sNRCopyLogToStdErr & 1) == 0)
          {
LABEL_10:
            if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }
          }
        }

        else if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_10;
        }

        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Checkin received unexpected XPC object", v5, v6, v7, v8, v9, v10);
        goto LABEL_24;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Checkin could not deliver message %@, error %@, retrying", v5, v6, v7, v8, v9, "");
      }

      [(NRDeviceMonitor *)WeakRetained checkInWithRetryCount:?];
    }
  }

LABEL_24:
}

- (void)updateStateFromResponse:(uint64_t)a1
{
  v3 = a2;
  if (!v3)
  {
    v148 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v153 = v148;
      v154 = os_log_type_enabled(v148, OS_LOG_TYPE_FAULT);

      if (!v154)
      {
        goto LABEL_154;
      }
    }

    v155 = nrCopyLogObj_237();
    _NRLogWithArgs(v155, 17, "%s called with null object", v156, v157, v158, v159, v160, "[NRDeviceMonitor updateStateFromResponse:]");

    goto LABEL_154;
  }

  os_unfair_lock_lock((a1 + 24));
  v4.i32[0] = *(a1 + 9);
  v4.i16[2] = *(a1 + 13);
  v213 = v4;
  v211 = *(a1 + 15);
  v219 = *(a1 + 17);
  v220 = *(a1 + 18);
  v224 = *(a1 + 40);
  v5 = (a1 + 48);
  v215 = *(a1 + 20);
  v217 = *(a1 + 19);
  v6 = *(a1 + 48);
  v7 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsRegistered");
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
  if (*(a1 + 9) != v7)
  {
    v14 = v7;
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_6;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_7:
      *(a1 + 9) = v14;
      goto LABEL_8;
    }

LABEL_6:
    v187 = *(a1 + 9);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isRegistered: %d -> %d", v8, v9, v10, v11, v12, "");
    goto LABEL_7;
  }

LABEL_8:
  v15 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsEnabled");
  if (*(a1 + 10) == v15)
  {
    goto LABEL_14;
  }

  v21 = v15;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      v188 = *(a1 + 10);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isEnabled: %d -> %d", v16, v17, v18, v19, v20, "");
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 10) = v21;
LABEL_14:
  v22 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsNearby");
  if (*(a1 + 11) == v22)
  {
    goto LABEL_20;
  }

  v28 = v22;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_18:
      v189 = *(a1 + 11);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isNearby: %d -> %d", v23, v24, v25, v26, v27, "");
      goto LABEL_19;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_18;
  }

LABEL_19:
  *(a1 + 11) = v28;
LABEL_20:
  v29 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsConnected");
  if (*(a1 + 12) == v29)
  {
    goto LABEL_26;
  }

  v35 = v29;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_24:
      v190 = *(a1 + 12);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isConnected: %d -> %d", v30, v31, v32, v33, v34, "");
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_24;
  }

LABEL_25:
  *(a1 + 12) = v35;
LABEL_26:
  v36 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsCloudConnected");
  if (*(a1 + 13) == v36)
  {
    goto LABEL_32;
  }

  v42 = v36;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_30:
      v191 = *(a1 + 13);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isCloudConnected: %d -> %d", v37, v38, v39, v40, v41, "");
      goto LABEL_31;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_30;
  }

LABEL_31:
  *(a1 + 13) = v42;
LABEL_32:
  v43 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsAsleep");
  if (*(a1 + 14) == v43)
  {
    goto LABEL_38;
  }

  v49 = v43;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_36:
      v192 = *(a1 + 14);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isAsleep: %d -> %d", v44, v45, v46, v47, v48, "");
      goto LABEL_37;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_36;
  }

LABEL_37:
  *(a1 + 14) = v49;
LABEL_38:
  v50 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsClassCConnected");
  if (*(a1 + 15) == v50)
  {
    goto LABEL_44;
  }

  v56 = v50;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_42:
      v193 = *(a1 + 15);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isClassCConnected: %d -> %d", v51, v52, v53, v54, v55, "");
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_42;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_42;
  }

LABEL_43:
  *(a1 + 15) = v56;
LABEL_44:
  v57 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusHasUnpairedBluetooth");
  if (*(a1 + 16) == v57)
  {
    goto LABEL_50;
  }

  v63 = v57;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_48:
      v194 = *(a1 + 16);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d hasUnpairedBluetooth: %d -> %d", v58, v59, v60, v61, v62, "");
      goto LABEL_49;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_48;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_48;
  }

LABEL_49:
  *(a1 + 16) = v63;
LABEL_50:
  uint64 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusLinkType");
  if (*(a1 + 17) == uint64)
  {
    goto LABEL_56;
  }

  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_54:
      v65 = *(a1 + 17);
      v66 = nrCopyLogObj_sNRLogObj_229;
      StringFromNRLinkType = createStringFromNRLinkType(v65);
      v198 = createStringFromNRLinkType(uint64);
      _NRLogWithArgs(v66, 1, "%s%.30s:%-4d link type: %@ -> %@", v67, v68, v69, v70, v71, "");

      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
      goto LABEL_55;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_54;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_54;
  }

LABEL_55:
  *(a1 + 17) = uint64;
LABEL_56:
  v72 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusLinkSubtype");
  if (*(a1 + 18) == v72)
  {
    goto LABEL_62;
  }

  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_60:
      v73 = *(a1 + 18);
      v74 = nrCopyLogObj_sNRLogObj_229;
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype(v73);
      v199 = createStringFromNRLinkSubtype(v72);
      _NRLogWithArgs(v74, 1, "%s%.30s:%-4d link subtype: %@ -> %@", v75, v76, v77, v78, v79, "");

      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
      goto LABEL_61;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_60;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_60;
  }

LABEL_61:
  *(a1 + 18) = v72;
LABEL_62:
  string = xpc_dictionary_get_string(v3, "DeviceMonitorStatusProxySvcIntfName");
  [(NRDeviceMonitor *)a1 setInternalProxySvcIntfName:?];
  if (string)
  {
    v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    [(NRDeviceMonitor *)a1 setInternalProxySvcIntfName:v81];
  }

  v82 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusThermalPressureLevel");
  if (*(a1 + 20) != v82)
  {
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_68;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_68;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_101:
      *(a1 + 20) = v82;
      goto LABEL_102;
    }

LABEL_68:
    v83 = *(a1 + 20);
    v89 = nrCopyLogObj_sNRLogObj_229;
    if (v83 > 29)
    {
      switch(v83)
      {
        case 0x1E:
          v90 = @"Heavy";
          if (v82 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0x28:
          v90 = @"Trapping";
          if (v82 > 29)
          {
            goto LABEL_80;
          }

LABEL_85:
          switch(v82)
          {
            case 0:
              v91 = @"Nominal";
              goto LABEL_100;
            case 0xA:
              v91 = @"Light";
              goto LABEL_100;
            case 0x14:
              v91 = @"Moderate";
              goto LABEL_100;
          }

          goto LABEL_93;
        case 0x32:
          v90 = @"Sleeping";
          if (v82 > 29)
          {
            goto LABEL_80;
          }

          goto LABEL_85;
      }
    }

    else
    {
      switch(v83)
      {
        case 0:
          v90 = @"Nominal";
          if (v82 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0xA:
          v90 = @"Light";
          if (v82 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0x14:
          v90 = @"Moderate";
          if (v82 <= 29)
          {
            goto LABEL_85;
          }

LABEL_80:
          switch(v82)
          {
            case 0x1E:
              v91 = @"Heavy";
              goto LABEL_100;
            case 0x28:
              v91 = @"Trapping";
              goto LABEL_100;
            case 0x32:
              v91 = @"Sleeping";
LABEL_100:
              _NRLogWithArgs(v89, 1, "%s%.30s:%-4d thermal pressure level: %@ -> %@", v84, v85, v86, v87, v88, "");

              p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
              goto LABEL_101;
          }

LABEL_93:
          v91 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v82];
          goto LABEL_100;
      }
    }

    v90 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v83];
    if (v82 > 29)
    {
      goto LABEL_80;
    }

    goto LABEL_85;
  }

LABEL_102:
  v92 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusPluggedIn");
  if (*(a1 + 19) != v92)
  {
    v98 = v92;
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_106;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_106;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_107:
      *(a1 + 19) = v98;
      goto LABEL_108;
    }

LABEL_106:
    v197 = *(a1 + 19);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d plugged in: %d -> %d", v93, v94, v95, v96, v97, "");
    goto LABEL_107;
  }

LABEL_108:
  v223 = v6;
  if ((*(a1 + 12) & 1) == 0 && *(a1 + 13) != 1)
  {
    v110 = *v5;
    *v5 = 0;

    v109 = v220;
    goto LABEL_123;
  }

  v99 = objc_opt_class();
  v100 = v3;
  v101 = v100;
  if (!v99)
  {
    v149 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v161 = v149;
      v162 = os_log_type_enabled(v149, OS_LOG_TYPE_FAULT);

      if (!v162)
      {
        goto LABEL_199;
      }
    }

    v163 = nrCopyLogObj_237();
    _NRLogWithArgs(v163, 17, "%s called with null cls", v164, v165, v166, v167, v168, "nr_xpc_dictionary_get_nsobject");
LABEL_198:

    goto LABEL_199;
  }

  length[0] = 0;
  data = xpc_dictionary_get_data(v100, "DeviceInfo", length);
  if (!data)
  {
    v150 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v169 = v150;
      v170 = os_log_type_enabled(v150, OS_LOG_TYPE_ERROR);

      if (!v170)
      {
        goto LABEL_199;
      }
    }

    v171 = nrCopyLogObj_237();
    v163 = v171;
    v177 = "%s%.30s:%-4d Failed to get XPC data for key %s";
LABEL_197:
    _NRLogWithArgs(v171, 16, v177, v172, v173, v174, v175, v176, "");
    goto LABEL_198;
  }

  if (!length[0])
  {
    v151 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_196:
      v171 = nrCopyLogObj_237();
      v163 = v171;
      v177 = "%s%.30s:%-4d XPC data for key %s is empty";
      goto LABEL_197;
    }

    v178 = v151;
    v179 = os_log_type_enabled(v151, OS_LOG_TYPE_ERROR);

    if (v179)
    {
      goto LABEL_196;
    }

LABEL_199:

    goto LABEL_121;
  }

  v103 = data;
  v104 = objc_alloc(MEMORY[0x277CBEA90]);
  v105 = [v104 initWithBytesNoCopy:v103 length:length[0] freeWhenDone:0];
  v236 = 0;
  v106 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v99 fromData:v105 error:&v236];
  v107 = v236;
  if (!v107 && v106)
  {
    v108 = v106;
    goto LABEL_116;
  }

  v152 = nrCopyLogObj_237();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_201:
    v181 = nrCopyLogObj_237();
    _NRLogWithArgs(v181, 17, "Failed to unarchive object of type %@: %@", v182, v183, v184, v185, v186, v99);

    goto LABEL_202;
  }

  v180 = v152;
  v210 = os_log_type_enabled(v152, OS_LOG_TYPE_FAULT);

  if (v210)
  {
    goto LABEL_201;
  }

LABEL_202:
  v108 = 0;
LABEL_116:

  if (!v108)
  {
    v6 = v223;
LABEL_121:
    p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
    v109 = v220;

    goto LABEL_123;
  }

  objc_opt_class();
  v6 = v223;
  p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
  v109 = v220;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((a1 + 48), v108);
  }

LABEL_123:
  os_unfair_lock_unlock((a1 + 24));
  v111.i32[0] = *(a1 + 9);
  v111.i16[2] = *(a1 + 13);
  v111.i8[6] = *(a1 + 15);
  v221 = v111;
  v112 = v219 != *(a1 + 17);
  v113 = v109 != *(a1 + 18);
  v114 = v215 != *(a1 + 20);
  v115 = v217 != *(a1 + 19);
  v116 = v224;
  if (v224 | *(a1 + 40))
  {
    v117 = [v224 isEqualToString:?] ^ 1;
  }

  else
  {
    LOBYTE(v117) = 0;
  }

  if (v6 | *v5)
  {
    v119 = v117;
    v120 = [v6 isEqual:?];
    LOBYTE(v117) = v119;
    v118 = v120 ^ 1;
  }

  else
  {
    v118 = 0;
  }

  v121 = *(a1 + 16);
  v222 = v3;
  if (*(a1 + 8))
  {
    v122 = v213;
    *(v122.i16 + 1) = *(v213.i16 + 1);
    v122.i8[3] = v213.i8[3];
    v122.i16[2] = v213.i16[2];
    v122.i8[6] = v211;
    v123 = vmvn_s8(vceq_s8(v122, v221));
    v124 = v123.i8[6];
    v125 = v123.i8[5];
    v126 = v123.i8[4];
    v127 = v123.i8[3];
    v128 = v123.i8[2];
    v129 = v123.i8[1];
    v130 = v123.i8[0];
    v131 = v112;
  }

  else
  {
    v131 = 1;
    v113 = 1;
    *(a1 + 8) = 1;
    v114 = 1;
    v115 = 1;
    LOBYTE(v117) = 1;
    v118 = 1;
    v130 = 1;
    v129 = 1;
    v128 = 1;
    v127 = 1;
    v126 = 1;
    v125 = 1;
    v124 = 1;
  }

  v202 = v130;
  v203 = v129;
  v204 = v128;
  v205 = v127;
  v206 = v126;
  v207 = v125;
  v208 = v124;
  v209 = v121;
  v212 = v118;
  v214 = v117;
  v216 = v115;
  v218 = v114;
  v132 = v115 | v131 | v121 | v113 | v117 | v114 | v118 | v124 | v125 | v126 | v127 | v128 | v129 | v130;
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(p_inst_meths[63], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_151;
  }

  v133 = *(a1 + 17);
  *(a1 + 9);
  *(a1 + 10);
  *(a1 + 11);
  *(a1 + 12);
  *(a1 + 13);
  *(a1 + 15);
  *(a1 + 16);
  *(a1 + 14);
  v134 = p_inst_meths[63];
  v135 = createStringFromNRLinkType(v133);
  v136 = createStringFromNRLinkSubtype(*(a1 + 18));
  v137 = *(a1 + 20);
  v138 = *(a1 + 40);
  if (v137 > 29)
  {
    switch(v137)
    {
      case 0x1E:
        v139 = @"Heavy";
        goto LABEL_150;
      case 0x28:
        v139 = @"Trapping";
        goto LABEL_150;
      case 0x32:
        v139 = @"Sleeping";
        goto LABEL_150;
    }

LABEL_147:
    v139 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v137];
    goto LABEL_150;
  }

  if (!v137)
  {
    v139 = @"Nominal";
    goto LABEL_150;
  }

  if (v137 == 10)
  {
    v139 = @"Light";
    goto LABEL_150;
  }

  if (v137 != 20)
  {
    goto LABEL_147;
  }

  v139 = @"Moderate";
LABEL_150:
  *(a1 + 19);
  v200 = [a1 deviceInfo];
  v201 = *(a1 + 32);
  _NRLogWithArgs(v134, 0, "%s%.30s:%-4d Received %supdate %sregistered %sabled %snearby %sconnected %scloudConnected %sclassCConnected %shasUnpairedBluetooth %s %@(%@) prx %@ thermal %@ %spluggedIn deviceInfo(%@) for %@", v140, v141, v142, v143, v144, "");

  v116 = v224;
LABEL_151:
  if (v132)
  {
    v145 = *(a1 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v146.i8[0] = v202;
    v146.i8[1] = v203;
    v146.i8[2] = v204;
    v146.i8[3] = v205;
    v146.i8[4] = v206;
    v146.i8[5] = v207;
    v146.i16[3] = v208;
    block[2] = __43__NRDeviceMonitor_updateStateFromResponse___block_invoke;
    block[3] = &unk_27996AEC8;
    v147 = vand_s8(v146, 0x101010101010101);
    v228 = v147.i8[6];
    block[4] = a1;
    v227 = v147.i16[2];
    v226 = v147.i32[0];
    v229 = v209;
    v230 = v131;
    v231 = v113;
    v232 = v214;
    v233 = v218;
    v234 = v216;
    v235 = v212;
    dispatch_async(v145, block);
  }

  v3 = v222;
LABEL_154:
}

- (void)setInternalProxySvcIntfName:(uint64_t)a1
{
  v4 = a2;
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  v13 = v4;
  if (([v6 isEqualToString:?] & 1) == 0)
  {
    if (nrCopyLogObj_onceToken_227 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
      v12 = *v5;
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d proxy-svc intf name: %@ -> %@", v7, v8, v9, v10, v11, "");
    }

    objc_storeStrong(v5, a2);
  }
}

void __43__NRDeviceMonitor_updateStateFromResponse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((v8 + 64));
    if (WeakRetained)
    {
      v175 = WeakRetained;
      if (*(a1 + 40) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_20:
        if (*(a1 + 41) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_31:
          if (*(a1 + 42) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
          {
LABEL_42:
            if (*(a1 + 43) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
            {
LABEL_53:
              if (*(a1 + 44) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
              {
LABEL_64:
                if (*(a1 + 45) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                {
LABEL_75:
                  if (*(a1 + 46) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                  {
LABEL_88:
                    if (*(a1 + 47) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                    {
LABEL_101:
                      if (*(a1 + 48) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                      {
LABEL_112:
                        if (*(a1 + 49) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                        {
LABEL_123:
                          if (*(a1 + 50) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                          {
                            goto LABEL_138;
                          }

                          if (nrCopyLogObj_onceToken_227 != -1)
                          {
                            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                          }

                          v113 = nrCopyLogObj_sNRLogObj_229;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v114 = v113;
                            v115 = os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT);

                            if (!v115)
                            {
LABEL_135:
                              v124 = *(a1 + 32);
                              if (v124)
                              {
                                v125 = *(v124 + 40);
                              }

                              else
                              {
                                v125 = 0;
                              }

                              v126 = v125;
                              v127 = [v126 copy];
                              [v175 deviceProxyServiceInterfaceNameDidChange:v124 interfaceName:v127];

LABEL_138:
                              if (*(a1 + 51) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                              {
                                goto LABEL_166;
                              }

                              if (nrCopyLogObj_onceToken_227 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                              }

                              v128 = nrCopyLogObj_sNRLogObj_229;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v129 = v128;
                                v130 = os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT);

                                if (!v130)
                                {
LABEL_163:
                                  v141 = *(a1 + 32);
                                  if (v141)
                                  {
                                    v142 = *(v141 + 20);
                                  }

                                  else
                                  {
                                    v142 = 0;
                                  }

                                  [v175 deviceThermalPressureLevelDidChange:v141 thermalPressureLevel:v142];
LABEL_166:
                                  if (*(a1 + 52) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                                  {
                                    goto LABEL_181;
                                  }

                                  if (nrCopyLogObj_onceToken_227 != -1)
                                  {
                                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                  }

                                  v143 = nrCopyLogObj_sNRLogObj_229;
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v144 = v143;
                                    v145 = os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT);

                                    if (!v145)
                                    {
LABEL_178:
                                      v154 = *(a1 + 32);
                                      if (v154)
                                      {
                                        v155 = *(v154 + 19);
                                      }

                                      [v175 devicePluggedInStateDidChange:? pluggedIn:?];
LABEL_181:
                                      if (*(a1 + 53) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                                      {
LABEL_194:
                                        v12 = v175;
                                        goto LABEL_195;
                                      }

                                      if (nrCopyLogObj_onceToken_227 != -1)
                                      {
                                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                      }

                                      v156 = nrCopyLogObj_sNRLogObj_229;
                                      if (sNRCopyLogToStdErr == 1)
                                      {
                                      }

                                      else
                                      {
                                        v157 = v156;
                                        v158 = os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT);

                                        if (!v158)
                                        {
LABEL_191:
                                          v166 = *(a1 + 32);
                                          if (v166)
                                          {
                                            v167 = *(v166 + 48);
                                          }

                                          else
                                          {
                                            v167 = 0;
                                          }

                                          v168 = v167;
                                          [v175 deviceInfoDidChange:v166 deviceInfo:v168];

                                          goto LABEL_194;
                                        }
                                      }

                                      if (nrCopyLogObj_onceToken_227 != -1)
                                      {
                                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                      }

                                      v159 = nrCopyLogObj_sNRLogObj_229;
                                      v160 = [*(a1 + 32) deviceIdentifier];
                                      v173 = [*(a1 + 32) deviceInfo];
                                      _NRLogWithArgs(v159, 0, "%s%.30s:%-4d Informing client that %@ has deviceInfo %@", v161, v162, v163, v164, v165, "");

                                      goto LABEL_191;
                                    }
                                  }

                                  if (nrCopyLogObj_onceToken_227 != -1)
                                  {
                                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                  }

                                  v146 = nrCopyLogObj_sNRLogObj_229;
                                  v152 = [*(a1 + 32) deviceIdentifier];
                                  v153 = *(a1 + 32);
                                  if (v153)
                                  {
                                    *(v153 + 19);
                                  }

                                  _NRLogWithArgs(v146, 0, "%s%.30s:%-4d Informing client that %@ is %spluggedIn", v147, v148, v149, v150, v151, "");

                                  goto LABEL_178;
                                }
                              }

                              if (nrCopyLogObj_onceToken_227 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                              }

                              v131 = nrCopyLogObj_sNRLogObj_229;
                              v137 = [*(a1 + 32) deviceIdentifier];
                              v138 = *(a1 + 32);
                              if (v138)
                              {
                                v139 = *(v138 + 20);
                                if (v139 > 29)
                                {
                                  switch(v139)
                                  {
                                    case 0x1E:
                                      v140 = @"Heavy";
                                      goto LABEL_162;
                                    case 0x28:
                                      v140 = @"Trapping";
                                      goto LABEL_162;
                                    case 0x32:
                                      v140 = @"Sleeping";
                                      goto LABEL_162;
                                  }

LABEL_159:
                                  v140 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v139];
                                  goto LABEL_162;
                                }

                                if (v139)
                                {
                                  if (v139 == 10)
                                  {
                                    v140 = @"Light";
                                    goto LABEL_162;
                                  }

                                  if (v139 == 20)
                                  {
                                    v140 = @"Moderate";
LABEL_162:
                                    _NRLogWithArgs(v131, 0, "%s%.30s:%-4d Informing client that %@ has thermal pressure level %@", v132, v133, v134, v135, v136, "");

                                    goto LABEL_163;
                                  }

                                  goto LABEL_159;
                                }
                              }

                              v140 = @"Nominal";
                              goto LABEL_162;
                            }
                          }

                          if (nrCopyLogObj_onceToken_227 != -1)
                          {
                            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                          }

                          v116 = nrCopyLogObj_sNRLogObj_229;
                          v117 = [*(a1 + 32) deviceIdentifier];
                          v118 = *(a1 + 32);
                          if (v118)
                          {
                            v118 = v118[5];
                          }

                          v172 = v118;
                          _NRLogWithArgs(v116, 0, "%s%.30s:%-4d Informing client that %@ has proxy svc interface name %@", v119, v120, v121, v122, v123, "");

                          goto LABEL_135;
                        }

                        if (nrCopyLogObj_onceToken_227 != -1)
                        {
                          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                        }

                        v103 = nrCopyLogObj_sNRLogObj_229;
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v104 = v103;
                          v105 = os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT);

                          if (!v105)
                          {
LABEL_122:
                            [v175 deviceLinkTypeDidChange:*(a1 + 32) linkType:objc_msgSend(*(a1 + 32) linkSubtype:{"linkType"), objc_msgSend(*(a1 + 32), "linkSubtype")}];
                            goto LABEL_123;
                          }
                        }

                        if (nrCopyLogObj_onceToken_227 != -1)
                        {
                          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                        }

                        v106 = nrCopyLogObj_sNRLogObj_229;
                        v107 = [*(a1 + 32) deviceIdentifier];
                        StringFromNRLinkType = createStringFromNRLinkType([*(a1 + 32) linkType]);
                        StringFromNRLinkSubtype = createStringFromNRLinkSubtype([*(a1 + 32) linkSubtype]);
                        _NRLogWithArgs(v106, 0, "%s%.30s:%-4d Informing client that %@ has link type %@ subtype %@", v108, v109, v110, v111, v112, "");

                        goto LABEL_122;
                      }

                      if (nrCopyLogObj_onceToken_227 != -1)
                      {
                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                      }

                      v94 = nrCopyLogObj_sNRLogObj_229;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v95 = v94;
                        v96 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);

                        if (!v96)
                        {
LABEL_111:
                          [v175 deviceLinkTypeDidChange:*(a1 + 32) linkType:{objc_msgSend(*(a1 + 32), "linkType")}];
                          goto LABEL_112;
                        }
                      }

                      if (nrCopyLogObj_onceToken_227 != -1)
                      {
                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                      }

                      v97 = nrCopyLogObj_sNRLogObj_229;
                      v169 = [*(a1 + 32) deviceIdentifier];
                      v170 = createStringFromNRLinkType([*(a1 + 32) linkType]);
                      _NRLogWithArgs(v97, 0, "%s%.30s:%-4d Informing client that %@ has link type %@", v98, v99, v100, v101, v102, "");

                      goto LABEL_111;
                    }

                    if (nrCopyLogObj_onceToken_227 != -1)
                    {
                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                    }

                    v83 = nrCopyLogObj_sNRLogObj_229;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v84 = v83;
                      v85 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);

                      if (!v85)
                      {
LABEL_100:
                        [v175 deviceHasUnpairedBluetooth:*(a1 + 32)];
                        goto LABEL_101;
                      }
                    }

                    if (nrCopyLogObj_onceToken_227 != -1)
                    {
                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                    }

                    v86 = nrCopyLogObj_sNRLogObj_229;
                    v92 = [*(a1 + 32) deviceIdentifier];
                    v93 = *(a1 + 32);
                    if (v93)
                    {
                      *(v93 + 16);
                    }

                    _NRLogWithArgs(v86, 0, "%s%.30s:%-4d Informing client that %@ %shasUnpairedBluetooth", v87, v88, v89, v90, v91, "");

                    goto LABEL_100;
                  }

                  if (nrCopyLogObj_onceToken_227 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                  }

                  v72 = nrCopyLogObj_sNRLogObj_229;
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v73 = v72;
                    v74 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);

                    if (!v74)
                    {
LABEL_87:
                      [v175 deviceIsClassCConnectedDidChange:*(a1 + 32) isClassCConnected:{objc_msgSend(*(a1 + 32), "isClassCConnected")}];
                      goto LABEL_88;
                    }
                  }

                  if (nrCopyLogObj_onceToken_227 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                  }

                  v75 = nrCopyLogObj_sNRLogObj_229;
                  v81 = [*(a1 + 32) deviceIdentifier];
                  v82 = *(a1 + 32);
                  if (v82)
                  {
                    *(v82 + 15);
                  }

                  _NRLogWithArgs(v75, 0, "%s%.30s:%-4d Informing client that %@ is %sclassCConnected", v76, v77, v78, v79, v80, "");

                  goto LABEL_87;
                }

                if (nrCopyLogObj_onceToken_227 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                }

                v62 = nrCopyLogObj_sNRLogObj_229;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v63 = v62;
                  v64 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

                  if (!v64)
                  {
LABEL_74:
                    [v175 deviceIsAsleepDidChange:*(a1 + 32) isAsleep:{objc_msgSend(*(a1 + 32), "isAsleep")}];
                    goto LABEL_75;
                  }
                }

                if (nrCopyLogObj_onceToken_227 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                }

                v65 = nrCopyLogObj_sNRLogObj_229;
                v66 = [*(a1 + 32) deviceIdentifier];
                [*(a1 + 32) isAsleep];
                _NRLogWithArgs(v65, 0, "%s%.30s:%-4d Informing client that %@ is %s", v67, v68, v69, v70, v71, "");

                goto LABEL_74;
              }

              if (nrCopyLogObj_onceToken_227 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
              }

              v52 = nrCopyLogObj_sNRLogObj_229;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v53 = v52;
                v54 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

                if (!v54)
                {
LABEL_63:
                  [v175 deviceIsCloudConnectedDidChange:*(a1 + 32) isCloudConnected:{objc_msgSend(*(a1 + 32), "isCloudConnected")}];
                  goto LABEL_64;
                }
              }

              if (nrCopyLogObj_onceToken_227 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
              }

              v55 = nrCopyLogObj_sNRLogObj_229;
              v56 = [*(a1 + 32) deviceIdentifier];
              [*(a1 + 32) isCloudConnected];
              _NRLogWithArgs(v55, 0, "%s%.30s:%-4d Informing client that %@ is %scloudConnected", v57, v58, v59, v60, v61, "");

              goto LABEL_63;
            }

            if (nrCopyLogObj_onceToken_227 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
            }

            v42 = nrCopyLogObj_sNRLogObj_229;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v43 = v42;
              v44 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

              if (!v44)
              {
LABEL_52:
                [v175 deviceIsConnectedDidChange:*(a1 + 32) isConnected:{objc_msgSend(*(a1 + 32), "isConnected")}];
                goto LABEL_53;
              }
            }

            if (nrCopyLogObj_onceToken_227 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
            }

            v45 = nrCopyLogObj_sNRLogObj_229;
            v46 = [*(a1 + 32) deviceIdentifier];
            [*(a1 + 32) isConnected];
            _NRLogWithArgs(v45, 0, "%s%.30s:%-4d Informing client that %@ is %sconnected", v47, v48, v49, v50, v51, "");

            goto LABEL_52;
          }

          if (nrCopyLogObj_onceToken_227 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          }

          v32 = nrCopyLogObj_sNRLogObj_229;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v33 = v32;
            v34 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

            if (!v34)
            {
LABEL_41:
              [v175 deviceIsNearbyDidChange:*(a1 + 32) isNearby:{objc_msgSend(*(a1 + 32), "isNearby")}];
              goto LABEL_42;
            }
          }

          if (nrCopyLogObj_onceToken_227 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          }

          v35 = nrCopyLogObj_sNRLogObj_229;
          v36 = [*(a1 + 32) deviceIdentifier];
          [*(a1 + 32) isNearby];
          _NRLogWithArgs(v35, 0, "%s%.30s:%-4d Informing client that %@ is %snearby", v37, v38, v39, v40, v41, "");

          goto LABEL_41;
        }

        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        v22 = nrCopyLogObj_sNRLogObj_229;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v23 = v22;
          v24 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

          if (!v24)
          {
LABEL_30:
            [v175 deviceIsEnabledDidChange:*(a1 + 32) isEnabled:{objc_msgSend(*(a1 + 32), "isEnabled")}];
            goto LABEL_31;
          }
        }

        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        v25 = nrCopyLogObj_sNRLogObj_229;
        v26 = [*(a1 + 32) deviceIdentifier];
        [*(a1 + 32) isEnabled];
        _NRLogWithArgs(v25, 0, "%s%.30s:%-4d Informing client that %@ is %sabled", v27, v28, v29, v30, v31, "");

        goto LABEL_30;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      v11 = nrCopyLogObj_sNRLogObj_229;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v13 = v11;
        v14 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

        if (!v14)
        {
LABEL_19:
          [v175 deviceIsRegisteredDidChange:*(a1 + 32) isRegistered:{objc_msgSend(*(a1 + 32), "isRegistered")}];
          goto LABEL_20;
        }
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      v15 = nrCopyLogObj_sNRLogObj_229;
      v16 = [*(a1 + 32) deviceIdentifier];
      [*(a1 + 32) isRegistered];
      _NRLogWithArgs(v15, 0, "%s%.30s:%-4d Informing client that %@ is %sregistered", v17, v18, v19, v20, v21, "");

      goto LABEL_19;
    }
  }

  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d No delegate found", a4, a5, a6, a7, a8, "");
  }

  v12 = 0;
LABEL_195:
}

@end