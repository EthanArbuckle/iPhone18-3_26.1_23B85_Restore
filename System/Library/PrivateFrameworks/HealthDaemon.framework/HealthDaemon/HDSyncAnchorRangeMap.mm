@interface HDSyncAnchorRangeMap
- (BOOL)getAnchorRange:(HDSyncAnchorRange *)range forSyncEntityIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HDSyncAnchorRangeMap)initWithCodableSyncAnchorRangeMap:(id)map error:(id *)error;
- (HDSyncAnchorRangeMap)initWithCoder:(id)coder;
- (id)codableSyncAnchorRangeMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAnchorRangesAndEntityIdentifiersWithBlock:(id)block;
- (void)setAnchorRange:(HDSyncAnchorRange)range forSyncEntityIdentifier:(id)identifier;
@end

@implementation HDSyncAnchorRangeMap

- (HDSyncAnchorRangeMap)initWithCodableSyncAnchorRangeMap:(id)map error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v34.receiver = self;
  v34.super_class = HDSyncAnchorRangeMap;
  v7 = [(HDSyncAnchorRangeMap *)&v34 init];
  if (!v7)
  {
    goto LABEL_23;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  anchorRanges = [mapCopy anchorRanges];
  v9 = [anchorRanges countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v9;
  v11 = *v31;
  do
  {
    v12 = 0;
    do
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(anchorRanges);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      if (![v13 hasStartAnchor] || !objc_msgSend(v13, "hasEndAnchor") || !objc_msgSend(v13, "hasEntityType"))
      {
        v27 = @"Codable sync anchor range %@ does not contain all required fields.";
LABEL_26:
        [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:{v27, v13}];

        v26 = 0;
        goto LABEL_27;
      }

      startAnchor = [v13 startAnchor];
      if (startAnchor > [v13 endAnchor])
      {
        v27 = @"Codable sync anchor range %@ has a start anchor after its end anchor.";
        goto LABEL_26;
      }

      if ([v13 hasEntityIdentifier])
      {
        v15 = [HDSyncEntityIdentifier alloc];
        entityIdentifier = [v13 entityIdentifier];
        v17 = [(HDSyncEntityIdentifier *)v15 initWithCodableEntityIdentifier:entityIdentifier];

        if (v17)
        {
          goto LABEL_16;
        }
      }

      v18 = HDBuiltinSyncEntityClassForType([v13 entityType]);
      if (v18)
      {
        syncEntityIdentifier = [v18 syncEntityIdentifier];
        if (!syncEntityIdentifier)
        {
          goto LABEL_17;
        }

        v17 = syncEntityIdentifier;
LABEL_16:
        v20 = HDSyncAnchorRangeMake([v13 startAnchor], objc_msgSend(v13, "endAnchor"));
        [(HDSyncAnchorRangeMap *)v7 setAnchorRange:v20 forSyncEntityIdentifier:v21, v17];

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        entityType = [v13 entityType];
        *buf = 134217984;
        v36 = entityType;
        _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Codable sync anchor range contains invalid sync entity type (%lld) which will be ignored.", buf, 0xCu);
      }

LABEL_17:
      ++v12;
    }

    while (v10 != v12);
    v25 = [anchorRanges countByEnumeratingWithState:&v30 objects:v37 count:16];
    v10 = v25;
  }

  while (v25);
LABEL_22:

LABEL_23:
  v26 = v7;
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[HDSyncAnchorRangeMap allocWithZone:](HDSyncAnchorRangeMap init];
  v6 = [(NSMutableDictionary *)self->_anchorRangesByEntityIdentifier mutableCopyWithZone:zone];
  if (v5)
  {
    objc_storeStrong(&v5->_anchorRangesByEntityIdentifier, v6);
  }

  return v5;
}

- (id)codableSyncAnchorRangeMap
{
  v3 = objc_alloc_init(HDCodableSyncAnchorRangeMap);
  anchorRangesByEntityIdentifier = self->_anchorRangesByEntityIdentifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HDSyncAnchorRangeMap_codableSyncAnchorRangeMap__block_invoke;
  v7[3] = &unk_27862F1D0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)anchorRangesByEntityIdentifier enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __49__HDSyncAnchorRangeMap_codableSyncAnchorRangeMap__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HDCodableSyncAnchorRange);
  if (v10)
  {
    v7 = v10[1];
    v8 = v10[2];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  [(HDCodableSyncAnchorRange *)v6 setStartAnchor:v7];
  [(HDCodableSyncAnchorRange *)v6 setEndAnchor:v8];
  -[HDCodableSyncAnchorRange setEntityType:](v6, "setEntityType:", [v5 entityIdentifier]);
  v9 = [v5 codableEntityIdentifier];

  [(HDCodableSyncAnchorRange *)v6 setEntityIdentifier:v9];
  [*(a1 + 32) addAnchorRanges:v6];
}

