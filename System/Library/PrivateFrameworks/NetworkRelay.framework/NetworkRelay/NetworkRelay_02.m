BOOL nrXPCCompanionFlushBTPipe()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x30uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionFlushBTPipe", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionEnableCloudLink()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x17uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionEnableCloudLink", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionDisableCloudLink()
{
  v85 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v65;
      v68 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v68)
      {
        goto LABEL_83;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v70, v71, v72, v73, v74, "");

LABEL_83:
    v75 = _os_log_pack_size();
    MEMORY[0x28223BE20](v75, v76);
    v77 = *__error();
    v78 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v78, "nr_xpc_dictionary_create");
    v79 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v79);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x18uLL);
  v2 = nrXPCSendSyncInner("nrXPCCompanionDisableCloudLink", v1);
  v3 = v2;
  if (!v2)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v80 = v66;
      v16 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v16)
      {
        goto LABEL_63;
      }
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received nil response";
    goto LABEL_61;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v17 = xpc_dictionary_get_value(v3, "Result");
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x25F8746E0](v17) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v23);
        if (!value)
        {
          v16 = 1;
          goto LABEL_36;
        }

        v32 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v49 = nrCopyLogObj_sNRLogObj_2653;
          if (!v32)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v57 = v49;
              v58 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

              if (!v58)
              {
                goto LABEL_35;
              }
            }

            v59 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v32);
            _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v49;
            v51 = os_log_type_enabled(v49, OS_LOG_TYPE_FAULT);

            if (!v51)
            {
              goto LABEL_35;
            }
          }

          v33 = nrCopyLogObj_2646();
          v82 = createStringFromNRXPCRes(v32);
          _NRLogWithArgs(v33, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v32);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v33 = nrCopyLogObj_2646();
          _NRLogWithArgs(v33, 17, "received failure result code: [%d] %s", v34, v35, v36, v37, v38, v32);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v24 = nrCopyLogObj_sNRLogObj_2653;
      v25 = "received response without result code";
    }

    _NRLogWithArgs(v24, 17, v25, v18, v19, v20, v21, v22, v83);
LABEL_35:
    v16 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v83);
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
        v16 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v26, v27, v28, v29, v30, v15);
      }

      if (v15)
      {
        goto LABEL_11;
      }

LABEL_62:
      v16 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v39 = nrCopyLogObj_2646();
    v45 = v39;
    v46 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v39, 17, v46, v40, v41, v42, v43, v44, v83);

    v16 = 0;
    goto LABEL_63;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
  }

  if (!v15)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v15);
  v16 = 0;
LABEL_63:

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL nrXPCCompanionSetWatchRoleSwitchAllowed(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x26uLL);
  xpc_dictionary_set_BOOL(v3, "WatchRoleSwitchAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetWatchRoleSwitchAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetSimulateAltAccount(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x25uLL);
  xpc_dictionary_set_BOOL(v3, "SimulateAltAccount", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetSimulateAltAccount", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetRangeExtensionAllowed(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1DuLL);
  xpc_dictionary_set_BOOL(v3, "WiFiRangeExtensionAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetRangeExtensionAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetCompanionAPLForTesting(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x35uLL);
  xpc_dictionary_set_BOOL(v3, "TestCompanionAPL", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetCompanionAPLForTesting", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetTetheringBundleIDs(void *a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_85;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_85:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x33uLL);
  if (v1)
  {
    xpc_dictionary_set_string(v3, "TetheringBundleIDs", [v1 UTF8String]);
  }

  v4 = nrXPCSendSyncInner("nrXPCCompanionSetTetheringBundleIDs", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_65;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_63;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_38;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_37;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_37;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_37;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_37;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_37;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_37:
    v18 = 0;
LABEL_38:

    goto LABEL_65;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_13;
      }

LABEL_64:
      v18 = 0;
      goto LABEL_65;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_64;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_63:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_65;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_64;
  }

LABEL_13:
  free(v17);
  v18 = 0;
LABEL_65:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetSimulateSlicingEnabled(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x37uLL);
  xpc_dictionary_set_BOOL(v3, "SimulateSlicingEnabled", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetSimulateSlicingEnabled", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetPreferWiFiAllowed(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1EuLL);
  xpc_dictionary_set_BOOL(v3, "PreferWiFiAllowed", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSetPreferWiFiAllowed", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionBlockSHOESTraffic(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x27uLL);
  xpc_dictionary_set_BOOL(v3, "BlockSHOESTraffic", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionBlockSHOESTraffic", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionBlockIDSTraffic(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x28uLL);
  xpc_dictionary_set_BOOL(v3, "BlockIDSTraffic", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionBlockIDSTraffic", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSimulateWakePacket(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2BuLL);
  xpc_dictionary_set_BOOL(v3, "SimulateWakePacket", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionSimulateWakePacket", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCCompanionSetFixedInterfaceMode(BOOL a1, void *a2, void *a3, void *a4)
{
  v95 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    v75 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v77 = v75;
      v78 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);

      if (!v78)
      {
        goto LABEL_89;
      }
    }

    v79 = nrCopyLogObj_2646();
    _NRLogWithArgs(v79, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v80, v81, v82, v83, v84, "");

LABEL_89:
    v85 = _os_log_pack_size();
    MEMORY[0x28223BE20](v85, v86);
    v87 = *__error();
    v88 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v88, "nr_xpc_dictionary_create");
    v89 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v89);
  }

  v11 = v10;
  xpc_dictionary_set_uint64(v10, "Type", 0x20uLL);
  xpc_dictionary_set_BOOL(v11, "FixedInterfaceModeSetEnabled", a1);
  if (v7)
  {
    xpc_dictionary_set_string(v11, "FixedInterfaceModeInterfaceName", [v7 UTF8String]);
  }

  if (v8)
  {
    xpc_dictionary_set_string(v11, "FixedInterfaceModePeerAddress", [v8 UTF8String]);
  }

  if (v9)
  {
    xpc_dictionary_set_string(v11, "IDSDeviceID", [v9 UTF8String]);
  }

  v12 = nrXPCSendSyncInner("nrXPCCompanionSetFixedInterfaceMode", v11);
  v13 = v12;
  if (!v12)
  {
    v76 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v90 = v76;
      v26 = os_log_type_enabled(v76, OS_LOG_TYPE_FAULT);

      if (!v26)
      {
        goto LABEL_69;
      }
    }

    v49 = nrCopyLogObj_2646();
    v55 = v49;
    v56 = "received nil response";
    goto LABEL_67;
  }

  v14 = MEMORY[0x25F8746E0](v12);
  if (v14 == MEMORY[0x277D86468])
  {
    v27 = xpc_dictionary_get_value(v13, "Result");
    v33 = v27;
    if (v27)
    {
      if (MEMORY[0x25F8746E0](v27) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v33);
        if (!value)
        {
          v26 = 1;
          goto LABEL_42;
        }

        v42 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v59 = nrCopyLogObj_sNRLogObj_2653;
          if (!v42)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v67 = v59;
              v68 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);

              if (!v68)
              {
                goto LABEL_41;
              }
            }

            v69 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v42);
            _NRLogWithArgs(v69, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v70, v71, v72, v73, v74, "");

            goto LABEL_41;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v60 = v59;
            v61 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);

            if (!v61)
            {
              goto LABEL_41;
            }
          }

          v43 = nrCopyLogObj_2646();
          v92 = createStringFromNRXPCRes(v42);
          _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, v42);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_41;
          }

          v43 = nrCopyLogObj_2646();
          _NRLogWithArgs(v43, 17, "received failure result code: [%d] %s", v44, v45, v46, v47, v48, v42);
        }

        goto LABEL_41;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_41;
      }

      v34 = nrCopyLogObj_sNRLogObj_2653;
      v35 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_41;
      }

      v34 = nrCopyLogObj_sNRLogObj_2653;
      v35 = "received response without result code";
    }

    _NRLogWithArgs(v34, 17, v35, v28, v29, v30, v31, v32, v93);
LABEL_41:
    v26 = 0;
LABEL_42:

    goto LABEL_69;
  }

  if (v14 == MEMORY[0x277D86480])
  {
    if (v13 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v15, v16, v17, v18, v19, v93);
        v26 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if (v13 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v15, v16, v17, v18, v19, "");
        v26 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    if (v13 != MEMORY[0x277D86420])
    {
      v25 = MEMORY[0x25F874580](v13);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v36, v37, v38, v39, v40, v25);
      }

      if (v25)
      {
        goto LABEL_17;
      }

