@interface IRCandidateDO
+ (IRCandidateDO)candidateDOWithLastSeenDate:(id)date lastUsedDate:(id)usedDate firstSeenDate:(id)seenDate candidateIdentifier:(id)identifier nodes:(id)nodes;
+ (id)candidateDOFromCandidate:(id)candidate;
+ (id)candidateForIdentifier:(id)identifier within:(id)within;
+ (id)candidateFromCandidateDO:(id)o;
+ (id)mediaRemoteSpeakerCandidate;
- (BOOL)containsAirPlayOrUnknownAVODTarget;
- (BOOL)containsAirplayTarget;
- (BOOL)containsUnknownAVODTarget;
- (BOOL)isBrokeredDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCandidateDO:(id)o;
- (BOOL)isFirstPartyDevice;
- (BOOL)isMac;
- (BOOL)isMediaRemoteLocal;
- (BOOL)isSameICloudWithSystemState:(id)state;
- (BOOL)isSameWiFi;
- (IRCandidateDO)initWithCoder:(id)coder;
- (IRCandidateDO)initWithLastSeenDate:(id)date lastUsedDate:(id)usedDate firstSeenDate:(id)seenDate candidateIdentifier:(id)identifier nodes:(id)nodes;
- (id)copyWithReplacementCandidateIdentifier:(id)identifier;
- (id)copyWithReplacementFirstSeenDate:(id)date;
- (id)copyWithReplacementLastSeenDate:(id)date;
- (id)copyWithReplacementLastUsedDate:(id)date;
- (id)copyWithReplacementNodes:(id)nodes;
- (id)description;
- (id)exportAsDictionary;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRCandidateDO

- (BOOL)containsAirPlayOrUnknownAVODTarget
{
  if ([(IRCandidateDO *)self containsAirplayTarget])
  {
    return 1;
  }

  return [(IRCandidateDO *)self containsUnknownAVODTarget];
}

- (BOOL)containsAirplayTarget
{
  v3 = +[IRPreferences shared];
  overrideIsAirplayForCandidateIDArray = [v3 overrideIsAirplayForCandidateIDArray];
  candidateIdentifier = [(IRCandidateDO *)self candidateIdentifier];
  v6 = [overrideIsAirplayForCandidateIDArray containsObject:candidateIdentifier];

  if (v6)
  {
    return 1;
  }

  nodes = [(IRCandidateDO *)self nodes];
  v9 = [nodes firstWhere:&__block_literal_global_57];
  v7 = v9 != 0;

  return v7;
}

- (BOOL)containsUnknownAVODTarget
{
  nodes = [(IRCandidateDO *)self nodes];
  v4 = [nodes count];

  if (!v4)
  {
    return 1;
  }

  nodes2 = [(IRCandidateDO *)self nodes];
  v6 = [nodes2 firstWhere:&__block_literal_global_59];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)isBrokeredDevice
{
  v3 = +[IRPreferences shared];
  loiSameSpaceOverrideBrokerForCandidateIDArray = [v3 loiSameSpaceOverrideBrokerForCandidateIDArray];
  candidateIdentifier = [(IRCandidateDO *)self candidateIdentifier];
  v6 = [loiSameSpaceOverrideBrokerForCandidateIDArray containsObject:candidateIdentifier];

  if (v6)
  {
    return 1;
  }

  nodes = [(IRCandidateDO *)self nodes];
  v9 = [nodes firstWhere:&__block_literal_global_55];
  v7 = v9 != 0;

  return v7;
}

