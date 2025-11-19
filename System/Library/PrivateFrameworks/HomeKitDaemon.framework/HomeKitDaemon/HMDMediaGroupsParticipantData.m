@interface HMDMediaGroupsParticipantData
- (BOOL)isEqual:(id)a3;
- (HMDMediaGroupsParticipantData)initWithDestination:(id)a3 destinationControllerData:(id)a4 backedUpGroups:(id)a5;
- (HMDMediaGroupsParticipantData)initWithProtoBufferData:(id)a3;
- (id)description;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsParticipantData

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMDMutableMediaGroupsParticipantData alloc];
  v5 = [(HMDMediaGroupsParticipantData *)self destination];
  v6 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  v7 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v8 = [(HMDMediaGroupsParticipantData *)v4 initWithDestination:v5 destinationControllerData:v6 backedUpGroups:v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HMDMediaGroupsParticipantData *)self destination];

  if (v3)
  {
    v4 = [(HMDMediaGroupsParticipantData *)self destination];
    v5 = [v4 uniqueIdentifier];
  }

  else
  {
    v6 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];

    if (!v6)
    {
      v4 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
      v8 = [v4 count];
      goto LABEL_6;
    }

    v4 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    v5 = [v4 identifier];
  }

  v7 = v5;
  v8 = [v5 hash];

LABEL_6:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMDMediaGroupsParticipantData *)self destination];
    v8 = [(HMDMediaGroupsParticipantData *)v6 destination];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    v11 = [(HMDMediaGroupsParticipantData *)v6 destinationControllerData];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = MEMORY[0x277CBEB98];
      v14 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
      v15 = [v13 setWithArray:v14];
      v16 = MEMORY[0x277CBEB98];
      v17 = [(HMDMediaGroupsParticipantData *)v6 backedUpGroups];
      v18 = [v16 setWithArray:v17];
      v19 = [v15 isEqual:v18];
    }

    else
    {
LABEL_9:
      v19 = 0;
    }
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaGroupsParticipantData *)self destination];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"none";
  }

  v7 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"none";
  }

  v10 = MEMORY[0x277CCABB0];
  v11 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v13 = [v3 stringWithFormat:@"<HMDMediaGroupsParticipantData destination: %@ destinationControllerData: %@ groups count: %@>", v6, v9, v12];

  return v13;
}

- (HMDMediaGroupsParticipantData)initWithProtoBufferData:(id)a3
{
  v4 = MEMORY[0x277CD1BC8];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  if ([v6 hasDestination])
  {
    v7 = objc_alloc(MEMORY[0x277CD1B80]);
    v8 = [v6 destination];
    v9 = [v8 data];
    v10 = [v7 initWithProtoBufferData:v9];
  }

  else
  {
    v10 = 0;
  }

  if ([v6 hasDestinationController])
  {
    v11 = objc_alloc(MEMORY[0x277CD1B90]);
    v12 = [v6 destinationController];
    v13 = [v12 data];
    v14 = [v11 initWithProtoBufferData:v13];
  }

  else
  {
    v14 = 0;
  }

  if ([v6 backupGroupsCount])
  {
    v15 = [v6 backupGroups];
    v16 = [(HMDMediaGroupsParticipantData *)self initWithDestination:v10 destinationControllerData:v14 backedUpGroups:v15];
  }

  else
  {
    v16 = [(HMDMediaGroupsParticipantData *)self initWithDestination:v10 destinationControllerData:v14 backedUpGroups:MEMORY[0x277CBEBF8]];
  }

  return v16;
}

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(MEMORY[0x277CD1BC8]);
  v4 = [(HMDMediaGroupsParticipantData *)self destination];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CD1BA8]);
    v6 = [(HMDMediaGroupsParticipantData *)self destination];
    v7 = [v6 encodeToProtoBufferData];
    v8 = [v5 initWithData:v7];
    [v3 setDestination:v8];
  }

  v9 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CD1BB8]);
    v11 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    v12 = [v11 encodeToProtoBufferData];
    v13 = [v10 initWithData:v12];
    [v3 setDestinationController:v13];
  }

  v14 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v15 = [v14 mutableCopy];
  [v3 setBackupGroups:v15];

  v16 = [v3 data];

  return v16;
}

- (HMDMediaGroupsParticipantData)initWithDestination:(id)a3 destinationControllerData:(id)a4 backedUpGroups:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = v11;
    v19.receiver = self;
    v19.super_class = HMDMediaGroupsParticipantData;
    v13 = [(HMDMediaGroupsParticipantData *)&v19 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_destination, a3);
      objc_storeStrong(&v14->_destinationControllerData, a4);
      objc_storeStrong(&v14->_backedUpGroups, a5);
    }

    return v14;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    [(HMDNetworkRouterFirewallRuleManagerBackingStoreMirror *)v16 __updateChangeTokenWithFetchInfo:v17, v18];
  }

  return result;
}

@end