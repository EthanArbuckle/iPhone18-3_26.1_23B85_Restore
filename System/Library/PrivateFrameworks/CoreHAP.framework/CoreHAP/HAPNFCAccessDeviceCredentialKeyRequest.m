@interface HAPNFCAccessDeviceCredentialKeyRequest
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPNFCAccessDeviceCredentialKeyRequest)init;
- (HAPNFCAccessDeviceCredentialKeyRequest)initWithType:(id)a3 key:(id)a4 issuerKeyIdentifier:(id)a5 state:(id)a6 identifier:(id)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPNFCAccessDeviceCredentialKeyRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];
  v5 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];
  v6 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];
  v7 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];
  v8 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];
  v9 = [v3 stringWithFormat:@"<HAPNFCAccessDeviceCredentialKeyRequest type=%@, key=%@, issuerKeyIdentifier=%@, state=%@, identifier=%@>", v4, v5, v6, v7, v8];

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
      v7 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];
      v8 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 type];
      if (v7 != v8)
      {
        v9 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];
        v39 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 type];
        v40 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      v11 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];
      v12 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 key];
      v41 = v11;
      if (v11 != v12)
      {
        v3 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];
        v37 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 key];
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

      v13 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];
      v14 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 issuerKeyIdentifier];
      v38 = v13;
      v27 = v13 == v14;
      v15 = v14;
      if (!v27)
      {
        v16 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];
        v33 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 issuerKeyIdentifier];
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

      v18 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];
      v35 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 state];
      v36 = v15;
      if (v18 == v35)
      {
        v31 = v3;
        v32 = v12;
      }

      else
      {
        v19 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];
        v29 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 state];
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

      v20 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];
      v21 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 identifier];
      v22 = v21;
      if (v20 == v21)
      {

        v10 = 1;
        v26 = v35;
        v27 = v18 == v35;
      }

      else
      {
        v23 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];
        [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 identifier];
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
  v4 = [HAPNFCAccessDeviceCredentialKeyRequest allocWithZone:a3];
  v5 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];
  v6 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];
  v7 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];
  v8 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];
  v9 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];
  v10 = [(HAPNFCAccessDeviceCredentialKeyRequest *)v4 initWithType:v5 key:v6 issuerKeyIdentifier:v7 state:v8 identifier:v9];

  return v10;
}

- (id)serializeWithError:(id *)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  TLV8BufferInit();
  v5 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];

  if (v5)
  {
    v6 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self type];
    v39 = 0;
    v7 = [v6 serializeWithError:&v39];
    v8 = v39;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_4:
      v10 = v9;

LABEL_5:
      if (a3)
      {
        HMErrorFromOSStatus(v10);
        v8 = 0;
        *a3 = v11 = 0;
        goto LABEL_36;
      }

      v8 = 0;
LABEL_35:
      v11 = 0;
      goto LABEL_36;
    }
  }

  v12 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];

  if (v12)
  {
    v13 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self key];
    v38 = 0;
    v7 = [v13 serializeWithError:&v38];
    v8 = v38;

    if (!v8)
    {
      v14 = [v7 bytes];
      v15 = v14 + [v7 length];
      while (1)
      {
        v16 = (v15 - v14) >= 255 ? 255 : v15 - v14;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v14 += v16;
        if (v14 >= v15)
        {

          goto LABEL_18;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_18:
  v17 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];

  if (v17)
  {
    v18 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self issuerKeyIdentifier];
    v37 = 0;
    v7 = [v18 serializeWithError:&v37];
    v8 = v37;

    if (!v8)
    {
      v19 = [v7 bytes];
      v20 = v19 + [v7 length];
      while (1)
      {
        v21 = (v20 - v19) >= 255 ? 255 : v20 - v19;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_4;
        }

        v19 += v21;
        if (v19 >= v20)
        {

          goto LABEL_27;
        }
      }
    }

LABEL_33:

    if (a3)
    {
      v26 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_27:
  v22 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];

  if (v22)
  {
    v23 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self state];
    v36 = 0;
    v7 = [v23 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v24 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];

  if (v24)
  {
    v25 = [(HAPNFCAccessDeviceCredentialKeyRequest *)self identifier];
    v35 = 0;
    v7 = [v25 serializeWithError:&v35];
    v8 = v35;

    if (v8)
    {
      goto LABEL_33;
    }

    v29 = [v7 bytes];
    v30 = v29 + [v7 length];
    do
    {
      if ((v30 - v29) >= 255)
      {
        v31 = 255;
      }

      else
      {
        v31 = v30 - v29;
      }

      v32 = TLV8BufferAppend();
      if (v32)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31;
      }

      v29 += v33;
      if (v32)
      {
        v34 = 1;
      }

      else
      {
        v34 = v29 >= v30;
      }
    }

    while (!v34);
    v10 = v32;

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v40 length:?];
  v8 = 0;
