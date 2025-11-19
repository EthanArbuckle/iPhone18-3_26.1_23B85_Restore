@interface HMDSelectedSleepConfigurationTLV
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSelectedSleepConfigurationTLV)init;
- (HMDSelectedSleepConfigurationTLV)initWithOperationType:(id)a3 operationStatus:(id)a4 backoffTime:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSelectedSleepConfigurationTLV

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
  v5 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
  v6 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
  v7 = [v3 stringWithFormat:@"<HMDSelectedSleepConfigurationTLV operationType=%@, operationStatus=%@, backoffTime=%@>", v4, v5, v6];

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
      v8 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
      v9 = [(HMDSelectedSleepConfigurationTLV *)v7 operationType];
      if (v8 != v9)
      {
        v3 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
        v4 = [(HMDSelectedSleepConfigurationTLV *)v7 operationType];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
      v12 = [(HMDSelectedSleepConfigurationTLV *)v7 operationStatus];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
        v27 = [(HMDSelectedSleepConfigurationTLV *)v7 operationStatus];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
      v16 = [(HMDSelectedSleepConfigurationTLV *)v7 backoffTime];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
        v18 = v25 = v3;
        [(HMDSelectedSleepConfigurationTLV *)v7 backoffTime];
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
  v4 = [HMDSelectedSleepConfigurationTLV allocWithZone:a3];
  v5 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
  v6 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
  v7 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
  v8 = [(HMDSelectedSleepConfigurationTLV *)v4 initWithOperationType:v5 operationStatus:v6 backoffTime:v7];

  return v8;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDSelectedSleepConfigurationTLV *)self operationType];

  if (v5)
  {
    v6 = [(HMDSelectedSleepConfigurationTLV *)self operationType];
    v20 = 0;
    v7 = [v6 serializeWithError:&v20];
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
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v11 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v11 = 0;
      goto LABEL_20;
    }
  }

  v9 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];

  if (v9)
  {
    v10 = [(HMDSelectedSleepConfigurationTLV *)self operationStatus];
    v19 = 0;
    v7 = [v10 serializeWithError:&v19];
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

  v12 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];

  if (v12)
  {
    v13 = [(HMDSelectedSleepConfigurationTLV *)self backoffTime];
    v18 = 0;
    v7 = [v13 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
LABEL_15:

      if (a3)
      {
        v14 = v8;
        v11 = 0;
        *a3 = v8;
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
LABEL_21:
    [(HMDSelectedSleepConfigurationTLV *)self setOperationType:v12];
    [(HMDSelectedSleepConfigurationTLV *)self setOperationStatus:v11];
    [(HMDSelectedSleepConfigurationTLV *)self setBackoffTime:v10];
    v9 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v22 = self;
  v23 = a4;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v7 + v8;
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
        if (v23)
        {
          v18 = v9;
          v19 = 0;
          *v23 = v9;
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      self = v22;
      goto LABEL_21;
    }
  }

  if (v23)
  {
    HMErrorFromOSStatus();
    *v23 = v19 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HMDSelectedSleepConfigurationTLV)initWithOperationType:(id)a3 operationStatus:(id)a4 backoffTime:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDSelectedSleepConfigurationTLV;
  v12 = [(HMDSelectedSleepConfigurationTLV *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationType, a3);
    objc_storeStrong(&v13->_operationStatus, a4);
    objc_storeStrong(&v13->_backoffTime, a5);
  }

  return v13;
}

- (HMDSelectedSleepConfigurationTLV)init
{
  v3.receiver = self;
  v3.super_class = HMDSelectedSleepConfigurationTLV;
  return [(HMDSelectedSleepConfigurationTLV *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSelectedSleepConfigurationTLV);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSelectedSleepConfigurationTLV *)v6 parseFromData:v5 error:&v11];
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