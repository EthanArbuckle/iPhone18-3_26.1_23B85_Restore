@interface NRDevicePairingManagerMux
- (NRDevicePairingManagerMux)init;
- (void)checkInWithRetryCount:(id *)a1;
- (void)dealloc;
- (void)handleUnsolicitedMessage:(uint64_t)a1;
- (void)invalidateManagersWithError:(uint64_t)a1;
- (void)registerPairingManager:(void *)a3 withCompletion:;
- (void)sendAuthMethodRequestForDevice:(uint64_t)a3 authMethod:(void *)a4 pairingManager:(void *)a5 withCompletion:;
- (void)startDiscoveryForPairingManager:(void *)a3 withCompletion:;
- (void)startPairingForPairingManager:(void *)a3 pairingTarget:(void *)a4 withCompletion:;
- (void)stopDiscoveryForPairingManager:(void *)a3 withCompletion:;
- (void)stopPairingForPairingManager:(void *)a3 withCompletion:;
- (void)unregisterPairingManager:(void *)a3 withCompletion:;
@end

@implementation NRDevicePairingManagerMux

- (NRDevicePairingManagerMux)init
{
  v28 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = NRDevicePairingManagerMux;
  v2 = [(NRDevicePairingManagerMux *)&v27 init];
  if (!v2)
  {
    v12 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    v15 = nrCopyLogObj_1710();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v16, v17, v18, v19, v20, "");

LABEL_9:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRDevicePairingManagerMux init]";
    v23 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v23);
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  muxEntries = v2->_muxEntries;
  v2->_muxEntries = v3;

  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(&v2->_queue, nrXPCCopyQueue_nrXPCQueue);
  v5 = v2->_queue;
  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v5, 2uLL);
  connection = v2->_connection;
  v2->_connection = mach_service;

  objc_initWeak(&location, v2);
  v8 = v2->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__NRDevicePairingManagerMux_init__block_invoke;
  handler[3] = &unk_27996B2D8;
  objc_copyWeak(&v25, &location);
  xpc_connection_set_event_handler(v8, handler);

  v9 = v2->_connection;
  xpc_connection_activate(v9);

  [(NRDevicePairingManagerMux *)&v2->super.isa checkInWithRetryCount:?];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

void __33__NRDevicePairingManagerMux_init__block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v18);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v17 = "";
        v11 = "%s%.30s:%-4d Received XPC error: %@, invalidating";
        v12 = 16;
        goto LABEL_23;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Received unexpected XPC object: %@, invalidating", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_24:
            objc_opt_self();
            v13 = objc_alloc(MEMORY[0x277CCA9B8]);
            v19 = *MEMORY[0x277CCA450];
            v20[0] = @"An XPC connection error occurred";
            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
            v15 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v14];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v15];
            goto LABEL_25;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Received unexpected XPC object";
      v12 = 17;
LABEL_23:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v17);
      goto LABEL_24;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    [(NRDevicePairingManagerMux *)WeakRetained handleUnsolicitedMessage:v18];
  }

LABEL_25:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithRetryCount:(id *)a1
{
  location[1] = *MEMORY[0x277D85DE8];
  if (a2 >= 6)
  {
    v19 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v19;
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v23)
      {
        goto LABEL_24;
      }
    }

    v24 = nrCopyLogObj_1710();
    v30 = v24;
    v31 = "Failed to checkin NRDeviceMonitor after retries";
LABEL_23:
    _NRLogWithArgs(v24, 17, v31, v25, v26, v27, v28, v29, v46);

    goto LABEL_24;
  }

  if (a1[3])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "Type", 0x31uLL);
      objc_initWeak(location, a1);
      v6 = a1[3];
      v7 = a1[4];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__NRDevicePairingManagerMux_checkInWithRetryCount___block_invoke;
      handler[3] = &unk_27996B300;
      objc_copyWeak(&v50, location);
      v8 = v5;
      v49 = v8;
      v51 = a2;
      xpc_connection_send_message_with_reply(v6, v8, v7, handler);

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      v9 = nrCopyLogObj_sNRLogObj_1723;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v10 = v9;
        v11 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

        if (!v11)
        {
LABEL_12:

          objc_destroyWeak(&v50);
          objc_destroyWeak(location);

          v18 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      v12 = nrCopyLogObj_sNRLogObj_1723;
      _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Sent check-in message: %@", v13, v14, v15, v16, v17, "");

      goto LABEL_12;
    }

    v21 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v21;
      v36 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = nrCopyLogObj_1710();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_29:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v43 = *__error();
    v44 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v44, "nr_xpc_dictionary_create");
    v45 = nrCopyLogObj_1710();
    _NRLogAbortWithPack(v45);
  }

  v20 = nrCopyLogObj_1710();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_22:
    v24 = nrCopyLogObj_1710();
    v30 = v24;
    v31 = "Could not check in with server as no connection found";
    goto LABEL_23;
  }

  v32 = v20;
  v33 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

  if (v33)
  {
    goto LABEL_22;
  }

LABEL_24:
  v47 = +[NRDevicePairingManager copyXPCError];
  [(NRDevicePairingManagerMux *)a1 invalidateManagersWithError:v47];
  v34 = *MEMORY[0x277D85DE8];
}

- (void)invalidateManagersWithError:(uint64_t)a1
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 24);
  if (v4)
  {
    xpc_connection_cancel(v4);
    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 16);
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v28 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(a1 + 16) objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 24);
          if (v11)
          {
            (*(v11 + 16))(v11, v3);
            objc_setProperty_nonatomic_copy(v10, v12, 0, 24);
          }

          v13 = *(v10 + 32);
          if (v13)
          {
            (*(v13 + 16))(v13, v3);
            objc_setProperty_nonatomic_copy(v10, v14, 0, 32);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v15 = *(v10 + 40);
        }

        else
        {
          v15 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
        }

        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          if (v10)
          {
            v20 = a1;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v30 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = [*(v10 + 40) objectForKeyedSubscript:*(*(&v29 + 1) + 8 * j)];
                (v22)[2](v22, v3);
              }

              v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v18);

            a1 = v20;
LABEL_30:
            [*(v10 + 40) removeAllObjects];
            v25 = *(v10 + 8);
            goto LABEL_31;
          }

          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v24 = [0 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * k)];
              (v24)[2](v24, v3);
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }

        if (v10)
        {
          goto LABEL_30;
        }

        [0 removeAllObjects];
        v25 = 0;
LABEL_31:
        [(NRDevicePairingManager *)v25 invalidateWithError:v3];
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  [*(a1 + 16) removeAllObjects];
  v26 = *MEMORY[0x277D85DE8];
}

void __51__NRDevicePairingManagerMux_checkInWithRetryCount___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_60;
  }

  v4 = MEMORY[0x25F8746E0](xdict);
  if (v4 == MEMORY[0x277D86468])
  {
    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Checkin received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v12 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v12);
        if (!value)
        {
          *(WeakRetained + 8) = 1;
          if (nrCopyLogObj_onceToken_1721 == -1)
          {
            if ((sNRCopyLogToStdErr & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            if ((sNRCopyLogToStdErr & 1) == 0)
            {
LABEL_23:
              if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
              {
                goto LABEL_25;
              }
            }
          }

          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Checked in with terminusd", v15, v16, v17, v18, v19, "");
LABEL_25:
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v20 = *(WeakRetained + 2);
          v21 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v48;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v48 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [*(WeakRetained + 2) objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
                v26 = v25;
                if (v25 && *(v25 + 24))
                {
                  v27 = *(v25 + 8);
                  [(NRDevicePairingManagerMux *)WeakRetained registerPairingManager:v27 withCompletion:v26[3]];

                  objc_setProperty_nonatomic_copy(v26, v28, 0, 24);
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v47 objects:v46 count:16];
            }

            while (v22);
          }

          goto LABEL_58;
        }

        v31 = [NRDevicePairingManager copyErrorForCode:?];
LABEL_57:
        v20 = v31;
        [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v31];
LABEL_58:

        goto LABEL_59;
      }

      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v30 = "received invalid result type";
        goto LABEL_45;
      }

      v34 = v29;
      v35 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

      if (v35)
      {
        v30 = "received invalid result type";
        goto LABEL_55;
      }
    }

    else
    {
      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v30 = "received response without result code";
LABEL_45:

LABEL_55:
        v36 = nrCopyLogObj_1710();
        _NRLogWithArgs(v36, 17, v30, v37, v38, v39, v40, v41, v43);

        goto LABEL_56;
      }

      v32 = v29;
      v33 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

      if (v33)
      {
        v30 = "received response without result code";
        goto LABEL_55;
      }
    }

LABEL_56:
    v31 = +[NRDevicePairingManager copyXPCError];
    goto LABEL_57;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Checkin received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_11;
      }
    }

    else if (sNRCopyLogToStdErr)
    {
      goto LABEL_11;
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
    {
LABEL_12:
      objc_opt_self();
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      *&v47 = *MEMORY[0x277CCA450];
      v46[0] = @"An XPC connection error occurred";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v47 count:1];
      v12 = [v10 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v11];

      [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v12];
LABEL_59:

      goto LABEL_60;
    }

LABEL_11:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Checkin received unexpected XPC object", v5, v6, v7, v8, v9, v43);
    goto LABEL_12;
  }

  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
  {
    v44 = *(a1 + 32);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Checkin could not deliver message %@, error %@, retrying", v5, v6, v7, v8, v9, "");
  }

  [(NRDevicePairingManagerMux *)WeakRetained checkInWithRetryCount:?];
