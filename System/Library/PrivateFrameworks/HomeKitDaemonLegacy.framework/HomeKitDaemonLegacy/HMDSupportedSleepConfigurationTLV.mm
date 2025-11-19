@interface HMDSupportedSleepConfigurationTLV
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSupportedSleepConfigurationTLV)init;
- (HMDSupportedSleepConfigurationTLV)initWithVersion:(id)a3 supportedWoLPacketConfigurations:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSupportedSleepConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSupportedSleepConfigurationTLV *)self version];
  v5 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v6 = [v3 stringWithFormat:@"<HMDSupportedSleepConfigurationTLV version=%@, supportedWoLPacketConfigurations=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDSupportedSleepConfigurationTLV *)self version];
      v8 = [(HMDSupportedSleepConfigurationTLV *)v6 version];
      if (v7 != v8)
      {
        v9 = [(HMDSupportedSleepConfigurationTLV *)self version];
        v3 = [(HMDSupportedSleepConfigurationTLV *)v6 version];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
      v12 = [(HMDSupportedSleepConfigurationTLV *)v6 supportedWoLPacketConfigurations];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
        v14 = [(HMDSupportedSleepConfigurationTLV *)v6 supportedWoLPacketConfigurations];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDSupportedSleepConfigurationTLV allocWithZone:a3];
  v5 = [(HMDSupportedSleepConfigurationTLV *)self version];
  v6 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v7 = [(HMDSupportedSleepConfigurationTLV *)v4 initWithVersion:v5 supportedWoLPacketConfigurations:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDSupportedSleepConfigurationTLV *)self version];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [(HMDSupportedSleepConfigurationTLV *)self version];
  v31 = 0;
  v7 = [v6 serializeWithError:&v31];
  v8 = v31;

  if (v8)
  {
LABEL_3:

    if (a3)
    {
      v9 = v8;
      v10 = 0;
      *a3 = v8;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  [v7 bytes];
  [v7 length];
  if (!TLV8BufferAppend())
  {

LABEL_7:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
    v11 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
    v25 = a3;
    while (1)
    {
      v15 = 0;
LABEL_10:
      if (*v28 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      if ((v14 & 1) == 0 && TLV8BufferAppend())
      {
LABEL_25:
        a3 = v25;
        goto LABEL_26;
      }

      v26 = 0;
      v17 = [v16 serializeWithError:{&v26, v25}];
      v18 = v26;
      if (v18)
      {
        break;
      }

      v19 = v13;
      v20 = [v17 bytes];
      v21 = v20 + [v17 length];
      do
      {
        if ((v21 - v20) >= 255)
        {
          v22 = 255;
        }

        else
        {
          v22 = v21 - v20;
        }

        if (TLV8BufferAppend())
        {

          goto LABEL_25;
        }

        v20 += v22;
      }

      while (v20 < v21);

      v14 = 0;
      ++v15;
      v13 = v19;
      if (v15 != v12)
      {
        goto LABEL_10;
      }

      v12 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v14 = 0;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v8 = v18;

    a3 = v25;
    goto LABEL_3;
  }

LABEL_26:

  if (a3)
  {
    HMErrorFromOSStatus();
    v8 = 0;
    *a3 = v10 = 0;
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

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
    v11 = 0;
LABEL_22:
    [(HMDSupportedSleepConfigurationTLV *)self setVersion:v11, v21];
    [(HMDSupportedSleepConfigurationTLV *)self setSupportedWoLPacketConfigurations:v9];
    v10 = 0;
    v17 = 1;
    goto LABEL_24;
  }

  v21 = a4;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v28 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    if (TLV8GetNext())
    {
      if (v21)
      {
        HMErrorFromOSStatus();
        *v21 = v17 = 0;
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
          [v9 addObject:v16];
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

  if (v21)
  {
    v19 = v10;
    v17 = 0;
    *v21 = v10;
    goto LABEL_24;
  }

LABEL_23:
  v17 = 0;
LABEL_24:

  return v17;
}

- (HMDSupportedSleepConfigurationTLV)initWithVersion:(id)a3 supportedWoLPacketConfigurations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDSupportedSleepConfigurationTLV;
  v9 = [(HMDSupportedSleepConfigurationTLV *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_version, a3);
    v11 = [v8 mutableCopy];
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

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSupportedSleepConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSupportedSleepConfigurationTLV *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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