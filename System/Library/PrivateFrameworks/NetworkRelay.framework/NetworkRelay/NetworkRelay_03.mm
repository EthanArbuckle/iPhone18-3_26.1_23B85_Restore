__CFString *nrXPCCopyIDSDeviceID()
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
  xpc_dictionary_set_uint64(v0, "Type", 0x2FuLL);
  v2 = nrXPCSendSyncInner("nrXPCCopyIDSDeviceID", v1);
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

  string = xpc_dictionary_get_string(v3, "IDSDeviceID");
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

void *nrXPCMeasureBTLatency(void *a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!v2)
  {
    v60 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v63 = v60;
      v64 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);

      if (!v64)
      {
        goto LABEL_83;
      }
    }

    v65 = nrCopyLogObj_2646();
    _NRLogWithArgs(v65, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", v66, v67, v68, v69, v70, "");

LABEL_83:
    v71 = _os_log_pack_size();
    MEMORY[0x28223BE20](v71, v72);
    v73 = *__error();
    v74 = _os_log_pack_fill();
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v74, "nr_xpc_dictionary_create");
    v75 = nrCopyLogObj_2646();
    _NRLogAbortWithPack(v75);
  }

  v3 = v2;
  xpc_dictionary_set_uint64(v2, "Type", 0x1CuLL);
  v4 = v3;
  if (v1)
  {
    *uuid = 0;
    v90 = 0;
    [v1 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v4, "NRUUID", uuid);
    goto LABEL_4;
  }

  v61 = nrCopyLogObj_2646();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v76 = v61;
    v77 = os_log_type_enabled(v61, OS_LOG_TYPE_FAULT);

    if (!v77)
    {
      goto LABEL_4;
    }
  }

  v78 = nrCopyLogObj_2646();
  _NRLogWithArgs(v78, 17, "%s called with null uuid", v79, v80, v81, v82, v83, "nr_xpc_dictionary_set_nsuuid");

LABEL_4:
  v5 = nrXPCSendSyncInner("nrXPCMeasureBTLatency", v4);
  v6 = v5;
  if (!v5)
  {
    v62 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v84 = v62;
      v85 = os_log_type_enabled(v62, OS_LOG_TYPE_FAULT);

      if (!v85)
      {
        goto LABEL_37;
      }
    }

    v32 = nrCopyLogObj_2646();
    v25 = v32;
    v26 = "received nil response";
    goto LABEL_35;
  }

  v7 = MEMORY[0x25F8746E0](v5);
  if (v7 == MEMORY[0x277D86468])
  {
    v19 = xpc_dictionary_get_value(v6, "Result");
    v25 = v19;
    if (v19)
    {
      if (MEMORY[0x25F8746E0](v19) == MEMORY[0x277D86498])
      {
        value = xpc_int64_get_value(v25);
        if (!value)
        {

          uint64 = xpc_dictionary_get_uint64(v6, "BTLatency");
          goto LABEL_38;
        }

        v36 = value;
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
            v37 = nrCopyLogObj_2646();
            _NRLogWithArgs(v37, 17, "received failure result code: [%d] %s", v38, v39, v40, v41, v42, v36);
          }

          goto LABEL_36;
        }

        if (nrCopyLogObj_onceToken_2652 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
        }

        v43 = nrCopyLogObj_sNRLogObj_2653;
        if (!v36)
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
              goto LABEL_36;
            }
          }

          v54 = nrCopyLogObj_2646();
          StringFromNRXPCRes = createStringFromNRXPCRes(v36);
          _NRLogWithArgs(v54, 16, "%s%.30s:%-4d received internal failure result code: [%lld] %@", v55, v56, v57, v58, v59, "");

          goto LABEL_36;
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
            goto LABEL_36;
          }
        }

        v46 = nrCopyLogObj_2646();
        v87 = createStringFromNRXPCRes(v36);
        _NRLogWithArgs(v46, 17, "received internal failure result code: [%lld] %@", v47, v48, v49, v50, v51, v36);

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

      v26 = "received invalid result type";
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

      v26 = "received response without result code";
    }

    v32 = nrCopyLogObj_sNRLogObj_2653;
