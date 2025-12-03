@interface HMCHIPAccessoryPairing(HMD)
- (id)chipPluginPairing;
- (uint64_t)initWithHMMTRPairing:()HMD ownedEcosystem:;
@end

@implementation HMCHIPAccessoryPairing(HMD)

- (id)chipPluginPairing
{
  v14 = objc_alloc(MEMORY[0x277D17B60]);
  identifier = [self identifier];
  home = [self home];
  identifier2 = [home identifier];
  home2 = [self home];
  name = [home2 name];
  home3 = [self home];
  ecosystem = [home3 ecosystem];
  rootPublicKey = [ecosystem rootPublicKey];
  home4 = [self home];
  ecosystem2 = [home4 ecosystem];
  vendor = [ecosystem2 vendor];
  identifier3 = [vendor identifier];
  home5 = [self home];
  ecosystem3 = [home5 ecosystem];
  vendor2 = [ecosystem3 vendor];
  name2 = [vendor2 name];
  v15 = [v14 initWithNodeID:identifier fabricID:identifier2 fabricLabel:name rootPublicKey:rootPublicKey vendorID:identifier3 vendorName:name2];

  return v15;
}

- (uint64_t)initWithHMMTRPairing:()HMD ownedEcosystem:
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc(MEMORY[0x277CD1C40]);
    vendorID = [v7 vendorID];
    vendorName = [v7 vendorName];
    v11 = [v8 initWithIdentifier:vendorID name:vendorName];

    identifier = [v11 identifier];
    [v11 setAppleVendor:{objc_msgSend(identifier, "integerValue") == 4937}];

    identifier2 = [v11 identifier];
    [v11 setSystemCommissionerVendor:{objc_msgSend(identifier2, "integerValue") == 4996}];

    v14 = objc_alloc(MEMORY[0x277CD1888]);
    rootPublicKey = [v7 rootPublicKey];
    v16 = [v14 initWithRootPublicKey:rootPublicKey vendor:v11 owned:a4];

    v17 = objc_alloc(MEMORY[0x277CD1890]);
    fabricID = [v7 fabricID];
    fabricID2 = [v7 fabricID];
    fabricLabel = [v7 fabricLabel];
    v21 = [v17 initWithIdentifier:fabricID index:fabricID2 name:fabricLabel ecosystem:v16];

    nodeID = [v7 nodeID];
    v23 = [self initWithIdentifier:nodeID home:v21];

    return v23;
  }

  else
  {
    v25 = _HMFPreconditionFailure();
    return [HMCHIPAccessoryPairing(HMD) initWithHMMTRPairing:v25];
  }
}

@end