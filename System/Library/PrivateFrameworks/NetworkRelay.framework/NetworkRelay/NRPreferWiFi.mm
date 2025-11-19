@interface NRPreferWiFi
- (NRPreferWiFi)init;
- (void)dealloc;
- (void)resetInner;
- (void)updateAgentUUID:(uint64_t)a1;
@end

@implementation NRPreferWiFi

- (void)dealloc
{
  if (self)
  {
    path = self->_path;
    self->_path = 0;

    if (self->_evaluator)
    {
      nw_path_evaluator_cancel();
      evaluator = self->_evaluator;
      self->_evaluator = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NRPreferWiFi;
  [(NRPreferWiFi *)&v5 dealloc];
}

- (NRPreferWiFi)init
{
  v34 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = NRPreferWiFi;
  v2 = [(NRPreferWiFi *)&v33 init];
  if (!v2)
  {
    v9 = nrCopyLogObj_68();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v9;
      v12 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v13 = nrCopyLogObj_68();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_15:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "[NRPreferWiFi init]";
    v21 = nrCopyLogObj_68();
    _NRLogAbortWithPack(v21);
  }

  v3 = v2;
  if (_NRShouldDebugAutoRelease_onceToken != -1)
  {
    dispatch_once(&_NRShouldDebugAutoRelease_onceToken, &__block_literal_global_40);
  }

  if (_NRShouldDebugAutoRelease_debugAutoRelease)
  {
    v4 = 0;
  }

  else
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  }

  v5 = dispatch_queue_create("com.apple.networkrelay.preferWiFi", v4);

  if (!v5)
  {
    v10 = nrCopyLogObj_68();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v10;
      v23 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v23)
      {
        goto LABEL_18;
      }
    }

    v24 = nrCopyLogObj_68();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", v25, v26, v27, v28, v29, "");

LABEL_18:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v30 = *__error();
    v31 = _os_log_pack_fill();
    *v31 = 136446466;
    *(v31 + 4) = "nr_dispatch_queue_create";
    *(v31 + 12) = 2080;
    *(v31 + 14) = "com.apple.networkrelay.preferWiFi";
    v32 = nrCopyLogObj_68();
    _NRLogAbortWithPack(v32);
  }

  queue = v3->_queue;
  v3->_queue = v5;

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __30__NRPreferWiFi_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstance_gPreferWiFiInstance;
  sharedInstance_gPreferWiFiInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __36__NRPreferWiFi_sharedInstanceForP2P__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstanceForP2P_gPreferP2PWiFiInstance;
  sharedInstanceForP2P_gPreferP2PWiFiInstance = v0;

  if (sharedInstanceForP2P_gPreferP2PWiFiInstance)
  {
    *(sharedInstanceForP2P_gPreferP2PWiFiInstance + 9) = 1;
  }
}

void __45__NRPreferWiFi_sharedInstanceForP2PImmediate__block_invoke()
{
  v0 = objc_alloc_init(NRPreferWiFi);
  v1 = sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance;
  sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance = v0;

  if (sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance)
  {
    *(sharedInstanceForP2PImmediate_gPreferP2PImmediatelyInstance + 9) = 257;
  }
}

