@interface HAPCharacteristicValueTransitionControllerContext
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPCharacteristicValueTransitionControllerContext)init;
- (HAPCharacteristicValueTransitionControllerContext)initWithIdentifier:(id)a3 startTime:(id)a4 transitionChecksum:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPCharacteristicValueTransitionControllerContext

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
  v5 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
  v6 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
  v7 = [v3 stringWithFormat:@"<HAPCharacteristicValueTransitionControllerContext identifier=%@, startTime=%@, transitionChecksum=%@>", v4, v5, v6];

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
      v8 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
      v9 = [(HAPCharacteristicValueTransitionControllerContext *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
        v4 = [(HAPCharacteristicValueTransitionControllerContext *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
      v12 = [(HAPCharacteristicValueTransitionControllerContext *)v7 startTime];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
        v27 = [(HAPCharacteristicValueTransitionControllerContext *)v7 startTime];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
      v16 = [(HAPCharacteristicValueTransitionControllerContext *)v7 transitionChecksum];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
        v18 = v25 = v3;
        [(HAPCharacteristicValueTransitionControllerContext *)v7 transitionChecksum];
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
  v4 = [HAPCharacteristicValueTransitionControllerContext allocWithZone:a3];
  v5 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
  v6 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
  v7 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
  v8 = [(HAPCharacteristicValueTransitionControllerContext *)v4 initWithIdentifier:v5 startTime:v6 transitionChecksum:v7];

  return v8;
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
  v5 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];

  if (!v5)
  {
LABEL_10:
    v13 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];

    if (v13)
    {
      v14 = [(HAPCharacteristicValueTransitionControllerContext *)self startTime];
      v23 = 0;
      v7 = [v14 serializeWithError:&v23];
      v8 = v23;

      if (v8)
      {
        goto LABEL_15;
      }

      [v7 bytes];
      [v7 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
        goto LABEL_19;
      }
    }

    v16 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];

    if (v16)
    {
      v17 = [(HAPCharacteristicValueTransitionControllerContext *)self transitionChecksum];
      v22 = 0;
      v7 = [v17 serializeWithError:&v22];
      v8 = v22;

      if (v8)
      {
        goto LABEL_15;
      }

      [v7 bytes];
      [v7 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
LABEL_19:
        if (a3)
        {
          HMErrorFromOSStatus(v15);
          v8 = 0;
          *a3 = v19 = 0;
          goto LABEL_24;
        }

        v8 = 0;
        goto LABEL_23;
      }
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
    v8 = 0;
    goto LABEL_24;
  }

  v6 = [(HAPCharacteristicValueTransitionControllerContext *)self identifier];
  v24 = 0;
  v7 = [v6 serializeWithError:&v24];
  v8 = v24;

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

    v15 = v12;

    goto LABEL_19;
  }

LABEL_15:

  if (a3)
  {
    v18 = v8;
    v19 = 0;
    *a3 = v8;
    goto LABEL_24;
  }

LABEL_23:
  v19 = 0;
LABEL_24:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
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
LABEL_23:
    [(HAPCharacteristicValueTransitionControllerContext *)self setIdentifier:v12, v25];
    [(HAPCharacteristicValueTransitionControllerContext *)self setStartTime:v11];
    [(HAPCharacteristicValueTransitionControllerContext *)self setTransitionChecksum:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  v25 = self;
  v26 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v33 = 0;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v32)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v23;
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    switch(v33)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v27];
        v16 = v27;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v16;
        break;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v9;
        v19 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v28];
        v16 = v28;

        v18 = v11;
        v11 = v19;
        goto LABEL_12;
      case 1:
        v30 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, v7, v13, v31, &v30);
        v16 = v30;

        if (!v16)
        {
          v29 = 0;
          v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v29];
          v16 = v29;
          v18 = v12;
          v12 = v17;
          goto LABEL_12;
        }

        goto LABEL_13;
    }

    v7 = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (v26)
        {
          v21 = v9;
          v22 = 0;
          *v26 = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = v25;
      goto LABEL_23;
    }
  }

  if (v26)
  {
    HMErrorFromOSStatus(Next);
    *v26 = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (HAPCharacteristicValueTransitionControllerContext)initWithIdentifier:(id)a3 startTime:(id)a4 transitionChecksum:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueTransitionControllerContext;
  v12 = [(HAPCharacteristicValueTransitionControllerContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_startTime, a4);
    objc_storeStrong(&v13->_transitionChecksum, a5);
  }

  return v13;
}

- (HAPCharacteristicValueTransitionControllerContext)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControllerContext;
  return [(HAPCharacteristicValueTransitionControllerContext *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControllerContext);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControllerContext *)v6 parseFromData:v5 error:&v11];
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