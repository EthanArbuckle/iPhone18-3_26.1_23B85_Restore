@interface HAPWiFiStationConfiguration
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPWiFiStationConfiguration)init;
- (HAPWiFiStationConfiguration)initWithSSID:(id)a3 securityMode:(id)a4 PSK:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPWiFiStationConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPWiFiStationConfiguration *)self SSID];
  v5 = [(HAPWiFiStationConfiguration *)self securityMode];
  v6 = [(HAPWiFiStationConfiguration *)self PSK];
  v7 = [v3 stringWithFormat:@"<HAPWiFiStationConfiguration SSID=%@, securityMode=%@, PSK=%@>", v4, v5, v6];

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
      v8 = [(HAPWiFiStationConfiguration *)self SSID];
      v9 = [(HAPWiFiStationConfiguration *)v7 SSID];
      if (v8 != v9)
      {
        v3 = [(HAPWiFiStationConfiguration *)self SSID];
        v4 = [(HAPWiFiStationConfiguration *)v7 SSID];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPWiFiStationConfiguration *)self securityMode];
      v12 = [(HAPWiFiStationConfiguration *)v7 securityMode];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPWiFiStationConfiguration *)self securityMode];
        v27 = [(HAPWiFiStationConfiguration *)v7 securityMode];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
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
        v18 = v25 = v3;
        [(HAPWiFiStationConfiguration *)v7 PSK];
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
  v4 = [HAPWiFiStationConfiguration allocWithZone:a3];
  v5 = [(HAPWiFiStationConfiguration *)self SSID];
  v6 = [(HAPWiFiStationConfiguration *)self securityMode];
  v7 = [(HAPWiFiStationConfiguration *)self PSK];
  v8 = [(HAPWiFiStationConfiguration *)v4 initWithSSID:v5 securityMode:v6 PSK:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAPWiFiStationConfiguration *)self SSID];

  if (!v5)
  {
LABEL_10:
    v13 = [(HAPWiFiStationConfiguration *)self securityMode];

    if (v13)
    {
      v14 = [(HAPWiFiStationConfiguration *)self securityMode];
      v29 = 0;
      v7 = [v14 serializeWithError:&v29];
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

      v20 = [v7 bytes];
      v21 = v20 + [v7 length];
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

        v23 = TLV8BufferAppend();
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = v22;
        }

        v20 += v24;
        if (v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = v20 >= v21;
        }
      }

      while (!v25);
      v15 = v23;

      if (v15)
      {
LABEL_31:
        if (a3)
        {
          HMErrorFromOSStatus(v15);
          v8 = 0;
          *a3 = v19 = 0;
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

  v6 = [(HAPWiFiStationConfiguration *)self SSID];
  v30 = 0;
  v7 = [v6 serializeWithError:&v30];
  v8 = v30;

  if (!v8)
  {
    v9 = [v7 bytes];
    v10 = v9 + [v7 length];
    while (1)
    {
      v11 = (v10 - v9) >= 255 ? 255 : v10 - v9;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      v9 += v11;
      if (v9 >= v10)
      {

        goto LABEL_10;
      }
    }

    v15 = v12;

    goto LABEL_31;
  }

LABEL_15:

  if (a3)
  {
    v18 = v8;
    v19 = 0;
    *a3 = v8;
    goto LABEL_36;
  }

LABEL_35:
  v19 = 0;
LABEL_36:
  TLV8BufferFree();

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_20:
    [(HAPWiFiStationConfiguration *)self setSSID:v12, v26];
    [(HAPWiFiStationConfiguration *)self setSecurityMode:v11];
    [(HAPWiFiStationConfiguration *)self setPSK:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  v26 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v26)
      {
        HMErrorFromOSStatus(Next);
        *v26 = v22 = 0;
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
        v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v32, &v28);
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
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v32, &v31);
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

    v7 = v32[0];
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
  if (v26)
  {
    v24 = v9;
    v22 = 0;
    *v26 = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
}

- (HAPWiFiStationConfiguration)initWithSSID:(id)a3 securityMode:(id)a4 PSK:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPWiFiStationConfiguration;
  v12 = [(HAPWiFiStationConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_SSID, a3);
    objc_storeStrong(&v13->_securityMode, a4);
    objc_storeStrong(&v13->_PSK, a5);
  }

  return v13;
}

- (HAPWiFiStationConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPWiFiStationConfiguration;
  return [(HAPWiFiStationConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPWiFiStationConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPWiFiStationConfiguration *)v6 parseFromData:v5 error:&v11];
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