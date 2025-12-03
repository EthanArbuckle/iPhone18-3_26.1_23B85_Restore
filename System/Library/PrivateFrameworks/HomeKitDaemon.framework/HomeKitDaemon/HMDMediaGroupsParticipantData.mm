@interface HMDMediaGroupsParticipantData
- (BOOL)isEqual:(id)equal;
- (HMDMediaGroupsParticipantData)initWithDestination:(id)destination destinationControllerData:(id)data backedUpGroups:(id)groups;
- (HMDMediaGroupsParticipantData)initWithProtoBufferData:(id)data;
- (id)description;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsParticipantData

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableMediaGroupsParticipantData alloc];
  destination = [(HMDMediaGroupsParticipantData *)self destination];
  destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  backedUpGroups = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v8 = [(HMDMediaGroupsParticipantData *)v4 initWithDestination:destination destinationControllerData:destinationControllerData backedUpGroups:backedUpGroups];

  return v8;
}

- (unint64_t)hash
{
  destination = [(HMDMediaGroupsParticipantData *)self destination];

  if (destination)
  {
    destination2 = [(HMDMediaGroupsParticipantData *)self destination];
    uniqueIdentifier = [destination2 uniqueIdentifier];
  }

  else
  {
    destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];

    if (!destinationControllerData)
    {
      destination2 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
      v8 = [destination2 count];
      goto LABEL_6;
    }

    destination2 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    uniqueIdentifier = [destination2 identifier];
  }

  v7 = uniqueIdentifier;
  v8 = [uniqueIdentifier hash];

LABEL_6:
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
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
    if (!v6)
    {
      goto LABEL_9;
    }

    destination = [(HMDMediaGroupsParticipantData *)self destination];
    destination2 = [(HMDMediaGroupsParticipantData *)v6 destination];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    destinationControllerData2 = [(HMDMediaGroupsParticipantData *)v6 destinationControllerData];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = MEMORY[0x277CBEB98];
      backedUpGroups = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
      v15 = [v13 setWithArray:backedUpGroups];
      v16 = MEMORY[0x277CBEB98];
      backedUpGroups2 = [(HMDMediaGroupsParticipantData *)v6 backedUpGroups];
      v18 = [v16 setWithArray:backedUpGroups2];
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
  destination = [(HMDMediaGroupsParticipantData *)self destination];
  v5 = destination;
  if (destination)
  {
    v6 = destination;
  }

  else
  {
    v6 = @"none";
  }

  destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  v8 = destinationControllerData;
  if (destinationControllerData)
  {
    v9 = destinationControllerData;
  }

  else
  {
    v9 = @"none";
  }

  v10 = MEMORY[0x277CCABB0];
  backedUpGroups = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(backedUpGroups, "count")}];
  v13 = [v3 stringWithFormat:@"<HMDMediaGroupsParticipantData destination: %@ destinationControllerData: %@ groups count: %@>", v6, v9, v12];

  return v13;
}

- (HMDMediaGroupsParticipantData)initWithProtoBufferData:(id)data
{
  v4 = MEMORY[0x277CD1BC8];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  if ([v6 hasDestination])
  {
    v7 = objc_alloc(MEMORY[0x277CD1B80]);
    destination = [v6 destination];
    data = [destination data];
    v10 = [v7 initWithProtoBufferData:data];
  }

  else
  {
    v10 = 0;
  }

  if ([v6 hasDestinationController])
  {
    v11 = objc_alloc(MEMORY[0x277CD1B90]);
    destinationController = [v6 destinationController];
    data2 = [destinationController data];
    v14 = [v11 initWithProtoBufferData:data2];
  }

  else
  {
    v14 = 0;
  }

  if ([v6 backupGroupsCount])
  {
    backupGroups = [v6 backupGroups];
    v16 = [(HMDMediaGroupsParticipantData *)self initWithDestination:v10 destinationControllerData:v14 backedUpGroups:backupGroups];
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
  destination = [(HMDMediaGroupsParticipantData *)self destination];

  if (destination)
  {
    v5 = objc_alloc(MEMORY[0x277CD1BA8]);
    destination2 = [(HMDMediaGroupsParticipantData *)self destination];
    encodeToProtoBufferData = [destination2 encodeToProtoBufferData];
    v8 = [v5 initWithData:encodeToProtoBufferData];
    [v3 setDestination:v8];
  }

  destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];

  if (destinationControllerData)
  {
    v10 = objc_alloc(MEMORY[0x277CD1BB8]);
    destinationControllerData2 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
    encodeToProtoBufferData2 = [destinationControllerData2 encodeToProtoBufferData];
    v13 = [v10 initWithData:encodeToProtoBufferData2];
    [v3 setDestinationController:v13];
  }

  backedUpGroups = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v15 = [backedUpGroups mutableCopy];
  [v3 setBackupGroups:v15];

  data = [v3 data];

  return data;
}

- (HMDMediaGroupsParticipantData)initWithDestination:(id)destination destinationControllerData:(id)data backedUpGroups:(id)groups
{
  destinationCopy = destination;
  dataCopy = data;
  groupsCopy = groups;
  if (groupsCopy)
  {
    v12 = groupsCopy;
    v19.receiver = self;
    v19.super_class = HMDMediaGroupsParticipantData;
    v13 = [(HMDMediaGroupsParticipantData *)&v19 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_destination, destination);
      objc_storeStrong(&v14->_destinationControllerData, data);
      objc_storeStrong(&v14->_backedUpGroups, groups);
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