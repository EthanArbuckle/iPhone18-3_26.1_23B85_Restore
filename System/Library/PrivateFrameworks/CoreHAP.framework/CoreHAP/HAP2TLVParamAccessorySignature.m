@interface HAP2TLVParamAccessorySignature
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVParamAccessorySignature)init;
- (HAP2TLVParamAccessorySignature)initWithAccessoryID:(id)a3 serviceList:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVParamAccessorySignature

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
  v5 = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v6 = [v3 stringWithFormat:@"<HAP2TLVParamAccessorySignature accessoryID=%@, serviceList=%@>", v4, v5];

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
      v7 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
      v8 = [(HAP2TLVParamAccessorySignature *)v6 accessoryID];
      if (v7 != v8)
      {
        v9 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
        v3 = [(HAP2TLVParamAccessorySignature *)v6 accessoryID];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAP2TLVParamAccessorySignature *)self serviceList];
      v12 = [(HAP2TLVParamAccessorySignature *)v6 serviceList];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAP2TLVParamAccessorySignature *)self serviceList];
        v14 = [(HAP2TLVParamAccessorySignature *)v6 serviceList];
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
  v4 = [HAP2TLVParamAccessorySignature allocWithZone:a3];
  v5 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
  v6 = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v7 = [(HAP2TLVParamAccessorySignature *)v4 initWithAccessoryID:v5 serviceList:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAP2TLVParamAccessorySignature *)self accessoryID];

  if (v5)
  {
    v6 = [(HAP2TLVParamAccessorySignature *)self accessoryID];
    v23 = 0;
    v7 = [v6 serializeWithError:&v23];
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
      if (a3)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_26;
      }

      v8 = 0;
      goto LABEL_25;
    }
  }

  v10 = [(HAP2TLVParamAccessorySignature *)self serviceList];

  if (!v10)
  {
LABEL_23:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:?];
    v8 = 0;
    goto LABEL_26;
  }

  v11 = [(HAP2TLVParamAccessorySignature *)self serviceList];
  v22 = 0;
  v7 = [v11 serializeWithError:&v22];
  v8 = v22;

  if (!v8)
  {
    v14 = [v7 bytes];
    v15 = v14 + [v7 length];
    do
    {
      if ((v15 - v14) >= 255)
      {
        v16 = 255;
      }

      else
      {
        v16 = v15 - v14;
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

      v14 += v18;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14 >= v15;
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

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

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
LABEL_16:
    [(HAP2TLVParamAccessorySignature *)self setAccessoryID:v10, v23];
    [(HAP2TLVParamAccessorySignature *)self setServiceList:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v23 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v29 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v23)
      {
        HMErrorFromOSStatus(Next);
        *v23 = v19 = 0;
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
      v14 = HAPTLVParseContiguousTlvs(22, v7, v12, v27, &v25);
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
    v7 = v27[0];
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
  if (v23)
  {
    v21 = v11;
    v19 = 0;
    *v23 = v11;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HAP2TLVParamAccessorySignature)initWithAccessoryID:(id)a3 serviceList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAP2TLVParamAccessorySignature;
  v9 = [(HAP2TLVParamAccessorySignature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, a3);
    objc_storeStrong(&v10->_serviceList, a4);
  }

  return v10;
}

- (HAP2TLVParamAccessorySignature)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVParamAccessorySignature;
  return [(HAP2TLVParamAccessorySignature *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVParamAccessorySignature);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVParamAccessorySignature *)v6 parseFromData:v5 error:&v11];
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