LABEL_35:
    _NRLogWithArgs(v32, 17, v26, v20, v21, v22, v23, v24, v88);
LABEL_36:

    goto LABEL_37;
  }

  if (v7 != MEMORY[0x277D86480])
  {
    uint64 = MEMORY[0x25F874580](v6);
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received unknown type XPC %s", v13, v14, v15, v16, v17, uint64);
    }

    goto LABEL_12;
  }

  if (v6 == MEMORY[0x277D863F0])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received XPC_ERROR_CONNECTION_INTERRUPTED", v8, v9, v10, v11, v12, v88);
    }

    goto LABEL_37;
  }

  if (v6 == MEMORY[0x277D863F8])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d received XPC_ERROR_CONNECTION_INVALID", v8, v9, v10, v11, v12, "");
    }

    goto LABEL_37;
  }

  if (v6 == MEMORY[0x277D86420])
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    v32 = nrCopyLogObj_2646();
    v25 = v32;
    v26 = "received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_35;
  }

  uint64 = MEMORY[0x25F874580](v6);
  if (nrCopyLogObj_onceToken_2652 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_FAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 17, "received returned unknown XPC error %s", v27, v28, v29, v30, v31, uint64);
  }

LABEL_12:
  if (uint64)
  {
    free(uint64);
LABEL_37:
    uint64 = 0;
  }

LABEL_38:

  v33 = *MEMORY[0x277D85DE8];
  return uint64;
}

id nrCopyAccountIdentifierForNRUUID(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v3 = [v1 UUIDString];
    [v2 appendFormat:@"NRD/%s", objc_msgSend(v3, "UTF8String")];
  }

  else
  {
    v5 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);

      if (!v7)
      {
        v2 = 0;
        goto LABEL_4;
      }
    }

    v3 = nrCopyLogObj_2646();
    _NRLogWithArgs(v3, 17, "%s called with null nrUUID", v8, v9, v10, v11, v12, "nrCopyAccountIdentifierForNRUUID");
    v2 = 0;
  }

LABEL_4:
  return v2;
}

uint64_t nrSupportsPHSProxy()
{
  if (nrSupportsPHSProxy_onceToken != -1)
  {
    dispatch_once(&nrSupportsPHSProxy_onceToken, &__block_literal_global_519);
  }

  return nrSupportsPHSProxy_supported;
}

uint64_t __nrSupportsPHSProxy_block_invoke()
{
  result = _os_feature_enabled_impl();
  nrSupportsPHSProxy_supported = result;
  return result;
}

uint64_t nrSupportsPHSProxyClient()
{
  if (nrSupportsPHSProxyClient_onceToken != -1)
  {
    dispatch_once(&nrSupportsPHSProxyClient_onceToken, &__block_literal_global_523);
  }

  return nrSupportsPHSProxyClient_supported;
}

uint64_t __nrSupportsPHSProxyClient_block_invoke()
{
  result = _os_feature_enabled_impl();
  nrSupportsPHSProxyClient_supported = result;
  return result;
}

sec_identity_t NRCreateLocalIdentity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v18 = nrCopyLogObj_2646();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v18;
      v21 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v21)
      {
        return 0;
      }
    }

    v22 = nrCopyLogObj_2646();
    _NRLogWithArgs(v22, 17, "%s called with null privateKey", v23, v24, v25, v26, v27, "NRCreateLocalIdentity");