LABEL_68:
      v26 = 0;
      goto LABEL_69;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_68;
    }

    v49 = nrCopyLogObj_2646();
    v55 = v49;
    v56 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_67:
    _NRLogWithArgs(v49, 17, v56, v50, v51, v52, v53, v54, v93);

    v26 = 0;
    goto LABEL_69;
  }

  v25 = MEMORY[0x25F874580](v13);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v20, v21, v22, v23, v24, v25);
  }

  if (!v25)
  {
    goto LABEL_68;
  }

LABEL_17:
  free(v25);
  v26 = 0;
LABEL_69:

  v57 = *MEMORY[0x277D85DE8];
  return v26;
}

BOOL nrXPCCompanionLinkSubmitTestLinkRecommendation(void *a1, const char *a2, int a3)
{
  v103 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (!v6)
  {
    v73 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v76 = v73;
      v77 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);

      if (!v77)
      {
        goto LABEL_90;
      }
    }

    v78 = nrCopyLogObj_2646();
    _NRLogWithArgs(v78, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v79, v80, v81, v82, v83, "");

LABEL_90:
    v84 = _os_log_pack_size();
    MEMORY[0x28223BE20](v84, v85);
    v86 = *__error();
    v87 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v87, "nr_xpc_dictionary_create");
    v88 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v88);
  }

  v7 = v6;
  xpc_dictionary_set_uint64(v6, "Type", 0x1AuLL);
  v8 = v7;
  if (v5)
  {
    *uuid = 0;
    v102 = 0;
    [v5 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v8, "DeviceIdentifier", uuid);
    goto LABEL_4;
  }

  v74 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v89 = v74;
    v90 = os_log_type_enabled(v74, OS_LOG_TYPE_FAULT);

    if (!v90)
    {
      goto LABEL_4;
    }
  }

  v91 = nrCopyLogObj_2646();
  _NRLogWithArgs(v91, 17, "%s called with null uuid", v92, v93, v94, v95, v96, "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  xpc_dictionary_set_uint64(v8, a2, v9);
  v10 = nrXPCSendSyncInner("nrXPCCompanionLinkSubmitTestLinkRecommendation", v8);
  v11 = v10;
  if (!v10)
  {
    v75 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v97 = v75;
      v24 = os_log_type_enabled(v75, OS_LOG_TYPE_FAULT);

      if (!v24)
      {
        goto LABEL_68;
      }
    }

    v47 = nrCopyLogObj_2646();
    v53 = v47;
    v54 = "received nil response";
    goto LABEL_66;
  }

  v12 = MEMORY[0x25F8746E0](v10);
  if (v12 == MEMORY[0x277D86468])
  {
    v25 = xpc_dictionary_get_value(v11, "Result");
    v31 = v25;
    if (v25)
    {
      if (MEMORY[0x25F8746E0](v25) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v31);
        if (!value)
        {
          v24 = 1;
          goto LABEL_41;
        }

        v40 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v57 = nrCopyLogObj_sNRLogObj_2653;
          if (!v40)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v65 = v57;
              v66 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

              if (!v66)
              {
                goto LABEL_40;
              }
            }

            v67 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v40);
            _NRLogWithArgs(v67, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v68, v69, v70, v71, v72, "");

            goto LABEL_40;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v58 = v57;
            v59 = os_log_type_enabled(v57, OS_LOG_TYPE_FAULT);

            if (!v59)
            {
              goto LABEL_40;
            }
          }

          v41 = nrCopyLogObj_2646();
          v99 = createStringFromNRXPCRes(v40);
          _NRLogWithArgs(v41, 17, "received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, v40);
        }

        else
        {
          if (strerror_r(value, uuid, 0x80uLL))
          {
            uuid[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_40;
          }

          v41 = nrCopyLogObj_2646();
          _NRLogWithArgs(v41, 17, "received failure result code: [%d] %s", v42, v43, v44, v45, v46, v40);
        }

        goto LABEL_40;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v32 = nrCopyLogObj_sNRLogObj_2653;
      v33 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }

      v32 = nrCopyLogObj_sNRLogObj_2653;
      v33 = "received response without result code";
    }

    _NRLogWithArgs(v32, 17, v33, v26, v27, v28, v29, v30, v100);
LABEL_40:
    v24 = 0;
LABEL_41:

    goto LABEL_68;
  }

  if (v12 == MEMORY[0x277D86480])
  {
    if (v11 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v13, v14, v15, v16, v17, v100);
        v24 = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v11 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v13, v14, v15, v16, v17, "");
        v24 = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    if (v11 != MEMORY[0x277D86420])
    {
      v23 = MEMORY[0x25F874580](v11);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v34, v35, v36, v37, v38, v23);
      }

      if (v23)
      {
        goto LABEL_16;
      }

LABEL_67:
      v24 = 0;
      goto LABEL_68;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_67;
    }

    v47 = nrCopyLogObj_2646();
    v53 = v47;
    v54 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_66:
    _NRLogWithArgs(v47, 17, v54, v48, v49, v50, v51, v52, v100);

    v24 = 0;
    goto LABEL_68;
  }

  v23 = MEMORY[0x25F874580](v11);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v18, v19, v20, v21, v22, v23);
  }

  if (!v23)
  {
    goto LABEL_67;
  }

LABEL_16:
  free(v23);
  v24 = 0;
LABEL_68:

  v55 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL nrXPCCompanionLinkSetEncryptionType(unsigned int a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x2CuLL);
  xpc_dictionary_set_uint64(v3, "CompanionLinkEncryptionType", a1);
  v4 = nrXPCSendSyncInner("nrXPCCompanionLinkSetEncryptionType", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

char *nrXPCTestCopyBabelRoutes()
{
  v78 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v57 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v59 = v57;
      v60 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);

      if (!v60)
      {
        goto LABEL_80;
      }
    }

    v61 = nrCopyLogObj_2646();
    _NRLogWithArgs(v61, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v62, v63, v64, v65, v66, "");

LABEL_80:
    v67 = _os_log_pack_size();
    MEMORY[0x28223BE20](v67, v68);
    v69 = *__error();
    v70 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v70, "nr_xpc_dictionary_create");
    v71 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v71);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x1BuLL);
  v2 = nrXPCSendSyncInner("nrXPCTestCopyBabelRoutes", v1);
  v3 = v2;
  if (!v2)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v72 = v58;
      v73 = os_log_type_enabled(v58, OS_LOG_TYPE_FAULT);

      if (!v73)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          string = xpc_dictionary_get_string(v3, "BabelRoutes");
          if (string)
          {
            string = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
          }

          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v40 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v49 = v40;
            v50 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);

            if (!v50)
            {
              goto LABEL_34;
            }
          }

          v51 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v51, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v41 = v40;
          v42 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);

          if (!v42)
          {
            goto LABEL_34;
          }
        }

        v43 = nrCopyLogObj_2646();
        v75 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v43, 17, "received internal failure result code: [%lld] %@", v44, v45, v46, v47, v48, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v76);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    string = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, string);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v76);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  string = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, string);
  }

LABEL_10:
  if (string)
  {
    free(string);
LABEL_35:
    string = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return string;
}

id nrXPCCopyResolvedEndpointWithMetadata(void *a1, uint64_t a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "Type", 6uLL);
      *uuid = 0;
      v122 = 0;
      v6 = v5;
      [v3 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v6, "NRUUID", uuid);

      xpc_dictionary_set_uint64(v6, "DataProtectionClass", a2);
      v7 = nrXPCSendSyncInner("nrXPCCopyResolvedEndpointWithMetadata", v6);
      v8 = v7;
      if (!v7)
      {
        v96 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v116 = v96;
          v117 = os_log_type_enabled(v96, OS_LOG_TYPE_FAULT);

          if (!v117)
          {
            goto LABEL_35;
          }
        }

        v44 = nrCopyLogObj_2646();
        v50 = v44;
        v51 = "received nil response";
        goto LABEL_62;
      }

      v9 = MEMORY[0x25F8746E0](v7);
      if (v9 != MEMORY[0x277D86468])
      {
        if (v9 != MEMORY[0x277D86480])
        {
          v20 = MEMORY[0x25F874580](v8);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v15, v16, v17, v18, v19, v20);
          }

LABEL_11:
          if (!v20)
          {
LABEL_36:

            goto LABEL_37;
          }

          free(v20);
