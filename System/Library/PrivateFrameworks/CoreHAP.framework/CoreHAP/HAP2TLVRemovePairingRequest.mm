@interface HAP2TLVRemovePairingRequest
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVRemovePairingRequest)init;
- (HAP2TLVRemovePairingRequest)initWithState:(id)a3 method:(id)a4 identifier:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVRemovePairingRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVRemovePairingRequest *)self state];
  v5 = [(HAP2TLVRemovePairingRequest *)self method];
  v6 = [(HAP2TLVRemovePairingRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<HAP2TLVRemovePairingRequest state=%@, method=%@, identifier=%@>", v4, v5, v6];

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
      v8 = [(HAP2TLVRemovePairingRequest *)self state];
      v9 = [(HAP2TLVRemovePairingRequest *)v7 state];
      if (v8 != v9)
      {
        v3 = [(HAP2TLVRemovePairingRequest *)self state];
        v4 = [(HAP2TLVRemovePairingRequest *)v7 state];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAP2TLVRemovePairingRequest *)self method];
      v12 = [(HAP2TLVRemovePairingRequest *)v7 method];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAP2TLVRemovePairingRequest *)self method];
        v27 = [(HAP2TLVRemovePairingRequest *)v7 method];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAP2TLVRemovePairingRequest *)self identifier];
      v16 = [(HAP2TLVRemovePairingRequest *)v7 identifier];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAP2TLVRemovePairingRequest *)self identifier];
        v18 = v25 = v3;
        [(HAP2TLVRemovePairingRequest *)v7 identifier];
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
  v4 = [HAP2TLVRemovePairingRequest allocWithZone:a3];
  v5 = [(HAP2TLVRemovePairingRequest *)self state];
  v6 = [(HAP2TLVRemovePairingRequest *)self method];
  v7 = [(HAP2TLVRemovePairingRequest *)self identifier];
  v8 = [(HAP2TLVRemovePairingRequest *)v4 initWithState:v5 method:v6 identifier:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HAP2TLVRemovePairingRequest *)self state];

  if (v5)
  {
    v6 = [(HAP2TLVRemovePairingRequest *)self state];
    v27 = 0;
    v7 = [v6 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_8:
      v12 = v9;

LABEL_9:
      if (a3)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_32;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_32;
    }
  }

  v10 = [(HAP2TLVRemovePairingRequest *)self method];

  if (v10)
  {
    v11 = [(HAP2TLVRemovePairingRequest *)self method];
    v26 = 0;
    v7 = [v11 serializeWithError:&v26];
    v8 = v26;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v14 = [(HAP2TLVRemovePairingRequest *)self identifier];

  if (v14)
  {
    v15 = [(HAP2TLVRemovePairingRequest *)self identifier];
    v25 = 0;
    v7 = [v15 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
LABEL_15:

      if (a3)
      {
        v16 = v8;
        v13 = 0;
        *a3 = v8;
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v17 = [v7 bytes];
    v18 = v17 + [v7 length];
    do
    {
      if ((v18 - v17) >= 255)
      {
        v19 = 255;
      }

      else
      {
        v19 = v18 - v17;
      }

      v20 = TLV8BufferAppend();
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      v17 += v21;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v17 >= v18;
      }
    }

    while (!v22);
    v12 = v20;

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_32:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v13;
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
LABEL_18:
    [(HAP2TLVRemovePairingRequest *)self setState:v12];
    [(HAP2TLVRemovePairingRequest *)self setMethod:v11];
    [(HAP2TLVRemovePairingRequest *)self setIdentifier:v10];
    v9 = 0;
    v21 = 1;
    goto LABEL_25;
  }

  v25 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v32 = 0;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v25)
      {
        HMErrorFromOSStatus(Next);
        *v25 = v21 = 0;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v31)
    {
      break;
    }

    switch(v32)
    {
      case 0:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v9;
        v20 = [HAP2TLVPairingMethodWrapper parsedFromData:v15 error:&v28];
        v17 = v28;

        v18 = v11;
        v11 = v20;
LABEL_12:

LABEL_13:
        v9 = v17;
        break;
      case 1:
        v27 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v30, &v27);
        v17 = v27;

        if (!v17)
        {
          v26 = 0;
          v19 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v26];
          v17 = v26;
          v18 = v10;
          v10 = v19;
          goto LABEL_12;
        }

        goto LABEL_13;
      case 6:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v9;
        v16 = [HAP2TLVPairingStateWrapper parsedFromData:v15 error:&v29];
        v17 = v29;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
    }

    v7 = v30[0];
    if (v30[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v22;
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_22:
  if (v25)
  {
    v23 = v9;
    v21 = 0;
    *v25 = v9;
    goto LABEL_25;
  }

LABEL_24:
  v21 = 0;
LABEL_25:

  return v21;
}

- (HAP2TLVRemovePairingRequest)initWithState:(id)a3 method:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAP2TLVRemovePairingRequest;
  v12 = [(HAP2TLVRemovePairingRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, a3);
    objc_storeStrong(&v13->_method, a4);
    objc_storeStrong(&v13->_identifier, a5);
  }

  return v13;
}

- (HAP2TLVRemovePairingRequest)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVRemovePairingRequest;
  return [(HAP2TLVRemovePairingRequest *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVRemovePairingRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVRemovePairingRequest *)v6 parseFromData:v5 error:&v11];
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