@interface HMDPrimaryNetworkInterfaceDetails
- (HMDPrimaryNetworkInterfaceDetails)initWithDictionaryRepresentation:(id)representation;
- (HMDPrimaryNetworkInterfaceDetails)initWithPrimaryInterfaceType:(id)type primaryInterfaceName:(id)name wifiSSID:(id)d primaryIPv4Addresses:(id)addresses primaryIPv6Addresses:(id)pv6Addresses primaryIPv4NetworkSignature:(id)signature primaryIPv6NetworkSignature:(id)networkSignature;
- (id)dictionaryRepresentation;
- (id)generateStatusKitPayload;
- (void)_computeHashValues;
@end

@implementation HMDPrimaryNetworkInterfaceDetails

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  primaryInterfaceType = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceType];
  [dictionary setObject:primaryInterfaceType forKeyedSubscript:@"NwIt"];

  primaryInterfaceName = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceName];
  [dictionary setObject:primaryInterfaceName forKeyedSubscript:@"NwIn"];

  wifiSSID = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];
  [dictionary setObject:wifiSSID forKeyedSubscript:@"NwWf"];

  primaryIPv4Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  [dictionary setObject:primaryIPv4Addresses forKeyedSubscript:@"NwI4"];

  primaryIPv6Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  [dictionary setObject:primaryIPv6Addresses forKeyedSubscript:@"NwI6"];

  primaryIPv4NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
  [dictionary setObject:primaryIPv4NetworkSignature forKeyedSubscript:@"Nw4s"];

  primaryIPv6NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
  [dictionary setObject:primaryIPv6NetworkSignature forKeyedSubscript:@"Nw6s"];

  v11 = [dictionary copy];

  return v11;
}

- (id)generateStatusKitPayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  primaryInterfaceType = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceType];
  [dictionary setObject:primaryInterfaceType forKeyedSubscript:@"NwIt"];

  primaryInterfaceName = [(HMDPrimaryNetworkInterfaceDetails *)self primaryInterfaceName];
  [dictionary setObject:primaryInterfaceName forKeyedSubscript:@"NwIn"];

  hashWifiSSID = [(HMDPrimaryNetworkInterfaceDetails *)self hashWifiSSID];
  [dictionary setObject:hashWifiSSID forKeyedSubscript:@"NwWf"];

  hashPrimaryIPv4Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv4Addresses];
  [dictionary setObject:hashPrimaryIPv4Addresses forKeyedSubscript:@"NwI4"];

  hashPrimaryIPv6Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv6Addresses];
  [dictionary setObject:hashPrimaryIPv6Addresses forKeyedSubscript:@"NwI6"];

  hashPrimaryIPv4NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv4NetworkSignature];
  [dictionary setObject:hashPrimaryIPv4NetworkSignature forKeyedSubscript:@"Nw4s"];

  hashPrimaryIPv6NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self hashPrimaryIPv6NetworkSignature];
  [dictionary setObject:hashPrimaryIPv6NetworkSignature forKeyedSubscript:@"Nw6s"];

  v11 = [dictionary copy];

  return v11;
}

