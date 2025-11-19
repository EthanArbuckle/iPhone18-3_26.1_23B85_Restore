@interface HAPReaderKey
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPReaderKey)init;
- (HAPReaderKey)initWithType:(id)a3 key:(id)a4 keyIdentifier:(id)a5 readerIdentifier:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPReaderKey

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPReaderKey *)self type];
  v5 = [(HAPReaderKey *)self key];
  v6 = [(HAPReaderKey *)self keyIdentifier];
  v7 = [(HAPReaderKey *)self readerIdentifier];
  v8 = [v3 stringWithFormat:@"<HAPReaderKey type=%@, key=%@, keyIdentifier=%@, readerIdentifier=%@>", v4, v5, v6, v7];

  return v8;
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
      v7 = [(HAPReaderKey *)self type];
      v8 = [(HAPReaderKey *)v6 type];
      if (v7 != v8)
      {
        v9 = [(HAPReaderKey *)self type];
        [(HAPReaderKey *)v6 type];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HAPReaderKey *)self key];
      v12 = [(HAPReaderKey *)v6 key];
      if (v11 != v12)
      {
        v3 = [(HAPReaderKey *)self key];
        v30 = [(HAPReaderKey *)v6 key];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (v7 == v8)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [(HAPReaderKey *)self keyIdentifier];
      v14 = [(HAPReaderKey *)v6 keyIdentifier];
      v31 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        v17 = [(HAPReaderKey *)self keyIdentifier];
        v25 = [(HAPReaderKey *)v6 keyIdentifier];
        v26 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      v18 = [(HAPReaderKey *)self readerIdentifier];
      v19 = [(HAPReaderKey *)v6 readerIdentifier];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HAPReaderKey *)self readerIdentifier];
        v22 = [(HAPReaderKey *)v6 readerIdentifier];
        v10 = [v21 isEqual:v22];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPReaderKey allocWithZone:a3];
  v5 = [(HAPReaderKey *)self type];
  v6 = [(HAPReaderKey *)self key];
  v7 = [(HAPReaderKey *)self keyIdentifier];
  v8 = [(HAPReaderKey *)self readerIdentifier];
  v9 = [(HAPReaderKey *)v4 initWithType:v5 key:v6 keyIdentifier:v7 readerIdentifier:v8];

  return v9;
}

