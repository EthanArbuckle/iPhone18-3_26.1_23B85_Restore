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
  v6 = [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];
  v7 = [v3 stringWithFormat:@"<HMDSupportedSleepConfigurationTLV version=%@, supportedWoLPacketConfigurations=%@, darkPollMinimumInterval=%@>", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(HMDSupportedSleepConfigurationTLV *)self version];
      v9 = [(HMDSupportedSleepConfigurationTLV *)v7 version];
      if (v8 != v9)
      {
        v3 = [(HMDSupportedSleepConfigurationTLV *)self version];
        v4 = [(HMDSupportedSleepConfigurationTLV *)v7 version];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
      v12 = [(HMDSupportedSleepConfigurationTLV *)v7 supportedWoLPacketConfigurations];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
        v27 = [(HMDSupportedSleepConfigurationTLV *)v7 supportedWoLPacketConfigurations];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];
      v16 = [(HMDSupportedSleepConfigurationTLV *)v7 darkPollMinimumInterval];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];
        v18 = v25 = v3;
        [(HMDSupportedSleepConfigurationTLV *)v7 darkPollMinimumInterval];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDSupportedSleepConfigurationTLV allocWithZone:a3];
  v5 = [(HMDSupportedSleepConfigurationTLV *)self version];
  v6 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v7 = [(HMDSupportedSleepConfigurationTLV *)v4 initWithVersion:v5 supportedWoLPacketConfigurations:v6];

  v8 = [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];
  [(HMDSupportedSleepConfigurationTLV *)v7 setDarkPollMinimumInterval:v8];

  return v7;
}

- (id)serializeWithError:(id *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
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
  v35 = 0u;
  TLV8BufferInit();
  v5 = [(HMDSupportedSleepConfigurationTLV *)self version];

  if (v5)
  {
    v6 = [(HMDSupportedSleepConfigurationTLV *)self version];
    v33 = 0;
    v7 = [v6 serializeWithError:&v33];
    v8 = v33;

    if (v8)
    {
      goto LABEL_3;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
LABEL_29:

      goto LABEL_30;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(HMDSupportedSleepConfigurationTLV *)self supportedWoLPacketConfigurations];
  v26 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v26)
  {
    v11 = *v30;
    v12 = 1;
    v25 = a3;
    while (1)
    {
      v13 = 0;
LABEL_10:
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v29 + 1) + 8 * v13);
      if ((v12 & 1) == 0 && TLV8BufferAppend())
      {
LABEL_28:
        a3 = v25;
        goto LABEL_29;
      }

      v28 = 0;
      v15 = [v14 serializeWithError:{&v28, v25}];
      v16 = v28;
      if (v16)
      {
        break;
      }

      v17 = [v15 bytes];
      v18 = v17 + [v15 length];
      do
      {
        if ((v18 - v17) >= 255)
        {
          v19 = 255;
        }

        else
        {
          v19 = v18 - v17;
        }

        if (TLV8BufferAppend())
        {

          goto LABEL_28;
        }

        v17 += v19;
      }

      while (v17 < v18);

      v12 = 0;
      if (++v13 != v26)
      {
        goto LABEL_10;
      }

      v12 = 0;
      a3 = v25;
      v26 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    v8 = v16;

    a3 = v25;
LABEL_3:

    if (a3)
    {
      v9 = v8;
      v10 = 0;
      *a3 = v8;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_23:

  v20 = [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];

  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = [(HMDSupportedSleepConfigurationTLV *)self darkPollMinimumInterval];
  v27 = 0;
  v7 = [v21 serializeWithError:&v27];
  v8 = v27;

  if (v8)
  {
    goto LABEL_3;
  }

  [v7 bytes];
  [v7 length];
  v22 = TLV8BufferAppend();

  if (!v22)
  {
LABEL_26:
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v35 length:?];
    v8 = 0;
    goto LABEL_34;
  }

LABEL_30:
  if (a3)
  {
    HMErrorFromOSStatus();
    v8 = 0;
    *a3 = v10 = 0;
    goto LABEL_34;
  }

  v8 = 0;
LABEL_33:
  v10 = 0;
LABEL_34:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  if (v7 >= 1)
  {
    v24 = v8;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v6 + v7;
    while (1)
    {
      v32 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      if (TLV8GetNext())
      {
        if (a4)
        {
          HMErrorFromOSStatus();
          *a4 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v9 = v24;
        goto LABEL_28;
      }

      if (!v31)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v10 = v21;
        if (v21)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      if (v32 == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v27 = v10;
        v14 = HAPTLVParseContiguousTlvs();
        v16 = v27;

        if (!v16)
        {
          v26 = 0;
          v17 = [HMDWakePacketConfigurationTLV parsedFromData:v14 error:&v26];
          v16 = v26;
          if (!v16)
          {
            [v24 addObject:v17];
          }

LABEL_13:
        }

        v10 = v16;
        goto LABEL_15;
      }

      if (v32 == 1)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v10;
        v15 = [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v28];
        v16 = v28;

        v17 = v12;
        v12 = v15;
        goto LABEL_13;
      }

LABEL_15:
      if (v29 >= v13)
      {
        if (v10)
        {
LABEL_17:
          v9 = v24;
          if (a4)
          {
            v19 = v10;
            v20 = 0;
            *a4 = v10;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        v9 = v24;
        goto LABEL_24;
      }
    }

    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
    v25 = v10;
    v18 = [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v25];
    v16 = v25;

    v17 = v11;
    v11 = v18;
    goto LABEL_13;
  }

  v11 = 0;
  v12 = 0;
LABEL_24:
  [(HMDSupportedSleepConfigurationTLV *)self setVersion:v12, a4];
  [(HMDSupportedSleepConfigurationTLV *)self setSupportedWoLPacketConfigurations:v9];
  [(HMDSupportedSleepConfigurationTLV *)self setDarkPollMinimumInterval:v11];
  v10 = 0;
  v20 = 1;
LABEL_28:

  return v20;
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