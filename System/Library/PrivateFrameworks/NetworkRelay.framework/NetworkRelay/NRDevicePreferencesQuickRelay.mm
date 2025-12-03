@interface NRDevicePreferencesQuickRelay
- (NRDevicePreferencesQuickRelay)initWithNRUUID:(id)d;
- (uint64_t)assertAgent;
- (void)addQuickRelayRequest;
- (void)dealloc;
- (void)removeAllQuickRelayRequests;
- (void)removeQuickRelayRequest;
- (void)resetInner;
- (void)setAssertCount:(uint64_t)count;
- (void)updateAgentUUID:(uint64_t)d;
@end

@implementation NRDevicePreferencesQuickRelay

- (void)removeAllQuickRelayRequests
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NRDevicePreferencesQuickRelay_removeAllQuickRelayRequests__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetInner
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d Resetting state", v2, v3, v4, v5, v6, "");
    }

    [(NRDevicePreferencesQuickRelay *)self setAssertCount:?];
    *(self + 8) = 0;
    v7 = *(self + 32);
    *(self + 32) = 0;

    v8 = *(self + 40);
    *(self + 40) = 0;

    if (*(self + 48))
    {
      nw_path_evaluator_cancel();
      v9 = *(self + 48);
      *(self + 48) = 0;
    }
  }
}

- (void)setAssertCount:(uint64_t)count
{
  if (count)
  {
    dispatch_assert_queue_V2(*(count + 16));
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
    {
      v9 = *(count + 56);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d Setting quick relay assert count: %ld -> %ld", v4, v5, v6, v7, v8, "");
    }

    *(count + 56) = a2;
  }
}

- (void)removeQuickRelayRequest
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NRDevicePreferencesQuickRelay_removeQuickRelayRequest__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__NRDevicePreferencesQuickRelay_removeQuickRelayRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (!v9 || (v10 = *(v9 + 56)) == 0)
  {
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v12 = nrCopyLogObj_sNRLogObj_1055;
    v13 = "No quick relay request to disable";
    v14 = 17;
    goto LABEL_16;
  }

  [(NRDevicePreferencesQuickRelay *)v9 setAssertCount:?];
  v11 = *(a1 + 32);
  if (v11 && *(v11 + 56))
  {
    return;
  }

  if (nrCopyLogObj_onceToken_1053 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
  {
    v12 = nrCopyLogObj_sNRLogObj_1055;
    v16 = "";
    v13 = "%s%.30s:%-4d All clients of quick relay went away";
    v14 = 1;
LABEL_16:
    _NRLogWithArgs(v12, v14, v13, a4, a5, a6, a7, a8, v16);
  }

LABEL_17:
  v15 = *(a1 + 32);

  [(NRDevicePreferencesQuickRelay *)v15 resetInner];
}

- (void)addQuickRelayRequest
{
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke;
  block[3] = &unk_27996B180;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 48))
  {
    [(NRDevicePreferencesQuickRelay *)v2 setAssertCount:?];
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 40);
    }

    else
    {
      v4 = 0;
    }

    if (nw_path_get_status(v4) == nw_path_status_satisfied)
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        v31 = 0;
        v32 = *(a1 + 32);
        if (v32)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v6 = *(v5 + 16);
      dispatch_assert_queue_V2(v6);

      v7 = *(v5 + 40);
      if (v7)
      {
        v8 = v7;
        v9 = nw_path_copy_netagent_dictionary();

        if (v9 && MEMORY[0x25F8746E0](v9) == MEMORY[0x277D86468])
        {
          applier[0] = MEMORY[0x277D85DD0];
          applier[1] = 3221225472;
          applier[2] = __50__NRDevicePreferencesQuickRelay_shouldAssertAgent__block_invoke;
          applier[3] = &unk_27996B080;
          applier[4] = &v52;
          xpc_dictionary_apply(v9, applier);
        }

        else
        {
          if (nrCopyLogObj_onceToken_1053 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
          }

          v10 = nrCopyLogObj_sNRLogObj_1055;
          if (sNRCopyLogToStdErr == 1)
          {

LABEL_33:
            if (nrCopyLogObj_onceToken_1053 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
            }

            v36 = nrCopyLogObj_sNRLogObj_1055;
            _NRLogWithArgs(v36, 1, "%s%.30s:%-4d No netagents to retrieve agent UUID", v37, v38, v39, v40, v41, "");

            goto LABEL_49;
          }

          v34 = v10;
          v35 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);

          if (v35)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        v33 = nrCopyLogObj_sNRLogObj_1055;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v42 = v33;
          v43 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

          if (!v43)
          {
            goto LABEL_50;
          }
        }

        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        v9 = nrCopyLogObj_sNRLogObj_1055;
        _NRLogWithArgs(v9, 16, "%s%.30s:%-4d No path to retrieve agent data", v44, v45, v46, v47, v48, "");
      }

