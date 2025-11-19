@interface HMDNetworkRouterAccessViolation
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterAccessViolation)init;
- (HMDNetworkRouterAccessViolation)initWithClientIdentifier:(id)a3 lastViolationTimestamp:(id)a4 lastResetTimestamp:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterAccessViolation

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];
  v5 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];
  v6 = [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];
  v7 = [v3 stringWithFormat:@"<HMDNetworkRouterAccessViolation clientIdentifier=%@, lastViolationTimestamp=%@, lastResetTimestamp=%@>", v4, v5, v6];

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
      v8 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];
      v9 = [(HMDNetworkRouterAccessViolation *)v7 clientIdentifier];
      if (v8 != v9)
      {
        v3 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];
        v4 = [(HMDNetworkRouterAccessViolation *)v7 clientIdentifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];
      v12 = [(HMDNetworkRouterAccessViolation *)v7 lastViolationTimestamp];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];
        v27 = [(HMDNetworkRouterAccessViolation *)v7 lastViolationTimestamp];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];
      v16 = [(HMDNetworkRouterAccessViolation *)v7 lastResetTimestamp];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];
        v18 = v25 = v3;
        [(HMDNetworkRouterAccessViolation *)v7 lastResetTimestamp];
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
  v4 = [HMDNetworkRouterAccessViolation allocWithZone:a3];
  v5 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];
  v6 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];
  v7 = [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];
  v8 = [(HMDNetworkRouterAccessViolation *)v4 initWithClientIdentifier:v5 lastViolationTimestamp:v6 lastResetTimestamp:v7];

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
  v5 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];

  if (v5)
  {
    v6 = [(HMDNetworkRouterAccessViolation *)self clientIdentifier];
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

  v9 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];

  if (v9)
  {
    v10 = [(HMDNetworkRouterAccessViolation *)self lastViolationTimestamp];
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

  v12 = [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];

  if (v12)
  {
    v13 = [(HMDNetworkRouterAccessViolation *)self lastResetTimestamp];
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
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 bytes];
  v9 = [v7 length];
  if (!v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_27;
  }

  v23 = self;
  v24 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v8 + v9;
  do
  {
    v32 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (v24)
      {
        HMErrorFromOSStatus();
        *v24 = v20 = 0;
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    if (!v31)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v21;
      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    switch(v32)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v25 = v10;
        v16 = &v25;
        [MEMORY[0x277CFEC98] parsedFromData:v15 error:&v25];
        v11 = v17 = v11;
        break;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v10;
        v16 = &v26;
        [MEMORY[0x277CFEC98] parsedFromData:v15 error:&v26];
        v12 = v17 = v12;
        break;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v10;
        v16 = &v27;
        [MEMORY[0x277CFEC98] parsedFromData:v15 error:&v27];
        v13 = v17 = v13;
        break;
      default:
        goto LABEL_15;
    }

    v18 = *v16;

    v10 = v18;
LABEL_15:
    if (v30)
    {
      free(v30);
    }
  }

  while (v28 != v14);
  if (v10)
  {
LABEL_19:
    if (v24)
    {
      v19 = v10;
      v20 = 0;
      *v24 = v10;
      goto LABEL_28;
    }

LABEL_24:
    v20 = 0;
    goto LABEL_28;
  }

LABEL_26:
  self = v23;
LABEL_27:
  [(HMDNetworkRouterAccessViolation *)self setClientIdentifier:v13, v23];
  [(HMDNetworkRouterAccessViolation *)self setLastViolationTimestamp:v12];
  [(HMDNetworkRouterAccessViolation *)self setLastResetTimestamp:v11];
  v10 = 0;
  v20 = 1;
LABEL_28:

  return v20;
}

- (HMDNetworkRouterAccessViolation)initWithClientIdentifier:(id)a3 lastViolationTimestamp:(id)a4 lastResetTimestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterAccessViolation;
  v12 = [(HMDNetworkRouterAccessViolation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIdentifier, a3);
    objc_storeStrong(&v13->_lastViolationTimestamp, a4);
    objc_storeStrong(&v13->_lastResetTimestamp, a5);
  }

  return v13;
}

- (HMDNetworkRouterAccessViolation)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterAccessViolation;
  return [(HMDNetworkRouterAccessViolation *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterAccessViolation);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterAccessViolation *)v6 parseFromData:v5 error:&v11];
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