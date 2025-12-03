@interface HAP2TLVParamAccessoryList
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVParamAccessoryList)init;
- (HAP2TLVParamAccessoryList)initWithAccessorySignatureList:(id)list;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVParamAccessoryList

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  accessorySignatureList = [(HAP2TLVParamAccessoryList *)self accessorySignatureList];
  v4 = [v2 stringWithFormat:@"<HAP2TLVParamAccessoryList accessorySignatureList=%@>", accessorySignatureList];

  return v4;
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
      v5 = equalCopy;
      accessorySignatureList = [(HAP2TLVParamAccessoryList *)self accessorySignatureList];
      accessorySignatureList2 = [(HAP2TLVParamAccessoryList *)v5 accessorySignatureList];
      if (accessorySignatureList == accessorySignatureList2)
      {
        v10 = 1;
      }

      else
      {
        accessorySignatureList3 = [(HAP2TLVParamAccessoryList *)self accessorySignatureList];
        accessorySignatureList4 = [(HAP2TLVParamAccessoryList *)v5 accessorySignatureList];
        v10 = [accessorySignatureList3 isEqual:accessorySignatureList4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAP2TLVParamAccessoryList allocWithZone:zone];
  accessorySignatureList = [(HAP2TLVParamAccessoryList *)self accessorySignatureList];
  v6 = [(HAP2TLVParamAccessoryList *)v4 initWithAccessorySignatureList:accessorySignatureList];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
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
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  TLV8BufferInit();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  accessorySignatureList = [(HAP2TLVParamAccessoryList *)self accessorySignatureList];
  v6 = [accessorySignatureList countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
LABEL_17:

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:?];
    v20 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v28;
  v9 = 1;
  errorCopy = error;
  while (1)
  {
    v10 = 0;
LABEL_4:
    if (*v28 != v8)
    {
      objc_enumerationMutation(accessorySignatureList);
    }

    v11 = *(*(&v27 + 1) + 8 * v10);
    if ((v9 & 1) == 0)
    {
      v12 = TLV8BufferAppend();
      if (v12)
      {
        v21 = v12;
LABEL_19:

        if (errorCopy)
        {
          HMErrorFromOSStatus(v21);
          v20 = 0;
          *errorCopy = v19 = 0;
          goto LABEL_23;
        }

        v20 = 0;
        goto LABEL_22;
      }
    }

    v26 = 0;
    v13 = [v11 serializeWithError:{&v26, errorCopy}];
    v14 = v26;
    if (v14)
    {
      break;
    }

    bytes = [v13 bytes];
    v16 = bytes + [v13 length];
    do
    {
      if ((v16 - bytes) >= 255)
      {
        v17 = 255;
      }

      else
      {
        v17 = v16 - bytes;
      }

      v18 = TLV8BufferAppend();
      if (v18)
      {
        v21 = v18;

        goto LABEL_19;
      }

      bytes += v17;
    }

    while (bytes < v16);

    v9 = 0;
    if (++v10 != v7)
    {
      goto LABEL_4;
    }

    v7 = [accessorySignatureList countByEnumeratingWithState:&v27 objects:v31 count:16];
    v9 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v20 = v14;

  if (!errorCopy)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v24 = v20;
  v19 = 0;
  *errorCopy = v20;
LABEL_23:
  TLV8BufferFree();

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  array = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
LABEL_18:
    [(HAP2TLVParamAccessoryList *)self setAccessorySignatureList:array];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    v10 = 0;
    v11 = bytes + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v23)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v10 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (v24 == 25)
      {
        v21 = v10;
        v13 = HAPTLVParseContiguousTlvs(25, bytes, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAP2TLVParamAccessorySignature parsedFromData:v13 error:&v20];
          v14 = v20;
          if (!v14)
          {
            [array addObject:v15];
          }
        }

        v10 = v14;
      }

      bytes = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (error)
        {
          v16 = v10;
          v17 = 0;
          *error = v10;
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if (error)
    {
      HMErrorFromOSStatus(Next);
      *error = v17 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (HAP2TLVParamAccessoryList)initWithAccessorySignatureList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = HAP2TLVParamAccessoryList;
  v5 = [(HAP2TLVParamAccessoryList *)&v9 init];
  if (v5)
  {
    v6 = [listCopy mutableCopy];
    accessorySignatureList = v5->_accessorySignatureList;
    v5->_accessorySignatureList = v6;
  }

  return v5;
}

- (HAP2TLVParamAccessoryList)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamAccessoryList;
  return [(HAP2TLVParamAccessoryList *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVParamAccessoryList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamAccessoryList *)v6 parseFromData:dataCopy error:&v11];
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