LABEL_49:

LABEL_50:
      v31 = *(v53 + 24);
      _Block_object_dispose(&v52, 8);
      v32 = *(a1 + 32);
      if (v32)
      {
LABEL_51:
        v49 = *(v32 + 40);
        goto LABEL_52;
      }

LABEL_57:
      v49 = 0;
LABEL_52:
      if (((nw_path_get_status(v49) == nw_path_status_satisfied) & v31) == 1)
      {
        [(NRDevicePreferencesQuickRelay *)*(a1 + 32) assertAgent];
      }
    }
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x277CD91F0]);
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    else
    {
      v12 = 0;
    }

    v13 = nrCopyAccountIdentifierForNRUUID(v12);
    [v50 setAccount:v13];

    [v50 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"QuickRelayAgent"];
    v14 = [v50 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    v16 = nw_path_evaluator_copy_path();
    status = nw_path_get_status(v16);
    v18 = *(a1 + 32);
    if (status != nw_path_status_satisfied && v18)
    {
      *(v18 + 8) = 1;
      v18 = *(a1 + 32);
    }

    [(NRDevicePreferencesQuickRelay *)v18 updateAgentUUID:v16];
    v24 = *(a1 + 32);
    if (v24 && (*(v24 + 32) || (*(v24 + 8) & 1) != 0))
    {
      v25 = *(v24 + 16);
      v26 = evaluator_for_endpoint;
      nw_path_evaluator_set_update_handler();
      v27 = *(a1 + 32);
      if (v27 && (objc_storeStrong((v27 + 48), evaluator_for_endpoint), (v28 = *(a1 + 32)) != 0))
      {
        objc_storeStrong((v28 + 40), v16);
        v29 = *(a1 + 32);
        if (v29)
        {
          v30 = *(v29 + 56) + 1;
        }

        else
        {
          v30 = 1;
        }
      }

      else
      {
        v29 = 0;
        v30 = 1;
      }

      [(NRDevicePreferencesQuickRelay *)v29 setAssertCount:v30];

      v31 = 1;
      v32 = *(a1 + 32);
      if (v32)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 16, "%s%.30s:%-4d Failed to get agent UUID", v19, v20, v21, v22, v23, "");
    }
  }
}

- (void)updateAgentUUID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    dispatch_assert_queue_V2(*(d + 16));
    v4 = *(d + 32);
    *(d + 32) = 0;

    if (v3)
    {
      v10 = nw_path_copy_netagent_dictionary();
      v16 = v10;
      if (v10 && MEMORY[0x25F8746E0](v10) == MEMORY[0x277D86468])
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __49__NRDevicePreferencesQuickRelay_updateAgentUUID___block_invoke;
        applier[3] = &unk_27996B058;
        applier[4] = d;
        xpc_dictionary_apply(v16, applier);
      }

      else
      {
        if (nrCopyLogObj_onceToken_1053 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d No netagents to retrieve agent UUID", v11, v12, v13, v14, v15, "");
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_1053 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 1, "%s%.30s:%-4d No path to retrieve agent UUID", v5, v6, v7, v8, v9, "");
      }
    }
  }
}

void __53__NRDevicePreferencesQuickRelay_addQuickRelayRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v50 = a2;
  v9 = *(a1 + 32);
  if (v9)
  {
    if (*(v9 + 48) != *(a1 + 40))
    {
      goto LABEL_3;
    }

    if (*(v9 + 56))
    {
      objc_storeStrong((v9 + 40), a2);
      if (nrCopyLogObj_onceToken_1053 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_INFO))
      {
        v22 = *(a1 + 32);
        if (v22)
        {
          v23 = *(v22 + 40);
        }

        v24 = nrCopyLogObj_sNRLogObj_1055;
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d Received path: %@", v25, v26, v27, v28, v29, "");
      }

      v30 = *(a1 + 32);
      if (v30)
      {
        [(NRDevicePreferencesQuickRelay *)v30 updateAgentUUID:?];
        v31 = *(a1 + 32);
        if (v31)
        {
LABEL_24:
          v32 = *(v31 + 40);
          goto LABEL_25;
        }
      }

      else
      {
        v31 = *(a1 + 32);
        if (v31)
        {
          goto LABEL_24;
        }
      }

      v32 = 0;
LABEL_25:
      status = nw_path_get_status(v32);
      if ((status & 0xFFFFFFFE) == 2)
      {
        v34 = *(a1 + 32);
        if (v34 && *(v34 + 56))
        {
          *(v34 + 8) = 1;
        }

        goto LABEL_11;
      }

      if (status != nw_path_status_satisfied)
      {
        goto LABEL_11;
      }

      v35 = *(a1 + 32);
      if (!v35 || !*(v35 + 56) || *(v35 + 8) != 1)
      {
        goto LABEL_11;
      }

      v36 = *(v35 + 32);
      v37 = nrCopyLogObj_1074();
      if (!v36)
      {
        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v47 = v37;
          v48 = os_log_type_enabled(v37, OS_LOG_TYPE_FAULT);

          if (!v48)
          {
            goto LABEL_11;
          }
        }

        v13 = nrCopyLogObj_1074();
        v19 = v13;
        v20 = "No agent UUID while path is satisfied";
        v21 = 17;
LABEL_10:
        _NRLogWithArgs(v13, v21, v20, v14, v15, v16, v17, v18, v49);

        goto LABEL_11;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v38 = v37;
        v39 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);

        if (!v39)
        {
          goto LABEL_40;
        }
      }

      v40 = nrCopyLogObj_1074();
      _NRLogWithArgs(v40, 1, "%s%.30s:%-4d Reasserting the agent", v41, v42, v43, v44, v45, "");

