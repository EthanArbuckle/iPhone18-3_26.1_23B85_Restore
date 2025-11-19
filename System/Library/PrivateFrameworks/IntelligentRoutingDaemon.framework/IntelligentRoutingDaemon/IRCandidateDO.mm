@interface IRCandidateDO
+ (IRCandidateDO)candidateDOWithLastSeenDate:(id)a3 lastUsedDate:(id)a4 firstSeenDate:(id)a5 candidateIdentifier:(id)a6 nodes:(id)a7;
+ (id)candidateDOFromCandidate:(id)a3;
+ (id)candidateForIdentifier:(id)a3 within:(id)a4;
+ (id)candidateFromCandidateDO:(id)a3;
+ (id)mediaRemoteSpeakerCandidate;
- (BOOL)containsAirPlayOrUnknownAVODTarget;
- (BOOL)containsAirplayTarget;
- (BOOL)containsUnknownAVODTarget;
- (BOOL)isBrokeredDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCandidateDO:(id)a3;
- (BOOL)isFirstPartyDevice;
- (BOOL)isMac;
- (BOOL)isMediaRemoteLocal;
- (BOOL)isSameICloudWithSystemState:(id)a3;
- (BOOL)isSameWiFi;
- (IRCandidateDO)initWithCoder:(id)a3;
- (IRCandidateDO)initWithLastSeenDate:(id)a3 lastUsedDate:(id)a4 firstSeenDate:(id)a5 candidateIdentifier:(id)a6 nodes:(id)a7;
- (id)copyWithReplacementCandidateIdentifier:(id)a3;
- (id)copyWithReplacementFirstSeenDate:(id)a3;
- (id)copyWithReplacementLastSeenDate:(id)a3;
- (id)copyWithReplacementLastUsedDate:(id)a3;
- (id)copyWithReplacementNodes:(id)a3;
- (id)description;
- (id)exportAsDictionary;
- (id)name;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [v3 overrideIsAirplayForCandidateIDArray];
  v5 = [(IRCandidateDO *)self candidateIdentifier];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    return 1;
  }

  v8 = [(IRCandidateDO *)self nodes];
  v9 = [v8 firstWhere:&__block_literal_global_57];
  v7 = v9 != 0;

  return v7;
}

- (BOOL)containsUnknownAVODTarget
{
  v3 = [(IRCandidateDO *)self nodes];
  v4 = [v3 count];

  if (!v4)
  {
    return 1;
  }

  v5 = [(IRCandidateDO *)self nodes];
  v6 = [v5 firstWhere:&__block_literal_global_59];
  v7 = v6 != 0;

  return v7;
}

- (BOOL)isBrokeredDevice
{
  v3 = +[IRPreferences shared];
  v4 = [v3 loiSameSpaceOverrideBrokerForCandidateIDArray];
  v5 = [(IRCandidateDO *)self candidateIdentifier];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    return 1;
  }

  v8 = [(IRCandidateDO *)self nodes];
  v9 = [v8 firstWhere:&__block_literal_global_55];
  v7 = v9 != 0;

  return v7;
}

