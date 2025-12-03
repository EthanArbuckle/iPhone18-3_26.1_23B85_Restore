@interface HMDSelectedSleepConfigurationTLV
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSelectedSleepConfigurationTLV)init;
- (HMDSelectedSleepConfigurationTLV)initWithOperationType:(id)type operationStatus:(id)status backoffTime:(id)time;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSelectedSleepConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HMDSelectedSleepConfigurationTLV *)self operationType];
  operationStatus = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
  backoffTime = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
  v7 = [v3 stringWithFormat:@"<HMDSelectedSleepConfigurationTLV operationType=%@, operationStatus=%@, backoffTime=%@>", operationType, operationStatus, backoffTime];

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
      operationType = [(HMDSelectedSleepConfigurationTLV *)self operationType];
      operationType2 = [(HMDSelectedSleepConfigurationTLV *)v7 operationType];
      if (operationType != operationType2)
      {
        operationType3 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
        operationType4 = [(HMDSelectedSleepConfigurationTLV *)v7 operationType];
        if (![operationType3 isEqual:operationType4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      operationStatus = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
      operationStatus2 = [(HMDSelectedSleepConfigurationTLV *)v7 operationStatus];
      v13 = operationStatus2;
      if (operationStatus == operationStatus2)
      {
        v28 = operationStatus2;
      }

      else
      {
        operationStatus3 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
        operationStatus4 = [(HMDSelectedSleepConfigurationTLV *)v7 operationStatus];
        if (![operationStatus3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = operationStatus3;
        v28 = v13;
      }

      backoffTime = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
      backoffTime2 = [(HMDSelectedSleepConfigurationTLV *)v7 backoffTime];
      v17 = backoffTime2;
      if (backoffTime == backoffTime2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
        v18 = v25 = operationType3;
        [(HMDSelectedSleepConfigurationTLV *)v7 backoffTime];
        v24 = operationStatus;
        v19 = operationType4;
        v20 = operationType2;
        v22 = v21 = operationType;
        v10 = [v18 isEqual:v22];

        operationType = v21;
        operationType2 = v20;
        operationType4 = v19;
        operationStatus = v24;

        operationType3 = v25;
      }

      v13 = v28;
      operationStatus3 = v26;
      if (operationStatus == v28)
      {
LABEL_18:

        if (operationType == operationType2)
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
  v4 = [HMDSelectedSleepConfigurationTLV allocWithZone:zone];
  operationType = [(HMDSelectedSleepConfigurationTLV *)self operationType];
  operationStatus = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
  backoffTime = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
  v8 = [(HMDSelectedSleepConfigurationTLV *)v4 initWithOperationType:operationType operationStatus:operationStatus backoffTime:backoffTime];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  TLV8BufferInit();
  operationType = [(HMDSelectedSleepConfigurationTLV *)self operationType];

  if (operationType)
  {
    operationType2 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
    v20 = 0;
    v7 = [operationType2 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
LABEL_8:

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v11 = 0;
      goto LABEL_20;
    }
  }

  operationStatus = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];

  if (operationStatus)
  {
    operationStatus2 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
    v19 = 0;
    v7 = [operationStatus2 serializeWithError:&v19];
    v8 = v19;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_8;
    }
  }

  backoffTime = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];

  if (backoffTime)
  {
    backoffTime2 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
    v18 = 0;
    v7 = [backoffTime2 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v14 = v8;
        v11 = 0;
        *error = v8;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    [v7 bytes];
    [v7 length];
    v15 = TLV8BufferAppend();

    if (v15)
    {
      goto LABEL_9;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:?];
  v8 = 0;
LABEL_20:
  TLV8BufferFree();

  v16 = *MEMORY[0x277D85DE8];

  return v11;
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
    [(HMDSelectedSleepConfigurationTLV *)self setOperationType:v12];
    [(HMDSelectedSleepConfigurationTLV *)self setOperationStatus:v11];
    [(HMDSelectedSleepConfigurationTLV *)self setBackoffTime:v10];
    v9 = 0;
    v19 = 1;
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
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    if (TLV8GetNext())
    {
      break;
    }

    if (!v29)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v20;
      if (v20)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    switch(v30)
    {
      case 3:
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v24 = v9;
        v15 = &v24;
        [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v24];
        v10 = v16 = v10;
        goto LABEL_11;
      case 2:
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v25 = v9;
        v15 = &v25;
        [HMDSleepConfigurationOperationStatusWrapper parsedFromData:v14 error:&v25];
        v11 = v16 = v11;
        goto LABEL_11;
      case 1:
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v9;
        v15 = &v26;
        [HMDSleepConfigurationOperationTypeWrapper parsedFromData:v14 error:&v26];
        v12 = v16 = v12;
LABEL_11:
        v17 = *v15;

        v9 = v17;
        break;
    }

    if (v27 >= v13)
    {
      if (v9)
      {
LABEL_14:
        if (errorCopy)
        {
          v18 = v9;
          v19 = 0;
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
    HMErrorFromOSStatus();
    *errorCopy = v19 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HMDSelectedSleepConfigurationTLV)initWithOperationType:(id)type operationStatus:(id)status backoffTime:(id)time
{
  typeCopy = type;
  statusCopy = status;
  timeCopy = time;
  v15.receiver = self;
  v15.super_class = HMDSelectedSleepConfigurationTLV;
  v12 = [(HMDSelectedSleepConfigurationTLV *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationType, type);
    objc_storeStrong(&v13->_operationStatus, status);
    objc_storeStrong(&v13->_backoffTime, time);
  }

  return v13;
}

- (HMDSelectedSleepConfigurationTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDSelectedSleepConfigurationTLV;
  return [(HMDSelectedSleepConfigurationTLV *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSelectedSleepConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSelectedSleepConfigurationTLV *)v6 parseFromData:dataCopy error:&v11];
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