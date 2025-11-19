@interface HAPAccessCodeControlResponse
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPAccessCodeControlResponse)init;
- (HAPAccessCodeControlResponse)initWithIdentifier:(id)a3 accessCode:(id)a4 flags:(id)a5 statusCode:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPAccessCodeControlResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessCodeControlResponse *)self identifier];
  v5 = [(HAPAccessCodeControlResponse *)self accessCode];
  v6 = [(HAPAccessCodeControlResponse *)self flags];
  v7 = [(HAPAccessCodeControlResponse *)self statusCode];
  v8 = [v3 stringWithFormat:@"<HAPAccessCodeControlResponse identifier=%@, accessCode=%@, flags=%@, statusCode=%@>", v4, v5, v6, v7];

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
      v7 = [(HAPAccessCodeControlResponse *)self identifier];
      v8 = [(HAPAccessCodeControlResponse *)v6 identifier];
      if (v7 != v8)
      {
        v9 = [(HAPAccessCodeControlResponse *)self identifier];
        [(HAPAccessCodeControlResponse *)v6 identifier];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HAPAccessCodeControlResponse *)self accessCode];
      v12 = [(HAPAccessCodeControlResponse *)v6 accessCode];
      if (v11 != v12)
      {
        v3 = [(HAPAccessCodeControlResponse *)self accessCode];
        v30 = [(HAPAccessCodeControlResponse *)v6 accessCode];
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

      v13 = [(HAPAccessCodeControlResponse *)self flags];
      v14 = [(HAPAccessCodeControlResponse *)v6 flags];
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
        v17 = [(HAPAccessCodeControlResponse *)self flags];
        v25 = [(HAPAccessCodeControlResponse *)v6 flags];
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
      v18 = [(HAPAccessCodeControlResponse *)self statusCode];
      v19 = [(HAPAccessCodeControlResponse *)v6 statusCode];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HAPAccessCodeControlResponse *)self statusCode];
        v22 = [(HAPAccessCodeControlResponse *)v6 statusCode];
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
  v4 = [HAPAccessCodeControlResponse allocWithZone:a3];
  v5 = [(HAPAccessCodeControlResponse *)self identifier];
  v6 = [(HAPAccessCodeControlResponse *)self accessCode];
  v7 = [(HAPAccessCodeControlResponse *)self flags];
  v8 = [(HAPAccessCodeControlResponse *)self statusCode];
  v9 = [(HAPAccessCodeControlResponse *)v4 initWithIdentifier:v5 accessCode:v6 flags:v7 statusCode:v8];

  return v9;
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
  v5 = [(HAPAccessCodeControlResponse *)self identifier];

  if (v5)
  {
    v6 = [(HAPAccessCodeControlResponse *)self identifier];
    v27 = 0;
    v7 = [v6 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_24;
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
        goto LABEL_27;
      }

      v8 = 0;
LABEL_26:
      v11 = 0;
      goto LABEL_27;
    }
  }

  v12 = [(HAPAccessCodeControlResponse *)self accessCode];

  if (v12)
  {
    v13 = [(HAPAccessCodeControlResponse *)self accessCode];
    v26 = 0;
    v7 = [v13 serializeWithError:&v26];
    v8 = v26;

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

LABEL_24:

    if (a3)
    {
      v21 = v8;
      v11 = 0;
      *a3 = v8;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_18:
  v17 = [(HAPAccessCodeControlResponse *)self flags];

  if (v17)
  {
    v18 = [(HAPAccessCodeControlResponse *)self flags];
    v25 = 0;
    v7 = [v18 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v19 = [(HAPAccessCodeControlResponse *)self statusCode];

  if (v19)
  {
    v20 = [(HAPAccessCodeControlResponse *)self statusCode];
    v24 = 0;
    v7 = [v20 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_24;
    }

    [v7 bytes];
    [v7 length];
    v10 = TLV8BufferAppend();

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_27:
  TLV8BufferFree();

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v27 = a4;
    v28 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7 + v8;
    while (1)
    {
      v36 = 0;
      v34[1] = 0;
      v35 = 0;
      v34[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v27)
        {
          HMErrorFromOSStatus(Next);
          *v27 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

        v22 = v28;
        goto LABEL_30;
      }

      if (!v35)
      {
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v25;
        if (v25)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }

      if (v36 > 2u)
      {
        if (v36 == 3)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v9;
          v21 = [HAPAccessCodeFlagsWrapper parsedFromData:v15 error:&v30];
          v16 = v30;

          v18 = v11;
          v11 = v21;
LABEL_15:

LABEL_16:
          v9 = v16;
          goto LABEL_17;
        }

        if (v36 == 4)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v9;
          v19 = [HAPAccessCodeResponseStatusWrapper parsedFromData:v15 error:&v29];
          v16 = v29;

          v18 = v10;
          v10 = v19;
          goto LABEL_15;
        }
      }

      else
      {
        if (v36 == 1)
        {
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v9;
          v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v33];
          v16 = v33;

          v18 = v12;
          v12 = v20;
          goto LABEL_15;
        }

        if (v36 == 2)
        {
          v32 = v9;
          v15 = HAPTLVParseContiguousTlvs(2, v7, v13, v34, &v32);
          v16 = v32;

          if (!v16)
          {
            v31 = 0;
            v17 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v31];
            v16 = v31;
            v18 = v28;
            v28 = v17;
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }

LABEL_17:
      v7 = v34[0];
      if (v34[0] >= v13)
      {
        if (v9)
        {
LABEL_19:
          v22 = v28;
          if (v27)
          {
            v23 = v9;
            v24 = 0;
            *v27 = v9;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_30;
        }

LABEL_25:
        v22 = v28;
        goto LABEL_26;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v22 = 0;
  v12 = 0;
LABEL_26:
  [(HAPAccessCodeControlResponse *)self setIdentifier:v12];
  [(HAPAccessCodeControlResponse *)self setAccessCode:v22];
  [(HAPAccessCodeControlResponse *)self setFlags:v11];
  [(HAPAccessCodeControlResponse *)self setStatusCode:v10];
  v9 = 0;
  v24 = 1;
LABEL_30:

  return v24;
}

- (HAPAccessCodeControlResponse)initWithIdentifier:(id)a3 accessCode:(id)a4 flags:(id)a5 statusCode:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HAPAccessCodeControlResponse;
  v15 = [(HAPAccessCodeControlResponse *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_accessCode, a4);
    objc_storeStrong(&v16->_flags, a5);
    objc_storeStrong(&v16->_statusCode, a6);
  }

  return v16;
}

- (HAPAccessCodeControlResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeControlResponse;
  return [(HAPAccessCodeControlResponse *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPAccessCodeControlResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeControlResponse *)v6 parseFromData:v5 error:&v11];
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