- (BOOL)isMac
{
  nodes = [(IRCandidateDO *)self nodes];
  if ([nodes count] == 1)
  {
    nodes2 = [(IRCandidateDO *)self nodes];
    anyObject = [nodes2 anyObject];
    avOutputDevice = [anyObject avOutputDevice];
    if (avOutputDevice)
    {
      nodes3 = [(IRCandidateDO *)self nodes];
      anyObject2 = [nodes3 anyObject];
      avOutputDevice2 = [anyObject2 avOutputDevice];
      if ([avOutputDevice2 deviceType])
      {
        v10 = 0;
      }

      else
      {
        nodes4 = [(IRCandidateDO *)self nodes];
        anyObject3 = [nodes4 anyObject];
        avOutputDevice3 = [anyObject3 avOutputDevice];
        v10 = [avOutputDevice3 deviceSubType] == 18;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isSameWiFi
{
  nodes = [(IRCandidateDO *)self nodes];
  v3 = [nodes firstWhere:&__block_literal_global_0];
  v4 = v3 != 0;

  return v4;
}

void __33__IRCandidateDO_Extensions__name__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 computeName];
  v4 = [v3 stringByAppendingFormat:@"%@|", v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __50__IRCandidateDO_Extensions__containsAirplayTarget__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceTypeAndSubType];
  v3 = [v2 first];
  v4 = [v3 unsignedIntegerValue];

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

uint64_t __39__IRCandidateDO_Extensions__isSameWiFi__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 avOutputDevice];
  if ([v3 hasAirplayProperties])
  {
    v4 = [v2 avOutputDevice];
    if ([v4 hasAirplayProperties])
    {
      v5 = [v2 avOutputDevice];
      v6 = [v5 discoveredOverInfra];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)name
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = &stru_286755D18;
  nodes = [(IRCandidateDO *)self nodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__IRCandidateDO_Extensions__name__block_invoke;
  v7[3] = &unk_2797E0CF8;
  v7[4] = &v8;
  [nodes enumerateObjectsUsingBlock:v7];

  if ([v9[5] hasSuffix:@"|"])
  {
    v3 = [v9[5] substringToIndex:{objc_msgSend(v9[5], "length") - 1}];
    v4 = v9[5];
    v9[5] = v3;
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (id)candidateDOFromCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = objc_opt_new();
  nodes = [candidateCopy nodes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__IRCandidateDO_Extensions__candidateDOFromCandidate___block_invoke;
  v19[3] = &unk_2797E0C80;
  v6 = v4;
  v20 = v6;
  [nodes enumerateObjectsUsingBlock:v19];

  avOutpuDeviceIdentifier = [candidateCopy avOutpuDeviceIdentifier];
  if (avOutpuDeviceIdentifier || ([candidateCopy rapportIdentifier], (avOutpuDeviceIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v8 = [IRNodeDO alloc];
    avOutpuDeviceIdentifier2 = [candidateCopy avOutpuDeviceIdentifier];
    rapportIdentifier = [candidateCopy rapportIdentifier];
    idsIdentifier = [candidateCopy idsIdentifier];
    v12 = [(IRNodeDO *)v8 initWithAvOutpuDeviceIdentifier:avOutpuDeviceIdentifier2 rapportIdentifier:rapportIdentifier idsIdentifier:idsIdentifier avOutputDevice:0 rapportDevice:0 isLocal:0];
    [v6 addObject:v12];

    goto LABEL_5;
  }

  idsIdentifier2 = [candidateCopy idsIdentifier];

  if (idsIdentifier2)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = [MEMORY[0x277CBEAA8] now];
  candidateIdentifier = [candidateCopy candidateIdentifier];
  v15 = [v6 copy];
  v16 = [IRCandidateDO candidateDOWithLastSeenDate:v13 lastUsedDate:0 firstSeenDate:0 candidateIdentifier:candidateIdentifier nodes:v15];

  return v16;
}

void __54__IRCandidateDO_Extensions__candidateDOFromCandidate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRNodeDO nodeDOFromNode:a2];
  [v2 addObject:v3];
}

+ (id)candidateFromCandidateDO:(id)o
{
  v3 = MEMORY[0x277D21290];
  oCopy = o;
  v5 = [v3 alloc];
  candidateIdentifier = [oCopy candidateIdentifier];
  v7 = [v5 initWithCandidateIdentifier:candidateIdentifier];

  v8 = objc_opt_new();
  nodes = [oCopy nodes];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IRCandidateDO_Extensions__candidateFromCandidateDO___block_invoke;
  v13[3] = &unk_2797E0CA8;
  v14 = v8;
  v10 = v8;
  [nodes enumerateObjectsUsingBlock:v13];

  v11 = [v10 copy];
  [v7 updateNodes:v11];

  return v7;
}

void __54__IRCandidateDO_Extensions__candidateFromCandidateDO___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRNodeDO nodeFromNodeDO:a2];
  [v2 addObject:v3];
}

+ (id)candidateForIdentifier:(id)identifier within:(id)within
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__IRCandidateDO_Extensions__candidateForIdentifier_within___block_invoke;
  v9[3] = &unk_2797E0CD0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [within firstWhere:v9];

  return v7;
}

uint64_t __59__IRCandidateDO_Extensions__candidateForIdentifier_within___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)mediaRemoteSpeakerCandidate
{
  v2 = [IRAVOutputDeviceDO aVOutputDeviceDOWithDeviceID:@"Speaker" modelID:0 deviceName:@"Speaker" hasAirplayProperties:0 discoveredOverInfra:0 discoveredWithBroker:0 deviceType:3 deviceSubType:1];
  v3 = [IRNodeDO nodeDOWithAvOutpuDeviceIdentifier:@"Speaker" rapportIdentifier:0 idsIdentifier:0 avOutputDevice:v2 rapportDevice:0 isLocal:1];
  date = [MEMORY[0x277CBEAA8] date];
  date2 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v7 = [IRCandidateDO candidateDOWithLastSeenDate:date lastUsedDate:0 firstSeenDate:date2 candidateIdentifier:@"Speaker" nodes:v6];

  return v7;
}

- (id)exportAsDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  lastSeenDate = [(IRCandidateDO *)self lastSeenDate];
  v7 = [v4 stringFromDate:lastSeenDate];
  [v3 setObject:v7 forKeyedSubscript:@"lastSeenDate"];

  candidateIdentifier = [(IRCandidateDO *)self candidateIdentifier];
  [v3 setObject:candidateIdentifier forKeyedSubscript:@"candidateIdentifier"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  nodes = [(IRCandidateDO *)self nodes];
  v10 = [nodes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(nodes);
        }

        exportAsDictionary = [*(*(&v17 + 1) + 8 * i) exportAsDictionary];
        [v5 addObject:exportAsDictionary];
      }

      v11 = [nodes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [v3 setObject:v5 forKeyedSubscript:@"nodes"];
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __45__IRCandidateDO_Extensions__isBrokeredDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 avOutputDevice];
  v3 = [v2 discoveredWithBroker];

  return v3;
}

