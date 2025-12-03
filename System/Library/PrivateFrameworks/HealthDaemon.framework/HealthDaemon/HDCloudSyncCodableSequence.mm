@interface HDCloudSyncCodableSequence
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSlot:(id)slot;
- (int)slot;
- (unint64_t)hash;
- (void)addIncludedChildSyncIdentities:(id)identities;
- (void)addIncludedStoreIdentifiers:(id)identifiers;
- (void)addIncludedSyncIdentities:(id)identities;
- (void)addUnfrozenChangeRecordNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActive:(BOOL)active;
- (void)setHasChildRecordCount:(BOOL)count;
- (void)setHasEpoch:(BOOL)epoch;
- (void)setHasProtocolVersion:(BOOL)version;
- (void)setHasSlot:(BOOL)slot;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableSequence

- (int)slot
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_slot;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSlot:(BOOL)slot
{
  if (slot)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"A"])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:@"B"])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:@"Tombstone"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasActive:(BOOL)active
{
  if (active)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEpoch:(BOOL)epoch
{
  if (epoch)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addIncludedStoreIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  includedStoreIdentifiers = self->_includedStoreIdentifiers;
  v8 = identifiersCopy;
  if (!includedStoreIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_includedStoreIdentifiers;
    self->_includedStoreIdentifiers = v6;

    identifiersCopy = v8;
    includedStoreIdentifiers = self->_includedStoreIdentifiers;
  }

  [(NSMutableArray *)includedStoreIdentifiers addObject:identifiersCopy];
}

- (void)addIncludedSyncIdentities:(id)identities
{
  identitiesCopy = identities;
  includedSyncIdentities = self->_includedSyncIdentities;
  v8 = identitiesCopy;
  if (!includedSyncIdentities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_includedSyncIdentities;
    self->_includedSyncIdentities = v6;

    identitiesCopy = v8;
    includedSyncIdentities = self->_includedSyncIdentities;
  }

  [(NSMutableArray *)includedSyncIdentities addObject:identitiesCopy];
}

- (void)addIncludedChildSyncIdentities:(id)identities
{
  identitiesCopy = identities;
  includedChildSyncIdentities = self->_includedChildSyncIdentities;
  v8 = identitiesCopy;
  if (!includedChildSyncIdentities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_includedChildSyncIdentities;
    self->_includedChildSyncIdentities = v6;

    identitiesCopy = v8;
    includedChildSyncIdentities = self->_includedChildSyncIdentities;
  }

  [(NSMutableArray *)includedChildSyncIdentities addObject:identitiesCopy];
}

- (void)setHasProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasChildRecordCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addUnfrozenChangeRecordNames:(id)names
{
  namesCopy = names;
  unfrozenChangeRecordNames = self->_unfrozenChangeRecordNames;
  v8 = namesCopy;
  if (!unfrozenChangeRecordNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_unfrozenChangeRecordNames;
    self->_unfrozenChangeRecordNames = v6;

    namesCopy = v8;
    unfrozenChangeRecordNames = self->_unfrozenChangeRecordNames;
  }

  [(NSMutableArray *)unfrozenChangeRecordNames addObject:namesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableSequence;
  v4 = [(HDCloudSyncCodableSequence *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableSequence *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v5 = self->_slot - 1;
    if (v5 >= 3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_slot];
    }

    else
    {
      v6 = off_278620488[v5];
    }

    [dictionary setObject:v6 forKey:@"slot"];

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_active];
    [dictionary setObject:v7 forKey:@"active"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_epoch];
    [dictionary setObject:v8 forKey:@"epoch"];
  }

  includedStoreIdentifiers = self->_includedStoreIdentifiers;
  if (includedStoreIdentifiers)
  {
    [dictionary setObject:includedStoreIdentifiers forKey:@"includedStoreIdentifiers"];
  }

  if ([(NSMutableArray *)self->_includedSyncIdentities count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_includedSyncIdentities, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = self->_includedSyncIdentities;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"includedSyncIdentities"];
  }

  if ([(NSMutableArray *)self->_includedChildSyncIdentities count])
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_includedChildSyncIdentities, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = self->_includedChildSyncIdentities;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation2 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation2];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"includedChildSyncIdentities"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_protocolVersion];
    [dictionary setObject:v24 forKey:@"protocolVersion"];
  }

  anchorMap = self->_anchorMap;
  if (anchorMap)
  {
    dictionaryRepresentation3 = [(HDCodableSyncAnchorRangeMap *)anchorMap dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"anchorMap"];
  }

  frozenAnchorMap = self->_frozenAnchorMap;
  if (frozenAnchorMap)
  {
    dictionaryRepresentation4 = [(HDCodableSyncAnchorRangeMap *)frozenAnchorMap dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"frozenAnchorMap"];
  }

  v29 = self->_has;
  if (v29)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_changeIndex];
    [dictionary setObject:v30 forKey:@"changeIndex"];

    v29 = self->_has;
  }

  if ((v29 & 2) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_childRecordCount];
    [dictionary setObject:v31 forKey:@"childRecordCount"];
  }

  unfrozenChangeRecordNames = self->_unfrozenChangeRecordNames;
  if (unfrozenChangeRecordNames)
  {
    [dictionary setObject:unfrozenChangeRecordNames forKey:@"unfrozenChangeRecordNames"];
  }

  syncEntityVersionMap = self->_syncEntityVersionMap;
  if (syncEntityVersionMap)
  {
    dictionaryRepresentation5 = [(HDCodableSyncEntityVersionMap *)syncEntityVersionMap dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"syncEntityVersionMap"];
  }

  v35 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v58 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    slot = self->_slot;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  active = self->_active;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    epoch = self->_epoch;
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = self->_includedStoreIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = self->_includedSyncIdentities;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v47;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v46 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v15);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_includedChildSyncIdentities;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v42 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 8) != 0)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteInt64Field();
  }

  if (self->_anchorMap)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_frozenAnchorMap)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = self->_has;
  if (v26)
  {
    changeIndex = self->_changeIndex;
    PBDataWriterWriteInt64Field();
    v26 = self->_has;
  }

  if ((v26 & 2) != 0)
  {
    childRecordCount = self->_childRecordCount;
    PBDataWriterWriteInt64Field();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = self->_unfrozenChangeRecordNames;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v39;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v38 + 1) + 8 * m);
        PBDataWriterWriteStringField();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v31);
  }

  if (self->_syncEntityVersionMap)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_37:
    toCopy[104] = self->_active;
    toCopy[108] |= 0x20u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(toCopy + 20) = self->_slot;
  toCopy[108] |= 0x10u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 3) = self->_epoch;
    toCopy[108] |= 4u;
  }

