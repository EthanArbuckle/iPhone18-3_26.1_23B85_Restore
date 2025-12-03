@interface HMDNetworkRouterClientStatus
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterClientStatus)init;
- (HMDNetworkRouterClientStatus)initWithClientIdentifier:(id)identifier macAddress:(id)address ipAddressList:(id)list lanIdentifier:(id)lanIdentifier name:(id)name rssi:(id)rssi;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterClientStatus

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clientIdentifier = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
  macAddress = [(HMDNetworkRouterClientStatus *)self macAddress];
  ipAddressList = [(HMDNetworkRouterClientStatus *)self ipAddressList];
  lanIdentifier = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
  name = [(HMDNetworkRouterClientStatus *)self name];
  rssi = [(HMDNetworkRouterClientStatus *)self rssi];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterClientStatus clientIdentifier=%@, macAddress=%@, ipAddressList=%@, lanIdentifier=%@, name=%@, rssi=%@>", clientIdentifier, macAddress, ipAddressList, lanIdentifier, name, rssi];

  return v10;
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
      v6 = equalCopy;
      clientIdentifier = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
      clientIdentifier2 = [(HMDNetworkRouterClientStatus *)v6 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
        clientIdentifier4 = [(HMDNetworkRouterClientStatus *)v6 clientIdentifier];
        v56 = clientIdentifier3;
        if (![clientIdentifier3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      macAddress = [(HMDNetworkRouterClientStatus *)self macAddress];
      macAddress2 = [(HMDNetworkRouterClientStatus *)v6 macAddress];
      if (macAddress != macAddress2)
      {
        macAddress3 = [(HMDNetworkRouterClientStatus *)self macAddress];
        macAddress4 = [(HMDNetworkRouterClientStatus *)v6 macAddress];
        if (![macAddress3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (clientIdentifier == clientIdentifier2)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      ipAddressList = [(HMDNetworkRouterClientStatus *)self ipAddressList];
      ipAddressList2 = [(HMDNetworkRouterClientStatus *)v6 ipAddressList];
      v54 = ipAddressList;
      v15 = ipAddressList == ipAddressList2;
      v16 = ipAddressList2;
      if (v15)
      {
        v51 = ipAddressList2;
      }

      else
      {
        ipAddressList3 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
        ipAddressList4 = [(HMDNetworkRouterClientStatus *)v6 ipAddressList];
        v48 = ipAddressList3;
        if (![ipAddressList3 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (macAddress == macAddress2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      lanIdentifier = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
      lanIdentifier2 = [(HMDNetworkRouterClientStatus *)v6 lanIdentifier];
      v49 = lanIdentifier;
      v50 = macAddress3;
      v15 = lanIdentifier == lanIdentifier2;
      v20 = lanIdentifier2;
      if (!v15)
      {
        lanIdentifier3 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
        lanIdentifier4 = [(HMDNetworkRouterClientStatus *)v6 lanIdentifier];
        v42 = lanIdentifier3;
        if (![lanIdentifier3 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          macAddress3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      name = [(HMDNetworkRouterClientStatus *)self name];
      name2 = [(HMDNetworkRouterClientStatus *)v6 name];
      v45 = name;
      v46 = v20;
      v43 = macAddress2;
      if (name == name2)
      {
        v40 = macAddress;
        v29 = v51;
      }

      else
      {
        name3 = [(HMDNetworkRouterClientStatus *)self name];
        name4 = [(HMDNetworkRouterClientStatus *)v6 name];
        v39 = name3;
        v28 = [name3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = name2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = macAddress;
      }

      rssi = [(HMDNetworkRouterClientStatus *)self rssi];
      rssi2 = [(HMDNetworkRouterClientStatus *)v6 rssi];
      v32 = rssi2;
      if (rssi == rssi2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterClientStatus *)self rssi];
        v33 = v52 = v29;
        rssi3 = [(HMDNetworkRouterClientStatus *)v6 rssi];
        v10 = [v33 isEqual:rssi3];

        v29 = v52;
      }

      v36 = name2;
      v35 = v45;
      macAddress = v40;
      if (v45 == name2)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        macAddress2 = v43;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterClientStatus allocWithZone:zone];
  clientIdentifier = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
  macAddress = [(HMDNetworkRouterClientStatus *)self macAddress];
  ipAddressList = [(HMDNetworkRouterClientStatus *)self ipAddressList];
  lanIdentifier = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
  name = [(HMDNetworkRouterClientStatus *)self name];
  rssi = [(HMDNetworkRouterClientStatus *)self rssi];
  v11 = [(HMDNetworkRouterClientStatus *)v4 initWithClientIdentifier:clientIdentifier macAddress:macAddress ipAddressList:ipAddressList lanIdentifier:lanIdentifier name:name rssi:rssi];

  return v11;
}

- (id)serializeWithError:(id *)error
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
  clientIdentifier = [(HMDNetworkRouterClientStatus *)self clientIdentifier];

  if (clientIdentifier)
  {
    clientIdentifier2 = [(HMDNetworkRouterClientStatus *)self clientIdentifier];
    v29 = 0;
    v7 = [clientIdentifier2 serializeWithError:&v29];
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

  macAddress = [(HMDNetworkRouterClientStatus *)self macAddress];

  if (macAddress)
  {
    macAddress2 = [(HMDNetworkRouterClientStatus *)self macAddress];
    v28 = 0;
    v7 = [macAddress2 serializeWithError:&v28];
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

  ipAddressList = [(HMDNetworkRouterClientStatus *)self ipAddressList];

  if (ipAddressList)
  {
    ipAddressList2 = [(HMDNetworkRouterClientStatus *)self ipAddressList];
    v27 = 0;
    v7 = [ipAddressList2 serializeWithError:&v27];
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

  lanIdentifier = [(HMDNetworkRouterClientStatus *)self lanIdentifier];

  if (!lanIdentifier)
  {
    goto LABEL_17;
  }

  lanIdentifier2 = [(HMDNetworkRouterClientStatus *)self lanIdentifier];
  v26 = 0;
  v7 = [lanIdentifier2 serializeWithError:&v26];
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
    if (error)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *error = v17 = 0;
      goto LABEL_30;
    }

    v8 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_17:
  name = [(HMDNetworkRouterClientStatus *)self name];

  if (name)
  {
    name2 = [(HMDNetworkRouterClientStatus *)self name];
    v25 = 0;
    v7 = [name2 serializeWithError:&v25];
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

  rssi = [(HMDNetworkRouterClientStatus *)self rssi];

  if (rssi)
  {
    rssi2 = [(HMDNetworkRouterClientStatus *)self rssi];
    v24 = 0;
    v7 = [rssi2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
LABEL_27:

      if (error)
      {
        v20 = v8;
        v17 = 0;
        *error = v8;
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

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    *error = 0;
  }

  bytes = [dataCopy bytes];
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
  v12 = bytes + v9;
  do
  {
    v41 = 0;
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v18 = 0;
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
      if (error)
      {
        v17 = v10;
        v18 = 0;
        *error = v10;
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

- (HMDNetworkRouterClientStatus)initWithClientIdentifier:(id)identifier macAddress:(id)address ipAddressList:(id)list lanIdentifier:(id)lanIdentifier name:(id)name rssi:(id)rssi
{
  identifierCopy = identifier;
  addressCopy = address;
  listCopy = list;
  lanIdentifierCopy = lanIdentifier;
  nameCopy = name;
  rssiCopy = rssi;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterClientStatus;
  v18 = [(HMDNetworkRouterClientStatus *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientIdentifier, identifier);
    objc_storeStrong(&v19->_macAddress, address);
    objc_storeStrong(&v19->_ipAddressList, list);
    objc_storeStrong(&v19->_lanIdentifier, lanIdentifier);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_rssi, rssi);
  }

  return v19;
}

- (HMDNetworkRouterClientStatus)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientStatus;
  return [(HMDNetworkRouterClientStatus *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterClientStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientStatus *)v6 parseFromData:dataCopy error:&v11];
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