LABEL_60:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)registerPairingManager:(void *)a3 withCompletion:
{
  location[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v82 = a3;
  if (a1)
  {
    if (*(a1 + 24))
    {
      if (v5)
      {
        v6 = v5[11];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = [v7 uuid];

      v9 = [*(a1 + 16) objectForKeyedSubscript:v8];
      if (!v9)
      {
        v9 = [[NRDevicePairingManagerMuxEntry alloc] initWithPairingManager:v5];
        [*(a1 + 16) setObject:v9 forKeyedSubscript:v8];
        if ((*(a1 + 8) & 1) == 0)
        {
          if (!v9)
          {
            goto LABEL_24;
          }

          objc_setProperty_nonatomic_copy(v9, v10, v82, 24);
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }

      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11)
      {
        v12 = v11;
        xpc_dictionary_set_uint64(v11, "PairingManagerOperation", 1uLL);
        if (v5)
        {
          v13 = v5[11];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = v12;
        v16 = v14;
        if (v16)
        {
          v17 = v16;
          location[0] = 0;
          v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:location];
          v19 = location[0];
          if (!v19 && [v18 length])
          {
            xpc_dictionary_set_data(v15, "PairingManagerInfo", [v18 bytes], objc_msgSend(v18, "length"));

            objc_initWeak(location, a1);
            v20 = *(a1 + 24);
            v21 = *(a1 + 32);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __67__NRDevicePairingManagerMux_registerPairingManager_withCompletion___block_invoke;
            handler[3] = &unk_27996B328;
            objc_copyWeak(&v86, location);
            v85 = v82;
            v84 = v15;
            xpc_connection_send_message_with_reply(v20, v84, v21, handler);

            if (nrCopyLogObj_onceToken_1721 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            }

            v22 = nrCopyLogObj_sNRLogObj_1723;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v23 = v22;
              v24 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

              if (!v24)
              {
LABEL_21:

                objc_destroyWeak(&v86);
                objc_destroyWeak(location);
LABEL_22:

                goto LABEL_23;
              }
            }

            if (nrCopyLogObj_onceToken_1721 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
            }

            v25 = nrCopyLogObj_sNRLogObj_1723;
            _NRLogWithArgs(v25, 1, "%s%.30s:%-4d Sent registration message: %@", v26, v27, v28, v29, v30, "");

            goto LABEL_21;
          }

          v35 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v64 = v35;
            v65 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);

            if (!v65)
            {
LABEL_47:

LABEL_48:
              v72 = nrCopyLogObj_1710();
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v73 = v72;
                v74 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);

                if (!v74)
                {
LABEL_52:
                  v81 = +[NRDevicePairingManager copyXPCError];
                  (*(v82 + 2))(v82, v81);

                  goto LABEL_22;
                }
              }

              v75 = nrCopyLogObj_1710();
              _NRLogWithArgs(v75, 16, "%s%.30s:%-4d Register pairing manager request failed to serialize pairing manager info", v76, v77, v78, v79, v80, "");

              goto LABEL_52;
            }
          }

          v66 = nrCopyLogObj_1710();
          _NRLogWithArgs(v66, 17, "Failed to archive %@: %@", v67, v68, v69, v70, v71, v17);

          goto LABEL_47;
        }

        v34 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v56 = v34;
          v57 = os_log_type_enabled(v34, OS_LOG_TYPE_FAULT);

          if (!v57)
          {
LABEL_44:

            goto LABEL_48;
          }
        }

        v58 = nrCopyLogObj_1710();
        _NRLogWithArgs(v58, 17, "%s called with null object", v59, v60, v61, v62, v63, "nr_xpc_dictionary_set_nsobject");

        goto LABEL_44;
      }

      v33 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v45 = v33;
        v46 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

        if (!v46)
        {
          goto LABEL_41;
        }
      }

      v47 = nrCopyLogObj_1710();
      _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v48, v49, v50, v51, v52, "");

LABEL_41:
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v53 = *__error();
      v54 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v54, "nr_xpc_dictionary_create");
      v55 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v55);
    }

    v32 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v36 = v32;
      v37 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v37)
      {
LABEL_38:
        v44 = +[NRDevicePairingManager copyXPCError];
        (*(v82 + 2))(v82, v44);

        goto LABEL_25;
      }
    }

    v38 = nrCopyLogObj_1710();
    _NRLogWithArgs(v38, 16, "%s%.30s:%-4d Register pairing manager request with no XPC connection", v39, v40, v41, v42, v43, "");

    goto LABEL_38;
  }

LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

void __67__NRDevicePairingManagerMux_registerPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v41 = *(a1 + 32);
        v40 = "";
        v11 = "%s%.30s:%-4d Register could not deliver message %@, error %@";
        v12 = 16;
        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Register received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            v16 = *(a1 + 40);
            objc_opt_self();
            v17 = objc_alloc(MEMORY[0x277CCA9B8]);
            v43 = *MEMORY[0x277CCA450];
            v18 = v43;
            v44[0] = @"An XPC connection error occurred";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
            v20 = [v17 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v19];

            (*(v16 + 16))(v16, v20);
            objc_opt_self();
            v21 = objc_alloc(MEMORY[0x277CCA9B8]);
            v43 = v18;
            v44[0] = @"An XPC connection error occurred";
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
            v14 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v22];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v14];
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Register received unexpected XPC object";
      v12 = 17;
LABEL_26:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v40);
      goto LABEL_27;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Register received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v14 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v14);
        if (value)
        {
          v26 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_28;
      }

      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Register received invalid result type";
        goto LABEL_36;
      }

      v29 = v24;
      v30 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v30)
      {
        v25 = "Register received invalid result type";
        goto LABEL_44;
      }
    }

    else
    {
      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Register received response without result code";
LABEL_36:

LABEL_44:
        v31 = nrCopyLogObj_1710();
        _NRLogWithArgs(v31, 17, v25, v32, v33, v34, v35, v36, v40);

        goto LABEL_45;
      }

      v27 = v24;
      v28 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v28)
      {
        v25 = "Register received response without result code";
        goto LABEL_44;
      }
    }

LABEL_45:
    v37 = *(a1 + 40);
    v38 = +[NRDevicePairingManager copyXPCError];
    (*(v37 + 16))(v37, v38);

    v39 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v39];

    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsolicitedMessage:(uint64_t)a1
{
  v3 = a2;
  if (*(a1 + 24))
  {
    v475 = v3;
    v4 = xpc_dictionary_get_value(v3, "PairingManagerOperation");
    v5 = v4;
    if (v4)
    {
      if (MEMORY[0x25F8746E0](v4) == MEMORY[0x277D864C8])
      {
        v6 = v475;
        v7 = v6;
        if (v6)
        {
          uuid = xpc_dictionary_get_uuid(v6, "PairingManager");
          if (!uuid)
          {
            v129 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v152 = v129;
              v153 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);

              if (!v153)
              {
                goto LABEL_156;
              }
            }

            v154 = nrCopyLogObj_1710();
            v146 = v154;
            v160 = "%s%.30s:%-4d Failed to get UUID for key %s";
LABEL_154:
            _NRLogWithArgs(v154, 16, v160, v155, v156, v157, v158, v159, "");
            goto LABEL_155;
          }

          v9 = uuid;
          if (!uuid_is_null(uuid))
          {
            v10 = 0x277CCA000uLL;
            v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v9];

            if (v11)
            {
              v12 = [*(a1 + 16) objectForKeyedSubscript:v11];
              if (!v12)
              {
                v131 = nrCopyLogObj_1710();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v171 = v131;
                  v172 = os_log_type_enabled(v131, OS_LOG_TYPE_FAULT);

                  if (!v172)
                  {
                    goto LABEL_124;
                  }
                }

                v24 = nrCopyLogObj_1710();
                _NRLogWithArgs(v24, 17, "Pairing manager %@ is not registered", v173, v174, v175, v176, v177, v11);
                goto LABEL_123;
              }

              value = xpc_uint64_get_value(v5);
              if (value <= 7)
              {
                if (value != 5)
                {
                  if (value == 7)
                  {
                    v24 = v7;
                    if (nrCopyLogObj_onceToken_1721 != -1)
                    {
                      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                    }

                    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                    {
                      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received auth method request from peer", v19, v20, v21, v22, v23, "");
                    }

                    uint64 = xpc_dictionary_get_uint64(v24, "AuthRequestType");
                    if (uint64)
                    {
                      v26 = uint64;
                      v27 = xpc_dictionary_get_value(v24, "AuthData");
                      v28 = v27;
                      if (v27 && MEMORY[0x25F8746E0](v27) == MEMORY[0x277D86458])
                      {
                        v29 = MEMORY[0x277CBEA90];
                        bytes_ptr = xpc_data_get_bytes_ptr(v28);
                        v31 = [v29 _newZeroingDataWithBytes:bytes_ptr length:xpc_data_get_length(v28)];
                        v32 = v12[1];
                        v33 = v31;
                        if (v32)
                        {
                          v34 = [v32 authRequestHandler];

                          if (v34)
                          {
                            v35 = v32[7];
                            block = MEMORY[0x277D85DD0];
                            v478 = 3221225472;
                            v479 = __64__NRDevicePairingManager_receivedRequestForAuthMethod_authData___block_invoke;
                            v480 = &unk_27996B270;
                            v481 = v32;
                            v483 = v26;
                            v482 = v33;
                            dispatch_async(v35, &block);
                          }
                        }
                      }

                      else
                      {
                        v178 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v185 = v178;
                          v186 = os_log_type_enabled(v178, OS_LOG_TYPE_FAULT);

                          if (!v186)
                          {
                            goto LABEL_122;
                          }
                        }

                        v33 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v33, 17, "Received request for auth method with no auth data", v187, v188, v189, v190, v191, v465);
                      }

LABEL_122:
                      goto LABEL_123;
                    }

                    v180 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v233 = v180;
                      v234 = os_log_type_enabled(v180, OS_LOG_TYPE_FAULT);

                      if (!v234)
                      {
                        goto LABEL_123;
                      }
                    }

                    v235 = nrCopyLogObj_1710();
                    v28 = v235;
                    v241 = "Received request for invalid auth method";
LABEL_294:
                    _NRLogWithArgs(v235, 17, v241, v236, v237, v238, v239, v240, v465);
                    goto LABEL_122;
                  }

LABEL_57:
                  if (nrCopyLogObj_onceToken_1721 != -1)
                  {
                    v179 = value;
                    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                    value = v179;
                  }

                  if ((sNRCopyLogToStdErr & 1) != 0 || (v72 = value, v73 = os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT), value = v72, v73))
                  {
                    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 17, "Received unexpected operation code %llu", v14, v15, v16, v17, v18, value);
                  }

                  goto LABEL_124;
                }

                v24 = v7;
                v74 = xpc_dictionary_get_value(v24, "DiscoveredPairingCandidate");

                if (!v74)
                {
LABEL_101:
                  v111 = xpc_dictionary_get_value(v24, "LostPairingCandidate");

                  if (v111)
                  {
                    v112 = v24;
                    v113 = xpc_dictionary_get_uuid(v112, "LostPairingCandidate");
                    if (v113)
                    {
                      v114 = v113;
                      if (!uuid_is_null(v113))
                      {
                        v28 = [objc_alloc(*(v10 + 3448)) initWithUUIDBytes:v114];

                        if (v28)
                        {
                          v64 = [v12[2] objectForKeyedSubscript:v28];
                          if (v64)
                          {
                            if (nrCopyLogObj_onceToken_1721 != -1)
                            {
                              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                            }

                            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                            {
                              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Lost candidate %@", v115, v116, v117, v118, v119, "");
                            }

                            v120 = v12[1];
                            v121 = v64;
                            if (v120)
                            {
                              v122 = v120;
                              objc_sync_enter(v122);
                              v123 = v122[1];
                              objc_sync_exit(v122);

                              if (v123 == 5)
                              {
                                v124 = [v122 candidateLostHandler];

                                if (v124)
                                {
                                  v125 = v122[7];
                                  block = MEMORY[0x277D85DD0];
                                  v478 = 3221225472;
                                  v479 = __40__NRDevicePairingManager_lostCandidate___block_invoke;
                                  v480 = &unk_27996B248;
                                  v481 = v122;
                                  v482 = v121;
                                  dispatch_async(v125, &block);
                                }
                              }
                            }

                            [v12[2] setObject:0 forKeyedSubscript:v28];
                          }

                          else
                          {
                            if (nrCopyLogObj_onceToken_1721 != -1)
                            {
                              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                            }

                            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                            {
                              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Lost missing candidate %@", v115, v116, v117, v118, v119, "");
                            }
                          }

                          goto LABEL_121;
                        }

LABEL_290:
                        v378 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v379 = v378;
                          v380 = os_log_type_enabled(v378, OS_LOG_TYPE_FAULT);

                          if (!v380)
                          {
                            goto LABEL_123;
                          }
                        }

                        v235 = nrCopyLogObj_1710();
                        v28 = v235;
                        v241 = "Failed to get lost pairing candidate from message";
                        goto LABEL_294;
                      }

                      v230 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {

LABEL_287:
                        v356 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v356, 16, "%s%.30s:%-4d UUID is null for key %s", v373, v374, v375, v376, v377, "");
                        goto LABEL_288;
                      }

                      v371 = v230;
                      v372 = os_log_type_enabled(v230, OS_LOG_TYPE_ERROR);

                      if (v372)
                      {
                        goto LABEL_287;
                      }

LABEL_289:

                      goto LABEL_290;
                    }

                    v228 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v354 = v228;
                      v355 = os_log_type_enabled(v228, OS_LOG_TYPE_ERROR);

                      if (!v355)
                      {
                        goto LABEL_289;
                      }
                    }

                    v356 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v356, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v357, v358, v359, v360, v361, "");
