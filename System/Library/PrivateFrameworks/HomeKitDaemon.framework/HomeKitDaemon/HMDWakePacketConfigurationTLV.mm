@interface HMDWakePacketConfigurationTLV
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDWakePacketConfigurationTLV)init;
- (HMDWakePacketConfigurationTLV)initWithWakePacketType:(id)a3 wakeDestinationPort:(id)a4 wakeDestinationAddress:(id)a5 wakeType:(id)a6 wakePattern:(id)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDWakePacketConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
  v5 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
  v6 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
  v7 = [(HMDWakePacketConfigurationTLV *)self wakeType];
  v8 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
  v9 = [v3 stringWithFormat:@"<HMDWakePacketConfigurationTLV wakePacketType=%@, wakeDestinationPort=%@, wakeDestinationAddress=%@, wakeType=%@, wakePattern=%@>", v4, v5, v6, v7, v8];

  return v9;
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
      v7 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
      v8 = [(HMDWakePacketConfigurationTLV *)v6 wakePacketType];
      if (v7 != v8)
      {
        v9 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
        v39 = [(HMDWakePacketConfigurationTLV *)v6 wakePacketType];
        v40 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      v11 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
      v12 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationPort];
      v41 = v11;
      if (v11 != v12)
      {
        v3 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
        v37 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationPort];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (v7 == v8)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v13 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
      v14 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationAddress];
      v38 = v13;
      v27 = v13 == v14;
      v15 = v14;
      if (!v27)
      {
        v16 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
        v33 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationAddress];
        v34 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == v12)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      v18 = [(HMDWakePacketConfigurationTLV *)self wakeType];
      v35 = [(HMDWakePacketConfigurationTLV *)v6 wakeType];
      v36 = v15;
      if (v18 == v35)
      {
        v31 = v3;
        v32 = v12;
      }

      else
      {
        v19 = [(HMDWakePacketConfigurationTLV *)self wakeType];
        v29 = [(HMDWakePacketConfigurationTLV *)v6 wakeType];
        v30 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v26 = v35;
          goto LABEL_23;
        }

        v31 = v3;
        v32 = v12;
      }

      v20 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
      v21 = [(HMDWakePacketConfigurationTLV *)v6 wakePattern];
      v22 = v21;
      if (v20 == v21)
      {

        v10 = 1;
        v26 = v35;
        v27 = v18 == v35;
      }

      else
      {
        v23 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
        [(HMDWakePacketConfigurationTLV *)v6 wakePattern];
        v25 = v24 = v18;
        v10 = [v23 isEqual:v25];

        v18 = v24;
        v26 = v35;
        v27 = v24 == v35;
      }

      v3 = v31;
      v12 = v32;
      if (v27)
      {
LABEL_24:

        v17 = v38;
        v15 = v36;
        if (v38 == v36)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v10 = 0;
  }

LABEL_31:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDWakePacketConfigurationTLV allocWithZone:a3];
  v5 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
  v6 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
  v7 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
  v8 = [(HMDWakePacketConfigurationTLV *)self wakeType];
  v9 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
  v10 = [(HMDWakePacketConfigurationTLV *)v4 initWithWakePacketType:v5 wakeDestinationPort:v6 wakeDestinationAddress:v7 wakeType:v8 wakePattern:v9];

  return v10;
}

