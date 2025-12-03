@interface HMDCoreDataCloudTransformChangeSet
- (id)description;
- (id)initWithHomeModelID:(void *)d clientIdentifier:(void *)identifier qualityOfService:;
- (id)inserts;
- (id)updates;
- (void)processChange:(id *)change;
- (void)processDelete:(void *)delete tombstone:;
- (void)processUpdate:(void *)update updatedProperties:;
@end

@implementation HMDCoreDataCloudTransformChangeSet

- (id)inserts
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

- (id)updates
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

- (void)processChange:(id *)change
{
  v3 = a2;
  if (change)
  {
    v7 = v3;
    changedObjectID = [v3 changedObjectID];
    changeType = [v7 changeType];
    if (changeType == 2)
    {
      tombstone = [v7 tombstone];
      [(HMDCoreDataCloudTransformChangeSet *)change processDelete:changedObjectID tombstone:tombstone];
    }

    else
    {
      if (changeType != 1)
      {
        if (!changeType)
        {
          [change[1] addObject:changedObjectID];
        }

        goto LABEL_9;
      }

      tombstone = [v7 updatedProperties];
      [(HMDCoreDataCloudTransformChangeSet *)change processUpdate:changedObjectID updatedProperties:tombstone];
    }

LABEL_9:
    v3 = v7;
  }
}

- (void)processUpdate:(void *)update updatedProperties:
{
  v9 = a2;
  updateCopy = update;
  if (self && ([*(self + 8) containsObject:v9] & 1) == 0)
  {
    v6 = [*(self + 16) objectForKeyedSubscript:v9];
    v7 = v6;
    if (v6)
    {
      [v6 unionSet:updateCopy];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB58] setWithSet:updateCopy];
      [*(self + 16) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

- (void)processDelete:(void *)delete tombstone:
{
  v10 = a2;
  deleteCopy = delete;
  if (self)
  {
    if ([self[1] containsObject:v10])
    {
      [self[1] removeObject:v10];
    }

    else
    {
      v6 = [deleteCopy objectForKeyedSubscript:@"modelID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        [self[5] addObject:v8];
      }

      [self[2] setObject:0 forKeyedSubscript:v10];
      if (deleteCopy)
      {
        v9 = deleteCopy;
      }

      else
      {
        v9 = MEMORY[0x277CBEC10];
      }

      [self[3] setObject:v9 forKeyedSubscript:v10];
    }
  }
}

- (id)initWithHomeModelID:(void *)d clientIdentifier:(void *)identifier qualityOfService:
{
  v8 = a2;
  dCopy = d;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = HMDCoreDataCloudTransformChangeSet;
    v10 = objc_msgSendSuper2(&v20, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 6, a2);
      objc_storeStrong(self + 8, d);
      self[7] = identifier;
      v11 = [MEMORY[0x277CBEB58] set];
      v12 = self[1];
      self[1] = v11;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v14 = self[2];
      self[2] = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v16 = self[3];
      self[3] = dictionary2;

      v17 = [MEMORY[0x277CBEB58] set];
      v18 = self[5];
      self[5] = v17;
    }
  }

  return self;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableSet count](self->_inserts, "count")}];
  inserts = self->_inserts;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke;
  v33[3] = &unk_2786792A0;
  v34 = v3;
  v5 = v3;
  [(NSMutableSet *)inserts hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_updates, "count")}];
  updates = self->_updates;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke_2;
  v31[3] = &unk_2786792C8;
  v32 = v6;
  v8 = v6;
  [(NSMutableDictionary *)updates enumerateKeysAndObjectsUsingBlock:v31];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_deletes, "count")}];
  deletes = self->_deletes;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke_3;
  v29[3] = &unk_2786792F0;
  v30 = v9;
  v11 = v9;
  [(NSMutableDictionary *)deletes enumerateKeysAndObjectsUsingBlock:v29];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  qualityOfService = self->_qualityOfService;
  homeModelID = self->_homeModelID;
  v17 = self->_clientIdentifier;
  v18 = homeModelID;
  v19 = @"utilityQoS";
  v20 = @"userInitiatedQoS";
  v21 = @"userInteractiveQoS";
  if (qualityOfService != 33)
  {
    v21 = 0;
  }

  if (qualityOfService != 25)
  {
    v20 = v21;
  }

  if (qualityOfService != 17)
  {
    v19 = v20;
  }

  v22 = @"defaultQoS";
  v23 = @"backgroundQoS";
  if (qualityOfService != 9)
  {
    v23 = 0;
  }

  if (qualityOfService != -1)
  {
    v22 = v23;
  }

  if (qualityOfService <= 16)
  {
    v19 = v22;
  }

  v24 = v19;
  shouldTransform = self->_shouldTransform;
  v26 = HMFBooleanToString();
  v27 = [v12 stringWithFormat:@"<%@ %@: clientIdentifier = %@, qos = %@, transform = %@, inserts = %@, updates = %@, deletes = %@>", v14, v18, v17, v24, v26, v5, v8, v11];

  return v27;
}

void __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hmd_debugIdentifier];
  [v2 addObject:v3];
}

void __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v10 = MKFPropertyNamesFromDescriptions(a3);
  v7 = [v5 stringWithFormat:@"[%@]", v10];
  v8 = *(a1 + 32);
  v9 = [v6 hmd_debugIdentifier];

  [v8 setObject:v7 forKeyedSubscript:v9];
}

void __49__HMDCoreDataCloudTransformChangeSet_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hmd_debugIdentifier];
  [v2 addObject:v3];
}

@end