LABEL_40:
      [(NRDevicePreferencesQuickRelay *)*(a1 + 32) assertAgent];
      v46 = *(a1 + 32);
      if (v46)
      {
        *(v46 + 8) = 0;
      }

      goto LABEL_11;
    }

LABEL_45:
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 17, "Received path update when we have no requests", v4, v5, v6, v7, v8, v49);
    }

    goto LABEL_11;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_45;
  }

LABEL_3:
  if (nrCopyLogObj_onceToken_1053 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (v10)
    {
      v12 = *(v10 + 48);
    }

    v13 = nrCopyLogObj_sNRLogObj_1055;
    v19 = v13;
    v49 = "";
    v20 = "%s%.30s:%-4d Ignoring path evaluator update for a stale evaluator: old: %@, new: %@";
    v21 = 0;
    goto LABEL_10;
  }

LABEL_11:
}

- (uint64_t)assertAgent
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 16));
    v10[0] = 0;
    v10[1] = 0;
    [*(v1 + 32) getUUIDBytes:v10];
    if (nrCopyLogObj_onceToken_1053 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1053, &__block_literal_global_1054);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1055, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 56);
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1055, 0, "%s%.30s:%-4d adding quick relay request (count is now %ld)", v2, v3, v4, v5, v6, "");
    }

    v7 = *(v1 + 40);
    result = nw_path_assert_agent();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__NRDevicePreferencesQuickRelay_updateAgentUUID___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "QuickRelayAgent"))
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_storeStrong((v8 + 32), v7);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __50__NRDevicePreferencesQuickRelay_shouldAssertAgent__block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data)
  {
    if (length >= 0xD8)
    {
      v6 = *(data + 53);
      if (length == v6 + 216)
      {
        v7 = data;
        if (!strcmp(data + 16, "com.apple.networkrelay") && ((v8 = strcmp(v7 + 48, "QuickRelayAgent"), v6 == 1) ? (v9 = v8 == 0) : (v9 = 0), v9))
        {
          __memcpy_chk();
          result = 0;
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  if (self)
  {
    path = self->_path;
    self->_path = 0;

    if (self->_pathEvaluator)
    {
      nw_path_evaluator_cancel();
      pathEvaluator = self->_pathEvaluator;
      self->_pathEvaluator = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NRDevicePreferencesQuickRelay;
  [(NRDevicePreferencesQuickRelay *)&v5 dealloc];
}

- (NRDevicePreferencesQuickRelay)initWithNRUUID:(id)d
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v11 = nrCopyLogObj_1074();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v11;
      v14 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
LABEL_12:
        v21 = _os_log_pack_size();
        MEMORY[0x28223BE20](v21, v22);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 136446466;
        *(v24 + 4) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
        *(v24 + 12) = 2080;
        *(v24 + 14) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
        goto LABEL_16;
      }
    }

    v15 = nrCopyLogObj_1074();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL nrUUID", v16, v17, v18, v19, v20, "");

    goto LABEL_12;
  }

  v5 = dCopy;
  v38.receiver = self;
  v38.super_class = NRDevicePreferencesQuickRelay;
  v6 = [(NRDevicePreferencesQuickRelay *)&v38 init];
  if (!v6)
  {
    v12 = nrCopyLogObj_1074();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v25 = v12;
      v26 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v26)
      {
LABEL_15:
        v33 = _os_log_pack_size();
        MEMORY[0x28223BE20](v33, v34);
        v35 = *__error();
        v36 = _os_log_pack_fill();
        *v36 = 136446210;
        *(v36 + 4) = "[NRDevicePreferencesQuickRelay initWithNRUUID:]";
LABEL_16:
        v37 = nrCopyLogObj_1074();
        _NRLogAbortWithPack(v37);
      }
    }

    v27 = nrCopyLogObj_1074();
    _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v28, v29, v30, v31, v32, "");

    goto LABEL_15;
  }

  v7 = v6;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(&v7->_queue, nrXPCCopyQueue_nrXPCQueue);
  nrUUID = v7->_nrUUID;
  v7->_nrUUID = v5;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end