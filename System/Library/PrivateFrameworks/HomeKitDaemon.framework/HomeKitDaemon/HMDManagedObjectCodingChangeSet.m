@interface HMDManagedObjectCodingChangeSet
- (HMDManagedObjectCodingChangeSet)initWithCodingModel:(id)a3 context:(id)a4 changes:(id)a5;
- (HMDManagedObjectCodingChangeSet)initWithCodingModel:(id)a3 context:(id)a4 transactions:(id)a5;
- (HMDManagedObjectCodingChangeSetSummary)summary;
- (int64_t)changeScopeForObjectWithID:(id)a3 attributeKeys:(id *)a4 relationshipKeys:(id *)a5;
- (void)synthesizeParentChildChanges:(void *)a3 forObject:(void *)a4 withDescription:(void *)a5 model:;
@end

@implementation HMDManagedObjectCodingChangeSet

- (HMDManagedObjectCodingChangeSetSummary)summary
{
  summary = self->_summary;
  if (!summary)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_changedObjects, "count")}];
    changedObjects = self->_changedObjects;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __42__HMDManagedObjectCodingChangeSet_summary__block_invoke;
    v21 = &unk_278680D68;
    v22 = self;
    v23 = v7;
    v24 = v5;
    v25 = v6;
    v9 = v6;
    v10 = v5;
    v11 = v7;
    [(NSMutableDictionary *)changedObjects enumerateKeysAndObjectsUsingBlock:&v18];
    v12 = [v11 sortedArrayUsingSelector:{sel_compare_, v18, v19, v20, v21, v22}];
    v13 = [v12 componentsJoinedByString:&stru_283CF9D50];

    v14 = [[HMDManagedObjectCodingChangeSetSummary alloc] initWithShortDescriptionForChangeSet:v13 insertedObjectNames:v10 modifiedObjectPropertyNames:v9];
    v15 = self->_summary;
    self->_summary = v14;

    objc_autoreleasePoolPop(v4);
    summary = self->_summary;
  }

  v16 = summary;

  return v16;
}

void __42__HMDManagedObjectCodingChangeSet_summary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 hmd_debugIdentifier];
  v8 = [v7 componentsSeparatedByString:@"/"];
  v9 = [v8 firstObject];

  if (v9)
  {
    if (v6 == @"<*>")
    {
      v33 = *(a1 + 40);
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n<%@>: %@", v7, @"<*>"];
      [v33 addObject:v34];

      [*(a1 + 48) addObject:v9];
    }

    else if (v6)
    {
      v37 = v5;
      v10 = MEMORY[0x277CBEB18];
      v11 = [(HMDManagedObjectCodingChangeDetails *)v6 changedAttributeKeys];
      v12 = [v11 count];
      v13 = [(HMDManagedObjectCodingChangeDetails *)v6 changedRelationshipKeys];
      v14 = [v10 arrayWithCapacity:{objc_msgSend(v13, "count") + v12}];

      v15 = [(HMDManagedObjectCodingChangeDetails *)v6 changedAttributeKeys];
      v16 = [v15 allObjects];
      [v14 addObjectsFromArray:v16];

      v17 = [(HMDManagedObjectCodingChangeDetails *)v6 changedRelationshipKeys];
      v18 = [v17 allObjects];
      [v14 addObjectsFromArray:v18];

      v19 = *(a1 + 40);
      v20 = MEMORY[0x277CCACA8];
      v21 = [v14 componentsJoinedByString:{@", "}];
      v36 = v7;
      v22 = [v20 stringWithFormat:@"\n<%@>: %@", v7, v21];
      [v19 addObject:v22];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = v14;
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v39;
        do
        {
          v27 = 0;
          do
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v9, *(*(&v38 + 1) + 8 * v27)];
            [*(a1 + 56) addObject:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v25);
      }

      v7 = v36;
      v5 = v37;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 32);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v32;
      v45 = 2112;
      v46 = v7;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to parse object name from debug identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (int64_t)changeScopeForObjectWithID:(id)a3 attributeKeys:(id *)a4 relationshipKeys:(id *)a5
{
  v7 = [(NSMutableDictionary *)self->_changedObjects objectForKeyedSubscript:a3];
  v8 = v7;
  if (v7 == @"<*>")
  {
    v9 = 3;
  }

  else if (v7)
  {
    if (a4)
    {
      *a4 = [(HMDManagedObjectCodingChangeDetails *)v7 changedAttributeKeys];
    }

    if (a5)
    {
      *a5 = [(HMDManagedObjectCodingChangeDetails *)v8 changedRelationshipKeys];
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (HMDManagedObjectCodingChangeSet)initWithCodingModel:(id)a3 context:(id)a4 transactions:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_transactions___block_invoke;
  v12[3] = &unk_278680D18;
  v13 = v8;
  v9 = v8;
  v10 = [(HMDManagedObjectCodingChangeSet *)self initWithCodingModel:a3 context:a4 changes:v12];

  return v10;
}

void __76__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_transactions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_transactions___block_invoke_2;
  v6[3] = &unk_278680CF0;
  v8 = v9;
  v5 = v3;
  v7 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __76__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_transactions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 transactionNumber];
  v4 = [v3 changes];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_transactions___block_invoke_3;
  v5[3] = &unk_278680CC8;
  v6 = *(a1 + 32);
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
}

