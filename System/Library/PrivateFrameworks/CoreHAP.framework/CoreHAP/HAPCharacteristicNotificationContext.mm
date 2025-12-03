@interface HAPCharacteristicNotificationContext
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPCharacteristicNotificationContext)init;
- (HAPCharacteristicNotificationContext)initWithContextIdentifier:(id)identifier source:(id)source clockTickCounter:(id)counter;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPCharacteristicNotificationContext

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  contextIdentifier = [(HAPCharacteristicNotificationContext *)self contextIdentifier];
  source = [(HAPCharacteristicNotificationContext *)self source];
  clockTickCounter = [(HAPCharacteristicNotificationContext *)self clockTickCounter];
  v7 = [v3 stringWithFormat:@"<HAPCharacteristicNotificationContext contextIdentifier=%@, source=%@, clockTickCounter=%@>", contextIdentifier, source, clockTickCounter];

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
      contextIdentifier = [(HAPCharacteristicNotificationContext *)self contextIdentifier];
      contextIdentifier2 = [(HAPCharacteristicNotificationContext *)v7 contextIdentifier];
      if (contextIdentifier != contextIdentifier2)
      {
        contextIdentifier3 = [(HAPCharacteristicNotificationContext *)self contextIdentifier];
        contextIdentifier4 = [(HAPCharacteristicNotificationContext *)v7 contextIdentifier];
        if (![contextIdentifier3 isEqual:contextIdentifier4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      source = [(HAPCharacteristicNotificationContext *)self source];
      source2 = [(HAPCharacteristicNotificationContext *)v7 source];
      v13 = source2;
      if (source == source2)
      {
        v28 = source2;
      }

      else
      {
        source3 = [(HAPCharacteristicNotificationContext *)self source];
        source4 = [(HAPCharacteristicNotificationContext *)v7 source];
        if (![source3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = source3;
        v28 = v13;
      }

      clockTickCounter = [(HAPCharacteristicNotificationContext *)self clockTickCounter];
      clockTickCounter2 = [(HAPCharacteristicNotificationContext *)v7 clockTickCounter];
      v17 = clockTickCounter2;
      if (clockTickCounter == clockTickCounter2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPCharacteristicNotificationContext *)self clockTickCounter];
        v18 = v25 = contextIdentifier3;
        [(HAPCharacteristicNotificationContext *)v7 clockTickCounter];
        v24 = source;
        v19 = contextIdentifier4;
        v20 = contextIdentifier2;
        v22 = v21 = contextIdentifier;
        v10 = [v18 isEqual:v22];

        contextIdentifier = v21;
        contextIdentifier2 = v20;
        contextIdentifier4 = v19;
        source = v24;

        contextIdentifier3 = v25;
      }

      v13 = v28;
      source3 = v26;
      if (source == v28)
      {
LABEL_18:

        if (contextIdentifier == contextIdentifier2)
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
  v4 = [HAPCharacteristicNotificationContext allocWithZone:zone];
  contextIdentifier = [(HAPCharacteristicNotificationContext *)self contextIdentifier];
  source = [(HAPCharacteristicNotificationContext *)self source];
  clockTickCounter = [(HAPCharacteristicNotificationContext *)self clockTickCounter];
  v8 = [(HAPCharacteristicNotificationContext *)v4 initWithContextIdentifier:contextIdentifier source:source clockTickCounter:clockTickCounter];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
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
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  TLV8BufferInit();
  contextIdentifier = [(HAPCharacteristicNotificationContext *)self contextIdentifier];

  if (contextIdentifier)
  {
    contextIdentifier2 = [(HAPCharacteristicNotificationContext *)self contextIdentifier];
    v21 = 0;
    v7 = [contextIdentifier2 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_8:
      v12 = v9;

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_20;
    }
  }

  source = [(HAPCharacteristicNotificationContext *)self source];

  if (source)
  {
    source2 = [(HAPCharacteristicNotificationContext *)self source];
    v20 = 0;
    v7 = [source2 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  clockTickCounter = [(HAPCharacteristicNotificationContext *)self clockTickCounter];

  if (clockTickCounter)
  {
    clockTickCounter2 = [(HAPCharacteristicNotificationContext *)self clockTickCounter];
    v19 = 0;
    v7 = [clockTickCounter2 serializeWithError:&v19];
    v8 = v19;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v16 = v8;
        v13 = 0;
        *error = v8;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:?];
  v8 = 0;
LABEL_20:
  TLV8BufferFree();

  v17 = *MEMORY[0x277D85DE8];

  return v13;
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
LABEL_21:
    [(HAPCharacteristicNotificationContext *)self setContextIdentifier:v12];
    [(HAPCharacteristicNotificationContext *)self setSource:v11];
    [(HAPCharacteristicNotificationContext *)self setClockTickCounter:v10];
    v9 = 0;
    v20 = 1;
    goto LABEL_23;
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
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v30)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v21;
      if (v21)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    switch(v31)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v25 = v9;
        v16 = &v25;
        [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v25];
        v10 = v17 = v10;
        goto LABEL_11;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v9;
        v16 = &v26;
        [HAPNotificationContextSourceWrapper parsedFromData:v15 error:&v26];
        v11 = v17 = v11;
        goto LABEL_11;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v16 = &v27;
        [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v27];
        v12 = v17 = v12;
LABEL_11:
        v18 = *v16;

        v9 = v18;
        break;
    }

    if (v28 >= v13)
    {
      if (v9)
      {
LABEL_14:
        if (errorCopy)
        {
          v19 = v9;
          v20 = 0;
          *errorCopy = v9;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      self = selfCopy;
      goto LABEL_21;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v20 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
LABEL_23:

  return v20;
}

- (HAPCharacteristicNotificationContext)initWithContextIdentifier:(id)identifier source:(id)source clockTickCounter:(id)counter
{
  identifierCopy = identifier;
  sourceCopy = source;
  counterCopy = counter;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicNotificationContext;
  v12 = [(HAPCharacteristicNotificationContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contextIdentifier, identifier);
    objc_storeStrong(&v13->_source, source);
    objc_storeStrong(&v13->_clockTickCounter, counter);
  }

  return v13;
}

- (HAPCharacteristicNotificationContext)init
{
  v3.receiver = self;
  v3.super_class = HAPCharacteristicNotificationContext;
  return [(HAPCharacteristicNotificationContext *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPCharacteristicNotificationContext);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPCharacteristicNotificationContext *)v6 parseFromData:dataCopy error:&v11];
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