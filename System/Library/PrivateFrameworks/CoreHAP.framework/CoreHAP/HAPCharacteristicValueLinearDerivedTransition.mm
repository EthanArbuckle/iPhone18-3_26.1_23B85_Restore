@interface HAPCharacteristicValueLinearDerivedTransition
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueLinearDerivedTransition)init;
- (HAPCharacteristicValueLinearDerivedTransition)initWithTransitionPoints:(id)a3 sourceHAPInstanceID:(id)a4 sourceValueRange:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueLinearDerivedTransition

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  v5 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
  v6 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
  v7 = [v3 stringWithFormat:@"<HAPCharacteristicValueLinearDerivedTransition transitionPoints=%@, sourceHAPInstanceID=%@, sourceValueRange=%@>", v4, v5, v6];

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
      v8 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
      v9 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 transitionPoints];
      if (v8 != v9)
      {
        v3 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
        v4 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 transitionPoints];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
      v12 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceHAPInstanceID];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
        v27 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceHAPInstanceID];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
      v16 = [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceValueRange];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
        v18 = v25 = v3;
        [(HAPCharacteristicValueLinearDerivedTransition *)v7 sourceValueRange];
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
  v4 = [HAPCharacteristicValueLinearDerivedTransition allocWithZone:a3];
  v5 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  v6 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceHAPInstanceID];
  v7 = [(HAPCharacteristicValueLinearDerivedTransition *)self sourceValueRange];
  v8 = [(HAPCharacteristicValueLinearDerivedTransition *)v4 initWithTransitionPoints:v5 sourceHAPInstanceID:v6 sourceValueRange:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
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
  v47 = 0u;
  TLV8BufferInit();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = self;
  v5 = [(HAPCharacteristicValueLinearDerivedTransition *)self transitionPoints];
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    v9 = 1;
    v37 = a3;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v43 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      if ((v9 & 1) == 0)
      {
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }
      }

      v41 = 0;
      v13 = [v11 serializeWithError:&v41];
      v14 = v41;
      if (v14)
      {
        v21 = v14;

        a3 = v37;
        goto LABEL_31;
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
          v23 = v18;

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

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v9 = 0;
      a3 = v37;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    v23 = v12;
LABEL_22:
    a3 = v37;
    goto LABEL_23;
  }

LABEL_17:

  v19 = [(HAPCharacteristicValueLinearDerivedTransition *)v38 sourceHAPInstanceID];

  if (v19)
  {
    v20 = [(HAPCharacteristicValueLinearDerivedTransition *)v38 sourceHAPInstanceID];
    v40 = 0;
    v5 = [v20 serializeWithError:&v40];
    v21 = v40;

    if (v21)
    {
      goto LABEL_31;
    }

    [v5 bytes];
    [v5 length];
    v22 = TLV8BufferAppend();
    if (v22)
    {
      v23 = v22;
LABEL_23:

LABEL_24:
      if (a3)
      {
        HMErrorFromOSStatus(v23);
        v21 = 0;
        *a3 = v24 = 0;
        goto LABEL_34;
      }

      v21 = 0;
LABEL_33:
      v24 = 0;
      goto LABEL_34;
    }
  }

  v25 = [(HAPCharacteristicValueLinearDerivedTransition *)v38 sourceValueRange];

  if (v25)
  {
    v26 = [(HAPCharacteristicValueLinearDerivedTransition *)v38 sourceValueRange];
    v39 = 0;
    v5 = [v26 serializeWithError:&v39];
    v21 = v39;

    if (v21)
    {
LABEL_31:

      if (a3)
      {
        v27 = v21;
        v24 = 0;
        *a3 = v21;
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v30 = a3;
    v31 = [v5 bytes];
    v32 = v31 + [v5 length];
    do
    {
      if ((v32 - v31) >= 255)
      {
        v33 = 255;
      }

      else
      {
        v33 = v32 - v31;
      }

      v34 = TLV8BufferAppend();
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      v31 += v35;
      if (v34)
      {
        v36 = 1;
      }

      else
      {
        v36 = v31 >= v32;
      }
    }

    while (!v36);
    v23 = v34;

    a3 = v30;
    if (v23)
    {
      goto LABEL_24;
    }
  }

  v24 = [MEMORY[0x277CBEA90] dataWithBytes:v47 length:?];
  v21 = 0;
LABEL_34:
  TLV8BufferFree();

  v28 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];
  v25 = [MEMORY[0x277CBEB18] array];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v6 + v7;
    while (1)
    {
      v33 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        if (a4)
        {
          HMErrorFromOSStatus(Next);
          *a4 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }

        v19 = v25;
        goto LABEL_30;
      }

      if (!v32)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v8 = v21;
        if (!v21)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      if (v33 == 3)
      {
        break;
      }

      if (v33 == 2)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v8;
        v16 = [HAPTLVUnsignedNumberValue parsedFromData:v13 error:&v28];
        v17 = v28;

        v15 = v10;
        v10 = v16;
        v8 = v17;
        goto LABEL_15;
      }

      if (v33 == 1)
      {
        v30 = v8;
        v13 = HAPTLVParseContiguousTlvs(1, v6, v11, v31, &v30);
        v14 = v30;

        if (!v14)
        {
          v29 = 0;
          v15 = [HAPCharacteristicValueLinearDerivedTransitionPoint parsedFromData:v13 error:&v29];
          v8 = v29;
          if (!v8)
          {
            [v25 addObject:v15];
          }

LABEL_15:

LABEL_16:
          goto LABEL_17;
        }

LABEL_13:
        v8 = v14;
        goto LABEL_16;
      }

LABEL_17:
      v6 = v31[0];
      if (v31[0] >= v11)
      {
        if (!v8)
        {
          goto LABEL_21;
        }

LABEL_25:
        v19 = v25;
        if (a4)
        {
          v22 = v8;
          v20 = 0;
          *a4 = v8;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_30;
      }
    }

    v27 = v8;
    v13 = HAPTLVParseContiguousTlvs(3, v6, v11, v31, &v27);
    v14 = v27;

    if (!v14)
    {
      v26 = 0;
      v18 = [HAPCharacteristicValueRange parsedFromData:v13 error:&v26];
      v8 = v26;
      v15 = v9;
      v9 = v18;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
LABEL_21:
  v19 = v25;
  [(HAPCharacteristicValueLinearDerivedTransition *)self setTransitionPoints:v25];
  [(HAPCharacteristicValueLinearDerivedTransition *)self setSourceHAPInstanceID:v10];
  [(HAPCharacteristicValueLinearDerivedTransition *)self setSourceValueRange:v9];
  v8 = 0;
  v20 = 1;
LABEL_30:

  return v20;
}

- (HAPCharacteristicValueLinearDerivedTransition)initWithTransitionPoints:(id)a3 sourceHAPInstanceID:(id)a4 sourceValueRange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueLinearDerivedTransition;
  v11 = [(HAPCharacteristicValueLinearDerivedTransition *)&v15 init];
  if (v11)
  {
    v12 = [v8 mutableCopy];
    transitionPoints = v11->_transitionPoints;
    v11->_transitionPoints = v12;

    objc_storeStrong(&v11->_sourceHAPInstanceID, a4);
    objc_storeStrong(&v11->_sourceValueRange, a5);
  }

  return v11;
}

- (HAPCharacteristicValueLinearDerivedTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearDerivedTransition;
  return [(HAPCharacteristicValueLinearDerivedTransition *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearDerivedTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearDerivedTransition *)v6 parseFromData:v5 error:&v11];
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