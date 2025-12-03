@interface HMDCoordinationLocalElectionMeshNode
- (BOOL)isEqual:(id)equal;
- (COMeshNode)meshNode;
- (HMDCoordinationLocalElectionMeshNode)initWithMeshNode:(id)node;
- (NSString)debugDescription;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HMDCoordinationLocalElectionMeshNode

- (COMeshNode)meshNode
{
  WeakRetained = objc_loadWeakRetained(&self->_meshNode);

  return WeakRetained;
}

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  meshNode = [(HMDCoordinationLocalElectionMeshNode *)self meshNode];
  v4 = [meshNode debugDescription];
  v5 = [v2 stringWithFormat:@"[HMDLocalElectionMeshNode wrapping:%@]", v4];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  meshNode = [(HMDCoordinationLocalElectionMeshNode *)self meshNode];
  v4 = [meshNode description];
  v5 = [v2 stringWithFormat:@"[HMDLocalElectionMeshNode wrapping:%@]", v4];

  return v5;
}

- (unint64_t)hash
{
  idsIdentifier = [(HMDCoordinationLocalElectionMeshNode *)self idsIdentifier];
  v3 = [idsIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
      idsIdentifier = [(HMDCoordinationLocalElectionMeshNode *)self idsIdentifier];
      idsIdentifier2 = [(HMDCoordinationLocalElectionMeshNode *)v6 idsIdentifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMDCoordinationLocalElectionMeshNode)initWithMeshNode:(id)node
{
  nodeCopy = node;
  v10.receiver = self;
  v10.super_class = HMDCoordinationLocalElectionMeshNode;
  v5 = [(HMDCoordinationLocalElectionMeshNode *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_meshNode, nodeCopy);
    iDSIdentifier = [nodeCopy IDSIdentifier];
    idsIdentifier = v6->_idsIdentifier;
    v6->_idsIdentifier = iDSIdentifier;
  }

  return v6;
}

@end