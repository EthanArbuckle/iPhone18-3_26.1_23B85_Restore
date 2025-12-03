@interface HAPCharacteristicValueTransitionPoint
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionPoint)init;
- (HAPCharacteristicValueTransitionPoint)initWithTargetValue:(id)value targetCompletionDuration:(id)duration startDelayDuration:(id)delayDuration;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionPoint

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  targetValue = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
  targetCompletionDuration = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
  startDelayDuration = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
  v7 = [v3 stringWithFormat:@"<HAPCharacteristicValueTransitionPoint targetValue=%@, targetCompletionDuration=%@, startDelayDuration=%@>", targetValue, targetCompletionDuration, startDelayDuration];

  return v7;
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
      v7 = equalCopy;
      targetValue = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
      targetValue2 = [(HAPCharacteristicValueTransitionPoint *)v7 targetValue];
      if (targetValue != targetValue2)
      {
        targetValue3 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
        targetValue4 = [(HAPCharacteristicValueTransitionPoint *)v7 targetValue];
        if (![targetValue3 isEqual:targetValue4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      targetCompletionDuration = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
      targetCompletionDuration2 = [(HAPCharacteristicValueTransitionPoint *)v7 targetCompletionDuration];
      v13 = targetCompletionDuration2;
      if (targetCompletionDuration == targetCompletionDuration2)
      {
        v28 = targetCompletionDuration2;
      }

      else
      {
        targetCompletionDuration3 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
        targetCompletionDuration4 = [(HAPCharacteristicValueTransitionPoint *)v7 targetCompletionDuration];
        if (![targetCompletionDuration3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = targetCompletionDuration3;
        v28 = v13;
      }

      startDelayDuration = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
      startDelayDuration2 = [(HAPCharacteristicValueTransitionPoint *)v7 startDelayDuration];
      v17 = startDelayDuration2;
      if (startDelayDuration == startDelayDuration2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
        v18 = v25 = targetValue3;
        [(HAPCharacteristicValueTransitionPoint *)v7 startDelayDuration];
        v24 = targetCompletionDuration;
        v19 = targetValue4;
        v20 = targetValue2;
        v22 = v21 = targetValue;
        v10 = [v18 isEqual:v22];

        targetValue = v21;
        targetValue2 = v20;
        targetValue4 = v19;
        targetCompletionDuration = v24;

        targetValue3 = v25;
      }

      v13 = v28;
      targetCompletionDuration3 = v26;
      if (targetCompletionDuration == v28)
      {
LABEL_18:

        if (targetValue == targetValue2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionPoint allocWithZone:zone];
  targetValue = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
  targetCompletionDuration = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
  startDelayDuration = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
  v8 = [(HAPCharacteristicValueTransitionPoint *)v4 initWithTargetValue:targetValue targetCompletionDuration:targetCompletionDuration startDelayDuration:startDelayDuration];

  return v8;
}

- (id)serializeWithError:(id *)error
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
  targetValue = [(HAPCharacteristicValueTransitionPoint *)self targetValue];

  if (!targetValue)
  {
LABEL_10:
    targetCompletionDuration = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];

    if (targetCompletionDuration)
    {
      targetCompletionDuration2 = [(HAPCharacteristicValueTransitionPoint *)self targetCompletionDuration];
      v23 = 0;
      v7 = [targetCompletionDuration2 serializeWithError:&v23];
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

    startDelayDuration = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];

    if (startDelayDuration)
    {
      startDelayDuration2 = [(HAPCharacteristicValueTransitionPoint *)self startDelayDuration];
      v22 = 0;
      v7 = [startDelayDuration2 serializeWithError:&v22];
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
        if (error)
        {
          HMErrorFromOSStatus(v15);
          v8 = 0;
          *error = v19 = 0;
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

  targetValue2 = [(HAPCharacteristicValueTransitionPoint *)self targetValue];
  v24 = 0;
  v7 = [targetValue2 serializeWithError:&v24];
  v8 = v24;

  if (!v8)
  {
    bytes = [v7 bytes];
    v10 = bytes + [v7 length];
    while (1)
    {
      v11 = (v10 - bytes) >= 255 ? 255 : v10 - bytes;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes += v11;
      if (bytes >= v10)
      {

        goto LABEL_10;
      }
    }

    v15 = v12;

    goto LABEL_19;
  }

LABEL_15:

  if (error)
  {
    v18 = v8;
    v19 = 0;
    *error = v8;
    goto LABEL_24;
  }

LABEL_23:
  v19 = 0;
LABEL_24:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_23:
    [(HAPCharacteristicValueTransitionPoint *)self setTargetValue:v12, selfCopy];
    [(HAPCharacteristicValueTransitionPoint *)self setTargetCompletionDuration:v11];
    [(HAPCharacteristicValueTransitionPoint *)self setStartDelayDuration:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
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
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v31, &v30);
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

    bytes = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (errorCopy)
        {
          v21 = v9;
          v22 = 0;
          *errorCopy = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = selfCopy;
      goto LABEL_23;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (HAPCharacteristicValueTransitionPoint)initWithTargetValue:(id)value targetCompletionDuration:(id)duration startDelayDuration:(id)delayDuration
{
  valueCopy = value;
  durationCopy = duration;
  delayDurationCopy = delayDuration;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicValueTransitionPoint;
  v12 = [(HAPCharacteristicValueTransitionPoint *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_targetValue, value);
    objc_storeStrong(&v13->_targetCompletionDuration, duration);
    objc_storeStrong(&v13->_startDelayDuration, delayDuration);
  }

  return v13;
}

- (HAPCharacteristicValueTransitionPoint)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionPoint;
  return [(HAPCharacteristicValueTransitionPoint *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionPoint);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionPoint *)v6 parseFromData:dataCopy error:&v11];
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