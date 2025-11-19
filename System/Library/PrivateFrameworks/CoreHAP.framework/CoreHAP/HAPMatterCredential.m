@interface HAPMatterCredential
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPMatterCredential)init;
- (HAPMatterCredential)initWithIssuerKey:(id)a3 readerKey:(id)a4 deviceCredentialKey:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPMatterCredential

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMatterCredential *)self issuerKey];
  v5 = [(HAPMatterCredential *)self readerKey];
  v6 = [(HAPMatterCredential *)self deviceCredentialKey];
  v7 = [v3 stringWithFormat:@"<HAPMatterCredential issuerKey=%@, readerKey=%@, deviceCredentialKey=%@>", v4, v5, v6];

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
      v8 = [(HAPMatterCredential *)self issuerKey];
      v9 = [(HAPMatterCredential *)v7 issuerKey];
      if (v8 != v9)
      {
        v3 = [(HAPMatterCredential *)self issuerKey];
        v4 = [(HAPMatterCredential *)v7 issuerKey];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPMatterCredential *)self readerKey];
      v12 = [(HAPMatterCredential *)v7 readerKey];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPMatterCredential *)self readerKey];
        v27 = [(HAPMatterCredential *)v7 readerKey];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPMatterCredential *)self deviceCredentialKey];
      v16 = [(HAPMatterCredential *)v7 deviceCredentialKey];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPMatterCredential *)self deviceCredentialKey];
        v18 = v25 = v3;
        [(HAPMatterCredential *)v7 deviceCredentialKey];
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
  v4 = [HAPMatterCredential allocWithZone:a3];
  v5 = [(HAPMatterCredential *)self issuerKey];
  v6 = [(HAPMatterCredential *)self readerKey];
  v7 = [(HAPMatterCredential *)self deviceCredentialKey];
  v8 = [(HAPMatterCredential *)v4 initWithIssuerKey:v5 readerKey:v6 deviceCredentialKey:v7];

  return v8;
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
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  TLV8BufferInit();
  v5 = [(HAPMatterCredential *)self issuerKey];

  if (v5)
  {
    v6 = [(HAPMatterCredential *)self issuerKey];
    v33 = 0;
    v7 = [v6 serializeWithError:&v33];
    v8 = v33;

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
  v13 = [(HAPMatterCredential *)self readerKey];

  if (v13)
  {
    v14 = [(HAPMatterCredential *)self readerKey];
    v32 = 0;
    v7 = [v14 serializeWithError:&v32];
    v8 = v32;

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
        goto LABEL_42;
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
      goto LABEL_42;
    }

LABEL_27:
    v21 = 0;
    goto LABEL_42;
  }

LABEL_19:
  v18 = [(HAPMatterCredential *)self deviceCredentialKey];

  if (v18)
  {
    v19 = [(HAPMatterCredential *)self deviceCredentialKey];
    v31 = 0;
    v7 = [v19 serializeWithError:&v31];
    v8 = v31;

    if (v8)
    {
      goto LABEL_21;
    }

    v23 = [v7 bytes];
    v24 = v23 + [v7 length];
    do
    {
      if ((v24 - v23) >= 255)
      {
        v25 = 255;
      }

      else
      {
        v25 = v24 - v23;
      }

      v26 = TLV8BufferAppend();
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v23 += v27;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = v23 >= v24;
      }
    }

    while (!v28);
    v22 = v26;

    if (v22)
    {
      goto LABEL_24;
    }
  }

  v21 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:?];
  v8 = 0;
LABEL_42:
  TLV8BufferFree();

  v29 = *MEMORY[0x277D85DE8];

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
LABEL_21:
    [(HAPMatterCredential *)self setIssuerKey:v12];
    [(HAPMatterCredential *)self setReaderKey:v11];
    [(HAPMatterCredential *)self setDeviceCredentialKey:v10];
    v9 = 0;
    v19 = 1;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v31 = 0;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (a4)
      {
        HMErrorFromOSStatus(Next);
        *a4 = v19 = 0;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (!v30)
    {
      break;
    }

    switch(v31)
    {
      case 3:
        v24 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v29, &v24);
        v16 = v24;

        if (v16)
        {
          goto LABEL_13;
        }

        v23 = 0;
        v17 = &v23;
        [HAPDeviceCredentialKey parsedFromData:v15 error:&v23];
        v10 = v18 = v10;
        goto LABEL_15;
      case 2:
        v26 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v29, &v26);
        v16 = v26;

        if (v16)
        {
          goto LABEL_13;
        }

        v25 = 0;
        v17 = &v25;
        [HAPReaderKey parsedFromData:v15 error:&v25];
        v11 = v18 = v11;
LABEL_15:
        v9 = *v17;

        goto LABEL_16;
      case 1:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v29, &v28);
        v16 = v28;

        if (!v16)
        {
          v27 = 0;
          v17 = &v27;
          [HAPIssuerKey parsedFromData:v15 error:&v27];
          v12 = v18 = v12;
          goto LABEL_15;
        }

LABEL_13:
        v9 = v16;
LABEL_16:

        break;
    }

    v7 = v29[0];
    if (v29[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (a4)
  {
    v21 = v9;
    v19 = 0;
    *a4 = v9;
    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
LABEL_28:

  return v19;
}

- (HAPMatterCredential)initWithIssuerKey:(id)a3 readerKey:(id)a4 deviceCredentialKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPMatterCredential;
  v12 = [(HAPMatterCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_issuerKey, a3);
    objc_storeStrong(&v13->_readerKey, a4);
    objc_storeStrong(&v13->_deviceCredentialKey, a5);
  }

  return v13;
}

- (HAPMatterCredential)init
{
  v3.receiver = self;
  v3.super_class = HAPMatterCredential;
  return [(HAPMatterCredential *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPMatterCredential);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPMatterCredential *)v6 parseFromData:v5 error:&v11];
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