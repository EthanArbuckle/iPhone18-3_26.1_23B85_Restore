@interface HAPCharacteristicValueLinearTransition
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueLinearTransition)init;
- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)a3 startBehavior:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueLinearTransition

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  v5 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v6 = [v3 stringWithFormat:@"<HAPCharacteristicValueLinearTransition transitionPoints=%@, startBehavior=%@>", v4, v5];

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
      v7 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
      v8 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
      if (v7 != v8)
      {
        v9 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
        v3 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
      v12 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
        v14 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
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
  v4 = [HAPCharacteristicValueLinearTransition allocWithZone:a3];
  v5 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  v6 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v7 = [(HAPCharacteristicValueLinearTransition *)v4 initWithTransitionPoints:v5 startBehavior:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
{
  v57 = *MEMORY[0x277D85DE8];
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
  v36 = 0u;
  TLV8BufferInit();
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = self;
  v5 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = 1;
    v27 = a3;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v32 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      if ((v9 & 1) == 0)
      {
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }
      }

      v30 = 0;
      v13 = [v11 serializeWithError:{&v30, v27}];
      v14 = v30;
      if (v14)
      {
        v21 = v14;

        a3 = v27;
        goto LABEL_19;
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
          v24 = v18;

          goto LABEL_22;
        }

        v15 += v17;
      }

      while (v15 < v16);

      v9 = 0;
      if (++v10 != v7)
      {
        goto LABEL_4;
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v9 = 0;
      a3 = v27;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    v24 = v12;
LABEL_22:

    a3 = v27;
    goto LABEL_23;
  }

LABEL_17:

  v19 = [(HAPCharacteristicValueLinearTransition *)v28 startBehavior];

  if (v19)
  {
    v20 = [(HAPCharacteristicValueLinearTransition *)v28 startBehavior];
    v29 = 0;
    v5 = [v20 serializeWithError:&v29];
    v21 = v29;

    if (v21)
    {
LABEL_19:

      if (a3)
      {
        v22 = v21;
        v23 = 0;
        *a3 = v21;
        goto LABEL_29;
      }

LABEL_26:
      v23 = 0;
      goto LABEL_29;
    }

    [v5 bytes];
    [v5 length];
    v24 = TLV8BufferAppend();

    if (v24)
    {
LABEL_23:
      if (a3)
      {
        HMErrorFromOSStatus(v24);
        v21 = 0;
        *a3 = v23 = 0;
        goto LABEL_29;
      }

      v21 = 0;
      goto LABEL_26;
    }
  }

  v23 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:?];
  v21 = 0;
LABEL_29:
  TLV8BufferFree();

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
    v11 = 0;
LABEL_17:
    [(HAPCharacteristicValueLinearTransition *)self setTransitionPoints:v9, v22];
    [(HAPCharacteristicValueLinearTransition *)self setStartBehavior:v11];
    v10 = 0;
    v18 = 1;
    goto LABEL_24;
  }

  v22 = a4;
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
      if (v22)
      {
        HMErrorFromOSStatus(Next);
        *v22 = v18 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!v27)
    {
      break;
    }

    if (v28 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v10;
      v17 = [HAPCharacteristicValueTransitionLinearStartConditionWrapper parsedFromData:v14 error:&v23];
      v15 = v23;

      v16 = v11;
      v11 = v17;
      goto LABEL_11;
    }

    if (v28 == 1)
    {
      v25 = v10;
      v14 = HAPTLVParseContiguousTlvs(1, v7, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = [HAPCharacteristicValueTransitionPoint parsedFromData:v14 error:&v24];
        v15 = v24;
        if (!v15)
        {
          [v9 addObject:v16];
        }

LABEL_11:
      }

      v10 = v15;
    }

    v7 = v26[0];
    if (v26[0] >= v12)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v10 = v19;
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_21:
  if (v22)
  {
    v20 = v10;
    v18 = 0;
    *v22 = v10;
    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
LABEL_24:

  return v18;
}

- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)a3 startBehavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueLinearTransition;
  v8 = [(HAPCharacteristicValueLinearTransition *)&v12 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    transitionPoints = v8->_transitionPoints;
    v8->_transitionPoints = v9;

    objc_storeStrong(&v8->_startBehavior, a4);
  }

  return v8;
}

- (HAPCharacteristicValueLinearTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearTransition;
  return [(HAPCharacteristicValueLinearTransition *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearTransition *)v6 parseFromData:v5 error:&v11];
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