@interface HMDNetworkRouterClientStatusIdentifier
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterClientStatusIdentifier)init;
- (HMDNetworkRouterClientStatusIdentifier)initWithClientIdentifier:(id)a3 macAddress:(id)a4 ipAddress:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterClientStatusIdentifier

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
  v5 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
  v6 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
  v7 = [v3 stringWithFormat:@"<HMDNetworkRouterClientStatusIdentifier clientIdentifier=%@, macAddress=%@, ipAddress=%@>", v4, v5, v6];

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
      v8 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
      v9 = [(HMDNetworkRouterClientStatusIdentifier *)v7 clientIdentifier];
      if (v8 != v9)
      {
        v3 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
        v4 = [(HMDNetworkRouterClientStatusIdentifier *)v7 clientIdentifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
      v12 = [(HMDNetworkRouterClientStatusIdentifier *)v7 macAddress];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
        v27 = [(HMDNetworkRouterClientStatusIdentifier *)v7 macAddress];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      v15 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
      v16 = [(HMDNetworkRouterClientStatusIdentifier *)v7 ipAddress];
      v17 = v16;
      if (v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
        v18 = v25 = v3;
        [(HMDNetworkRouterClientStatusIdentifier *)v7 ipAddress];
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
  v4 = [HMDNetworkRouterClientStatusIdentifier allocWithZone:a3];
  v5 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
  v6 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
  v7 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
  v8 = [(HMDNetworkRouterClientStatusIdentifier *)v4 initWithClientIdentifier:v5 macAddress:v6 ipAddress:v7];

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
  v5 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];

  if (v5)
  {
    v6 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
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

  v9 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];

  if (v9)
  {
    v10 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
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

  v12 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];

  if (v12)
  {
    v13 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
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
        [HMDNetworkRouterIPAddress parsedFromData:v15 error:&v25];
        v11 = v17 = v11;
        break;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v10;
        v16 = &v26;
        [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v26];
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
  [(HMDNetworkRouterClientStatusIdentifier *)self setClientIdentifier:v13, v23];
  [(HMDNetworkRouterClientStatusIdentifier *)self setMacAddress:v12];
  [(HMDNetworkRouterClientStatusIdentifier *)self setIpAddress:v11];
  v10 = 0;
  v20 = 1;
LABEL_28:

  return v20;
}

- (HMDNetworkRouterClientStatusIdentifier)initWithClientIdentifier:(id)a3 macAddress:(id)a4 ipAddress:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterClientStatusIdentifier;
  v12 = [(HMDNetworkRouterClientStatusIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIdentifier, a3);
    objc_storeStrong(&v13->_macAddress, a4);
    objc_storeStrong(&v13->_ipAddress, a5);
  }

  return v13;
}

- (HMDNetworkRouterClientStatusIdentifier)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientStatusIdentifier;
  return [(HMDNetworkRouterClientStatusIdentifier *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientStatusIdentifier *)v6 parseFromData:v5 error:&v11];
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