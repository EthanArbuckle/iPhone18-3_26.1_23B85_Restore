@interface HDCloudSyncCodableRegistry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDisabledOwnerIdentifiers:(id)a3;
- (void)addDisabledSyncIdentities:(id)a3;
- (void)addStores:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableRegistry

- (void)addDisabledOwnerIdentifiers:(id)a3
{
  v4 = a3;
  disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  v8 = v4;
  if (!disabledOwnerIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_disabledOwnerIdentifiers;
    self->_disabledOwnerIdentifiers = v6;

    v4 = v8;
    disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  }

  [(NSMutableArray *)disabledOwnerIdentifiers addObject:v4];
}

- (void)addStores:(id)a3
{
  v4 = a3;
  stores = self->_stores;
  v8 = v4;
  if (!stores)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stores;
    self->_stores = v6;

    v4 = v8;
    stores = self->_stores;
  }

  [(NSMutableArray *)stores addObject:v4];
}

- (void)addDisabledSyncIdentities:(id)a3
{
  v4 = a3;
  disabledSyncIdentities = self->_disabledSyncIdentities;
  v8 = v4;
  if (!disabledSyncIdentities)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_disabledSyncIdentities;
    self->_disabledSyncIdentities = v6;

    v4 = v8;
    disabledSyncIdentities = self->_disabledSyncIdentities;
  }

  [(NSMutableArray *)disabledSyncIdentities addObject:v4];
}

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableRegistry;
  v4 = [(HDCloudSyncCodableRegistry *)&v8 description];
  v5 = [(HDCloudSyncCodableRegistry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  if (disabledOwnerIdentifiers)
  {
    [v3 setObject:disabledOwnerIdentifiers forKey:@"disabledOwnerIdentifiers"];
  }

  if ([(NSMutableArray *)self->_stores count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_stores, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = self->_stores;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"stores"];
  }

  if ([(NSMutableArray *)self->_disabledSyncIdentities count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_disabledSyncIdentities, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = self->_disabledSyncIdentities;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"disabledSyncIdentities"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v20 forKey:@"deleted"];
  }

  displayFirstName = self->_displayFirstName;
  if (displayFirstName)
  {
    [v4 setObject:displayFirstName forKey:@"displayFirstName"];
  }

  if (*&self->_has)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_displayNameModificationDate];
    [v4 setObject:v22 forKey:@"displayNameModificationDate"];
  }

  displayLastName = self->_displayLastName;
  if (displayLastName)
  {
    [v4 setObject:displayLastName forKey:@"displayLastName"];
  }

  ownerProfileIdentifier = self->_ownerProfileIdentifier;
  if (ownerProfileIdentifier)
  {
    v25 = [(HDCloudSyncCodableProfileIdentifier *)ownerProfileIdentifier dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"ownerProfileIdentifier"];
  }

  sharedProfileIdentifier = self->_sharedProfileIdentifier;
  if (sharedProfileIdentifier)
  {
    v27 = [(HDCloudSyncCodableProfileIdentifier *)sharedProfileIdentifier dictionaryRepresentation];
    [v4 setObject:v27 forKey:@"sharedProfileIdentifier"];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_disabledOwnerIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = self->_stores;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = self->_disabledSyncIdentities;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v19);
  }

  if ((*&self->_has & 2) != 0)
  {
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_displayFirstName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    displayNameModificationDate = self->_displayNameModificationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_displayLastName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ownerProfileIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_sharedProfileIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  if ([(HDCloudSyncCodableRegistry *)self disabledOwnerIdentifiersCount])
  {
    [v17 clearDisabledOwnerIdentifiers];
    v4 = [(HDCloudSyncCodableRegistry *)self disabledOwnerIdentifiersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableRegistry *)self disabledOwnerIdentifiersAtIndex:i];
        [v17 addDisabledOwnerIdentifiers:v7];
      }
    }
  }

  if ([(HDCloudSyncCodableRegistry *)self storesCount])
  {
    [v17 clearStores];
    v8 = [(HDCloudSyncCodableRegistry *)self storesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HDCloudSyncCodableRegistry *)self storesAtIndex:j];
        [v17 addStores:v11];
      }
    }
  }

  if ([(HDCloudSyncCodableRegistry *)self disabledSyncIdentitiesCount])
  {
    [v17 clearDisabledSyncIdentities];
    v12 = [(HDCloudSyncCodableRegistry *)self disabledSyncIdentitiesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HDCloudSyncCodableRegistry *)self disabledSyncIdentitiesAtIndex:k];
        [v17 addDisabledSyncIdentities:v15];
      }
    }
  }

  v16 = v17;
  if ((*&self->_has & 2) != 0)
  {
    v17[72] = self->_deleted;
    v17[76] |= 2u;
  }

  if (self->_displayFirstName)
  {
    [v17 setDisplayFirstName:?];
    v16 = v17;
  }

  if (*&self->_has)
  {
    *(v16 + 1) = *&self->_displayNameModificationDate;
    v16[76] |= 1u;
  }

  if (self->_displayLastName)
  {
    [v17 setDisplayLastName:?];
    v16 = v17;
  }

  if (self->_ownerProfileIdentifier)
  {
    [v17 setOwnerProfileIdentifier:?];
    v16 = v17;
  }

  if (self->_sharedProfileIdentifier)
  {
    [v17 setSharedProfileIdentifier:?];
    v16 = v17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = self->_disabledOwnerIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v42 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addDisabledOwnerIdentifiers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v8);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = self->_stores;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v38 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addStores:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v14);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = self->_disabledSyncIdentities;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v34 + 1) + 8 * v22) copyWithZone:{a3, v34}];
        [v5 addDisabledSyncIdentities:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v20);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 72) = self->_deleted;
    *(v5 + 76) |= 2u;
  }

  v24 = [(NSString *)self->_displayFirstName copyWithZone:a3, v34];
  v25 = *(v5 + 32);
  *(v5 + 32) = v24;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_displayNameModificationDate;
    *(v5 + 76) |= 1u;
  }

  v26 = [(NSString *)self->_displayLastName copyWithZone:a3];
  v27 = *(v5 + 40);
  *(v5 + 40) = v26;

  v28 = [(HDCloudSyncCodableProfileIdentifier *)self->_ownerProfileIdentifier copyWithZone:a3];
  v29 = *(v5 + 48);
  *(v5 + 48) = v28;

  v30 = [(HDCloudSyncCodableProfileIdentifier *)self->_sharedProfileIdentifier copyWithZone:a3];
  v31 = *(v5 + 56);
  *(v5 + 56) = v30;

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  disabledOwnerIdentifiers = self->_disabledOwnerIdentifiers;
  if (disabledOwnerIdentifiers | *(v4 + 2))
  {
    if (![(NSMutableArray *)disabledOwnerIdentifiers isEqual:?])
    {
      goto LABEL_29;
    }
  }

  stores = self->_stores;
  if (stores | *(v4 + 8))
  {
    if (![(NSMutableArray *)stores isEqual:?])
    {
      goto LABEL_29;
    }
  }

  disabledSyncIdentities = self->_disabledSyncIdentities;
  if (disabledSyncIdentities | *(v4 + 3))
  {
    if (![(NSMutableArray *)disabledSyncIdentities isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  v9 = *(v4 + 76);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0)
    {
      goto LABEL_29;
    }

    v11 = *(v4 + 72);
    if (self->_deleted)
    {
      if ((*(v4 + 72) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_29;
  }

  displayFirstName = self->_displayFirstName;
  if (!(displayFirstName | *(v4 + 4)))
  {
    goto LABEL_13;
  }

  if (![(NSString *)displayFirstName isEqual:?])
  {
LABEL_29:
    v15 = 0;
    goto LABEL_30;
  }

  has = self->_has;
  v9 = *(v4 + 76);
LABEL_13:
  if (has)
  {
    if ((v9 & 1) == 0 || self->_displayNameModificationDate != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (v9)
  {
    goto LABEL_29;
  }

  displayLastName = self->_displayLastName;
  if (displayLastName | *(v4 + 5) && ![(NSString *)displayLastName isEqual:?])
  {
    goto LABEL_29;
  }

  ownerProfileIdentifier = self->_ownerProfileIdentifier;
  if (ownerProfileIdentifier | *(v4 + 6))
  {
    if (![(HDCloudSyncCodableProfileIdentifier *)ownerProfileIdentifier isEqual:?])
    {
      goto LABEL_29;
    }
  }

  sharedProfileIdentifier = self->_sharedProfileIdentifier;
  if (sharedProfileIdentifier | *(v4 + 7))
  {
    v15 = [(HDCloudSyncCodableProfileIdentifier *)sharedProfileIdentifier isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_30:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_disabledOwnerIdentifiers hash];
  v4 = [(NSMutableArray *)self->_stores hash];
  v5 = [(NSMutableArray *)self->_disabledSyncIdentities hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_deleted;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_displayFirstName hash];
  if (*&self->_has)
  {
    displayNameModificationDate = self->_displayNameModificationDate;
    if (displayNameModificationDate < 0.0)
    {
      displayNameModificationDate = -displayNameModificationDate;
    }

    *v8.i64 = floor(displayNameModificationDate + 0.5);
    v12 = (displayNameModificationDate - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ [(NSString *)self->_displayLastName hash];
  v15 = [(HDCloudSyncCodableProfileIdentifier *)self->_ownerProfileIdentifier hash];
  return v14 ^ v15 ^ [(HDCloudSyncCodableProfileIdentifier *)self->_sharedProfileIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCloudSyncCodableRegistry *)self addDisabledOwnerIdentifiers:*(*(&v33 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = *(v4 + 8);
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HDCloudSyncCodableRegistry *)self addStores:*(*(&v29 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = *(v4 + 3);
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(HDCloudSyncCodableRegistry *)self addDisabledSyncIdentities:*(*(&v25 + 1) + 8 * k), v25];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v17);
  }

  if ((*(v4 + 76) & 2) != 0)
  {
    self->_deleted = *(v4 + 72);
    *&self->_has |= 2u;
  }

  if (*(v4 + 4))
  {
    [(HDCloudSyncCodableRegistry *)self setDisplayFirstName:?];
  }

  if (*(v4 + 76))
  {
    self->_displayNameModificationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(HDCloudSyncCodableRegistry *)self setDisplayLastName:?];
  }

  ownerProfileIdentifier = self->_ownerProfileIdentifier;
  v21 = *(v4 + 6);
  if (ownerProfileIdentifier)
  {
    if (v21)
    {
      [(HDCloudSyncCodableProfileIdentifier *)ownerProfileIdentifier mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(HDCloudSyncCodableRegistry *)self setOwnerProfileIdentifier:?];
  }

  sharedProfileIdentifier = self->_sharedProfileIdentifier;
  v23 = *(v4 + 7);
  if (sharedProfileIdentifier)
  {
    if (v23)
    {
      [(HDCloudSyncCodableProfileIdentifier *)sharedProfileIdentifier mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(HDCloudSyncCodableRegistry *)self setSharedProfileIdentifier:?];
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end