LABEL_288:

                    goto LABEL_289;
                  }

LABEL_123:

LABEL_124:
                  goto LABEL_125;
                }

                v75 = objc_opt_class();
                v76 = v24;
                v77 = v76;
                if (v75)
                {
                  block = 0;
                  data = xpc_dictionary_get_data(v76, "DiscoveredPairingCandidate", &block);
                  if (!data)
                  {
                    v229 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v362 = v229;
                      v363 = os_log_type_enabled(v229, OS_LOG_TYPE_ERROR);

                      if (!v363)
                      {
                        goto LABEL_299;
                      }
                    }

                    v364 = nrCopyLogObj_1710();
                    v348 = v364;
                    v370 = "%s%.30s:%-4d Failed to get XPC data for key %s";
LABEL_297:
                    _NRLogWithArgs(v364, 16, v370, v365, v366, v367, v368, v369, "");
                    goto LABEL_298;
                  }

                  if (block)
                  {
                    v79 = data;
                    v80 = objc_alloc(MEMORY[0x277CBEA90]);
                    v81 = [v80 initWithBytesNoCopy:v79 length:block freeWhenDone:0];
                    v476 = 0;
                    v82 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v75 fromData:v81 error:&v476];
                    v83 = v476;
                    if (!v83 && v82)
                    {
                      v84 = v82;
                      goto LABEL_69;
                    }

                    v232 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v392 = v232;
                      v474 = os_log_type_enabled(v232, OS_LOG_TYPE_FAULT);

                      if (!v474)
                      {
LABEL_307:
                        v84 = 0;
                        v10 = 0x277CCA000;
LABEL_69:

                        if (v84)
                        {
                          v85 = v12[2];
                          v86 = [v84 uuid];
                          v87 = [v85 objectForKeyedSubscript:v86];

                          if (v87)
                          {
                            if (nrCopyLogObj_onceToken_1721 != -1)
                            {
                              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                            }

                            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                            {
                              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received duplicate candidate %@", v88, v89, v90, v91, v92, "");
                            }
                          }

                          else
                          {
                            if (nrCopyLogObj_onceToken_1721 != -1)
                            {
                              dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
                            }

                            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
                            {
                              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received new candidate %@", v88, v89, v90, v91, v92, "");
                            }

                            v104 = v12[2];
                            v105 = [v84 uuid];
                            [v104 setObject:v84 forKeyedSubscript:v105];

                            v106 = v12[1];
                            v84 = v84;
                            if (v106)
                            {
                              v107 = v106;
                              objc_sync_enter(v107);
                              v108 = v107[1];
                              objc_sync_exit(v107);

                              if (v108 == 5)
                              {
                                v109 = [v107 candidateDiscoveredHandler];

                                if (v109)
                                {
                                  v110 = v107[7];
                                  block = MEMORY[0x277D85DD0];
                                  v478 = 3221225472;
                                  v479 = __46__NRDevicePairingManager_discoveredCandidate___block_invoke;
                                  v480 = &unk_27996B248;
                                  v481 = v107;
                                  v482 = v84;
                                  dispatch_async(v110, &block);
                                }
                              }
                            }
                          }

                          goto LABEL_100;
                        }

LABEL_300:
                        v383 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v384 = v383;
                          v385 = os_log_type_enabled(v383, OS_LOG_TYPE_FAULT);

                          if (!v385)
                          {
LABEL_304:
                            v84 = 0;
LABEL_100:

                            goto LABEL_101;
                          }
                        }

                        v386 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v386, 17, "Failed to get new pairing candidate from message", v387, v388, v389, v390, v391, v465);

                        goto LABEL_304;
                      }
                    }

                    v393 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v393, 17, "Failed to unarchive object of type %@: %@", v394, v395, v396, v397, v398, v75);

                    goto LABEL_307;
                  }

                  v231 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {

LABEL_296:
                    v364 = nrCopyLogObj_1710();
                    v348 = v364;
                    v370 = "%s%.30s:%-4d XPC data for key %s is empty";
                    goto LABEL_297;
                  }

                  v381 = v231;
                  v382 = os_log_type_enabled(v231, OS_LOG_TYPE_ERROR);

                  if (v382)
                  {
                    goto LABEL_296;
                  }

LABEL_299:

                  goto LABEL_300;
                }

                v227 = nrCopyLogObj_1710();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v346 = v227;
                  v347 = os_log_type_enabled(v227, OS_LOG_TYPE_FAULT);

                  if (!v347)
                  {
                    goto LABEL_299;
                  }
                }

                v348 = nrCopyLogObj_1710();
                _NRLogWithArgs(v348, 17, "%s called with null cls", v349, v350, v351, v352, v353, "nr_xpc_dictionary_get_nsobject");
LABEL_298:

                goto LABEL_299;
              }

              if (value != 8)
              {
                if (value != 12)
                {
                  goto LABEL_57;
                }

                v24 = v7;
                v36 = xpc_dictionary_get_value(v24, "Result");
                v28 = v36;
                if (v36)
                {
                  if (MEMORY[0x25F8746E0](v36) == MEMORY[0x277D86498])
                  {
                    v37 = xpc_int64_get_value(v28);
                    v473 = v28;
                    if (!v37)
                    {
                      v38 = objc_opt_class();
                      v39 = v24;
                      v40 = v39;
                      if (v38)
                      {
                        block = 0;
                        v41 = xpc_dictionary_get_data(v39, "PairedDevice", &block);
                        if (!v41)
                        {
                          v220 = nrCopyLogObj_1710();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v297 = v220;
                            v298 = os_log_type_enabled(v220, OS_LOG_TYPE_ERROR);

                            if (!v298)
                            {
                              goto LABEL_267;
                            }
                          }

                          v299 = nrCopyLogObj_1710();
                          v282 = v299;
                          v305 = "%s%.30s:%-4d Failed to get XPC data for key %s";
LABEL_265:
                          _NRLogWithArgs(v299, 16, v305, v300, v301, v302, v303, v304, "");
                          goto LABEL_266;
                        }

                        if (block)
                        {
                          v42 = v41;
                          v43 = objc_alloc(MEMORY[0x277CBEA90]);
                          v44 = [v43 initWithBytesNoCopy:v42 length:block freeWhenDone:0];
                          v476 = 0;
                          v45 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v38 fromData:v44 error:&v476];
                          v46 = v476;
                          if (!v46 && v45)
                          {
                            v47 = v45;
                            goto LABEL_36;
                          }

                          v225 = nrCopyLogObj_1710();
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v471 = v225;
                            v469 = os_log_type_enabled(v225, OS_LOG_TYPE_FAULT);

                            if (!v469)
                            {
                              v47 = 0;
LABEL_36:

                              if (v47)
                              {
                                v48 = v40;
                                v49 = xpc_dictionary_get_uuid(v48, "BluetoothUUID");
                                if (v49)
                                {
                                  v50 = v49;
                                  if (uuid_is_null(v49))
                                  {
                                    v226 = nrCopyLogObj_1710();
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v339 = v226;
                                      v340 = os_log_type_enabled(v226, OS_LOG_TYPE_ERROR);

                                      if (!v340)
                                      {
                                        goto LABEL_52;
                                      }
                                    }

                                    v52 = nrCopyLogObj_1710();
                                    _NRLogWithArgs(v52, 16, "%s%.30s:%-4d UUID is null for key %s", v341, v342, v343, v344, v345, "");
                                  }

                                  else
                                  {
                                    v51 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v50];

                                    if (!v51)
                                    {
                                      goto LABEL_53;
                                    }

                                    v52 = [v47 nrDeviceIdentifier];
                                    v48 = v51;
                                    if (v52)
                                    {
                                      os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
                                      v53 = sBluetoothUUIDToNRUUIDMapping;
                                      if (!sBluetoothUUIDToNRUUIDMapping)
                                      {
                                        v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
                                        v55 = sBluetoothUUIDToNRUUIDMapping;
                                        sBluetoothUUIDToNRUUIDMapping = v54;

                                        v53 = sBluetoothUUIDToNRUUIDMapping;
                                      }

                                      if ([v53 count] <= 0xF)
                                      {
                                        v56 = [v52 nrDeviceIdentifier];
                                        [sBluetoothUUIDToNRUUIDMapping setObject:v56 forKeyedSubscript:v48];

                                        if (nrCopyLogObj_onceToken_809 != -1)
                                        {
                                          dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
                                        }

                                        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
                                        {
                                          v57 = nrCopyLogObj_sNRLogObj_811;
                                          v468 = [v52 nrDeviceIdentifier];
                                          _NRLogWithArgs(v57, 1, "%s%.30s:%-4d Adding BluetoothUUID %@ to cache for nrUUID %@", v58, v59, v60, v61, v62, "");
                                        }
                                      }

                                      os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
                                    }
                                  }
                                }

                                else
                                {
                                  v224 = nrCopyLogObj_1710();
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v326 = v224;
                                    v327 = os_log_type_enabled(v224, OS_LOG_TYPE_ERROR);

                                    if (!v327)
                                    {
                                      goto LABEL_52;
                                    }
                                  }

                                  v52 = nrCopyLogObj_1710();
                                  _NRLogWithArgs(v52, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v328, v329, v330, v331, v332, "");
                                }

LABEL_52:
LABEL_53:
                                v63 = v12[1];
                                v64 = v47;
                                if (v63)
                                {
                                  v65 = v63;
                                  objc_sync_enter(v65);
                                  v66 = v65[1];
                                  objc_sync_exit(v65);

                                  if (v66 == 8)
                                  {
                                    v68 = objc_getProperty(v65, v67, 80, 1);
                                    objc_setProperty_atomic_copy(v65, v69, 0, 80);
                                    [(NRDevicePairingManager *)v65 setInternalManagerState:?];
                                    v70 = v65[7];
                                    block = MEMORY[0x277D85DD0];
                                    v478 = 3221225472;
                                    v479 = __59__NRDevicePairingManager_pairingSucceededWithPairedDevice___block_invoke;
                                    v480 = &unk_27996B298;
                                    v481 = v65;
                                    v483 = v68;
                                    v482 = v64;
                                    v71 = v68;
                                    dispatch_async(v70, &block);
                                  }
                                }

                                goto LABEL_121;
                              }

LABEL_268:
                              v316 = nrCopyLogObj_1710();
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v317 = v316;
                                v318 = os_log_type_enabled(v316, OS_LOG_TYPE_FAULT);

                                if (!v318)
                                {
LABEL_272:
                                  v325 = v12[1];
                                  v64 = +[NRDevicePairingManager copyXPCError];
                                  [(NRDevicePairingManager *)v325 pairingFailedWithError:v64];

                                  goto LABEL_121;
                                }
                              }

                              v319 = nrCopyLogObj_1710();
                              _NRLogWithArgs(v319, 17, "Failed to get paired device from message", v320, v321, v322, v323, v324, v465);

                              goto LABEL_272;
                            }
                          }

                          v466 = v38;
                          v333 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v333, 17, "Failed to unarchive object of type %@: %@", v334, v335, v336, v337, v338, v466);

                          v47 = 0;
                          goto LABEL_36;
                        }

                        v222 = nrCopyLogObj_1710();
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_264:
                          v299 = nrCopyLogObj_1710();
                          v282 = v299;
                          v305 = "%s%.30s:%-4d XPC data for key %s is empty";
                          goto LABEL_265;
                        }

                        v314 = v222;
                        v315 = os_log_type_enabled(v222, OS_LOG_TYPE_ERROR);

                        if (v315)
                        {
                          goto LABEL_264;
                        }

