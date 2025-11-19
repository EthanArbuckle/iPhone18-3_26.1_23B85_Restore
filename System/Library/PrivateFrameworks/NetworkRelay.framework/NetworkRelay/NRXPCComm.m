@interface NRXPCComm
- (NRXPCComm)initWithDeviceIdentifier:(id)a3 notificationQueue:(id)a4 notificationBlock:(id)a5;
- (id)description;
- (void)activate;
- (void)activateLocked;
- (void)cancel;
- (void)dealloc;
- (void)sendMessageLocked:(uint64_t)a1;
- (void)sendXPCCommDictionary:(id)a3;
@end

@implementation NRXPCComm

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    if (!self->_cancelled)
    {
      [(NRXPCComm *)self activateLocked];
      goto LABEL_8;
    }

    v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v4 = v3;
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d not activating as cancelled", v7, v8, v9, v10, v11, "");
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activateLocked
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 12));
    if (!*(a1 + 32))
    {
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      v2 = nrXPCCopyQueue_nrXPCQueue;
      mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v2, 2uLL);
      v4 = *(a1 + 32);
      *(a1 + 32) = mach_service;

      objc_initWeak(&location, a1);
      v5 = *(a1 + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__NRXPCComm_activateLocked__block_invoke;
      v7[3] = &unk_27996B2D8;
      objc_copyWeak(&v8, &location);
      xpc_connection_set_event_handler(v5, v7);

      v6 = *(a1 + 32);
      xpc_connection_activate(v6);

      [(NRXPCComm *)a1 sendMessageLocked:?];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __27__NRXPCComm_activateLocked__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_41;
  }

  v5 = MEMORY[0x25F8746E0](v3);
  if (v5 == MEMORY[0x277D86480])
  {
    os_unfair_lock_lock(WeakRetained + 3);
    *(WeakRetained + 8) = 0;
    if (v3 == MEMORY[0x277D863F0])
    {
      v19 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v51 = v19;
        v52 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

        if (!v52)
        {
          goto LABEL_37;
        }
      }

      v53 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      v37 = v53;
      v59 = "%s%.30s:%-4d xpc connection interrupted";
    }

    else
    {
      v8 = MEMORY[0x277D863F8];
      v9 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      if (v3 != v8)
      {
        if (sNRCopyLogToStdErr)
        {

LABEL_27:
          v37 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
          _NRLogWithArgs(v37, 16, "%s%.30s:%-4d received unknown XPC error: %@", v38, v39, v40, v41, v42, "");
LABEL_36:

          goto LABEL_37;
        }

        v35 = v9;
        v36 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

        if (v36)
        {
          goto LABEL_27;
        }

LABEL_37:
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"teardown"];
        v62 = *(WeakRetained + 5);
        if (v62)
        {
          v63 = v62;
          v64 = *(WeakRetained + 6);
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __27__NRXPCComm_activateLocked__block_invoke_2;
          v70[3] = &unk_27996B158;
          v72 = v63;
          v71 = v13;
          v65 = v63;
          dispatch_async(v64, v70);
        }

        os_unfair_lock_unlock(WeakRetained + 3);
        goto LABEL_40;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v60 = v9;
        v61 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (!v61)
        {
          goto LABEL_37;
        }
      }

      v53 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      v37 = v53;
      v59 = "%s%.30s:%-4d received XPC error invalid";
    }

    _NRLogWithArgs(v53, 0, v59, v54, v55, v56, v57, v58, "");
    goto LABEL_36;
  }

  v6 = MEMORY[0x277D86468];
  if (v5 == MEMORY[0x277D86468])
  {
    os_unfair_lock_lock(WeakRetained + 3);
    v10 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v10;
      v21 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (!v21)
      {
        goto LABEL_18;
      }
    }

    v22 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v22, 2, "%s%.30s:%-4d Received XPC dict: %@", v23, v24, v25, v26, v27, "");