- (void)setAnchorRange:(HDSyncAnchorRange)range forSyncEntityIdentifier:(id)identifier
{
  end = range.end;
  start = range.start;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncAnchorRangeMap.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"syncEntityIdentifier != nil"}];
  }

  if (!self->_anchorRangesByEntityIdentifier)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    anchorRangesByEntityIdentifier = self->_anchorRangesByEntityIdentifier;
    self->_anchorRangesByEntityIdentifier = v9;
  }

  v11 = [_HDSyncAnchorRangeBox alloc];
  if (v11)
  {
    v15.receiver = v11;
    v15.super_class = _HDSyncAnchorRangeBox;
    v12 = [(HDSyncAnchorRangeMap *)&v15 init];
    v13 = v12;
    if (v12)
    {
      v12->_anchorRangesByEntityIdentifier = start;
      v12[1].super.isa = end;
    }
  }

  else
  {
    v13 = 0;
  }

  [(NSMutableDictionary *)self->_anchorRangesByEntityIdentifier setObject:v13 forKeyedSubscript:identifierCopy];
}

- (BOOL)getAnchorRange:(HDSyncAnchorRange *)range forSyncEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSyncAnchorRangeMap.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"syncEntityIdentifier != nil"}];
  }

  v8 = [(NSMutableDictionary *)self->_anchorRangesByEntityIdentifier objectForKeyedSubscript:identifierCopy];
  if (v8)
  {
    *range = *(v8 + 8);
  }

  v9 = v8 != 0;

  return v9;
}

- (void)enumerateAnchorRangesAndEntityIdentifiersWithBlock:(id)block
{
  blockCopy = block;
  anchorRangesByEntityIdentifier = self->_anchorRangesByEntityIdentifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDSyncAnchorRangeMap_enumerateAnchorRangesAndEntityIdentifiersWithBlock___block_invoke;
  v7[3] = &unk_27862F1F8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)anchorRangesByEntityIdentifier enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __75__HDSyncAnchorRangeMap_enumerateAnchorRangesAndEntityIdentifiersWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    v6 = a3;
    a3 = *(a3 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  return (*(v5 + 16))(v5, a2, a3, v7, a4);
}

- (id)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_anchorRangesByEntityIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [(NSMutableDictionary *)self->_anchorRangesByEntityIdentifier objectForKeyedSubscript:v9];
        if (v10)
        {
          v12 = v10[1];
          v11 = v10[2];
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: (%lld, %lld)", v9, v12, v11];
        [v3 addObject:v13];

        ++v8;
      }

      while (v6 != v8);
      v14 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v6 = v14;
    }

    while (v14);
  }

  v15 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = HDSyncAnchorRangeMap;
  v16 = [(HDSyncAnchorRangeMap *)&v21 description];
  v17 = [v3 componentsJoinedByString:{@", "}];
  v18 = [v15 stringWithFormat:@"<%@ %@>", v16, v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  anchorRangesByEntityIdentifier = self->_anchorRangesByEntityIdentifier;
  v6 = equalCopy[1];
  if (anchorRangesByEntityIdentifier == v6)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (v6)
  {
    v7 = [(NSMutableDictionary *)anchorRangesByEntityIdentifier isEqual:?];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_anchorRangesByEntityIdentifier forKey:@"AnchorRangesByEntityIdentifier"];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_anchorRangesByEntityIdentifier;
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
        schemaIdentifier = [v10 schemaIdentifier];

        if (!schemaIdentifier)
        {
          v12 = [(NSMutableDictionary *)self->_anchorRangesByEntityIdentifier objectForKeyedSubscript:v10];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "entityIdentifier")}];
          [v4 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [coderCopy encodeObject:v4 forKey:@"AnchorRangesByObjectType"];
  v14 = *MEMORY[0x277D85DE8];
}

- (HDSyncAnchorRangeMap)initWithCoder:(id)coder
{
  v37[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = HDSyncAnchorRangeMap;
  v5 = [(HDSyncAnchorRangeMap *)&v34 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AnchorRangesByEntityIdentifier"];
    anchorRangesByEntityIdentifier = v5->_anchorRangesByEntityIdentifier;
    v5->_anchorRangesByEntityIdentifier = v9;

    if (!v5->_anchorRangesByEntityIdentifier)
    {
      v11 = MEMORY[0x277CBEB98];
      v36[0] = objc_opt_class();
      v36[1] = objc_opt_class();
      v36[2] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
      v13 = [v11 setWithArray:v12];
      v29 = coderCopy;
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"AnchorRangesByObjectType"];

      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = v5->_anchorRangesByEntityIdentifier;
      v5->_anchorRangesByEntityIdentifier = v15;

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v17 objectForKeyedSubscript:v22];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v25 = +[HDSyncEntityIdentifier identifierWithSchema:entity:](HDSyncEntityIdentifier, "identifierWithSchema:entity:", 0, [v22 integerValue]);
                v26 = [v17 objectForKeyedSubscript:v22];
                [(NSMutableDictionary *)v5->_anchorRangesByEntityIdentifier setObject:v26 forKeyedSubscript:v25];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v19);
      }

      coderCopy = v29;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v5;
}

@end