LABEL_267:

                        goto LABEL_268;
                      }

                      v218 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v280 = v218;
                        v281 = os_log_type_enabled(v218, OS_LOG_TYPE_FAULT);

                        if (!v281)
                        {
                          goto LABEL_267;
                        }
                      }

                      v282 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v282, 17, "%s called with null cls", v283, v284, v285, v286, v287, "nr_xpc_dictionary_get_nsobject");
LABEL_266:

                      goto LABEL_267;
                    }

                    if (v37 != -3006)
                    {
                      v216 = [NRDevicePairingManager copyErrorForCode:v37];
                      goto LABEL_251;
                    }

                    v192 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v193 = xpc_dictionary_get_value(v24, "BluetoothUUID");

                    if (!v193)
                    {
LABEL_183:
                      v199 = xpc_dictionary_get_value(v24, "NRUUID");

                      if (!v199)
                      {
                        goto LABEL_188;
                      }

                      v200 = v24;
                      v201 = xpc_dictionary_get_uuid(v200, "NRUUID");
                      if (v201)
                      {
                        v202 = v201;
                        if (!uuid_is_null(v201))
                        {
                          v203 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v202];
LABEL_187:

                          [v192 setObject:v203 forKeyedSubscript:@"NRDevicePairingErrorOriginalNRUUIDKey"];
LABEL_188:
                          v204 = xpc_dictionary_get_value(v24, "UnderlyingError");

                          if (!v204)
                          {
LABEL_198:
                            v216 = [NRDevicePairingManager copyErrorForCode:v192 userInfo:?];

LABEL_251:
                            [(NRDevicePairingManager *)v12[1] pairingFailedWithError:v216];

                            v28 = v473;
                            goto LABEL_122;
                          }

                          v205 = objc_opt_class();
                          v206 = v24;
                          v207 = v24;
                          v208 = v207;
                          if (v205)
                          {
                            block = 0;
                            v209 = xpc_dictionary_get_data(v207, "UnderlyingError", &block);
                            if (!v209)
                            {
                              v409 = nrCopyLogObj_1710();
                              v410 = v409;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v447 = os_log_type_enabled(v409, OS_LOG_TYPE_ERROR);

                                if (!v447)
                                {
                                  goto LABEL_344;
                                }
                              }

                              v212 = nrCopyLogObj_1710();
                              _NRLogWithArgs(v212, 16, "%s%.30s:%-4d Failed to get XPC data for key %s", v448, v449, v450, v451, v452, "");
LABEL_343:
                              v215 = 0;
                              goto LABEL_196;
                            }

                            if (block)
                            {
                              v210 = v209;
                              v211 = objc_alloc(MEMORY[0x277CBEA90]);
                              v212 = [v211 initWithBytesNoCopy:v210 length:block freeWhenDone:0];
                              v476 = 0;
                              v213 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v205 fromData:v212 error:&v476];
                              v214 = v476;
                              if (v214 || !v213)
                              {
                                v413 = nrCopyLogObj_1710();
                                if (sNRCopyLogToStdErr == 1)
                                {
                                }

                                else
                                {
                                  v472 = v413;
                                  v470 = os_log_type_enabled(v413, OS_LOG_TYPE_FAULT);

                                  if (!v470)
                                  {
                                    v215 = 0;
                                    goto LABEL_195;
                                  }
                                }

                                v467 = v205;
                                v459 = nrCopyLogObj_1710();
                                _NRLogWithArgs(v459, 17, "Failed to unarchive object of type %@: %@", v460, v461, v462, v463, v464, v467);

                                v215 = 0;
                              }

                              else
                              {
                                v215 = v213;
                              }

LABEL_195:

LABEL_196:
LABEL_197:

                              [v192 setObject:v215 forKeyedSubscript:@"NRDevicePairingErrorTransportErrorKey"];
                              v24 = v206;
                              goto LABEL_198;
                            }

                            v411 = nrCopyLogObj_1710();
                            v412 = v411;
                            if (sNRCopyLogToStdErr == 1)
                            {

LABEL_342:
                              v212 = nrCopyLogObj_1710();
                              _NRLogWithArgs(v212, 16, "%s%.30s:%-4d XPC data for key %s is empty", v454, v455, v456, v457, v458, "");
                              goto LABEL_343;
                            }

                            v453 = os_log_type_enabled(v411, OS_LOG_TYPE_ERROR);

                            if (v453)
                            {
                              goto LABEL_342;
                            }

LABEL_344:
                            v215 = 0;
                            goto LABEL_197;
                          }

                          v403 = nrCopyLogObj_1710();
                          v404 = v403;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v428 = os_log_type_enabled(v403, OS_LOG_TYPE_FAULT);

                            if (!v428)
                            {
                              goto LABEL_344;
                            }
                          }

                          v429 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v429, 17, "%s called with null cls", v430, v431, v432, v433, v434, "nr_xpc_dictionary_get_nsobject");

                          v215 = 0;
                          goto LABEL_197;
                        }

                        v407 = nrCopyLogObj_1710();
                        v408 = v407;
                        if (sNRCopyLogToStdErr == 1)
                        {

LABEL_336:
                          v422 = nrCopyLogObj_1710();
                          _NRLogWithArgs(v422, 16, "%s%.30s:%-4d UUID is null for key %s", v442, v443, v444, v445, v446, "");
                          goto LABEL_337;
                        }

                        v441 = os_log_type_enabled(v407, OS_LOG_TYPE_ERROR);

                        if (v441)
                        {
                          goto LABEL_336;
                        }

LABEL_338:
                        v203 = 0;
                        goto LABEL_187;
                      }

                      v401 = nrCopyLogObj_1710();
                      v402 = v401;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v421 = os_log_type_enabled(v401, OS_LOG_TYPE_ERROR);

                        if (!v421)
                        {
                          goto LABEL_338;
                        }
                      }

                      v422 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v422, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v423, v424, v425, v426, v427, "");
LABEL_337:

                      v203 = 0;
                      goto LABEL_187;
                    }

                    v194 = v24;
                    v195 = v24;
                    v196 = xpc_dictionary_get_uuid(v195, "BluetoothUUID");
                    if (v196)
                    {
                      v197 = v196;
                      if (!uuid_is_null(v196))
                      {
                        v198 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v197];
LABEL_182:

                        [v192 setObject:v198 forKeyedSubscript:@"NRDevicePairingErrorOriginalCBUUIDKey"];
                        v24 = v194;
                        goto LABEL_183;
                      }

                      v405 = nrCopyLogObj_1710();
                      v406 = v405;
                      if (sNRCopyLogToStdErr == 1)
                      {

LABEL_332:
                        v415 = nrCopyLogObj_1710();
                        _NRLogWithArgs(v415, 16, "%s%.30s:%-4d UUID is null for key %s", v436, v437, v438, v439, v440, "");
                        goto LABEL_333;
                      }

                      v435 = os_log_type_enabled(v405, OS_LOG_TYPE_ERROR);

                      if (v435)
                      {
                        goto LABEL_332;
                      }

LABEL_334:
                      v198 = 0;
                      goto LABEL_182;
                    }

                    v399 = nrCopyLogObj_1710();
                    v400 = v399;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v414 = os_log_type_enabled(v399, OS_LOG_TYPE_ERROR);

                      if (!v414)
                      {
                        goto LABEL_334;
                      }
                    }

                    v415 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v415, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v416, v417, v418, v419, v420, "");
LABEL_333:

                    v198 = 0;
                    goto LABEL_182;
                  }

                  v183 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {

LABEL_237:
                    v244 = nrCopyLogObj_1710();
                    v250 = v244;
                    v251 = "Start Pairing received invalid result type";
                    goto LABEL_238;
                  }

                  v260 = v183;
                  v261 = os_log_type_enabled(v183, OS_LOG_TYPE_FAULT);

                  if (v261)
                  {
                    goto LABEL_237;
                  }

