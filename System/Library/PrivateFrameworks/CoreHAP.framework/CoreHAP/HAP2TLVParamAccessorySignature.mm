@interface HAP2TLVParamAccessorySignature
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVParamAccessorySignature)init;
- (HAP2TLVParamAccessorySignature)initWithAccessoryID:(id)d serviceList:(id)list;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVParamAccessorySignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryID = [(HAP2TLVParamAccessorySignature *)self accessoryID];
  serviceList = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v6 = [v3 stringWithFormat:@"<HAP2TLVParamAccessorySignature accessoryID=%@, serviceList=%@>", accessoryID, serviceList];

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
      accessoryID = [(HAP2TLVParamAccessorySignature *)self accessoryID];
      accessoryID2 = [(HAP2TLVParamAccessorySignature *)v6 accessoryID];
      if (accessoryID != accessoryID2)
      {
        accessoryID3 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
        accessoryID4 = [(HAP2TLVParamAccessorySignature *)v6 accessoryID];
        if (![accessoryID3 isEqual:accessoryID4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = accessoryID3;
      }

      serviceList = [(HAP2TLVParamAccessorySignature *)self serviceList];
      serviceList2 = [(HAP2TLVParamAccessorySignature *)v6 serviceList];
      if (serviceList == serviceList2)
      {
        v10 = 1;
      }

      else
      {
        serviceList3 = [(HAP2TLVParamAccessorySignature *)self serviceList];
        serviceList4 = [(HAP2TLVParamAccessorySignature *)v6 serviceList];
        v10 = [serviceList3 isEqual:serviceList4];
      }

      accessoryID3 = v16;
      if (accessoryID == accessoryID2)
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
  v4 = [HAP2TLVParamAccessorySignature allocWithZone:zone];
  accessoryID = [(HAP2TLVParamAccessorySignature *)self accessoryID];
  serviceList = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v7 = [(HAP2TLVParamAccessorySignature *)v4 initWithAccessoryID:accessoryID serviceList:serviceList];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
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
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  TLV8BufferInit();
  accessoryID = [(HAP2TLVParamAccessorySignature *)self accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
    v23 = 0;
    v7 = [accessoryID2 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_21:
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_26;
      }

      v8 = 0;
      goto LABEL_25;
    }
  }

  serviceList = [(HAP2TLVParamAccessorySignature *)self serviceList];

  if (!serviceList)
  {
LABEL_23:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:?];
    v8 = 0;
    goto LABEL_26;
  }

  serviceList2 = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v22 = 0;
  v7 = [serviceList2 serializeWithError:&v22];
  v8 = v22;

  if (!v8)
  {
    bytes = [v7 bytes];
    v15 = bytes + [v7 length];
    do
    {
      if ((v15 - bytes) >= 255)
      {
        v16 = 255;
      }

      else
      {
        v16 = v15 - bytes;
      }

      v17 = TLV8BufferAppend();
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      bytes += v18;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = bytes >= v15;
      }
    }

    while (!v19);
    v9 = v17;

    if (v9)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

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
LABEL_16:
    [(HAP2TLVParamAccessorySignature *)self setAccessoryID:v10, errorCopy];
    [(HAP2TLVParamAccessorySignature *)self setServiceList:v9];
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

    if (v29 == 22)
    {
      v25 = v11;
      v14 = HAPTLVParseContiguousTlvs(22, bytes, v12, v27, &v25);
      v16 = v25;

      if (!v16)
      {
        v24 = 0;
        v18 = [HAP2TLVParamServiceList parsedFromData:v14 error:&v24];
        v16 = v24;
        v17 = v9;
        v9 = v18;
LABEL_10:
      }

      v11 = v16;
      goto LABEL_12;
    }

    if (v29 == 26)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v26 = v11;
      v15 = [HAPTLVUnsignedNumberValue parsedFromData:v14 error:&v26];
      v16 = v26;

      v17 = v10;
      v10 = v15;
      goto LABEL_10;
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

- (HAP2TLVParamAccessorySignature)initWithAccessoryID:(id)d serviceList:(id)list
{
  dCopy = d;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = HAP2TLVParamAccessorySignature;
  v9 = [(HAP2TLVParamAccessorySignature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, d);
    objc_storeStrong(&v10->_serviceList, list);
  }

  return v10;
}

- (HAP2TLVParamAccessorySignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamAccessorySignature;
  return [(HAP2TLVParamAccessorySignature *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVParamAccessorySignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamAccessorySignature *)v6 parseFromData:dataCopy error:&v11];
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