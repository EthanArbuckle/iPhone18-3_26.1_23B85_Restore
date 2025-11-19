@interface NRParametersPhoneCallRelay
- (NRParametersPhoneCallRelay)initWithLocalPort:(id)a3;
@end

@implementation NRParametersPhoneCallRelay

- (NRParametersPhoneCallRelay)initWithLocalPort:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277CD9230];
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
    if (!legacy_tcp_socket)
    {
      if (nrCopyLogObj_onceToken_2809 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2810, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2810, 17, "nw_parameters_create_legacy_tcp_socket failed", v6, v7, v8, v9, v10, v84);
        v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_20;
    }

    nw_parameters_set_indefinite();
    v12 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
    v13 = MEMORY[0x25F873EB0]();
    nw_protocol_stack_set_transport_protocol(v12, v13);

    nw_parameters_set_data_mode();
    host = nw_endpoint_create_host("::", [v4 UTF8String]);
    MEMORY[0x25F873D60](legacy_tcp_socket, host);
    v15 = xpc_string_create("com.apple.networkrelay");
    if (v15)
    {
      v16 = v15;
      v17 = xpc_string_create("PhoneCallRelayAgent");
      if (v17)
      {
        v18 = v17;
        v19 = xpc_array_create(0, 0);
        if (v19)
        {
          v20 = v19;
          xpc_array_append_value(v19, v16);
          v21 = xpc_array_create(0, 0);
          if (v21)
          {
            v22 = v21;
            xpc_array_append_value(v21, v18);
            nw_parameters_set_required_netagent_classes();
            nw_parameters_set_reuse_local_address(legacy_tcp_socket, 1);
            nw_parameters_set_no_proxy();
            v85.receiver = self;
            v85.super_class = NRParametersPhoneCallRelay;
            v23 = [(NRParameters *)&v85 initWithParameters:legacy_tcp_socket];
            self = v23;
            if (v23)
            {
              [(NRParameters *)v23 setServiceClass:3];
              v29 = self;
            }

            else
            {
              if (nrCopyLogObj_onceToken_2809 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
              }

              if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2810, OS_LOG_TYPE_FAULT))
              {
                _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2810, 17, "[super initWithParameters:] failed", v24, v25, v26, v27, v28, v84);
              }
            }

            v30 = self;
LABEL_20:

            goto LABEL_21;
          }

          v36 = nrCopyLogObj_2805();
          if (sNRCopyLogToStdErr == 1)
          {
            goto LABEL_32;
          }

          v71 = v36;
          v72 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

          if (v72)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v36 = nrCopyLogObj_2805();
          if (sNRCopyLogToStdErr == 1)
          {
LABEL_32:

LABEL_44:
            v73 = nrCopyLogObj_2805();
            _NRLogWithArgs(v73, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", v74, v75, v76, v77, v78, "");

            goto LABEL_45;
          }

          v69 = v36;
          v70 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

          if (v70)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v79 = _os_log_pack_size();
        MEMORY[0x28223BE20](v79, v80);
        v81 = *__error();
        v82 = _os_log_pack_fill();
        __os_log_helper_1_2_3_8_34_8_0_4_0(v82, "nr_xpc_array_create");
LABEL_46:
        v83 = nrCopyLogObj_2805();
        _NRLogAbortWithPack(v83);
      }

      v35 = nrCopyLogObj_2805();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v57 = v35;
        v58 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

        if (!v58)
        {
LABEL_40:
          v65 = _os_log_pack_size();
          MEMORY[0x28223BE20](v65, v66);
          v67 = *__error();
          v68 = _os_log_pack_fill();
          *v68 = 136446466;
          *(v68 + 4) = "nr_xpc_string_create";
          *(v68 + 12) = 2080;
          *(v68 + 14) = "PhoneCallRelayAgent";
          goto LABEL_46;
        }
      }

      v59 = nrCopyLogObj_2805();
      _NRLogWithArgs(v59, 16, "%s%.30s:%-4d ABORTING: xpc_string_create(%s) failed", v60, v61, v62, v63, v64, "");

      goto LABEL_40;
    }

    v34 = nrCopyLogObj_2805();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v45 = v34;
      v46 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);

      if (!v46)
      {
LABEL_37:
        v53 = _os_log_pack_size();
        MEMORY[0x28223BE20](v53, v54);
        v55 = *__error();
        v56 = _os_log_pack_fill();
        *v56 = 136446466;
        *(v56 + 4) = "nr_xpc_string_create";
        *(v56 + 12) = 2080;
        *(v56 + 14) = "com.apple.networkrelay";
        goto LABEL_46;
      }
    }

    v47 = nrCopyLogObj_2805();
    _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: xpc_string_create(%s) failed", v48, v49, v50, v51, v52, "");

    goto LABEL_37;
  }

  v33 = nrCopyLogObj_2805();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v37 = v33;
    v38 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);

    if (!v38)
    {
      v30 = 0;
      goto LABEL_21;
    }
  }

  v39 = nrCopyLogObj_2805();
  _NRLogWithArgs(v39, 17, "%s called with null localPortString", v40, v41, v42, v43, v44, "[NRParametersPhoneCallRelay initWithLocalPort:]");

  v30 = 0;
LABEL_21:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

@end