- (BOOL)isSameICloudWithSystemState:(id)state
{
  stateCopy = state;
  nodes = [(IRCandidateDO *)self nodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__IRCandidateDO_Extensions__isSameICloudWithSystemState___block_invoke;
  v10[3] = &unk_2797E0D40;
  v11 = stateCopy;
  v6 = stateCopy;
  v7 = [nodes firstWhere:v10];
  v8 = v7 != 0;

  return v8;
}

uint64_t __57__IRCandidateDO_Extensions__isSameICloudWithSystemState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rapportDevice];
  v4 = [v3 iCloudId];
  v5 = [*(a1 + 32) iCloudId];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (BOOL)isFirstPartyDevice
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  nodes = [(IRCandidateDO *)self nodes];
  v3 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(nodes);
        }

        avOutputDevice = [*(*(&v12 + 1) + 8 * i) avOutputDevice];
        v8 = avOutputDevice;
        if (avOutputDevice && ([avOutputDevice deviceSubType] == 13 || objc_msgSend(v8, "deviceSubType") == 18 || objc_msgSend(v8, "deviceSubType") == 19 || objc_msgSend(v8, "deviceSubType") == 12))
        {

          v9 = 1;
          goto LABEL_16;
        }
      }

      v4 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL __54__IRCandidateDO_Extensions__containsUnknownAVODTarget__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 deviceTypeAndSubType];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isMediaRemoteLocal
{
  candidateIdentifier = [(IRCandidateDO *)self candidateIdentifier];
  v4 = [candidateIdentifier isEqual:@"Speaker"];

  if (v4)
  {
    return 1;
  }

  nodes = [(IRCandidateDO *)self nodes];
  v7 = [nodes count];

  if (v7 != 1)
  {
    return 0;
  }

  nodes2 = [(IRCandidateDO *)self nodes];
  anyObject = [nodes2 anyObject];
  deviceTypeAndSubType = [anyObject deviceTypeAndSubType];

  first = [deviceTypeAndSubType first];
  unsignedIntegerValue = [first unsignedIntegerValue];

  if (deviceTypeAndSubType)
  {
    v13 = unsignedIntegerValue == 3;
  }

  else
  {
    v13 = 0;
  }

  v5 = v13;

  return v5;
}

- (IRCandidateDO)initWithLastSeenDate:(id)date lastUsedDate:(id)usedDate firstSeenDate:(id)seenDate candidateIdentifier:(id)identifier nodes:(id)nodes
{
  dateCopy = date;
  usedDateCopy = usedDate;
  seenDateCopy = seenDate;
  identifierCopy = identifier;
  nodesCopy = nodes;
  v21.receiver = self;
  v21.super_class = IRCandidateDO;
  v17 = [(IRCandidateDO *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_lastSeenDate, date);
    objc_storeStrong(&v18->_lastUsedDate, usedDate);
    objc_storeStrong(&v18->_firstSeenDate, seenDate);
    objc_storeStrong(&v18->_candidateIdentifier, identifier);
    objc_storeStrong(&v18->_nodes, nodes);
  }

  return v18;
}