LABEL_35:
          v20 = 0;
          goto LABEL_36;
        }

        if (v8 == MEMORY[0x277D863F0])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v10, v11, v12, v13, v14, v120);
          }

          goto LABEL_35;
        }

        if (v8 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v10, v11, v12, v13, v14, "");
          }

          goto LABEL_35;
        }

        if (v8 != MEMORY[0x277D86420])
        {
          v20 = MEMORY[0x25F874580](v8);
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v29, v30, v31, v32, v33, v20);
          }

          goto LABEL_11;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_35;
        }

        v44 = nrCopyLogObj_2646();
        v50 = v44;
        v51 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_62:
        _NRLogWithArgs(v44, 17, v51, v45, v46, v47, v48, v49, v120);

        goto LABEL_35;
      }

      v21 = xpc_dictionary_get_value(v8, "Result");
      v27 = v21;
      if (!v21)
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_34;
        }

        v28 = "received response without result code";
LABEL_33:
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, v28, v22, v23, v24, v25, v26, v120);
LABEL_34:

        goto LABEL_35;
      }

      if (MEMORY[0x25F8746E0](v21) != MEMORY[0x277D86498])
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_34;
        }

        v28 = "received invalid result type";
        goto LABEL_33;
      }

      value = xpc_int64_get_value(v27);
      if (value)
      {
        v37 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, uuid, 0x80uLL))
          {
            uuid[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v38 = nrCopyLogObj_2646();
            _NRLogWithArgs(v38, 17, "received failure result code: [%d] %s", v39, v40, v41, v42, v43, v37);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v60 = nrCopyLogObj_sNRLogObj_2653;
        if (!v37)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v78 = v60;
            v79 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

            if (!v79)
            {
              goto LABEL_34;
            }
          }

          v80 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v37);
          _NRLogWithArgs(v80, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v81, v82, v83, v84, v85, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v66 = v60;
          v67 = os_log_type_enabled(v60, OS_LOG_TYPE_FAULT);

          if (!v67)
          {
            goto LABEL_34;
          }
        }

        v68 = nrCopyLogObj_2646();
        v119 = createStringFromNRXPCRes(v37);
        _NRLogWithArgs(v68, 17, "received internal failure result code: [%lld] %@", v69, v70, v71, v72, v73, v37);

        goto LABEL_34;
      }

      v52 = xpc_dictionary_get_value(v8, "IPv6Address");
      v53 = v52;
      if (v52)
      {
        if (MEMORY[0x25F8746E0](v52) == MEMORY[0x277D86458])
        {
          *uuid = 0;
          v122 = 0;
          if (xpc_data_get_bytes(v53, uuid, 0, 0x10uLL) == 16)
          {
            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v74 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:uuid length:16];
            [v20 setObject:v74 forKeyedSubscript:@"AddrData"];

            v75 = [MEMORY[0x277CCABB0] numberWithInt:{xpc_dictionary_get_BOOL(v8, "UseASQUIC")}];
            [v20 setObject:v75 forKeyedSubscript:@"UseASQUIC"];

            string = xpc_dictionary_get_string(v8, "IDSDeviceID");
            if (!string)
            {
              goto LABEL_96;
            }

            v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
            [v20 setObject:v77 forKeyedSubscript:@"deviceID"];
          }

          else
          {
            v86 = nrCopyLogObj_2646();
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v87 = v86;
              v88 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);

              if (!v88)
              {
                goto LABEL_95;
              }
            }

            v77 = nrCopyLogObj_2646();
            _NRLogWithArgs(v77, 16, "%s%.30s:%-4d Response of invalid length %zu", v89, v90, v91, v92, v93, "");
            v20 = 0;
          }

          goto LABEL_96;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          v54 = nrCopyLogObj_2646();
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d Response of invalid type", v55, v56, v57, v58, v59, "");
LABEL_80:

          v20 = 0;
LABEL_96:

          goto LABEL_36;
        }
      }

      else
      {
        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
        {
          v54 = nrCopyLogObj_2646();
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d Missing address", v61, v62, v63, v64, v65, "");
          goto LABEL_80;
        }
      }

LABEL_95:
      v20 = 0;
      goto LABEL_96;
    }

    v95 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v105 = v95;
      v106 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);

      if (!v106)
      {
        goto LABEL_107;
      }
    }

    v107 = nrCopyLogObj_2646();
    _NRLogWithArgs(v107, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v108, v109, v110, v111, v112, "");

LABEL_107:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v113 = *__error();
    v114 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v114, "nr_xpc_dictionary_create");
    v115 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v115);
  }

  v94 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v97 = v94;
    v98 = os_log_type_enabled(v94, OS_LOG_TYPE_FAULT);

    if (!v98)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  v99 = nrCopyLogObj_2646();
  _NRLogWithArgs(v99, 17, "%s called with null nrUUID", v100, v101, v102, v103, v104, "nrXPCCopyResolvedEndpointWithMetadata");

  v20 = 0;
LABEL_37:

  v34 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL nrXPCSetPacketLogging(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 7uLL);
  xpc_dictionary_set_BOOL(v3, "PacketLoggingVal", a1);
  v4 = nrXPCSendSyncInner("nrXPCSetPacketLogging", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL nrXPCSetMPKLLogging(BOOL a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v67;
      v70 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
        goto LABEL_83;
      }
    }

    v71 = nrCopyLogObj_2646();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v72, v73, v74, v75, v76, "");

LABEL_83:
    v77 = _os_log_pack_size();
    MEMORY[0x28223BE20](v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v80, "nr_xpc_dictionary_create");
    v81 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v81);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1FuLL);
  xpc_dictionary_set_BOOL(v3, "MPKLLoggingVal", a1);
  v4 = nrXPCSendSyncInner("nrXPCSetMPKLLogging", v3);
  v5 = v4;
  if (!v4)
  {
    v68 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v68;
      v18 = os_log_type_enabled(v68, OS_LOG_TYPE_FAULT);

      if (!v18)
      {
        goto LABEL_63;
      }
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received nil response";
    goto LABEL_61;
  }

  v6 = MEMORY[0x25F8746E0](v4);
  if (v6 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v5, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {
          v18 = 1;
          goto LABEL_36;
        }

        v34 = value;
        if (value >> 31)
        {
          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          v51 = nrCopyLogObj_sNRLogObj_2653;
          if (!v34)
          {
            if (sNRCopyLogToStdErr)
            {
            }

            else
            {
              v59 = v51;
              v60 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

              if (!v60)
              {
                goto LABEL_35;
              }
            }

            v61 = nrCopyLogObj_2646();
            StringFromNRXPCRes = createStringFromNRXPCRes(v34);
            _NRLogWithArgs(v61, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v62, v63, v64, v65, v66, "");

            goto LABEL_35;
          }

          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v51;
            v53 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

            if (!v53)
            {
              goto LABEL_35;
            }
          }

          v35 = nrCopyLogObj_2646();
          v84 = createStringFromNRXPCRes(v34);
          _NRLogWithArgs(v35, 17, "received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, v34);
        }

        else
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_35;
          }

          v35 = nrCopyLogObj_2646();
          _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
        }

        goto LABEL_35;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_35;
      }

      v26 = nrCopyLogObj_sNRLogObj_2653;
      v27 = "received response without result code";
    }

    _NRLogWithArgs(v26, 17, v27, v20, v21, v22, v23, v24, v85);
LABEL_35:
    v18 = 0;
LABEL_36:

    goto LABEL_63;
  }

  if (v6 == MEMORY[0x277D86480])
  {
    if (v5 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v7, v8, v9, v10, v11, v85);
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v7, v8, v9, v10, v11, "");
        v18 = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v5 != MEMORY[0x277D86420])
    {
      v17 = MEMORY[0x25F874580](v5);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v17);
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_62:
      v18 = 0;
      goto LABEL_63;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    v41 = nrCopyLogObj_2646();
    v47 = v41;
    v48 = "received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_61:
    _NRLogWithArgs(v41, 17, v48, v42, v43, v44, v45, v46, v85);

    v18 = 0;
    goto LABEL_63;
  }

  v17 = MEMORY[0x25F874580](v5);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v12, v13, v14, v15, v16, v17);
  }

  if (!v17)
  {
    goto LABEL_62;
  }

LABEL_11:
  free(v17);
  v18 = 0;
LABEL_63:

  v49 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t nrXPCGetNetworkRelayVersion()
{
  v79 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v58 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v58;
      v61 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);

      if (!v61)
      {
        goto LABEL_81;
      }
    }

    v62 = nrCopyLogObj_2646();
    _NRLogWithArgs(v62, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v63, v64, v65, v66, v67, "");

