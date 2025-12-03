@interface HAPWiFiStationConfiguration
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPWiFiStationConfiguration)init;
- (HAPWiFiStationConfiguration)initWithSSID:(id)d securityMode:(id)mode PSK:(id)k;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPWiFiStationConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  sSID = [(HAPWiFiStationConfiguration *)self SSID];
  securityMode = [(HAPWiFiStationConfiguration *)self securityMode];
  v6 = [(HAPWiFiStationConfiguration *)self PSK];
  v7 = [v3 stringWithFormat:@"<HAPWiFiStationConfiguration SSID=%@, securityMode=%@, PSK=%@>", sSID, securityMode, v6];

  return v7;
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
      v7 = equalCopy;
      sSID = [(HAPWiFiStationConfiguration *)self SSID];
      sSID2 = [(HAPWiFiStationConfiguration *)v7 SSID];
      if (sSID != sSID2)
      {
        sSID3 = [(HAPWiFiStationConfiguration *)self SSID];
        sSID4 = [(HAPWiFiStationConfiguration *)v7 SSID];
        if (![sSID3 isEqual:sSID4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      securityMode = [(HAPWiFiStationConfiguration *)self securityMode];
      securityMode2 = [(HAPWiFiStationConfiguration *)v7 securityMode];
      v13 = securityMode2;
      if (securityMode == securityMode2)
      {
        v28 = securityMode2;
      }

      else
      {
        securityMode3 = [(HAPWiFiStationConfiguration *)self securityMode];
        securityMode4 = [(HAPWiFiStationConfiguration *)v7 securityMode];
        if (![securityMode3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = securityMode3;
        v28 = v13;
      }

      v15 = [(HAPWiFiStationConfiguration *)self PSK];
      v16 = [(HAPWiFiStationConfiguration *)v7 PSK];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPWiFiStationConfiguration *)self PSK];
        v18 = v25 = sSID3;
        [(HAPWiFiStationConfiguration *)v7 PSK];
        v24 = securityMode;
        v19 = sSID4;
        v20 = sSID2;
        v22 = v21 = sSID;
        v10 = [v18 isEqual:v22];

        sSID = v21;
        sSID2 = v20;
        sSID4 = v19;
        securityMode = v24;

        sSID3 = v25;
      }

      v13 = v28;
      securityMode3 = v26;
      if (securityMode == v28)
      {
LABEL_18:

        if (sSID == sSID2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPWiFiStationConfiguration allocWithZone:zone];
  sSID = [(HAPWiFiStationConfiguration *)self SSID];
  securityMode = [(HAPWiFiStationConfiguration *)self securityMode];
  v7 = [(HAPWiFiStationConfiguration *)self PSK];
  v8 = [(HAPWiFiStationConfiguration *)v4 initWithSSID:sSID securityMode:securityMode PSK:v7];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
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
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  TLV8BufferInit();
  sSID = [(HAPWiFiStationConfiguration *)self SSID];

  if (!sSID)
  {
LABEL_10:
    securityMode = [(HAPWiFiStationConfiguration *)self securityMode];

    if (securityMode)
    {
      securityMode2 = [(HAPWiFiStationConfiguration *)self securityMode];
      v29 = 0;
      v7 = [securityMode2 serializeWithError:&v29];
      v8 = v29;

      if (v8)
      {
        goto LABEL_15;
      }

      [v7 bytes];
      [v7 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
        goto LABEL_31;
      }
    }

    v16 = [(HAPWiFiStationConfiguration *)self PSK];

    if (v16)
    {
      v17 = [(HAPWiFiStationConfiguration *)self PSK];
      v28 = 0;
      v7 = [v17 serializeWithError:&v28];
      v8 = v28;

      if (v8)
      {
        goto LABEL_15;
      }

      bytes = [v7 bytes];
      v21 = bytes + [v7 length];
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

        v23 = TLV8BufferAppend();
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v22;
        }

        bytes += v24;
        if (v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = bytes >= v21;
        }
      }

      while (!v25);
      v15 = v23;

      if (v15)
      {
LABEL_31:
        if (error)
        {
          HMErrorFromOSStatus(v15);
          v8 = 0;
          *error = v19 = 0;
          goto LABEL_36;
        }

        v8 = 0;
        goto LABEL_35;
      }
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:?];
    v8 = 0;
    goto LABEL_36;
  }

  sSID2 = [(HAPWiFiStationConfiguration *)self SSID];
  v30 = 0;
  v7 = [sSID2 serializeWithError:&v30];
  v8 = v30;

  if (!v8)
  {
    bytes2 = [v7 bytes];
    v10 = bytes2 + [v7 length];
    while (1)
    {
      v11 = (v10 - bytes2) >= 255 ? 255 : v10 - bytes2;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes2 += v11;
      if (bytes2 >= v10)
      {

        goto LABEL_10;
      }
    }

    v15 = v12;

    goto LABEL_31;
  }

LABEL_15:

  if (error)
  {
    v18 = v8;
    v19 = 0;
    *error = v8;
    goto LABEL_36;
  }

LABEL_35:
  v19 = 0;
LABEL_36:
  TLV8BufferFree();

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_20:
    [(HAPWiFiStationConfiguration *)self setSSID:v12, errorCopy];
    [(HAPWiFiStationConfiguration *)self setSecurityMode:v11];
    [(HAPWiFiStationConfiguration *)self setPSK:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v22 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v33)
    {
      break;
    }

    switch(v34)
    {
      case 3:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v32, &v28);
        v16 = v28;

        if (v16)
        {
          goto LABEL_12;
        }

        v27 = 0;
        v21 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v27];
        v9 = v27;
        v18 = v10;
        v10 = v21;
        goto LABEL_14;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v9;
        v19 = [HAPWiFiSecurityModeWrapper parsedFromData:v15 error:&v29];
        v20 = v29;

        v18 = v11;
        v11 = v19;
        v9 = v20;
LABEL_14:

        goto LABEL_15;
      case 1:
        v31 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v32, &v31);
        v16 = v31;

        if (!v16)
        {
          v30 = 0;
          v17 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v30];
          v9 = v30;
          v18 = v12;
          v12 = v17;
          goto LABEL_14;
        }

LABEL_12:
        v9 = v16;
LABEL_15:

        break;
    }

    bytes = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v23;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (errorCopy)
  {
    v24 = v9;
    v22 = 0;
    *errorCopy = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
}

- (HAPWiFiStationConfiguration)initWithSSID:(id)d securityMode:(id)mode PSK:(id)k
{
  dCopy = d;
  modeCopy = mode;
  kCopy = k;
  v15.receiver = self;
  v15.super_class = HAPWiFiStationConfiguration;
  v12 = [(HAPWiFiStationConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_SSID, d);
    objc_storeStrong(&v13->_securityMode, mode);
    objc_storeStrong(&v13->_PSK, k);
  }

  return v13;
}

- (HAPWiFiStationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPWiFiStationConfiguration;
  return [(HAPWiFiStationConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPWiFiStationConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPWiFiStationConfiguration *)v6 parseFromData:dataCopy error:&v11];
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