- (BOOL)isMac
{
  v3 = [(IRCandidateDO *)self nodes];
  if ([v3 count] == 1)
  {
    v4 = [(IRCandidateDO *)self nodes];
    v5 = [v4 anyObject];
    v6 = [v5 avOutputDevice];
    if (v6)
    {
      v7 = [(IRCandidateDO *)self nodes];
      v8 = [v7 anyObject];
      v9 = [v8 avOutputDevice];
      if ([v9 deviceType])
      {
        v10 = 0;
      }

      else
      {
        v14 = [(IRCandidateDO *)self nodes];
        v11 = [v14 anyObject];
        v12 = [v11 avOutputDevice];
        v10 = [v12 deviceSubType] == 18;
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
  v2 = [(IRCandidateDO *)self nodes];
  v3 = [v2 firstWhere:&__block_literal_global_0];
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
  v2 = [(IRCandidateDO *)self nodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__IRCandidateDO_Extensions__name__block_invoke;
  v7[3] = &unk_2797E0CF8;
  v7[4] = &v8;
  [v2 enumerateObjectsUsingBlock:v7];

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

+ (id)candidateDOFromCandidate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 nodes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__IRCandidateDO_Extensions__candidateDOFromCandidate___block_invoke;
  v19[3] = &unk_2797E0C80;
  v6 = v4;
  v20 = v6;
  [v5 enumerateObjectsUsingBlock:v19];

  v7 = [v3 avOutpuDeviceIdentifier];
  if (v7 || ([v3 rapportIdentifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v8 = [IRNodeDO alloc];
    v9 = [v3 avOutpuDeviceIdentifier];
    v10 = [v3 rapportIdentifier];
    v11 = [v3 idsIdentifier];
    v12 = [(IRNodeDO *)v8 initWithAvOutpuDeviceIdentifier:v9 rapportIdentifier:v10 idsIdentifier:v11 avOutputDevice:0 rapportDevice:0 isLocal:0];
    [v6 addObject:v12];

    goto LABEL_5;
  }

  v18 = [v3 idsIdentifier];

  if (v18)
  {
    goto LABEL_4;
  }

LABEL_5:
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [v3 candidateIdentifier];
  v15 = [v6 copy];
  v16 = [IRCandidateDO candidateDOWithLastSeenDate:v13 lastUsedDate:0 firstSeenDate:0 candidateIdentifier:v14 nodes:v15];

  return v16;
}

void __54__IRCandidateDO_Extensions__candidateDOFromCandidate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRNodeDO nodeDOFromNode:a2];
  [v2 addObject:v3];
}

+ (id)candidateFromCandidateDO:(id)a3
{
  v3 = MEMORY[0x277D21290];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 candidateIdentifier];
  v7 = [v5 initWithCandidateIdentifier:v6];

  v8 = objc_opt_new();
  v9 = [v4 nodes];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IRCandidateDO_Extensions__candidateFromCandidateDO___block_invoke;
  v13[3] = &unk_2797E0CA8;
  v14 = v8;
  v10 = v8;
  [v9 enumerateObjectsUsingBlock:v13];

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

+ (id)candidateForIdentifier:(id)a3 within:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__IRCandidateDO_Extensions__candidateForIdentifier_within___block_invoke;
  v9[3] = &unk_2797E0CD0;
  v10 = v5;
  v6 = v5;
  v7 = [a4 firstWhere:v9];

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
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v7 = [IRCandidateDO candidateDOWithLastSeenDate:v4 lastUsedDate:0 firstSeenDate:v5 candidateIdentifier:@"Speaker" nodes:v6];

  return v7;
}

- (id)exportAsDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(IRCandidateDO *)self lastSeenDate];
  v7 = [v4 stringFromDate:v6];
  [v3 setObject:v7 forKeyedSubscript:@"lastSeenDate"];

  v8 = [(IRCandidateDO *)self candidateIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"candidateIdentifier"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(IRCandidateDO *)self nodes];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) exportAsDictionary];
        [v5 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)isSameICloudWithSystemState:(id)a3
{
  v4 = a3;
  v5 = [(IRCandidateDO *)self nodes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__IRCandidateDO_Extensions__isSameICloudWithSystemState___block_invoke;
  v10[3] = &unk_2797E0D40;
  v11 = v4;
  v6 = v4;
  v7 = [v5 firstWhere:v10];
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
  v2 = [(IRCandidateDO *)self nodes];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) avOutputDevice];
        v8 = v7;
        if (v7 && ([v7 deviceSubType] == 13 || objc_msgSend(v8, "deviceSubType") == 18 || objc_msgSend(v8, "deviceSubType") == 19 || objc_msgSend(v8, "deviceSubType") == 12))
        {

          v9 = 1;
          goto LABEL_16;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(IRCandidateDO *)self candidateIdentifier];
  v4 = [v3 isEqual:@"Speaker"];

  if (v4)
  {
    return 1;
  }

  v6 = [(IRCandidateDO *)self nodes];
  v7 = [v6 count];

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [(IRCandidateDO *)self nodes];
  v9 = [v8 anyObject];
  v10 = [v9 deviceTypeAndSubType];

  v11 = [v10 first];
  v12 = [v11 unsignedIntegerValue];

  if (v10)
  {
    v13 = v12 == 3;
  }

  else
  {
    v13 = 0;
  }

  v5 = v13;

  return v5;
}

