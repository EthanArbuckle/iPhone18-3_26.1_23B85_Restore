@interface HDCloudSyncCloudState
- (BOOL)isEqual:(id)equal;
- (HDCloudSyncCloudState)cloudStateWithTargets:(id)targets;
- (HDCloudSyncCloudState)init;
- (HDCloudSyncCloudState)initWithZones:(id)zones targets:(id)targets;
- (HDCloudSyncCloudState)initWithZonesByIdentifier:(id)identifier targets:(id)targets;
- (NSSet)pullZones;
- (NSSet)seizedZones;
- (id)_storeDescriptionForTarget:(uint64_t)target;
- (id)cloudStateByAddingZone:(id)zone;
- (id)cloudStateByAddingZones:(id)zones;
- (id)cloudStateByRemovingZones:(id)zones;
- (id)cloudStateByReplacingTargets:(id)targets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)detailedDescription;
- (id)masterZoneForContainerID:(id)d;
- (id)unifiedSyncZoneForContainerID:(id)d;
- (id)zoneForRecordID:(id)d containerIdentifier:(id)identifier;
- (id)zonesForContainerID:(id)d;
@end

@implementation HDCloudSyncCloudState

- (HDCloudSyncCloudState)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncCloudState)initWithZones:(id)zones targets:(id)targets
{
  v24 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  targetsCopy = targets;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = zonesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        zoneIdentifier = [v14 zoneIdentifier];
        [v8 setObject:v14 forKeyedSubscript:zoneIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = [(HDCloudSyncCloudState *)self initWithZonesByIdentifier:v8 targets:targetsCopy];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HDCloudSyncCloudState)initWithZonesByIdentifier:(id)identifier targets:(id)targets
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  targetsCopy = targets;
  v32.receiver = self;
  v32.super_class = HDCloudSyncCloudState;
  v8 = [(HDCloudSyncCloudState *)&v32 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    zonesByIdentifier = v8->_zonesByIdentifier;
    v8->_zonesByIdentifier = v9;

    v11 = [targetsCopy copy];
    targets = v8->_targets;
    v8->_targets = v11;

    v8->_minimumSupportedProtocolVersion = 1;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allValues = [identifierCopy allValues];
    v14 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v16 = *v29;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        purpose = [v18 purpose];
        if (purpose == 2)
        {
          storeRecord = [v18 storeRecord];
          primaryPushZone = storeRecord;
          if (storeRecord)
          {
            minimumSupportedProtocolVersion = v8->_minimumSupportedProtocolVersion;
            supportedProtocolVersion = [(HDCloudSyncZone *)storeRecord supportedProtocolVersion];
            if (minimumSupportedProtocolVersion >= supportedProtocolVersion)
            {
              v25 = supportedProtocolVersion;
            }

            else
            {
              v25 = minimumSupportedProtocolVersion;
            }

            v8->_minimumSupportedProtocolVersion = v25;
          }
        }

        else
        {
          if (purpose != 1)
          {
            continue;
          }

          v20 = v18;
          primaryPushZone = v8->_primaryPushZone;
          v8->_primaryPushZone = v20;
        }
      }

      v15 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (!v15)
      {
LABEL_18:

        break;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)cloudStateByAddingZone:(id)zone
{
  v11 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v4 = MEMORY[0x277CBEA60];
  zoneCopy2 = zone;
  v6 = [v4 arrayWithObjects:&zoneCopy count:1];

  v7 = [(HDCloudSyncCloudState *)self cloudStateByAddingZones:v6, zoneCopy, v11];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)cloudStateByAddingZones:(id)zones
{
  v21 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v5 = [(NSDictionary *)self->_zonesByIdentifier mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = zonesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        zoneIdentifier = [v11 zoneIdentifier];
        [v5 setObject:v11 forKeyedSubscript:zoneIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [[HDCloudSyncCloudState alloc] initWithZonesByIdentifier:v5 targets:self->_targets];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)cloudStateByRemovingZones:(id)zones
{
  v4 = [zones hk_mapToSet:&__block_literal_global_303_1];
  v5 = [HDCloudSyncCloudState alloc];
  zonesByIdentifier = self->_zonesByIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HDCloudSyncCloudState_cloudStateByRemovingZones___block_invoke_2;
  v19[3] = &unk_27862CF40;
  v7 = v4;
  v20 = v7;
  v8 = [(NSDictionary *)zonesByIdentifier hk_filter:v19];
  targets = self->_targets;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __51__HDCloudSyncCloudState_cloudStateByRemovingZones___block_invoke_3;
  v17 = &unk_278614BF0;
  v18 = v7;
  v10 = v7;
  v11 = [(NSArray *)targets hk_filter:&v14];
  v12 = [(HDCloudSyncCloudState *)v5 initWithZonesByIdentifier:v8 targets:v11, v14, v15, v16, v17];

  return v12;
}

uint64_t __51__HDCloudSyncCloudState_cloudStateByRemovingZones___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (HDCloudSyncCloudState)cloudStateWithTargets:(id)targets
{
  targetsCopy = targets;
  v5 = [[HDCloudSyncCloudState alloc] initWithZonesByIdentifier:self->_zonesByIdentifier targets:targetsCopy];

  return v5;
}

- (id)cloudStateByReplacingTargets:(id)targets
{
  targetsCopy = targets;
  targets = self->_targets;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HDCloudSyncCloudState_cloudStateByReplacingTargets___block_invoke;
  v11[3] = &unk_278614BF0;
  v12 = targetsCopy;
  v6 = targetsCopy;
  v7 = [(NSArray *)targets hk_filter:v11];
  v8 = [v7 arrayByAddingObjectsFromArray:v6];

  v9 = [[HDCloudSyncCloudState alloc] initWithZonesByIdentifier:self->_zonesByIdentifier targets:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDCloudSyncCloudState allocWithZone:zone];
  zonesByIdentifier = self->_zonesByIdentifier;
  targets = self->_targets;

  return [(HDCloudSyncCloudState *)v4 initWithZonesByIdentifier:zonesByIdentifier targets:targets];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSDictionary *)self->_zonesByIdentifier count];
  v5 = [(NSArray *)self->_targets count];
  pushTargets = [(HDCloudSyncCloudState *)self pushTargets];
  v7 = [pushTargets count];
  pullTargets = [(HDCloudSyncCloudState *)self pullTargets];
  v9 = [v3 stringWithFormat:@"<%ld zones, %ld targets (%ld push, %ld pull)>", v4, v5, v7, objc_msgSend(pullTargets, "count")];

  return v9;
}

- (id)detailedDescription
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\nMinimum supported protocol: %ld\n\n", self, -[HDCloudSyncCloudState minimumSupportedProtocolVersion](self, "minimumSupportedProtocolVersion")];
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v5 = [allValues hk_filter:&__block_literal_global_315_0];

  v32 = v5;
  if ([v5 count])
  {
    [v3 appendFormat:@"Master Records (%ld):\n", objc_msgSend(v5, "count")];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          masterRecord = [*(*(&v41 + 1) + 8 * i) masterRecord];
          v12 = [masterRecord description];
          v13 = [v12 hk_stringIndentedBy:4];
          [v3 appendFormat:@"%@\n\n", v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }
  }

  pushTargets = [(HDCloudSyncCloudState *)self pushTargets];
  [v3 appendFormat:@"Push Targets (%lu):\n", objc_msgSend(pushTargets, "count")];
  if ([pushTargets count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = pushTargets;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [(HDCloudSyncCloudState *)self _storeDescriptionForTarget:?];
          v21 = [v20 hk_stringIndentedBy:4];
          [v3 appendString:v21];

          [v3 appendString:@"\n"];
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v17);
    }
  }

  pullTargets = [(HDCloudSyncCloudState *)self pullTargets];
  [v3 appendFormat:@"\nPull Targets (%lu):\n", objc_msgSend(pullTargets, "count")];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = pullTargets;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [(HDCloudSyncCloudState *)self _storeDescriptionForTarget:?];
        v29 = [v28 hk_stringIndentedBy:4];
        [v3 appendString:v29];

        [v3 appendString:@"\n"];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v25);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_storeDescriptionForTarget:(uint64_t)target
{
  if (target)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = a2;
    storeRecord = [v3 storeRecord];
    storeIdentifier = [storeRecord storeIdentifier];
    uUIDString = [storeIdentifier UUIDString];
    v6 = HDCloudSyncTargetPurposeToString([v3 purpose]);
    v7 = HDCloudSyncTargetOptionsToString([v3 options]);
    container = [v3 container];
    containerIdentifier = [container containerIdentifier];
    storeRecord2 = [v3 storeRecord];

    v11 = [storeRecord2 description];
    v12 = [v11 hk_stringIndentedBy:4];
    v13 = [v2 stringWithFormat:@"Store %@ (%@, Options: %@) in %@:\n%@\n", uUIDString, v6, v7, containerIdentifier, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  zonesByIdentifier = self->_zonesByIdentifier;
  v6 = equalCopy[2];
  if (zonesByIdentifier != v6 && (!v6 || ![(NSDictionary *)zonesByIdentifier isEqual:?]))
  {
    goto LABEL_8;
  }

  targets = self->_targets;
  v8 = equalCopy[3];
  if (targets == v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = [(NSArray *)targets isEqual:?];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (NSSet)seizedZones
{
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v3 = [allValues hk_mapToSet:&__block_literal_global_336_1];

  return v3;
}

id __36__HDCloudSyncCloudState_seizedZones__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 purpose] == 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)pullZones
{
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v3 = [allValues hk_mapToSet:&__block_literal_global_338_1];

  return v3;
}

id __34__HDCloudSyncCloudState_pullZones__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 purpose] == 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)masterZoneForContainerID:(id)d
{
  dCopy = d;
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HDCloudSyncCloudState_masterZoneForContainerID___block_invoke;
  v9[3] = &unk_27862CFA8;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [allValues hk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __50__HDCloudSyncCloudState_masterZoneForContainerID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 zoneIdentifier];
    v6 = [v5 containerIdentifier];
    v4 = [v6 isEqualToString:*(a1 + 32)];
  }

  return v4;
}

