@interface HAPCharacteristicValueTransitionControlResponse
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionControlResponse)init;
- (HAPCharacteristicValueTransitionControlResponse)initWithValueTransition:(id)transition transitionState:(id)state;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionControlResponse

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  valueTransition = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  transitionState = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
  v6 = [v3 stringWithFormat:@"<HAPCharacteristicValueTransitionControlResponse valueTransition=%@, transitionState=%@>", valueTransition, transitionState];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      valueTransition = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
      valueTransition2 = [(HAPCharacteristicValueTransitionControlResponse *)v6 valueTransition];
      if (valueTransition != valueTransition2)
      {
        valueTransition3 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
        valueTransition4 = [(HAPCharacteristicValueTransitionControlResponse *)v6 valueTransition];
        if (![valueTransition3 isEqual:valueTransition4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = valueTransition3;
      }

      transitionState = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
      transitionState2 = [(HAPCharacteristicValueTransitionControlResponse *)v6 transitionState];
      if (transitionState == transitionState2)
      {
        v10 = 1;
      }

      else
      {
        transitionState3 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
        transitionState4 = [(HAPCharacteristicValueTransitionControlResponse *)v6 transitionState];
        v10 = [transitionState3 isEqual:transitionState4];
      }

      valueTransition3 = v16;
      if (valueTransition == valueTransition2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionControlResponse allocWithZone:zone];
  valueTransition = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  transitionState = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
  v7 = [(HAPCharacteristicValueTransitionControlResponse *)v4 initWithValueTransition:valueTransition transitionState:transitionState];

  return v7;
}

- (id)serializeWithError:(id *)error
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
  valueTransition = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];

  if (!valueTransition)
  {
LABEL_10:
    transitionState = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];

    if (transitionState)
    {
      transitionState2 = [(HAPCharacteristicValueTransitionControlResponse *)self transitionState];
      v26 = 0;
      v7 = [transitionState2 serializeWithError:&v26];
      v8 = v26;

      if (v8)
      {
        goto LABEL_12;
      }

      bytes = [v7 bytes];
      v19 = bytes + [v7 length];
      do
      {
        if ((v19 - bytes) >= 255)
        {
          v20 = 255;
        }

        else
        {
          v20 = v19 - bytes;
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

        bytes += v22;
        if (v21)
        {
          v23 = 1;
        }

        else
        {
          v23 = bytes >= v19;
        }
      }

      while (!v23);
      v17 = v21;

      if (v17)
      {
LABEL_28:
        if (error)
        {
          HMErrorFromOSStatus(v17);
          v8 = 0;
          *error = v16 = 0;
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

  valueTransition2 = [(HAPCharacteristicValueTransitionControlResponse *)self valueTransition];
  v27 = 0;
  v7 = [valueTransition2 serializeWithError:&v27];
  v8 = v27;

  if (!v8)
  {
    bytes2 = [v7 bytes];
    v10 = bytes2 + [v7 length];
    while (1)
    {
      v11 = (v10 - bytes2) >= 255 ? 255 : v10 - bytes2;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes2 += v11;
      if (bytes2 >= v10)
      {

        goto LABEL_10;
      }
    }

    v17 = v12;

    goto LABEL_28;
  }

LABEL_12:

  if (error)
  {
    v15 = v8;
    v16 = 0;
    *error = v8;
    goto LABEL_33;
  }

LABEL_32:
  v16 = 0;
LABEL_33:
  TLV8BufferFree();

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_18:
    [(HAPCharacteristicValueTransitionControlResponse *)self setValueTransition:v10];
    [(HAPCharacteristicValueTransitionControlResponse *)self setTransitionState:v9];
    v11 = 0;
    v18 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v28 = 0;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (error)
      {
        HMErrorFromOSStatus(Next);
        *error = v18 = 0;
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
      v14 = HAPTLVParseContiguousTlvs(2, bytes, v12, v26, &v23);
      v15 = v23;

      if (v15)
      {
        goto LABEL_10;
      }

      v22 = 0;
      v16 = &v22;
      [HAPCharacteristicValueTransitionState parsedFromData:v14 error:&v22];
      v9 = v17 = v9;
LABEL_12:
      v11 = *v16;

LABEL_13:
      goto LABEL_14;
    }

    if (v28 == 1)
    {
      v25 = v11;
      v14 = HAPTLVParseContiguousTlvs(1, bytes, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = &v24;
        [HAPCharacteristicValueTransition parsedFromData:v14 error:&v24];
        v10 = v17 = v10;
        goto LABEL_12;
      }

LABEL_10:
      v11 = v15;
      goto LABEL_13;
    }

LABEL_14:
    bytes = v26[0];
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
  if (error)
  {
    v20 = v11;
    v18 = 0;
    *error = v11;
    goto LABEL_25;
  }

LABEL_24:
  v18 = 0;
LABEL_25:

  return v18;
}

- (HAPCharacteristicValueTransitionControlResponse)initWithValueTransition:(id)transition transitionState:(id)state
{
  transitionCopy = transition;
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueTransitionControlResponse;
  v9 = [(HAPCharacteristicValueTransitionControlResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueTransition, transition);
    objc_storeStrong(&v10->_transitionState, state);
  }

  return v10;
}

- (HAPCharacteristicValueTransitionControlResponse)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionControlResponse;
  return [(HAPCharacteristicValueTransitionControlResponse *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionControlResponse);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionControlResponse *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
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