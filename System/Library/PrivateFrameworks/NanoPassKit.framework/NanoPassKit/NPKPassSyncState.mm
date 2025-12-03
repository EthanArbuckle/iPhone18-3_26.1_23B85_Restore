@interface NPKPassSyncState
+ (unint64_t)minRemoteDevicePassSyncStateVersionSupport;
+ (void)setMinRemoteDevicePassSyncStateVersionSupport:(unint64_t)support;
- (BOOL)diffWithBaselineState:(id)state representsMaterialDifferenceFromState:(id)fromState;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassSyncState:(id)state;
- (BOOL)stateContainsSyncStateItem:(id)item;
- (BOOL)stateIsSubsetOfUnionOfPassSyncStates:(id)states;
- (NPKPassSyncState)init;
- (NPKPassSyncState)initWithCoder:(id)coder;
- (NPKPassSyncState)initWithPasses:(id)passes;
- (NPKPassSyncState)initWithPasses:(id)passes version:(unint64_t)version;
- (NPKPassSyncState)initWithProtoSyncState:(id)state;
- (NPKPassSyncState)initWithSyncStateItems:(id)items;
- (NPKPassSyncState)initWithSyncStateItems:(id)items version:(unint64_t)version;
- (NPKPassSyncState)initWithVersion:(unint64_t)version;
- (NSData)syncStateHash;
- (id)commonBaselinePassSyncStateWithState:(id)state version:(unint64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)passSyncStateByAddingOrUpdatingSyncStateItem:(id)item;
- (id)passSyncStateByApplyingChange:(id)change;
- (id)passSyncStateByRemovingPassWithUniqueID:(id)d;
- (id)protoSyncState;
- (unint64_t)hash;
- (void)_commonInitWithVersion:(unint64_t)version;
- (void)compareWithBaselinePassSyncState:(id)state outAddedSyncItems:(id *)items outUpdatedSyncItems:(id *)syncItems outRemovedSyncItems:(id *)removedSyncItems;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKPassSyncState

