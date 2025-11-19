@interface HMMTRPairing
- (BOOL)isEqual:(id)a3;
- (HMMTRPairing)initWithFabricDescriptor:(id)a3 vendorName:(id)a4;
- (HMMTRPairing)initWithNodeID:(id)a3 fabricID:(id)a4 fabricLabel:(id)a5 rootPublicKey:(id)a6 vendorID:(id)a7 vendorName:(id)a8;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMMTRPairing

- (id)attributeDescriptions
{
  v29[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v28 = [(HMMTRPairing *)self nodeID];
  v27 = [v3 initWithName:@"Node ID" value:v28];
  v29[0] = v27;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(HMMTRPairing *)self fabricID];
  v25 = [v4 initWithName:@"Fabric ID" value:v26];
  v29[1] = v25;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMMTRPairing *)self fabricLabel];
  v23 = [v5 initWithName:@"Fabric Label" value:v24];
  v29[2] = v23;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMMTRPairing *)self rootPublicKey];
  v8 = [v6 initWithName:@"Root Public Key" value:v7];
  v29[3] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  v11 = [(HMMTRPairing *)self rootPublicKey];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
  v13 = [v9 initWithName:@"Root Public Key (Hash)" value:v12];
  v29[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMMTRPairing *)self vendorID];
  v16 = [v14 initWithName:@"Vendor ID" value:v15];
  v29[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMMTRPairing *)self vendorName];
  v19 = [v17 initWithName:@"Vendor Name" value:v18];
  v29[6] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (unint64_t)hash
{
  v2 = [(HMMTRPairing *)self nodeID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMMTRPairing *)self nodeID];
    v8 = [v6 nodeID];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMMTRPairing *)self fabricID];
      v10 = [v6 fabricID];
      if ([v9 isEqualToNumber:v10])
      {
        v11 = [(HMMTRPairing *)self fabricLabel];
        v12 = [v6 fabricLabel];
        if ([v11 isEqualToString:v12])
        {
          v13 = [(HMMTRPairing *)self rootPublicKey];
          v23 = [v6 rootPublicKey];
          v24 = v13;
          if ([v13 isEqualToData:v23])
          {
            v14 = [(HMMTRPairing *)self vendorID];
            v15 = [v6 vendorID];
            v22 = v14;
            v16 = v14;
            v17 = v15;
            if ([v16 isEqualToNumber:v15])
            {
              v21 = [(HMMTRPairing *)self vendorName];
              v20 = [v6 vendorName];
              v18 = [v21 isEqualToString:v20];
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (HMMTRPairing)initWithFabricDescriptor:(id)a3 vendorName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = [v6 nodeId];
    v10 = [v6 fabricId];
    v11 = [v6 label];
    v12 = [v6 rootPublicKey];
    v13 = [v6 vendorId];
    v14 = [(HMMTRPairing *)self initWithNodeID:v9 fabricID:v10 fabricLabel:v11 rootPublicKey:v12 vendorID:v13 vendorName:v8];

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return [(HMMTRPairing *)v16 initWithNodeID:v17 fabricID:v18 fabricLabel:v19 rootPublicKey:v20 vendorID:v21 vendorName:v22, v23];
  }
}

- (HMMTRPairing)initWithNodeID:(id)a3 fabricID:(id)a4 fabricLabel:(id)a5 rootPublicKey:(id)a6 vendorID:(id)a7 vendorName:(id)a8
{
  v15 = a3;
  v16 = a4;
  v28 = a5;
  v17 = a6;
  obj = a7;
  v18 = a7;
  v27 = a8;
  v19 = a8;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v20 = v19;
  if (!v19)
  {
LABEL_13:
    v24 = _HMFPreconditionFailure();
    [(HMMTRReportDescription *)v24 .cxx_destruct];
    return result;
  }

  v29.receiver = self;
  v29.super_class = HMMTRPairing;
  v21 = [(HMMTRPairing *)&v29 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_nodeID, a3);
    objc_storeStrong(&v22->_fabricLabel, a5);
    objc_storeStrong(&v22->_fabricID, a4);
    objc_storeStrong(&v22->_rootPublicKey, a6);
    objc_storeStrong(&v22->_vendorID, obj);
    objc_storeStrong(&v22->_vendorName, v27);
  }

  return v22;
}

@end