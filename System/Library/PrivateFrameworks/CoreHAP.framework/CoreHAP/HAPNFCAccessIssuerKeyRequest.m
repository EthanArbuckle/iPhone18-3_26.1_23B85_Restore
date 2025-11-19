@interface HAPNFCAccessIssuerKeyRequest
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPNFCAccessIssuerKeyRequest)init;
- (HAPNFCAccessIssuerKeyRequest)initWithType:(id)a3 key:(id)a4 identifier:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPNFCAccessIssuerKeyRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPNFCAccessIssuerKeyRequest *)self type];
  v5 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  v6 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<HAPNFCAccessIssuerKeyRequest type=%@, key=%@, identifier=%@>", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(HAPNFCAccessIssuerKeyRequest *)self type];
      v9 = [(HAPNFCAccessIssuerKeyRequest *)v7 type];
      if (v8 != v9)
      {
        v3 = [(HAPNFCAccessIssuerKeyRequest *)self type];
        v4 = [(HAPNFCAccessIssuerKeyRequest *)v7 type];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPNFCAccessIssuerKeyRequest *)self key];
      v12 = [(HAPNFCAccessIssuerKeyRequest *)v7 key];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPNFCAccessIssuerKeyRequest *)self key];
        v27 = [(HAPNFCAccessIssuerKeyRequest *)v7 key];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
      v16 = [(HAPNFCAccessIssuerKeyRequest *)v7 identifier];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPNFCAccessIssuerKeyRequest *)self identifier];
        v18 = v25 = v3;
        [(HAPNFCAccessIssuerKeyRequest *)v7 identifier];
        v24 = v11;
        v19 = v4;
        v20 = v9;
        v22 = v21 = v8;
        v10 = [v18 isEqual:v22];

        v8 = v21;
        v9 = v20;
        v4 = v19;
        v11 = v24;

        v3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (v8 == v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPNFCAccessIssuerKeyRequest allocWithZone:a3];
  v5 = [(HAPNFCAccessIssuerKeyRequest *)self type];
  v6 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  v7 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
  v8 = [(HAPNFCAccessIssuerKeyRequest *)v4 initWithType:v5 key:v6 identifier:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
{
  v52 = *MEMORY[0x277D85DE8];
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
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  TLV8BufferInit();
  v5 = [(HAPNFCAccessIssuerKeyRequest *)self type];

  if (v5)
  {
    v6 = [(HAPNFCAccessIssuerKeyRequest *)self type];
    v30 = 0;
    v7 = [v6 serializeWithError:&v30];
    v8 = v30;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_31;
    }
  }

  v10 = [(HAPNFCAccessIssuerKeyRequest *)self key];

  if (!v10)
  {
LABEL_13:
    v16 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];

    if (!v16)
    {
      goto LABEL_33;
    }

    v17 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
    v28 = 0;
    v7 = [v17 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_15;
    }

    v20 = [v7 bytes];
    v21 = v20 + [v7 length];
    do
    {
      if ((v21 - v20) >= 255)
      {
        v22 = 255;
      }

      else
      {
        v22 = v21 - v20;
      }

      v23 = TLV8BufferAppend();
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      v20 += v24;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = v20 >= v21;
      }
    }

    while (!v25);
    v9 = v23;

    if (!v9)
    {
LABEL_33:
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:?];
      v8 = 0;
      goto LABEL_36;
    }

LABEL_31:
    if (a3)
    {
      HMErrorFromOSStatus(v9);
      v8 = 0;
      *a3 = v19 = 0;
      goto LABEL_36;
    }

    v8 = 0;
    goto LABEL_35;
  }

  v11 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  v29 = 0;
  v7 = [v11 serializeWithError:&v29];
  v8 = v29;

  if (!v8)
  {
    v12 = [v7 bytes];
    v13 = v12 + [v7 length];
    while (1)
    {
      v14 = (v13 - v12) >= 255 ? 255 : v13 - v12;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        break;
      }

      v12 += v14;
      if (v12 >= v13)
      {

        goto LABEL_13;
      }
    }

    v9 = v15;

    goto LABEL_31;
  }

LABEL_15:

  if (a3)
  {
    v18 = v8;
    v19 = 0;
    *a3 = v8;
    goto LABEL_36;
  }

LABEL_35:
  v19 = 0;
LABEL_36:
  TLV8BufferFree();

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_20:
    [(HAPNFCAccessIssuerKeyRequest *)self setType:v12, v26];
    [(HAPNFCAccessIssuerKeyRequest *)self setKey:v11];
    [(HAPNFCAccessIssuerKeyRequest *)self setIdentifier:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  v26 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v26)
      {
        HMErrorFromOSStatus(Next);
        *v26 = v22 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v33)
    {
      break;
    }

    switch(v34)
    {
      case 3:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v32, &v28);
        v19 = v28;

        if (v19)
        {
          goto LABEL_12;
        }

        v27 = 0;
        v21 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v27];
        v9 = v27;
        v18 = v10;
        v10 = v21;
LABEL_14:

LABEL_15:
        break;
      case 2:
        v30 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v32, &v30);
        v19 = v30;

        if (!v19)
        {
          v29 = 0;
          v20 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v29];
          v9 = v29;
          v18 = v11;
          v11 = v20;
          goto LABEL_14;
        }

LABEL_12:
        v9 = v19;
        goto LABEL_15;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v31 = v9;
        v16 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v31];
        v17 = v31;

        v18 = v12;
        v12 = v16;
        v9 = v17;
        goto LABEL_14;
    }

    v7 = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v23;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (v26)
  {
    v24 = v9;
    v22 = 0;
    *v26 = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
}

- (HAPNFCAccessIssuerKeyRequest)initWithType:(id)a3 key:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPNFCAccessIssuerKeyRequest;
  v12 = [(HAPNFCAccessIssuerKeyRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, a3);
    objc_storeStrong(&v13->_key, a4);
    objc_storeStrong(&v13->_identifier, a5);
  }

  return v13;
}

- (HAPNFCAccessIssuerKeyRequest)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessIssuerKeyRequest;
  return [(HAPNFCAccessIssuerKeyRequest *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPNFCAccessIssuerKeyRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessIssuerKeyRequest *)v6 parseFromData:v5 error:&v11];
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