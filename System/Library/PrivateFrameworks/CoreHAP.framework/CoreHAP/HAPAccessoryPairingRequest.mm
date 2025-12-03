@interface HAPAccessoryPairingRequest
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HAPAccessoryPairingRequest

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];

  if (pairingIdentity)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    pairingIdentity2 = [(HAPAccessoryPairingRequest *)self pairingIdentity];
    v7 = [v5 initWithName:@"Pairing Identity" value:pairingIdentity2];
    [array addObject:v7];
  }

  if ([(HAPAccessoryPairingRequest *)self requiresUserConsent])
  {
    v8 = objc_alloc(MEMORY[0x277D0F778]);
    [(HAPAccessoryPairingRequest *)self requiresUserConsent];
    v9 = HMFBooleanToString();
    v10 = [v8 initWithName:@"Requires User Consent" value:v9];
    [array addObject:v10];
  }

  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];

  if (ownershipToken)
  {
    v12 = objc_alloc(MEMORY[0x277D0F778]);
    ownershipToken2 = [(HAPAccessoryPairingRequest *)self ownershipToken];
    v14 = [v12 initWithName:@"Ownership Token" value:ownershipToken2];
    [array addObject:v14];
  }

  ssid = [(HAPAccessoryPairingRequest *)self ssid];

  if (ssid)
  {
    v16 = objc_alloc(MEMORY[0x277D0F778]);
    ssid2 = [(HAPAccessoryPairingRequest *)self ssid];
    v18 = [v16 initWithName:@"SSID" value:ssid2];
    [array addObject:v18];
  }

  v19 = [(HAPAccessoryPairingRequest *)self psk];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277D0F778]);
    v21 = [(HAPAccessoryPairingRequest *)self psk];
    v22 = [v20 initWithName:@"PSK" value:v21];
    [array addObject:v22];
  }

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];

  if (isoCountryCode)
  {
    v24 = objc_alloc(MEMORY[0x277D0F778]);
    isoCountryCode2 = [(HAPAccessoryPairingRequest *)self isoCountryCode];
    v26 = [v24 initWithName:@"ISO Country Code" value:isoCountryCode2];
    [array addObject:v26];
  }

  chipFabricID = [(HAPAccessoryPairingRequest *)self chipFabricID];

  if (chipFabricID)
  {
    v28 = objc_alloc(MEMORY[0x277D0F778]);
    chipFabricID2 = [(HAPAccessoryPairingRequest *)self chipFabricID];
    v30 = [v28 initWithName:@"CHIP Fabric ID" value:chipFabricID2];
    [array addObject:v30];
  }

  if ([(HAPAccessoryPairingRequest *)self doNetworkScan])
  {
    v31 = objc_alloc(MEMORY[0x277D0F778]);
    [(HAPAccessoryPairingRequest *)self doNetworkScan];
    v32 = HMFBooleanToString();
    v33 = [v31 initWithName:@"Do Network Scan" value:v32];
    [array addObject:v33];
  }

  v34 = objc_alloc(MEMORY[0x277D0F778]);
  [(HAPAccessoryPairingRequest *)self isOwnerPairing];
  v35 = HMFBooleanToString();
  v36 = [v34 initWithName:@"Owner Pairing" value:v35];
  [array addObject:v36];

  v37 = [array copy];

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HAPAccessoryPairingRequest allocWithZone:?]];
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  [(HAPAccessoryPairingRequest *)v4 setPairingIdentity:pairingIdentity];

  [(HAPAccessoryPairingRequest *)v4 setRequiresUserConsent:[(HAPAccessoryPairingRequest *)self requiresUserConsent]];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  [(HAPAccessoryPairingRequest *)v4 setOwnershipToken:ownershipToken];

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  [(HAPAccessoryPairingRequest *)v4 setSsid:ssid];

  v8 = [(HAPAccessoryPairingRequest *)self psk];
  [(HAPAccessoryPairingRequest *)v4 setPsk:v8];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  [(HAPAccessoryPairingRequest *)v4 setIsoCountryCode:isoCountryCode];

  chipFabricID = [(HAPAccessoryPairingRequest *)self chipFabricID];
  [(HAPAccessoryPairingRequest *)v4 setChipFabricID:chipFabricID];

  [(HAPAccessoryPairingRequest *)v4 setDoNetworkScan:[(HAPAccessoryPairingRequest *)self doNetworkScan]];
  return v4;
}

- (unint64_t)hash
{
  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  v4 = [pairingIdentity hash];

  requiresUserConsent = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  v7 = v4 ^ [ownershipToken hash] ^ requiresUserConsent;

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  v9 = [ssid hash];

  v10 = [(HAPAccessoryPairingRequest *)self psk];
  v11 = v9 ^ [v10 hash];

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  v13 = v7 ^ v11 ^ [isoCountryCode hash];

  chipFabricID = [(HAPAccessoryPairingRequest *)self chipFabricID];
  v15 = [chipFabricID hash];

  return v13 ^ v15 ^ [(HAPAccessoryPairingRequest *)self doNetworkScan];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_13;
  }

  pairingIdentity = [(HAPAccessoryPairingRequest *)self pairingIdentity];
  pairingIdentity2 = [v6 pairingIdentity];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_13;
  }

  requiresUserConsent = [(HAPAccessoryPairingRequest *)self requiresUserConsent];
  if (requiresUserConsent != [v6 requiresUserConsent])
  {
    goto LABEL_13;
  }

  ownershipToken = [(HAPAccessoryPairingRequest *)self ownershipToken];
  ownershipToken2 = [v6 ownershipToken];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_13;
  }

  ssid = [(HAPAccessoryPairingRequest *)self ssid];
  ssid2 = [v6 ssid];
  v16 = HMFEqualObjects();

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [(HAPAccessoryPairingRequest *)self psk];
  v18 = [v6 psk];
  v19 = HMFEqualObjects();

  if (!v19)
  {
    goto LABEL_13;
  }

  isoCountryCode = [(HAPAccessoryPairingRequest *)self isoCountryCode];
  isoCountryCode2 = [v6 isoCountryCode];
  v22 = HMFEqualObjects();

  if (!v22)
  {
    goto LABEL_13;
  }

  chipFabricID = [(HAPAccessoryPairingRequest *)self chipFabricID];
  chipFabricID2 = [v6 chipFabricID];
  v25 = HMFEqualObjects();

  if (v25)
  {
    doNetworkScan = [(HAPAccessoryPairingRequest *)self doNetworkScan];
    v27 = doNetworkScan ^ [v6 doNetworkScan] ^ 1;
  }

  else
  {
LABEL_13:
    LOBYTE(v27) = 0;
  }

  return v27;
}

@end