@interface HAPAccessCodeConfiguration
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPAccessCodeConfiguration)init;
- (HAPAccessCodeConfiguration)initWithCharacterSet:(id)a3 minimumValueLength:(id)a4 maximumValueLength:(id)a5 maximumAccessCodes:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPAccessCodeConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessCodeConfiguration *)self characterSet];
  v5 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  v6 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
  v7 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
  v8 = [v3 stringWithFormat:@"<HAPAccessCodeConfiguration characterSet=%@, minimumValueLength=%@, maximumValueLength=%@, maximumAccessCodes=%@>", v4, v5, v6, v7];

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
      v7 = [(HAPAccessCodeConfiguration *)self characterSet];
      v8 = [(HAPAccessCodeConfiguration *)v6 characterSet];
      if (v7 != v8)
      {
        v9 = [(HAPAccessCodeConfiguration *)self characterSet];
        [(HAPAccessCodeConfiguration *)v6 characterSet];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
      v12 = [(HAPAccessCodeConfiguration *)v6 minimumValueLength];
      if (v11 != v12)
      {
        v3 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
        v30 = [(HAPAccessCodeConfiguration *)v6 minimumValueLength];
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

      v13 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
      v14 = [(HAPAccessCodeConfiguration *)v6 maximumValueLength];
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
        v17 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
        v25 = [(HAPAccessCodeConfiguration *)v6 maximumValueLength];
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
      v18 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
      v19 = [(HAPAccessCodeConfiguration *)v6 maximumAccessCodes];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
        v22 = [(HAPAccessCodeConfiguration *)v6 maximumAccessCodes];
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
  v4 = [HAPAccessCodeConfiguration allocWithZone:a3];
  v5 = [(HAPAccessCodeConfiguration *)self characterSet];
  v6 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  v7 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
  v8 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
  v9 = [(HAPAccessCodeConfiguration *)v4 initWithCharacterSet:v5 minimumValueLength:v6 maximumValueLength:v7 maximumAccessCodes:v8];

  return v9;
}

- (id)serializeWithError:(id *)a3
{
  v46 = *MEMORY[0x277D85DE8];
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
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  TLV8BufferInit();
  v5 = [(HAPAccessCodeConfiguration *)self characterSet];

  if (v5)
  {
    v6 = [(HAPAccessCodeConfiguration *)self characterSet];
    v24 = 0;
    v7 = [v6 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v10 = [(HAPAccessCodeConfiguration *)self minimumValueLength];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [(HAPAccessCodeConfiguration *)self minimumValueLength];
  v23 = 0;
  v7 = [v11 serializeWithError:&v23];
  v8 = v23;

  if (v8)
  {
    goto LABEL_19;
  }

  [v7 bytes];
  [v7 length];
  v9 = TLV8BufferAppend();
  if (v9)
  {
LABEL_12:
    v14 = v9;

LABEL_13:
    if (a3)
    {
      HMErrorFromOSStatus(v14);
      v8 = 0;
      *a3 = v15 = 0;
      goto LABEL_22;
    }

    v8 = 0;
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

LABEL_9:
  v12 = [(HAPAccessCodeConfiguration *)self maximumValueLength];

  if (v12)
  {
    v13 = [(HAPAccessCodeConfiguration *)self maximumValueLength];
    v22 = 0;
    v7 = [v13 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v16 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];

  if (v16)
  {
    v17 = [(HAPAccessCodeConfiguration *)self maximumAccessCodes];
    v21 = 0;
    v7 = [v17 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
LABEL_19:

      if (a3)
      {
        v18 = v8;
        v15 = 0;
        *a3 = v8;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_13;
    }
  }

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
  v8 = 0;
LABEL_22:
  TLV8BufferFree();

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 >= 1)
  {
    v24 = self;
    v25 = a4;
    v26 = v6;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v7 + v8;
    while (1)
    {
      v34 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (v25)
        {
          HMErrorFromOSStatus(Next);
          *v25 = v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        v6 = v26;
        goto LABEL_28;
      }

      if (!v33)
      {
        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v9 = v22;
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      if (v34 > 2u)
      {
        if (v34 == 3)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v28 = v9;
          v17 = &v28;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v28];
          v11 = v18 = v11;
          goto LABEL_14;
        }

        if (v34 == 4)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v27 = v9;
          v17 = &v27;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v27];
          v10 = v18 = v10;
          goto LABEL_14;
        }
      }

      else
      {
        if (v34 == 1)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v9;
          v17 = &v30;
          [HAPAccessCodeCharacterSetWrapper parsedFromData:v16 error:&v30];
          v13 = v18 = v13;
          goto LABEL_14;
        }

        if (v34 == 2)
        {
          v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v29 = v9;
          v17 = &v29;
          [HAPTLVUnsignedNumberValue parsedFromData:v16 error:&v29];
          v12 = v18 = v12;
LABEL_14:
          v19 = *v17;

          v9 = v19;
        }
      }

      if (v31 >= v14)
      {
        if (v9)
        {
LABEL_17:
          v6 = v26;
          if (v25)
          {
            v20 = v9;
            v21 = 0;
            *v25 = v9;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_28;
        }

LABEL_23:
        v6 = v26;
        self = v24;
        goto LABEL_24;
      }
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_24:
  [(HAPAccessCodeConfiguration *)self setCharacterSet:v13];
  [(HAPAccessCodeConfiguration *)self setMinimumValueLength:v12];
  [(HAPAccessCodeConfiguration *)self setMaximumValueLength:v11];
  [(HAPAccessCodeConfiguration *)self setMaximumAccessCodes:v10];
  v9 = 0;
  v21 = 1;
LABEL_28:

  return v21;
}

- (HAPAccessCodeConfiguration)initWithCharacterSet:(id)a3 minimumValueLength:(id)a4 maximumValueLength:(id)a5 maximumAccessCodes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HAPAccessCodeConfiguration;
  v15 = [(HAPAccessCodeConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_characterSet, a3);
    objc_storeStrong(&v16->_minimumValueLength, a4);
    objc_storeStrong(&v16->_maximumValueLength, a5);
    objc_storeStrong(&v16->_maximumAccessCodes, a6);
  }

  return v16;
}

- (HAPAccessCodeConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeConfiguration;
  return [(HAPAccessCodeConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPAccessCodeConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeConfiguration *)v6 parseFromData:v5 error:&v11];
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