LABEL_81:
    v68 = _os_log_pack_size();
    MEMORY[0x28223BE20](v68, v69);
    v70 = *__error();
    v71 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v71, "nr_xpc_dictionary_create");
    v72 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v72);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x2DuLL);
  v2 = nrXPCSendSyncInner("nrXPCGetNetworkRelayVersion", v1);
  v3 = v2;
  if (!v2)
  {
    v59 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v73 = v59;
      v74 = os_log_type_enabled(v59, OS_LOG_TYPE_FAULT);

      if (!v74)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          uint64 = xpc_dictionary_get_uint64(v3, "NetworkRelayVersion");
          if (uint64 >> 16)
          {
            LOWORD(v15) = 0;
          }

          else
          {
            LOWORD(v15) = uint64;
          }

          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v41 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v50 = v41;
            v51 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

            if (!v51)
            {
              goto LABEL_34;
            }
          }

          v52 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v52, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v53, v54, v55, v56, v57, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v42 = v41;
          v43 = os_log_type_enabled(v41, OS_LOG_TYPE_FAULT);

          if (!v43)
          {
            goto LABEL_34;
          }
        }

        v44 = nrCopyLogObj_2646();
        v76 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v44, 17, "received internal failure result code: [%lld] %@", v45, v46, v47, v48, v49, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v77);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v15 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v77);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
  }

LABEL_10:
  if (v15)
  {
    free(v15);
LABEL_35:
    LOWORD(v15) = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

void *nrXPCCopyNRUUIDForBluetoothUUID(void *a1, BOOL *a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v65 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v68 = v65;
      v69 = os_log_type_enabled(v65, OS_LOG_TYPE_FAULT);

      if (!v69)
      {
        goto LABEL_88;
      }
    }

    v70 = nrCopyLogObj_823();
    _NRLogWithArgs(v70, 17, "%s called with null nsUUID", v71, v72, v73, v74, v75, "_NRIsUUIDNonZero");

    goto LABEL_88;
  }

  *uu = 0;
  v121 = 0;
  [v3 getUUIDBytes:uu];
  if (!uuid_is_null(uu))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0xDuLL);
      *uu = 0;
      v121 = 0;
      v7 = v6;
      [v4 getUUIDBytes:uu];
      xpc_dictionary_set_uuid(v7, "BluetoothUUID", uu);

      v8 = nrXPCSendSyncInner("nrXPCCopyNRUUIDForBluetoothUUID", v7);
      v9 = v8;
      if (v8)
      {
        v10 = MEMORY[0x25F8746E0](v8);
        if (v10 == MEMORY[0x277D86468])
        {
          v22 = xpc_dictionary_get_value(v9, "Result");
          v28 = v22;
          if (v22)
          {
            if (MEMORY[0x25F8746E0](v22) == MEMORY[0x277D86498])
            {
              value = xpc_int64_get_value(v28);
              if (!value)
              {

                if (a2)
                {
                  *a2 = xpc_dictionary_get_BOOL(v9, "IsEphemeral");
                }

                uuid = xpc_dictionary_get_uuid(v9, "NRUUID");
                if (uuid)
                {
                  v47 = uuid;
                  if (!uuid_is_null(uuid))
                  {
                    v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v47];
                    goto LABEL_38;
                  }

                  v102 = nrCopyLogObj_2646();
                  v103 = v102;
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v111 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);

                    if (!v111)
                    {
                      goto LABEL_37;
                    }
                  }

                  v105 = nrCopyLogObj_2646();
                  _NRLogWithArgs(v105, 16, "%s%.30s:%-4d UUID is null for key %s", v112, v113, v114, v115, v116, "");
                }

                else
                {
                  v100 = nrCopyLogObj_2646();
                  v101 = v100;
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v104 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);

                    if (!v104)
                    {
                      goto LABEL_37;
                    }
                  }

                  v105 = nrCopyLogObj_2646();
                  _NRLogWithArgs(v105, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v106, v107, v108, v109, v110, "");
                }

                goto LABEL_37;
              }

              v39 = value;
              if (!(value >> 31))
              {
                if (strerror_r(value, uu, 0x80uLL))
                {
                  uu[0] = 0;
                }

                if (nrCopyLogObj_onceToken_2652 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
                }

                if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
                {
                  v40 = nrCopyLogObj_2646();
                  _NRLogWithArgs(v40, 17, "received failure result code: [%d] %s", v41, v42, v43, v44, v45, v39);
                }

                goto LABEL_36;
              }

              if (nrCopyLogObj_onceToken_2652 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
              }

              v48 = nrCopyLogObj_sNRLogObj_2653;
              if (!v39)
              {
                if (sNRCopyLogToStdErr)
                {
                }

                else
                {
                  v57 = v48;
                  v58 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

                  if (!v58)
                  {
                    goto LABEL_36;
                  }
                }

                v59 = nrCopyLogObj_2646();
                StringFromNRXPCRes = createStringFromNRXPCRes(v39);
                _NRLogWithArgs(v59, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v60, v61, v62, v63, v64, "");

                goto LABEL_36;
              }

              if (sNRCopyLogToStdErr)
              {
              }

              else
              {
                v49 = v48;
                v50 = os_log_type_enabled(v48, OS_LOG_TYPE_FAULT);

                if (!v50)
                {
                  goto LABEL_36;
                }
              }

              v51 = nrCopyLogObj_2646();
              v118 = createStringFromNRXPCRes(v39);
              _NRLogWithArgs(v51, 17, "received internal failure result code: [%lld] %@", v52, v53, v54, v55, v56, v39);

              goto LABEL_36;
            }

            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_36;
            }

            v29 = "received invalid result type";
          }

          else
          {
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_36;
            }

            v29 = "received response without result code";
          }

          v35 = nrCopyLogObj_sNRLogObj_2653;
        }

        else
        {
          if (v10 != MEMORY[0x277D86480])
          {
            v21 = MEMORY[0x25F874580](v9);
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v16, v17, v18, v19, v20, v21);
            }

LABEL_12:
            if (!v21)
            {
LABEL_38:

              goto LABEL_39;
            }

            free(v21);
LABEL_37:
            v21 = 0;
            goto LABEL_38;
          }

          if (v9 == MEMORY[0x277D863F0])
          {
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v11, v12, v13, v14, v15, v119);
            }

            goto LABEL_37;
          }

          if (v9 == MEMORY[0x277D863F8])
          {
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
            {
              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v11, v12, v13, v14, v15, "");
            }

            goto LABEL_37;
          }

          if (v9 != MEMORY[0x277D86420])
          {
            v21 = MEMORY[0x25F874580](v9);
            if (nrCopyLogObj_onceToken_2652 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
            }

            if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
            {
              _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v30, v31, v32, v33, v34, v21);
            }

            goto LABEL_12;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_37;
          }

          v35 = nrCopyLogObj_2646();
          v28 = v35;
          v29 = "received XPC_ERROR_TERMINATION_IMMINENT";
        }
      }

      else
      {
        v67 = nrCopyLogObj_2646();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v98 = v67;
          v99 = os_log_type_enabled(v67, OS_LOG_TYPE_FAULT);

          if (!v99)
          {
            goto LABEL_37;
          }
        }

        v35 = nrCopyLogObj_2646();
        v28 = v35;
        v29 = "received nil response";
      }

      _NRLogWithArgs(v35, 17, v29, v23, v24, v25, v26, v27, v119);
LABEL_36:

      goto LABEL_37;
    }

    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v85 = v66;
      v86 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);

      if (!v86)
      {
        goto LABEL_94;
      }
    }

    v87 = nrCopyLogObj_2646();
    _NRLogWithArgs(v87, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v88, v89, v90, v91, v92, "");

LABEL_94:
    v93 = _os_log_pack_size();
    MEMORY[0x28223BE20](v93, v94);
    v95 = *__error();
    v96 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v96, "nr_xpc_dictionary_create");
    v97 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v97);
  }

LABEL_88:
  v76 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v77 = v76;
    v78 = os_log_type_enabled(v76, OS_LOG_TYPE_FAULT);

    if (!v78)
    {
      v21 = 0;
      goto LABEL_39;
    }
  }

  v79 = nrCopyLogObj_2646();
  _NRLogWithArgs(v79, 17, "called with all-zero bluetoothUUID", v80, v81, v82, v83, v84, v119);

  v21 = 0;
LABEL_39:

  v36 = *MEMORY[0x277D85DE8];
  return v21;
}

void *nrXPCCopyBluetoothUUIDForNRUUID(void *a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v63 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v67 = v63;
      v68 = os_log_type_enabled(v63, OS_LOG_TYPE_FAULT);

      if (!v68)
      {
        goto LABEL_91;
      }
    }

    v69 = nrCopyLogObj_2646();
    _NRLogWithArgs(v69, 17, "%s called with null nrUUID", v70, v71, v72, v73, v74, "nrXPCCopyBluetoothUUIDForNRUUID");
