@interface HAPCharacteristicValueTransitionStart
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionStart)init;
- (HAPCharacteristicValueTransitionStart)initWithTransitions:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionStart

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v4 = [v2 stringWithFormat:@"<HAPCharacteristicValueTransitionStart transitions=%@>", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPCharacteristicValueTransitionStart *)self transitions];
      v7 = [(HAPCharacteristicValueTransitionStart *)v5 transitions];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HAPCharacteristicValueTransitionStart *)self transitions];
        v9 = [(HAPCharacteristicValueTransitionStart *)v5 transitions];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HAPCharacteristicValueTransitionStart allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v6 = [(HAPCharacteristicValueTransitionStart *)v4 initWithTransitions:v5];

  return v6;
}

- (id)serializeWithError:(id *)a3
{
  v53 = *MEMORY[0x277D85DE8];
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
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  TLV8BufferInit();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(HAPCharacteristicValueTransitionStart *)self transitions];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v6)
  {
LABEL_17:

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:?];
    v20 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = *v28;
  v9 = 1;
  v25 = a3;
  while (1)
  {
    v10 = 0;
LABEL_4:
    if (*v28 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v11 = *(*(&v27 + 1) + 8 * v10);
    if ((v9 & 1) == 0)
    {
      v12 = TLV8BufferAppend();
      if (v12)
      {
        v21 = v12;
LABEL_19:

        if (v25)
        {
          HMErrorFromOSStatus(v21);
          v20 = 0;
          *v25 = v19 = 0;
          goto LABEL_23;
        }

        v20 = 0;
        goto LABEL_22;
      }
    }

    v26 = 0;
    v13 = [v11 serializeWithError:{&v26, v25}];
    v14 = v26;
    if (v14)
    {
      break;
    }

    v15 = [v13 bytes];
    v16 = v15 + [v13 length];
    do
    {
      if ((v16 - v15) >= 255)
      {
        v17 = 255;
      }

      else
      {
        v17 = v16 - v15;
      }

      v18 = TLV8BufferAppend();
      if (v18)
      {
        v21 = v18;

        goto LABEL_19;
      }

      v15 += v17;
    }

    while (v15 < v16);

    v9 = 0;
    if (++v10 != v7)
    {
      goto LABEL_4;
    }

    v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v9 = 0;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v20 = v14;

  if (!v25)
  {
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v24 = v20;
  v19 = 0;
  *v25 = v20;
LABEL_23:
  TLV8BufferFree();

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
LABEL_18:
    [(HAPCharacteristicValueTransitionStart *)self setTransitions:v9];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    v10 = 0;
    v11 = v7 + v8;
    while (1)
    {
      v24 = 0;
      v22[1] = 0;
      v23 = 0;
      v22[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v23)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v10 = v18;
        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (v24 == 1)
      {
        v21 = v10;
        v13 = HAPTLVParseContiguousTlvs(1, v7, v11, v22, &v21);
        v14 = v21;

        if (!v14)
        {
          v20 = 0;
          v15 = [HAPCharacteristicValueTransition parsedFromData:v13 error:&v20];
          v14 = v20;
          if (!v14)
          {
            [v9 addObject:v15];
          }
        }

        v10 = v14;
      }

      v7 = v22[0];
      if (v22[0] >= v11)
      {
        if (!v10)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4)
        {
          v16 = v10;
          v17 = 0;
          *a4 = v10;
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if (a4)
    {
      HMErrorFromOSStatus(Next);
      *a4 = v17 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (HAPCharacteristicValueTransitionStart)initWithTransitions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPCharacteristicValueTransitionStart;
  v5 = [(HAPCharacteristicValueTransitionStart *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    transitions = v5->_transitions;
    v5->_transitions = v6;
  }

  return v5;
}

- (HAPCharacteristicValueTransitionStart)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionStart;
  return [(HAPCharacteristicValueTransitionStart *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionStart);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionStart *)v6 parseFromData:v5 error:&v11];
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