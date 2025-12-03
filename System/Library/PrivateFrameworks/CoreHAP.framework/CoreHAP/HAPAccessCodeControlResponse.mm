@interface HAPAccessCodeControlResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPAccessCodeControlResponse)init;
- (HAPAccessCodeControlResponse)initWithIdentifier:(id)identifier accessCode:(id)code flags:(id)flags statusCode:(id)statusCode;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPAccessCodeControlResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HAPAccessCodeControlResponse *)self identifier];
  accessCode = [(HAPAccessCodeControlResponse *)self accessCode];
  flags = [(HAPAccessCodeControlResponse *)self flags];
  statusCode = [(HAPAccessCodeControlResponse *)self statusCode];
  v8 = [v3 stringWithFormat:@"<HAPAccessCodeControlResponse identifier=%@, accessCode=%@, flags=%@, statusCode=%@>", identifier, accessCode, flags, statusCode];

  return v8;
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
      identifier = [(HAPAccessCodeControlResponse *)self identifier];
      identifier2 = [(HAPAccessCodeControlResponse *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(HAPAccessCodeControlResponse *)self identifier];
        [(HAPAccessCodeControlResponse *)v6 identifier];
        v33 = v32 = identifier3;
        if (![identifier3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      accessCode = [(HAPAccessCodeControlResponse *)self accessCode];
      accessCode2 = [(HAPAccessCodeControlResponse *)v6 accessCode];
      if (accessCode != accessCode2)
      {
        accessCode3 = [(HAPAccessCodeControlResponse *)self accessCode];
        accessCode4 = [(HAPAccessCodeControlResponse *)v6 accessCode];
        if (![accessCode3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (identifier == identifier2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      flags = [(HAPAccessCodeControlResponse *)self flags];
      flags2 = [(HAPAccessCodeControlResponse *)v6 flags];
      v31 = flags;
      v15 = flags == flags2;
      v16 = flags2;
      if (v15)
      {
        v28 = accessCode3;
        v29 = accessCode2;
      }

      else
      {
        flags3 = [(HAPAccessCodeControlResponse *)self flags];
        flags4 = [(HAPAccessCodeControlResponse *)v6 flags];
        v26 = flags3;
        if (![flags3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = accessCode3;
        v29 = accessCode2;
      }

      v27 = v16;
      statusCode = [(HAPAccessCodeControlResponse *)self statusCode];
      statusCode2 = [(HAPAccessCodeControlResponse *)v6 statusCode];
      v20 = statusCode2;
      if (statusCode == statusCode2)
      {

        v10 = 1;
      }

      else
      {
        statusCode3 = [(HAPAccessCodeControlResponse *)self statusCode];
        statusCode4 = [(HAPAccessCodeControlResponse *)v6 statusCode];
        v10 = [statusCode3 isEqual:statusCode4];
      }

      v23 = v31;
      v16 = v27;
      accessCode3 = v28;
      accessCode2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (accessCode == accessCode2)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPAccessCodeControlResponse allocWithZone:zone];
  identifier = [(HAPAccessCodeControlResponse *)self identifier];
  accessCode = [(HAPAccessCodeControlResponse *)self accessCode];
  flags = [(HAPAccessCodeControlResponse *)self flags];
  statusCode = [(HAPAccessCodeControlResponse *)self statusCode];
  v9 = [(HAPAccessCodeControlResponse *)v4 initWithIdentifier:identifier accessCode:accessCode flags:flags statusCode:statusCode];

  return v9;
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
  identifier = [(HAPAccessCodeControlResponse *)self identifier];

  if (identifier)
  {
    identifier2 = [(HAPAccessCodeControlResponse *)self identifier];
    v27 = 0;
    v7 = [identifier2 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_4:
      v10 = v9;

LABEL_5:
      if (error)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_27;
      }

      v8 = 0;
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }
  }

  accessCode = [(HAPAccessCodeControlResponse *)self accessCode];

  if (accessCode)
  {
    accessCode2 = [(HAPAccessCodeControlResponse *)self accessCode];
    v26 = 0;
    v7 = [accessCode2 serializeWithError:&v26];
    v8 = v26;

    if (!v8)
    {
      bytes = [v7 bytes];
      v15 = bytes + [v7 length];
      while (1)
      {
        v16 = (v15 - bytes) >= 255 ? 255 : v15 - bytes;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        bytes += v16;
        if (bytes >= v15)
        {

          goto LABEL_18;
        }
      }
    }

LABEL_24:

    if (error)
    {
      v21 = v8;
      v11 = 0;
      *error = v8;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_18:
  flags = [(HAPAccessCodeControlResponse *)self flags];

  if (flags)
  {
    flags2 = [(HAPAccessCodeControlResponse *)self flags];
    v25 = 0;
    v7 = [flags2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  statusCode = [(HAPAccessCodeControlResponse *)self statusCode];

  if (statusCode)
  {
    statusCode2 = [(HAPAccessCodeControlResponse *)self statusCode];
    v24 = 0;
    v7 = [statusCode2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_27:
  TLV8BufferFree();

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    errorCopy = error;
    v28 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = bytes + v8;
    while (1)
    {
      v36 = 0;
      v34[1] = 0;
      v35 = 0;
      v34[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus(Next);
          *errorCopy = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

        v22 = v28;
        goto LABEL_30;
      }

      if (!v35)
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v25;
        if (v25)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }

      if (v36 > 2u)
      {
        if (v36 == 3)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v9;
          v21 = [HAPAccessCodeFlagsWrapper parsedFromData:v15 error:&v30];
          v16 = v30;

          v18 = v11;
          v11 = v21;
LABEL_15:

LABEL_16:
          v9 = v16;
          goto LABEL_17;
        }

        if (v36 == 4)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v9;
          v19 = [HAPAccessCodeResponseStatusWrapper parsedFromData:v15 error:&v29];
          v16 = v29;

          v18 = v10;
          v10 = v19;
          goto LABEL_15;
        }
      }

      else
      {
        if (v36 == 1)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v9;
          v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v33];
          v16 = v33;

          v18 = v12;
          v12 = v20;
          goto LABEL_15;
        }

        if (v36 == 2)
        {
          v32 = v9;
          v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v34, &v32);
          v16 = v32;

          if (!v16)
          {
            v31 = 0;
            v17 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v31];
            v16 = v31;
            v18 = v28;
            v28 = v17;
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }

LABEL_17:
      bytes = v34[0];
      if (v34[0] >= v13)
      {
        if (v9)
        {
LABEL_19:
          v22 = v28;
          if (errorCopy)
          {
            v23 = v9;
            v24 = 0;
            *errorCopy = v9;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_30;
        }

LABEL_25:
        v22 = v28;
        goto LABEL_26;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v22 = 0;
  v12 = 0;
LABEL_26:
  [(HAPAccessCodeControlResponse *)self setIdentifier:v12];
  [(HAPAccessCodeControlResponse *)self setAccessCode:v22];
  [(HAPAccessCodeControlResponse *)self setFlags:v11];
  [(HAPAccessCodeControlResponse *)self setStatusCode:v10];
  v9 = 0;
  v24 = 1;
LABEL_30:

  return v24;
}

- (HAPAccessCodeControlResponse)initWithIdentifier:(id)identifier accessCode:(id)code flags:(id)flags statusCode:(id)statusCode
{
  identifierCopy = identifier;
  codeCopy = code;
  flagsCopy = flags;
  statusCodeCopy = statusCode;
  v18.receiver = self;
  v18.super_class = HAPAccessCodeControlResponse;
  v15 = [(HAPAccessCodeControlResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_accessCode, code);
    objc_storeStrong(&v16->_flags, flags);
    objc_storeStrong(&v16->_statusCode, statusCode);
  }

  return v16;
}

- (HAPAccessCodeControlResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeControlResponse;
  return [(HAPAccessCodeControlResponse *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPAccessCodeControlResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeControlResponse *)v6 parseFromData:dataCopy error:&v11];
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