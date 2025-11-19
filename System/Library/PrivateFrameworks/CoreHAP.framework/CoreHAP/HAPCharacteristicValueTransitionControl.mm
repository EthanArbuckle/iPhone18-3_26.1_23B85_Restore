@interface HAPCharacteristicValueTransitionControl
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionControl)init;
- (HAPCharacteristicValueTransitionControl)initWithTransitionFetch:(id)a3 transitionStart:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
  v5 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
  v6 = [v3 stringWithFormat:@"<HAPCharacteristicValueTransitionControl transitionFetch=%@, transitionStart=%@>", v4, v5];

  return v6;
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
      v7 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
      v8 = [(HAPCharacteristicValueTransitionControl *)v6 transitionFetch];
      if (v7 != v8)
      {
        v9 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
        v3 = [(HAPCharacteristicValueTransitionControl *)v6 transitionFetch];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
      v12 = [(HAPCharacteristicValueTransitionControl *)v6 transitionStart];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
        v14 = [(HAPCharacteristicValueTransitionControl *)v6 transitionStart];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueTransitionControl allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
  v6 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
  v7 = [(HAPCharacteristicValueTransitionControl *)v4 initWithTransitionFetch:v5 transitionStart:v6];

  return v7;
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
  v5 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];

  if (!v5)
  {
LABEL_10:
    v13 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];

    if (v13)
    {
      v14 = [(HAPCharacteristicValueTransitionControl *)self transitionStart];
      v26 = 0;
      v7 = [v14 serializeWithError:&v26];
      v8 = v26;

      if (v8)
      {
        goto LABEL_12;
      }

      v18 = [v7 bytes];
      v19 = v18 + [v7 length];
      do
      {
        if ((v19 - v18) >= 255)
        {
          v20 = 255;
        }

        else
        {
          v20 = v19 - v18;
        }

        v21 = TLV8BufferAppend();
        if (v21)
        {
          v22 = 0;
        }

        else
        {
          v22 = v20;
        }

        v18 += v22;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = v18 >= v19;
        }
      }

      while (!v23);
      v17 = v21;

      if (v17)
      {
LABEL_28:
        if (a3)
        {
          HMErrorFromOSStatus(v17);
          v8 = 0;
          *a3 = v16 = 0;
          goto LABEL_33;
        }

        v8 = 0;
        goto LABEL_32;
      }
    }

    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
    v8 = 0;
    goto LABEL_33;
  }

  v6 = [(HAPCharacteristicValueTransitionControl *)self transitionFetch];
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
        break;
      }

      v9 += v11;
      if (v9 >= v10)
      {

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_28;
  }

LABEL_12:

  if (a3)
  {
    v15 = v8;
    v16 = 0;
    *a3 = v8;
    goto LABEL_33;
  }

LABEL_32:
  v16 = 0;
LABEL_33:
  TLV8BufferFree();

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_18:
    [(HAPCharacteristicValueTransitionControl *)self setTransitionFetch:v10];
    [(HAPCharacteristicValueTransitionControl *)self setTransitionStart:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7 + v8;
  while (1)
  {
    v28 = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (a4)
      {
        HMErrorFromOSStatus(Next);
        *a4 = v18 = 0;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v23 = v11;
      v14 = HAPTLVParseContiguousTlvs(2, v7, v12, v26, &v23);
      v15 = v23;

      if (v15)
      {
        goto LABEL_10;
      }

      v22 = 0;
      v16 = &v22;
      [HAPCharacteristicValueTransitionStart parsedFromData:v14 error:&v22];
      v9 = v17 = v9;
LABEL_12:
      v11 = *v16;

LABEL_13:
      goto LABEL_14;
    }

    if (v28 == 1)
    {
      v25 = v11;
      v14 = HAPTLVParseContiguousTlvs(1, v7, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = &v24;
        [HAPCharacteristicValueTransitionFetch parsedFromData:v14 error:&v24];
        v10 = v17 = v10;
        goto LABEL_12;
      }

LABEL_10:
      v11 = v15;
      goto LABEL_13;
    }

LABEL_14:
    v7 = v26[0];
    if (v26[0] >= v12)
    {
      if (!v11)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v19;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_22:
  if (a4)
  {
    v20 = v11;
    v18 = 0;
    *a4 = v11;
    goto LABEL_25;
  }

LABEL_24:
  v18 = 0;
LABEL_25:

  return v18;
}

- (HAPCharacteristicValueTransitionControl)initWithTransitionFetch:(id)a3 transitionStart:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueTransitionControl;
  v9 = [(HAPCharacteristicValueTransitionControl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transitionFetch, a3);
    objc_storeStrong(&v10->_transitionStart, a4);
  }

  return v10;
}

- (HAPCharacteristicValueTransitionControl)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControl;
  return [(HAPCharacteristicValueTransitionControl *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControl *)v6 parseFromData:v5 error:&v11];
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