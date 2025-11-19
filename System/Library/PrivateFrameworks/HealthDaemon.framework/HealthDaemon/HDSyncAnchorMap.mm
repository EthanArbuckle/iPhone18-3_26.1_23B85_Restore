@interface HDSyncAnchorMap
+ (HDSyncAnchorMap)syncAnchorMapWithCodableSyncAnchorRangeMap:(id)a3;
+ (HDSyncAnchorMap)syncAnchorMapWithDictionary:(id)a3;
+ (HDSyncAnchorMap)syncAnchorMapWithSyncAnchorRangeMap:(id)a3;
- (BOOL)isAllZero;
- (BOOL)isEqual:(id)a3;
- (HDSyncAnchorMap)initWithCoder:(id)a3;
- (NSString)description;
- (id)codableSyncAnchorRangeMap;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)anchorForSyncEntityClass:(Class)a3;
- (int64_t)anchorForSyncEntityIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnchorsAndEntityIdentifiersWithBlock:(id)a3;
- (void)setAnchor:(int64_t)a3 forSyncEntity:(Class)a4;
- (void)setAnchor:(int64_t)a3 forSyncEntityIdentifier:(id)a4;
- (void)setAnchorsFromMap:(id)a3;
@end

@implementation HDSyncAnchorMap

+ (HDSyncAnchorMap)syncAnchorMapWithCodableSyncAnchorRangeMap:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(HDSyncAnchorMap);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 anchorRanges];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [HDSyncEntityIdentifier alloc];
        v12 = [v10 entityIdentifier];
        v13 = [(HDSyncEntityIdentifier *)v11 initWithCodableEntityIdentifier:v12];

        -[HDSyncAnchorMap setAnchor:forSyncEntityIdentifier:](v4, "setAnchor:forSyncEntityIdentifier:", [v10 endAnchor], v13);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (HDSyncAnchorMap)syncAnchorMapWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDSyncAnchorMap);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDSyncAnchorMap_syncAnchorMapWithDictionary___block_invoke;
  v7[3] = &unk_2786287F0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __47__HDSyncAnchorMap_syncAnchorMapWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 setAnchor:objc_msgSend(a3 forSyncEntityIdentifier:{"longLongValue"), v5}];
}

- (id)codableSyncAnchorRangeMap
{
  v3 = objc_alloc_init(HDCodableSyncAnchorRangeMap);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HDSyncAnchorMap_codableSyncAnchorRangeMap__block_invoke;
  v6[3] = &unk_278615EC0;
  v4 = v3;
  v7 = v4;
  [(HDSyncAnchorMap *)self enumerateAnchorsAndEntityIdentifiersWithBlock:v6];

  return v4;
}

void __44__HDSyncAnchorMap_codableSyncAnchorRangeMap__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_alloc_init(HDCodableSyncAnchorRange);
  [(HDCodableSyncAnchorRange *)v7 setStartAnchor:0];
  [(HDCodableSyncAnchorRange *)v7 setEndAnchor:a3];
  v6 = [v5 codableEntityIdentifier];

  [(HDCodableSyncAnchorRange *)v7 setEntityIdentifier:v6];
  [*(a1 + 32) addAnchorRanges:v7];
}

- (void)setAnchor:(int64_t)a3 forSyncEntity:(Class)a4
{
  if (!a4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"HDSyncAnchorMap.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"syncEntityClass != Nil"}];
  }

  v9 = [(objc_class *)a4 syncEntityIdentifier];
  [(HDSyncAnchorMap *)self setAnchor:a3 forSyncEntityIdentifier:v9];
}

- (void)setAnchor:(int64_t)a3 forSyncEntityIdentifier:(id)a4
{
  v9 = a4;
  if (!self->_anchorsByEntityIdentifier)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
    self->_anchorsByEntityIdentifier = v6;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(NSMutableDictionary *)self->_anchorsByEntityIdentifier setObject:v8 forKeyedSubscript:v9];
}

- (int64_t)anchorForSyncEntityClass:(Class)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HDSyncAnchorMap.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"syncEntityClass != Nil"}];
  }

  v5 = [(objc_class *)a3 syncEntityIdentifier];
  v6 = [(HDSyncAnchorMap *)self anchorForSyncEntityIdentifier:v5];

  return v6;
}

- (int64_t)anchorForSyncEntityIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_anchorsByEntityIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)enumerateAnchorsAndEntityIdentifiersWithBlock:(id)a3
{
  v4 = a3;
  anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HDSyncAnchorMap_enumerateAnchorsAndEntityIdentifiersWithBlock___block_invoke;
  v7[3] = &unk_278628818;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)anchorsByEntityIdentifier enumerateKeysAndObjectsUsingBlock:v7];
}