LABEL_239:
                  v262 = v12[1];
                  v64 = +[NRDevicePairingManager copyXPCError];
                  [(NRDevicePairingManager *)v262 pairingFailedWithError:v64];

                  goto LABEL_121;
                }

                v181 = nrCopyLogObj_1710();
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v242 = v181;
                  v243 = os_log_type_enabled(v181, OS_LOG_TYPE_FAULT);

                  if (!v243)
                  {
                    goto LABEL_239;
                  }
                }

                v244 = nrCopyLogObj_1710();
                v250 = v244;
                v251 = "Start Pairing request received response without result code";
LABEL_238:
                _NRLogWithArgs(v244, 17, v251, v245, v246, v247, v248, v249, v465);

                goto LABEL_239;
              }

              v98 = v7;
              if (nrCopyLogObj_onceToken_1721 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
              }

              if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
              {
                _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d Received auth method request update", v93, v94, v95, v96, v97, "");
              }

              v24 = v98;
              v99 = xpc_dictionary_get_uuid(v24, "TargetPairingCandidate");
              if (v99)
              {
                v100 = v99;
                if (!uuid_is_null(v99))
                {
                  v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v100];

                  if (v28)
                  {
                    v64 = [v12[5] objectForKeyedSubscript:v28];
                    if (!v64)
                    {
                      v217 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v273 = v217;
                        v274 = os_log_type_enabled(v217, OS_LOG_TYPE_ERROR);

                        if (!v274)
                        {
                          goto LABEL_121;
                        }
                      }

                      v102 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v102, 16, "%s%.30s:%-4d Pairing target %@ in auth method request result has no outstanding request", v275, v276, v277, v278, v279, "");
                      goto LABEL_89;
                    }

                    [v12[5] setObject:0 forKeyedSubscript:v28];
                    v101 = xpc_dictionary_get_value(v24, "Result");
                    if (v101)
                    {
                      v102 = v101;
                      if (MEMORY[0x25F8746E0]() == MEMORY[0x277D86498])
                      {
                        v103 = xpc_int64_get_value(v102);
                        if (!v103)
                        {
                          v64[2](v64);
LABEL_89:

LABEL_121:
                          goto LABEL_122;
                        }

                        v223 = [NRDevicePairingManager copyErrorForCode:v103];
                        (v64[2])(v64, v223);
LABEL_262:

                        goto LABEL_89;
                      }

                      v221 = nrCopyLogObj_1710();
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v306 = v221;
                        v307 = os_log_type_enabled(v221, OS_LOG_TYPE_FAULT);

                        if (!v307)
                        {
LABEL_261:
                          v223 = +[NRDevicePairingManager copyXPCError];
                          (v64[2])(v64, v223);
                          goto LABEL_262;
                        }
                      }

                      v308 = nrCopyLogObj_1710();
                      _NRLogWithArgs(v308, 17, "Register received invalid result type", v309, v310, v311, v312, v313, v465);

                      goto LABEL_261;
                    }

                    v219 = nrCopyLogObj_1710();
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v288 = v219;
                      v289 = os_log_type_enabled(v219, OS_LOG_TYPE_FAULT);

                      if (!v289)
                      {
LABEL_256:
                        v296 = +[NRDevicePairingManager copyXPCError];
                        (v64[2])(v64, v296);

                        v102 = 0;
                        goto LABEL_89;
                      }
                    }

                    v290 = nrCopyLogObj_1710();
                    _NRLogWithArgs(v290, 17, "Auth method request received response without result code", v291, v292, v293, v294, v295, v465);

                    goto LABEL_256;
                  }

LABEL_244:
                  v270 = nrCopyLogObj_1710();
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v271 = v270;
                    v272 = os_log_type_enabled(v270, OS_LOG_TYPE_FAULT);

                    if (!v272)
                    {
                      goto LABEL_123;
                    }
                  }

                  v235 = nrCopyLogObj_1710();
                  v28 = v235;
                  v241 = "Auth method request result missing pairing target UUID";
                  goto LABEL_294;
                }

                v184 = nrCopyLogObj_1710();
                if (sNRCopyLogToStdErr == 1)
                {

LABEL_241:
                  v254 = nrCopyLogObj_1710();
                  _NRLogWithArgs(v254, 16, "%s%.30s:%-4d UUID is null for key %s", v265, v266, v267, v268, v269, "");
                  goto LABEL_242;
                }

                v263 = v184;
                v264 = os_log_type_enabled(v184, OS_LOG_TYPE_ERROR);

                if (v264)
                {
                  goto LABEL_241;
                }

LABEL_243:

                goto LABEL_244;
              }

              v182 = nrCopyLogObj_1710();
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v252 = v182;
                v253 = os_log_type_enabled(v182, OS_LOG_TYPE_ERROR);

                if (!v253)
                {
                  goto LABEL_243;
                }
              }

              v254 = nrCopyLogObj_1710();
              _NRLogWithArgs(v254, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v255, v256, v257, v258, v259, "");
LABEL_242:

              goto LABEL_243;
            }

LABEL_157:
            v163 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v164 = v163;
              v165 = os_log_type_enabled(v163, OS_LOG_TYPE_FAULT);

              if (!v165)
              {
                goto LABEL_126;
              }
            }

            v11 = nrCopyLogObj_1710();
            _NRLogWithArgs(v11, 17, "Pairing manager UUID missing", v166, v167, v168, v169, v170, v465);
LABEL_125:

LABEL_126:
            v3 = v475;
            goto LABEL_127;
          }

          v130 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_153:
            v154 = nrCopyLogObj_1710();
            v146 = v154;
            v160 = "%s%.30s:%-4d UUID is null for key %s";
            goto LABEL_154;
          }

          v161 = v130;
          v162 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);

          if (v162)
          {
            goto LABEL_153;
          }

LABEL_156:

          goto LABEL_157;
        }

        v128 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v144 = v128;
          v145 = os_log_type_enabled(v128, OS_LOG_TYPE_FAULT);

          if (!v145)
          {
            goto LABEL_156;
          }
        }

        v146 = nrCopyLogObj_1710();
        _NRLogWithArgs(v146, 17, "%s called with null dict", v147, v148, v149, v150, v151, "nr_xpc_dictionary_get_nsuuid");
LABEL_155:

        goto LABEL_156;
      }

      v127 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {

LABEL_145:
        v134 = nrCopyLogObj_1710();
        v140 = v134;
        v141 = "Received invalid operation code type";
        goto LABEL_146;
      }

      v142 = v127;
      v143 = os_log_type_enabled(v127, OS_LOG_TYPE_FAULT);

      if (v143)
      {
        goto LABEL_145;
      }

LABEL_147:
      v11 = +[NRDevicePairingManager copyXPCError];
      [(NRDevicePairingManagerMux *)a1 invalidateManagersWithError:v11];
      goto LABEL_125;
    }

    v126 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v132 = v126;
      v133 = os_log_type_enabled(v126, OS_LOG_TYPE_FAULT);

      if (!v133)
      {
        goto LABEL_147;
      }
    }

    v134 = nrCopyLogObj_1710();
    v140 = v134;
    v141 = "Received unsolicited message without operation code";
LABEL_146:
    _NRLogWithArgs(v134, 17, v141, v135, v136, v137, v138, v139, v465);

    goto LABEL_147;
  }

LABEL_127:
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_1721 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 0, "%s%.30s:%-4d Dealloc %@", v2, v3, v4, v5, v6, "");
  }

  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      v9 = self->_connection;
      self->_connection = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = NRDevicePairingManagerMux;
  [(NRDevicePairingManagerMux *)&v10 dealloc];
}

- (void)unregisterPairingManager:(void *)a3 withCompletion:
{
  location[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v72 = a3;
  if (a1)
  {
    if (a1[3])
    {
      if (v5)
      {
        v6 = v5[11];
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = [v7 uuid];

      v9 = [a1[2] objectForKeyedSubscript:v8];
      v10 = v9;
      if (!v9)
      {
        v72[2](v72, 0);
LABEL_20:

        goto LABEL_21;
      }

      v11 = *(v9 + 24);
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = objc_alloc(MEMORY[0x277CCA9B8]);
        location[0] = *MEMORY[0x277CCA450];
        *uuid = @"Manager is in invalid state for this operation";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:uuid forKeys:location count:1];
        v15 = [v13 initWithDomain:@"NRDevicePairingErrorDomain" code:-3001 userInfo:v14];

        (v11)[2](v12, v15);
        objc_setProperty_nonatomic_copy(v10, v16, 0, 24);
      }

      v17 = xpc_dictionary_create(0, 0, 0);
      if (v17)
      {
        v18 = v17;
        xpc_dictionary_set_uint64(v17, "PairingManagerOperation", 2uLL);
        *uuid = 0;
        v79 = 0;
        [v8 getUUIDBytes:uuid];
        v19 = xpc_array_create(0, 0);
        v20 = v19;
        if (v19)
        {
          xpc_array_set_uuid(v19, 0xFFFFFFFFFFFFFFFFLL, uuid);
          xpc_dictionary_set_value(v18, "PairingManagers", v20);
          objc_initWeak(location, a1);
          v21 = a1[3];
          v22 = a1[4];
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __69__NRDevicePairingManagerMux_unregisterPairingManager_withCompletion___block_invoke;
          handler[3] = &unk_27996B350;
          objc_copyWeak(&v77, location);
          v74 = v8;
          v76 = v72;
          v23 = v18;
          v75 = v23;
          xpc_connection_send_message_with_reply(v21, v23, v22, handler);

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v24 = nrCopyLogObj_sNRLogObj_1723;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v25 = v24;
            v26 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

            if (!v26)
            {
LABEL_19:

              objc_destroyWeak(&v77);
              objc_destroyWeak(location);

              goto LABEL_20;
            }
          }

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v27 = nrCopyLogObj_sNRLogObj_1723;
          _NRLogWithArgs(v27, 1, "%s%.30s:%-4d Sent unregistration message: %@", v28, v29, v30, v31, v32, "");

          goto LABEL_19;
        }

        v36 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v59 = v36;
          v60 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

          if (!v60)
          {
            goto LABEL_36;
          }
        }

        v61 = nrCopyLogObj_1710();
        _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_36:
        v67 = _os_log_pack_size();
        MEMORY[0x28223BE20](v67, v68);
        v69 = *__error();
        v70 = _os_log_pack_fill();
        __os_log_helper_1_2_3_8_34_8_0_4_0(v70, "nr_xpc_array_create");
        v71 = nrCopyLogObj_1710();
        _NRLogAbortWithPack(v71);
      }

      v35 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v46 = v35;
        v47 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

        if (!v47)
        {
          goto LABEL_33;
        }
      }

      v48 = nrCopyLogObj_1710();
      _NRLogWithArgs(v48, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v49, v50, v51, v52, v53, "");