+ (IRCandidateDO)candidateDOWithLastSeenDate:(id)date lastUsedDate:(id)usedDate firstSeenDate:(id)seenDate candidateIdentifier:(id)identifier nodes:(id)nodes
{
  nodesCopy = nodes;
  identifierCopy = identifier;
  seenDateCopy = seenDate;
  usedDateCopy = usedDate;
  dateCopy = date;
  v17 = [[self alloc] initWithLastSeenDate:dateCopy lastUsedDate:usedDateCopy firstSeenDate:seenDateCopy candidateIdentifier:identifierCopy nodes:nodesCopy];

  return v17;
}

- (id)copyWithReplacementLastSeenDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:dateCopy lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementLastUsedDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:dateCopy firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementFirstSeenDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:dateCopy candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:identifierCopy nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:nodesCopy];

  return v5;
}

- (BOOL)isEqualToCandidateDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_candidateIdentifier == 0;
  candidateIdentifier = [oCopy candidateIdentifier];
  v8 = candidateIdentifier != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    candidateIdentifier2 = [v5 candidateIdentifier];
    v11 = [(NSString *)candidateIdentifier isEqual:candidateIdentifier2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_nodes == 0;
  nodes = [v5 nodes];
  v14 = nodes != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    nodes = self->_nodes;
    if (nodes)
    {
      nodes2 = [v5 nodes];
      v17 = [(NSSet *)nodes isEqual:nodes2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRCandidateDO *)self isEqualToCandidateDO:v5];
  }

  return v6;
}

- (IRCandidateDO)initWithCoder:(id)coder
{
  v45[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSeenDate"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRCandidateDO key lastSeenDate (expected %@, decoded %@)", v7, v9, 0];
      v44 = *MEMORY[0x277CCA450];
      v45[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRCandidateDOOCNTErrorDomain" code:3 userInfo:v11];
      [coderCopy failWithError:v12];
LABEL_15:

LABEL_16:
      selfCopy = 0;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

LABEL_6:
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRCandidateDO key lastUsedDate (expected %@, decoded %@)", v9, v10, 0];
        v42 = *MEMORY[0x277CCA450];
        v43 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRCandidateDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v17];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstSeenDate"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRCandidateDO key firstSeenDate (expected %@, decoded %@)", v10, v11, 0];
        v40 = *MEMORY[0x277CCA450];
        v41 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRCandidateDOOCNTErrorDomain" code:3 userInfo:v17];
        [coderCopy failWithError:v21];

        goto LABEL_14;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
        goto LABEL_18;
      }
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateIdentifier"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = objc_opt_class();
        v37 = NSStringFromClass(v25);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRCandidateDO key candidateIdentifier (expected %@, decoded %@)", v37, v27, 0];
        v38 = *MEMORY[0x277CCA450];
        v39 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v30 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRCandidateDOOCNTErrorDomain" code:3 userInfo:v29];
        [coderCopy failWithError:v30];

        goto LABEL_16;
      }
    }

    else
    {
      error3 = [coderCopy error];

      if (error3)
      {
        goto LABEL_16;
      }
    }

    v32 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = objc_opt_class();
    v34 = [v32 initWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"nodes"];

    if (v35 || ([coderCopy error], v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
    {
      self = [(IRCandidateDO *)self initWithLastSeenDate:v5 lastUsedDate:v7 firstSeenDate:v9 candidateIdentifier:v10 nodes:v35];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    goto LABEL_17;
  }

  error4 = [coderCopy error];

  if (!error4)
  {
    goto LABEL_6;
  }

  selfCopy = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lastSeenDate = self->_lastSeenDate;
  v10 = coderCopy;
  if (lastSeenDate)
  {
    [coderCopy encodeObject:lastSeenDate forKey:@"lastSeenDate"];
    coderCopy = v10;
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [v10 encodeObject:lastUsedDate forKey:@"lastUsedDate"];
    coderCopy = v10;
  }

  firstSeenDate = self->_firstSeenDate;
  if (firstSeenDate)
  {
    [v10 encodeObject:firstSeenDate forKey:@"firstSeenDate"];
    coderCopy = v10;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v10 encodeObject:candidateIdentifier forKey:@"candidateIdentifier"];
    coderCopy = v10;
  }

  nodes = self->_nodes;
  if (nodes)
  {
    [v10 encodeObject:nodes forKey:@"nodes"];
    coderCopy = v10;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_lastSeenDate;
  v5 = [v3 initWithFormat:@"<IRCandidateDO | lastSeenDate:%@ lastUsedDate:%@ firstSeenDate:%@ candidateIdentifier:%@ nodes:%@>", self->_lastSeenDate, self->_lastUsedDate, self->_firstSeenDate, self->_candidateIdentifier, self->_nodes];

  return v5;
}

@end