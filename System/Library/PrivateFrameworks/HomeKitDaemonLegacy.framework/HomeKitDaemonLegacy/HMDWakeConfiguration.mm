@interface HMDWakeConfiguration
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDWakeConfiguration)init;
- (HMDWakeConfiguration)initWithReserved:(id)a3 custom1:(id)a4 custom2:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDWakeConfiguration

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWakeConfiguration *)self reserved];
  v5 = [(HMDWakeConfiguration *)self custom1];
  v6 = [(HMDWakeConfiguration *)self custom2];
  v7 = [v3 stringWithFormat:@"<HMDWakeConfiguration reserved=%@, custom1=%@, custom2=%@>", v4, v5, v6];

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
      v8 = [(HMDWakeConfiguration *)self reserved];
      v9 = [(HMDWakeConfiguration *)v7 reserved];
      if (v8 != v9)
      {
        v3 = [(HMDWakeConfiguration *)self reserved];
        v4 = [(HMDWakeConfiguration *)v7 reserved];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HMDWakeConfiguration *)self custom1];
      v12 = [(HMDWakeConfiguration *)v7 custom1];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HMDWakeConfiguration *)self custom1];
        v27 = [(HMDWakeConfiguration *)v7 custom1];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HMDWakeConfiguration *)self custom2];
      v16 = [(HMDWakeConfiguration *)v7 custom2];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HMDWakeConfiguration *)self custom2];
        v18 = v25 = v3;
        [(HMDWakeConfiguration *)v7 custom2];
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
  v4 = [HMDWakeConfiguration allocWithZone:a3];
  v5 = [(HMDWakeConfiguration *)self reserved];
  v6 = [(HMDWakeConfiguration *)self custom1];
  v7 = [(HMDWakeConfiguration *)self custom2];
  v8 = [(HMDWakeConfiguration *)v4 initWithReserved:v5 custom1:v6 custom2:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
{
  v54 = *MEMORY[0x277D85DE8];
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
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  TLV8BufferInit();
  v5 = [(HMDWakeConfiguration *)self reserved];

  if (v5)
  {
    v6 = [(HMDWakeConfiguration *)self reserved];
    v32 = 0;
    v7 = [v6 serializeWithError:&v32];
    v8 = v32;

    if (!v8)
    {
      v9 = [v7 bytes];
      v10 = v9 + [v7 length];
      while (1)
      {
        v11 = (v10 - v9) >= 255 ? 255 : v10 - v9;
        if (TLV8BufferAppend())
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
  v12 = [(HMDWakeConfiguration *)self custom1];

  if (v12)
  {
    v13 = [(HMDWakeConfiguration *)self custom1];
    v31 = 0;
    v7 = [v13 serializeWithError:&v31];
    v8 = v31;

    if (!v8)
    {
      v14 = [v7 bytes];
      v15 = v14 + [v7 length];
      while (1)
      {
        v16 = (v15 - v14) >= 255 ? 255 : v15 - v14;
        if (TLV8BufferAppend())
        {
          break;
        }

        v14 += v16;
        if (v14 >= v15)
        {

          goto LABEL_19;
        }
      }

LABEL_23:

LABEL_24:
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v20 = 0;
        goto LABEL_42;
      }

      v8 = 0;
      goto LABEL_27;
    }

LABEL_21:

    if (a3)
    {
      v19 = v8;
      v20 = 0;
      *a3 = v8;
      goto LABEL_42;
    }

LABEL_27:
    v20 = 0;
    goto LABEL_42;
  }

LABEL_19:
  v17 = [(HMDWakeConfiguration *)self custom2];

  if (v17)
  {
    v18 = [(HMDWakeConfiguration *)self custom2];
    v30 = 0;
    v7 = [v18 serializeWithError:&v30];
    v8 = v30;

    if (v8)
    {
      goto LABEL_21;
    }

    v21 = [v7 bytes];
    v22 = v21 + [v7 length];
    do
    {
      if ((v22 - v21) >= 255)
      {
        v23 = 255;
      }

      else
      {
        v23 = v22 - v21;
      }

      v24 = TLV8BufferAppend();
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      v21 += v25;
      if (v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = v21 >= v22;
      }
    }

    while (!v26);
    v27 = v24;

    if (v27)
    {
      goto LABEL_24;
    }
  }

  v20 = [MEMORY[0x277CBEA90] dataWithBytes:v33 length:?];
  v8 = 0;
LABEL_42:
  TLV8BufferFree();

  v28 = *MEMORY[0x277D85DE8];

  return v20;
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
    [(HMDWakeConfiguration *)self setReserved:v12];
    [(HMDWakeConfiguration *)self setCustom1:v11];
    [(HMDWakeConfiguration *)self setCustom2:v10];
    v9 = 0;
    v18 = 1;
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
    v29 = 0;
    v30 = 0;
    v28 = 0;
    if (TLV8GetNext())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v18 = 0;
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
      case 2:
        v23 = v9;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v23;

        if (v15)
        {
          goto LABEL_13;
        }

        v22 = 0;
        v16 = &v22;
        [HMDWakeConfigurationParameters parsedFromData:v14 error:&v22];
        v10 = v17 = v10;
        goto LABEL_15;
      case 1:
        v25 = v9;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v25;

        if (v15)
        {
          goto LABEL_13;
        }

        v24 = 0;
        v16 = &v24;
        [HMDWakeConfigurationParameters parsedFromData:v14 error:&v24];
        v11 = v17 = v11;
LABEL_15:
        v9 = *v16;

        goto LABEL_16;
      case 0:
        v27 = v9;
        v14 = HAPTLVParseContiguousTlvs();
        v15 = v27;

        if (!v15)
        {
          v26 = 0;
          v16 = &v26;
          [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v26];
          v12 = v17 = v12;
          goto LABEL_15;
        }

LABEL_13:
        v9 = v15;
LABEL_16:

        break;
    }

    if (v28 >= v13)
    {
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v19;
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_25:
  if (a4)
  {
    v20 = v9;
    v18 = 0;
    *a4 = v9;
    goto LABEL_28;
  }

LABEL_27:
  v18 = 0;
LABEL_28:

  return v18;
}

- (HMDWakeConfiguration)initWithReserved:(id)a3 custom1:(id)a4 custom2:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDWakeConfiguration;
  v12 = [(HMDWakeConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_reserved, a3);
    objc_storeStrong(&v13->_custom1, a4);
    objc_storeStrong(&v13->_custom2, a5);
  }

  return v13;
}

- (HMDWakeConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDWakeConfiguration;
  return [(HMDWakeConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDWakeConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDWakeConfiguration *)v6 parseFromData:v5 error:&v11];
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