LABEL_33:
      v54 = _os_log_pack_size();
      MEMORY[0x28223BE20](v54, v55);
      v56 = *__error();
      v57 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v57, "nr_xpc_dictionary_create");
      v58 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v58);
    }

    v34 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v37 = v34;
      v38 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v38)
      {
LABEL_30:
        v45 = +[NRDevicePairingManager copyXPCError];
        (v72)[2](v72, v45);

        goto LABEL_21;
      }
    }

    v39 = nrCopyLogObj_1710();
    _NRLogWithArgs(v39, 16, "%s%.30s:%-4d Unregister pairing manager request with no XPC connection", v40, v41, v42, v43, v44, "");

    goto LABEL_30;
  }

LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
}

void __69__NRDevicePairingManagerMux_unregisterPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] setObject:0 forKeyedSubscript:*(a1 + 32)];
    v5 = MEMORY[0x25F8746E0](xdict);
    if (v5 != MEMORY[0x277D86468])
    {
      if (v5 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v11 = nrCopyLogObj_sNRLogObj_1723;
        v42 = *(a1 + 40);
        v41 = "";
        v12 = "%s%.30s:%-4d Unregister could not deliver message %@, error %@";
        v13 = 16;
        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Unregister received unexpected XPC object: %@", v6, v7, v8, v9, v10, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            v17 = *(a1 + 48);
            objc_opt_self();
            v18 = objc_alloc(MEMORY[0x277CCA9B8]);
            v44 = *MEMORY[0x277CCA450];
            v19 = v44;
            v45[0] = @"An XPC connection error occurred";
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
            v21 = [v18 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v20];

            (*(v17 + 16))(v17, v21);
            objc_opt_self();
            v22 = objc_alloc(MEMORY[0x277CCA9B8]);
            v44 = v19;
            v45[0] = @"An XPC connection error occurred";
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
            v15 = [v22 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v23];

            [(NRDevicePairingManagerMux *)v4 invalidateManagersWithError:v15];
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v11 = nrCopyLogObj_sNRLogObj_1723;
      v12 = "Unregister received unexpected XPC object";
      v13 = 17;
LABEL_26:
      _NRLogWithArgs(v11, v13, v12, v6, v7, v8, v9, v10, v41);
      goto LABEL_27;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Unregister received XPC dict: %@", v6, v7, v8, v9, v10, "");
    }

    v14 = xpc_dictionary_get_value(xdict, "Result");
    v15 = v14;
    if (v14)
    {
      if (MEMORY[0x25F8746E0](v14) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v15);
        if (value)
        {
          v27 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 48) + 16))();
        }

        else
        {
          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_28;
      }

      v25 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v26 = "Unregister received invalid result type";
        goto LABEL_36;
      }

      v30 = v25;
      v31 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (v31)
      {
        v26 = "Unregister received invalid result type";
        goto LABEL_44;
      }
    }

    else
    {
      v25 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v26 = "received response without result code";
LABEL_36:

LABEL_44:
        v32 = nrCopyLogObj_1710();
        _NRLogWithArgs(v32, 17, v26, v33, v34, v35, v36, v37, v41);

        goto LABEL_45;
      }

      v28 = v25;
      v29 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);

      if (v29)
      {
        v26 = "received response without result code";
        goto LABEL_44;
      }
    }

LABEL_45:
    v38 = *(a1 + 48);
    v39 = +[NRDevicePairingManager copyXPCError];
    (*(v38 + 16))(v38, v39);

    v40 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)v4 invalidateManagersWithError:v40];

    goto LABEL_28;
  }

LABEL_29:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)startDiscoveryForPairingManager:(void *)a3 withCompletion:
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (a1[3])
    {
      if (v5)
      {
        v7 = v5[11];
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      v9 = [v8 uuid];

      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        v13 = v12;
        if (v12)
        {
          *uuid = 0;
          v67 = 0;
          [v12 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v11, "PairingManager", uuid);
          goto LABEL_8;
        }

        v30 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v53 = v30;
          v54 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

          if (!v54)
          {
            goto LABEL_8;
          }
        }

        v55 = nrCopyLogObj_1710();
        _NRLogWithArgs(v55, 17, "%s called with null uuid", v56, v57, v58, v59, v60, "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v11, "PairingManagerOperation", 3uLL);
        objc_initWeak(uuid, a1);
        v14 = a1[3];
        v15 = a1[4];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __76__NRDevicePairingManagerMux_startDiscoveryForPairingManager_withCompletion___block_invoke;
        handler[3] = &unk_27996B350;
        objc_copyWeak(&v65, uuid);
        v64 = v6;
        v16 = v13;
        v62 = v16;
        v17 = v11;
        v63 = v17;
        xpc_connection_send_message_with_reply(v14, v17, v15, handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v65);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent discovery start message: %@", v22, v23, v24, v25, v26, "");

        goto LABEL_16;
      }

      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v40 = v29;
        v41 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (!v41)
        {
          goto LABEL_29;
        }
      }

      v42 = nrCopyLogObj_1710();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v43, v44, v45, v46, v47, "");

LABEL_29:
      v48 = _os_log_pack_size();
      MEMORY[0x28223BE20](v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v51, "nr_xpc_dictionary_create");
      v52 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v52);
    }

    v28 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_26:
        v39 = +[NRDevicePairingManager copyXPCError];
        (*(v6 + 2))(v6, v39);

        goto LABEL_17;
      }
    }

    v33 = nrCopyLogObj_1710();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Start discovery request with no XPC connection", v34, v35, v36, v37, v38, "");

    goto LABEL_26;
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

void __76__NRDevicePairingManagerMux_startDiscoveryForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v45 = *(a1 + 40);
        v44 = "";
        v11 = "%s%.30s:%-4d Start discovery could not deliver message %@, error %@";
        v12 = 16;
        goto LABEL_28;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start discovery received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_29:
            v20 = *(a1 + 48);
            objc_opt_self();
            v21 = objc_alloc(MEMORY[0x277CCA9B8]);
            v47 = *MEMORY[0x277CCA450];
            v22 = v47;
            v48[0] = @"An XPC connection error occurred";
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
            v24 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v23];

            (*(v20 + 16))(v20, v24);
            objc_opt_self();
            v25 = objc_alloc(MEMORY[0x277CCA9B8]);
            v47 = v22;
            v48[0] = @"An XPC connection error occurred";
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
            v14 = [v25 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v26];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v14];
LABEL_30:

            goto LABEL_31;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Start discovery received unexpected XPC object";
      v12 = 17;
LABEL_28:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v44);
      goto LABEL_29;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Start discovery received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v14 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v14);
        if (value)
        {
          v30 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 48) + 16))();
        }

        else
        {
          v16 = *(a1 + 32);
          v17 = WeakRetained[2];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = v18;
          if (v18)
          {
            v18 = v18[2];
          }

          [v18 removeAllObjects];

          (*(*(a1 + 48) + 16))();
        }

        goto LABEL_30;
      }

      v28 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v29 = "Start discovery received invalid result type";
        goto LABEL_38;
      }

      v33 = v28;
      v34 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

      if (v34)
      {
        v29 = "Start discovery received invalid result type";
        goto LABEL_46;
      }
    }

    else
    {
      v28 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v29 = "Start discovery received response without result code";
LABEL_38:

LABEL_46:
        v35 = nrCopyLogObj_1710();
        _NRLogWithArgs(v35, 17, v29, v36, v37, v38, v39, v40, v44);

        goto LABEL_47;
      }

      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);

      if (v32)
      {
        v29 = "Start discovery received response without result code";
        goto LABEL_46;
      }
    }

LABEL_47:
    v41 = *(a1 + 48);
    v42 = +[NRDevicePairingManager copyXPCError];
    (*(v41 + 16))(v41, v42);

    v43 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v43];

    goto LABEL_30;
  }

LABEL_31:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stopDiscoveryForPairingManager:(void *)a3 withCompletion:
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (a1[3])
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7)
      {
        v8 = v7;
        if (v5)
        {
          v9 = v5[11];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = [v10 uuid];
        v12 = v8;
        v13 = v11;
        v14 = v13;
        if (v13)
        {
          *uuid = 0;
          v66 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v12, "PairingManager", uuid);
          goto LABEL_8;
        }

        v30 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v53 = v30;
          v54 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

          if (!v54)
          {
            goto LABEL_8;
          }
        }

        v55 = nrCopyLogObj_1710();
        _NRLogWithArgs(v55, 17, "%s called with null uuid", v56, v57, v58, v59, v60, "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v12, "PairingManagerOperation", 4uLL);
        objc_initWeak(uuid, a1);
        v15 = a1[3];
        v16 = a1[4];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __75__NRDevicePairingManagerMux_stopDiscoveryForPairingManager_withCompletion___block_invoke;
        handler[3] = &unk_27996B328;
        objc_copyWeak(&v64, uuid);
        v63 = v6;
        v17 = v12;
        v62 = v17;
        xpc_connection_send_message_with_reply(v15, v17, v16, handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v64);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent discovery stop message: %@", v22, v23, v24, v25, v26, "");

        goto LABEL_16;
      }

      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v40 = v29;
        v41 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (!v41)
        {
          goto LABEL_29;
        }
      }

      v42 = nrCopyLogObj_1710();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v43, v44, v45, v46, v47, "");

LABEL_29:
      v48 = _os_log_pack_size();
      MEMORY[0x28223BE20](v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v51, "nr_xpc_dictionary_create");
      v52 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v52);
    }

    v28 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_26:
        v39 = +[NRDevicePairingManager copyXPCError];
        (*(v6 + 2))(v6, v39);

        goto LABEL_17;
      }
    }

    v33 = nrCopyLogObj_1710();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Stop discovery request with no XPC connection", v34, v35, v36, v37, v38, "");

    goto LABEL_26;
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

void __75__NRDevicePairingManagerMux_stopDiscoveryForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v44[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v41 = *(a1 + 32);
        v40 = "";
        v11 = "%s%.30s:%-4d Stop discovery could not deliver message %@, error %@";
        v12 = 16;
        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop discovery received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            v16 = *(a1 + 40);
            objc_opt_self();
            v17 = objc_alloc(MEMORY[0x277CCA9B8]);
            v43 = *MEMORY[0x277CCA450];
            v18 = v43;
            v44[0] = @"An XPC connection error occurred";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
            v20 = [v17 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v19];

            (*(v16 + 16))(v16, v20);
            objc_opt_self();
            v21 = objc_alloc(MEMORY[0x277CCA9B8]);
            v43 = v18;
            v44[0] = @"An XPC connection error occurred";
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
            v14 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v22];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v14];
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Stop discovery received unexpected XPC object";
      v12 = 17;