- (void)resetInner
{
  if (!a1)
  {
    return;
  }

  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Resetting state", a4, a5, a6, a7, a8, ""), nrCopyLogObj_onceToken_75 != -1))
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_9;
    }
  }

  else if (sNRCopyLogToStdErr)
  {
LABEL_9:
    v14 = *(a1 + 40);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", a4, a5, a6, a7, a8, "");
    goto LABEL_10;
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0;

  v10 = *(a1 + 56);
  if (v10)
  {
    dispatch_source_cancel(v10);
    v11 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  v12 = *(a1 + 24);
  *(a1 + 24) = 0;

  if (*(a1 + 32))
  {
    nw_path_evaluator_cancel();
    v13 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

- (void)updateAgentUUID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    *(a1 + 48) = 0;

    if (v3)
    {
      v10 = nw_path_copy_netagent_dictionary();
      v16 = v10;
      if (v10 && MEMORY[0x25F8746E0](v10) == MEMORY[0x277D86468])
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __32__NRPreferWiFi_updateAgentUUID___block_invoke;
        applier[3] = &unk_27996B058;
        applier[4] = a1;
        xpc_dictionary_apply(v16, applier);
      }

      else
      {
        if (nrCopyLogObj_onceToken_75 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d No netagents to retrieve agent UUID", v11, v12, v13, v14, v15, "");
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_75 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d No path to update agent UUID", v5, v6, v7, v8, v9, "");
      }
    }
  }
}

uint64_t __32__NRPreferWiFi_updateAgentUUID___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "PreferWiFi"))
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
      v8 = *(a1 + 32);
      if (v8)
      {
        objc_storeStrong((v8 + 48), v7);
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

void __30__NRPreferWiFi_submitRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76[2] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  if (!v9)
  {
    v12 = (a1 + 40);
    if (!*(a1 + 40))
    {
      goto LABEL_89;
    }

    goto LABEL_11;
  }

  v10 = *(v9 + 40);
  v12 = (a1 + 40);
  v11 = *(a1 + 40);
  if (v11 == (v10 != 0))
  {
    if (v10)
    {
      v13 = *(v9 + 24);
      v14 = *(a1 + 32);
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_72;
        }

        if (*(v14 + 40))
        {
          goto LABEL_55;
        }
      }

      v15 = *(v14 + 24);
      if (v15)
      {
        v16 = *(a1 + 32);
        if (!v16)
        {

          goto LABEL_55;
        }

        v17 = *(v16 + 40);

        if (!v17)
        {
LABEL_55:
          if (nrCopyLogObj_onceToken_75 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
          {
            v56 = *(a1 + 32);
            if (v56)
            {
              v57 = *(v56 + 24);
              v58 = *(v56 + 40);
            }

            else
            {
              v57 = 0;
            }

            v75 = nrCopyLogObj_sNRLogObj_76;
            _NRLogWithArgs(v75, 17, "Something went wrong <path: %@, assert count: %ld>", v59, v60, v61, v62, v63, v57);
            v64 = *MEMORY[0x277D85DE8];

            return;
          }

LABEL_94:
          v69 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_73:
        v67 = *(a1 + 32);
        if (v67)
        {
          v68 = *(v67 + 40) + 1;
          if (nrCopyLogObj_onceToken_75 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
          {
            v73 = *(v67 + 40);
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", v18, v19, v20, v21, v22, "");
          }

          *(v67 + 40) = v68;
        }

        goto LABEL_94;
      }

LABEL_72:

      goto LABEL_73;
    }

LABEL_89:
    if (nrCopyLogObj_onceToken_75 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
    {
      v74 = *v12;
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Ignoring setting prefer Wi-Fi to %d", a4, a5, a6, a7, a8, "");
    }

    goto LABEL_94;
  }

  if (v11)
  {
LABEL_11:
    v23 = objc_alloc_init(MEMORY[0x277CD91F0]);
    [v23 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"PreferWiFi"];
    v24 = *(a1 + 32);
    if (v24)
    {
      LOBYTE(v24) = *(v24 + 9);
    }

    [v23 setUseP2P:v24 & 1];
    v25 = *(a1 + 32);
    if (v25 && *(v25 + 9) == 1 && *(v25 + 10) == 1)
    {
      [v23 setTrafficClass:300];
    }

    v26 = [v23 copyCParameters];
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = *(v28 + 16);
    }

    nw_path_evaluator_set_update_handler();
    v30 = nw_path_evaluator_copy_path();
    status = nw_path_get_status(v30);
    v32 = status;
    if (status <= nw_path_status_satisfiable && status != nw_path_status_satisfied)
    {
      v34 = *(a1 + 32);
      if (v34)
      {
        *(v34 + 8) = 1;
      }
    }

    [(NRPreferWiFi *)*(a1 + 32) updateAgentUUID:v30];
    v40 = *(a1 + 32);
    if (v40 && (*(v40 + 48) || (*(v40 + 8) & 1) != 0))
    {
      objc_storeStrong((v40 + 32), evaluator_for_endpoint);
      v41 = *(a1 + 32);
      if (v41)
      {
        objc_storeStrong((v41 + 24), v30);
        v47 = *(a1 + 32);
        if (v47)
        {
          v48 = *(v47 + 40) + 1;
          if (nrCopyLogObj_onceToken_75 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
          {
            v71 = *(v47 + 40);
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", v42, v43, v44, v45, v46, "");
          }

          *(v47 + 40) = v48;
          v49 = *(a1 + 32);
          if (v49)
          {
            if (v32 == nw_path_status_satisfied)
            {
              v50 = *(v49 + 48);
              if (v50)
              {
                v76[0] = 0;
                v76[1] = 0;
                [v50 getUUIDBytes:v76];
                v51 = *(a1 + 32);
                if (v51)
                {
                  v52 = *(v51 + 24);
                }

                nw_path_assert_agent();
              }
            }
          }
        }
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_75 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 16, "%s%.30s:%-4d Failed to get agent UUID", v35, v36, v37, v38, v39, "");
      }
    }

    goto LABEL_94;
  }

  if (!v10)
  {
    if (nrCopyLogObj_onceToken_75 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 17, "No prefer Wi-Fi request to disable", a4, a5, a6, a7, a8, v70);
    }

    goto LABEL_69;
  }

  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    v72 = *(v9 + 40);
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Setting prefer Wi-Fi assert count: %ld -> %ld", a4, a5, a6, a7, a8, "");
  }

  *(v9 + 40) = v10 - 1;
  v53 = *(a1 + 32);
  if (v53 && *(v53 + 40))
  {
    goto LABEL_94;
  }

  if (nrCopyLogObj_onceToken_75 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_52:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d All clients of prefer Wi-Fi went away", a4, a5, a6, a7, a8, "");
      goto LABEL_69;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_52;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    goto LABEL_52;
  }

