@interface NRParametersServiceConnection
- (NRParametersServiceConnection)initWithDeviceIdentifier:(id)a3 dataProtectionClass:(unsigned __int8)a4 options:(id)a5;
@end

@implementation NRParametersServiceConnection

- (NRParametersServiceConnection)initWithDeviceIdentifier:(id)a3 dataProtectionClass:(unsigned __int8)a4 options:(id)a5
{
  v6 = a4;
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 nrDeviceIdentifier];
    v11 = NREndpointCopyDictionary(v10, v6);
    v12 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:@"UseASQUIC"];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v13 BOOLValue];

    if (!v14)
    {
      application_service_quic_using_identity = MEMORY[0x25F873D00]();
      goto LABEL_22;
    }

    if (nrCopyClassDIdentity_onceToken != -1)
    {
      dispatch_once(&nrCopyClassDIdentity_onceToken, &__block_literal_global_96);
    }

    v15 = nrCopyClassDIdentity_classDIdentity;
    if (v6 == 3)
    {
      if (nrCopyClassCIdentity_onceToken != -1)
      {
        dispatch_once(&nrCopyClassCIdentity_onceToken, &__block_literal_global_100);
      }

      v16 = nrCopyClassCIdentity_classCIdentity;

      v15 = v16;
    }

    application_service_quic_using_identity = nw_parameters_create_application_service_quic_using_identity();
    v18 = nw_parameters_copy_default_protocol_stack(application_service_quic_using_identity);
    nw_protocol_stack_iterate_application_protocols(v18, &__block_literal_global_2832);
    nw_parameters_set_prohibit_joining_protocols();
    nw_parameters_set_multipath_service(application_service_quic_using_identity, nw_multipath_service_disabled);
    nw_parameters_set_local_only(application_service_quic_using_identity, 0);
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v19 addObject:@"com.apple.networkrelay.encoded"];
    v61 = v9;
    if (v9)
    {
      v9 = [v9 objectForKeyedSubscript:@"AllowsQR"];
    }

    if (([v9 BOOLValue] & 1) == 0)
    {
      [v19 addObject:@"l"];
    }

    if (v6 == 3)
    {
      [v19 addObject:@"c"];
    }

    [v19 addObject:@"q"];
    [v19 addObject:@"r"];
    v20 = [v19 componentsJoinedByString:@"."];
    [v20 UTF8String];
    nw_parameters_set_account_id();
    v21 = xpc_array_create(0, 0);
    if (v21)
    {
      v22 = v21;
      v23 = xpc_array_create(0, 0);
      if (v23)
      {
        v24 = v23;
        xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "com.apple.rapport");
        xpc_array_set_string(v24, 0xFFFFFFFFFFFFFFFFLL, "RapportNetworkAgent");
        nw_parameters_set_prohibited_netagent_classes();

        v9 = v61;
LABEL_22:
        v62.receiver = self;
        v62.super_class = NRParametersServiceConnection;
        v25 = [(NRParameters *)&v62 initWithParameters:application_service_quic_using_identity];
        self = v25;
        if (v25)
        {
          v31 = v25;
        }

        else
        {
          if (nrCopyLogObj_onceToken_2809 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_2809, &__block_literal_global_91);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_2810, OS_LOG_TYPE_FAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_2810, 17, "[super initWithParameters:] failed", v26, v27, v28, v29, v30, v60);
          }
        }

        v32 = self;
        goto LABEL_30;
      }

      v44 = nrCopyLogObj_2805();
      if (sNRCopyLogToStdErr != 1)
      {
        v47 = v44;
        v48 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

        if (!v48)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v44 = nrCopyLogObj_2805();
      if (sNRCopyLogToStdErr != 1)
      {
        v45 = v44;
        v46 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

        if (!v46)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

LABEL_43:
    v49 = nrCopyLogObj_2805();
    _NRLogWithArgs(v49, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", v50, v51, v52, v53, v54, "");

LABEL_44:
    v55 = _os_log_pack_size();
    MEMORY[0x28223BE20](v55, v56);
    v57 = *__error();
    v58 = _os_log_pack_fill();
    __os_log_helper_1_2_3_8_34_8_0_4_0(v58, "nr_xpc_array_create");
    v59 = nrCopyLogObj_2805();
    _NRLogAbortWithPack(v59);
  }

  v35 = nrCopyLogObj_2805();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v36 = v35;
    v37 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);

    if (!v37)
    {
      v32 = 0;
      goto LABEL_30;
    }
  }

  v38 = nrCopyLogObj_2805();
  _NRLogWithArgs(v38, 17, "%s called with null deviceIdentifier", v39, v40, v41, v42, v43, "[NRParametersServiceConnection initWithDeviceIdentifier:dataProtectionClass:options:]");

  v32 = 0;
LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void __86__NRParametersServiceConnection_initWithDeviceIdentifier_dataProtectionClass_options___block_invoke(uint64_t a1, void *a2)
{
  options = a2;
  if (nw_protocol_options_is_quic(options))
  {
    nw_quic_set_idle_timeout(options, 0);
    nw_quic_connection_set_keepalive_count();
  }
}

@end