@interface HAPCharacteristicValueTransitionFetch
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicValueTransitionFetch)init;
- (HAPCharacteristicValueTransitionFetch)initWithHAPInstanceID:(id)d;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicValueTransitionFetch

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  hAPInstanceID = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v4 = [v2 stringWithFormat:@"<HAPCharacteristicValueTransitionFetch HAPInstanceID=%@>", hAPInstanceID];

  return v4;
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
      v5 = equalCopy;
      hAPInstanceID = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
      hAPInstanceID2 = [(HAPCharacteristicValueTransitionFetch *)v5 HAPInstanceID];
      if (hAPInstanceID == hAPInstanceID2)
      {
        v10 = 1;
      }

      else
      {
        hAPInstanceID3 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
        hAPInstanceID4 = [(HAPCharacteristicValueTransitionFetch *)v5 HAPInstanceID];
        v10 = [hAPInstanceID3 isEqual:hAPInstanceID4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAPCharacteristicValueTransitionFetch allocWithZone:zone];
  hAPInstanceID = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v6 = [(HAPCharacteristicValueTransitionFetch *)v4 initWithHAPInstanceID:hAPInstanceID];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
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
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  TLV8BufferInit();
  hAPInstanceID = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];

  if (!hAPInstanceID)
  {
    goto LABEL_8;
  }

  hAPInstanceID2 = [(HAPCharacteristicValueTransitionFetch *)self HAPInstanceID];
  v14 = 0;
  v7 = [hAPInstanceID2 serializeWithError:&v14];
  v8 = v14;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v11 = TLV8BufferAppend();

    if (v11)
    {
      if (error)
      {
        HMErrorFromOSStatus(v11);
        v8 = 0;
        *error = v10 = 0;
        goto LABEL_11;
      }

      v8 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:?];
    v8 = 0;
    goto LABEL_11;
  }

  if (error)
  {
    v9 = v8;
    v10 = 0;
    *error = v8;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  TLV8BufferFree();

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
LABEL_16:
    [(HAPCharacteristicValueTransitionFetch *)self setHAPInstanceID:v9, selfCopy];
    v10 = 0;
    v17 = 1;
  }

  else
  {
    selfCopy = self;
    v9 = 0;
    v10 = 0;
    v11 = bytes + v8;
    while (1)
    {
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      Next = TLV8GetNext();
      if (Next)
      {
        break;
      }

      if (!v24)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v10 = v18;
        if (v18)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

      if (v25 == 1)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v21 = v10;
        v14 = [HAPTLVUnsignedNumberValue parsedFromData:v13 error:&v21];
        v15 = v21;

        v10 = v15;
        v9 = v14;
      }

      if (v22 >= v11)
      {
        if (v10)
        {
LABEL_9:
          if (error)
          {
            v16 = v10;
            v17 = 0;
            *error = v10;
            goto LABEL_18;
          }

          goto LABEL_17;
        }

LABEL_15:
        self = selfCopy;
        goto LABEL_16;
      }
    }

    if (error)
    {
      HMErrorFromOSStatus(Next);
      *error = v17 = 0;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 0;
  }

LABEL_18:

  return v17;
}

- (HAPCharacteristicValueTransitionFetch)initWithHAPInstanceID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HAPCharacteristicValueTransitionFetch;
  v6 = [(HAPCharacteristicValueTransitionFetch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_HAPInstanceID, d);
  }

  return v7;
}

- (HAPCharacteristicValueTransitionFetch)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicValueTransitionFetch;
  return [(HAPCharacteristicValueTransitionFetch *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicValueTransitionFetch);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicValueTransitionFetch *)v6 parseFromData:dataCopy error:&v11];
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