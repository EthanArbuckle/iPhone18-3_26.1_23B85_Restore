@interface HAPNFCAccessSupportedConfiguration
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPNFCAccessSupportedConfiguration)init;
- (HAPNFCAccessSupportedConfiguration)initWithMaximumNumberOfIssuerKeys:(id)keys maximumNumberOfSuspendedDeviceCredentialKeys:(id)credentialKeys;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPNFCAccessSupportedConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  maximumNumberOfIssuerKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
  maximumNumberOfSuspendedDeviceCredentialKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v6 = [v3 stringWithFormat:@"<HAPNFCAccessSupportedConfiguration maximumNumberOfIssuerKeys=%@, maximumNumberOfSuspendedDeviceCredentialKeys=%@>", maximumNumberOfIssuerKeys, maximumNumberOfSuspendedDeviceCredentialKeys];

  return v6;
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
      maximumNumberOfIssuerKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
      maximumNumberOfIssuerKeys2 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfIssuerKeys];
      if (maximumNumberOfIssuerKeys != maximumNumberOfIssuerKeys2)
      {
        maximumNumberOfIssuerKeys3 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
        maximumNumberOfIssuerKeys4 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfIssuerKeys];
        if (![maximumNumberOfIssuerKeys3 isEqual:maximumNumberOfIssuerKeys4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = maximumNumberOfIssuerKeys3;
      }

      maximumNumberOfSuspendedDeviceCredentialKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
      maximumNumberOfSuspendedDeviceCredentialKeys2 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfSuspendedDeviceCredentialKeys];
      if (maximumNumberOfSuspendedDeviceCredentialKeys == maximumNumberOfSuspendedDeviceCredentialKeys2)
      {
        v10 = 1;
      }

      else
      {
        maximumNumberOfSuspendedDeviceCredentialKeys3 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
        maximumNumberOfSuspendedDeviceCredentialKeys4 = [(HAPNFCAccessSupportedConfiguration *)v6 maximumNumberOfSuspendedDeviceCredentialKeys];
        v10 = [maximumNumberOfSuspendedDeviceCredentialKeys3 isEqual:maximumNumberOfSuspendedDeviceCredentialKeys4];
      }

      maximumNumberOfIssuerKeys3 = v16;
      if (maximumNumberOfIssuerKeys == maximumNumberOfIssuerKeys2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPNFCAccessSupportedConfiguration allocWithZone:zone];
  maximumNumberOfIssuerKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
  maximumNumberOfSuspendedDeviceCredentialKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v7 = [(HAPNFCAccessSupportedConfiguration *)v4 initWithMaximumNumberOfIssuerKeys:maximumNumberOfIssuerKeys maximumNumberOfSuspendedDeviceCredentialKeys:maximumNumberOfSuspendedDeviceCredentialKeys];

  return v7;
}

- (id)serializeWithError:(id *)error
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
  maximumNumberOfIssuerKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];

  if (maximumNumberOfIssuerKeys)
  {
    maximumNumberOfIssuerKeys2 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfIssuerKeys];
    v17 = 0;
    v7 = [maximumNumberOfIssuerKeys2 serializeWithError:&v17];
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
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  maximumNumberOfSuspendedDeviceCredentialKeys = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];

  if (!maximumNumberOfSuspendedDeviceCredentialKeys)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  maximumNumberOfSuspendedDeviceCredentialKeys2 = [(HAPNFCAccessSupportedConfiguration *)self maximumNumberOfSuspendedDeviceCredentialKeys];
  v16 = 0;
  v7 = [maximumNumberOfSuspendedDeviceCredentialKeys2 serializeWithError:&v16];
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

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_19:
    [(HAPNFCAccessSupportedConfiguration *)self setMaximumNumberOfIssuerKeys:v10, selfCopy];
    [(HAPNFCAccessSupportedConfiguration *)self setMaximumNumberOfSuspendedDeviceCredentialKeys:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_21;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
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
        if (errorCopy)
        {
          v18 = v11;
          v19 = 0;
          *errorCopy = v11;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_18:
      self = selfCopy;
      goto LABEL_19;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v19 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  return v19;
}

- (HAPNFCAccessSupportedConfiguration)initWithMaximumNumberOfIssuerKeys:(id)keys maximumNumberOfSuspendedDeviceCredentialKeys:(id)credentialKeys
{
  keysCopy = keys;
  credentialKeysCopy = credentialKeys;
  v12.receiver = self;
  v12.super_class = HAPNFCAccessSupportedConfiguration;
  v9 = [(HAPNFCAccessSupportedConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_maximumNumberOfIssuerKeys, keys);
    objc_storeStrong(&v10->_maximumNumberOfSuspendedDeviceCredentialKeys, credentialKeys);
  }

  return v10;
}

- (HAPNFCAccessSupportedConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessSupportedConfiguration;
  return [(HAPNFCAccessSupportedConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPNFCAccessSupportedConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessSupportedConfiguration *)v6 parseFromData:dataCopy error:&v11];
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