- (id)serializeWithError:(id *)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
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
  v37 = 0u;
  TLV8BufferInit();
  v5 = [(HAPReaderKey *)self type];

  if (v5)
  {
    v6 = [(HAPReaderKey *)self type];
    v36 = 0;
    v7 = [v6 serializeWithError:&v36];
    v8 = v36;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_27:
      if (a3)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *a3 = v24 = 0;
        goto LABEL_31;
      }

      v8 = 0;
      goto LABEL_30;
    }
  }

  v10 = [(HAPReaderKey *)self key];

  if (v10)
  {
    v11 = [(HAPReaderKey *)self key];
    v35 = 0;
    v7 = [v11 serializeWithError:&v35];
    v8 = v35;

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
          goto LABEL_26;
        }

        v12 += v14;
        if (v12 >= v13)
        {

          goto LABEL_13;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:
  v16 = [(HAPReaderKey *)self keyIdentifier];

  if (v16)
  {
    v17 = [(HAPReaderKey *)self keyIdentifier];
    v34 = 0;
    v7 = [v17 serializeWithError:&v34];
    v8 = v34;

    if (!v8)
    {
      v18 = [v7 bytes];
      v19 = v18 + [v7 length];
      while (1)
      {
        v20 = (v19 - v18) >= 255 ? 255 : v19 - v18;
        v15 = TLV8BufferAppend();
        if (v15)
        {
          break;
        }

        v18 += v20;
        if (v18 >= v19)
        {

          goto LABEL_22;
        }
      }

LABEL_26:
      v9 = v15;

      goto LABEL_27;
    }

LABEL_24:

    if (a3)
    {
      v23 = v8;
      v24 = 0;
      *a3 = v8;
      goto LABEL_31;
    }

LABEL_30:
    v24 = 0;
    goto LABEL_31;
  }

LABEL_22:
  v21 = [(HAPReaderKey *)self readerIdentifier];

  if (v21)
  {
    v22 = [(HAPReaderKey *)self readerIdentifier];
    v33 = 0;
    v7 = [v22 serializeWithError:&v33];
    v8 = v33;

    if (v8)
    {
      goto LABEL_24;
    }

    v27 = [v7 bytes];
    v28 = v27 + [v7 length];
    do
    {
      if ((v28 - v27) >= 255)
      {
        v29 = 255;
      }

      else
      {
        v29 = v28 - v27;
      }

      v30 = TLV8BufferAppend();
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      v27 += v31;
      if (v30)
      {
        v32 = 1;
      }

      else
      {
        v32 = v27 >= v28;
      }
    }

    while (!v32);
    v9 = v30;

    if (v9)
    {
      goto LABEL_27;
    }
  }

  v24 = [MEMORY[0x277CBEA90] dataWithBytes:v37 length:?];
  v8 = 0;
LABEL_31:
  TLV8BufferFree();

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v28 = a4;
    v29 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7 + v8;
    while (1)
    {
      v39 = 0;
      v37[1] = 0;
      v38 = 0;
      v37[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v28)
        {
          HMErrorFromOSStatus(Next);
          *v28 = v25 = 0;
        }

        else
        {
          v25 = 0;
        }

        v23 = v29;
        goto LABEL_33;
      }

      if (!v38)
      {
        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v26;
        if (v26)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      if (v39 > 2u)
      {
        if (v39 == 3)
        {
          v33 = v9;
          v15 = HAPTLVParseContiguousTlvs(3, v7, v13, v37, &v33);
          v16 = v33;

          if (v16)
          {
            goto LABEL_16;
          }

          v32 = 0;
          v22 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v32];
          v9 = v32;
          v18 = v11;
          v11 = v22;
          goto LABEL_18;
        }

        if (v39 == 4)
        {
          v31 = v9;
          v15 = HAPTLVParseContiguousTlvs(4, v7, v13, v37, &v31);
          v16 = v31;

          if (!v16)
          {
            v30 = 0;
            v19 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v30];
            v9 = v30;
            v18 = v10;
            v10 = v19;
            goto LABEL_18;
          }

LABEL_16:
          v9 = v16;
LABEL_19:
        }
      }

      else
      {
        if (v39 == 1)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v36 = v9;
          v20 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v36];
          v21 = v36;

          v18 = v12;
          v12 = v20;
          v9 = v21;
LABEL_18:

          goto LABEL_19;
        }

        if (v39 == 2)
        {
          v35 = v9;
          v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v37, &v35);
          v16 = v35;

          if (!v16)
          {
            v34 = 0;
            v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v34];
            v9 = v34;
            v18 = v29;
            v29 = v17;
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }

      v7 = v37[0];
      if (v37[0] >= v13)
      {
        if (v9)
        {
LABEL_22:
          v23 = v29;
          if (v28)
          {
            v24 = v9;
            v25 = 0;
            *v28 = v9;
          }

          else
          {
            v25 = 0;
          }

          goto LABEL_33;
        }

LABEL_28:
        v23 = v29;
        goto LABEL_29;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v23 = 0;
  v12 = 0;
LABEL_29:
  [(HAPReaderKey *)self setType:v12];
  [(HAPReaderKey *)self setKey:v23];
  [(HAPReaderKey *)self setKeyIdentifier:v11];
  [(HAPReaderKey *)self setReaderIdentifier:v10];
  v9 = 0;
  v25 = 1;
LABEL_33:

  return v25;
}

- (HAPReaderKey)initWithType:(id)a3 key:(id)a4 keyIdentifier:(id)a5 readerIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HAPReaderKey;
  v15 = [(HAPReaderKey *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, a3);
    objc_storeStrong(&v16->_key, a4);
    objc_storeStrong(&v16->_keyIdentifier, a5);
    objc_storeStrong(&v16->_readerIdentifier, a6);
  }

  return v16;
}

- (HAPReaderKey)init
{
  v3.receiver = self;
  v3.super_class = HAPReaderKey;
  return [(HAPReaderKey *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPReaderKey);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPReaderKey *)v6 parseFromData:v5 error:&v11];
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