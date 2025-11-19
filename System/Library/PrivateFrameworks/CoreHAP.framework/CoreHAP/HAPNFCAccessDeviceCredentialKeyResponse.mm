@interface HAPNFCAccessDeviceCredentialKeyResponse
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPNFCAccessDeviceCredentialKeyResponse)init;
- (HAPNFCAccessDeviceCredentialKeyResponse)initWithIdentifier:(id)a3 issuerKeyIdentifier:(id)a4 statusCode:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPNFCAccessDeviceCredentialKeyResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
  v5 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
  v6 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
  v7 = [v3 stringWithFormat:@"<HAPNFCAccessDeviceCredentialKeyResponse identifier=%@, issuerKeyIdentifier=%@, statusCode=%@>", v4, v5, v6];

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
      v8 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
      v9 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
        v4 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
      v12 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 issuerKeyIdentifier];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
        v27 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 issuerKeyIdentifier];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
      v16 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 statusCode];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
        v18 = v25 = v3;
        [(HAPNFCAccessDeviceCredentialKeyResponse *)v7 statusCode];
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
  v4 = [HAPNFCAccessDeviceCredentialKeyResponse allocWithZone:a3];
  v5 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
  v6 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
  v7 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
  v8 = [(HAPNFCAccessDeviceCredentialKeyResponse *)v4 initWithIdentifier:v5 issuerKeyIdentifier:v6 statusCode:v7];

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
  v5 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];

  if (v5)
  {
    v6 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self identifier];
    v27 = 0;
    v7 = [v6 serializeWithError:&v27];
    v8 = v27;

    if (!v8)
    {
      v9 = [v7 bytes];
      v10 = v9 + [v7 length];
      while (1)
      {
        v11 = (v10 - v9) >= 255 ? 255 : v10 - v9;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          goto LABEL_23;
        }

        v9 += v11;
        if (v9 >= v10)
        {

          goto LABEL_10;
        }
      }
    }

    goto LABEL_21;
  }

LABEL_10:
  v13 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];

  if (v13)
  {
    v14 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self issuerKeyIdentifier];
    v26 = 0;
    v7 = [v14 serializeWithError:&v26];
    v8 = v26;

    if (!v8)
    {
      v15 = [v7 bytes];
      v16 = v15 + [v7 length];
      while (1)
      {
        v17 = (v16 - v15) >= 255 ? 255 : v16 - v15;
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }

        v15 += v17;
        if (v15 >= v16)
        {

          goto LABEL_19;
        }
      }

LABEL_23:
      v22 = v12;

LABEL_24:
      if (a3)
      {
        HMErrorFromOSStatus(v22);
        v8 = 0;
        *a3 = v21 = 0;
        goto LABEL_30;
      }

      v8 = 0;
      goto LABEL_27;
    }

LABEL_21:

    if (a3)
    {
      v20 = v8;
      v21 = 0;
      *a3 = v8;
      goto LABEL_30;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_30;
  }

LABEL_19:
  v18 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];

  if (v18)
  {
    v19 = [(HAPNFCAccessDeviceCredentialKeyResponse *)self statusCode];
    v25 = 0;
    v7 = [v19 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v22 = TLV8BufferAppend();

    if (v22)
    {
      goto LABEL_24;
    }
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_30:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v21;
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
LABEL_24:
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setIdentifier:v12];
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setIssuerKeyIdentifier:v11];
    [(HAPNFCAccessDeviceCredentialKeyResponse *)self setStatusCode:v10];
    v9 = 0;
    v23 = 1;
    goto LABEL_26;
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
      break;
    }

    if (!v33)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v24;
      if (!v24)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    switch(v34)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v19 = [HAPNFCAccessResponseStatusWrapper parsedFromData:v15 error:&v27];
        v20 = v27;

        v18 = v10;
        v10 = v19;
        v9 = v20;
        goto LABEL_14;
      case 2:
        v29 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v32, &v29);
        v16 = v29;

        if (v16)
        {
          goto LABEL_11;
        }

        v28 = 0;
        v21 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v28];
        v9 = v28;
        v18 = v11;
        v11 = v21;
LABEL_14:

LABEL_15:
        break;
      case 1:
        v31 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v32, &v31);
        v16 = v31;

        if (!v16)
        {
          v30 = 0;
          v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v30];
          v9 = v30;
          v18 = v12;
          v12 = v17;
          goto LABEL_14;
        }

LABEL_11:
        v9 = v16;
        goto LABEL_15;
    }

    v7 = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (v26)
      {
        v22 = v9;
        v23 = 0;
        *v26 = v9;
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  if (v26)
  {
    HMErrorFromOSStatus(Next);
    *v26 = v23 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v23 = 0;
LABEL_26:

  return v23;
}

- (HAPNFCAccessDeviceCredentialKeyResponse)initWithIdentifier:(id)a3 issuerKeyIdentifier:(id)a4 statusCode:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPNFCAccessDeviceCredentialKeyResponse;
  v12 = [(HAPNFCAccessDeviceCredentialKeyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_issuerKeyIdentifier, a4);
    objc_storeStrong(&v13->_statusCode, a5);
  }

  return v13;
}

- (HAPNFCAccessDeviceCredentialKeyResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessDeviceCredentialKeyResponse;
  return [(HAPNFCAccessDeviceCredentialKeyResponse *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPNFCAccessDeviceCredentialKeyResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessDeviceCredentialKeyResponse *)v6 parseFromData:v5 error:&v11];
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