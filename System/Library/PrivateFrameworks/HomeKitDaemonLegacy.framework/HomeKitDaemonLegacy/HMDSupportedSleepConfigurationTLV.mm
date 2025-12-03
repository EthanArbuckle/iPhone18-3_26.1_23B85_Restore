@interface HMDSupportedSleepConfigurationTLV
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSupportedSleepConfigurationTLV)init;
- (HMDSupportedSleepConfigurationTLV)initWithVersion:(id)version supportedWoLPacketConfigurations:(id)configurations;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSupportedSleepConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  version = [(HMDSupportedSleepConfigurationTLV *)self version];
  supportedWoLPacketConfigurations = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v6 = [v3 stringWithFormat:@"<HMDSupportedSleepConfigurationTLV version=%@, supportedWoLPacketConfigurations=%@>", version, supportedWoLPacketConfigurations];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      version = [(HMDSupportedSleepConfigurationTLV *)self version];
      version2 = [(HMDSupportedSleepConfigurationTLV *)v6 version];
      if (version != version2)
      {
        version3 = [(HMDSupportedSleepConfigurationTLV *)self version];
        version4 = [(HMDSupportedSleepConfigurationTLV *)v6 version];
        if (![version3 isEqual:version4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = version3;
      }

      supportedWoLPacketConfigurations = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
      supportedWoLPacketConfigurations2 = [(HMDSupportedSleepConfigurationTLV *)v6 supportedWoLPacketConfigurations];
      if (supportedWoLPacketConfigurations == supportedWoLPacketConfigurations2)
      {
        v10 = 1;
      }

      else
      {
        supportedWoLPacketConfigurations3 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
        supportedWoLPacketConfigurations4 = [(HMDSupportedSleepConfigurationTLV *)v6 supportedWoLPacketConfigurations];
        v10 = [supportedWoLPacketConfigurations3 isEqual:supportedWoLPacketConfigurations4];
      }

      version3 = v16;
      if (version == version2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDSupportedSleepConfigurationTLV allocWithZone:zone];
  version = [(HMDSupportedSleepConfigurationTLV *)self version];
  supportedWoLPacketConfigurations = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v7 = [(HMDSupportedSleepConfigurationTLV *)v4 initWithVersion:version supportedWoLPacketConfigurations:supportedWoLPacketConfigurations];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  TLV8BufferInit();
  version = [(HMDSupportedSleepConfigurationTLV *)self version];

  if (!version)
  {
    goto LABEL_7;
  }

  version2 = [(HMDSupportedSleepConfigurationTLV *)self version];
  v31 = 0;
  supportedWoLPacketConfigurations = [version2 serializeWithError:&v31];
  v8 = v31;

  if (v8)
  {
LABEL_3:

    if (error)
    {
      v9 = v8;
      v10 = 0;
      *error = v8;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  [supportedWoLPacketConfigurations bytes];
  [supportedWoLPacketConfigurations length];
  if (!TLV8BufferAppend())
  {

LABEL_7:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    supportedWoLPacketConfigurations = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
    v11 = [supportedWoLPacketConfigurations countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (!v11)
    {
LABEL_23:

      v10 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:?];
      v8 = 0;
      goto LABEL_30;
    }

    v12 = v11;
    v13 = *v28;
    v14 = 1;
    errorCopy = error;
    while (1)
    {
      v15 = 0;
LABEL_10:
      if (*v28 != v13)
      {
        objc_enumerationMutation(supportedWoLPacketConfigurations);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      if ((v14 & 1) == 0 && TLV8BufferAppend())
      {
LABEL_25:
        error = errorCopy;
        goto LABEL_26;
      }

      v26 = 0;
      v17 = [v16 serializeWithError:{&v26, errorCopy}];
      v18 = v26;
      if (v18)
      {
        break;
      }

      v19 = v13;
      bytes = [v17 bytes];
      v21 = bytes + [v17 length];
      do
      {
        if ((v21 - bytes) >= 255)
        {
          v22 = 255;
        }

        else
        {
          v22 = v21 - bytes;
        }

        if (TLV8BufferAppend())
        {

          goto LABEL_25;
        }

        bytes += v22;
      }

      while (bytes < v21);

      v14 = 0;
      ++v15;
      v13 = v19;
      if (v15 != v12)
      {
        goto LABEL_10;
      }

      v12 = [supportedWoLPacketConfigurations countByEnumeratingWithState:&v27 objects:v32 count:16];
      v14 = 0;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v8 = v18;

    error = errorCopy;
    goto LABEL_3;
  }

LABEL_26:

  if (error)
  {
    HMErrorFromOSStatus();
    v8 = 0;
    *error = v10 = 0;
    goto LABEL_30;
  }

  v8 = 0;
LABEL_29:
  v10 = 0;
LABEL_30:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  array = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
    v11 = 0;
LABEL_22:
    [(HMDSupportedSleepConfigurationTLV *)self setVersion:v11, errorCopy];
    [(HMDSupportedSleepConfigurationTLV *)self setSupportedWoLPacketConfigurations:array];
    v10 = 0;
    v17 = 1;
    goto LABEL_24;
  }

  errorCopy = error;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    if (TLV8GetNext())
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus();
        *errorCopy = v17 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v23 = v10;
      v13 = HAPTLVParseContiguousTlvs();
      v15 = v23;

      if (!v15)
      {
        v22 = 0;
        v16 = [HMDWakePacketConfigurationTLV parsedFromData:v13 error:&v22];
        v15 = v22;
        if (!v15)
        {
          [array addObject:v16];
        }

LABEL_8:
      }

      v10 = v15;
      goto LABEL_11;
    }

    if (v28 == 1)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v10;
      v14 = [MEMORY[0x277CFEC98] parsedFromData:v13 error:&v24];
      v15 = v24;

      v16 = v11;
      v11 = v14;
      goto LABEL_8;
    }

LABEL_11:
    if (v25 >= v12)
    {
      goto LABEL_19;
    }
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v10 = v18;
LABEL_19:
  if (!v10)
  {
    goto LABEL_22;
  }

  if (errorCopy)
  {
    v19 = v10;
    v17 = 0;
    *errorCopy = v10;
    goto LABEL_24;
  }

LABEL_23:
  v17 = 0;
LABEL_24:

  return v17;
}

- (HMDSupportedSleepConfigurationTLV)initWithVersion:(id)version supportedWoLPacketConfigurations:(id)configurations
{
  versionCopy = version;
  configurationsCopy = configurations;
  v14.receiver = self;
  v14.super_class = HMDSupportedSleepConfigurationTLV;
  v9 = [(HMDSupportedSleepConfigurationTLV *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_version, version);
    v11 = [configurationsCopy mutableCopy];
    supportedWoLPacketConfigurations = v10->_supportedWoLPacketConfigurations;
    v10->_supportedWoLPacketConfigurations = v11;
  }

  return v10;
}

- (HMDSupportedSleepConfigurationTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDSupportedSleepConfigurationTLV;
  return [(HMDSupportedSleepConfigurationTLV *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSupportedSleepConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSupportedSleepConfigurationTLV *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end