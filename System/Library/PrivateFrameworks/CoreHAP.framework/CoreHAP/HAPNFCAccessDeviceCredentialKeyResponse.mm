@interface HAPNFCAccessDeviceCredentialKeyResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPNFCAccessDeviceCredentialKeyResponse)init;
- (HAPNFCAccessDeviceCredentialKeyResponse)initWithIdentifier:(id)identifier issuerKeyIdentifier:(id)keyIdentifier statusCode:(id)code;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPNFCAccessDeviceCredentialKeyResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
  issuerKeyIdentifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
  statusCode = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
  v7 = [v3 stringWithFormat:@"<HAPNFCAccessDeviceCredentialKeyResponse identifier=%@, issuerKeyIdentifier=%@, statusCode=%@>", identifier, issuerKeyIdentifier, statusCode];

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
      identifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
      identifier2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
        identifier4 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      issuerKeyIdentifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
      issuerKeyIdentifier2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 issuerKeyIdentifier];
      v13 = issuerKeyIdentifier2;
      if (issuerKeyIdentifier == issuerKeyIdentifier2)
      {
        v28 = issuerKeyIdentifier2;
      }

      else
      {
        issuerKeyIdentifier3 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
        issuerKeyIdentifier4 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 issuerKeyIdentifier];
        if (![issuerKeyIdentifier3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = issuerKeyIdentifier3;
        v28 = v13;
      }

      statusCode = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
      statusCode2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 statusCode];
      v17 = statusCode2;
      if (statusCode == statusCode2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
        v18 = v25 = identifier3;
        [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 statusCode];
        v24 = issuerKeyIdentifier;
        v19 = identifier4;
        v20 = identifier2;
        v22 = v21 = identifier;
        v10 = [v18 isEqual:v22];

        identifier = v21;
        identifier2 = v20;
        identifier4 = v19;
        issuerKeyIdentifier = v24;

        identifier3 = v25;
      }

      v13 = v28;
      issuerKeyIdentifier3 = v26;
      if (issuerKeyIdentifier == v28)
      {
LABEL_18:

        if (identifier == identifier2)
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
  v4 = [HAPNFCAccessDeviceCredentialKeyResponse allocWithZone:zone];
  identifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
  issuerKeyIdentifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
  statusCode = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
  v8 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v4 initWithIdentifier:identifier issuerKeyIdentifier:issuerKeyIdentifier statusCode:statusCode];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
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
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  TLV8BufferInit();
  identifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];

  if (identifier)
  {
    identifier2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
    v27 = 0;
    v7 = [identifier2 serializeWithError:&v27];
    v8 = v27;

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
  issuerKeyIdentifier = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];

  if (issuerKeyIdentifier)
  {
    issuerKeyIdentifier2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
    v26 = 0;
    v7 = [issuerKeyIdentifier2 serializeWithError:&v26];
    v8 = v26;

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
        goto LABEL_30;
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
      goto LABEL_30;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_30;
  }

LABEL_19:
  statusCode = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];

  if (statusCode)
  {
    statusCode2 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
    v25 = 0;
    v7 = [statusCode2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v22 = TLV8BufferAppend();

    if (v22)
    {
      goto LABEL_24;
    }
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_30:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

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
LABEL_24:
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setIdentifier:v12];
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setIssuerKeyIdentifier:v11];
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setStatusCode:v10];
    v9 = 0;
    v23 = 1;
    goto LABEL_26;
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
      break;
    }

    if (!v33)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v24;
      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    switch(v34)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v19 = [HAPNFCAccessResponseStatusWrapper parsedFromData:v15 error:&v27];
        v20 = v27;

        v18 = v10;
        v10 = v19;
        v9 = v20;
        goto LABEL_14;
      case 2:
        v29 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v32, &v29);
        v16 = v29;

        if (v16)
        {
          goto LABEL_11;
        }

        v28 = 0;
        v21 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v28];
        v9 = v28;
        v18 = v11;
        v11 = v21;
LABEL_14:

LABEL_15:
        break;
      case 1:
        v31 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v32, &v31);
        v16 = v31;

        if (!v16)
        {
          v30 = 0;
          v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v30];
          v9 = v30;
          v18 = v12;
          v12 = v17;
          goto LABEL_14;
        }

LABEL_11:
        v9 = v16;
        goto LABEL_15;
    }

    bytes = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (errorCopy)
      {
        v22 = v9;
        v23 = 0;
        *errorCopy = v9;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v23 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v23 = 0;
LABEL_26:

  return v23;
}

- (HAPNFCAccessDeviceCredentialKeyResponse)initWithIdentifier:(id)identifier issuerKeyIdentifier:(id)keyIdentifier statusCode:(id)code
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  codeCopy = code;
  v15.receiver = self;
  v15.super_class = HAPNFCAccessDeviceCredentialKeyResponse;
  v12 = [(HAPNFCAccessDeviceCredentialKeyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_issuerKeyIdentifier, keyIdentifier);
    objc_storeStrong(&v13->_statusCode, code);
  }

  return v13;
}

- (HAPNFCAccessDeviceCredentialKeyResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessDeviceCredentialKeyResponse;
  return [(HAPNFCAccessDeviceCredentialKeyResponse *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPNFCAccessDeviceCredentialKeyResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessDeviceCredentialKeyResponse *)v6 parseFromData:dataCopy error:&v11];
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