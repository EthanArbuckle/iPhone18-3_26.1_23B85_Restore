@interface NREndpoint
- (id)copyEndpoint;
- (id)copyNWEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initInternalWithDeviceIdentifier:(void *)identifier portString:(int)string dataProtectionClass:(void *)class service:;
@end

@implementation NREndpoint

- (id)copyNWEndpoint
{
  copyEndpoint = [(NREndpoint *)self copyEndpoint];
  if (copyEndpoint)
  {
    v3 = [MEMORY[0x277CD91C8] endpointWithCEndpoint:copyEndpoint];
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
  service = [(NREndpoint *)self service];
  if (service)
  {
    v4 = service;
    usesASQUIC = [(NREndpoint *)self usesASQUIC];

    if (usesASQUIC)
    {
      v36[0] = 0;
      v36[1] = 0;
      MEMORY[0x25F8744B0](v36);
      service2 = [(NREndpoint *)self service];
      [service2 UTF8String];
      application_service = nw_endpoint_create_application_service();
      deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
      nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
      v10 = NREndpointCopyDictionary(nrDeviceIdentifier, [(NREndpoint *)self dataProtectionClass]);
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

  deviceIdentifier2 = [(NREndpoint *)self deviceIdentifier];
  nrDeviceIdentifier2 = [deviceIdentifier2 nrDeviceIdentifier];
  dataProtectionClass = [(NREndpoint *)self dataProtectionClass];
  portString = [(NREndpoint *)self portString];
  v18 = nrDeviceIdentifier2;
  v19 = portString;
  v20 = dataProtectionClass;
  v21 = NREndpointCopyDictionary(v18, dataProtectionClass);
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
  deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
  portString = [(NREndpoint *)self portString];
  dataProtectionClass = [(NREndpoint *)self dataProtectionClass];
  if (dataProtectionClass < 5 && ((0x1Bu >> dataProtectionClass) & 1) != 0)
  {
    v7 = off_27996ADB0[dataProtectionClass];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown[%lld]", dataProtectionClass];
  }

  v8 = [v3 initWithFormat:@"NREndpoint[%@ port:%@ %@]", deviceIdentifier, portString, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceIdentifier = [(NREndpoint *)self deviceIdentifier];
  portString = [(NREndpoint *)self portString];
  v7 = [v4 initWithDeviceIdentifier:deviceIdentifier portString:portString dataProtectionClass:{-[NREndpoint dataProtectionClass](self, "dataProtectionClass")}];

  return v7;
}

- (id)initInternalWithDeviceIdentifier:(void *)identifier portString:(int)string dataProtectionClass:(void *)class service:
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a2;
  identifierCopy = identifier;
  classCopy = class;
  if (!self)
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

  if (!identifierCopy)
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

  if ((string - 5) <= 0xFFFFFFFD)
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

  v66.receiver = self;
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

  self = v12;
  v13 = [v9 copy];
  v14 = self[2];
  self[2] = v13;

  v15 = [identifierCopy copy];
  v16 = self[3];
  self[3] = v15;

  *(self + 8) = string;
  objc_storeStrong(self + 4, class);
  deviceIdentifier = [self deviceIdentifier];
  nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
  v19 = NREndpointCopyDictionary(nrDeviceIdentifier, [self dataProtectionClass]);
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"UseASQUIC"];
  }

  else
  {
    v21 = 0;
  }

  bOOLValue = [v21 BOOLValue];

  *(self + 9) = bOOLValue;
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
  return self;
}

@end