LABEL_5:
  v24 = toCopy;
  if ([(HDCloudSyncCodableSequence *)self includedStoreIdentifiersCount])
  {
    [v24 clearIncludedStoreIdentifiers];
    includedStoreIdentifiersCount = [(HDCloudSyncCodableSequence *)self includedStoreIdentifiersCount];
    if (includedStoreIdentifiersCount)
    {
      v7 = includedStoreIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCloudSyncCodableSequence *)self includedStoreIdentifiersAtIndex:i];
        [v24 addIncludedStoreIdentifiers:v9];
      }
    }
  }

  if ([(HDCloudSyncCodableSequence *)self includedSyncIdentitiesCount])
  {
    [v24 clearIncludedSyncIdentities];
    includedSyncIdentitiesCount = [(HDCloudSyncCodableSequence *)self includedSyncIdentitiesCount];
    if (includedSyncIdentitiesCount)
    {
      v11 = includedSyncIdentitiesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCloudSyncCodableSequence *)self includedSyncIdentitiesAtIndex:j];
        [v24 addIncludedSyncIdentities:v13];
      }
    }
  }

  if ([(HDCloudSyncCodableSequence *)self includedChildSyncIdentitiesCount])
  {
    [v24 clearIncludedChildSyncIdentities];
    includedChildSyncIdentitiesCount = [(HDCloudSyncCodableSequence *)self includedChildSyncIdentitiesCount];
    if (includedChildSyncIdentitiesCount)
    {
      v15 = includedChildSyncIdentitiesCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(HDCloudSyncCodableSequence *)self includedChildSyncIdentitiesAtIndex:k];
        [v24 addIncludedChildSyncIdentities:v17];
      }
    }
  }

  v18 = v24;
  if ((*&self->_has & 8) != 0)
  {
    *(v24 + 4) = self->_protocolVersion;
    *(v24 + 108) |= 8u;
  }

  if (self->_anchorMap)
  {
    [v24 setAnchorMap:?];
    v18 = v24;
  }

  if (self->_frozenAnchorMap)
  {
    [v24 setFrozenAnchorMap:?];
    v18 = v24;
  }

  v19 = self->_has;
  if (v19)
  {
    v18[1] = self->_changeIndex;
    *(v18 + 108) |= 1u;
    v19 = self->_has;
  }

  if ((v19 & 2) != 0)
  {
    v18[2] = self->_childRecordCount;
    *(v18 + 108) |= 2u;
  }

  if ([(HDCloudSyncCodableSequence *)self unfrozenChangeRecordNamesCount])
  {
    [v24 clearUnfrozenChangeRecordNames];
    unfrozenChangeRecordNamesCount = [(HDCloudSyncCodableSequence *)self unfrozenChangeRecordNamesCount];
    if (unfrozenChangeRecordNamesCount)
    {
      v21 = unfrozenChangeRecordNamesCount;
      for (m = 0; m != v21; ++m)
      {
        v23 = [(HDCloudSyncCodableSequence *)self unfrozenChangeRecordNamesAtIndex:m];
        [v24 addUnfrozenChangeRecordNames:v23];
      }
    }
  }

  if (self->_syncEntityVersionMap)
  {
    [v24 setSyncEntityVersionMap:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 80) = self->_slot;
    *(v5 + 108) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 104) = self->_active;
  *(v5 + 108) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_epoch;
    *(v5 + 108) |= 4u;
  }