LABEL_90:

    v19 = 0;
    goto LABEL_39;
  }

  *uu = 0;
  v118 = 0;
  [v1 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v64 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_89:
      v69 = nrCopyLogObj_2646();
      _NRLogWithArgs(v69, 17, "called with all-zero nrUUID", v77, v78, v79, v80, v81, v116);
      goto LABEL_90;
    }

    v75 = v64;
    v76 = os_log_type_enabled(v64, OS_LOG_TYPE_FAULT);

    if (v76)
    {
      goto LABEL_89;
    }

LABEL_91:
    v19 = 0;
    goto LABEL_39;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    v65 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v82 = v65;
      v83 = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);

      if (!v83)
      {
        goto LABEL_94;
      }
    }

    v84 = nrCopyLogObj_2646();
    _NRLogWithArgs(v84, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v85, v86, v87, v88, v89, "");

LABEL_94:
    v90 = _os_log_pack_size();
    MEMORY[0x28223BE20](v90, v91);
    v92 = *__error();
    v93 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v93, "nr_xpc_dictionary_create");
    v94 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v94);
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, "Type", 0x32uLL);
  *uu = 0;
  v118 = 0;
  v5 = v4;
  [v2 getUUIDBytes:uu];
  xpc_dictionary_set_uuid(v5, "NRUUID", uu);

  v6 = nrXPCSendSyncInner("nrXPCCopyBluetoothUUIDForNRUUID", v5);
  v7 = v6;
  if (!v6)
  {
    v66 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v95 = v66;
      v96 = os_log_type_enabled(v66, OS_LOG_TYPE_FAULT);

      if (!v96)
      {
        goto LABEL_37;
      }
    }

    v33 = nrCopyLogObj_2646();
    v26 = v33;
    v27 = "received nil response";
    goto LABEL_35;
  }

  v8 = MEMORY[0x25F8746E0](v6);
  if (v8 == MEMORY[0x277D86468])
  {
    v20 = xpc_dictionary_get_value(v7, "Result");
    v26 = v20;
    if (v20)
    {
      if (MEMORY[0x25F8746E0](v20) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v26);
        if (!value)
        {

          uuid = xpc_dictionary_get_uuid(v7, "BluetoothUUID");
          if (uuid)
          {
            v45 = uuid;
            if (!uuid_is_null(uuid))
            {
              v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v45];
              goto LABEL_38;
            }

            v99 = nrCopyLogObj_2646();
            v100 = v99;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v108 = os_log_type_enabled(v99, OS_LOG_TYPE_ERROR);

              if (!v108)
              {
                goto LABEL_37;
              }
            }

            v102 = nrCopyLogObj_2646();
            _NRLogWithArgs(v102, 16, "%s%.30s:%-4d UUID is null for key %s", v109, v110, v111, v112, v113, "");
          }

          else
          {
            v97 = nrCopyLogObj_2646();
            v98 = v97;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v101 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);

              if (!v101)
              {
                goto LABEL_37;
              }
            }

            v102 = nrCopyLogObj_2646();
            _NRLogWithArgs(v102, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v103, v104, v105, v106, v107, "");
          }

          goto LABEL_37;
        }

        v37 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, uu, 0x80uLL))
          {
            uu[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v38 = nrCopyLogObj_2646();
            _NRLogWithArgs(v38, 17, "received failure result code: [%d] %s", v39, v40, v41, v42, v43, v37);
          }

          goto LABEL_36;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v46 = nrCopyLogObj_sNRLogObj_2653;
        if (!v37)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v55 = v46;
            v56 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

            if (!v56)
            {
              goto LABEL_36;
            }
          }

          v57 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v37);
          _NRLogWithArgs(v57, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v58, v59, v60, v61, v62, "");

          goto LABEL_36;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v47 = v46;
          v48 = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);

          if (!v48)
          {
            goto LABEL_36;
          }
        }

        v49 = nrCopyLogObj_2646();
        v115 = createStringFromNRXPCRes(v37);
        _NRLogWithArgs(v49, 17, "received internal failure result code: [%lld] %@", v50, v51, v52, v53, v54, v37);

        goto LABEL_36;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_36;
      }

      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_36;
      }

      v27 = "received response without result code";
    }

    v33 = nrCopyLogObj_sNRLogObj_2653;
LABEL_35:
    _NRLogWithArgs(v33, 17, v27, v21, v22, v23, v24, v25, v116);
LABEL_36:

    goto LABEL_37;
  }

  if (v8 != MEMORY[0x277D86480])
  {
    v19 = MEMORY[0x25F874580](v7);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_12;
  }

  if (v7 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v9, v10, v11, v12, v13, v116);
    }

    goto LABEL_37;
  }

  if (v7 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v9, v10, v11, v12, v13, "");
    }

    goto LABEL_37;
  }

  if (v7 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    v33 = nrCopyLogObj_2646();
    v26 = v33;
    v27 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_35;
  }

  v19 = MEMORY[0x25F874580](v7);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v19);
  }

LABEL_12:
  if (v19)
  {
    free(v19);
LABEL_37:
    v19 = 0;
  }

LABEL_38:

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

void *nrXPCCopyNRUUIDForIDSDeviceID(void *a1, BOOL a2)
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v63 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v65 = v63;
      v66 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);

      if (!v66)
      {
        goto LABEL_81;
      }
    }

    v67 = nrCopyLogObj_2646();
    _NRLogWithArgs(v67, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v68, v69, v70, v71, v72, "");

LABEL_81:
    v73 = _os_log_pack_size();
    MEMORY[0x28223BE20](v73, v74);
    v75 = *__error();
    v76 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v76, "nr_xpc_dictionary_create");
    v77 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v77);
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, "Type", 0x2EuLL);
  xpc_dictionary_set_string(v5, "IDSDeviceID", [v3 UTF8String]);
  xpc_dictionary_set_BOOL(v5, "ShouldCreateDevice", a2);
  v6 = nrXPCSendSyncInner("nrXPCCopyNRUUIDForIDSDeviceID", v5);
  v7 = v6;
  if (!v6)
  {
    v64 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v78 = v64;
      v79 = os_log_type_enabled(v64, OS_LOG_TYPE_FAULT);

      if (!v79)
      {
        goto LABEL_35;
      }
    }

    v33 = nrCopyLogObj_2646();
    v26 = v33;
    v27 = "received nil response";
    goto LABEL_33;
  }

  v8 = MEMORY[0x25F8746E0](v6);
  if (v8 == MEMORY[0x277D86468])
  {
    v20 = xpc_dictionary_get_value(v7, "Result");
    v26 = v20;
    if (v20)
    {
      if (MEMORY[0x25F8746E0](v20) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v26);
        if (!value)
        {

          uuid = xpc_dictionary_get_uuid(v7, "NRUUID");
          if (uuid)
          {
            v45 = uuid;
            if (!uuid_is_null(uuid))
            {
              v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v45];
              goto LABEL_36;
            }

            v82 = nrCopyLogObj_2646();
            v83 = v82;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v91 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);

              if (!v91)
              {
                goto LABEL_35;
              }
            }

            v85 = nrCopyLogObj_2646();
            _NRLogWithArgs(v85, 16, "%s%.30s:%-4d UUID is null for key %s", v92, v93, v94, v95, v96, "");
          }

          else
          {
            v80 = nrCopyLogObj_2646();
            v81 = v80;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v84 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);

              if (!v84)
              {
                goto LABEL_35;
              }
            }

            v85 = nrCopyLogObj_2646();
            _NRLogWithArgs(v85, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v86, v87, v88, v89, v90, "");
          }

          goto LABEL_35;
        }

        v37 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v38 = nrCopyLogObj_2646();
            _NRLogWithArgs(v38, 17, "received failure result code: [%d] %s", v39, v40, v41, v42, v43, v37);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v46 = nrCopyLogObj_sNRLogObj_2653;
        if (!v37)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v55 = v46;
            v56 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

            if (!v56)
            {
              goto LABEL_34;
            }
          }

          v57 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v37);
          _NRLogWithArgs(v57, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v58, v59, v60, v61, v62, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v47 = v46;
          v48 = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);

          if (!v48)
          {
            goto LABEL_34;
          }
        }

        v49 = nrCopyLogObj_2646();
        v98 = createStringFromNRXPCRes(v37);
        _NRLogWithArgs(v49, 17, "received internal failure result code: [%lld] %@", v50, v51, v52, v53, v54, v37);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v27 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v27 = "received response without result code";
    }

    v33 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v33, 17, v27, v21, v22, v23, v24, v25, v99);
