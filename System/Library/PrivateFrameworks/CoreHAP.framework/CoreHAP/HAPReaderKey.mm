@interface HAPReaderKey
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPReaderKey)init;
- (HAPReaderKey)initWithType:(id)type key:(id)key keyIdentifier:(id)identifier readerIdentifier:(id)readerIdentifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPReaderKey

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HAPReaderKey *)self type];
  v5 = [(HAPReaderKey *)self key];
  keyIdentifier = [(HAPReaderKey *)self keyIdentifier];
  readerIdentifier = [(HAPReaderKey *)self readerIdentifier];
  v8 = [v3 stringWithFormat:@"<HAPReaderKey type=%@, key=%@, keyIdentifier=%@, readerIdentifier=%@>", type, v5, keyIdentifier, readerIdentifier];

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
      type = [(HAPReaderKey *)self type];
      type2 = [(HAPReaderKey *)v6 type];
      if (type != type2)
      {
        type3 = [(HAPReaderKey *)self type];
        [(HAPReaderKey *)v6 type];
        v33 = v32 = type3;
        if (![type3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HAPReaderKey *)self key];
      v12 = [(HAPReaderKey *)v6 key];
      if (v11 != v12)
      {
        v3 = [(HAPReaderKey *)self key];
        v30 = [(HAPReaderKey *)v6 key];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (type == type2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      keyIdentifier = [(HAPReaderKey *)self keyIdentifier];
      keyIdentifier2 = [(HAPReaderKey *)v6 keyIdentifier];
      v31 = keyIdentifier;
      v15 = keyIdentifier == keyIdentifier2;
      v16 = keyIdentifier2;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        keyIdentifier3 = [(HAPReaderKey *)self keyIdentifier];
        keyIdentifier4 = [(HAPReaderKey *)v6 keyIdentifier];
        v26 = keyIdentifier3;
        if (![keyIdentifier3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      readerIdentifier = [(HAPReaderKey *)self readerIdentifier];
      readerIdentifier2 = [(HAPReaderKey *)v6 readerIdentifier];
      v20 = readerIdentifier2;
      if (readerIdentifier == readerIdentifier2)
      {

        v10 = 1;
      }

      else
      {
        readerIdentifier3 = [(HAPReaderKey *)self readerIdentifier];
        readerIdentifier4 = [(HAPReaderKey *)v6 readerIdentifier];
        v10 = [readerIdentifier3 isEqual:readerIdentifier4];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
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
  v4 = [HAPReaderKey allocWithZone:zone];
  type = [(HAPReaderKey *)self type];
  v6 = [(HAPReaderKey *)self key];
  keyIdentifier = [(HAPReaderKey *)self keyIdentifier];
  readerIdentifier = [(HAPReaderKey *)self readerIdentifier];
  v9 = [(HAPReaderKey *)v4 initWithType:type key:v6 keyIdentifier:keyIdentifier readerIdentifier:readerIdentifier];

  return v9;
}

- (id)serializeWithError:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  TLV8BufferInit();
  type = [(HAPReaderKey *)self type];

  if (type)
  {
    type2 = [(HAPReaderKey *)self type];
    v36 = 0;
    v7 = [type2 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_27:
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v24 = 0;
        goto LABEL_31;
      }

      v8 = 0;
      goto LABEL_30;
    }
  }

  v10 = [(HAPReaderKey *)self key];

  if (v10)
  {
    v11 = [(HAPReaderKey *)self key];
    v35 = 0;
    v7 = [v11 serializeWithError:&v35];
    v8 = v35;

    if (!v8)
    {
      bytes = [v7 bytes];
      v13 = bytes + [v7 length];
      while (1)
      {
        v14 = (v13 - bytes) >= 255 ? 255 : v13 - bytes;
        v15 = TLV8BufferAppend();
        if (v15)
        {
          goto LABEL_26;
        }

        bytes += v14;
        if (bytes >= v13)
        {

          goto LABEL_13;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:
  keyIdentifier = [(HAPReaderKey *)self keyIdentifier];

  if (keyIdentifier)
  {
    keyIdentifier2 = [(HAPReaderKey *)self keyIdentifier];
    v34 = 0;
    v7 = [keyIdentifier2 serializeWithError:&v34];
    v8 = v34;

    if (!v8)
    {
      bytes2 = [v7 bytes];
      v19 = bytes2 + [v7 length];
      while (1)
      {
        v20 = (v19 - bytes2) >= 255 ? 255 : v19 - bytes2;
        v15 = TLV8BufferAppend();
        if (v15)
        {
          break;
        }

        bytes2 += v20;
        if (bytes2 >= v19)
        {

          goto LABEL_22;
        }
      }

LABEL_26:
      v9 = v15;

      goto LABEL_27;
    }

LABEL_24:

    if (error)
    {
      v23 = v8;
      v24 = 0;
      *error = v8;
      goto LABEL_31;
    }

LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

LABEL_22:
  readerIdentifier = [(HAPReaderKey *)self readerIdentifier];

  if (readerIdentifier)
  {
    readerIdentifier2 = [(HAPReaderKey *)self readerIdentifier];
    v33 = 0;
    v7 = [readerIdentifier2 serializeWithError:&v33];
    v8 = v33;

    if (v8)
    {
      goto LABEL_24;
    }

    bytes3 = [v7 bytes];
    v28 = bytes3 + [v7 length];
    do
    {
      if ((v28 - bytes3) >= 255)
      {
        v29 = 255;
      }

      else
      {
        v29 = v28 - bytes3;
      }

      v30 = TLV8BufferAppend();
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      bytes3 += v31;
      if (v30)
      {
        v32 = 1;
      }

      else
      {
        v32 = bytes3 >= v28;
      }
    }

    while (!v32);
    v9 = v30;

    if (v9)
    {
      goto LABEL_27;
    }
  }

  v24 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:?];
  v8 = 0;
LABEL_31:
  TLV8BufferFree();

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 >= 1)
  {
    errorCopy = error;
    v29 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = bytes + v8;
    while (1)
    {
      v39 = 0;
      v37[1] = 0;
      v38 = 0;
      v37[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (errorCopy)
        {
          HMErrorFromOSStatus(Next);
          *errorCopy = v25 = 0;
        }

        else
        {
          v25 = 0;
        }

        v23 = v29;
        goto LABEL_33;
      }

      if (!v38)
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v26;
        if (v26)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      if (v39 > 2u)
      {
        if (v39 == 3)
        {
          v33 = v9;
          v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v37, &v33);
          v16 = v33;

          if (v16)
          {
            goto LABEL_16;
          }

          v32 = 0;
          v22 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v32];
          v9 = v32;
          v18 = v11;
          v11 = v22;
          goto LABEL_18;
        }

        if (v39 == 4)
        {
          v31 = v9;
          v15 = HAPTLVParseContiguousTlvs(4, bytes, v13, v37, &v31);
          v16 = v31;

          if (!v16)
          {
            v30 = 0;
            v19 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v30];
            v9 = v30;
            v18 = v10;
            v10 = v19;
            goto LABEL_18;
          }

LABEL_16:
          v9 = v16;
LABEL_19:
        }
      }

      else
      {
        if (v39 == 1)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v36 = v9;
          v20 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v36];
          v21 = v36;

          v18 = v12;
          v12 = v20;
          v9 = v21;
LABEL_18:

          goto LABEL_19;
        }

        if (v39 == 2)
        {
          v35 = v9;
          v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v37, &v35);
          v16 = v35;

          if (!v16)
          {
            v34 = 0;
            v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v34];
            v9 = v34;
            v18 = v29;
            v29 = v17;
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      bytes = v37[0];
      if (v37[0] >= v13)
      {
        if (v9)
        {
LABEL_22:
          v23 = v29;
          if (errorCopy)
          {
            v24 = v9;
            v25 = 0;
            *errorCopy = v9;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_33;
        }

LABEL_28:
        v23 = v29;
        goto LABEL_29;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v23 = 0;
  v12 = 0;
LABEL_29:
  [(HAPReaderKey *)self setType:v12];
  [(HAPReaderKey *)self setKey:v23];
  [(HAPReaderKey *)self setKeyIdentifier:v11];
  [(HAPReaderKey *)self setReaderIdentifier:v10];
  v9 = 0;
  v25 = 1;
LABEL_33:

  return v25;
}

- (HAPReaderKey)initWithType:(id)type key:(id)key keyIdentifier:(id)identifier readerIdentifier:(id)readerIdentifier
{
  typeCopy = type;
  keyCopy = key;
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  v18.receiver = self;
  v18.super_class = HAPReaderKey;
  v15 = [(HAPReaderKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v16->_key, key);
    objc_storeStrong(&v16->_keyIdentifier, identifier);
    objc_storeStrong(&v16->_readerIdentifier, readerIdentifier);
  }

  return v16;
}

- (HAPReaderKey)init
{
  v3.receiver = self;
  v3.super_class = HAPReaderKey;
  return [(HAPReaderKey *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPReaderKey);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPReaderKey *)v6 parseFromData:dataCopy error:&v11];
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