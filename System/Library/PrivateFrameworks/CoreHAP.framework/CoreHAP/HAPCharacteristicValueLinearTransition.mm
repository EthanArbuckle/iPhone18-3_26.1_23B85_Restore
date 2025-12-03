@interface HAPCharacteristicValueLinearTransition
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueLinearTransition)init;
- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)points startBehavior:(id)behavior;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueLinearTransition

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v6 = [v3 stringWithFormat:@"<HAPCharacteristicValueLinearTransition transitionPoints=%@, startBehavior=%@>", transitionPoints, startBehavior];

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
      transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
      transitionPoints2 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
      if (transitionPoints != transitionPoints2)
      {
        transitionPoints3 = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
        transitionPoints4 = [(HAPCharacteristicValueLinearTransition *)v6 transitionPoints];
        if (![transitionPoints3 isEqual:transitionPoints4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = transitionPoints3;
      }

      startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
      startBehavior2 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
      if (startBehavior == startBehavior2)
      {
        v10 = 1;
      }

      else
      {
        startBehavior3 = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
        startBehavior4 = [(HAPCharacteristicValueLinearTransition *)v6 startBehavior];
        v10 = [startBehavior3 isEqual:startBehavior4];
      }

      transitionPoints3 = v16;
      if (transitionPoints == transitionPoints2)
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
  v4 = [HAPCharacteristicValueLinearTransition allocWithZone:zone];
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  startBehavior = [(HAPCharacteristicValueLinearTransition *)self startBehavior];
  v7 = [(HAPCharacteristicValueLinearTransition *)v4 initWithTransitionPoints:transitionPoints startBehavior:startBehavior];

  return v7;
}

- (id)serializeWithError:(id *)error
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
  selfCopy = self;
  transitionPoints = [(HAPCharacteristicValueLinearTransition *)self transitionPoints];
  v6 = [transitionPoints countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = 1;
    errorCopy = error;
    while (1)
    {
      v10 = 0;
LABEL_4:
      if (*v32 != v8)
      {
        objc_enumerationMutation(transitionPoints);
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
      v13 = [v11 serializeWithError:{&v30, errorCopy}];
      v14 = v30;
      if (v14)
      {
        v21 = v14;

        error = errorCopy;
        goto LABEL_19;
      }

      bytes = [v13 bytes];
      v16 = bytes + [v13 length];
      do
      {
        if ((v16 - bytes) >= 255)
        {
          v17 = 255;
        }

        else
        {
          v17 = v16 - bytes;
        }

        v18 = TLV8BufferAppend();
        if (v18)
        {
          v24 = v18;

          goto LABEL_22;
        }

        bytes += v17;
      }

      while (bytes < v16);

      v9 = 0;
      if (++v10 != v7)
      {
        goto LABEL_4;
      }

      v7 = [transitionPoints countByEnumeratingWithState:&v31 objects:v35 count:16];
      v9 = 0;
      error = errorCopy;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    v24 = v12;
LABEL_22:

    error = errorCopy;
    goto LABEL_23;
  }

LABEL_17:

  startBehavior = [(HAPCharacteristicValueLinearTransition *)selfCopy startBehavior];

  if (startBehavior)
  {
    startBehavior2 = [(HAPCharacteristicValueLinearTransition *)selfCopy startBehavior];
    v29 = 0;
    transitionPoints = [startBehavior2 serializeWithError:&v29];
    v21 = v29;

    if (v21)
    {
LABEL_19:

      if (error)
      {
        v22 = v21;
        v23 = 0;
        *error = v21;
        goto LABEL_29;
      }

LABEL_26:
      v23 = 0;
      goto LABEL_29;
    }

    [transitionPoints bytes];
    [transitionPoints length];
    v24 = TLV8BufferAppend();

    if (v24)
    {
LABEL_23:
      if (error)
      {
        HMErrorFromOSStatus(v24);
        v21 = 0;
        *error = v23 = 0;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  array = [MEMORY[0x277CBEB18] array];
  if (v8 < 1)
  {
    v11 = 0;
LABEL_17:
    [(HAPCharacteristicValueLinearTransition *)self setTransitionPoints:array, errorCopy];
    [(HAPCharacteristicValueLinearTransition *)self setStartBehavior:v11];
    v10 = 0;
    v18 = 1;
    goto LABEL_24;
  }

  errorCopy = error;
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
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v18 = 0;
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
      v14 = HAPTLVParseContiguousTlvs(1, bytes, v12, v26, &v25);
      v15 = v25;

      if (!v15)
      {
        v24 = 0;
        v16 = [HAPCharacteristicValueTransitionPoint parsedFromData:v14 error:&v24];
        v15 = v24;
        if (!v15)
        {
          [array addObject:v16];
        }

LABEL_11:
      }

      v10 = v15;
    }

    bytes = v26[0];
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
  if (errorCopy)
  {
    v20 = v10;
    v18 = 0;
    *errorCopy = v10;
    goto LABEL_24;
  }

LABEL_23:
  v18 = 0;
LABEL_24:

  return v18;
}

- (HAPCharacteristicValueLinearTransition)initWithTransitionPoints:(id)points startBehavior:(id)behavior
{
  pointsCopy = points;
  behaviorCopy = behavior;
  v12.receiver = self;
  v12.super_class = HAPCharacteristicValueLinearTransition;
  v8 = [(HAPCharacteristicValueLinearTransition *)&v12 init];
  if (v8)
  {
    v9 = [pointsCopy mutableCopy];
    transitionPoints = v8->_transitionPoints;
    v8->_transitionPoints = v9;

    objc_storeStrong(&v8->_startBehavior, behavior);
  }

  return v8;
}

- (HAPCharacteristicValueLinearTransition)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueLinearTransition;
  return [(HAPCharacteristicValueLinearTransition *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueLinearTransition);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueLinearTransition *)v6 parseFromData:dataCopy error:&v11];
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