@interface HMMTRPairing
- (BOOL)isEqual:(id)equal;
- (HMMTRPairing)initWithFabricDescriptor:(id)descriptor vendorName:(id)name;
- (HMMTRPairing)initWithNodeID:(id)d fabricID:(id)iD fabricLabel:(id)label rootPublicKey:(id)key vendorID:(id)vendorID vendorName:(id)name;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMMTRPairing

- (id)attributeDescriptions
{
  v29[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  nodeID = [(HMMTRPairing *)self nodeID];
  v27 = [v3 initWithName:@"Node ID" value:nodeID];
  v29[0] = v27;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  fabricID = [(HMMTRPairing *)self fabricID];
  v25 = [v4 initWithName:@"Fabric ID" value:fabricID];
  v29[1] = v25;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  fabricLabel = [(HMMTRPairing *)self fabricLabel];
  v23 = [v5 initWithName:@"Fabric Label" value:fabricLabel];
  v29[2] = v23;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  rootPublicKey = [(HMMTRPairing *)self rootPublicKey];
  v8 = [v6 initWithName:@"Root Public Key" value:rootPublicKey];
  v29[3] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  rootPublicKey2 = [(HMMTRPairing *)self rootPublicKey];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey2, "hash")}];
  v13 = [v9 initWithName:@"Root Public Key (Hash)" value:v12];
  v29[4] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  vendorID = [(HMMTRPairing *)self vendorID];
  v16 = [v14 initWithName:@"Vendor ID" value:vendorID];
  v29[5] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  vendorName = [(HMMTRPairing *)self vendorName];
  v19 = [v17 initWithName:@"Vendor Name" value:vendorName];
  v29[6] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (unint64_t)hash
{
  nodeID = [(HMMTRPairing *)self nodeID];
  v3 = [nodeID hash];

  return v3;
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
  if (v6)
  {
    nodeID = [(HMMTRPairing *)self nodeID];
    nodeID2 = [v6 nodeID];
    if ([nodeID isEqualToNumber:nodeID2])
    {
      fabricID = [(HMMTRPairing *)self fabricID];
      fabricID2 = [v6 fabricID];
      if ([fabricID isEqualToNumber:fabricID2])
      {
        fabricLabel = [(HMMTRPairing *)self fabricLabel];
        fabricLabel2 = [v6 fabricLabel];
        if ([fabricLabel isEqualToString:fabricLabel2])
        {
          rootPublicKey = [(HMMTRPairing *)self rootPublicKey];
          rootPublicKey2 = [v6 rootPublicKey];
          v24 = rootPublicKey;
          if ([rootPublicKey isEqualToData:rootPublicKey2])
          {
            vendorID = [(HMMTRPairing *)self vendorID];
            vendorID2 = [v6 vendorID];
            v22 = vendorID;
            v16 = vendorID;
            v17 = vendorID2;
            if ([v16 isEqualToNumber:vendorID2])
            {
              vendorName = [(HMMTRPairing *)self vendorName];
              vendorName2 = [v6 vendorName];
              v18 = [vendorName isEqualToString:vendorName2];
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

- (HMMTRPairing)initWithFabricDescriptor:(id)descriptor vendorName:(id)name
{
  descriptorCopy = descriptor;
  nameCopy = name;
  if (descriptorCopy)
  {
    v8 = nameCopy;
    nodeId = [descriptorCopy nodeId];
    fabricId = [descriptorCopy fabricId];
    label = [descriptorCopy label];
    rootPublicKey = [descriptorCopy rootPublicKey];
    vendorId = [descriptorCopy vendorId];
    v14 = [(HMMTRPairing *)self initWithNodeID:nodeId fabricID:fabricId fabricLabel:label rootPublicKey:rootPublicKey vendorID:vendorId vendorName:v8];

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    return [(HMMTRPairing *)v16 initWithNodeID:v17 fabricID:v18 fabricLabel:v19 rootPublicKey:v20 vendorID:v21 vendorName:v22, v23];
  }
}

- (HMMTRPairing)initWithNodeID:(id)d fabricID:(id)iD fabricLabel:(id)label rootPublicKey:(id)key vendorID:(id)vendorID vendorName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  labelCopy = label;
  keyCopy = key;
  obj = vendorID;
  vendorIDCopy = vendorID;
  nameCopy = name;
  nameCopy2 = name;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!iDCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!keyCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!vendorIDCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v20 = nameCopy2;
  if (!nameCopy2)
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
    objc_storeStrong(&v21->_nodeID, d);
    objc_storeStrong(&v22->_fabricLabel, label);
    objc_storeStrong(&v22->_fabricID, iD);
    objc_storeStrong(&v22->_rootPublicKey, key);
    objc_storeStrong(&v22->_vendorID, obj);
    objc_storeStrong(&v22->_vendorName, nameCopy);
  }

  return v22;
}

@end