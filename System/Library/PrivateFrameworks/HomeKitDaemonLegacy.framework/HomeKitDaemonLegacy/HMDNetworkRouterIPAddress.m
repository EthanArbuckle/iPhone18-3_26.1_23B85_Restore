@interface HMDNetworkRouterIPAddress
+ (id)ipAddressFromNetAddress:(id)a3 error:(id *)a4;
+ (id)ipAddressFromRuleAddress:(id)a3 allowWildcard:(BOOL)a4;
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterIPAddress)init;
- (HMDNetworkRouterIPAddress)initWithV4:(id)a3 v6:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterIPAddress

+ (id)ipAddressFromRuleAddress:(id)a3 allowWildcard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && (+[HMDNetworkRouterFirewallRuleWAN ipAddressAny](HMDNetworkRouterFirewallRuleWAN, "ipAddressAny"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v8))
  {
    v14 = 0;
    v9 = [HMDNetworkRouterIPAddress alloc];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:4];
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:MEMORY[0x277D85EE8] length:16];
    v12 = [(HMDNetworkRouterIPAddress *)v9 initWithV4:v10 v6:v11];
  }

  else
  {
    v12 = [a1 ipAddressFromNetAddress:v6 error:0];
  }

  return v12;
}

+ (id)ipAddressFromNetAddress:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 dataUsingEncoding:1];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v5 addressFamily];
  if (v7 == 1)
  {
    v9 = 4;
    v8 = 4;
    goto LABEL_7;
  }

  if (v7 != 2)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 16;
  v9 = 8;
LABEL_7:
  v11 = [v6 bytes];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v11 + v9 length:v8];
LABEL_8:

  if (v10)
  {
    v12 = [v5 addressFamily];
    if (v12 == 2)
    {
      v13 = [HMDNetworkRouterIPAddress alloc];
      v14 = 0;
      v15 = v10;
      goto LABEL_16;
    }

    if (v12 == 1)
    {
      v13 = [HMDNetworkRouterIPAddress alloc];
      v14 = v10;
      v15 = 0;
LABEL_16:
      v16 = [(HMDNetworkRouterIPAddress *)v13 initWithV4:v14 v6:v15];
      goto LABEL_17;
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_17:

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterIPAddress *)self v4];
  v5 = [(HMDNetworkRouterIPAddress *)self v6];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterIPAddress v4=%@, v6=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDNetworkRouterIPAddress *)self v4];
      v8 = [(HMDNetworkRouterIPAddress *)v6 v4];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterIPAddress *)self v4];
        v3 = [(HMDNetworkRouterIPAddress *)v6 v4];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDNetworkRouterIPAddress *)self v6];
      v12 = [(HMDNetworkRouterIPAddress *)v6 v6];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDNetworkRouterIPAddress *)self v6];
        v14 = [(HMDNetworkRouterIPAddress *)v6 v6];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterIPAddress allocWithZone:a3];
  v5 = [(HMDNetworkRouterIPAddress *)self v4];
  v6 = [(HMDNetworkRouterIPAddress *)self v6];
  v7 = [(HMDNetworkRouterIPAddress *)v4 initWithV4:v5 v6:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
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
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  TLV8BufferInit();
  v5 = [(HMDNetworkRouterIPAddress *)self v4];

  if (v5)
  {
    v6 = [(HMDNetworkRouterIPAddress *)self v4];
    v18 = 0;
    v7 = [v6 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  v10 = [(HMDNetworkRouterIPAddress *)self v6];

  if (!v10)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  v11 = [(HMDNetworkRouterIPAddress *)self v6];
  v17 = 0;
  v7 = [v11 serializeWithError:&v17];
  v8 = v17;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v15 = *MEMORY[0x277D85DE8];

  return v13;
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
    v10 = 0;
    v11 = 0;
LABEL_19:
    [(HMDNetworkRouterIPAddress *)self setV4:v11, v22];
    [(HMDNetworkRouterIPAddress *)self setV6:v10];
    v12 = 0;
    v18 = 1;
    goto LABEL_26;
  }

  v22 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v8 + v9;
  while (1)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (v22)
      {
        HMErrorFromOSStatus();
        *v22 = v18 = 0;
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (!v28)
    {
      break;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v12;
      v15 = &v23;
      [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v23];
      v10 = v16 = v10;
      goto LABEL_12;
    }

    if (v29 == 1)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v12;
      v15 = &v24;
      [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v24];
      v11 = v16 = v11;
LABEL_12:
      v17 = *v15;

      v12 = v17;
    }

    if (v27)
    {
      free(v27);
    }

    if (v25 == v13)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v12 = v19;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_23:
  if (v22)
  {
    v20 = v12;
    v18 = 0;
    *v22 = v12;
    goto LABEL_26;
  }

LABEL_25:
  v18 = 0;
LABEL_26:

  return v18;
}

- (HMDNetworkRouterIPAddress)initWithV4:(id)a3 v6:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterIPAddress;
  v9 = [(HMDNetworkRouterIPAddress *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_v4, a3);
    objc_storeStrong(&v10->_v6, a4);
  }

  return v10;
}

- (HMDNetworkRouterIPAddress)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterIPAddress;
  return [(HMDNetworkRouterIPAddress *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterIPAddress);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterIPAddress *)v6 parseFromData:v5 error:&v11];
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