LABEL_18:
    v13 = xpc_dictionary_get_dictionary(v3, "XPCCommNotification");
    v28 = xpc_dictionary_get_value(v13, "XPCCommDictionary");
    if (MEMORY[0x25F8746E0]() == v6)
    {
      v30 = _CFXPCCreateCFObjectFromXPCObject();
      v31 = *(WeakRetained + 5);
      if (v31)
      {
        v32 = v31;
        v33 = *(WeakRetained + 6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__NRXPCComm_activateLocked__block_invoke_3;
        block[3] = &unk_27996B158;
        v69 = v32;
        v68 = v30;
        v34 = v32;
        dispatch_async(v33, block);
      }

      os_unfair_lock_unlock(WeakRetained + 3);

      goto LABEL_40;
    }

    v29 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v43 = v29;
      v44 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

      if (!v44)
      {
LABEL_30:
        os_unfair_lock_unlock(WeakRetained + 3);

        goto LABEL_40;
      }
    }

    v45 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v45, 17, "Invalid notification format", v46, v47, v48, v49, v50, v66);

    goto LABEL_30;
  }

  v7 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_13:
    v13 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d received unexpected XPC message %@", v14, v15, v16, v17, v18, "");
LABEL_40:

    goto LABEL_41;
  }

  v11 = v7;
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_41:
}

- (void)sendMessageLocked:(uint64_t)a1
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_14;
  }

  os_unfair_lock_assert_owner((a1 + 12));
  [(NRXPCComm *)a1 activateLocked];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v20 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v23 = v20;
      v24 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v24)
      {
        goto LABEL_23;
      }
    }

    v25 = nrCopyLogObj_336();
    _NRLogWithArgs(v25, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v26, v27, v28, v29, v30, "");

LABEL_23:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v31 = *__error();
    v32 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v32, "nr_xpc_dictionary_create");
    v33 = nrCopyLogObj_336();
    _NRLogAbortWithPack(v33);
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, "Type", 0x29uLL);
  v6 = [a1 deviceIdentifier];
  v7 = [v6 nrDeviceIdentifier];
  v8 = v5;
  v9 = v7;
  v10 = v9;
  if (v9)
  {
    *uuid = 0;
    v57 = 0;
    [v9 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v8, "DeviceIdentifier", uuid);
    goto LABEL_5;
  }

  v21 = nrCopyLogObj_336();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v34 = v21;
    v35 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);

    if (!v35)
    {
      goto LABEL_5;
    }
  }

  v36 = nrCopyLogObj_336();
  _NRLogWithArgs(v36, 17, "%s called with null uuid", v37, v38, v39, v40, v41, "nr_xpc_dictionary_set_nsuuid");

LABEL_5:
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    v22 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v22;
      v43 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
        goto LABEL_28;
      }
    }

    v44 = nrCopyLogObj_336();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v45, v46, v47, v48, v49, "");

LABEL_28:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v50 = *__error();
    v51 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v51, "nr_xpc_dictionary_create");
    v52 = nrCopyLogObj_336();
    _NRLogAbortWithPack(v52);
  }

  if (v3)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v12;
  if ((*(a1 + 8) & 1) == 0)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"checkin"];
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v11, "XPCCommDictionary", v14);
  xpc_dictionary_set_value(v8, "XPCCommNotification", v11);
  objc_initWeak(uuid, a1);
  v15 = [v13 description];
  v16 = *(a1 + 32);
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v17 = nrXPCCopyQueue_nrXPCQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__NRXPCComm_sendMessageLocked___block_invoke;
  handler[3] = &unk_27996AEF8;
  objc_copyWeak(&v55, uuid);
  v18 = v15;
  v54 = v18;
  xpc_connection_send_message_with_reply(v16, v8, v17, handler);

  *(a1 + 8) = 1;
  objc_destroyWeak(&v55);

  objc_destroyWeak(uuid);
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

void __31__NRXPCComm_sendMessageLocked___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v24);
    v5 = MEMORY[0x277D86480];
    v6 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
    if (v4 == v5)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v15 = v6;
        v16 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

        if (!v16)
        {
          goto LABEL_12;
        }
      }

      v9 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
      v23 = *(a1 + 32);
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d failed to send %@ due to error %@", v17, v18, v19, v20, v21, "");
    }

    else
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v7 = v6;
        v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v9 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
      v22 = *(a1 + 32);
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d sent %@", v10, v11, v12, v13, v14, "");
    }
  }