LABEL_69:
  v65 = *(a1 + 32);
  v66 = *MEMORY[0x277D85DE8];

  [(NRPreferWiFi *)v65 resetInner:v54];
}

void __30__NRPreferWiFi_submitRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = *(a1 + 32);
  if (!v10 || !*(v10 + 40))
  {
    if (nrCopyLogObj_onceToken_75 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_20;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_42;
    }

LABEL_20:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 17, "Received path update when we have no requests", v4, v5, v6, v7, v8, v42);
    goto LABEL_42;
  }

  objc_storeStrong((v10 + 24), a2);
  if (nrCopyLogObj_onceToken_75 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 24);
    }

    v13 = nrCopyLogObj_sNRLogObj_76;
    _NRLogWithArgs(v13, 1, "%s%.30s:%-4d Received path: %@", v14, v15, v16, v17, v18, "");
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    [(NRPreferWiFi *)v19 updateAgentUUID:?];
    v20 = *(a1 + 32);
    if (v20)
    {
LABEL_12:
      v21 = *(v20 + 24);
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 32);
    if (v20)
    {
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_13:
  status = nw_path_get_status(v21);
  if ((status & 0xFFFFFFFE) == 2)
  {
    v28 = *(a1 + 32);
    if (v28 && *(v28 + 40))
    {
      *(v28 + 8) = 1;
    }

    goto LABEL_42;
  }

  if (status != nw_path_status_satisfied)
  {
    goto LABEL_42;
  }

  v29 = *(a1 + 32);
  if (!v29 || !*(v29 + 40) || *(v29 + 8) != 1)
  {
    goto LABEL_42;
  }

  if (!*(v29 + 48))
  {
    if (nrCopyLogObj_onceToken_75 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_41;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_41;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_42;
    }

LABEL_41:
    v35 = nrCopyLogObj_68();
    _NRLogWithArgs(v35, 17, "No agent UUID while path is satisfied", v36, v37, v38, v39, v40, v42);

    goto LABEL_42;
  }

  if (nrCopyLogObj_onceToken_75 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_30:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_76, 1, "%s%.30s:%-4d Reasserting the agent", v23, v24, v25, v26, v27, "");
      goto LABEL_31;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_75, &__block_literal_global_55);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_76, OS_LOG_TYPE_INFO))
  {
    goto LABEL_30;
  }

LABEL_31:
  v43[0] = 0;
  v43[1] = 0;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 48);
  }

  else
  {
    v31 = 0;
  }

  [v31 getUUIDBytes:v43];
  v32 = *(a1 + 32);
  if (v32)
  {
    v33 = *(v32 + 24);
  }

  nw_path_assert_agent();
  v34 = *(a1 + 32);
  if (v34)
  {
    *(v34 + 8) = 0;
  }

LABEL_42:

  v41 = *MEMORY[0x277D85DE8];
}

@end