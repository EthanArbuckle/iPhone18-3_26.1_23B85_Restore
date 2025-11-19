@interface HMDPrimaryNetworkInterfaceDetails
- (HMDPrimaryNetworkInterfaceDetails)initWithDictionaryRepresentation:(id)a3;
- (HMDPrimaryNetworkInterfaceDetails)initWithPrimaryInterfaceType:(id)a3 primaryInterfaceName:(id)a4 wifiSSID:(id)a5 primaryIPv4Addresses:(id)a6 primaryIPv6Addresses:(id)a7 primaryIPv4NetworkSignature:(id)a8 primaryIPv6NetworkSignature:(id)a9;
- (id)dictionaryRepresentation;
- (id)generateStatusKitPayload;
- (void)_computeHashValues;
@end

@implementation HMDPrimaryNetworkInterfaceDetails

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceType];
  [v3 setObject:v4 forKeyedSubscript:@"NwIt"];

  v5 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceName];
  [v3 setObject:v5 forKeyedSubscript:@"NwIn"];

  v6 = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];
  [v3 setObject:v6 forKeyedSubscript:@"NwWf"];

  v7 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  [v3 setObject:v7 forKeyedSubscript:@"NwI4"];

  v8 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  [v3 setObject:v8 forKeyedSubscript:@"NwI6"];

  v9 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
  [v3 setObject:v9 forKeyedSubscript:@"Nw4s"];

  v10 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
  [v3 setObject:v10 forKeyedSubscript:@"Nw6s"];

  v11 = [v3 copy];

  return v11;
}

- (id)generateStatusKitPayload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceType];
  [v3 setObject:v4 forKeyedSubscript:@"NwIt"];

  v5 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceName];
  [v3 setObject:v5 forKeyedSubscript:@"NwIn"];

  v6 = [(HMDPrimaryNetworkInterfaceDetails *)self hashWifiSSID];
  [v3 setObject:v6 forKeyedSubscript:@"NwWf"];

  v7 = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv4Addresses];
  [v3 setObject:v7 forKeyedSubscript:@"NwI4"];

  v8 = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv6Addresses];
  [v3 setObject:v8 forKeyedSubscript:@"NwI6"];

  v9 = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv4NetworkSignature];
  [v3 setObject:v9 forKeyedSubscript:@"Nw4s"];

  v10 = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv6NetworkSignature];
  [v3 setObject:v10 forKeyedSubscript:@"Nw6s"];

  v11 = [v3 copy];

  return v11;
}

- (void)_computeHashValues
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCABB0]);
    v5 = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];
    v6 = [v5 dataUsingEncoding:4];
    v7 = [v4 initWithLong:HMDTruncatedHash(v6)];
    hashWifiSSID = self->_hashWifiSSID;
    self->_hashWifiSSID = v7;
  }

  v9 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  v10 = [v9 count];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v11 = 0;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v12 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  v13 = [v12 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    do
    {
      v16 = 0;
      do
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v56 + 1) + 8 * v16) dataUsingEncoding:4];
        v18 = HMDTruncatedHash(v17);

        v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:v18];
        [v11 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v14);
  }

  v20 = [v11 copy];
  hashPrimaryIPv4Addresses = self->_hashPrimaryIPv4Addresses;
  self->_hashPrimaryIPv4Addresses = v20;

  v22 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  v23 = [v22 count];

  if (v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v24 = 0;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  v26 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v53;
    do
    {
      v29 = 0;
      do
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v52 + 1) + 8 * v29) dataUsingEncoding:4];
        v31 = HMDTruncatedHash(v30);

        v32 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:v31];
        [v24 addObject:v32];

        ++v29;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v27);
  }

  v33 = [v24 copy];
  hashPrimaryIPv6Addresses = self->_hashPrimaryIPv6Addresses;
  self->_hashPrimaryIPv6Addresses = v33;

  v35 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
  if (v35)
  {
    v36 = v35;
    v37 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
    v38 = [v37 length];

    if (v38)
    {
      v39 = objc_alloc(MEMORY[0x277CCABB0]);
      v40 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
      v41 = [v39 initWithLong:HMDTruncatedHash(v40)];
      hashPrimaryIPv4NetworkSignature = self->_hashPrimaryIPv4NetworkSignature;
      self->_hashPrimaryIPv4NetworkSignature = v41;
    }
  }

  v43 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
  if (v43)
  {
    v44 = v43;
    v45 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
    v46 = [v45 length];

    if (v46)
    {
      v47 = objc_alloc(MEMORY[0x277CCABB0]);
      v48 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
      v49 = [v47 initWithLong:HMDTruncatedHash(v48)];
      hashPrimaryIPv6NetworkSignature = self->_hashPrimaryIPv6NetworkSignature;
      self->_hashPrimaryIPv6NetworkSignature = v49;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryNetworkInterfaceDetails)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"NwIt"];
  v6 = [v4 objectForKeyedSubscript:@"NwIn"];
  v7 = [v4 objectForKeyedSubscript:@"NwWf"];
  v8 = [v4 objectForKeyedSubscript:@"NwI4"];
  v9 = [v4 objectForKeyedSubscript:@"NwI6"];
  v10 = [v4 objectForKeyedSubscript:@"Nw4s"];
  v11 = [v4 objectForKeyedSubscript:@"Nw6s"];

  v12 = [(HMDPrimaryNetworkInterfaceDetails *)self initWithPrimaryInterfaceType:v5 primaryInterfaceName:v6 wifiSSID:v7 primaryIPv4Addresses:v8 primaryIPv6Addresses:v9 primaryIPv4NetworkSignature:v10 primaryIPv6NetworkSignature:v11];
  return v12;
}

- (HMDPrimaryNetworkInterfaceDetails)initWithPrimaryInterfaceType:(id)a3 primaryInterfaceName:(id)a4 wifiSSID:(id)a5 primaryIPv4Addresses:(id)a6 primaryIPv6Addresses:(id)a7 primaryIPv4NetworkSignature:(id)a8 primaryIPv6NetworkSignature:(id)a9
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v28.receiver = self;
  v28.super_class = HMDPrimaryNetworkInterfaceDetails;
  v20 = [(HMDPrimaryNetworkInterfaceDetails *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_primaryInterfaceType, a3);
    objc_storeStrong(&v21->_primaryInterfaceName, a4);
    objc_storeStrong(&v21->_wifiSSID, a5);
    if (v16)
    {
      v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16 copyItems:1];
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v21->_primaryIPv4Addresses, v22);
    if (v16)
    {
    }

    if (v17)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v17 copyItems:1];
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v21->_primaryIPv6Addresses, v23);
    if (v17)
    {
    }

    objc_storeStrong(&v21->_primaryIPv4NetworkSignature, a8);
    objc_storeStrong(&v21->_primaryIPv6NetworkSignature, a9);
    [(HMDPrimaryNetworkInterfaceDetails *)v21 _computeHashValues];
  }

  return v21;
}

@end