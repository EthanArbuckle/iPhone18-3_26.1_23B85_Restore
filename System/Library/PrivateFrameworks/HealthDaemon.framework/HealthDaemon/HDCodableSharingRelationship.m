@interface HDCodableSharingRelationship
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRecipientType:(id)a3;
- (int)recipientType;
- (unint64_t)hash;
- (void)addAuthorizationIdentifiers:(id)a3;
- (void)addSharingAuthorizations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRecipientType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSharingRelationship

- (int)recipientType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_recipientType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecipientType:(BOOL)a3
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

- (int)StringAsRecipientType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SharedSummary"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ClinicalAccount"];
  }

  return v4;
}

- (void)addAuthorizationIdentifiers:(id)a3
{
  v4 = a3;
  authorizationIdentifiers = self->_authorizationIdentifiers;
  v8 = v4;
  if (!authorizationIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizationIdentifiers;
    self->_authorizationIdentifiers = v6;

    v4 = v8;
    authorizationIdentifiers = self->_authorizationIdentifiers;
  }

  [(NSMutableArray *)authorizationIdentifiers addObject:v4];
}

- (void)addSharingAuthorizations:(id)a3
{
  v4 = a3;
  sharingAuthorizations = self->_sharingAuthorizations;
  v8 = v4;
  if (!sharingAuthorizations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sharingAuthorizations;
    self->_sharingAuthorizations = v6;

    v4 = v8;
    sharingAuthorizations = self->_sharingAuthorizations;
  }

  [(NSMutableArray *)sharingAuthorizations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingRelationship;
  v4 = [(HDCodableSharingRelationship *)&v8 description];
  v5 = [(HDCodableSharingRelationship *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier)
  {
    [v3 setObject:recipientIdentifier forKey:@"recipientIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    recipientType = self->_recipientType;
    if (recipientType)
    {
      if (recipientType == 1)
      {
        v8 = @"ClinicalAccount";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_recipientType];
      }
    }

    else
    {
      v8 = @"SharedSummary";
    }

    [v4 setObject:v8 forKey:@"recipientType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateModified];
    [v4 setObject:v9 forKey:@"dateModified"];
  }

  authorizationIdentifiers = self->_authorizationIdentifiers;
  if (authorizationIdentifiers)
  {
    [v4 setObject:authorizationIdentifiers forKey:@"authorizationIdentifiers"];
  }

  if ([(NSMutableArray *)self->_sharingAuthorizations count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sharingAuthorizations, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_sharingAuthorizations;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"sharingAuthorizations"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v19 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v19 forKey:@"syncIdentity"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_recipientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    recipientType = self->_recipientType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    dateModified = self->_dateModified;
    PBDataWriterWriteDoubleField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_authorizationIdentifiers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_sharingAuthorizations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_recipientIdentifier)
  {
    [v4 setRecipientIdentifier:?];
    v4 = v14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_recipientType;
    *(v4 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_dateModified;
    *(v4 + 56) |= 1u;
  }

  if ([(HDCodableSharingRelationship *)self authorizationIdentifiersCount])
  {
    [v14 clearAuthorizationIdentifiers];
    v6 = [(HDCodableSharingRelationship *)self authorizationIdentifiersCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableSharingRelationship *)self authorizationIdentifiersAtIndex:i];
        [v14 addAuthorizationIdentifiers:v9];
      }
    }
  }

  if ([(HDCodableSharingRelationship *)self sharingAuthorizationsCount])
  {
    [v14 clearSharingAuthorizations];
    v10 = [(HDCodableSharingRelationship *)self sharingAuthorizationsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableSharingRelationship *)self sharingAuthorizationsAtIndex:j];
        [v14 addSharingAuthorizations:v13];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v14 setSyncIdentity:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_recipientIdentifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_recipientType;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_dateModified;
    *(v5 + 56) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = self->_authorizationIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAuthorizationIdentifiers:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_sharingAuthorizations;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * j) copyWithZone:{a3, v25}];
        [v5 addSharingAuthorizations:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v21 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v22 = *(v5 + 48);
  *(v5 + 48) = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  recipientIdentifier = self->_recipientIdentifier;
  if (recipientIdentifier | *(v4 + 3))
  {
    if (![(NSString *)recipientIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v6 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_recipientType != *(v4 + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_dateModified != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_20;
  }

  authorizationIdentifiers = self->_authorizationIdentifiers;
  if (authorizationIdentifiers | *(v4 + 2) && ![(NSMutableArray *)authorizationIdentifiers isEqual:?])
  {
    goto LABEL_20;
  }

  sharingAuthorizations = self->_sharingAuthorizations;
  if (sharingAuthorizations | *(v4 + 5))
  {
    if (![(NSMutableArray *)sharingAuthorizations isEqual:?])
    {
      goto LABEL_20;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 6))
  {
    v10 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recipientIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_recipientType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  dateModified = self->_dateModified;
  if (dateModified < 0.0)
  {
    dateModified = -dateModified;
  }

  *v4.i64 = floor(dateModified + 0.5);
  v8 = (dateModified - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  v11 = v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_authorizationIdentifiers hash];
  v12 = [(NSMutableArray *)self->_sharingAuthorizations hash];
  return v11 ^ v12 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(HDCodableSharingRelationship *)self setRecipientIdentifier:?];
  }

  v5 = *(v4 + 56);
  if ((v5 & 2) != 0)
  {
    self->_recipientType = *(v4 + 8);
    *&self->_has |= 2u;
    v5 = *(v4 + 56);
  }

  if (v5)
  {
    self->_dateModified = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HDCodableSharingRelationship *)self addAuthorizationIdentifiers:*(*(&v23 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = *(v4 + 5);
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(HDCodableSharingRelationship *)self addSharingAuthorizations:*(*(&v19 + 1) + 8 * j), v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  syncIdentity = self->_syncIdentity;
  v17 = *(v4 + 6);
  if (syncIdentity)
  {
    if (v17)
    {
      [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(HDCodableSharingRelationship *)self setSyncIdentity:?];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end