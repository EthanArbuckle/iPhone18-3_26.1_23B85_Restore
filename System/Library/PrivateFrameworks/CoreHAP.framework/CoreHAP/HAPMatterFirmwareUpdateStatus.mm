@interface HAPMatterFirmwareUpdateStatus
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPMatterFirmwareUpdateStatus)init;
- (HAPMatterFirmwareUpdateStatus)initWithOTAProviderState:(id)a3 downloadedFirmwareVersionNumber:(id)a4 accessoryDownloadProgressPercent:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPMatterFirmwareUpdateStatus

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
  v5 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
  v6 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
  v7 = [v3 stringWithFormat:@"<HAPMatterFirmwareUpdateStatus OTAProviderState=%@, downloadedFirmwareVersionNumber=%@, accessoryDownloadProgressPercent=%@>", v4, v5, v6];

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
      v8 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
      v9 = [(HAPMatterFirmwareUpdateStatus *)v7 OTAProviderState];
      if (v8 != v9)
      {
        v3 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
        v4 = [(HAPMatterFirmwareUpdateStatus *)v7 OTAProviderState];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
      v12 = [(HAPMatterFirmwareUpdateStatus *)v7 downloadedFirmwareVersionNumber];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
        v27 = [(HAPMatterFirmwareUpdateStatus *)v7 downloadedFirmwareVersionNumber];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
      v16 = [(HAPMatterFirmwareUpdateStatus *)v7 accessoryDownloadProgressPercent];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
        v18 = v25 = v3;
        [(HAPMatterFirmwareUpdateStatus *)v7 accessoryDownloadProgressPercent];
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
  v4 = [HAPMatterFirmwareUpdateStatus allocWithZone:a3];
  v5 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
  v6 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
  v7 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
  v8 = [(HAPMatterFirmwareUpdateStatus *)v4 initWithOTAProviderState:v5 downloadedFirmwareVersionNumber:v6 accessoryDownloadProgressPercent:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];

  if (v5)
  {
    v6 = [(HAPMatterFirmwareUpdateStatus *)self OTAProviderState];
    v21 = 0;
    v7 = [v6 serializeWithError:&v21];
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
      if (a3)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_20;
    }
  }

  v10 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];

  if (v10)
  {
    v11 = [(HAPMatterFirmwareUpdateStatus *)self downloadedFirmwareVersionNumber];
    v20 = 0;
    v7 = [v11 serializeWithError:&v20];
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

  v14 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];

  if (v14)
  {
    v15 = [(HAPMatterFirmwareUpdateStatus *)self accessoryDownloadProgressPercent];
    v19 = 0;
    v7 = [v15 serializeWithError:&v19];
    v8 = v19;

    if (v8)
    {
LABEL_15:

      if (a3)
      {
        v16 = v8;
        v13 = 0;
        *a3 = v8;
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
LABEL_21:
    [(HAPMatterFirmwareUpdateStatus *)self setOTAProviderState:v12];
    [(HAPMatterFirmwareUpdateStatus *)self setDownloadedFirmwareVersionNumber:v11];
    [(HAPMatterFirmwareUpdateStatus *)self setAccessoryDownloadProgressPercent:v10];
    v9 = 0;
    v20 = 1;
    goto LABEL_23;
  }

  v23 = self;
  v24 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
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
        if (v24)
        {
          v19 = v9;
          v20 = 0;
          *v24 = v9;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      self = v23;
      goto LABEL_21;
    }
  }

  if (v24)
  {
    HMErrorFromOSStatus(Next);
    *v24 = v20 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
LABEL_23:

  return v20;
}

- (HAPMatterFirmwareUpdateStatus)initWithOTAProviderState:(id)a3 downloadedFirmwareVersionNumber:(id)a4 accessoryDownloadProgressPercent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPMatterFirmwareUpdateStatus;
  v12 = [(HAPMatterFirmwareUpdateStatus *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_OTAProviderState, a3);
    objc_storeStrong(&v13->_downloadedFirmwareVersionNumber, a4);
    objc_storeStrong(&v13->_accessoryDownloadProgressPercent, a5);
  }

  return v13;
}

- (HAPMatterFirmwareUpdateStatus)init
{
  v3.receiver = self;
  v3.super_class = HAPMatterFirmwareUpdateStatus;
  return [(HAPMatterFirmwareUpdateStatus *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPMatterFirmwareUpdateStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPMatterFirmwareUpdateStatus *)v6 parseFromData:v5 error:&v11];
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