- (NPKPassSyncState)initWithProtoSyncState:(id)state
{
  v20 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    passSyncStateItems = [stateCopy passSyncStateItems];
    v7 = [passSyncStateItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(passSyncStateItems);
          }

          v11 = [[NPKPassSyncStateItem alloc] initWithProtoSyncStateItem:*(*(&v15 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [passSyncStateItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = -[NPKPassSyncState initWithSyncStateItems:version:](self, "initWithSyncStateItems:version:", v5, [stateCopy version]);
  }

  else
  {

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)protoSyncState
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(NPKProtoPassSyncState);
  [(NPKProtoPassSyncState *)v3 setVersion:[(NPKPassSyncState *)self version]];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  syncStateItems = [(NPKPassSyncState *)self syncStateItems];
  allValues = [syncStateItems allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        protoSyncStateItem = [*(*(&v13 + 1) + 8 * i) protoSyncStateItem];
        [(NPKProtoPassSyncState *)v3 addPassSyncStateItems:protoSyncStateItem];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NPKPassSyncState)init
{
  minRemoteDevicePassSyncStateVersionSupport = [objc_opt_class() minRemoteDevicePassSyncStateVersionSupport];

  return [(NPKPassSyncState *)self initWithVersion:minRemoteDevicePassSyncStateVersionSupport];
}

- (NPKPassSyncState)initWithVersion:(unint64_t)version
{
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [(NPKPassSyncState *)self initWithPasses:v5 version:version];

  return v6;
}

- (NPKPassSyncState)initWithPasses:(id)passes
{
  passesCopy = passes;
  v5 = -[NPKPassSyncState initWithPasses:version:](self, "initWithPasses:version:", passesCopy, [objc_opt_class() minRemoteDevicePassSyncStateVersionSupport]);

  return v5;
}

- (NPKPassSyncState)initWithPasses:(id)passes version:(unint64_t)version
{
  v26 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  v24.receiver = self;
  v24.super_class = NPKPassSyncState;
  v7 = [(NPKPassSyncState *)&v24 init];
  v8 = v7;
  if (v7)
  {
    [(NPKPassSyncState *)v7 _commonInitWithVersion:version];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = passesCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        v13 = 0;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          v15 = [NPKPassSyncStateItem alloc];
          v16 = [(NPKPassSyncStateItem *)v15 initWithPass:v14, v20];
          uniqueID = [(NPKPassSyncStateItem *)v16 uniqueID];
          if (uniqueID)
          {
            [(NSMutableDictionary *)v8->_syncStateItems setObject:v16 forKey:uniqueID];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NPKPassSyncState)initWithSyncStateItems:(id)items
{
  itemsCopy = items;
  v5 = -[NPKPassSyncState initWithSyncStateItems:version:](self, "initWithSyncStateItems:version:", itemsCopy, [objc_opt_class() minRemoteDevicePassSyncStateVersionSupport]);

  return v5;
}

- (NPKPassSyncState)initWithSyncStateItems:(id)items version:(unint64_t)version
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v22.receiver = self;
  v22.super_class = NPKPassSyncState;
  v7 = [(NPKPassSyncState *)&v22 init];
  v8 = v7;
  if (v7)
  {
    [(NPKPassSyncState *)v7 _commonInitWithVersion:version];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          uniqueID = [v14 uniqueID];
          if (uniqueID)
          {
            [(NSMutableDictionary *)v8->_syncStateItems setObject:v14 forKey:uniqueID];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_commonInitWithVersion:(unint64_t)version
{
  self->_version = version;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  syncStateItems = self->_syncStateItems;
  self->_syncStateItems = v4;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  syncStateItems = self->_syncStateItems;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __31__NPKPassSyncState_description__block_invoke;
  v15 = &unk_279949298;
  v16 = array;
  v5 = array;
  [(NSMutableDictionary *)syncStateItems enumerateKeysAndObjectsUsingBlock:&v12];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  syncStateHash = [(NPKPassSyncState *)self syncStateHash];
  hexEncoding = [syncStateHash hexEncoding];
  v10 = [v6 stringWithFormat:@"<%@: %p sync state hash: %@, items: %@ version:%lu>", v7, self, hexEncoding, v5, self->_version, v12, v13, v14, v15];

  return v10;
}

void __31__NPKPassSyncState_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 shortDescription];
  [v3 addObject:v4];
}

- (void)compareWithBaselinePassSyncState:(id)state outAddedSyncItems:(id *)items outUpdatedSyncItems:(id *)syncItems outRemovedSyncItems:(id *)removedSyncItems
{
  v42 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v11 = MEMORY[0x277CBEB98];
  syncStateItems = [stateCopy syncStateItems];
  allKeys = [syncStateItems allKeys];
  v14 = [v11 setWithArray:allKeys];

  v15 = MEMORY[0x277CBEB98];
  allKeys2 = [(NSMutableDictionary *)self->_syncStateItems allKeys];
  v17 = [v15 setWithArray:allKeys2];

  if (items)
  {
    v18 = [v17 mutableCopy];
    [v18 minusSet:v14];
    *items = _sortedSyncItemsByUniqueID(v18, self->_syncStateItems);
  }

  if (syncItems)
  {
    syncItemsCopy = syncItems;
    v35 = v14;
    removedSyncItemsCopy = removedSyncItems;
    v19 = [v14 mutableCopy];
    v33 = v17;
    [v19 intersectSet:v17];
    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * v25);
          syncStateItems2 = [stateCopy syncStateItems];
          v28 = [syncStateItems2 objectForKey:v26];

          v29 = [(NSMutableDictionary *)self->_syncStateItems objectForKey:v26];
          if (([v28 isEqualToPassSyncStateItem:v29] & 1) == 0)
          {
            [v20 addObject:v26];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v23);
    }

    *syncItemsCopy = _sortedSyncItemsByUniqueID(v20, self->_syncStateItems);

    v14 = v35;
    removedSyncItems = removedSyncItemsCopy;
    v17 = v33;
  }

  if (removedSyncItems)
  {
    v30 = [v14 mutableCopy];
    [v30 minusSet:v17];
    syncStateItems3 = [stateCopy syncStateItems];
    *removedSyncItems = _sortedSyncItemsByUniqueID(v30, syncStateItems3);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)passSyncStateByApplyingChange:(id)change
{
  changeCopy = change;
  if ([changeCopy changeType] > 1)
  {
    uniqueID = [changeCopy uniqueID];

    [(NPKPassSyncState *)self passSyncStateByRemovingPassWithUniqueID:uniqueID];
  }

  else
  {
    uniqueID = [changeCopy syncStateItem];

    [(NPKPassSyncState *)self passSyncStateByAddingOrUpdatingSyncStateItem:uniqueID];
  }
  v6 = ;

  return v6;
}

- (id)passSyncStateByAddingOrUpdatingSyncStateItem:(id)item
{
  itemCopy = item;
  v5 = [(NPKPassSyncState *)self copy];
  syncStateItems = [v5 syncStateItems];
  uniqueID = [itemCopy uniqueID];
  [syncStateItems setObject:itemCopy forKey:uniqueID];

  return v5;
}

- (id)passSyncStateByRemovingPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [(NPKPassSyncState *)self copy];
  syncStateItems = [v5 syncStateItems];
  [syncStateItems removeObjectForKey:dCopy];

  return v5;
}

- (id)commonBaselinePassSyncStateWithState:(id)state version:(unint64_t)version
{
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = [(NPKPassSyncState *)self copy];
  v6[2] = version;
  v22 = v6;
  syncStateItems = [v6 syncStateItems];
  allKeys = [syncStateItems allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = allKeys;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        syncStateItems2 = [stateCopy syncStateItems];
        v15 = [syncStateItems2 objectForKey:v13];
        syncStateItems3 = [(NPKPassSyncState *)self syncStateItems];
        v17 = [syncStateItems3 objectForKey:v13];
        v18 = [v15 isEqual:v17];

        if ((v18 & 1) == 0)
        {
          syncStateItems4 = [v22 syncStateItems];
          [syncStateItems4 removeObjectForKey:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)stateIsSubsetOfUnionOfPassSyncStates:(id)states
{
  v32 = *MEMORY[0x277D85DE8];
  statesCopy = states;
  [(NSMutableDictionary *)self->_syncStateItems allKeys];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v27;
    while (1)
    {
      v5 = 0;
LABEL_4:
      if (*v27 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v26 + 1) + 8 * v5);
      v7 = [(NSMutableDictionary *)self->_syncStateItems objectForKey:v6];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = statesCopy;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = *v23;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        syncStateItems = [*(*(&v22 + 1) + 8 * v12) syncStateItems];
        v14 = [syncStateItems objectForKey:v6];

        LOBYTE(syncStateItems) = [v7 isEqual:v14];
        if (syncStateItems)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_18;
        }
      }

      if (++v5 != v4)
      {
        goto LABEL_4;
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      v15 = 1;
      if (!v4)
      {
        goto LABEL_20;
      }
    }

LABEL_18:

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)diffWithBaselineState:(id)state representsMaterialDifferenceFromState:(id)fromState
{
  v33 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  fromStateCopy = fromState;
  version = [(NPKPassSyncState *)self version];
  if (version == [stateCopy version])
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    [(NPKPassSyncState *)self compareWithBaselinePassSyncState:stateCopy outAddedSyncItems:&v31 outUpdatedSyncItems:&v30 outRemovedSyncItems:&v29];
    v9 = v31;
    v10 = v30;
    v11 = v29;
    if ([v11 count])
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = [v9 arrayByAddingObjectsFromArray:v10];
      v12 = [v13 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v12)
      {
        v22 = v11;
        v23 = v10;
        v24 = v9;
        v14 = *v26;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v13);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            syncStateItems = [fromStateCopy syncStateItems];
            uniqueID = [v16 uniqueID];
            v19 = [syncStateItems objectForKey:uniqueID];

            LODWORD(v16) = PKEqualObjects();
            if (!v16)
            {
              LOBYTE(v12) = 1;
              goto LABEL_15;
            }
          }

          v12 = [v13 countByEnumeratingWithState:&v25 objects:v32 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v10 = v23;
        v9 = v24;
        v11 = v22;
      }
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)stateContainsSyncStateItem:(id)item
{
  itemCopy = item;
  uniqueID = [itemCopy uniqueID];
  if (uniqueID)
  {
    syncStateItems = self->_syncStateItems;
    uniqueID2 = [itemCopy uniqueID];
    v8 = [(NSMutableDictionary *)syncStateItems objectForKey:uniqueID2];

    v9 = PKEqualObjects();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSData)syncStateHash
{
  v20 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_syncStateItems allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    data = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMutableDictionary *)self->_syncStateItems objectForKey:*(*(&v15 + 1) + 8 * i)];
        manifestHash = [v10 manifestHash];
        if (manifestHash)
        {
          if (!data)
          {
            data = [MEMORY[0x277CBEB28] data];
          }

          [data appendData:manifestHash];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    data = 0;
  }

  sHA256Hash = [data SHA256Hash];

  v13 = *MEMORY[0x277D85DE8];

  return sHA256Hash;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NPKPassSyncState *)self isEqualToPassSyncState:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassSyncState:(id)state
{
  if (self->_version != *(state + 2))
  {
    return 0;
  }

  syncStateItems = self->_syncStateItems;
  v4 = *(state + 1);
  return PKEqualObjects();
}

- (unint64_t)hash
{
  array = [MEMORY[0x277CBEB18] array];
  [array safelyAddObject:self->_syncStateItems];
  v4 = *MEMORY[0x277D38638];
  v5 = PKCombinedHash();

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPKPassSyncState allocWithZone:?], "initWithVersion:", self->_version];
  v5 = [(NSMutableDictionary *)self->_syncStateItems mutableCopy];
  [(NPKPassSyncState *)v4 setSyncStateItems:v5];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  syncStateItems = self->_syncStateItems;
  coderCopy = coder;
  [coderCopy encodeObject:syncStateItems forKey:@"syncStateItems"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v6 forKey:@"syncStateVersion"];
}

- (NPKPassSyncState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NPKPassSyncState;
  v5 = [(NPKPassSyncState *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"syncStateItems"];
    syncStateItems = v5->_syncStateItems;
    v5->_syncStateItems = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncStateVersion"];
    v5->_version = [v9 unsignedIntegerValue];
  }

  return v5;
}

+ (unint64_t)minRemoteDevicePassSyncStateVersionSupport
{
  v17 = *MEMORY[0x277D85DE8];
  if (PKCloudKitPassSyncEnabled())
  {
    _currentActiveDevice = [self _currentActiveDevice];
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAA2622E-C2DC-45BF-A337-F8A4BCED8CFD"];
    v5 = [_currentActiveDevice supportsCapability:v4];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      _deviceDomainAccessor = [self _deviceDomainAccessor];
      v14 = 0;
      v8 = [_deviceDomainAccessor integerForKey:@"NPKPassSyncStateVersion" keyExistsAndHasValidFormat:&v14];
      if (v14 == 1)
      {
        v6 = v8;
        v9 = pk_Sync_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = pk_Sync_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v16 = v6;
            _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: fetched from user defaults version:%lu", buf, 0xCu);
          }
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)setMinRemoteDevicePassSyncStateVersionSupport:(unint64_t)support
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      supportCopy = support;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Updated expected pass sync state version to:%lu", &v12, 0xCu);
    }
  }

  _deviceDomainAccessor = [self _deviceDomainAccessor];
  [_deviceDomainAccessor setInteger:support forKey:@"NPKPassSyncStateVersion"];

  _deviceDomainAccessor2 = [self _deviceDomainAccessor];
  synchronize = [_deviceDomainAccessor2 synchronize];

  v11 = *MEMORY[0x277D85DE8];
}

@end