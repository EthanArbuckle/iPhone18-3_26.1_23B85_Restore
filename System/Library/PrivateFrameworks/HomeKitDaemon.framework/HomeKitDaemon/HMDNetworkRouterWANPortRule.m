@interface HMDNetworkRouterWANPortRule
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterWANPortRule)init;
- (HMDNetworkRouterWANPortRule)initWithProtocol:(id)a3 hostDNSName:(id)a4 hostIPStart:(id)a5 hostIPEnd:(id)a6 hostPortStart:(id)a7 hostPortEnd:(id)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
- (void)addTo:(id)a3;
@end

@implementation HMDNetworkRouterWANPortRule

- (void)addTo:(id)a3
{
  v7 = a3;
  v4 = [v7 portRules];
  v5 = v4;
  if (v4)
  {
    [v4 addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [v7 setPortRules:v6];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterWANPortRule *)self protocol];
  v5 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
  v6 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
  v7 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  v8 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
  v9 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterWANPortRule protocol=%@, hostDNSName=%@, hostIPStart=%@, hostIPEnd=%@, hostPortStart=%@, hostPortEnd=%@>", v4, v5, v6, v7, v8, v9];

  return v10;
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
      v7 = [(HMDNetworkRouterWANPortRule *)self protocol];
      v8 = [(HMDNetworkRouterWANPortRule *)v6 protocol];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterWANPortRule *)self protocol];
        v55 = [(HMDNetworkRouterWANPortRule *)v6 protocol];
        v56 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      v11 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
      v12 = [(HMDNetworkRouterWANPortRule *)v6 hostDNSName];
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
        v53 = [(HMDNetworkRouterWANPortRule *)v6 hostDNSName];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (v7 == v8)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      v13 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
      v14 = [(HMDNetworkRouterWANPortRule *)v6 hostIPStart];
      v54 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v51 = v14;
      }

      else
      {
        v17 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
        v47 = [(HMDNetworkRouterWANPortRule *)v6 hostIPStart];
        v48 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (v11 == v12)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      v18 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
      v19 = [(HMDNetworkRouterWANPortRule *)v6 hostIPEnd];
      v49 = v18;
      v50 = v3;
      v15 = v18 == v19;
      v20 = v19;
      if (!v15)
      {
        v21 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
        v41 = [(HMDNetworkRouterWANPortRule *)v6 hostIPEnd];
        v42 = v21;
        if (![v21 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          v3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      v26 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
      v44 = [(HMDNetworkRouterWANPortRule *)v6 hostPortStart];
      v45 = v26;
      v46 = v20;
      v43 = v12;
      if (v26 == v44)
      {
        v40 = v11;
        v29 = v51;
      }

      else
      {
        v27 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
        v38 = [(HMDNetworkRouterWANPortRule *)v6 hostPortStart];
        v39 = v27;
        v28 = [v27 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = v44;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = v11;
      }

      v30 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
      v31 = [(HMDNetworkRouterWANPortRule *)v6 hostPortEnd];
      v32 = v31;
      if (v30 == v31)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
        v33 = v52 = v29;
        v34 = [(HMDNetworkRouterWANPortRule *)v6 hostPortEnd];
        v10 = [v33 isEqual:v34];

        v29 = v52;
      }

      v36 = v44;
      v35 = v45;
      v11 = v40;
      if (v45 == v44)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        v12 = v43;
        if (v49 == v46)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_28:
      v22 = v29;

      goto LABEL_30;
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterWANPortRule allocWithZone:a3];
  v5 = [(HMDNetworkRouterWANPortRule *)self protocol];
  v6 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
  v7 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
  v8 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  v9 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
  v10 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
  v11 = [(HMDNetworkRouterWANPortRule *)v4 initWithProtocol:v5 hostDNSName:v6 hostIPStart:v7 hostIPEnd:v8 hostPortStart:v9 hostPortEnd:v10];

  return v11;
}

- (id)serializeWithError:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
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
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  TLV8BufferInit();
  v5 = [(HMDNetworkRouterWANPortRule *)self protocol];

  if (v5)
  {
    v6 = [(HMDNetworkRouterWANPortRule *)self protocol];
    v29 = 0;
    v7 = [v6 serializeWithError:&v29];
    v8 = v29;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v9 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];

  if (v9)
  {
    v10 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
    v28 = 0;
    v7 = [v10 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v11 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];

  if (v11)
  {
    v12 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
    v27 = 0;
    v7 = [v12 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v13 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  v26 = 0;
  v7 = [v14 serializeWithError:&v26];
  v8 = v26;

  if (v8)
  {
    goto LABEL_27;
  }

  [v7 bytes];
  [v7 length];
  if (TLV8BufferAppend())
  {
LABEL_20:

LABEL_21:
    if (a3)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *a3 = v17 = 0;
      goto LABEL_30;
    }

    v8 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_17:
  v15 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];

  if (v15)
  {
    v16 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
    v25 = 0;
    v7 = [v16 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v18 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];

  if (v18)
  {
    v19 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
    v24 = 0;
    v7 = [v19 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
LABEL_27:

      if (a3)
      {
        v20 = v8;
        v17 = 0;
        *a3 = v8;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    [v7 bytes];
    [v7 length];
    v23 = TLV8BufferAppend();

    if (v23)
    {
      goto LABEL_21;
    }
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:?];
  v8 = 0;
LABEL_30:
  TLV8BufferFree();

  v21 = *MEMORY[0x277D85DE8];

  return v17;
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
    v20 = 0;
    v21 = 0;
    v11 = 0;
    v12 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_35;
  }

  v10 = 0;
  v28 = 0;
  v29 = 0;
  v11 = 0;
  v12 = 0;
  v26 = 0;
  v27 = 0;
  v13 = v8 + v9;
  do
  {
    v40 = 0;
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v19 = 0;
        goto LABEL_32;
      }

LABEL_31:
      v19 = 0;
      goto LABEL_32;
    }

    if (!v39)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

LABEL_26:
      if (a4)
      {
        v18 = v10;
        v19 = 0;
        *a4 = v10;
LABEL_32:
        v21 = v28;
        v20 = v29;
        v22 = v26;
        v23 = v27;
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v40 > 3u)
    {
      switch(v40)
      {
        case 4u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v32 = v10;
          v15 = &v32;
          [HMDNetworkRouterIPAddress parsedFromData:v14 error:&v32];
          v26 = v16 = v26;
          break;
        case 5u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v31 = v10;
          v15 = &v31;
          [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v31];
          v12 = v16 = v12;
          break;
        case 6u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v10;
          v15 = &v30;
          [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v30];
          v11 = v16 = v11;
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      switch(v40)
      {
        case 1u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v35 = v10;
          v15 = &v35;
          [HMDNetworkRouterProtocol parsedFromData:v14 error:&v35];
          v29 = v16 = v29;
          break;
        case 2u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v10;
          v15 = &v34;
          [MEMORY[0x277CCACA8] parsedFromData:v14 error:&v34];
          v28 = v16 = v28;
          break;
        case 3u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v10;
          v15 = &v33;
          [HMDNetworkRouterIPAddress parsedFromData:v14 error:&v33];
          v27 = v16 = v27;
          break;
        default:
          goto LABEL_22;
      }
    }

    v17 = *v15;

    v10 = v17;
LABEL_22:
    if (v38)
    {
      free(v38);
    }
  }

  while (v36 != v13);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_34:
  v21 = v28;
  v20 = v29;
  v22 = v26;
  v23 = v27;
LABEL_35:
  [(HMDNetworkRouterWANPortRule *)self setProtocol:v20];
  [(HMDNetworkRouterWANPortRule *)self setHostDNSName:v21];
  [(HMDNetworkRouterWANPortRule *)self setHostIPStart:v23];
  [(HMDNetworkRouterWANPortRule *)self setHostIPEnd:v22];
  [(HMDNetworkRouterWANPortRule *)self setHostPortStart:v12];
  [(HMDNetworkRouterWANPortRule *)self setHostPortEnd:v11];
  v10 = 0;
  v19 = 1;
LABEL_36:

  return v19;
}

- (HMDNetworkRouterWANPortRule)initWithProtocol:(id)a3 hostDNSName:(id)a4 hostIPStart:(id)a5 hostIPEnd:(id)a6 hostPortStart:(id)a7 hostPortEnd:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterWANPortRule;
  v18 = [(HMDNetworkRouterWANPortRule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_protocol, a3);
    objc_storeStrong(&v19->_hostDNSName, a4);
    objc_storeStrong(&v19->_hostIPStart, a5);
    objc_storeStrong(&v19->_hostIPEnd, a6);
    objc_storeStrong(&v19->_hostPortStart, a7);
    objc_storeStrong(&v19->_hostPortEnd, a8);
  }

  return v19;
}

- (HMDNetworkRouterWANPortRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANPortRule;
  return [(HMDNetworkRouterWANPortRule *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterWANPortRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANPortRule *)v6 parseFromData:v5 error:&v11];
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