LABEL_26:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v40);
      goto LABEL_27;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Stop discovery received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v14 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v14);
        if (value)
        {
          v26 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_28;
      }

      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Stop discovery received invalid result type";
        goto LABEL_36;
      }

      v29 = v24;
      v30 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v30)
      {
        v25 = "Stop discovery received invalid result type";
        goto LABEL_44;
      }
    }

    else
    {
      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Stop discovery received response without result code";
LABEL_36:

LABEL_44:
        v31 = nrCopyLogObj_1710();
        _NRLogWithArgs(v31, 17, v25, v32, v33, v34, v35, v36, v40);

        goto LABEL_45;
      }

      v27 = v24;
      v28 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v28)
      {
        v25 = "Stop discovery received response without result code";
        goto LABEL_44;
      }
    }

LABEL_45:
    v37 = *(a1 + 40);
    v38 = +[NRDevicePairingManager copyXPCError];
    (*(v37 + 16))(v37, v38);

    v39 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v39];

    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sendAuthMethodRequestForDevice:(uint64_t)a3 authMethod:(void *)a4 pairingManager:(void *)a5 withCompletion:
{
  v87 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    if (*(a1 + 24))
    {
      if (v10)
      {
        v12 = v10[11];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 uuid];

      v15 = [v9 uuid];
      v16 = [*(a1 + 16) objectForKeyedSubscript:v14];
      v17 = v16;
      if (v16)
      {
        v18 = [*(v16 + 40) objectForKeyedSubscript:v15];

        if (!v18)
        {
          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_INFO))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 1, "%s%.30s:%-4d %@ Sending auth method request for %@", v19, v20, v21, v22, v23, "");
          }

          v24 = xpc_dictionary_create(0, 0, 0);
          if (v24)
          {
            v25 = v24;
            v26 = v14;
            v27 = v26;
            if (v26)
            {
              *uuid = 0;
              v86 = 0;
              [v26 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v25, "PairingManager", uuid);
              goto LABEL_15;
            }

            v37 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v81 = v37;
              v79 = os_log_type_enabled(v37, OS_LOG_TYPE_FAULT);

              if (!v79)
              {
                goto LABEL_15;
              }
            }

            v82 = nrCopyLogObj_1710();
            _NRLogWithArgs(v82, 17, "%s called with null uuid", v69, v70, v71, v72, v73, "nr_xpc_dictionary_set_nsuuid");

LABEL_15:
            v28 = v25;
            v29 = v15;
            v30 = v29;
            if (v29)
            {
              *uuid = 0;
              v86 = 0;
              [v29 getUUIDBytes:uuid];
              xpc_dictionary_set_uuid(v28, "TargetPairingCandidate", uuid);
LABEL_17:

              xpc_dictionary_set_uint64(v28, "AuthRequestType", a3);
              xpc_dictionary_set_uint64(v28, "PairingManagerOperation", 6uLL);
              xpc_connection_send_message(*(a1 + 24), v28);
              v31 = MEMORY[0x25F8740C0](v11);
              [v17[5] setObject:v31 forKeyedSubscript:v30];

LABEL_18:
LABEL_19:

              goto LABEL_20;
            }

            v38 = nrCopyLogObj_1710();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v83 = v38;
              v80 = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);

              if (!v80)
              {
                goto LABEL_17;
              }
            }

            v84 = nrCopyLogObj_1710();
            _NRLogWithArgs(v84, 17, "%s called with null uuid", v74, v75, v76, v77, v78, "nr_xpc_dictionary_set_nsuuid");

            goto LABEL_17;
          }

          v36 = nrCopyLogObj_1710();
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v56 = v36;
            v57 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

            if (!v57)
            {
              goto LABEL_41;
            }
          }

          v58 = nrCopyLogObj_1710();
          _NRLogWithArgs(v58, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v59, v60, v61, v62, v63, "");

LABEL_41:
          v64 = _os_log_pack_size();
          MEMORY[0x28223BE20](v64, v65);
          v66 = *__error();
          v67 = _os_log_pack_fill();
          __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v67, "nr_xpc_dictionary_create");
          v68 = nrCopyLogObj_1710();
          _NRLogAbortWithPack(v68);
        }

        v35 = [NRDevicePairingManager copyErrorForCode:?];
LABEL_38:
        v55 = v35;
        v11[2](v11, v35);

        goto LABEL_18;
      }

      v34 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v47 = v34;
        v48 = os_log_type_enabled(v34, OS_LOG_TYPE_FAULT);

        if (!v48)
        {
LABEL_37:
          v35 = +[NRDevicePairingManager copyXPCError];
          goto LABEL_38;
        }
      }

      v49 = nrCopyLogObj_1710();
      _NRLogWithArgs(v49, 17, "Pairing manager %@ is not registered", v50, v51, v52, v53, v54, v14);

      goto LABEL_37;
    }

    v33 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v39 = v33;
      v40 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

      if (!v40)
      {
LABEL_34:
        v14 = +[NRDevicePairingManager copyXPCError];
        v11[2](v11, v14);
        goto LABEL_19;
      }
    }

    v41 = nrCopyLogObj_1710();
    _NRLogWithArgs(v41, 16, "%s%.30s:%-4d Auth method request with no XPC connection", v42, v43, v44, v45, v46, "");

    goto LABEL_34;
  }

LABEL_20:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)startPairingForPairingManager:(void *)a3 pairingTarget:(void *)a4 withCompletion:
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (a1[3])
    {
      v10 = xpc_dictionary_create(0, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (v7)
        {
          v12 = v7[11];
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [v13 uuid];
        v15 = v11;
        v16 = v14;
        v17 = v16;
        if (v16)
        {
          *uuid = 0;
          v91 = 0;
          [v16 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v15, "PairingManager", uuid);
          goto LABEL_8;
        }

        v36 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v60 = v36;
          v61 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);

          if (!v61)
          {
            goto LABEL_8;
          }
        }

        v62 = nrCopyLogObj_1710();
        _NRLogWithArgs(v62, 17, "%s called with null uuid", v63, v64, v65, v66, v67, "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v15, "PairingManagerOperation", 0xAuLL);
        if (!v8)
        {
          goto LABEL_12;
        }

        v18 = v15;
        v19 = v8;
        *uuid = 0;
        v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:uuid];
        v21 = *uuid;
        if (!v21 && [v20 length])
        {
          xpc_dictionary_set_data(v18, "PairingTarget", [v20 bytes], objc_msgSend(v20, "length"));

LABEL_12:
          objc_initWeak(uuid, a1);
          v22 = a1[3];
          v23 = a1[4];
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __88__NRDevicePairingManagerMux_startPairingForPairingManager_pairingTarget_withCompletion___block_invoke;
          handler[3] = &unk_27996B328;
          objc_copyWeak(&v89, uuid);
          v88 = v9;
          v87 = v15;
          xpc_connection_send_message_with_reply(v22, v87, v23, handler);

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v24 = nrCopyLogObj_sNRLogObj_1723;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v25 = v24;
            v26 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);

            if (!v26)
            {
LABEL_20:

              objc_destroyWeak(&v89);
              objc_destroyWeak(uuid);
LABEL_21:

              goto LABEL_22;
            }
          }

          if (nrCopyLogObj_onceToken_1721 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
          }

          v27 = nrCopyLogObj_sNRLogObj_1723;
          _NRLogWithArgs(v27, 1, "%s%.30s:%-4d Sent pairing start message: %@", v28, v29, v30, v31, v32, "");

          goto LABEL_20;
        }

        v37 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v68 = v37;
          v69 = os_log_type_enabled(v37, OS_LOG_TYPE_FAULT);

          if (!v69)
          {
            goto LABEL_41;
          }
        }

        v70 = nrCopyLogObj_1710();
        _NRLogWithArgs(v70, 17, "Failed to archive %@: %@", v71, v72, v73, v74, v75, v19);

LABEL_41:
        v76 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v77 = v76;
          v78 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);

          if (!v78)
          {
LABEL_45:
            v85 = +[NRDevicePairingManager copyXPCError];
            (*(v9 + 2))(v9, v85, 1);

            goto LABEL_21;
          }
        }

        v79 = nrCopyLogObj_1710();
        _NRLogWithArgs(v79, 16, "%s%.30s:%-4d Start pairing request failed to serialize pairing target", v80, v81, v82, v83, v84, "");

        goto LABEL_45;
      }

      v35 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v47 = v35;
        v48 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

        if (!v48)
        {
          goto LABEL_36;
        }
      }

      v49 = nrCopyLogObj_1710();
      _NRLogWithArgs(v49, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v50, v51, v52, v53, v54, "");

LABEL_36:
      v55 = _os_log_pack_size();
      MEMORY[0x28223BE20](v55, v56);
      v57 = *__error();
      v58 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v58, "nr_xpc_dictionary_create");
      v59 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v59);
    }

    v34 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v34;
      v39 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v39)
      {
LABEL_33:
        v46 = +[NRDevicePairingManager copyXPCError];
        (*(v9 + 2))(v9, v46, 1);

        goto LABEL_22;
      }
    }

    v40 = nrCopyLogObj_1710();
    _NRLogWithArgs(v40, 16, "%s%.30s:%-4d Start pairing request with no XPC connection", v41, v42, v43, v44, v45, "");

    goto LABEL_33;
  }

LABEL_22:

  v33 = *MEMORY[0x277D85DE8];
}

void __88__NRDevicePairingManagerMux_startPairingForPairingManager_pairingTarget_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v108[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v105 = *(a1 + 32);
        v104 = "";
        v11 = "%s%.30s:%-4d Start pairing could not deliver message %@, error %@";
        v12 = 16;
        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Start pairing received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            v16 = *(a1 + 40);
            objc_opt_self();
            v17 = objc_alloc(MEMORY[0x277CCA9B8]);
            v107 = *MEMORY[0x277CCA450];
            v18 = v107;
            v108[0] = @"An XPC connection error occurred";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:&v107 count:1];
            v20 = [v17 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v19];

            (*(v16 + 16))(v16, v20, 1);
            objc_opt_self();
            v21 = objc_alloc(MEMORY[0x277CCA9B8]);
            v107 = v18;
            v108[0] = @"An XPC connection error occurred";
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:&v107 count:1];
            v14 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v22];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v14];
            goto LABEL_28;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Start pairing received unexpected XPC object";
      v12 = 17;
LABEL_26:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v104);
      goto LABEL_27;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Start pairing received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v14 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v14);
        if (!value)
        {
          (*(*(a1 + 40) + 16))();
LABEL_28:

          goto LABEL_29;
        }

        if (value != -3007)
        {
          v51 = [NRDevicePairingManager copyErrorForCode:?];
          (*(*(a1 + 40) + 16))();

          goto LABEL_28;
        }

        v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        v27 = xdict;
        v28 = v27;
        if (v27)
        {
          uuid = xpc_dictionary_get_uuid(v27, "NRUUID");
          if (!uuid)
          {
            v56 = nrCopyLogObj_1710();
            v57 = v56;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v78 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);

              if (!v78)
              {
                goto LABEL_79;
              }
            }

            v79 = nrCopyLogObj_1710();
            _NRLogWithArgs(v79, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v80, v81, v82, v83, v84, "");
