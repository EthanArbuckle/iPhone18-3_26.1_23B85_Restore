@interface HMDCoordinationLocalElectionMeshNode
- (BOOL)isEqual:(id)a3;
- (COMeshNode)meshNode;
- (HMDCoordinationLocalElectionMeshNode)initWithMeshNode:(id)a3;
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
  v3 = [(HMDCoordinationLocalElectionMeshNode *)self meshNode];
  v4 = [v3 debugDescription];
  v5 = [v2 stringWithFormat:@"[HMDLocalElectionMeshNode wrapping:%@]", v4];

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCoordinationLocalElectionMeshNode *)self meshNode];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"[HMDLocalElectionMeshNode wrapping:%@]", v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(HMDCoordinationLocalElectionMeshNode *)self idsIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
      v7 = [(HMDCoordinationLocalElectionMeshNode *)self idsIdentifier];
      v8 = [(HMDCoordinationLocalElectionMeshNode *)v6 idsIdentifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMDCoordinationLocalElectionMeshNode)initWithMeshNode:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDCoordinationLocalElectionMeshNode;
  v5 = [(HMDCoordinationLocalElectionMeshNode *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_meshNode, v4);
    v7 = [v4 IDSIdentifier];
    idsIdentifier = v6->_idsIdentifier;
    v6->_idsIdentifier = v7;
  }

  return v6;
}

@end