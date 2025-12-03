@interface HMDMatterPath
+ (HMDMatterPath)PathWithAttributeID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory;
+ (HMDMatterPath)PathWithCommandID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory;
+ (HMDMatterPath)PathWithEventID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory;
+ (HMDMatterPath)PathWithMTRPath:(id)path accessory:(id)accessory;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (HMDAccessory)accessory;
- (HMDMatterPath)initWithCoder:(id)coder;
- (HMDMatterPath)initWithMTRPath:(id)path accessory:(id)accessory;
- (HMDMatterPath)initWithPathModel:(id)model accessory:(id)accessory;
- (HMDMatterPath)initWithUUID:(id)d mtrPath:(id)path accessory:(id)accessory;
- (NSNumber)attributeID;
- (NSNumber)clusterID;
- (NSNumber)commandID;
- (NSNumber)endpointID;
- (NSNumber)eventID;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)modelObjectWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
- (id)mtrPath;
- (id)path;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)populateModelObject:(id)object;
@end

@implementation HMDMatterPath

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)modelObjectWithChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v9 = [(HMDBackingStoreModelObject *)[HMDMatterPathModel alloc] initWithObjectChangeType:type uuid:uuidCopy parentUUID:dCopy];

  return v9;
}

- (id)shortDescription
{
  accessory = [(HMDMatterPath *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  identifier = [accessory identifier];
  path = [(HMDMatterPath *)self path];
  v8 = [v4 stringWithFormat:@"%@ %@ %@", v5, identifier, path];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uuid = [(HMDMatterPath *)self uuid];
  accessory = [(HMDMatterPath *)self accessory];
  identifier = [accessory identifier];
  path = [(HMDMatterPath *)self path];
  v9 = [v3 stringWithFormat:@"%@ %@/%@ %@", v4, uuid, identifier, path];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uuid = [(HMDMatterPath *)self uuid];
  mtrPath = [(HMDMatterPath *)self mtrPath];
  accessory = [(HMDMatterPath *)self accessory];
  v8 = [v4 initWithUUID:uuid mtrPath:mtrPath accessory:accessory];

  return v8;
}

- (void)populateModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  endpointID = [(HMDMatterPath *)self endpointID];
  [v5 setEndpointID:endpointID];

  clusterID = [(HMDMatterPath *)self clusterID];
  [v5 setClusterID:clusterID];

  attributeID = [(HMDMatterPath *)self attributeID];
  [v5 setAttributeID:attributeID];

  commandID = [(HMDMatterPath *)self commandID];
  [v5 setCommandID:commandID];

  eventID = [(HMDMatterPath *)self eventID];
  [v5 setEventID:eventID];
}

- (HMDMatterPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathEndpointIDKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathClusterIDKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathAttributeIDKey"];
  if (v7)
  {
    v8 = [MEMORY[0x277CD51C0] attributePathWithEndpointID:v5 clusterID:v6 attributeID:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathCommandIDKey"];
  if (v9)
  {
    v10 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:v5 clusterID:v6 commandID:v9];

    v8 = v10;
  }

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatterPathEventIDKey"];
  if (v11)
  {
    v12 = [MEMORY[0x277CD5408] eventPathWithEndpointID:v5 clusterID:v6 eventID:v11];

    v8 = v12;
  }

  v13 = [(HMDMatterPath *)self initWithMTRPath:v8 accessory:0];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endpointID = [(HMDMatterPath *)self endpointID];
  [coderCopy encodeObject:endpointID forKey:@"HMDMatterPathEndpointIDKey"];

  clusterID = [(HMDMatterPath *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"HMDMatterPathClusterIDKey"];

  attributeID = [(HMDMatterPath *)self attributeID];
  [coderCopy encodeObject:attributeID forKey:@"HMDMatterPathAttributeIDKey"];

  commandID = [(HMDMatterPath *)self commandID];
  [coderCopy encodeObject:commandID forKey:@"HMDMatterPathCommandIDKey"];

  eventID = [(HMDMatterPath *)self eventID];
  [coderCopy encodeObject:eventID forKey:@"HMDMatterPathEventIDKey"];
}

- (unint64_t)hash
{
  path = [(HMDMatterPath *)self path];
  v3 = [path hash];

  return v3;
}

- (id)path
{
  attributeID = [(HMDMatterPath *)self attributeID];

  if (attributeID)
  {
    v4 = MEMORY[0x277CCACA8];
    endpointID = [(HMDMatterPath *)self endpointID];
    clusterID = [(HMDMatterPath *)self clusterID];
    attributeID2 = [(HMDMatterPath *)self attributeID];
    [v4 stringWithFormat:@"EP/CL/ATTR: %@/%@/%@", endpointID, clusterID, attributeID2];
    v13 = LABEL_7:;

    goto LABEL_8;
  }

  commandID = [(HMDMatterPath *)self commandID];

  if (commandID)
  {
    v9 = MEMORY[0x277CCACA8];
    endpointID = [(HMDMatterPath *)self endpointID];
    clusterID = [(HMDMatterPath *)self clusterID];
    attributeID2 = [(HMDMatterPath *)self commandID];
    [v9 stringWithFormat:@"EP/CL/CMD: %@/%@/%@", endpointID, clusterID, attributeID2];
    goto LABEL_7;
  }

  eventID = [(HMDMatterPath *)self eventID];

  v11 = MEMORY[0x277CCACA8];
  endpointID = [(HMDMatterPath *)self endpointID];
  clusterID2 = [(HMDMatterPath *)self clusterID];
  clusterID = clusterID2;
  if (eventID)
  {
    attributeID2 = [(HMDMatterPath *)self eventID];
    [v11 stringWithFormat:@"EP/CL/EVE: %@/%@/%@", endpointID, clusterID, attributeID2];
    goto LABEL_7;
  }

  v13 = [v11 stringWithFormat:@"EP/CL: %@/%@", endpointID, clusterID2];
LABEL_8:

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
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
    v7 = v6;
    if (!v6)
    {
      goto LABEL_12;
    }

    endpointID = [(HMDMatterPath *)v6 endpointID];
    endpointID2 = [(HMDMatterPath *)self endpointID];
    v10 = HMFEqualObjects();

    if (!v10)
    {
      goto LABEL_12;
    }

    clusterID = [(HMDMatterPath *)v7 clusterID];
    clusterID2 = [(HMDMatterPath *)self clusterID];
    v13 = HMFEqualObjects();

    if (!v13)
    {
      goto LABEL_12;
    }

    attributeID = [(HMDMatterPath *)v7 attributeID];
    attributeID2 = [(HMDMatterPath *)self attributeID];
    v16 = HMFEqualObjects();

    if (!v16)
    {
      goto LABEL_12;
    }

    commandID = [(HMDMatterPath *)v7 commandID];
    commandID2 = [(HMDMatterPath *)self commandID];
    v19 = HMFEqualObjects();

    if (!v19)
    {
      goto LABEL_12;
    }

    eventID = [(HMDMatterPath *)v7 eventID];
    eventID2 = [(HMDMatterPath *)self eventID];
    v22 = HMFEqualObjects();

    if (v22)
    {
      accessory = [(HMDMatterPath *)v7 accessory];
      accessory2 = [(HMDMatterPath *)self accessory];
      v25 = HMFEqualObjects();
    }

    else
    {
LABEL_12:
      v25 = 0;
    }
  }

  return v25;
}

- (NSNumber)eventID
{
  eventPath = [(HMDMatterPath *)self eventPath];
  event = [eventPath event];

  return event;
}

- (NSNumber)commandID
{
  commandPath = [(HMDMatterPath *)self commandPath];
  command = [commandPath command];

  return command;
}

- (NSNumber)attributeID
{
  attributePath = [(HMDMatterPath *)self attributePath];
  attribute = [attributePath attribute];

  return attribute;
}

- (NSNumber)clusterID
{
  mtrPath = [(HMDMatterPath *)self mtrPath];
  cluster = [mtrPath cluster];

  return cluster;
}

- (NSNumber)endpointID
{
  mtrPath = [(HMDMatterPath *)self mtrPath];
  endpoint = [mtrPath endpoint];

  return endpoint;
}

- (BOOL)isValid
{
  endpointID = [(HMDMatterPath *)self endpointID];
  if (endpointID)
  {
    clusterID = [(HMDMatterPath *)self clusterID];
    if (clusterID)
    {
      attributeID = [(HMDMatterPath *)self attributeID];
      if (attributeID)
      {
        v6 = 1;
      }

      else
      {
        commandID = [(HMDMatterPath *)self commandID];
        if (commandID)
        {
          v6 = 1;
        }

        else
        {
          eventID = [(HMDMatterPath *)self eventID];
          v6 = eventID != 0;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mtrPath
{
  attributePath = [(HMDMatterPath *)self attributePath];
  v4 = attributePath;
  if (attributePath)
  {
    v5 = attributePath;
  }

  else
  {
    commandPath = [(HMDMatterPath *)self commandPath];
    v7 = commandPath;
    if (commandPath)
    {
      eventPath = commandPath;
    }

    else
    {
      eventPath = [(HMDMatterPath *)self eventPath];
    }

    v5 = eventPath;
  }

  return v5;
}

- (HMDMatterPath)initWithPathModel:(id)model accessory:(id)accessory
{
  modelCopy = model;
  accessoryCopy = accessory;
  endpointID = [modelCopy endpointID];

  if (!endpointID)
  {
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  clusterID = [modelCopy clusterID];

  if (!clusterID)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v10 = accessoryCopy;
  v11 = [v10 conformsToProtocol:&unk_283F010C8];

  if (v10 && (v11 & 1) != 0)
  {
    attributeID = [modelCopy attributeID];

    if (attributeID)
    {
      v13 = MEMORY[0x277CD51C0];
      endpointID2 = [modelCopy endpointID];
      clusterID2 = [modelCopy clusterID];
      attributeID2 = [modelCopy attributeID];
      v17 = [v13 attributePathWithEndpointID:endpointID2 clusterID:clusterID2 attributeID:attributeID2];
    }

    else
    {
      commandID = [modelCopy commandID];

      if (commandID)
      {
        v19 = MEMORY[0x277CD52F0];
        endpointID2 = [modelCopy endpointID];
        clusterID2 = [modelCopy clusterID];
        attributeID2 = [modelCopy commandID];
        v17 = [v19 commandPathWithEndpointID:endpointID2 clusterID:clusterID2 commandID:attributeID2];
      }

      else
      {
        eventID = [modelCopy eventID];

        if (!eventID)
        {
          v26 = MEMORY[0x277CD5290];
          endpointID2 = [modelCopy endpointID];
          clusterID2 = [modelCopy clusterID];
          v22 = [v26 clusterPathWithEndpointID:endpointID2 clusterID:clusterID2];
          goto LABEL_12;
        }

        v21 = MEMORY[0x277CD5408];
        endpointID2 = [modelCopy endpointID];
        clusterID2 = [modelCopy clusterID];
        attributeID2 = [modelCopy eventID];
        v17 = [v21 eventPathWithEndpointID:endpointID2 clusterID:clusterID2 eventID:attributeID2];
      }
    }

    v22 = v17;

LABEL_12:
    uuid = [modelCopy uuid];
    v24 = [(HMDMatterPath *)self initWithUUID:uuid mtrPath:v22 accessory:v10];

    return v24;
  }

LABEL_16:
  v27 = _HMFPreconditionFailure();
  return [(HMDMatterPath *)v27 initWithMTRPath:v28 accessory:v29, v30];
}

- (HMDMatterPath)initWithMTRPath:(id)path accessory:(id)accessory
{
  v35[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = pathCopy;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v34 = v9;
    v10 = pathCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v33 = v12;

    v13 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = MEMORY[0x277CCACA8];
    endpoint = [v13 endpoint];
    cluster = [v13 cluster];
    attribute = [v9 attribute];
    [v12 command];
    v20 = v32 = self;
    event = [v15 event];
    v22 = [v16 stringWithFormat:@"endpointID=%@ clusterID=%@ attributeID=%@ commandID=%@ eventID=%@", endpoint, cluster, attribute, v20, event];

    v23 = MEMORY[0x277CCAD78];
    uuid = [accessoryCopy uuid];
    v35[0] = v22;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v26 = [v23 hm_deriveUUIDFromBaseUUID:uuid withSalts:v25];
    v27 = [(HMDMatterPath *)v32 initWithUUID:v26 mtrPath:v13 accessory:accessoryCopy];

    v28 = v27;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v28 = [(HMDMatterPath *)self initWithUUID:uUID mtrPath:pathCopy accessory:0];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (HMDMatterPath)initWithUUID:(id)d mtrPath:(id)path accessory:(id)accessory
{
  dCopy = d;
  pathCopy = path;
  accessoryCopy = accessory;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v12 = accessoryCopy;
  endpoint = [pathCopy endpoint];

  if (!endpoint)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  cluster = [pathCopy cluster];

  if (!cluster)
  {
LABEL_18:
    v30 = _HMFPreconditionFailure();
    return +[(HMDMatterPath *)v30];
  }

  v32.receiver = self;
  v32.super_class = HMDMatterPath;
  v15 = [(HMDMatterPath *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeWeak(&v16->_accessory, v12);
    v17 = pathCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    attributePath = v16->_attributePath;
    v16->_attributePath = v19;

    v21 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    commandPath = v16->_commandPath;
    v16->_commandPath = v23;

    v25 = v21;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    eventPath = v16->_eventPath;
    v16->_eventPath = v27;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_160424 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_160424, &__block_literal_global_160425);
  }

  v3 = logCategory__hmf_once_v10_160426;

  return v3;
}

void __28__HMDMatterPath_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_160426;
  logCategory__hmf_once_v10_160426 = v1;
}

+ (HMDMatterPath)PathWithEventID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory
{
  v9 = MEMORY[0x277CD5408];
  accessoryCopy = accessory;
  v11 = [v9 eventPathWithEndpointID:iD clusterID:clusterID eventID:d];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:accessoryCopy];

  return v12;
}

+ (HMDMatterPath)PathWithCommandID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory
{
  v9 = MEMORY[0x277CD52F0];
  accessoryCopy = accessory;
  v11 = [v9 commandPathWithEndpointID:iD clusterID:clusterID commandID:d];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:accessoryCopy];

  return v12;
}

+ (HMDMatterPath)PathWithAttributeID:(id)d endpointID:(id)iD clusterID:(id)clusterID accessory:(id)accessory
{
  v9 = MEMORY[0x277CD51C0];
  accessoryCopy = accessory;
  v11 = [v9 attributePathWithEndpointID:iD clusterID:clusterID attributeID:d];
  v12 = [HMDMatterPath PathWithMTRPath:v11 accessory:accessoryCopy];

  return v12;
}

+ (HMDMatterPath)PathWithMTRPath:(id)path accessory:(id)accessory
{
  accessoryCopy = accessory;
  pathCopy = path;
  v7 = [[HMDMatterPath alloc] initWithMTRPath:pathCopy accessory:accessoryCopy];

  return v7;
}

@end