void __65__HDSyncAnchorMap_enumerateAnchorsAndEntityIdentifiersWithBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  (*(v6 + 16))(v6, v7, [a3 integerValue], a4);
}

- (void)setAnchorsFromMap:(id)a3
{
  v4 = a3;
  anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
  v8 = v4;
  if (!anchorsByEntityIdentifier)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_anchorsByEntityIdentifier;
    self->_anchorsByEntityIdentifier = v6;

    v4 = v8;
    anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
  }

  [(NSMutableDictionary *)anchorsByEntityIdentifier addEntriesFromDictionary:*(v4 + 1)];
}

- (BOOL)isAllZero
{
  v3 = 1;
  if ([(NSMutableDictionary *)self->_anchorsByEntityIdentifier count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__HDSyncAnchorMap_isAllZero__block_invoke;
    v6[3] = &unk_278628840;
    v6[4] = &v7;
    [(NSMutableDictionary *)anchorsByEntityIdentifier enumerateKeysAndObjectsUsingBlock:v6];
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

uint64_t __28__HDSyncAnchorMap_isAllZero__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 longLongValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (NSString)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_anchorsByEntityIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_anchorsByEntityIdentifier objectForKeyedSubscript:v9];
        v11 = [v10 integerValue];

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %lld", v9, v11];
        [v3 addObject:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = HDSyncAnchorMap;
  v14 = [(HDSyncAnchorMap *)&v18 description];
  v15 = [v13 stringWithFormat:@"<%@ %@>", v14, v3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
  v6 = v4[1];
  if (anchorsByEntityIdentifier != v6)
  {
    if (v6)
    {
      if (([(NSMutableDictionary *)anchorsByEntityIdentifier isEqual:?]& 1) != 0)
      {
        goto LABEL_5;
      }

      anchorsByEntityIdentifier = self->_anchorsByEntityIdentifier;
    }

    if (![(NSMutableDictionary *)anchorsByEntityIdentifier count])
    {
      v7 = [v4[1] count] == 0;
      goto LABEL_9;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v7 = 1;
LABEL_9:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HDSyncAnchorMap);
  v5 = [(NSMutableDictionary *)self->_anchorsByEntityIdentifier mutableCopy];
  anchorsByEntityIdentifier = v4->_anchorsByEntityIdentifier;
  v4->_anchorsByEntityIdentifier = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a3;
  [v15 encodeObject:self->_anchorsByEntityIdentifier forKey:@"AnchorByEntityIdentifier"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_anchorsByEntityIdentifier;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 schemaIdentifier];

        if (!v11)
        {
          v12 = [(NSMutableDictionary *)self->_anchorsByEntityIdentifier objectForKeyedSubscript:v10];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "entityIdentifier")}];
          [v4 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [v15 encodeObject:v4 forKey:@"AnchorByObjectType"];
  v14 = *MEMORY[0x277D85DE8];
}

- (HDSyncAnchorMap)initWithCoder:(id)a3
{
  v35[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = HDSyncAnchorMap;
  v5 = [(HDSyncAnchorMap *)&v32 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v35[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"AnchorByEntityIdentifier"];
    anchorsByEntityIdentifier = v5->_anchorsByEntityIdentifier;
    v5->_anchorsByEntityIdentifier = v9;

    if (!v5->_anchorsByEntityIdentifier)
    {
      v27 = v8;
      v11 = MEMORY[0x277CBEB98];
      v34[0] = objc_opt_class();
      v34[1] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      v13 = [v11 setWithArray:v12];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"AnchorByObjectType"];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            if (!v5->_anchorsByEntityIdentifier)
            {
              v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v22 = v5->_anchorsByEntityIdentifier;
              v5->_anchorsByEntityIdentifier = v21;
            }

            v23 = +[HDSyncEntityIdentifier identifierWithSchema:entity:](HDSyncEntityIdentifier, "identifierWithSchema:entity:", 0, [v20 integerValue]);
            v24 = [v15 objectForKeyedSubscript:v20];
            [(NSMutableDictionary *)v5->_anchorsByEntityIdentifier setObject:v24 forKeyedSubscript:v23];

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v17);
      }

      v8 = v27;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (HDSyncAnchorMap)syncAnchorMapWithSyncAnchorRangeMap:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDSyncAnchorMap);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HDSyncAnchorMap_HDSyncAnchorRangeMap__syncAnchorMapWithSyncAnchorRangeMap___block_invoke;
  v7[3] = &unk_278615E50;
  v5 = v4;
  v8 = v5;
  [v3 enumerateAnchorRangesAndEntityIdentifiersWithBlock:v7];

  return v5;
}

@end