LABEL_26:

    return 0;
  }

  if (!a2)
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
        return 0;
      }
    }

    v22 = nrCopyLogObj_2646();
    _NRLogWithArgs(v22, 17, "%s called with null publicKey", v30, v31, v32, v33, v34, "NRCreateLocalIdentity");
    goto LABEL_26;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {
    v8 = SelfSignedCertificate;
    v9 = SecIdentityCreate();
    if (v9)
    {
      v15 = v9;
      v16 = sec_identity_create(v9);
      CFRelease(v15);
      CFRelease(v8);
      return v16;
    }

    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d SecIdentityCreate() failed", v10, v11, v12, v13, v14, "");
    }

    CFRelease(v8);
  }

  else
  {
    if (nrCopyLogObj_onceToken_2652 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_2652, &__block_literal_global_532);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2653, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2653, 16, "%s%.30s:%-4d SecGenerateSelfSignedCertificate() failed", v3, v4, v5, v6, v7, "");
    }
  }

  return 0;
}

unint64_t NRConvertMachTimeToMicroseconds(unint64_t result, double a2, double a3, double a4)
{
  if (result)
  {
    if (nr_get_mach_timebase_once != -1)
    {
      v4 = result;
      dispatch_once(&nr_get_mach_timebase_once, &__block_literal_global_567);
      result = v4;
    }

    LODWORD(a3) = nr_get_mach_timebase_info;
    LODWORD(a4) = *algn_27FBB23D4;
    return (result * (0.001 * *&a3) / *&a4);
  }

  return result;
}

double NRDiffMachTimeInSeconds(unint64_t a1, unint64_t a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a1)
  {
    v6 = a2 - a1;
    if (a2 > a1)
    {
      if (nr_get_mach_timebase_once != -1)
      {
        dispatch_once(&nr_get_mach_timebase_once, &__block_literal_global_567);
      }

      LODWORD(a4) = nr_get_mach_timebase_info;
      LODWORD(a5) = *algn_27FBB23D4;
      return v6 * (0.000000001 * *&a4) / *&a5;
    }
  }

  return result;
}

double NRDiffMicroTimeInSeconds(unint64_t a1, unint64_t a2)
{
  v2 = a2 <= a1 || a1 == 0;
  result = (a2 - a1) * 0.000001;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

id nrCopyLogObj_2805()
{
  if (nrCopyLogObj_onceToken_2809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
  }

  v1 = nrCopyLogObj_sNRLogObj_2810;

  return v1;
}

uint64_t __nrCopyLogObj_block_invoke_2812()
{
  v0 = os_log_create("com.apple.networkrelay", "");
  v1 = nrCopyLogObj_sNRLogObj_2810;
  nrCopyLogObj_sNRLogObj_2810 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __nrCopyClassCIdentity_block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC040];
  v1 = *MEMORY[0x277CDC018];
  v8[0] = *MEMORY[0x277CDC028];
  v8[1] = v1;
  v9[0] = v0;
  v9[1] = &unk_286D2D100;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  RandomKey = SecKeyCreateRandomKey(v2, 0);
  v4 = SecKeyCopyPublicKey(RandomKey);
  v5 = NRCreateLocalIdentity(RandomKey, v4);
  v6 = nrCopyClassCIdentity_classCIdentity;
  nrCopyClassCIdentity_classCIdentity = v5;

  v7 = *MEMORY[0x277D85DE8];
}

void __nrCopyClassDIdentity_block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CDC040];
  v1 = *MEMORY[0x277CDC018];
  v8[0] = *MEMORY[0x277CDC028];
  v8[1] = v1;
  v9[0] = v0;
  v9[1] = &unk_286D2D100;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  RandomKey = SecKeyCreateRandomKey(v2, 0);
  v4 = SecKeyCopyPublicKey(RandomKey);
  v5 = NRCreateLocalIdentity(RandomKey, v4);
  v6 = nrCopyClassDIdentity_classDIdentity;
  nrCopyClassDIdentity_classDIdentity = v5;

  v7 = *MEMORY[0x277D85DE8];
}

__CFString *createStringFromNRServiceClass(uint64_t a1)
{
  if (a1 >= 6)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%u)", a1];
  }

  else
  {
    v1 = off_27996BB58[a1];
  }

  return v1;
}