- (void)_computeHashValues
{
  v62 = *MEMORY[0x277D85DE8];
  wifiSSID = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];

  if (wifiSSID)
  {
    v4 = objc_alloc(MEMORY[0x277CCABB0]);
    wifiSSID2 = [(HMDPrimaryNetworkInterfaceDetails *)self wifiSSID];
    v6 = [wifiSSID2 dataUsingEncoding:4];
    v7 = [v4 initWithLong:HMDTruncatedHash(v6)];
    hashWifiSSID = self->_hashWifiSSID;
    self->_hashWifiSSID = v7;
  }

  primaryIPv4Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  v10 = [primaryIPv4Addresses count];

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
  primaryIPv4Addresses2 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4Addresses];
  v13 = [primaryIPv4Addresses2 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
          objc_enumerationMutation(primaryIPv4Addresses2);
        }

        v17 = [*(*(&v56 + 1) + 8 * v16) dataUsingEncoding:4];
        v18 = HMDTruncatedHash(v17);

        v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:v18];
        [v11 addObject:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [primaryIPv4Addresses2 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v14);
  }

  v20 = [v11 copy];
  hashPrimaryIPv4Addresses = self->_hashPrimaryIPv4Addresses;
  self->_hashPrimaryIPv4Addresses = v20;

  primaryIPv6Addresses = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  v23 = [primaryIPv6Addresses count];

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
  primaryIPv6Addresses2 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6Addresses];
  v26 = [primaryIPv6Addresses2 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
          objc_enumerationMutation(primaryIPv6Addresses2);
        }

        v30 = [*(*(&v52 + 1) + 8 * v29) dataUsingEncoding:4];
        v31 = HMDTruncatedHash(v30);

        v32 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:v31];
        [v24 addObject:v32];

        ++v29;
      }

      while (v27 != v29);
      v27 = [primaryIPv6Addresses2 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v27);
  }

  v33 = [v24 copy];
  hashPrimaryIPv6Addresses = self->_hashPrimaryIPv6Addresses;
  self->_hashPrimaryIPv6Addresses = v33;

  primaryIPv4NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
  if (primaryIPv4NetworkSignature)
  {
    v36 = primaryIPv4NetworkSignature;
    primaryIPv4NetworkSignature2 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
    v38 = [primaryIPv4NetworkSignature2 length];

    if (v38)
    {
      v39 = objc_alloc(MEMORY[0x277CCABB0]);
      primaryIPv4NetworkSignature3 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv4NetworkSignature];
      v41 = [v39 initWithLong:HMDTruncatedHash(primaryIPv4NetworkSignature3)];
      hashPrimaryIPv4NetworkSignature = self->_hashPrimaryIPv4NetworkSignature;
      self->_hashPrimaryIPv4NetworkSignature = v41;
    }
  }

  primaryIPv6NetworkSignature = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
  if (primaryIPv6NetworkSignature)
  {
    v44 = primaryIPv6NetworkSignature;
    primaryIPv6NetworkSignature2 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
    v46 = [primaryIPv6NetworkSignature2 length];

    if (v46)
    {
      v47 = objc_alloc(MEMORY[0x277CCABB0]);
      primaryIPv6NetworkSignature3 = [(HMDPrimaryNetworkInterfaceDetails *)self primaryIPv6NetworkSignature];
      v49 = [v47 initWithLong:HMDTruncatedHash(primaryIPv6NetworkSignature3)];
      hashPrimaryIPv6NetworkSignature = self->_hashPrimaryIPv6NetworkSignature;
      self->_hashPrimaryIPv6NetworkSignature = v49;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (HMDPrimaryNetworkInterfaceDetails)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"NwIt"];
  v6 = [representationCopy objectForKeyedSubscript:@"NwIn"];
  v7 = [representationCopy objectForKeyedSubscript:@"NwWf"];
  v8 = [representationCopy objectForKeyedSubscript:@"NwI4"];
  v9 = [representationCopy objectForKeyedSubscript:@"NwI6"];
  v10 = [representationCopy objectForKeyedSubscript:@"Nw4s"];
  v11 = [representationCopy objectForKeyedSubscript:@"Nw6s"];

  v12 = [(HMDPrimaryNetworkInterfaceDetails *)self initWithPrimaryInterfaceType:v5 primaryInterfaceName:v6 wifiSSID:v7 primaryIPv4Addresses:v8 primaryIPv6Addresses:v9 primaryIPv4NetworkSignature:v10 primaryIPv6NetworkSignature:v11];
  return v12;
}

- (HMDPrimaryNetworkInterfaceDetails)initWithPrimaryInterfaceType:(id)type primaryInterfaceName:(id)name wifiSSID:(id)d primaryIPv4Addresses:(id)addresses primaryIPv6Addresses:(id)pv6Addresses primaryIPv4NetworkSignature:(id)signature primaryIPv6NetworkSignature:(id)networkSignature
{
  typeCopy = type;
  nameCopy = name;
  dCopy = d;
  addressesCopy = addresses;
  pv6AddressesCopy = pv6Addresses;
  signatureCopy = signature;
  networkSignatureCopy = networkSignature;
  v28.receiver = self;
  v28.super_class = HMDPrimaryNetworkInterfaceDetails;
  v20 = [(HMDPrimaryNetworkInterfaceDetails *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_primaryInterfaceType, type);
    objc_storeStrong(&v21->_primaryInterfaceName, name);
    objc_storeStrong(&v21->_wifiSSID, d);
    if (addressesCopy)
    {
      v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:addressesCopy copyItems:1];
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v21->_primaryIPv4Addresses, v22);
    if (addressesCopy)
    {
    }

    if (pv6AddressesCopy)
    {
      v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:pv6AddressesCopy copyItems:1];
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v21->_primaryIPv6Addresses, v23);
    if (pv6AddressesCopy)
    {
    }

    objc_storeStrong(&v21->_primaryIPv4NetworkSignature, signature);
    objc_storeStrong(&v21->_primaryIPv6NetworkSignature, networkSignature);
    [(HMDPrimaryNetworkInterfaceDetails *)v21 _computeHashValues];
  }

  return v21;
}

@end