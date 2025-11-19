@interface HMDCoreDataCloudTransformChangeSet
- (id)description;
- (id)initWithHomeModelID:(void *)a3 clientIdentifier:(void *)a4 qualityOfService:;
- (id)inserts;
- (id)updates;
- (void)processChange:(id *)a1;
- (void)processDelete:(void *)a3 tombstone:;
- (void)processUpdate:(void *)a3 updatedProperties:;
@end

@implementation HMDCoreDataCloudTransformChangeSet

- (id)inserts
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

- (id)updates
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

- (void)processChange:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = [v3 changedObjectID];
    v5 = [v7 changeType];
    if (v5 == 2)
    {
      v6 = [v7 tombstone];
      [(HMDCoreDataCloudTransformChangeSet *)a1 processDelete:v4 tombstone:v6];
    }

    else
    {
      if (v5 != 1)
      {
        if (!v5)
        {
          [a1[1] addObject:v4];
        }

        goto LABEL_9;
      }

      v6 = [v7 updatedProperties];
      [(HMDCoreDataCloudTransformChangeSet *)a1 processUpdate:v4 updatedProperties:v6];
    }

LABEL_9:
    v3 = v7;
  }
}

- (void)processUpdate:(void *)a3 updatedProperties:
{
  v9 = a2;
  v5 = a3;
  if (a1 && ([*(a1 + 8) containsObject:v9] & 1) == 0)
  {
    v6 = [*(a1 + 16) objectForKeyedSubscript:v9];
    v7 = v6;
    if (v6)
    {
      [v6 unionSet:v5];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB58] setWithSet:v5];
      [*(a1 + 16) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

- (void)processDelete:(void *)a3 tombstone:
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    if ([a1[1] containsObject:v10])
    {
      [a1[1] removeObject:v10];
    }

    else
    {
      v6 = [v5 objectForKeyedSubscript:@"modelID"];
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
        [a1[5] addObject:v8];
      }

      [a1[2] setObject:0 forKeyedSubscript:v10];
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = MEMORY[0x277CBEC10];
      }

      [a1[3] setObject:v9 forKeyedSubscript:v10];
    }
  }
}

- (id)initWithHomeModelID:(void *)a3 clientIdentifier:(void *)a4 qualityOfService:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = HMDCoreDataCloudTransformChangeSet;
    v10 = objc_msgSendSuper2(&v20, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 6, a2);
      objc_storeStrong(a1 + 8, a3);
      a1[7] = a4;
      v11 = [MEMORY[0x277CBEB58] set];
      v12 = a1[1];
      a1[1] = v11;

      v13 = [MEMORY[0x277CBEB38] dictionary];
      v14 = a1[2];
      a1[2] = v13;

      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = a1[3];
      a1[3] = v15;

      v17 = [MEMORY[0x277CBEB58] set];
      v18 = a1[5];
      a1[5] = v17;
    }
  }

  return a1;
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