- (IRCandidateDO)initWithLastSeenDate:(id)a3 lastUsedDate:(id)a4 firstSeenDate:(id)a5 candidateIdentifier:(id)a6 nodes:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IRCandidateDO;
  v17 = [(IRCandidateDO *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_lastSeenDate, a3);
    objc_storeStrong(&v18->_lastUsedDate, a4);
    objc_storeStrong(&v18->_firstSeenDate, a5);
    objc_storeStrong(&v18->_candidateIdentifier, a6);
    objc_storeStrong(&v18->_nodes, a7);
  }

  return v18;
}

+ (IRCandidateDO)candidateDOWithLastSeenDate:(id)a3 lastUsedDate:(id)a4 firstSeenDate:(id)a5 candidateIdentifier:(id)a6 nodes:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithLastSeenDate:v16 lastUsedDate:v15 firstSeenDate:v14 candidateIdentifier:v13 nodes:v12];

  return v17;
}

- (id)copyWithReplacementLastSeenDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:v4 lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementLastUsedDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:v4 firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementFirstSeenDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:v4 candidateIdentifier:self->_candidateIdentifier nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementCandidateIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:v4 nodes:self->_nodes];

  return v5;
}

- (id)copyWithReplacementNodes:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate lastUsedDate:self->_lastUsedDate firstSeenDate:self->_firstSeenDate candidateIdentifier:self->_candidateIdentifier nodes:v4];

  return v5;
}

- (BOOL)isEqualToCandidateDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_candidateIdentifier == 0;
  v7 = [v4 candidateIdentifier];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    v10 = [v5 candidateIdentifier];
    v11 = [(NSString *)candidateIdentifier isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_nodes == 0;
  v13 = [v5 nodes];
  v14 = v13 != 0;

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
      v16 = [v5 nodes];
      v17 = [(NSSet *)nodes isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRCandidateDO *)self isEqualToCandidateDO:v5];
  }

  return v6;
}

- (IRCandidateDO)initWithCoder:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeenDate"];
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
      [v4 failWithError:v12];
LABEL_15:

LABEL_16:
      v14 = 0;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
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
        [v4 failWithError:v17];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        v14 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstSeenDate"];
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
        [v4 failWithError:v21];

        goto LABEL_14;
      }
    }

    else
    {
      v24 = [v4 error];

      if (v24)
      {
        v14 = 0;
        goto LABEL_18;
      }
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateIdentifier"];
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
        [v4 failWithError:v30];

        goto LABEL_16;
      }
    }

    else
    {
      v31 = [v4 error];

      if (v31)
      {
        goto LABEL_16;
      }
    }

    v32 = objc_alloc(MEMORY[0x277CBEB98]);
    v33 = objc_opt_class();
    v34 = [v32 initWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"nodes"];

    if (v35 || ([v4 error], v36 = objc_claimAutoreleasedReturnValue(), v36, !v36))
    {
      self = [(IRCandidateDO *)self initWithLastSeenDate:v5 lastUsedDate:v7 firstSeenDate:v9 candidateIdentifier:v10 nodes:v35];
      v14 = self;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_17;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  lastSeenDate = self->_lastSeenDate;
  v10 = v4;
  if (lastSeenDate)
  {
    [v4 encodeObject:lastSeenDate forKey:@"lastSeenDate"];
    v4 = v10;
  }

  lastUsedDate = self->_lastUsedDate;
  if (lastUsedDate)
  {
    [v10 encodeObject:lastUsedDate forKey:@"lastUsedDate"];
    v4 = v10;
  }

  firstSeenDate = self->_firstSeenDate;
  if (firstSeenDate)
  {
    [v10 encodeObject:firstSeenDate forKey:@"firstSeenDate"];
    v4 = v10;
  }

  candidateIdentifier = self->_candidateIdentifier;
  if (candidateIdentifier)
  {
    [v10 encodeObject:candidateIdentifier forKey:@"candidateIdentifier"];
    v4 = v10;
  }

  nodes = self->_nodes;
  if (nodes)
  {
    [v10 encodeObject:nodes forKey:@"nodes"];
    v4 = v10;
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