LABEL_78:

            v31 = 0;
            goto LABEL_42;
          }

          v30 = uuid;
          if (!uuid_is_null(uuid))
          {
            v31 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v30];
            goto LABEL_42;
          }

          v60 = nrCopyLogObj_1710();
          v61 = v60;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_77:
            v79 = nrCopyLogObj_1710();
            _NRLogWithArgs(v79, 16, "%s%.30s:%-4d UUID is null for key %s", v93, v94, v95, v96, v97, "");
            goto LABEL_78;
          }

          v92 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

          if (v92)
          {
            goto LABEL_77;
          }

LABEL_79:
          v31 = 0;
LABEL_42:

          [v26 setObject:v31 forKeyedSubscript:@"NRDevicePairingErrorOriginalNRUUIDKey"];
          v32 = v28;
          v33 = v32;
          if (v28)
          {
            v34 = xpc_dictionary_get_uuid(v32, "BluetoothUUID");
            if (!v34)
            {
              v58 = nrCopyLogObj_1710();
              v59 = v58;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v85 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);

                if (!v85)
                {
                  goto LABEL_83;
                }
              }

              v86 = nrCopyLogObj_1710();
              _NRLogWithArgs(v86, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v87, v88, v89, v90, v91, "");
LABEL_82:

              v36 = 0;
              goto LABEL_46;
            }

            v35 = v34;
            if (!uuid_is_null(v34))
            {
              v36 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v35];
LABEL_46:

              [v26 setObject:v36 forKeyedSubscript:@"NRDevicePairingErrorOriginalCBUUIDKey"];
              v37 = [NRDevicePairingManager copyErrorForCode:v26 userInfo:?];
              (*(*(a1 + 40) + 16))();

              goto LABEL_28;
            }

            v62 = nrCopyLogObj_1710();
            v63 = v62;
            if (sNRCopyLogToStdErr == 1)
            {

LABEL_81:
              v86 = nrCopyLogObj_1710();
              _NRLogWithArgs(v86, 16, "%s%.30s:%-4d UUID is null for key %s", v99, v100, v101, v102, v103, "");
              goto LABEL_82;
            }

            v98 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);

            if (v98)
            {
              goto LABEL_81;
            }

LABEL_83:
            v36 = 0;
            goto LABEL_46;
          }

          v54 = nrCopyLogObj_1710();
          v55 = v54;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v71 = os_log_type_enabled(v54, OS_LOG_TYPE_FAULT);

            if (!v71)
            {
              goto LABEL_83;
            }
          }

          v72 = nrCopyLogObj_1710();
          _NRLogWithArgs(v72, 17, "%s called with null dict", v73, v74, v75, v76, v77, "nr_xpc_dictionary_get_nsuuid");

          v36 = 0;
          goto LABEL_46;
        }

        v52 = nrCopyLogObj_1710();
        v53 = v52;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v64 = os_log_type_enabled(v52, OS_LOG_TYPE_FAULT);

          if (!v64)
          {
            goto LABEL_79;
          }
        }

        v65 = nrCopyLogObj_1710();
        _NRLogWithArgs(v65, 17, "%s called with null dict", v66, v67, v68, v69, v70, "nr_xpc_dictionary_get_nsuuid");

        v31 = 0;
        goto LABEL_42;
      }

      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Start pairing received invalid result type";
        goto LABEL_36;
      }

      v40 = v24;
      v41 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v41)
      {
        v25 = "Start pairing received invalid result type";
        goto LABEL_53;
      }
    }

    else
    {
      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Start pairing received response without result code";
LABEL_36:

LABEL_53:
        v42 = nrCopyLogObj_1710();
        _NRLogWithArgs(v42, 17, v25, v43, v44, v45, v46, v47, v104);

        goto LABEL_54;
      }

      v38 = v24;
      v39 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v39)
      {
        v25 = "Start pairing received response without result code";
        goto LABEL_53;
      }
    }

LABEL_54:
    v48 = *(a1 + 40);
    v49 = +[NRDevicePairingManager copyXPCError];
    (*(v48 + 16))(v48, v49, 1);

    v50 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v50];

    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopPairingForPairingManager:(void *)a3 withCompletion:
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (a1[3])
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      if (v7)
      {
        v8 = v7;
        if (v5)
        {
          v9 = v5[11];
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v11 = [v10 uuid];
        v12 = v8;
        v13 = v11;
        v14 = v13;
        if (v13)
        {
          *uuid = 0;
          v66 = 0;
          [v13 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v12, "PairingManager", uuid);
          goto LABEL_8;
        }

        v30 = nrCopyLogObj_1710();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v53 = v30;
          v54 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);

          if (!v54)
          {
            goto LABEL_8;
          }
        }

        v55 = nrCopyLogObj_1710();
        _NRLogWithArgs(v55, 17, "%s called with null uuid", v56, v57, v58, v59, v60, "nr_xpc_dictionary_set_nsuuid");

LABEL_8:
        xpc_dictionary_set_uint64(v12, "PairingManagerOperation", 0xBuLL);
        objc_initWeak(uuid, a1);
        v15 = a1[3];
        v16 = a1[4];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __73__NRDevicePairingManagerMux_stopPairingForPairingManager_withCompletion___block_invoke;
        handler[3] = &unk_27996B328;
        objc_copyWeak(&v64, uuid);
        v63 = v6;
        v17 = v12;
        v62 = v17;
        xpc_connection_send_message_with_reply(v15, v17, v16, handler);

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v18 = nrCopyLogObj_sNRLogObj_1723;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v19 = v18;
          v20 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

          if (!v20)
          {
LABEL_16:

            objc_destroyWeak(&v64);
            objc_destroyWeak(uuid);

            goto LABEL_17;
          }
        }

        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        v21 = nrCopyLogObj_sNRLogObj_1723;
        _NRLogWithArgs(v21, 1, "%s%.30s:%-4d Sent pairing stop message: %@", v22, v23, v24, v25, v26, "");

        goto LABEL_16;
      }

      v29 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v40 = v29;
        v41 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

        if (!v41)
        {
          goto LABEL_29;
        }
      }

      v42 = nrCopyLogObj_1710();
      _NRLogWithArgs(v42, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v43, v44, v45, v46, v47, "");

LABEL_29:
      v48 = _os_log_pack_size();
      MEMORY[0x28223BE20](v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v51, "nr_xpc_dictionary_create");
      v52 = nrCopyLogObj_1710();
      _NRLogAbortWithPack(v52);
    }

    v28 = nrCopyLogObj_1710();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_26:
        v39 = +[NRDevicePairingManager copyXPCError];
        (*(v6 + 2))(v6, v39);

        goto LABEL_17;
      }
    }

    v33 = nrCopyLogObj_1710();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d Stop pairing request no XPC connection", v34, v35, v36, v37, v38, "");

    goto LABEL_26;
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

void __73__NRDevicePairingManagerMux_stopPairingForPairingManager_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](xdict);
    if (v4 != MEMORY[0x277D86468])
    {
      if (v4 == MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_1721 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v10 = nrCopyLogObj_sNRLogObj_1723;
        v42 = *(a1 + 32);
        v41 = "";
        v11 = "%s%.30s:%-4d Stop pairing could not deliver message %@, error %@";
        v12 = 16;
        goto LABEL_26;
      }

      if (nrCopyLogObj_onceToken_1721 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
      }

      if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 16, "%s%.30s:%-4d Stop pairing received unexpected XPC object: %@", v5, v6, v7, v8, v9, ""), nrCopyLogObj_onceToken_1721 != -1))
      {
        dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_10:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_FAULT))
          {
LABEL_27:
            v16 = *(a1 + 40);
            objc_opt_self();
            v17 = objc_alloc(MEMORY[0x277CCA9B8]);
            v44 = *MEMORY[0x277CCA450];
            v18 = v44;
            v45[0] = @"An XPC connection error occurred";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
            v20 = [v17 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v19];

            (*(v16 + 16))(v16, v20);
            objc_opt_self();
            v21 = objc_alloc(MEMORY[0x277CCA9B8]);
            v44 = v18;
            v45[0] = @"An XPC connection error occurred";
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
            v14 = [v21 initWithDomain:@"NRDevicePairingErrorDomain" code:-2019 userInfo:v22];

            [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v14];
LABEL_28:

            goto LABEL_29;
          }
        }
      }

      else if ((sNRCopyLogToStdErr & 1) == 0)
      {
        goto LABEL_10;
      }

      v10 = nrCopyLogObj_sNRLogObj_1723;
      v11 = "Stop pairing received unexpected XPC object";
      v12 = 17;
LABEL_26:
      _NRLogWithArgs(v10, v12, v11, v5, v6, v7, v8, v9, v41);
      goto LABEL_27;
    }

    if (nrCopyLogObj_onceToken_1721 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1721, &__block_literal_global_1722);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1723, OS_LOG_TYPE_DEBUG))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1723, 2, "%s%.30s:%-4d Stop pairing received XPC dict: %@", v5, v6, v7, v8, v9, "");
    }

    v13 = xpc_dictionary_get_value(xdict, "Result");
    v14 = v13;
    if (v13)
    {
      if (MEMORY[0x25F8746E0](v13) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v14);
        if (value)
        {
          v26 = *(a1 + 40);
          v27 = [NRDevicePairingManager copyErrorForCode:?];
          (*(v26 + 16))(v26, v27);
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }

        goto LABEL_28;
      }

      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Stop pairing received invalid result type";
        goto LABEL_36;
      }

      v30 = v24;
      v31 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v31)
      {
        v25 = "Stop pairing received invalid result type";
        goto LABEL_44;
      }
    }

    else
    {
      v24 = nrCopyLogObj_1710();
      if (sNRCopyLogToStdErr)
      {
        v25 = "Stop pairing received response without result code";
LABEL_36:

LABEL_44:
        v32 = nrCopyLogObj_1710();
        _NRLogWithArgs(v32, 17, v25, v33, v34, v35, v36, v37, v41);

        goto LABEL_45;
      }

      v28 = v24;
      v29 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);

      if (v29)
      {
        v25 = "Stop pairing received response without result code";
        goto LABEL_44;
      }
    }

LABEL_45:
    v38 = *(a1 + 40);
    v39 = +[NRDevicePairingManager copyXPCError];
    (*(v38 + 16))(v38, v39);

    v40 = +[NRDevicePairingManager copyXPCError];
    [(NRDevicePairingManagerMux *)WeakRetained invalidateManagersWithError:v40];

    goto LABEL_28;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

@end