LABEL_36:
  TLV8BufferFree();

  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v31 = a4;
    v32 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v33 = 0;
    v13 = v7 + v8;
    while (1)
    {
      v44 = 0;
      v43 = 0;
      v42[0] = 0;
      v42[1] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v31)
        {
          HMErrorFromOSStatus(Next);
          *v31 = v28 = 0;
        }

        else
        {
          v28 = 0;
        }

        v26 = v32;
        v25 = v33;
        goto LABEL_35;
      }

      if (!v43)
      {
        v29 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v29;
        if (v29)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }

      if (v44 <= 2u)
      {
        if (v44 == 1)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v41 = v9;
          v22 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v41];
          v23 = v41;

          v18 = v10;
          v10 = v22;
          v9 = v23;
          goto LABEL_20;
        }

        if (v44 == 2)
        {
          v40 = v9;
          v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v42, &v40);
          v16 = v40;

          if (!v16)
          {
            v39 = 0;
            v19 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v39];
            v9 = v39;
            v18 = v33;
            v33 = v19;
            goto LABEL_20;
          }

LABEL_16:
          v9 = v16;
LABEL_21:
        }
      }

      else
      {
        switch(v44)
        {
          case 3u:
            v38 = v9;
            v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v42, &v38);
            v16 = v38;

            if (v16)
            {
              goto LABEL_16;
            }

            v37 = 0;
            v24 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v37];
            v9 = v37;
            v18 = v32;
            v32 = v24;
            goto LABEL_20;
          case 4u:
            v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
            v36 = v9;
            v20 = [HAPNFCAccessKeyStateWrapper parsedFromData:v15 error:&v36];
            v21 = v36;

            v18 = v12;
            v12 = v20;
            v9 = v21;
LABEL_20:

            goto LABEL_21;
          case 5u:
            v35 = v9;
            v15 = HAPTLVParseContiguousTlvs(5, v7, v13, v42, &v35);
            v16 = v35;

            if (!v16)
            {
              v34 = 0;
              v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v34];
              v9 = v34;
              v18 = v11;
              v11 = v17;
              goto LABEL_20;
            }

            goto LABEL_16;
        }
      }

      v7 = v42[0];
      if (v42[0] >= v13)
      {
        if (v9)
        {
LABEL_24:
          v26 = v32;
          v25 = v33;
          if (v31)
          {
            v27 = v9;
            v28 = 0;
            *v31 = v9;
          }

          else
          {
            v28 = 0;
          }

          goto LABEL_35;
        }

LABEL_30:
        v26 = v32;
        v25 = v33;
        goto LABEL_31;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v26 = 0;
  v25 = 0;
LABEL_31:
  [(HAPNFCAccessDeviceCredentialKeyRequest *)self setType:v10];
  [(HAPNFCAccessDeviceCredentialKeyRequest *)self setKey:v25];
  [(HAPNFCAccessDeviceCredentialKeyRequest *)self setIssuerKeyIdentifier:v26];
  [(HAPNFCAccessDeviceCredentialKeyRequest *)self setState:v12];
  [(HAPNFCAccessDeviceCredentialKeyRequest *)self setIdentifier:v11];
  v9 = 0;
  v28 = 1;
LABEL_35:

  return v28;
}

- (HAPNFCAccessDeviceCredentialKeyRequest)initWithType:(id)a3 key:(id)a4 issuerKeyIdentifier:(id)a5 state:(id)a6 identifier:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HAPNFCAccessDeviceCredentialKeyRequest;
  v17 = [(HAPNFCAccessDeviceCredentialKeyRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, a3);
    objc_storeStrong(&v18->_key, a4);
    objc_storeStrong(&v18->_issuerKeyIdentifier, a5);
    objc_storeStrong(&v18->_state, a6);
    objc_storeStrong(&v18->_identifier, a7);
  }

  return v18;
}

- (HAPNFCAccessDeviceCredentialKeyRequest)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessDeviceCredentialKeyRequest;
  return [(HAPNFCAccessDeviceCredentialKeyRequest *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPNFCAccessDeviceCredentialKeyRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessDeviceCredentialKeyRequest *)v6 parseFromData:v5 error:&v11];
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