LABEL_34:

    goto LABEL_35;
  }

  if (v8 != MEMORY[0x277D86480])
  {
    v19 = MEMORY[0x25F874580](v7);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_10;
  }

  if (v7 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v9, v10, v11, v12, v13, v99);
    }

    goto LABEL_35;
  }

  if (v7 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v9, v10, v11, v12, v13, "");
    }

    goto LABEL_35;
  }

  if (v7 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v33 = nrCopyLogObj_2646();
    v26 = v33;
    v27 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v19 = MEMORY[0x25F874580](v7);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v28, v29, v30, v31, v32, v19);
  }

LABEL_10:
  if (v19)
  {
    free(v19);
LABEL_35:
    v19 = 0;
  }

LABEL_36:

  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

void *nrXPCCopyBestTestingNRUUID()
{
  v97 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v59 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v61 = v59;
      v62 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);

      if (!v62)
      {
        goto LABEL_81;
      }
    }

    v63 = nrCopyLogObj_2646();
    _NRLogWithArgs(v63, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v64, v65, v66, v67, v68, "");

LABEL_81:
    v69 = _os_log_pack_size();
    MEMORY[0x28223BE20](v69, v70);
    v71 = *__error();
    v72 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v72, "nr_xpc_dictionary_create");
    v73 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v73);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x14uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyBestTestingNRUUID", v1);
  v3 = v2;
  if (!v2)
  {
    v60 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v74 = v60;
      v75 = os_log_type_enabled(v60, OS_LOG_TYPE_FAULT);

      if (!v75)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          uuid = xpc_dictionary_get_uuid(v3, "NRUUID");
          if (uuid)
          {
            v41 = uuid;
            if (!uuid_is_null(uuid))
            {
              v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v41];
              goto LABEL_36;
            }

            v78 = nrCopyLogObj_2646();
            v79 = v78;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v87 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);

              if (!v87)
              {
                goto LABEL_35;
              }
            }

            v81 = nrCopyLogObj_2646();
            _NRLogWithArgs(v81, 16, "%s%.30s:%-4d UUID is null for key %s", v88, v89, v90, v91, v92, "");
          }

          else
          {
            v76 = nrCopyLogObj_2646();
            v77 = v76;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v80 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);

              if (!v80)
              {
                goto LABEL_35;
              }
            }

            v81 = nrCopyLogObj_2646();
            _NRLogWithArgs(v81, 16, "%s%.30s:%-4d Failed to get UUID for key %s", v82, v83, v84, v85, v86, "");
          }

          goto LABEL_35;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v42 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v51 = v42;
            v52 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

            if (!v52)
            {
              goto LABEL_34;
            }
          }

          v53 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v53, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v43 = v42;
          v44 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);

          if (!v44)
          {
            goto LABEL_34;
          }
        }

        v45 = nrCopyLogObj_2646();
        v94 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v45, 17, "received internal failure result code: [%lld] %@", v46, v47, v48, v49, v50, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v95);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v15 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v95);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
  }

LABEL_10:
  if (v15)
  {
    free(v15);
LABEL_35:
    v15 = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

void nrXPCRegisterDeviceByNRUUID(void *a1, int64_t a2, unsigned int a3, BOOL a4, void *a5, _BOOL4 a6, BOOL a7, BOOL a8, unsigned __int16 a9, void *a10, void *a11, void *a12, void *a13, BOOL value, void *a15, void *a16)
{
  v155 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v20 = a5;
  v137 = a10;
  v140 = a11;
  v139 = a12;
  v141 = a13;
  v21 = a15;
  v22 = a16;
  v23 = v22;
  if (!v19)
  {
    v46 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

      v24 = v137;
    }

    else
    {
      v52 = v46;
      v53 = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);

      v24 = v137;
      if (!v53)
      {
        goto LABEL_25;
      }
    }

    v54 = nrCopyLogObj_2646();
    _NRLogWithArgs(v54, 17, "%s called with null nrUUID", v55, v56, v57, v58, v59, "nrXPCRegisterDeviceByNRUUID");
LABEL_43:

    goto LABEL_25;
  }

  if (!v22)
  {
    v47 = nrCopyLogObj_2646();
    v24 = v137;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v60 = v47;
      v61 = os_log_type_enabled(v47, OS_LOG_TYPE_FAULT);

      if (!v61)
      {
        goto LABEL_25;
      }
    }

    v54 = nrCopyLogObj_2646();
    _NRLogWithArgs(v54, 17, "%s called with null completionBlock", v62, v63, v64, v65, v66, "nrXPCRegisterDeviceByNRUUID");
    goto LABEL_43;
  }

  v24 = v137;
  v25 = a8;
  if (!v20 && !a4 && !a8)
  {
    v67 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v124 = v67;
      v125 = os_log_type_enabled(v67, OS_LOG_TYPE_FAULT);

      if (!v125)
      {
LABEL_69:
        v146[0] = MEMORY[0x277D85DD0];
        v146[1] = 3221225472;
        v146[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke;
        v146[3] = &unk_27996B870;
        v147 = v23;
        dispatch_async(v140, v146);

        goto LABEL_25;
      }
    }

    v126 = nrCopyLogObj_2646();
    _NRLogWithArgs(v126, 17, "outOfBandKey was nil and !wasInitiallySetupUsingIDSPairing and !isExternalPairing", v127, v128, v129, v130, v131, v132);

    goto LABEL_69;
  }

  if (!v137 && a6)
  {
    v48 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v68 = v48;
      v69 = os_log_type_enabled(v48, OS_LOG_TYPE_FAULT);

      if (!v69)
      {
LABEL_48:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_2;
        block[3] = &unk_27996B870;
        v145 = v23;
        dispatch_async(v140, block);

        goto LABEL_25;
      }
    }

    v70 = nrCopyLogObj_2646();
    _NRLogWithArgs(v70, 17, "bluetoothMACAddress was nil and pairWithSPPLink", v71, v72, v73, v74, v75, v132);

    goto LABEL_48;
  }

  v26 = xpc_dictionary_create(0, 0, 0);
  if (!v26)
  {
    v49 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v76 = v49;
      v77 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);

      if (!v77)
      {
        goto LABEL_51;
      }
    }

    v78 = nrCopyLogObj_2646();
    _NRLogWithArgs(v78, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v79, v80, v81, v82, v83, "");

LABEL_51:
    v84 = _os_log_pack_size();
    MEMORY[0x28223BE20](v84, v85);
    v86 = *__error();
    v87 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v87, "nr_xpc_dictionary_create");
    v88 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v88);
  }

  v27 = v26;
  v133 = v23;
  v28 = v21;
  xpc_dictionary_set_uint64(v26, "Type", 0xEuLL);
  xpc_dictionary_set_int64(v27, "PairingProtocolVersion", a2);
  xpc_dictionary_set_uint64(v27, "PeerNetworkRelayVersion", a3);
  xpc_dictionary_set_BOOL(v27, "WasInitiallySetupUsingIDSPairing", a4);
  if (v20)
  {
    v29 = v20;
    xpc_dictionary_set_data(v27, "OutOfBandKey", [v29 bytes], objc_msgSend(v29, "length"));
  }

  xpc_dictionary_set_BOOL(v27, "PairWithSPPLink", a6);
  xpc_dictionary_set_BOOL(v27, "IsAltAccountPairing", a7);
  xpc_dictionary_set_BOOL(v27, "IsExternalPairing", v25);
  xpc_dictionary_set_uint64(v27, "PSM", a9);
  if (v137)
  {
    v30 = v137;
    xpc_dictionary_set_data(v27, "RemoteDeviceMACAddress", [v30 bytes], objc_msgSend(v30, "length"));
  }

  *uuid = 0;
  v151 = 0;
  v31 = v27;
  [v19 getUUIDBytes:uuid];
  xpc_dictionary_set_uuid(v31, "NRUUID", uuid);

  v32 = v31;
  v33 = v139;
  *uuid = 0;
  v34 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:uuid];
  v35 = *uuid;
  if (!v35 && [v34 length])
  {
    xpc_dictionary_set_data(v32, "OperationalPropData", [v34 bytes], objc_msgSend(v34, "length"));

    if (!v141)
    {
LABEL_19:
      if (v21)
      {
        xpc_dictionary_set_string(v32, "CandidateService", [v21 UTF8String]);
      }

      xpc_dictionary_set_BOOL(v32, "IsEphemeral", value);
      v40 = v32;
      v41 = v140;
      v23 = v133;
      v42 = v133;
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v148[3] = &unk_27996B8E8;
      v149 = v42;
      v43 = v148;
      v44 = nrXPCCopyConnection();
      if (v44)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v44, v40, v41, v43, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v151 = 3221225472;
        v152 = __nrXPCSendAsyncInner_block_invoke;
        v153 = &unk_27996B870;
        v154 = v43;
        dispatch_async(v41, uuid);
      }

      goto LABEL_24;
    }

    v36 = v32;
    v37 = v141;
    *uuid = 0;
    v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v37 requiringSecureCoding:1 error:uuid];
    v39 = *uuid;
    if (!v39 && [v38 length])
    {
      xpc_dictionary_set_data(v36, "PeerIPAddressData", [v38 bytes], objc_msgSend(v38, "length"));

      goto LABEL_19;
    }

    v51 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v107 = v51;
      v108 = os_log_type_enabled(v51, OS_LOG_TYPE_FAULT);

      if (!v108)
      {
        goto LABEL_61;
      }
    }

    v109 = nrCopyLogObj_2646();
    _NRLogWithArgs(v109, 17, "Failed to archive %@: %@", v110, v111, v112, v113, v114, v37);