LABEL_12:
}

- (void)sendXPCCommDictionary:(id)a3
{
  v14 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    v5 = 0;
    goto LABEL_6;
  }

  if (!self->_cancelled)
  {
    v5 = self;
LABEL_6:
    [(NRXPCComm *)v5 sendMessageLocked:v14];
    goto LABEL_9;
  }

  v4 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v6 = v4;
    v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v8, 0, "%s%.30s:%-4d not sending message as cancelled", v9, v10, v11, v12, v13, "");

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  v5 = [(NRXPCComm *)self deviceIdentifier];
  v6 = [v5 nrDeviceIdentifier];
  v7 = [v6 UUIDString];
  v8 = [v3 initWithFormat:@"XPCComm[%llu %@]", identifier, v7];

  return v8;
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_4:
    v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Dealloc", v7, v8, v9, v10, v11, "");

    goto LABEL_5;
  }

  v4 = v3;
  v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(NRXPCComm *)self cancel];
  v12 = self->_nrUUID;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v12];

  os_unfair_lock_unlock(&sNRLogLock);
  v13.receiver = self;
  v13.super_class = NRXPCComm;
  [(NRXPCComm *)&v13 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Cancel", v7, v8, v9, v10, v11, "");

LABEL_5:
  self->_cancelled = 1;
  os_unfair_lock_assert_owner(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v13 = self->_connection;
    self->_connection = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NRXPCComm)initWithDeviceIdentifier:(id)a3 notificationQueue:(id)a4 notificationBlock:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v30 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v32 = v30;
      v33 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

      if (!v33)
      {
LABEL_14:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v40 = *__error();
        v41 = _os_log_pack_fill();
        *v41 = 136446466;
        *(v41 + 4) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
        *(v41 + 12) = 2080;
        *(v41 + 14) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
        goto LABEL_18;
      }
    }

    v34 = nrCopyLogObj_336();
    _NRLogWithArgs(v34, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", v35, v36, v37, v38, v39, "");

    goto LABEL_14;
  }

  v12 = v11;
  v53.receiver = self;
  v53.super_class = NRXPCComm;
  v13 = [(NRXPCComm *)&v53 init];
  if (!v13)
  {
    v31 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v42 = v31;
      v43 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v43)
      {
LABEL_17:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v50 = *__error();
        v51 = _os_log_pack_fill();
        *v51 = 136446210;
        *(v51 + 4) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
LABEL_18:
        v52 = nrCopyLogObj_336();
        _NRLogAbortWithPack(v52);
      }
    }

    v44 = nrCopyLogObj_336();
    _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v45, v46, v47, v48, v49, "");

    goto LABEL_17;
  }

  v14 = v13;
  objc_storeStrong(&v13->_deviceIdentifier, a3);
  objc_storeStrong(&v14->_notificationQueue, a4);
  v15 = MEMORY[0x25F8740C0](v12);
  notificationBlock = v14->_notificationBlock;
  v14->_notificationBlock = v15;

  v14->_lock._os_unfair_lock_opaque = 0;
  v14->_identifier = atomic_fetch_add_explicit(&initWithDeviceIdentifier_notificationQueue_notificationBlock__sNRDevicePreferencesIndex, 1uLL, memory_order_relaxed);
  v17 = [(NRDeviceIdentifier *)v14->_deviceIdentifier nrDeviceIdentifier];
  nrUUID = v14->_nrUUID;
  v14->_nrUUID = v17;

  _NRAddEligibleNRUUIDForLogObject(v14->_nrUUID);
  v19 = _NRCopyLogObjectForNRUUID(v14->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_6:
    v22 = _NRCopyLogObjectForNRUUID(v14->_nrUUID);
    _NRLogWithArgs(v22, 0, "%s%.30s:%-4d Init for %@", v23, v24, v25, v26, v27, "");

    goto LABEL_7;
  }

  v20 = v19;
  v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    goto LABEL_6;
  }

LABEL_7:

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

@end