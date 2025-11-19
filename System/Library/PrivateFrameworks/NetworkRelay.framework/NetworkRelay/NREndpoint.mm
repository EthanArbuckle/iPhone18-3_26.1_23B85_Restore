@interface NREndpoint
- (id)copyEndpoint;
- (id)copyNWEndpoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initInternalWithDeviceIdentifier:(void *)a3 portString:(int)a4 dataProtectionClass:(void *)a5 service:;
@end

@implementation NREndpoint

- (id)copyNWEndpoint
{
  v2 = [(NREndpoint *)self copyEndpoint];
  if (v2)
  {
    v3 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyEndpoint
{
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = [(NREndpoint *)self service];
  if (v3)
  {
    v4 = v3;
    v5 = [(NREndpoint *)self usesASQUIC];

    if (v5)
    {
      v36[0] = 0;
      v36[1] = 0;
      MEMORY[0x25F8744B0](v36);
      v6 = [(NREndpoint *)self service];
      [v6 UTF8String];
      application_service = nw_endpoint_create_application_service();
      v8 = [(NREndpoint *)self deviceIdentifier];
      v9 = [v8 nrDeviceIdentifier];
      v10 = NREndpointCopyDictionary(v9, [(NREndpoint *)self dataProtectionClass]);
      v11 = v10;
      if (v10)
      {
        v12 = [v10 objectForKeyedSubscript:@"deviceID"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = 0;
LABEL_27:

          if (v13)
          {
            [v13 UTF8String];
            nw_endpoint_set_device_id();
          }

          goto LABEL_30;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v12 = v13;
      goto LABEL_27;
    }
  }

  v14 = [(NREndpoint *)self deviceIdentifier];
  v15 = [v14 nrDeviceIdentifier];
  v16 = [(NREndpoint *)self dataProtectionClass];
  v17 = [(NREndpoint *)self portString];
  v18 = v15;
  v19 = v17;
  v20 = v16;
  v21 = NREndpointCopyDictionary(v18, v16);
  v22 = v21;
  if (v21)
  {
    v23 = [v21 objectForKeyedSubscript:@"AddrData"];
  }

  else
  {
    v23 = 0;
  }

  if ([v23 length] == 16)
  {
    if (v19)
    {
      v24 = bswap32([v19 intValue]) >> 16;
    }

    else
    {
      LOWORD(v24) = 0;
    }

    *(v36 + 4) = 0uLL;
    *(&v36[2] + 4) = 0;
    LOWORD(v36[0]) = 7708;
    WORD1(v36[0]) = v24;
    [v23 getBytes:&v36[1] length:16];
    v32 = [MEMORY[0x277CD91B8] endpointWithAddress:v36];
  }

  else
  {
    if (nrCopyLogObj_onceToken != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken, &__block_literal_global);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj, OS_LOG_TYPE_ERROR))
    {
      v30 = nrCopyLogObj_sNRLogObj;
      if (v20 < 5 && ((0x1Bu >> v20) & 1) != 0)
      {
        v31 = off_27996ADB0[v20];
      }

      else
      {
        v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", v20];
      }

      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d Failed to resolve endpoint for %@ %@", v25, v26, v27, v28, v29, "");
    }

    v32 = [MEMORY[0x277CD91B8] endpointWithHostname:@"::" port:v19];
  }

  v33 = v32;

  application_service = [v33 copyCEndpoint];
LABEL_30:
  v34 = *MEMORY[0x277D85DE8];
  return application_service;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NREndpoint *)self deviceIdentifier];
  v5 = [(NREndpoint *)self portString];
  v6 = [(NREndpoint *)self dataProtectionClass];
  if (v6 < 5 && ((0x1Bu >> v6) & 1) != 0)
  {
    v7 = off_27996ADB0[v6];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", v6];
  }

  v8 = [v3 initWithFormat:@"NREndpoint[%@ port:%@ %@]", v4, v5, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NREndpoint *)self deviceIdentifier];
  v6 = [(NREndpoint *)self portString];
  v7 = [v4 initWithDeviceIdentifier:v5 portString:v6 dataProtectionClass:{-[NREndpoint dataProtectionClass](self, "dataProtectionClass")}];

  return v7;
}

- (id)initInternalWithDeviceIdentifier:(void *)a3 portString:(int)a4 dataProtectionClass:(void *)a5 service:
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!v9)
  {
    v25 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v29 = v25;
      v30 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (!v30)
      {
        goto LABEL_27;
      }
    }

    v31 = nrCopyLogObj();
    _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", v32, v33, v34, v35, v36, "");

    goto LABEL_27;
  }

  if (!v10)
  {
    v26 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v37 = v26;
      v38 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v38)
      {
        goto LABEL_27;
      }
    }

    v39 = nrCopyLogObj();
    _NRLogWithArgs(v39, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL portString", v40, v41, v42, v43, v44, "");

    goto LABEL_27;
  }

  if ((a4 - 5) <= 0xFFFFFFFD)
  {
    v27 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v45 = v27;
      v46 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (!v46)
      {
LABEL_27:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v53 = *__error();
        v54 = _os_log_pack_fill();
        *v54 = 136446466;
        *(v54 + 4) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
        *(v54 + 12) = 2080;
        *(v54 + 14) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
        goto LABEL_31;
      }
    }

    v47 = nrCopyLogObj();
    _NRLogWithArgs(v47, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL dataProtectionClass == NRDataProtectionClassC || dataProtectionClass == NRDataProtectionClassD", v48, v49, v50, v51, v52, "");

    goto LABEL_27;
  }

  v66.receiver = a1;
  v66.super_class = NREndpoint;
  v12 = objc_msgSendSuper2(&v66, sel_init);
  if (!v12)
  {
    v28 = nrCopyLogObj();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v55 = v28;
      v56 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v56)
      {
LABEL_30:
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v63 = *__error();
        v64 = _os_log_pack_fill();
        *v64 = 136446210;
        *(v64 + 4) = "[NREndpoint initInternalWithDeviceIdentifier:portString:dataProtectionClass:service:]";
LABEL_31:
        v65 = nrCopyLogObj();
        _NRLogAbortWithPack(v65);
      }
    }

    v57 = nrCopyLogObj();
    _NRLogWithArgs(v57, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v58, v59, v60, v61, v62, "");

    goto LABEL_30;
  }

  a1 = v12;
  v13 = [v9 copy];
  v14 = a1[2];
  a1[2] = v13;

  v15 = [v10 copy];
  v16 = a1[3];
  a1[3] = v15;

  *(a1 + 8) = a4;
  objc_storeStrong(a1 + 4, a5);
  v17 = [a1 deviceIdentifier];
  v18 = [v17 nrDeviceIdentifier];
  v19 = NREndpointCopyDictionary(v18, [a1 dataProtectionClass]);
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"UseASQUIC"];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v21 BOOLValue];

  *(a1 + 9) = v22;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
  return a1;
}

@end