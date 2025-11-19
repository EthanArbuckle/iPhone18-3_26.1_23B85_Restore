@interface HAP2TLVAccessorySignatureReadRequest
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVAccessorySignatureReadRequest)init;
- (HAP2TLVAccessorySignatureReadRequest)initWithAccessoryList:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVAccessorySignatureReadRequest

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];
  v4 = [v2 stringWithFormat:@"<HAP2TLVAccessorySignatureReadRequest accessoryList=%@>", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];
      v7 = [(HAP2TLVAccessorySignatureReadRequest *)v5 accessoryList];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];
        v9 = [(HAP2TLVAccessorySignatureReadRequest *)v5 accessoryList];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAP2TLVAccessorySignatureReadRequest allocWithZone:a3];
  v5 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];
  v6 = [(HAP2TLVAccessorySignatureReadRequest *)v4 initWithAccessoryList:v5];

  return v6;
}

- (id)serializeWithError:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  TLV8BufferInit();
  v5 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];

  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [(HAP2TLVAccessorySignatureReadRequest *)self accessoryList];
  v20 = 0;
  v7 = [v6 serializeWithError:&v20];
  v8 = v20;

  if (!v8)
  {
    v11 = [v7 bytes];
    v12 = v11 + [v7 length];
    do
    {
      if ((v12 - v11) >= 255)
      {
        v13 = 255;
      }

      else
      {
        v13 = v12 - v11;
      }

      v14 = TLV8BufferAppend();
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13;
      }

      v11 += v15;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v11 >= v12;
      }
    }

    while (!v16);
    v17 = v14;

    if (v17)
    {
      if (a3)
      {
        HMErrorFromOSStatus(v17);
        v8 = 0;
        *a3 = v10 = 0;
        goto LABEL_23;
      }

      v8 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:?];
    v8 = 0;
    goto LABEL_23;
  }

  if (a3)
  {
    v9 = v8;
    v10 = 0;
    *a3 = v8;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
LABEL_23:
  TLV8BufferFree();

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
LABEL_13:
    [(HAP2TLVAccessorySignatureReadRequest *)self setAccessoryList:v9];
    v10 = 0;
    v16 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = v7 + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (a4)
        {
          HMErrorFromOSStatus(Next);
          *a4 = v16 = 0;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      if (!v23)
      {
        break;
      }

      if (v24 == 24)
      {
        v21 = v10;
        v13 = HAPTLVParseContiguousTlvs(24, v7, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAP2TLVParamAccessoryList parsedFromData:v13 error:&v20];
          v14 = v20;

          v9 = v15;
        }

        v10 = v14;
      }

      v7 = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

    v10 = v17;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_17:
    if (a4)
    {
      v18 = v10;
      v16 = 0;
      *a4 = v10;
      goto LABEL_20;
    }

LABEL_19:
    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (HAP2TLVAccessorySignatureReadRequest)initWithAccessoryList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAP2TLVAccessorySignatureReadRequest;
  v6 = [(HAP2TLVAccessorySignatureReadRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryList, a3);
  }

  return v7;
}

- (HAP2TLVAccessorySignatureReadRequest)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVAccessorySignatureReadRequest;
  return [(HAP2TLVAccessorySignatureReadRequest *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVAccessorySignatureReadRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVAccessorySignatureReadRequest *)v6 parseFromData:v5 error:&v11];
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