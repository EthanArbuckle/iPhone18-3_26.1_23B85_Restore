@interface HMDNetworkRouterClientStatus
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterClientStatus)init;
- (HMDNetworkRouterClientStatus)initWithClientIdentifier:(id)a3 macAddress:(id)a4 ipAddressList:(id)a5 lanIdentifier:(id)a6 name:(id)a7 rssi:(id)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterClientStatus

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
  v5 = [(HMDNetworkRouterClientStatus *)self macAddress];
  v6 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
  v7 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
  v8 = [(HMDNetworkRouterClientStatus *)self name];
  v9 = [(HMDNetworkRouterClientStatus *)self rssi];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterClientStatus clientIdentifier=%@, macAddress=%@, ipAddressList=%@, lanIdentifier=%@, name=%@, rssi=%@>", v4, v5, v6, v7, v8, v9];

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
      v7 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
      v8 = [(HMDNetworkRouterClientStatus *)v6 clientIdentifier];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
        v55 = [(HMDNetworkRouterClientStatus *)v6 clientIdentifier];
        v56 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      v11 = [(HMDNetworkRouterClientStatus *)self macAddress];
      v12 = [(HMDNetworkRouterClientStatus *)v6 macAddress];
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterClientStatus *)self macAddress];
        v53 = [(HMDNetworkRouterClientStatus *)v6 macAddress];
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

      v13 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
      v14 = [(HMDNetworkRouterClientStatus *)v6 ipAddressList];
      v54 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v51 = v14;
      }

      else
      {
        v17 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
        v47 = [(HMDNetworkRouterClientStatus *)v6 ipAddressList];
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

      v18 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
      v19 = [(HMDNetworkRouterClientStatus *)v6 lanIdentifier];
      v49 = v18;
      v50 = v3;
      v15 = v18 == v19;
      v20 = v19;
      if (!v15)
      {
        v21 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
        v41 = [(HMDNetworkRouterClientStatus *)v6 lanIdentifier];
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

      v26 = [(HMDNetworkRouterClientStatus *)self name];
      v44 = [(HMDNetworkRouterClientStatus *)v6 name];
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
        v27 = [(HMDNetworkRouterClientStatus *)self name];
        v38 = [(HMDNetworkRouterClientStatus *)v6 name];
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

      v30 = [(HMDNetworkRouterClientStatus *)self rssi];
      v31 = [(HMDNetworkRouterClientStatus *)v6 rssi];
      v32 = v31;
      if (v30 == v31)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterClientStatus *)self rssi];
        v33 = v52 = v29;
        v34 = [(HMDNetworkRouterClientStatus *)v6 rssi];
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
  v4 = [HMDNetworkRouterClientStatus allocWithZone:a3];
  v5 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
  v6 = [(HMDNetworkRouterClientStatus *)self macAddress];
  v7 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
  v8 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
  v9 = [(HMDNetworkRouterClientStatus *)self name];
  v10 = [(HMDNetworkRouterClientStatus *)self rssi];
  v11 = [(HMDNetworkRouterClientStatus *)v4 initWithClientIdentifier:v5 macAddress:v6 ipAddressList:v7 lanIdentifier:v8 name:v9 rssi:v10];

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
  v5 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];

  if (v5)
  {
    v6 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
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

  v9 = [(HMDNetworkRouterClientStatus *)self macAddress];

  if (v9)
  {
    v10 = [(HMDNetworkRouterClientStatus *)self macAddress];
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

  v11 = [(HMDNetworkRouterClientStatus *)self ipAddressList];

  if (v11)
  {
    v12 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
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

  v13 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
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
  v15 = [(HMDNetworkRouterClientStatus *)self name];

  if (v15)
  {
    v16 = [(HMDNetworkRouterClientStatus *)self name];
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

  v18 = [(HMDNetworkRouterClientStatus *)self rssi];

  if (v18)
  {
    v19 = [(HMDNetworkRouterClientStatus *)self rssi];
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
    v19 = 0;
    v20 = 0;
    v11 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_35;
  }

  v10 = 0;
  v29 = 0;
  v30 = 0;
  v11 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v12 = v8 + v9;
  do
  {
    v41 = 0;
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v18 = 0;
        goto LABEL_32;
      }

LABEL_31:
      v18 = 0;
      goto LABEL_32;
    }

    if (!v40)
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
        v17 = v10;
        v18 = 0;
        *a4 = v10;
LABEL_32:
        v20 = v29;
        v19 = v30;
        v22 = v27;
        v23 = v28;
        v21 = v26;
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v41 > 4u)
    {
      switch(v41)
      {
        case 5u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v10;
          v14 = &v33;
          [MEMORY[0x277CFEC98] parsedFromData:v13 error:&v33];
          v27 = v15 = v27;
          break;
        case 6u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v32 = v10;
          v14 = &v32;
          [MEMORY[0x277CCACA8] parsedFromData:v13 error:&v32];
          v26 = v15 = v26;
          break;
        case 7u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v31 = v10;
          v14 = &v31;
          [MEMORY[0x277CFEC90] parsedFromData:v13 error:&v31];
          v11 = v15 = v11;
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      switch(v41)
      {
        case 1u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v36 = v10;
          v14 = &v36;
          [MEMORY[0x277CFEC98] parsedFromData:v13 error:&v36];
          v30 = v15 = v30;
          break;
        case 2u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v35 = v10;
          v14 = &v35;
          [MEMORY[0x277CBEA90] parsedFromData:v13 error:&v35];
          v29 = v15 = v29;
          break;
        case 3u:
          v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v10;
          v14 = &v34;
          [HMDNetworkRouterIPAddressList parsedFromData:v13 error:&v34];
          v28 = v15 = v28;
          break;
        default:
          goto LABEL_22;
      }
    }

    v16 = *v14;

    v10 = v16;
LABEL_22:
    if (v39)
    {
      free(v39);
    }
  }

  while (v37 != v12);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_34:
  v20 = v29;
  v19 = v30;
  v22 = v27;
  v23 = v28;
  v21 = v26;
LABEL_35:
  [(HMDNetworkRouterClientStatus *)self setClientIdentifier:v19, v26];
  [(HMDNetworkRouterClientStatus *)self setMacAddress:v20];
  [(HMDNetworkRouterClientStatus *)self setIpAddressList:v23];
  [(HMDNetworkRouterClientStatus *)self setLanIdentifier:v22];
  [(HMDNetworkRouterClientStatus *)self setName:v21];
  [(HMDNetworkRouterClientStatus *)self setRssi:v11];
  v10 = 0;
  v18 = 1;
LABEL_36:

  return v18;
}

- (HMDNetworkRouterClientStatus)initWithClientIdentifier:(id)a3 macAddress:(id)a4 ipAddressList:(id)a5 lanIdentifier:(id)a6 name:(id)a7 rssi:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterClientStatus;
  v18 = [(HMDNetworkRouterClientStatus *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientIdentifier, a3);
    objc_storeStrong(&v19->_macAddress, a4);
    objc_storeStrong(&v19->_ipAddressList, a5);
    objc_storeStrong(&v19->_lanIdentifier, a6);
    objc_storeStrong(&v19->_name, a7);
    objc_storeStrong(&v19->_rssi, a8);
  }

  return v19;
}

- (HMDNetworkRouterClientStatus)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientStatus;
  return [(HMDNetworkRouterClientStatus *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterClientStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientStatus *)v6 parseFromData:v5 error:&v11];
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