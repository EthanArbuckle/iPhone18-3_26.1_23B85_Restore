@interface HAPNFCAccessSupportedConfiguration
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPNFCAccessSupportedConfiguration)init;
- (HAPNFCAccessSupportedConfiguration)initWithMaximumNumberOfIssuerKeys:(id)a3 maximumNumberOfSuspendedDeviceCredentialKeys:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPNFCAccessSupportedConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
  v5 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v6 = [v3 stringWithFormat:@"<HAPNFCAccessSupportedConfiguration maximumNumberOfIssuerKeys=%@, maximumNumberOfSuspendedDeviceCredentialKeys=%@>", v4, v5];

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
      v7 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
      v8 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfIssuerKeys];
      if (v7 != v8)
      {
        v9 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
        v3 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfIssuerKeys];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
      v12 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfSuspendedDeviceCredentialKeys];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
        v14 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfSuspendedDeviceCredentialKeys];
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
  v4 = [HAPNFCAccessSupportedConfiguration allocWithZone:a3];
  v5 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
  v6 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v7 = [(HAPNFCAccessSupportedConfiguration *)v4 initWithMaximumNumberOfIssuerKeys:v5 maximumNumberOfSuspendedDeviceCredentialKeys:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
{
  v39 = *MEMORY[0x277D85DE8];
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
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  TLV8BufferInit();
  v5 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];

  if (v5)
  {
    v6 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
    v17 = 0;
    v7 = [v6 serializeWithError:&v17];
    v8 = v17;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (a3)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  v10 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];

  if (!v10)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  v11 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v16 = 0;
  v7 = [v11 serializeWithError:&v16];
  v8 = v16;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_19:
    [(HAPNFCAccessSupportedConfiguration *)self setMaximumNumberOfIssuerKeys:v10, v22];
    [(HAPNFCAccessSupportedConfiguration *)self setMaximumNumberOfSuspendedDeviceCredentialKeys:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_21;
  }

  v22 = self;
  v23 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v28)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v11 = v20;
      if (v20)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v11;
      v15 = &v24;
      [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v24];
      v9 = v16 = v9;
      goto LABEL_9;
    }

    if (v29 == 1)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v25 = v11;
      v15 = &v25;
      [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v25];
      v10 = v16 = v10;
LABEL_9:
      v17 = *v15;

      v11 = v17;
    }

    if (v26 >= v12)
    {
      if (v11)
      {
LABEL_12:
        if (v23)
        {
          v18 = v11;
          v19 = 0;
          *v23 = v11;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_18:
      self = v22;
      goto LABEL_19;
    }
  }

  if (v23)
  {
    HMErrorFromOSStatus(Next);
    *v23 = v19 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
}

- (HAPNFCAccessSupportedConfiguration)initWithMaximumNumberOfIssuerKeys:(id)a3 maximumNumberOfSuspendedDeviceCredentialKeys:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPNFCAccessSupportedConfiguration;
  v9 = [(HAPNFCAccessSupportedConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_maximumNumberOfIssuerKeys, a3);
    objc_storeStrong(&v10->_maximumNumberOfSuspendedDeviceCredentialKeys, a4);
  }

  return v10;
}

- (HAPNFCAccessSupportedConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessSupportedConfiguration;
  return [(HAPNFCAccessSupportedConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPNFCAccessSupportedConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessSupportedConfiguration *)v6 parseFromData:v5 error:&v11];
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