- (HMDManagedObjectCodingChangeSet)initWithCodingModel:(id)a3 context:(id)a4 changes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HMDManagedObjectCodingChangeSet;
  v11 = [(HMDManagedObjectCodingChangeSet *)&v23 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_changes___block_invoke;
    v18[3] = &unk_278680CA0;
    v19 = v8;
    v13 = v12;
    v20 = v13;
    v14 = v11;
    v21 = v14;
    v22 = v9;
    v10[2](v10, v18);
    changedObjects = v14->_changedObjects;
    v14->_changedObjects = v13;
    v16 = v13;
  }

  return v11;
}

void __71__HMDManagedObjectCodingChangeSet_initWithCodingModel_context_changes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changedObjectID];
  v5 = *(a1 + 32);
  v6 = [v4 entity];
  v7 = [v5 descriptionForEntity:v6];

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = [v3 changeType];
  switch(v8)
  {
    case 2:
      v9 = *(a1 + 40);
      v10 = 0;
      goto LABEL_15;
    case 1:
      v17 = [*(a1 + 40) objectForKeyedSubscript:v4];
      if (v17 != @"<*>")
      {
        v11 = *(a1 + 48);
        v12 = [v3 updatedProperties];
        v13 = v7;
        if (v11)
        {
          v22 = 0;
          v23 = &v22;
          v24 = 0x2020000000;
          v25 = 0;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __97__HMDManagedObjectCodingChangeSet_populateChangeDetails_withUpdatedProperties_codingDescription___block_invoke;
          v18[3] = &unk_278680D40;
          v14 = v13;
          v20 = &v22;
          v21 = &v17;
          v19 = v14;
          [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
          v15 = *(v23 + 24);

          _Block_object_dispose(&v22, 8);
          if (v15 != 1)
          {
            goto LABEL_13;
          }

          [*(a1 + 40) setObject:v17 forKeyedSubscript:v4];
          v16 = [*(a1 + 32) rootDescription];

          if (v14 == v16)
          {
            goto LABEL_13;
          }

          v12 = [*(a1 + 56) existingObjectWithID:v4 error:0];
          if (v12)
          {
            [(HMDManagedObjectCodingChangeSet *)*(a1 + 48) synthesizeParentChildChanges:v12 forObject:v14 withDescription:*(a1 + 32) model:?];
          }
        }

        else
        {
        }
      }

LABEL_13:

      break;
    case 0:
      v9 = *(a1 + 40);
      v10 = @"<*>";
LABEL_15:
      [v9 setObject:v10 forKeyedSubscript:v4];
      break;
  }

LABEL_16:
}

- (void)synthesizeParentChildChanges:(void *)a3 forObject:(void *)a4 withDescription:(void *)a5 model:
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v28 = a1;
  if (a1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [a4 parentRelationships];
    v32 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v32)
    {
      v30 = v10;
      v31 = *v34;
      v29 = v12;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v12);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v10 valueForKey:v15];

          if (v16)
          {
            v17 = v11;
            v18 = [v11 descriptionForManagedObject:v16];
            v19 = [v14 inverseRelationship];
            v20 = [v18 descriptionForRelationship:v19];
            v21 = [v20 codingKey];

            v22 = [v16 objectID];
            v23 = [v9 objectForKeyedSubscript:v22];
            if (v23 == @"<*>")
            {
              v24 = @"<*>";
            }

            else
            {
              v24 = v23;
              if (v23)
              {
                [(HMDManagedObjectCodingChangeDetails *)v23 addChangedRelationshipCodingKey:v21];
              }

              else
              {
                v24 = objc_alloc_init(HMDManagedObjectCodingChangeDetails);
                [v9 setObject:v24 forKeyedSubscript:v22];
                [(HMDManagedObjectCodingChangeDetails *)v24 addChangedRelationshipCodingKey:v21];
                [v17 rootDescription];
                v26 = v25 = v9;

                if (v18 != v26)
                {
                  [(HMDManagedObjectCodingChangeSet *)v28 synthesizeParentChildChanges:v25 forObject:v16 withDescription:v18 model:v17];
                }

                v9 = v25;
                v12 = v29;
                v10 = v30;
              }
            }

            v11 = v17;
          }
        }

        v32 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v32);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HMDManagedObjectCodingChangeSet_populateChangeDetails_withUpdatedProperties_codingDescription___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) descriptionForAttribute:v19];
    if (v3)
    {
      v4 = **(a1 + 48);
      if (!v4)
      {
        v5 = objc_alloc_init(HMDManagedObjectCodingChangeDetails);
        v6 = *(a1 + 48);
        v7 = *v6;
        *v6 = v5;

        v8 = *(a1 + 48);
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v4 = *v8;
      }

      v9 = [v3 codingKey];
      if (v4)
      {
        v10 = *(v4 + 8);
        if (v10)
        {
          [v10 addObject:v9];
        }

        else
        {
          v16 = [MEMORY[0x277CBEB58] setWithObject:v9];
          v17 = *(v4 + 8);
          *(v4 + 8) = v16;
        }
      }

LABEL_15:
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v3 = [*(a1 + 32) descriptionForRelationship:v19];
    if (v3)
    {
      v11 = **(a1 + 48);
      if (!v11)
      {
        v12 = objc_alloc_init(HMDManagedObjectCodingChangeDetails);
        v13 = *(a1 + 48);
        v14 = *v13;
        *v13 = v12;

        v15 = *(a1 + 48);
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v11 = *v15;
      }

      v9 = [v3 codingKey];
      [(HMDManagedObjectCodingChangeDetails *)v11 addChangedRelationshipCodingKey:v9];
      goto LABEL_15;
    }
  }

LABEL_17:

  return MEMORY[0x2821F9730]();
}

@end