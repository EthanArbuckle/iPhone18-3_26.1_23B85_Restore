@interface HMMTROperationalFabricData
- (HMMTROperationalFabricData)initWithRootCert:(id)a3 ipk:(id)a4 residentNodeID:(id)a5 operationalCert:(id)a6 operationalKeyPair:(id)a7;
- (id)attributeDescriptions;
@end

@implementation HMMTROperationalFabricData

- (id)attributeDescriptions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMMTROperationalFabricData *)self fabricID];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D0F778]);
    v6 = [(HMMTROperationalFabricData *)self fabricID];
    v7 = [v5 initWithName:@"Fabric ID" value:v6];
    [v3 addObject:v7];
  }

  v8 = [(HMMTROperationalFabricData *)self ipk];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D0F778]);
    v10 = [(HMMTROperationalFabricData *)self ipk];
    v11 = [v10 hmmtr_sha256hash];
    v12 = [v9 initWithName:@"IPK" value:v11];
    [v3 addObject:v12];
  }

  v13 = [(HMMTROperationalFabricData *)self residentNodeID];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277D0F778]);
    v15 = [(HMMTROperationalFabricData *)self residentNodeID];
    v16 = [v14 initWithName:@"Resident Node ID" value:v15];
    [v3 addObject:v16];
  }

  v17 = [(HMMTROperationalFabricData *)self operationalKeyPair];
  v18 = [v17 publicKey];

  if (v18)
  {
    v19 = SecKeyCopyExternalRepresentation(v18, 0);
    if (v19)
    {
      v20 = v19;
      v21 = objc_alloc(MEMORY[0x277D0F778]);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v20, "hash")}];
      v23 = [v21 initWithName:@"Op Key Pair" value:v22];
      [v3 addObject:v23];
    }
  }

  v24 = [(HMMTROperationalFabricData *)self rootCert];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x277D0F778]);
    v26 = MEMORY[0x277CD5230];
    v27 = [(HMMTROperationalFabricData *)self rootCert];
    v28 = [v26 shortDescriptionForX509Certificate:v27];
    v29 = [v25 initWithName:@"Root Cert" value:v28];
    [v3 addObject:v29];
  }

  v30 = [(HMMTROperationalFabricData *)self operationalCert];

  if (v30)
  {
    v31 = objc_alloc(MEMORY[0x277D0F778]);
    v32 = MEMORY[0x277CD5230];
    v33 = [(HMMTROperationalFabricData *)self operationalCert];
    v34 = [v32 shortDescriptionForX509Certificate:v33];
    v35 = [v31 initWithName:@"Op Cert" value:v34];
    [v3 addObject:v35];
  }

  v36 = [(HMMTROperationalFabricData *)self operationalNodeID];

  if (v36)
  {
    v37 = objc_alloc(MEMORY[0x277D0F778]);
    v38 = [(HMMTROperationalFabricData *)self operationalNodeID];
    v39 = [v37 initWithName:@"Op Node ID" value:v38];
    [v3 addObject:v39];
  }

  v40 = [v3 copy];

  return v40;
}

- (HMMTROperationalFabricData)initWithRootCert:(id)a3 ipk:(id)a4 residentNodeID:(id)a5 operationalCert:(id)a6 operationalKeyPair:(id)a7
{
  v13 = a3;
  v30 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = HMMTROperationalFabricData;
  v17 = [(HMMTROperationalFabricData *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rootCert, a3);
    objc_storeStrong(&v18->_ipk, a4);
    objc_storeStrong(&v18->_residentNodeID, a5);
    objc_storeStrong(&v18->_operationalCert, a6);
    objc_storeStrong(&v18->_operationalKeyPair, a7);
    v19 = [MEMORY[0x277CD5230] convertX509Certificate:v13];
    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v19];
      v21 = [v20 subject];
      v22 = [v21 fabricID];
      fabricID = v18->_fabricID;
      v18->_fabricID = v22;
    }

    v24 = [MEMORY[0x277CD5230] convertX509Certificate:v15];
    if (v24)
    {
      v25 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v24];
      v26 = [(NSNumber *)v25 subject];
      v27 = [v26 nodeID];
      operationalNodeID = v18->_operationalNodeID;
      v18->_operationalNodeID = v27;
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