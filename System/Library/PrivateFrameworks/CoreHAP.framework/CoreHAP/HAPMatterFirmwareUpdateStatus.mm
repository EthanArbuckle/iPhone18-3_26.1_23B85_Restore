@interface HAPMatterFirmwareUpdateStatus
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPMatterFirmwareUpdateStatus)init;
- (HAPMatterFirmwareUpdateStatus)initWithOTAProviderState:(id)state downloadedFirmwareVersionNumber:(id)number accessoryDownloadProgressPercent:(id)percent;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPMatterFirmwareUpdateStatus

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  oTAProviderState = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
  downloadedFirmwareVersionNumber = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
  accessoryDownloadProgressPercent = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
  v7 = [v3 stringWithFormat:@"<HAPMatterFirmwareUpdateStatus OTAProviderState=%@, downloadedFirmwareVersionNumber=%@, accessoryDownloadProgressPercent=%@>", oTAProviderState, downloadedFirmwareVersionNumber, accessoryDownloadProgressPercent];

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
      oTAProviderState = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
      oTAProviderState2 = [(HAPMatterFirmwareUpdateStatus *)v7 OTAProviderState];
      if (oTAProviderState != oTAProviderState2)
      {
        oTAProviderState3 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
        oTAProviderState4 = [(HAPMatterFirmwareUpdateStatus *)v7 OTAProviderState];
        if (![oTAProviderState3 isEqual:oTAProviderState4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      downloadedFirmwareVersionNumber = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
      downloadedFirmwareVersionNumber2 = [(HAPMatterFirmwareUpdateStatus *)v7 downloadedFirmwareVersionNumber];
      v13 = downloadedFirmwareVersionNumber2;
      if (downloadedFirmwareVersionNumber == downloadedFirmwareVersionNumber2)
      {
        v28 = downloadedFirmwareVersionNumber2;
      }

      else
      {
        downloadedFirmwareVersionNumber3 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
        downloadedFirmwareVersionNumber4 = [(HAPMatterFirmwareUpdateStatus *)v7 downloadedFirmwareVersionNumber];
        if (![downloadedFirmwareVersionNumber3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = downloadedFirmwareVersionNumber3;
        v28 = v13;
      }

      accessoryDownloadProgressPercent = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
      accessoryDownloadProgressPercent2 = [(HAPMatterFirmwareUpdateStatus *)v7 accessoryDownloadProgressPercent];
      v17 = accessoryDownloadProgressPercent2;
      if (accessoryDownloadProgressPercent == accessoryDownloadProgressPercent2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
        v18 = v25 = oTAProviderState3;
        [(HAPMatterFirmwareUpdateStatus *)v7 accessoryDownloadProgressPercent];
        v24 = downloadedFirmwareVersionNumber;
        v19 = oTAProviderState4;
        v20 = oTAProviderState2;
        v22 = v21 = oTAProviderState;
        v10 = [v18 isEqual:v22];

        oTAProviderState = v21;
        oTAProviderState2 = v20;
        oTAProviderState4 = v19;
        downloadedFirmwareVersionNumber = v24;

        oTAProviderState3 = v25;
      }

      v13 = v28;
      downloadedFirmwareVersionNumber3 = v26;
      if (downloadedFirmwareVersionNumber == v28)
      {
LABEL_18:

        if (oTAProviderState == oTAProviderState2)
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
  v4 = [HAPMatterFirmwareUpdateStatus allocWithZone:zone];
  oTAProviderState = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
  downloadedFirmwareVersionNumber = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
  accessoryDownloadProgressPercent = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
  v8 = [(HAPMatterFirmwareUpdateStatus *)v4 initWithOTAProviderState:oTAProviderState downloadedFirmwareVersionNumber:downloadedFirmwareVersionNumber accessoryDownloadProgressPercent:accessoryDownloadProgressPercent];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  TLV8BufferInit();
  oTAProviderState = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];

  if (oTAProviderState)
  {
    oTAProviderState2 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
    v21 = 0;
    v7 = [oTAProviderState2 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_8:
      v12 = v9;

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_20;
    }
  }

  downloadedFirmwareVersionNumber = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];

  if (downloadedFirmwareVersionNumber)
  {
    downloadedFirmwareVersionNumber2 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
    v20 = 0;
    v7 = [downloadedFirmwareVersionNumber2 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  accessoryDownloadProgressPercent = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];

  if (accessoryDownloadProgressPercent)
  {
    accessoryDownloadProgressPercent2 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
    v19 = 0;
    v7 = [accessoryDownloadProgressPercent2 serializeWithError:&v19];
    v8 = v19;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v16 = v8;
        v13 = 0;
        *error = v8;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
  v8 = 0;
LABEL_20:
  TLV8BufferFree();

  v17 = *MEMORY[0x277D85DE8];

  return v13;
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
LABEL_21:
    [(HAPMatterFirmwareUpdateStatus *)self setOTAProviderState:v12];
    [(HAPMatterFirmwareUpdateStatus *)self setDownloadedFirmwareVersionNumber:v11];
    [(HAPMatterFirmwareUpdateStatus *)self setAccessoryDownloadProgressPercent:v10];
    v9 = 0;
    v20 = 1;
    goto LABEL_23;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v30)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v21;
      if (v21)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    switch(v31)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v25 = v9;
        v16 = &v25;
        [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v25];
        v10 = v17 = v10;
        goto LABEL_11;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v9;
        v16 = &v26;
        [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v26];
        v11 = v17 = v11;
        goto LABEL_11;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v16 = &v27;
        [HAPOTAProviderStateWrapper parsedFromData:v15 error:&v27];
        v12 = v17 = v12;
LABEL_11:
        v18 = *v16;

        v9 = v18;
        break;
    }

    if (v28 >= v13)
    {
      if (v9)
      {
LABEL_14:
        if (errorCopy)
        {
          v19 = v9;
          v20 = 0;
          *errorCopy = v9;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      self = selfCopy;
      goto LABEL_21;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v20 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
LABEL_23:

  return v20;
}

- (HAPMatterFirmwareUpdateStatus)initWithOTAProviderState:(id)state downloadedFirmwareVersionNumber:(id)number accessoryDownloadProgressPercent:(id)percent
{
  stateCopy = state;
  numberCopy = number;
  percentCopy = percent;
  v15.receiver = self;
  v15.super_class = HAPMatterFirmwareUpdateStatus;
  v12 = [(HAPMatterFirmwareUpdateStatus *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_OTAProviderState, state);
    objc_storeStrong(&v13->_downloadedFirmwareVersionNumber, number);
    objc_storeStrong(&v13->_accessoryDownloadProgressPercent, percent);
  }

  return v13;
}

- (HAPMatterFirmwareUpdateStatus)init
{
  v3.receiver = self;
  v3.super_class = HAPMatterFirmwareUpdateStatus;
  return [(HAPMatterFirmwareUpdateStatus *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPMatterFirmwareUpdateStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPMatterFirmwareUpdateStatus *)v6 parseFromData:dataCopy error:&v11];
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