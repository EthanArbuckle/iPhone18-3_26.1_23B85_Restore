@interface HAPWiFiConfigurationControl
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPWiFiConfigurationControl)init;
- (HAPWiFiConfigurationControl)initWithOperationType:(id)a3 cookie:(id)a4 updateStatus:(id)a5 operationTimeout:(id)a6 countryCodeConfiguration:(id)a7 stationConfiguration:(id)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPWiFiConfigurationControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPWiFiConfigurationControl *)self operationType];
  v5 = [(HAPWiFiConfigurationControl *)self cookie];
  v6 = [(HAPWiFiConfigurationControl *)self updateStatus];
  v7 = [(HAPWiFiConfigurationControl *)self operationTimeout];
  v8 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
  v9 = [(HAPWiFiConfigurationControl *)self stationConfiguration];
  v10 = [v3 stringWithFormat:@"<HAPWiFiConfigurationControl operationType=%@, cookie=%@, updateStatus=%@, operationTimeout=%@, countryCodeConfiguration=%@, stationConfiguration=%@>", v4, v5, v6, v7, v8, v9];

  return v10;
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
      v7 = [(HAPWiFiConfigurationControl *)self operationType];
      v8 = [(HAPWiFiConfigurationControl *)v6 operationType];
      if (v7 != v8)
      {
        v9 = [(HAPWiFiConfigurationControl *)self operationType];
        v55 = [(HAPWiFiConfigurationControl *)v6 operationType];
        v56 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      v11 = [(HAPWiFiConfigurationControl *)self cookie];
      v12 = [(HAPWiFiConfigurationControl *)v6 cookie];
      if (v11 != v12)
      {
        v3 = [(HAPWiFiConfigurationControl *)self cookie];
        v53 = [(HAPWiFiConfigurationControl *)v6 cookie];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (v7 == v8)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      v13 = [(HAPWiFiConfigurationControl *)self updateStatus];
      v14 = [(HAPWiFiConfigurationControl *)v6 updateStatus];
      v54 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v51 = v14;
      }

      else
      {
        v17 = [(HAPWiFiConfigurationControl *)self updateStatus];
        v47 = [(HAPWiFiConfigurationControl *)v6 updateStatus];
        v48 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (v11 == v12)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      v18 = [(HAPWiFiConfigurationControl *)self operationTimeout];
      v19 = [(HAPWiFiConfigurationControl *)v6 operationTimeout];
      v49 = v18;
      v50 = v3;
      v15 = v18 == v19;
      v20 = v19;
      if (!v15)
      {
        v21 = [(HAPWiFiConfigurationControl *)self operationTimeout];
        v41 = [(HAPWiFiConfigurationControl *)v6 operationTimeout];
        v42 = v21;
        if (![v21 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          v3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      v26 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
      v44 = [(HAPWiFiConfigurationControl *)v6 countryCodeConfiguration];
      v45 = v26;
      v46 = v20;
      v43 = v12;
      if (v26 == v44)
      {
        v40 = v11;
        v29 = v51;
      }

      else
      {
        v27 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
        v38 = [(HAPWiFiConfigurationControl *)v6 countryCodeConfiguration];
        v39 = v27;
        v28 = [v27 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = v44;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = v11;
      }

      v30 = [(HAPWiFiConfigurationControl *)self stationConfiguration];
      v31 = [(HAPWiFiConfigurationControl *)v6 stationConfiguration];
      v32 = v31;
      if (v30 == v31)
      {

        v10 = 1;
      }

      else
      {
        [(HAPWiFiConfigurationControl *)self stationConfiguration];
        v33 = v52 = v29;
        v34 = [(HAPWiFiConfigurationControl *)v6 stationConfiguration];
        v10 = [v33 isEqual:v34];

        v29 = v52;
      }

      v36 = v44;
      v35 = v45;
      v11 = v40;
      if (v45 == v44)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        v12 = v43;
        if (v49 == v46)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_28:
      v22 = v29;

      goto LABEL_30;
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPWiFiConfigurationControl allocWithZone:a3];
  v5 = [(HAPWiFiConfigurationControl *)self operationType];
  v6 = [(HAPWiFiConfigurationControl *)self cookie];
  v7 = [(HAPWiFiConfigurationControl *)self updateStatus];
  v8 = [(HAPWiFiConfigurationControl *)self operationTimeout];
  v9 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
  v10 = [(HAPWiFiConfigurationControl *)self stationConfiguration];
  v11 = [(HAPWiFiConfigurationControl *)v4 initWithOperationType:v5 cookie:v6 updateStatus:v7 operationTimeout:v8 countryCodeConfiguration:v9 stationConfiguration:v10];

  return v11;
}

- (id)serializeWithError:(id *)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
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
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  TLV8BufferInit();
  v5 = [(HAPWiFiConfigurationControl *)self operationType];

  if (v5)
  {
    v6 = [(HAPWiFiConfigurationControl *)self operationType];
    v39 = 0;
    v7 = [v6 serializeWithError:&v39];
    v8 = v39;

    if (v8)
    {
      goto LABEL_32;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = [(HAPWiFiConfigurationControl *)self cookie];

  if (v10)
  {
    v11 = [(HAPWiFiConfigurationControl *)self cookie];
    v38 = 0;
    v7 = [v11 serializeWithError:&v38];
    v8 = v38;

    if (v8)
    {
      goto LABEL_32;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v12 = [(HAPWiFiConfigurationControl *)self updateStatus];

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [(HAPWiFiConfigurationControl *)self updateStatus];
  v37 = 0;
  v7 = [v13 serializeWithError:&v37];
  v8 = v37;

  if (v8)
  {
    goto LABEL_32;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (v9)
  {
LABEL_16:
    v16 = v9;

LABEL_17:
    if (a3)
    {
      HMErrorFromOSStatus(v16);
      v8 = 0;
      *a3 = v17 = 0;
      goto LABEL_35;
    }

    v8 = 0;
LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

LABEL_13:
  v14 = [(HAPWiFiConfigurationControl *)self operationTimeout];

  if (v14)
  {
    v15 = [(HAPWiFiConfigurationControl *)self operationTimeout];
    v36 = 0;
    v7 = [v15 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_32;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v18 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];

  if (v18)
  {
    v19 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
    v35 = 0;
    v7 = [v19 serializeWithError:&v35];
    v8 = v35;

    if (!v8)
    {
      v20 = [v7 bytes];
      v21 = v20 + [v7 length];
      while (1)
      {
        v22 = (v21 - v20) >= 255 ? 255 : v21 - v20;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_16;
        }

        v20 += v22;
        if (v20 >= v21)
        {

          goto LABEL_30;
        }
      }
    }

LABEL_32:

    if (a3)
    {
      v25 = v8;
      v17 = 0;
      *a3 = v8;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_30:
  v23 = [(HAPWiFiConfigurationControl *)self stationConfiguration];

  if (v23)
  {
    v24 = [(HAPWiFiConfigurationControl *)self stationConfiguration];
    v34 = 0;
    v7 = [v24 serializeWithError:&v34];
    v8 = v34;

    if (v8)
    {
      goto LABEL_32;
    }

    v28 = [v7 bytes];
    v29 = v28 + [v7 length];
    do
    {
      if ((v29 - v28) >= 255)
      {
        v30 = 255;
      }

      else
      {
        v30 = v29 - v28;
      }

      v31 = TLV8BufferAppend();
      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v28 += v32;
      if (v31)
      {
        v33 = 1;
      }

      else
      {
        v33 = v28 >= v29;
      }
    }

    while (!v33);
    v16 = v31;

    if (v16)
    {
      goto LABEL_17;
    }
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:?];
  v8 = 0;
LABEL_35:
  TLV8BufferFree();

  v26 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  if (v7 < 1)
  {
    v25 = 0;
    v9 = 0;
    v29 = 0;
    v26 = 0;
    v10 = 0;
    v11 = 0;
LABEL_34:
    [(HAPWiFiConfigurationControl *)self setOperationType:v25, a4];
    [(HAPWiFiConfigurationControl *)self setCookie:v9];
    [(HAPWiFiConfigurationControl *)self setUpdateStatus:v11];
    [(HAPWiFiConfigurationControl *)self setOperationTimeout:v10];
    [(HAPWiFiConfigurationControl *)self setCountryCodeConfiguration:v26];
    [(HAPWiFiConfigurationControl *)self setStationConfiguration:v29];
    v8 = 0;
    v28 = 1;
    goto LABEL_39;
  }

  v8 = 0;
  v34 = 0;
  v35 = 0;
  v9 = 0;
  v33 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v6 + v7;
  while (1)
  {
    v46 = 0;
    v45 = 0;
    v44[0] = 0;
    v44[1] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v45)
    {
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v8 = v30;
      if (v30)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    if (v46 > 3u)
    {
      switch(v46)
      {
        case 4u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v40 = v8;
          v22 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v40];
          v16 = v40;

          v17 = v10;
          v10 = v22;
          goto LABEL_18;
        case 0xAu:
          v39 = v8;
          v14 = HAPTLVParseContiguousTlvs(10, v6, v12, v44, &v39);
          v18 = v39;

          if (v18)
          {
            goto LABEL_21;
          }

          v38 = 0;
          v24 = [MEMORY[0x277CCACA8] parsedFromData:v14 error:&v38];
          v8 = v38;
          v17 = v34;
          v34 = v24;
          goto LABEL_19;
        case 0xBu:
          v37 = v8;
          v14 = HAPTLVParseContiguousTlvs(11, v6, v12, v44, &v37);
          v18 = v37;

          if (!v18)
          {
            v36 = 0;
            v19 = [HAPWiFiStationConfiguration parsedFromData:v14 error:&v36];
            v8 = v36;
            v17 = v33;
            v33 = v19;
            goto LABEL_19;
          }

LABEL_21:
          v8 = v18;
LABEL_22:

          break;
      }
    }

    else
    {
      switch(v46)
      {
        case 1u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v43 = v8;
          v20 = [HAPWiFiConfigurationOperationTypeWrapper parsedFromData:v14 error:&v43];
          v21 = v43;

          v17 = v35;
          v35 = v20;
          v8 = v21;
          goto LABEL_19;
        case 2u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v42 = v8;
          v23 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v42];
          v16 = v42;

          v17 = v9;
          v9 = v23;
LABEL_18:
          v8 = v16;
LABEL_19:

          goto LABEL_22;
        case 3u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v41 = v8;
          v15 = [HAPWiFiConfigurationUpdateStatusWrapper parsedFromData:v14 error:&v41];
          v16 = v41;

          v17 = v11;
          v11 = v15;
          goto LABEL_18;
      }
    }

    v6 = v44[0];
    if (v44[0] >= v12)
    {
      if (v8)
      {
LABEL_27:
        v26 = v34;
        v25 = v35;
        if (a4)
        {
          v27 = v8;
          v28 = 0;
          *a4 = v8;
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_38;
      }

LABEL_33:
      v26 = v34;
      v25 = v35;
      v29 = v33;
      goto LABEL_34;
    }
  }

  if (a4)
  {
    HMErrorFromOSStatus(Next);
    *a4 = v28 = 0;
  }

  else
  {
    v28 = 0;
  }

  v26 = v34;
  v25 = v35;
LABEL_38:
  v29 = v33;
LABEL_39:

  return v28;
}

- (HAPWiFiConfigurationControl)initWithOperationType:(id)a3 cookie:(id)a4 updateStatus:(id)a5 operationTimeout:(id)a6 countryCodeConfiguration:(id)a7 stationConfiguration:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HAPWiFiConfigurationControl;
  v18 = [(HAPWiFiConfigurationControl *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationType, a3);
    objc_storeStrong(&v19->_cookie, a4);
    objc_storeStrong(&v19->_updateStatus, a5);
    objc_storeStrong(&v19->_operationTimeout, a6);
    objc_storeStrong(&v19->_countryCodeConfiguration, a7);
    objc_storeStrong(&v19->_stationConfiguration, a8);
  }

  return v19;
}

- (HAPWiFiConfigurationControl)init
{
  v3.receiver = self;
  v3.super_class = HAPWiFiConfigurationControl;
  return [(HAPWiFiConfigurationControl *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPWiFiConfigurationControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPWiFiConfigurationControl *)v6 parseFromData:v5 error:&v11];
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