@interface HAP2TLVAddPairingRequest
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVAddPairingRequest)init;
- (HAP2TLVAddPairingRequest)initWithState:(id)a3 method:(id)a4 identifier:(id)a5 publicKey:(id)a6 permissions:(id)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVAddPairingRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAP2TLVAddPairingRequest *)self state];
  v5 = [(HAP2TLVAddPairingRequest *)self method];
  v6 = [(HAP2TLVAddPairingRequest *)self identifier];
  v7 = [(HAP2TLVAddPairingRequest *)self publicKey];
  v8 = [(HAP2TLVAddPairingRequest *)self permissions];
  v9 = [v3 stringWithFormat:@"<HAP2TLVAddPairingRequest state=%@, method=%@, identifier=%@, publicKey=%@, permissions=%@>", v4, v5, v6, v7, v8];

  return v9;
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
      v7 = [(HAP2TLVAddPairingRequest *)self state];
      v8 = [(HAP2TLVAddPairingRequest *)v6 state];
      if (v7 != v8)
      {
        v9 = [(HAP2TLVAddPairingRequest *)self state];
        v39 = [(HAP2TLVAddPairingRequest *)v6 state];
        v40 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      v11 = [(HAP2TLVAddPairingRequest *)self method];
      v12 = [(HAP2TLVAddPairingRequest *)v6 method];
      v41 = v11;
      if (v11 != v12)
      {
        v3 = [(HAP2TLVAddPairingRequest *)self method];
        v37 = [(HAP2TLVAddPairingRequest *)v6 method];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (v7 == v8)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      v13 = [(HAP2TLVAddPairingRequest *)self identifier];
      v14 = [(HAP2TLVAddPairingRequest *)v6 identifier];
      v38 = v13;
      v27 = v13 == v14;
      v15 = v14;
      if (!v27)
      {
        v16 = [(HAP2TLVAddPairingRequest *)self identifier];
        v33 = [(HAP2TLVAddPairingRequest *)v6 identifier];
        v34 = v16;
        if (![v16 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == v12)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      v18 = [(HAP2TLVAddPairingRequest *)self publicKey];
      v35 = [(HAP2TLVAddPairingRequest *)v6 publicKey];
      v36 = v15;
      if (v18 == v35)
      {
        v31 = v3;
        v32 = v12;
      }

      else
      {
        v19 = [(HAP2TLVAddPairingRequest *)self publicKey];
        v29 = [(HAP2TLVAddPairingRequest *)v6 publicKey];
        v30 = v19;
        if (![v19 isEqual:?])
        {
          v10 = 0;
          v26 = v35;
          goto LABEL_23;
        }

        v31 = v3;
        v32 = v12;
      }

      v20 = [(HAP2TLVAddPairingRequest *)self permissions];
      v21 = [(HAP2TLVAddPairingRequest *)v6 permissions];
      v22 = v21;
      if (v20 == v21)
      {

        v10 = 1;
        v26 = v35;
        v27 = v18 == v35;
      }

      else
      {
        v23 = [(HAP2TLVAddPairingRequest *)self permissions];
        [(HAP2TLVAddPairingRequest *)v6 permissions];
        v25 = v24 = v18;
        v10 = [v23 isEqual:v25];

        v18 = v24;
        v26 = v35;
        v27 = v24 == v35;
      }

      v3 = v31;
      v12 = v32;
      if (v27)
      {
LABEL_24:

        v17 = v38;
        v15 = v36;
        if (v38 == v36)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v10 = 0;
  }

LABEL_31:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAP2TLVAddPairingRequest allocWithZone:a3];
  v5 = [(HAP2TLVAddPairingRequest *)self state];
  v6 = [(HAP2TLVAddPairingRequest *)self method];
  v7 = [(HAP2TLVAddPairingRequest *)self identifier];
  v8 = [(HAP2TLVAddPairingRequest *)self publicKey];
  v9 = [(HAP2TLVAddPairingRequest *)self permissions];
  v10 = [(HAP2TLVAddPairingRequest *)v4 initWithState:v5 method:v6 identifier:v7 publicKey:v8 permissions:v9];

  return v10;
}

- (id)serializeWithError:(id *)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
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
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  TLV8BufferInit();
  v5 = [(HAP2TLVAddPairingRequest *)self state];

  if (v5)
  {
    v6 = [(HAP2TLVAddPairingRequest *)self state];
    v33 = 0;
    v7 = [v6 serializeWithError:&v33];
    v8 = v33;

    if (v8)
    {
      goto LABEL_33;
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
        goto LABEL_36;
      }

      v8 = 0;
LABEL_35:
      v13 = 0;
      goto LABEL_36;
    }
  }

  v10 = [(HAP2TLVAddPairingRequest *)self method];

  if (v10)
  {
    v11 = [(HAP2TLVAddPairingRequest *)self method];
    v32 = 0;
    v7 = [v11 serializeWithError:&v32];
    v8 = v32;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v14 = [(HAP2TLVAddPairingRequest *)self identifier];

  if (v14)
  {
    v15 = [(HAP2TLVAddPairingRequest *)self identifier];
    v31 = 0;
    v7 = [v15 serializeWithError:&v31];
    v8 = v31;

    if (!v8)
    {
      v16 = [v7 bytes];
      v17 = v16 + [v7 length];
      while (1)
      {
        v18 = (v17 - v16) >= 255 ? 255 : v17 - v16;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_8;
        }

        v16 += v18;
        if (v16 >= v17)
        {

          goto LABEL_22;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_22:
  v19 = [(HAP2TLVAddPairingRequest *)self publicKey];

  if (v19)
  {
    v20 = [(HAP2TLVAddPairingRequest *)self publicKey];
    v30 = 0;
    v7 = [v20 serializeWithError:&v30];
    v8 = v30;

    if (!v8)
    {
      v21 = [v7 bytes];
      v22 = v21 + [v7 length];
      while (1)
      {
        v23 = (v22 - v21) >= 255 ? 255 : v22 - v21;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_8;
        }

        v21 += v23;
        if (v21 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

LABEL_33:

    if (a3)
    {
      v26 = v8;
      v13 = 0;
      *a3 = v8;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  v24 = [(HAP2TLVAddPairingRequest *)self permissions];

  if (v24)
  {
    v25 = [(HAP2TLVAddPairingRequest *)self permissions];
    v29 = 0;
    v7 = [v25 serializeWithError:&v29];
    v8 = v29;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:?];
  v8 = 0;
LABEL_36:
  TLV8BufferFree();

  v27 = *MEMORY[0x277D85DE8];

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
    v25 = 0;
    v26 = 0;
    v12 = 0;
LABEL_32:
    [(HAP2TLVAddPairingRequest *)self setState:v10, v31];
    [(HAP2TLVAddPairingRequest *)self setMethod:v12];
    [(HAP2TLVAddPairingRequest *)self setIdentifier:v26];
    [(HAP2TLVAddPairingRequest *)self setPublicKey:v25];
    [(HAP2TLVAddPairingRequest *)self setPermissions:v11];
    v9 = 0;
    v27 = 1;
    goto LABEL_36;
  }

  v31 = a4;
  v32 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v33 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v43 = 0;
    v41[1] = 0;
    v42 = 0;
    v41[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (v31)
      {
        HMErrorFromOSStatus(Next);
        *v31 = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      v25 = v32;
      v26 = v33;
      goto LABEL_36;
    }

    if (!v42)
    {
      break;
    }

    if (v43 <= 2u)
    {
      if (!v43)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v39 = v9;
        v23 = [HAP2TLVPairingMethodWrapper parsedFromData:v15 error:&v39];
        v22 = v39;

        v18 = v12;
        v12 = v23;
LABEL_18:
        v9 = v22;
LABEL_19:

        goto LABEL_20;
      }

      if (v43 == 1)
      {
        v38 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v41, &v38);
        v19 = v38;

        if (!v19)
        {
          v37 = 0;
          v20 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v37];
          v9 = v37;
          v18 = v33;
          v33 = v20;
          goto LABEL_19;
        }

LABEL_15:
        v9 = v19;
LABEL_20:
      }
    }

    else
    {
      switch(v43)
      {
        case 3u:
          v36 = v9;
          v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v41, &v36);
          v19 = v36;

          if (v19)
          {
            goto LABEL_15;
          }

          v35 = 0;
          v24 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v35];
          v9 = v35;
          v18 = v32;
          v32 = v24;
          goto LABEL_19;
        case 0xBu:
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v9;
          v21 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v34];
          v22 = v34;

          v18 = v11;
          v11 = v21;
          goto LABEL_18;
        case 6u:
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v40 = v9;
          v16 = [HAP2TLVPairingStateWrapper parsedFromData:v15 error:&v40];
          v17 = v40;

          v18 = v10;
          v10 = v16;
          v9 = v17;
          goto LABEL_19;
      }
    }

    v7 = v41[0];
    if (v41[0] >= v13)
    {
      goto LABEL_28;
    }
  }

  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v28;
LABEL_28:
  if (!v9)
  {
    v25 = v32;
    v26 = v33;
    goto LABEL_32;
  }

  v25 = v32;
  v26 = v33;
  if (v31)
  {
    v29 = v9;
    v27 = 0;
    *v31 = v9;
  }

  else
  {
    v27 = 0;
  }

LABEL_36:

  return v27;
}

- (HAP2TLVAddPairingRequest)initWithState:(id)a3 method:(id)a4 identifier:(id)a5 publicKey:(id)a6 permissions:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HAP2TLVAddPairingRequest;
  v17 = [(HAP2TLVAddPairingRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_state, a3);
    objc_storeStrong(&v18->_method, a4);
    objc_storeStrong(&v18->_identifier, a5);
    objc_storeStrong(&v18->_publicKey, a6);
    objc_storeStrong(&v18->_permissions, a7);
  }

  return v18;
}

- (HAP2TLVAddPairingRequest)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVAddPairingRequest;
  return [(HAP2TLVAddPairingRequest *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVAddPairingRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVAddPairingRequest *)v6 parseFromData:v5 error:&v11];
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