LABEL_61:
    v115 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {

      v24 = v137;
      v21 = v28;
    }

    else
    {
      v116 = v115;
      v117 = os_log_type_enabled(v115, OS_LOG_TYPE_FAULT);

      v24 = v137;
      v21 = v28;
      if (!v117)
      {
LABEL_65:
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 3221225472;
        v142[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_5;
        v142[3] = &unk_27996B870;
        v23 = v133;
        v142[4] = v133;
        dispatch_async(v140, v142);
        v106 = &v156;
        goto LABEL_66;
      }
    }

    v118 = nrCopyLogObj_2646();
    _NRLogWithArgs(v118, 17, "Failed to serialize peer endpoint dictionary", v119, v120, v121, v122, v123, v133);

    goto LABEL_65;
  }

  v50 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v89 = v50;
    v90 = os_log_type_enabled(v50, OS_LOG_TYPE_FAULT);

    if (!v90)
    {
      goto LABEL_54;
    }
  }

  v91 = nrCopyLogObj_2646();
  _NRLogWithArgs(v91, 17, "Failed to archive %@: %@", v92, v93, v94, v95, v96, v33);

LABEL_54:
  v97 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {

    v21 = v28;
LABEL_57:
    v100 = nrCopyLogObj_2646();
    _NRLogWithArgs(v100, 17, "Failed to serialize operational properties", v101, v102, v103, v104, v105, v133);

    goto LABEL_58;
  }

  v98 = v97;
  v99 = os_log_type_enabled(v97, OS_LOG_TYPE_FAULT);

  v21 = v28;
  if (v99)
  {
    goto LABEL_57;
  }

LABEL_58:
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __nrXPCRegisterDeviceByNRUUID_block_invoke_4;
  v143[3] = &unk_27996B870;
  v23 = v133;
  v143[4] = v133;
  dispatch_async(v140, v143);
  v106 = &v157;
LABEL_66:

LABEL_24:
LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
}

void nrXPCUnregisterDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v19 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v19;
        v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "nrXPCUnregisterDeviceByNRUUID");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0xFuLL);
      *uuid = 0;
      v51 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v48[3] = &unk_27996B8E8;
      v49 = v14;
      v15 = v48;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __nrXPCSendAsyncInner_block_invoke;
        v53 = &unk_27996B870;
        v54 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v20 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v20;
      v36 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_23;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_23:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  v18 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v21 = v18;
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID", v23, v24, v25, v26, v27, "nrXPCUnregisterDeviceByNRUUID");
LABEL_7:

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
}

void nrXPCUnpairDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v19 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v19;
        v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "nrXPCUnpairDeviceByNRUUID");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x36uLL);
      *uuid = 0;
      v51 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v48[3] = &unk_27996B8E8;
      v49 = v14;
      v15 = v48;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __nrXPCSendAsyncInner_block_invoke;
        v53 = &unk_27996B870;
        v54 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v20 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v20;
      v36 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_23;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_23:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  v18 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v21 = v18;
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID", v23, v24, v25, v26, v27, "nrXPCUnpairDeviceByNRUUID");
LABEL_7:

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
}

void nrXPCUnregisterAllDevices(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0x13uLL);
      v7 = v6;
      v8 = v3;
      v9 = v4;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v35[3] = &unk_27996B8E8;
      v36 = v9;
      v10 = v35;
      v11 = nrXPCCopyConnection();
      if (v11)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v11, v7, v8, v10, 1u);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCSendAsyncInner_block_invoke;
        block[3] = &unk_27996B870;
        v38 = v10;
        dispatch_async(v8, block);
      }

      goto LABEL_6;
    }

    v14 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v14;
      v23 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v23)
      {
        goto LABEL_17;
      }
    }

    v24 = nrCopyLogObj_2646();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v25, v26, v27, v28, v29, "");

LABEL_17:
    v30 = _os_log_pack_size();
    MEMORY[0x28223BE20](v30, v31);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34);
  }

  v13 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v15 = v13;
    v16 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v7 = nrCopyLogObj_2646();
  _NRLogWithArgs(v7, 17, "%s called with null completionBlock", v17, v18, v19, v20, v21, "nrXPCUnregisterAllDevices");
LABEL_6:

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
}

void nrXPCScrubDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v19 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v19;
        v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "nrXPCScrubDeviceByNRUUID");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x38uLL);
      *uuid = 0;
      v51 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v48[3] = &unk_27996B8E8;
      v49 = v14;
      v15 = v48;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __nrXPCSendAsyncInner_block_invoke;
        v53 = &unk_27996B870;
        v54 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v20 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v20;
      v36 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_23;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_23:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  v18 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v21 = v18;
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID", v23, v24, v25, v26, v27, "nrXPCScrubDeviceByNRUUID");
LABEL_7:

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
}

void nrXPCScrubAllDevices(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_uint64(v5, "Type", 0x39uLL);
      v7 = v6;
      v8 = v3;
      v9 = v4;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v35[3] = &unk_27996B8E8;
      v36 = v9;
      v10 = v35;
      v11 = nrXPCCopyConnection();
      if (v11)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v11, v7, v8, v10, 1u);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __nrXPCSendAsyncInner_block_invoke;
        block[3] = &unk_27996B870;
        v38 = v10;
        dispatch_async(v8, block);
      }

      goto LABEL_6;
    }

    v14 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v14;
      v23 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v23)
      {
        goto LABEL_17;
      }
    }

    v24 = nrCopyLogObj_2646();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v25, v26, v27, v28, v29, "");

LABEL_17:
    v30 = _os_log_pack_size();
    MEMORY[0x28223BE20](v30, v31);
    v32 = *__error();
    v33 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v33, "nr_xpc_dictionary_create");
    v34 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v34);
  }

  v13 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v15 = v13;
    v16 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);

    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v7 = nrCopyLogObj_2646();
  _NRLogWithArgs(v7, 17, "%s called with null completionBlock", v17, v18, v19, v20, v21, "nrXPCScrubAllDevices");
LABEL_6:

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
}

void nrXPCEnableDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v19 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v19;
        v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "nrXPCEnableDeviceByNRUUID");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x10uLL);
      *uuid = 0;
      v51 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v48[3] = &unk_27996B8E8;
      v49 = v14;
      v15 = v48;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __nrXPCSendAsyncInner_block_invoke;
        v53 = &unk_27996B870;
        v54 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v20 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v20;
      v36 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_23;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_23:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  v18 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v21 = v18;
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID", v23, v24, v25, v26, v27, "nrXPCEnableDeviceByNRUUID");
LABEL_7:

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
}

void nrXPCDisableDeviceByNRUUID(void *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v19 = nrCopyLogObj_2646();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v19;
        v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_8;
        }
      }

      v12 = nrCopyLogObj_2646();
      _NRLogWithArgs(v12, 17, "%s called with null completionBlock", v30, v31, v32, v33, v34, "nrXPCDisableDeviceByNRUUID");
      goto LABEL_7;
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_uint64(v9, "Type", 0x11uLL);
      *uuid = 0;
      v51 = 0;
      v11 = v10;
      [v5 getUUIDBytes:uuid];
      xpc_dictionary_set_uuid(v11, "NRUUID", uuid);

      v12 = v11;
      v13 = v6;
      v14 = v8;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __nrXPCSendAsyncOnlyResultCode_block_invoke;
      v48[3] = &unk_27996B8E8;
      v49 = v14;
      v15 = v48;
      v16 = nrXPCCopyConnection();
      if (v16)
      {
        nrXPCSendAsyncInnerRec("nrXPCSendAsyncOnlyResultCode", v16, v12, v13, v15, 1u);
      }

      else
      {
        *uuid = MEMORY[0x277D85DD0];
        v51 = 3221225472;
        v52 = __nrXPCSendAsyncInner_block_invoke;
        v53 = &unk_27996B870;
        v54 = v15;
        dispatch_async(v13, uuid);
      }

      goto LABEL_7;
    }

    v20 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v20;
      v36 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
        goto LABEL_23;
      }
    }

    v37 = nrCopyLogObj_2646();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v38, v39, v40, v41, v42, "");

