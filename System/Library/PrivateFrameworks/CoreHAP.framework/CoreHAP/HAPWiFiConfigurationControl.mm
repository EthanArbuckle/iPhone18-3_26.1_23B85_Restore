@interface HAPWiFiConfigurationControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPWiFiConfigurationControl)init;
- (HAPWiFiConfigurationControl)initWithOperationType:(id)type cookie:(id)cookie updateStatus:(id)status operationTimeout:(id)timeout countryCodeConfiguration:(id)configuration stationConfiguration:(id)stationConfiguration;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPWiFiConfigurationControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HAPWiFiConfigurationControl *)self operationType];
  cookie = [(HAPWiFiConfigurationControl *)self cookie];
  updateStatus = [(HAPWiFiConfigurationControl *)self updateStatus];
  operationTimeout = [(HAPWiFiConfigurationControl *)self operationTimeout];
  countryCodeConfiguration = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
  stationConfiguration = [(HAPWiFiConfigurationControl *)self stationConfiguration];
  v10 = [v3 stringWithFormat:@"<HAPWiFiConfigurationControl operationType=%@, cookie=%@, updateStatus=%@, operationTimeout=%@, countryCodeConfiguration=%@, stationConfiguration=%@>", operationType, cookie, updateStatus, operationTimeout, countryCodeConfiguration, stationConfiguration];

  return v10;
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
      operationType = [(HAPWiFiConfigurationControl *)self operationType];
      operationType2 = [(HAPWiFiConfigurationControl *)v6 operationType];
      if (operationType != operationType2)
      {
        operationType3 = [(HAPWiFiConfigurationControl *)self operationType];
        operationType4 = [(HAPWiFiConfigurationControl *)v6 operationType];
        v56 = operationType3;
        if (![operationType3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      cookie = [(HAPWiFiConfigurationControl *)self cookie];
      cookie2 = [(HAPWiFiConfigurationControl *)v6 cookie];
      if (cookie != cookie2)
      {
        cookie3 = [(HAPWiFiConfigurationControl *)self cookie];
        cookie4 = [(HAPWiFiConfigurationControl *)v6 cookie];
        if (![cookie3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (operationType == operationType2)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      updateStatus = [(HAPWiFiConfigurationControl *)self updateStatus];
      updateStatus2 = [(HAPWiFiConfigurationControl *)v6 updateStatus];
      v54 = updateStatus;
      v15 = updateStatus == updateStatus2;
      v16 = updateStatus2;
      if (v15)
      {
        v51 = updateStatus2;
      }

      else
      {
        updateStatus3 = [(HAPWiFiConfigurationControl *)self updateStatus];
        updateStatus4 = [(HAPWiFiConfigurationControl *)v6 updateStatus];
        v48 = updateStatus3;
        if (![updateStatus3 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (cookie == cookie2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      operationTimeout = [(HAPWiFiConfigurationControl *)self operationTimeout];
      operationTimeout2 = [(HAPWiFiConfigurationControl *)v6 operationTimeout];
      v49 = operationTimeout;
      v50 = cookie3;
      v15 = operationTimeout == operationTimeout2;
      v20 = operationTimeout2;
      if (!v15)
      {
        operationTimeout3 = [(HAPWiFiConfigurationControl *)self operationTimeout];
        operationTimeout4 = [(HAPWiFiConfigurationControl *)v6 operationTimeout];
        v42 = operationTimeout3;
        if (![operationTimeout3 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          cookie3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      countryCodeConfiguration = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
      countryCodeConfiguration2 = [(HAPWiFiConfigurationControl *)v6 countryCodeConfiguration];
      v45 = countryCodeConfiguration;
      v46 = v20;
      v43 = cookie2;
      if (countryCodeConfiguration == countryCodeConfiguration2)
      {
        v40 = cookie;
        v29 = v51;
      }

      else
      {
        countryCodeConfiguration3 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
        countryCodeConfiguration4 = [(HAPWiFiConfigurationControl *)v6 countryCodeConfiguration];
        v39 = countryCodeConfiguration3;
        v28 = [countryCodeConfiguration3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = countryCodeConfiguration2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = cookie;
      }

      stationConfiguration = [(HAPWiFiConfigurationControl *)self stationConfiguration];
      stationConfiguration2 = [(HAPWiFiConfigurationControl *)v6 stationConfiguration];
      v32 = stationConfiguration2;
      if (stationConfiguration == stationConfiguration2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPWiFiConfigurationControl *)self stationConfiguration];
        v33 = v52 = v29;
        stationConfiguration3 = [(HAPWiFiConfigurationControl *)v6 stationConfiguration];
        v10 = [v33 isEqual:stationConfiguration3];

        v29 = v52;
      }

      v36 = countryCodeConfiguration2;
      v35 = v45;
      cookie = v40;
      if (v45 == countryCodeConfiguration2)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        cookie2 = v43;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPWiFiConfigurationControl allocWithZone:zone];
  operationType = [(HAPWiFiConfigurationControl *)self operationType];
  cookie = [(HAPWiFiConfigurationControl *)self cookie];
  updateStatus = [(HAPWiFiConfigurationControl *)self updateStatus];
  operationTimeout = [(HAPWiFiConfigurationControl *)self operationTimeout];
  countryCodeConfiguration = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
  stationConfiguration = [(HAPWiFiConfigurationControl *)self stationConfiguration];
  v11 = [(HAPWiFiConfigurationControl *)v4 initWithOperationType:operationType cookie:cookie updateStatus:updateStatus operationTimeout:operationTimeout countryCodeConfiguration:countryCodeConfiguration stationConfiguration:stationConfiguration];

  return v11;
}

- (id)serializeWithError:(id *)error
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
  operationType = [(HAPWiFiConfigurationControl *)self operationType];

  if (operationType)
  {
    operationType2 = [(HAPWiFiConfigurationControl *)self operationType];
    v39 = 0;
    v7 = [operationType2 serializeWithError:&v39];
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

  cookie = [(HAPWiFiConfigurationControl *)self cookie];

  if (cookie)
  {
    cookie2 = [(HAPWiFiConfigurationControl *)self cookie];
    v38 = 0;
    v7 = [cookie2 serializeWithError:&v38];
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

  updateStatus = [(HAPWiFiConfigurationControl *)self updateStatus];

  if (!updateStatus)
  {
    goto LABEL_13;
  }

  updateStatus2 = [(HAPWiFiConfigurationControl *)self updateStatus];
  v37 = 0;
  v7 = [updateStatus2 serializeWithError:&v37];
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
    if (error)
    {
      HMErrorFromOSStatus(v16);
      v8 = 0;
      *error = v17 = 0;
      goto LABEL_35;
    }

    v8 = 0;
LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

LABEL_13:
  operationTimeout = [(HAPWiFiConfigurationControl *)self operationTimeout];

  if (operationTimeout)
  {
    operationTimeout2 = [(HAPWiFiConfigurationControl *)self operationTimeout];
    v36 = 0;
    v7 = [operationTimeout2 serializeWithError:&v36];
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

  countryCodeConfiguration = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];

  if (countryCodeConfiguration)
  {
    countryCodeConfiguration2 = [(HAPWiFiConfigurationControl *)self countryCodeConfiguration];
    v35 = 0;
    v7 = [countryCodeConfiguration2 serializeWithError:&v35];
    v8 = v35;

    if (!v8)
    {
      bytes = [v7 bytes];
      v21 = bytes + [v7 length];
      while (1)
      {
        v22 = (v21 - bytes) >= 255 ? 255 : v21 - bytes;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_16;
        }

        bytes += v22;
        if (bytes >= v21)
        {

          goto LABEL_30;
        }
      }
    }

LABEL_32:

    if (error)
    {
      v25 = v8;
      v17 = 0;
      *error = v8;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_30:
  stationConfiguration = [(HAPWiFiConfigurationControl *)self stationConfiguration];

  if (stationConfiguration)
  {
    stationConfiguration2 = [(HAPWiFiConfigurationControl *)self stationConfiguration];
    v34 = 0;
    v7 = [stationConfiguration2 serializeWithError:&v34];
    v8 = v34;

    if (v8)
    {
      goto LABEL_32;
    }

    bytes2 = [v7 bytes];
    v29 = bytes2 + [v7 length];
    do
    {
      if ((v29 - bytes2) >= 255)
      {
        v30 = 255;
      }

      else
      {
        v30 = v29 - bytes2;
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

      bytes2 += v32;
      if (v31)
      {
        v33 = 1;
      }

      else
      {
        v33 = bytes2 >= v29;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];
  if (v7 < 1)
  {
    v25 = 0;
    v9 = 0;
    v29 = 0;
    v26 = 0;
    v10 = 0;
    v11 = 0;
LABEL_34:
    [(HAPWiFiConfigurationControl *)self setOperationType:v25, error];
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
  v12 = bytes + v7;
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
          v14 = HAPTLVParseContiguousTlvs(10, bytes, v12, v44, &v39);
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
          v14 = HAPTLVParseContiguousTlvs(11, bytes, v12, v44, &v37);
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

    bytes = v44[0];
    if (v44[0] >= v12)
    {
      if (v8)
      {
LABEL_27:
        v26 = v34;
        v25 = v35;
        if (error)
        {
          v27 = v8;
          v28 = 0;
          *error = v8;
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

  if (error)
  {
    HMErrorFromOSStatus(Next);
    *error = v28 = 0;
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

- (HAPWiFiConfigurationControl)initWithOperationType:(id)type cookie:(id)cookie updateStatus:(id)status operationTimeout:(id)timeout countryCodeConfiguration:(id)configuration stationConfiguration:(id)stationConfiguration
{
  typeCopy = type;
  cookieCopy = cookie;
  statusCopy = status;
  timeoutCopy = timeout;
  configurationCopy = configuration;
  stationConfigurationCopy = stationConfiguration;
  v24.receiver = self;
  v24.super_class = HAPWiFiConfigurationControl;
  v18 = [(HAPWiFiConfigurationControl *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_operationType, type);
    objc_storeStrong(&v19->_cookie, cookie);
    objc_storeStrong(&v19->_updateStatus, status);
    objc_storeStrong(&v19->_operationTimeout, timeout);
    objc_storeStrong(&v19->_countryCodeConfiguration, configuration);
    objc_storeStrong(&v19->_stationConfiguration, stationConfiguration);
  }

  return v19;
}

- (HAPWiFiConfigurationControl)init
{
  v3.receiver = self;
  v3.super_class = HAPWiFiConfigurationControl;
  return [(HAPWiFiConfigurationControl *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPWiFiConfigurationControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPWiFiConfigurationControl *)v6 parseFromData:dataCopy error:&v11];
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