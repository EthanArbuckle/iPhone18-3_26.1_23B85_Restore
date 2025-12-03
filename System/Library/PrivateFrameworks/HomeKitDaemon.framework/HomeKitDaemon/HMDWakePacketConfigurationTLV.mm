@interface HMDWakePacketConfigurationTLV
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDWakePacketConfigurationTLV)init;
- (HMDWakePacketConfigurationTLV)initWithWakePacketType:(id)type wakeDestinationPort:(id)port wakeDestinationAddress:(id)address wakeType:(id)wakeType wakePattern:(id)pattern;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDWakePacketConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  wakePacketType = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
  wakeDestinationPort = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
  wakeDestinationAddress = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
  wakeType = [(HMDWakePacketConfigurationTLV *)self wakeType];
  wakePattern = [(HMDWakePacketConfigurationTLV *)self wakePattern];
  v9 = [v3 stringWithFormat:@"<HMDWakePacketConfigurationTLV wakePacketType=%@, wakeDestinationPort=%@, wakeDestinationAddress=%@, wakeType=%@, wakePattern=%@>", wakePacketType, wakeDestinationPort, wakeDestinationAddress, wakeType, wakePattern];

  return v9;
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
      wakePacketType = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
      wakePacketType2 = [(HMDWakePacketConfigurationTLV *)v6 wakePacketType];
      if (wakePacketType != wakePacketType2)
      {
        wakePacketType3 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
        wakePacketType4 = [(HMDWakePacketConfigurationTLV *)v6 wakePacketType];
        v40 = wakePacketType3;
        if (![wakePacketType3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      wakeDestinationPort = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
      wakeDestinationPort2 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationPort];
      v41 = wakeDestinationPort;
      if (wakeDestinationPort != wakeDestinationPort2)
      {
        wakeDestinationPort3 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
        wakeDestinationPort4 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationPort];
        if (![wakeDestinationPort3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (wakePacketType == wakePacketType2)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      wakeDestinationAddress = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
      wakeDestinationAddress2 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationAddress];
      v38 = wakeDestinationAddress;
      v27 = wakeDestinationAddress == wakeDestinationAddress2;
      v15 = wakeDestinationAddress2;
      if (!v27)
      {
        wakeDestinationAddress3 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
        wakeDestinationAddress4 = [(HMDWakePacketConfigurationTLV *)v6 wakeDestinationAddress];
        v34 = wakeDestinationAddress3;
        if (![wakeDestinationAddress3 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == wakeDestinationPort2)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      wakeType = [(HMDWakePacketConfigurationTLV *)self wakeType];
      wakeType2 = [(HMDWakePacketConfigurationTLV *)v6 wakeType];
      v36 = v15;
      if (wakeType == wakeType2)
      {
        v31 = wakeDestinationPort3;
        v32 = wakeDestinationPort2;
      }

      else
      {
        wakeType3 = [(HMDWakePacketConfigurationTLV *)self wakeType];
        wakeType4 = [(HMDWakePacketConfigurationTLV *)v6 wakeType];
        v30 = wakeType3;
        if (![wakeType3 isEqual:?])
        {
          v10 = 0;
          v26 = wakeType2;
          goto LABEL_23;
        }

        v31 = wakeDestinationPort3;
        v32 = wakeDestinationPort2;
      }

      wakePattern = [(HMDWakePacketConfigurationTLV *)self wakePattern];
      wakePattern2 = [(HMDWakePacketConfigurationTLV *)v6 wakePattern];
      v22 = wakePattern2;
      if (wakePattern == wakePattern2)
      {

        v10 = 1;
        v26 = wakeType2;
        v27 = wakeType == wakeType2;
      }

      else
      {
        wakePattern3 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
        [(HMDWakePacketConfigurationTLV *)v6 wakePattern];
        v25 = v24 = wakeType;
        v10 = [wakePattern3 isEqual:v25];

        wakeType = v24;
        v26 = wakeType2;
        v27 = v24 == wakeType2;
      }

      wakeDestinationPort3 = v31;
      wakeDestinationPort2 = v32;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDWakePacketConfigurationTLV allocWithZone:zone];
  wakePacketType = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
  wakeDestinationPort = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
  wakeDestinationAddress = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
  wakeType = [(HMDWakePacketConfigurationTLV *)self wakeType];
  wakePattern = [(HMDWakePacketConfigurationTLV *)self wakePattern];
  v10 = [(HMDWakePacketConfigurationTLV *)v4 initWithWakePacketType:wakePacketType wakeDestinationPort:wakeDestinationPort wakeDestinationAddress:wakeDestinationAddress wakeType:wakeType wakePattern:wakePattern];

  return v10;
}

- (id)serializeWithError:(id *)error
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
  wakePacketType = [(HMDWakePacketConfigurationTLV *)self wakePacketType];

  if (wakePacketType)
  {
    wakePacketType2 = [(HMDWakePacketConfigurationTLV *)self wakePacketType];
    v35 = 0;
    v7 = [wakePacketType2 serializeWithError:&v35];
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
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_31;
      }

      v8 = 0;
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }
  }

  wakeDestinationPort = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];

  if (wakeDestinationPort)
  {
    wakeDestinationPort2 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationPort];
    v34 = 0;
    v7 = [wakeDestinationPort2 serializeWithError:&v34];
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

  wakeDestinationAddress = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];

  if (wakeDestinationAddress)
  {
    wakeDestinationAddress2 = [(HMDWakePacketConfigurationTLV *)self wakeDestinationAddress];
    v33 = 0;
    v7 = [wakeDestinationAddress2 serializeWithError:&v33];
    v8 = v33;

    if (!v8)
    {
      bytes = [v7 bytes];
      v15 = bytes + [v7 length];
      while (1)
      {
        v16 = (v15 - bytes) >= 255 ? 255 : v15 - bytes;
        if (TLV8BufferAppend())
        {
          goto LABEL_8;
        }

        bytes += v16;
        if (bytes >= v15)
        {

          goto LABEL_22;
        }
      }
    }

LABEL_28:

    if (error)
    {
      v21 = v8;
      v11 = 0;
      *error = v8;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_22:
  wakeType = [(HMDWakePacketConfigurationTLV *)self wakeType];

  if (wakeType)
  {
    wakeType2 = [(HMDWakePacketConfigurationTLV *)self wakeType];
    v32 = 0;
    v7 = [wakeType2 serializeWithError:&v32];
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

  wakePattern = [(HMDWakePacketConfigurationTLV *)self wakePattern];

  if (wakePattern)
  {
    wakePattern2 = [(HMDWakePacketConfigurationTLV *)self wakePattern];
    v31 = 0;
    v7 = [wakePattern2 serializeWithError:&v31];
    v8 = v31;

    if (v8)
    {
      goto LABEL_28;
    }

    bytes2 = [v7 bytes];
    v25 = bytes2 + [v7 length];
    do
    {
      if ((v25 - bytes2) >= 255)
      {
        v26 = 255;
      }

      else
      {
        v26 = v25 - bytes2;
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

      bytes2 += v28;
      if (v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = bytes2 >= v25;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    errorCopy = error;
    v31 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v32 = 0;
    v12 = 0;
    v13 = bytes + v8;
    while (1)
    {
      v43 = 0;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      if (TLV8GetNext())
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus();
          *errorCopy = v27 = 0;
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
          if (errorCopy)
          {
            v26 = v9;
            v27 = 0;
            *errorCopy = v9;
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
  [(HMDWakePacketConfigurationTLV *)self setWakePacketType:v10, errorCopy];
  [(HMDWakePacketConfigurationTLV *)self setWakeDestinationPort:v12];
  [(HMDWakePacketConfigurationTLV *)self setWakeDestinationAddress:v24];
  [(HMDWakePacketConfigurationTLV *)self setWakeType:v11];
  [(HMDWakePacketConfigurationTLV *)self setWakePattern:v25];
  v9 = 0;
  v27 = 1;
LABEL_35:

  return v27;
}

- (HMDWakePacketConfigurationTLV)initWithWakePacketType:(id)type wakeDestinationPort:(id)port wakeDestinationAddress:(id)address wakeType:(id)wakeType wakePattern:(id)pattern
{
  typeCopy = type;
  portCopy = port;
  addressCopy = address;
  wakeTypeCopy = wakeType;
  patternCopy = pattern;
  v21.receiver = self;
  v21.super_class = HMDWakePacketConfigurationTLV;
  v17 = [(HMDWakePacketConfigurationTLV *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_wakePacketType, type);
    objc_storeStrong(&v18->_wakeDestinationPort, port);
    objc_storeStrong(&v18->_wakeDestinationAddress, address);
    objc_storeStrong(&v18->_wakeType, wakeType);
    objc_storeStrong(&v18->_wakePattern, pattern);
  }

  return v18;
}

- (HMDWakePacketConfigurationTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDWakePacketConfigurationTLV;
  return [(HMDWakePacketConfigurationTLV *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDWakePacketConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDWakePacketConfigurationTLV *)v6 parseFromData:dataCopy error:&v11];
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