LABEL_23:
    v43 = _os_log_pack_size();
    MEMORY[0x28223BE20](v43, v44);
    v45 = *__error();
    v46 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v46, "nr_xpc_dictionary_create");
    v47 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v47);
  }

  v18 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v21 = v18;
    v22 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

    if (!v22)
    {
      goto LABEL_8;
    }
  }

  v12 = nrCopyLogObj_2646();
  _NRLogWithArgs(v12, 17, "%s called with null nrUUID", v23, v24, v25, v26, v27, "nrXPCDisableDeviceByNRUUID");
LABEL_7:

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
}

__CFString *nrXPCCopyDeviceListString()
{
  v83 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v59 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v61 = v59;
      v62 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);

      if (!v62)
      {
        goto LABEL_80;
      }
    }

    v63 = nrCopyLogObj_2646();
    _NRLogWithArgs(v63, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v64, v65, v66, v67, v68, "");

LABEL_80:
    v69 = _os_log_pack_size();
    MEMORY[0x28223BE20](v69, v70);
    v71 = *__error();
    v72 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v72, "nr_xpc_dictionary_create");
    v73 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v73);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x12uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyDeviceListString", v1);
  v3 = v2;
  if (!v2)
  {
    v60 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v74 = v60;
      v75 = os_log_type_enabled(v60, OS_LOG_TYPE_FAULT);

      if (!v75)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 != MEMORY[0x277D86468])
  {
    if (v4 != MEMORY[0x277D86480])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
      }

LABEL_10:
      if (v15)
      {
        free(v15);
      }

      goto LABEL_35;
    }

    if (v3 == MEMORY[0x277D863F0])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v81);
      }

      goto LABEL_35;
    }

    if (v3 == MEMORY[0x277D863F8])
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
      }

      goto LABEL_35;
    }

    if (v3 != MEMORY[0x277D86420])
    {
      v15 = MEMORY[0x25F874580](v3);
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
      }

      goto LABEL_10;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v16 = xpc_dictionary_get_value(v3, "Result");
  v22 = v16;
  if (!v16)
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    v23 = "received response without result code";
LABEL_32:
    v29 = nrCopyLogObj_sNRLogObj_2653;
    goto LABEL_33;
  }

  if (MEMORY[0x25F8746E0](v16) != MEMORY[0x277D86498])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    v23 = "received invalid result type";
    goto LABEL_32;
  }

  value = xpc_int64_get_value(v22);
  if (value)
  {
    v34 = value;
    if (!(value >> 31))
    {
      if (strerror_r(value, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        v35 = nrCopyLogObj_2646();
        _NRLogWithArgs(v35, 17, "received failure result code: [%d] %s", v36, v37, v38, v39, v40, v34);
      }

      goto LABEL_34;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    v42 = nrCopyLogObj_sNRLogObj_2653;
    if (!v34)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v51 = v42;
        v52 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

        if (!v52)
        {
          goto LABEL_34;
        }
      }

      v53 = nrCopyLogObj_2646();
      StringFromNRXPCRes = createStringFromNRXPCRes(v34);
      _NRLogWithArgs(v53, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v54, v55, v56, v57, v58, "");

      goto LABEL_34;
    }

    if (sNRCopyLogToStdErr)
    {
    }

    else
    {
      v43 = v42;
      v44 = os_log_type_enabled(v42, OS_LOG_TYPE_FAULT);

      if (!v44)
      {
        goto LABEL_34;
      }
    }

    v45 = nrCopyLogObj_2646();
    v80 = createStringFromNRXPCRes(v34);
    _NRLogWithArgs(v45, 17, "received internal failure result code: [%lld] %@", v46, v47, v48, v49, v50, v34);

    goto LABEL_34;
  }

  string = xpc_dictionary_get_string(v3, "DeviceListString");
  if (string)
  {
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
    goto LABEL_36;
  }

  v76 = nrCopyLogObj_2646();
  v77 = v76;
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v78 = os_log_type_enabled(v76, OS_LOG_TYPE_FAULT);

    if (!v78)
    {
      goto LABEL_35;
    }
  }

  v29 = nrCopyLogObj_2646();
  v22 = v29;
  v23 = "Missing device list string in XPC response";
LABEL_33:
  _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v81);
LABEL_34:

LABEL_35:
  v30 = @"ERROR";
LABEL_36:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

void *nrXPCCopyIdentityReferences()
{
  v81 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  if (!v0)
  {
    v60 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v62 = v60;
      v63 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

      if (!v63)
      {
        goto LABEL_85;
      }
    }

    v64 = nrCopyLogObj_2646();
    _NRLogWithArgs(v64, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v65, v66, v67, v68, v69, "");

LABEL_85:
    v70 = _os_log_pack_size();
    MEMORY[0x28223BE20](v70, v71);
    v72 = *__error();
    v73 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v73, "nr_xpc_dictionary_create");
    v74 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v74);
  }

  v1 = v0;
  xpc_dictionary_set_uint64(v0, "Type", 0x34uLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyIdentityReferences", v1);
  v3 = v2;
  if (!v2)
  {
    v61 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v75 = v61;
      v76 = os_log_type_enabled(v61, OS_LOG_TYPE_FAULT);

      if (!v76)
      {
        goto LABEL_35;
      }
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received nil response";
    goto LABEL_33;
  }

  v4 = MEMORY[0x25F8746E0](v2);
  if (v4 == MEMORY[0x277D86468])
  {
    v16 = xpc_dictionary_get_value(v3, "Result");
    v22 = v16;
    if (v16)
    {
      if (MEMORY[0x25F8746E0](v16) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v22);
        if (!value)
        {

          v40 = xpc_dictionary_get_value(v3, "IdentityProxyReferences");
          if (v40 && (v41 = _CFXPCCreateCFObjectFromXPCObject()) != 0)
          {
            v15 = v41;
            v42 = CFGetTypeID(v41);
            if (v42 != CFDictionaryGetTypeID())
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_36;
        }

        v33 = value;
        if (!(value >> 31))
        {
          if (strerror_r(value, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (nrCopyLogObj_onceToken_2652 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
          {
            v34 = nrCopyLogObj_2646();
            _NRLogWithArgs(v34, 17, "received failure result code: [%d] %s", v35, v36, v37, v38, v39, v33);
          }

          goto LABEL_34;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v43 = nrCopyLogObj_sNRLogObj_2653;
        if (!v33)
        {
          if (sNRCopyLogToStdErr)
          {
          }

          else
          {
            v52 = v43;
            v53 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

            if (!v53)
            {
              goto LABEL_34;
            }
          }

          v54 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v33);
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v55, v56, v57, v58, v59, "");

          goto LABEL_34;
        }

        if (sNRCopyLogToStdErr)
        {
        }

        else
        {
          v44 = v43;
          v45 = os_log_type_enabled(v43, OS_LOG_TYPE_FAULT);

          if (!v45)
          {
            goto LABEL_34;
          }
        }

        v46 = nrCopyLogObj_2646();
        v78 = createStringFromNRXPCRes(v33);
        _NRLogWithArgs(v46, 17, "received internal failure result code: [%lld] %@", v47, v48, v49, v50, v51, v33);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received invalid result type";
    }

    else
    {
      if (nrCopyLogObj_onceToken_2652 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
      }

      if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_34;
      }

      v23 = "received response without result code";
    }

    v29 = nrCopyLogObj_sNRLogObj_2653;
LABEL_33:
    _NRLogWithArgs(v29, 17, v23, v17, v18, v19, v20, v21, v79);
LABEL_34:

    goto LABEL_35;
  }

  if (v4 != MEMORY[0x277D86480])
  {
    v15 = MEMORY[0x25F874580](v3);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v5, v6, v7, v8, v9, v79);
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v5, v6, v7, v8, v9, "");
    }

    goto LABEL_35;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    v29 = nrCopyLogObj_2646();
    v22 = v29;
    v23 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_33;
  }

  v15 = MEMORY[0x25F874580](v3);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v24, v25, v26, v27, v28, v15);
  }

LABEL_10:
  if (v15)
  {
    free(v15);
LABEL_35:
    v15 = 0;
  }

LABEL_36:

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}