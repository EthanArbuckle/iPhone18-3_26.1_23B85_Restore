@interface HMMTROperationalFabricData
- (HMMTROperationalFabricData)initWithRootCert:(id)cert ipk:(id)ipk residentNodeID:(id)d operationalCert:(id)operationalCert operationalKeyPair:(id)pair;
- (id)attributeDescriptions;
@end

@implementation HMMTROperationalFabricData

- (id)attributeDescriptions
{
  array = [MEMORY[0x277CBEB18] array];
  fabricID = [(HMMTROperationalFabricData *)self fabricID];

  if (fabricID)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    fabricID2 = [(HMMTROperationalFabricData *)self fabricID];
    v7 = [v5 initWithName:@"Fabric ID" value:fabricID2];
    [array addObject:v7];
  }

  v8 = [(HMMTROperationalFabricData *)self ipk];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    v10 = [(HMMTROperationalFabricData *)self ipk];
    hmmtr_sha256hash = [v10 hmmtr_sha256hash];
    v12 = [v9 initWithName:@"IPK" value:hmmtr_sha256hash];
    [array addObject:v12];
  }

  residentNodeID = [(HMMTROperationalFabricData *)self residentNodeID];

  if (residentNodeID)
  {
    v14 = objc_alloc(MEMORY[0x277D0F778]);
    residentNodeID2 = [(HMMTROperationalFabricData *)self residentNodeID];
    v16 = [v14 initWithName:@"Resident Node ID" value:residentNodeID2];
    [array addObject:v16];
  }

  operationalKeyPair = [(HMMTROperationalFabricData *)self operationalKeyPair];
  publicKey = [operationalKeyPair publicKey];

  if (publicKey)
  {
    v19 = SecKeyCopyExternalRepresentation(publicKey, 0);
    if (v19)
    {
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277D0F778]);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v20, "hash")}];
      v23 = [v21 initWithName:@"Op Key Pair" value:v22];
      [array addObject:v23];
    }
  }

  rootCert = [(HMMTROperationalFabricData *)self rootCert];

  if (rootCert)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    v26 = MEMORY[0x277CD5230];
    rootCert2 = [(HMMTROperationalFabricData *)self rootCert];
    v28 = [v26 shortDescriptionForX509Certificate:rootCert2];
    v29 = [v25 initWithName:@"Root Cert" value:v28];
    [array addObject:v29];
  }

  operationalCert = [(HMMTROperationalFabricData *)self operationalCert];

  if (operationalCert)
  {
    v31 = objc_alloc(MEMORY[0x277D0F778]);
    v32 = MEMORY[0x277CD5230];
    operationalCert2 = [(HMMTROperationalFabricData *)self operationalCert];
    v34 = [v32 shortDescriptionForX509Certificate:operationalCert2];
    v35 = [v31 initWithName:@"Op Cert" value:v34];
    [array addObject:v35];
  }

  operationalNodeID = [(HMMTROperationalFabricData *)self operationalNodeID];

  if (operationalNodeID)
  {
    v37 = objc_alloc(MEMORY[0x277D0F778]);
    operationalNodeID2 = [(HMMTROperationalFabricData *)self operationalNodeID];
    v39 = [v37 initWithName:@"Op Node ID" value:operationalNodeID2];
    [array addObject:v39];
  }

  v40 = [array copy];

  return v40;
}

- (HMMTROperationalFabricData)initWithRootCert:(id)cert ipk:(id)ipk residentNodeID:(id)d operationalCert:(id)operationalCert operationalKeyPair:(id)pair
{
  certCopy = cert;
  ipkCopy = ipk;
  dCopy = d;
  operationalCertCopy = operationalCert;
  pairCopy = pair;
  v31.receiver = self;
  v31.super_class = HMMTROperationalFabricData;
  v17 = [(HMMTROperationalFabricData *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rootCert, cert);
    objc_storeStrong(&v18->_ipk, ipk);
    objc_storeStrong(&v18->_residentNodeID, d);
    objc_storeStrong(&v18->_operationalCert, operationalCert);
    objc_storeStrong(&v18->_operationalKeyPair, pair);
    v19 = [MEMORY[0x277CD5230] convertX509Certificate:certCopy];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v19];
      subject = [v20 subject];
      fabricID = [subject fabricID];
      fabricID = v18->_fabricID;
      v18->_fabricID = fabricID;
    }

    v24 = [MEMORY[0x277CD5230] convertX509Certificate:operationalCertCopy];
    if (v24)
    {
      v25 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v24];
      subject2 = [(NSNumber *)v25 subject];
      nodeID = [subject2 nodeID];
      operationalNodeID = v18->_operationalNodeID;
      v18->_operationalNodeID = nodeID;
    }

    else
    {
      v25 = v18->_operationalNodeID;
      v18->_operationalNodeID = &unk_283EE7FB0;
    }
  }

  return v18;
}

@end