LABEL_5:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = self->_includedStoreIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v53 + 1) + 8 * i) copyWithZone:zone];
        [v6 addIncludedStoreIdentifiers:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v10);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v14 = self->_includedSyncIdentities;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v49 + 1) + 8 * j) copyWithZone:zone];
        [v6 addIncludedSyncIdentities:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v16);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = self->_includedChildSyncIdentities;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v45 + 1) + 8 * k) copyWithZone:zone];
        [v6 addIncludedChildSyncIdentities:v25];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 32) = self->_protocolVersion;
    *(v6 + 108) |= 8u;
  }

  v26 = [(HDCodableSyncAnchorRangeMap *)self->_anchorMap copyWithZone:zone];
  v27 = *(v6 + 40);
  *(v6 + 40) = v26;

  v28 = [(HDCodableSyncAnchorRangeMap *)self->_frozenAnchorMap copyWithZone:zone];
  v29 = *(v6 + 48);
  *(v6 + 48) = v28;

  v30 = self->_has;
  if (v30)
  {
    *(v6 + 8) = self->_changeIndex;
    *(v6 + 108) |= 1u;
    v30 = self->_has;
  }

  if ((v30 & 2) != 0)
  {
    *(v6 + 16) = self->_childRecordCount;
    *(v6 + 108) |= 2u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = self->_unfrozenChangeRecordNames;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v41 + 1) + 8 * m) copyWithZone:{zone, v41}];
        [v6 addUnfrozenChangeRecordNames:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v33);
  }

  v37 = [(HDCodableSyncEntityVersionMap *)self->_syncEntityVersionMap copyWithZone:zone];
  v38 = *(v6 + 88);
  *(v6 + 88) = v37;

  v39 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 108);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 108) & 0x10) == 0 || self->_slot != *(equalCopy + 20))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 108) & 0x10) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 108) & 0x20) == 0)
    {
      goto LABEL_28;
    }

    v6 = *(equalCopy + 104);
    if (self->_active)
    {
      if ((*(equalCopy + 104) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(equalCopy + 104))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 108) & 0x20) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 108) & 4) == 0 || self->_epoch != *(equalCopy + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 108) & 4) != 0)
  {
    goto LABEL_28;
  }

  includedStoreIdentifiers = self->_includedStoreIdentifiers;
  if (includedStoreIdentifiers | *(equalCopy + 8) && ![(NSMutableArray *)includedStoreIdentifiers isEqual:?])
  {
    goto LABEL_28;
  }

  includedSyncIdentities = self->_includedSyncIdentities;
  if (includedSyncIdentities | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)includedSyncIdentities isEqual:?])
    {
      goto LABEL_28;
    }
  }

  includedChildSyncIdentities = self->_includedChildSyncIdentities;
  if (includedChildSyncIdentities | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)includedChildSyncIdentities isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v10 = *(equalCopy + 108);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 108) & 8) == 0 || self->_protocolVersion != *(equalCopy + 4))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 108) & 8) != 0)
  {
    goto LABEL_28;
  }

  anchorMap = self->_anchorMap;
  if (anchorMap | *(equalCopy + 5) && ![(HDCodableSyncAnchorRangeMap *)anchorMap isEqual:?])
  {
    goto LABEL_28;
  }

  frozenAnchorMap = self->_frozenAnchorMap;
  if (frozenAnchorMap | *(equalCopy + 6))
  {
    if (![(HDCodableSyncAnchorRangeMap *)frozenAnchorMap isEqual:?])
    {
      goto LABEL_28;
    }
  }

  v15 = *(equalCopy + 108);
  if (*&self->_has)
  {
    if ((*(equalCopy + 108) & 1) == 0 || self->_changeIndex != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 108))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 108) & 2) == 0)
    {
      goto LABEL_46;
    }

LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 108) & 2) == 0 || self->_childRecordCount != *(equalCopy + 2))
  {
    goto LABEL_28;
  }

LABEL_46:
  unfrozenChangeRecordNames = self->_unfrozenChangeRecordNames;
  if (unfrozenChangeRecordNames | *(equalCopy + 12) && ![(NSMutableArray *)unfrozenChangeRecordNames isEqual:?])
  {
    goto LABEL_28;
  }

  syncEntityVersionMap = self->_syncEntityVersionMap;
  if (syncEntityVersionMap | *(equalCopy + 11))
  {
    v11 = [(HDCodableSyncEntityVersionMap *)syncEntityVersionMap isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_29:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) == 0)
  {
    v16 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 2654435761 * self->_slot;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_active;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_epoch;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(NSMutableArray *)self->_includedStoreIdentifiers hash];
  v6 = [(NSMutableArray *)self->_includedSyncIdentities hash];
  v7 = [(NSMutableArray *)self->_includedChildSyncIdentities hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_protocolVersion;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(HDCodableSyncAnchorRangeMap *)self->_anchorMap hash];
  v10 = [(HDCodableSyncAnchorRangeMap *)self->_frozenAnchorMap hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_changeIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v12 = 2654435761 * self->_childRecordCount;
LABEL_16:
  v13 = v3 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v14 = v11 ^ v12 ^ [(NSMutableArray *)self->_unfrozenChangeRecordNames hash];
  return v13 ^ v14 ^ [(HDCodableSyncEntityVersionMap *)self->_syncEntityVersionMap hash];
}

- (void)mergeFrom:(id)from
{
  v55 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 108);
  if ((v6 & 0x10) != 0)
  {
    self->_slot = *(fromCopy + 20);
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 108);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 108) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_active = *(fromCopy + 104);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 108) & 4) != 0)
  {
LABEL_4:
    self->_epoch = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = *(fromCopy + 8);
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCloudSyncCodableSequence *)self addIncludedStoreIdentifiers:*(*(&v47 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v9);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = *(v5 + 9);
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HDCloudSyncCodableSequence *)self addIncludedSyncIdentities:*(*(&v43 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v14);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = *(v5 + 7);
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(HDCloudSyncCodableSequence *)self addIncludedChildSyncIdentities:*(*(&v39 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v19);
  }

  if ((*(v5 + 108) & 8) != 0)
  {
    self->_protocolVersion = *(v5 + 4);
    *&self->_has |= 8u;
  }

  anchorMap = self->_anchorMap;
  v23 = *(v5 + 5);
  if (anchorMap)
  {
    if (v23)
    {
      [(HDCodableSyncAnchorRangeMap *)anchorMap mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(HDCloudSyncCodableSequence *)self setAnchorMap:?];
  }

  frozenAnchorMap = self->_frozenAnchorMap;
  v25 = *(v5 + 6);
  if (frozenAnchorMap)
  {
    if (v25)
    {
      [(HDCodableSyncAnchorRangeMap *)frozenAnchorMap mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(HDCloudSyncCodableSequence *)self setFrozenAnchorMap:?];
  }

  v26 = *(v5 + 108);
  if (v26)
  {
    self->_changeIndex = *(v5 + 1);
    *&self->_has |= 1u;
    v26 = *(v5 + 108);
  }

  if ((v26 & 2) != 0)
  {
    self->_childRecordCount = *(v5 + 2);
    *&self->_has |= 2u;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = *(v5 + 12);
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(HDCloudSyncCodableSequence *)self addUnfrozenChangeRecordNames:*(*(&v35 + 1) + 8 * m), v35];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v29);
  }

  syncEntityVersionMap = self->_syncEntityVersionMap;
  v33 = *(v5 + 11);
  if (syncEntityVersionMap)
  {
    if (v33)
    {
      [(HDCodableSyncEntityVersionMap *)syncEntityVersionMap mergeFrom:?];
    }
  }

  else if (v33)
  {
    [(HDCloudSyncCodableSequence *)self setSyncEntityVersionMap:?];
  }

  v34 = *MEMORY[0x277D85DE8];
}

@end