- (id)serializeWithError:(id *)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  TLV8BufferInit();
  v5 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];

  if (v5)
  {
    v6 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
    v35 = 0;
    v7 = [v6 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_28;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
LABEL_8:

LABEL_9:
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v11 = 0;
        goto LABEL_31;
      }

      v8 = 0;
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }
  }

  v9 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];

  if (v9)
  {
    v10 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
    v34 = 0;
    v7 = [v10 serializeWithError:&v34];
    v8 = v34;

    if (v8)
    {
      goto LABEL_28;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_8;
    }
  }

  v12 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];

  if (v12)
  {
    v13 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
    v33 = 0;
    v7 = [v13 serializeWithError:&v33];
    v8 = v33;

    if (!v8)
    {
      v14 = [v7 bytes];
      v15 = v14 + [v7 length];
      while (1)
      {
        v16 = (v15 - v14) >= 255 ? 255 : v15 - v14;
        if (TLV8BufferAppend())
        {
          goto LABEL_8;
        }

        v14 += v16;
        if (v14 >= v15)
        {

          goto LABEL_22;
        }
      }
    }

LABEL_28:

    if (a3)
    {
      v21 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_22:
  v17 = [(HMDWakePacketConfigurationTLV *)self wakeType];

  if (v17)
  {
    v18 = [(HMDWakePacketConfigurationTLV *)self wakeType];
    v32 = 0;
    v7 = [v18 serializeWithError:&v32];
    v8 = v32;

    if (v8)
    {
      goto LABEL_28;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_8;
    }
  }

  v19 = [(HMDWakePacketConfigurationTLV *)self wakePattern];

  if (v19)
  {
    v20 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
    v31 = 0;
    v7 = [v20 serializeWithError:&v31];
    v8 = v31;

    if (v8)
    {
      goto LABEL_28;
    }

    v24 = [v7 bytes];
    v25 = v24 + [v7 length];
    do
    {
      if ((v25 - v24) >= 255)
      {
        v26 = 255;
      }

      else
      {
        v26 = v25 - v24;
      }

      v27 = TLV8BufferAppend();
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      v24 += v28;
      if (v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = v24 >= v25;
      }
    }

    while (!v29);
    v30 = v27;

    if (v30)
    {
      goto LABEL_9;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:?];
  v8 = 0;
LABEL_31:
  TLV8BufferFree();

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v30 = a4;
    v31 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v32 = 0;
    v12 = 0;
    v13 = v7 + v8;
    while (1)
    {
      v43 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      if (TLV8GetNext())
      {
        if (v30)
        {
          HMErrorFromOSStatus();
          *v30 = v27 = 0;
        }

        else
        {
          v27 = 0;
        }

        v25 = v31;
        v24 = v32;
        goto LABEL_35;
      }

      if (!v42)
      {
        v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v28;
        if (v28)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }

      if (v43 <= 2u)
      {
        if (v43 == 1)
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v39 = v9;
          v21 = [HMDSleepConfigurationWakePacketTypeWrapper parsedFromData:v14 error:&v39];
          v22 = v39;

          v17 = v10;
          v10 = v21;
          v9 = v22;
          goto LABEL_20;
        }

        if (v43 == 2)
        {
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v38 = v9;
          v18 = [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v38];
          v19 = v38;

          v17 = v12;
          v12 = v18;
          goto LABEL_17;
        }
      }

      else
      {
        switch(v43)
        {
          case 3u:
            v37 = v9;
            v14 = HAPTLVParseContiguousTlvs();
            v15 = v37;

            if (v15)
            {
              goto LABEL_15;
            }

            v36 = 0;
            v23 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v36];
            v9 = v36;
            v17 = v32;
            v32 = v23;
            goto LABEL_20;
          case 4u:
            v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
            v35 = v9;
            v20 = [HMDSleepConfigurationWakeUpTypeWrapper parsedFromData:v14 error:&v35];
            v19 = v35;

            v17 = v11;
            v11 = v20;
LABEL_17:
            v9 = v19;
LABEL_20:

            goto LABEL_21;
          case 5u:
            v34 = v9;
            v14 = HAPTLVParseContiguousTlvs();
            v15 = v34;

            if (!v15)
            {
              v33 = 0;
              v16 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v33];
              v9 = v33;
              v17 = v31;
              v31 = v16;
              goto LABEL_20;
            }

LABEL_15:
            v9 = v15;
LABEL_21:

            break;
        }
      }

      if (v40 >= v13)
      {
        if (v9)
        {
LABEL_24:
          v25 = v31;
          v24 = v32;
          if (v30)
          {
            v26 = v9;
            v27 = 0;
            *v30 = v9;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_35;
        }

LABEL_30:
        v25 = v31;
        v24 = v32;
        goto LABEL_31;
      }
    }
  }

  v10 = 0;
  v25 = 0;
  v11 = 0;
  v24 = 0;
  v12 = 0;
LABEL_31:
  [(HMDWakePacketConfigurationTLV *)self setWakePacketType:v10, v30];
  [(HMDWakePacketConfigurationTLV *)self setWakeDestinationPort:v12];
  [(HMDWakePacketConfigurationTLV *)self setWakeDestinationAddress:v24];
  [(HMDWakePacketConfigurationTLV *)self setWakeType:v11];
  [(HMDWakePacketConfigurationTLV *)self setWakePattern:v25];
  v9 = 0;
  v27 = 1;
LABEL_35:

  return v27;
}

- (HMDWakePacketConfigurationTLV)initWithWakePacketType:(id)a3 wakeDestinationPort:(id)a4 wakeDestinationAddress:(id)a5 wakeType:(id)a6 wakePattern:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HMDWakePacketConfigurationTLV;
  v17 = [(HMDWakePacketConfigurationTLV *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_wakePacketType, a3);
    objc_storeStrong(&v18->_wakeDestinationPort, a4);
    objc_storeStrong(&v18->_wakeDestinationAddress, a5);
    objc_storeStrong(&v18->_wakeType, a6);
    objc_storeStrong(&v18->_wakePattern, a7);
  }

  return v18;
}

- (HMDWakePacketConfigurationTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDWakePacketConfigurationTLV;
  return [(HMDWakePacketConfigurationTLV *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDWakePacketConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDWakePacketConfigurationTLV *)v6 parseFromData:v5 error:&v11];
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