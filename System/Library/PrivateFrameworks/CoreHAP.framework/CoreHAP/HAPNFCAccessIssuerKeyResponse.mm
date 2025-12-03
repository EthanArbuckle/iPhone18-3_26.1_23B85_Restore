@interface HAPNFCAccessIssuerKeyResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPNFCAccessIssuerKeyResponse)init;
- (HAPNFCAccessIssuerKeyResponse)initWithIdentifier:(id)identifier statusCode:(id)code;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPNFCAccessIssuerKeyResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HAPNFCAccessIssuerKeyResponse *)self identifier];
  statusCode = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];
  v6 = [v3 stringWithFormat:@"<HAPNFCAccessIssuerKeyResponse identifier=%@, statusCode=%@>", identifier, statusCode];

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
      identifier = [(HAPNFCAccessIssuerKeyResponse *)self identifier];
      identifier2 = [(HAPNFCAccessIssuerKeyResponse *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(HAPNFCAccessIssuerKeyResponse *)self identifier];
        identifier4 = [(HAPNFCAccessIssuerKeyResponse *)v6 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = identifier3;
      }

      statusCode = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];
      statusCode2 = [(HAPNFCAccessIssuerKeyResponse *)v6 statusCode];
      if (statusCode == statusCode2)
      {
        v10 = 1;
      }

      else
      {
        statusCode3 = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];
        statusCode4 = [(HAPNFCAccessIssuerKeyResponse *)v6 statusCode];
        v10 = [statusCode3 isEqual:statusCode4];
      }

      identifier3 = v16;
      if (identifier == identifier2)
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
  v4 = [HAPNFCAccessIssuerKeyResponse allocWithZone:zone];
  identifier = [(HAPNFCAccessIssuerKeyResponse *)self identifier];
  statusCode = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];
  v7 = [(HAPNFCAccessIssuerKeyResponse *)v4 initWithIdentifier:identifier statusCode:statusCode];

  return v7;
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
  identifier = [(HAPNFCAccessIssuerKeyResponse *)self identifier];

  if (!identifier)
  {
LABEL_10:
    statusCode = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];

    if (statusCode)
    {
      statusCode2 = [(HAPNFCAccessIssuerKeyResponse *)self statusCode];
      v20 = 0;
      v7 = [statusCode2 serializeWithError:&v20];
      v8 = v20;

      if (v8)
      {
        goto LABEL_12;
      }

      [v7 bytes];
      [v7 length];
      v17 = TLV8BufferAppend();

      if (v17)
      {
LABEL_16:
        if (error)
        {
          HMErrorFromOSStatus(v17);
          v8 = 0;
          *error = v16 = 0;
          goto LABEL_21;
        }

        v8 = 0;
        goto LABEL_20;
      }
    }

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
    v8 = 0;
    goto LABEL_21;
  }

  identifier2 = [(HAPNFCAccessIssuerKeyResponse *)self identifier];
  v21 = 0;
  v7 = [identifier2 serializeWithError:&v21];
  v8 = v21;

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
        break;
      }

      bytes += v11;
      if (bytes >= v10)
      {

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_16;
  }

LABEL_12:

  if (error)
  {
    v15 = v8;
    v16 = 0;
    *error = v8;
    goto LABEL_21;
  }

LABEL_20:
  v16 = 0;
LABEL_21:
  TLV8BufferFree();

  v18 = *MEMORY[0x277D85DE8];

  return v16;
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
LABEL_16:
    [(HAPNFCAccessIssuerKeyResponse *)self setIdentifier:v10, errorCopy];
    [(HAPNFCAccessIssuerKeyResponse *)self setStatusCode:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v29 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v19 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      break;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v11;
      v18 = [HAPNFCAccessResponseStatusWrapper parsedFromData:v14 error:&v24];
      v15 = v24;

      v17 = v9;
      v9 = v18;
LABEL_10:

LABEL_11:
      v11 = v15;
      goto LABEL_12;
    }

    if (v29 == 1)
    {
      v26 = v11;
      v14 = HAPTLVParseContiguousTlvs(1, bytes, v12, v27, &v26);
      v15 = v26;

      if (!v15)
      {
        v25 = 0;
        v16 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v25];
        v15 = v25;
        v17 = v10;
        v10 = v16;
        goto LABEL_10;
      }

      goto LABEL_11;
    }

LABEL_12:
    bytes = v27[0];
    if (v27[0] >= v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (errorCopy)
  {
    v21 = v11;
    v19 = 0;
    *errorCopy = v11;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HAPNFCAccessIssuerKeyResponse)initWithIdentifier:(id)identifier statusCode:(id)code
{
  identifierCopy = identifier;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = HAPNFCAccessIssuerKeyResponse;
  v9 = [(HAPNFCAccessIssuerKeyResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_statusCode, code);
  }

  return v10;
}

- (HAPNFCAccessIssuerKeyResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessIssuerKeyResponse;
  return [(HAPNFCAccessIssuerKeyResponse *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPNFCAccessIssuerKeyResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessIssuerKeyResponse *)v6 parseFromData:dataCopy error:&v11];
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