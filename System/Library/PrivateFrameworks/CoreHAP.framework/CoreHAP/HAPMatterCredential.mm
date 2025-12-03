@interface HAPMatterCredential
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPMatterCredential)init;
- (HAPMatterCredential)initWithIssuerKey:(id)key readerKey:(id)readerKey deviceCredentialKey:(id)credentialKey;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPMatterCredential

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  issuerKey = [(HAPMatterCredential *)self issuerKey];
  readerKey = [(HAPMatterCredential *)self readerKey];
  deviceCredentialKey = [(HAPMatterCredential *)self deviceCredentialKey];
  v7 = [v3 stringWithFormat:@"<HAPMatterCredential issuerKey=%@, readerKey=%@, deviceCredentialKey=%@>", issuerKey, readerKey, deviceCredentialKey];

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
      issuerKey = [(HAPMatterCredential *)self issuerKey];
      issuerKey2 = [(HAPMatterCredential *)v7 issuerKey];
      if (issuerKey != issuerKey2)
      {
        issuerKey3 = [(HAPMatterCredential *)self issuerKey];
        issuerKey4 = [(HAPMatterCredential *)v7 issuerKey];
        if (![issuerKey3 isEqual:issuerKey4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      readerKey = [(HAPMatterCredential *)self readerKey];
      readerKey2 = [(HAPMatterCredential *)v7 readerKey];
      v13 = readerKey2;
      if (readerKey == readerKey2)
      {
        v28 = readerKey2;
      }

      else
      {
        readerKey3 = [(HAPMatterCredential *)self readerKey];
        readerKey4 = [(HAPMatterCredential *)v7 readerKey];
        if (![readerKey3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = readerKey3;
        v28 = v13;
      }

      deviceCredentialKey = [(HAPMatterCredential *)self deviceCredentialKey];
      deviceCredentialKey2 = [(HAPMatterCredential *)v7 deviceCredentialKey];
      v17 = deviceCredentialKey2;
      if (deviceCredentialKey == deviceCredentialKey2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPMatterCredential *)self deviceCredentialKey];
        v18 = v25 = issuerKey3;
        [(HAPMatterCredential *)v7 deviceCredentialKey];
        v24 = readerKey;
        v19 = issuerKey4;
        v20 = issuerKey2;
        v22 = v21 = issuerKey;
        v10 = [v18 isEqual:v22];

        issuerKey = v21;
        issuerKey2 = v20;
        issuerKey4 = v19;
        readerKey = v24;

        issuerKey3 = v25;
      }

      v13 = v28;
      readerKey3 = v26;
      if (readerKey == v28)
      {
LABEL_18:

        if (issuerKey == issuerKey2)
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
  v4 = [HAPMatterCredential allocWithZone:zone];
  issuerKey = [(HAPMatterCredential *)self issuerKey];
  readerKey = [(HAPMatterCredential *)self readerKey];
  deviceCredentialKey = [(HAPMatterCredential *)self deviceCredentialKey];
  v8 = [(HAPMatterCredential *)v4 initWithIssuerKey:issuerKey readerKey:readerKey deviceCredentialKey:deviceCredentialKey];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
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
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  TLV8BufferInit();
  issuerKey = [(HAPMatterCredential *)self issuerKey];

  if (issuerKey)
  {
    issuerKey2 = [(HAPMatterCredential *)self issuerKey];
    v33 = 0;
    v7 = [issuerKey2 serializeWithError:&v33];
    v8 = v33;

    if (!v8)
    {
      bytes = [v7 bytes];
      v10 = bytes + [v7 length];
      while (1)
      {
        v11 = (v10 - bytes) >= 255 ? 255 : v10 - bytes;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          goto LABEL_23;
        }

        bytes += v11;
        if (bytes >= v10)
        {

          goto LABEL_10;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_10:
  readerKey = [(HAPMatterCredential *)self readerKey];

  if (readerKey)
  {
    readerKey2 = [(HAPMatterCredential *)self readerKey];
    v32 = 0;
    v7 = [readerKey2 serializeWithError:&v32];
    v8 = v32;

    if (!v8)
    {
      bytes2 = [v7 bytes];
      v16 = bytes2 + [v7 length];
      while (1)
      {
        v17 = (v16 - bytes2) >= 255 ? 255 : v16 - bytes2;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }

        bytes2 += v17;
        if (bytes2 >= v16)
        {

          goto LABEL_19;
        }
      }

LABEL_23:
      v22 = v12;

LABEL_24:
      if (error)
      {
        HMErrorFromOSStatus(v22);
        v8 = 0;
        *error = v21 = 0;
        goto LABEL_42;
      }

      v8 = 0;
      goto LABEL_27;
    }

LABEL_21:

    if (error)
    {
      v20 = v8;
      v21 = 0;
      *error = v8;
      goto LABEL_42;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_42;
  }

LABEL_19:
  deviceCredentialKey = [(HAPMatterCredential *)self deviceCredentialKey];

  if (deviceCredentialKey)
  {
    deviceCredentialKey2 = [(HAPMatterCredential *)self deviceCredentialKey];
    v31 = 0;
    v7 = [deviceCredentialKey2 serializeWithError:&v31];
    v8 = v31;

    if (v8)
    {
      goto LABEL_21;
    }

    bytes3 = [v7 bytes];
    v24 = bytes3 + [v7 length];
    do
    {
      if ((v24 - bytes3) >= 255)
      {
        v25 = 255;
      }

      else
      {
        v25 = v24 - bytes3;
      }

      v26 = TLV8BufferAppend();
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      bytes3 += v27;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = bytes3 >= v24;
      }
    }

    while (!v28);
    v22 = v26;

    if (v22)
    {
      goto LABEL_24;
    }
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:?];
  v8 = 0;
LABEL_42:
  TLV8BufferFree();

  v29 = *MEMORY[0x277D85DE8];

  return v21;
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
    [(HAPMatterCredential *)self setIssuerKey:v12];
    [(HAPMatterCredential *)self setReaderKey:v11];
    [(HAPMatterCredential *)self setDeviceCredentialKey:v10];
    v9 = 0;
    v19 = 1;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v31 = 0;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (error)
      {
        HMErrorFromOSStatus(Next);
        *error = v19 = 0;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (!v30)
    {
      break;
    }

    switch(v31)
    {
      case 3:
        v24 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v29, &v24);
        v16 = v24;

        if (v16)
        {
          goto LABEL_13;
        }

        v23 = 0;
        v17 = &v23;
        [HAPDeviceCredentialKey parsedFromData:v15 error:&v23];
        v10 = v18 = v10;
        goto LABEL_15;
      case 2:
        v26 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v29, &v26);
        v16 = v26;

        if (v16)
        {
          goto LABEL_13;
        }

        v25 = 0;
        v17 = &v25;
        [HAPReaderKey parsedFromData:v15 error:&v25];
        v11 = v18 = v11;
LABEL_15:
        v9 = *v17;

        goto LABEL_16;
      case 1:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v29, &v28);
        v16 = v28;

        if (!v16)
        {
          v27 = 0;
          v17 = &v27;
          [HAPIssuerKey parsedFromData:v15 error:&v27];
          v12 = v18 = v12;
          goto LABEL_15;
        }

LABEL_13:
        v9 = v16;
LABEL_16:

        break;
    }

    bytes = v29[0];
    if (v29[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (error)
  {
    v21 = v9;
    v19 = 0;
    *error = v9;
    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
LABEL_28:

  return v19;
}

- (HAPMatterCredential)initWithIssuerKey:(id)key readerKey:(id)readerKey deviceCredentialKey:(id)credentialKey
{
  keyCopy = key;
  readerKeyCopy = readerKey;
  credentialKeyCopy = credentialKey;
  v15.receiver = self;
  v15.super_class = HAPMatterCredential;
  v12 = [(HAPMatterCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_issuerKey, key);
    objc_storeStrong(&v13->_readerKey, readerKey);
    objc_storeStrong(&v13->_deviceCredentialKey, credentialKey);
  }

  return v13;
}

- (HAPMatterCredential)init
{
  v3.receiver = self;
  v3.super_class = HAPMatterCredential;
  return [(HAPMatterCredential *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPMatterCredential);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPMatterCredential *)v6 parseFromData:dataCopy error:&v11];
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