- (id)unifiedSyncZoneForContainerID:(id)d
{
  dCopy = d;
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDCloudSyncCloudState_unifiedSyncZoneForContainerID___block_invoke;
  v9[3] = &unk_27862CFA8;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [allValues hk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __55__HDCloudSyncCloudState_unifiedSyncZoneForContainerID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 zoneType] == 2)
  {
    v4 = [v3 zoneIdentifier];
    v5 = [v4 containerIdentifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)zoneForRecordID:(id)d containerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HDCloudSyncCloudState_zoneForRecordID_containerIdentifier___block_invoke;
  v13[3] = &unk_27862CFD0;
  v14 = dCopy;
  v15 = identifierCopy;
  v9 = identifierCopy;
  v10 = dCopy;
  v11 = [allValues hk_firstObjectPassingTest:v13];

  return v11;
}

uint64_t __61__HDCloudSyncCloudState_zoneForRecordID_containerIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v5 = [v4 zoneIdentifier];
  v6 = [*(a1 + 32) zoneID];
  if ([v5 isEqual:v6])
  {
    v7 = [v3 zoneIdentifier];
    v8 = [v7 containerIdentifier];
    v9 = [v8 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)zonesForContainerID:(id)d
{
  dCopy = d;
  allValues = [(NSDictionary *)self->_zonesByIdentifier allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HDCloudSyncCloudState_zonesForContainerID___block_invoke;
  v9[3] = &unk_27862CFA8;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [allValues hk_filter:v9];

  return v7;
}

uint64_t __45__HDCloudSyncCloudState_zonesForContainerID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneIdentifier];
  v4 = [v3 containerIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

@end