@interface HDCodableTypedObjectAssociation
- (BOOL)isEqual:(id)a3;
- (HDCodableTypedObjectAssociation)initWithIntermediateSyncAssociation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedCreationDate;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCreationDate:(BOOL)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableTypedObjectAssociation

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCreationDate:(BOOL)a3
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
  v8.super_class = HDCodableTypedObjectAssociation;
  v4 = [(HDCodableTypedObjectAssociation *)&v8 description];
  v5 = [(HDCodableTypedObjectAssociation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  associationUUID = self->_associationUUID;
  if (associationUUID)
  {
    [v3 setObject:associationUUID forKey:@"associationUUID"];
  }

  objectUUIDs = self->_objectUUIDs;
  if (objectUUIDs)
  {
    [v4 setObject:objectUUIDs forKey:@"objectUUIDs"];
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v8 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"syncIdentity"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v14 forKey:@"type"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
  [v4 setObject:v15 forKey:@"deleted"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
    [v4 setObject:v10 forKey:@"creationDate"];
  }

LABEL_11:
  subObjectUUID = self->_subObjectUUID;
  if (subObjectUUID)
  {
    [v4 setObject:subObjectUUID forKey:@"subObjectUUID"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_behavior];
    [v4 setObject:v12 forKey:@"behavior"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_associationUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_objectUUIDs)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  deleted = self->_deleted;
  PBDataWriterWriteBOOLField();
  v4 = v10;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_11:
  if (self->_subObjectUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (*&self->_has)
  {
    behavior = self->_behavior;
    PBDataWriterWriteInt64Field();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_associationUUID)
  {
    [v4 setAssociationUUID:?];
    v4 = v6;
  }

  if (self->_objectUUIDs)
  {
    [v6 setObjectUUIDs:?];
    v4 = v6;
  }

  if (self->_syncIdentity)
  {
    [v6 setSyncIdentity:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_type;
    *(v4 + 68) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 64) = self->_deleted;
  *(v4 + 68) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(v4 + 2) = *&self->_creationDate;
    *(v4 + 68) |= 2u;
  }

LABEL_11:
  if (self->_subObjectUUID)
  {
    [v6 setSubObjectUUID:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_behavior;
    *(v4 + 68) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_associationUUID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_objectUUIDs copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 68) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 64) = self->_deleted;
  *(v5 + 68) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_creationDate;
    *(v5 + 68) |= 2u;
  }

LABEL_5:
  v13 = [(NSData *)self->_subObjectUUID copyWithZone:a3];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_behavior;
    *(v5 + 68) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  associationUUID = self->_associationUUID;
  if (associationUUID | *(v4 + 4))
  {
    if (![(NSData *)associationUUID isEqual:?])
    {
      goto LABEL_32;
    }
  }

  objectUUIDs = self->_objectUUIDs;
  if (objectUUIDs | *(v4 + 5))
  {
    if (![(NSData *)objectUUIDs isEqual:?])
    {
      goto LABEL_32;
    }
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 7))
  {
    if (![(HDCodableSyncIdentity *)syncIdentity isEqual:?])
    {
      goto LABEL_32;
    }
  }

  has = self->_has;
  v9 = *(v4 + 68);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 68) & 4) == 0 || self->_type != *(v4 + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 68) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 68) & 8) == 0)
    {
      goto LABEL_32;
    }

    v10 = *(v4 + 64);
    if (self->_deleted)
    {
      if ((*(v4 + 64) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(v4 + 64))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 68) & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0 || self->_creationDate != *(v4 + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 68) & 2) != 0)
  {
    goto LABEL_32;
  }

  subObjectUUID = self->_subObjectUUID;
  if (subObjectUUID | *(v4 + 6))
  {
    if ([(NSData *)subObjectUUID isEqual:?])
    {
      has = self->_has;
      v9 = *(v4 + 68);
      goto LABEL_27;
    }

LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

LABEL_27:
  v12 = (v9 & 1) == 0;
  if (has)
  {
    if ((v9 & 1) == 0 || self->_behavior != *(v4 + 1))
    {
      goto LABEL_32;
    }

    v12 = 1;
  }

LABEL_33:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_associationUUID hash];
  v4 = [(NSData *)self->_objectUUIDs hash];
  v5 = [(HDCodableSyncIdentity *)self->_syncIdentity hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v8 = 2654435761 * self->_type;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = 2654435761 * self->_deleted;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  creationDate = self->_creationDate;
  if (creationDate < 0.0)
  {
    creationDate = -creationDate;
  }

  *v6.i64 = floor(creationDate + 0.5);
  v11 = (creationDate - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_11:
  v14 = [(NSData *)self->_subObjectUUID hash];
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_behavior;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 4))
  {
    [(HDCodableTypedObjectAssociation *)self setAssociationUUID:?];
    v4 = v8;
  }

  if (*(v4 + 5))
  {
    [(HDCodableTypedObjectAssociation *)self setObjectUUIDs:?];
    v4 = v8;
  }

  syncIdentity = self->_syncIdentity;
  v6 = *(v4 + 7);
  if (syncIdentity)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(HDCodableTypedObjectAssociation *)self setSyncIdentity:?];
  }

  v4 = v8;
LABEL_11:
  v7 = *(v4 + 68);
  if ((v7 & 4) != 0)
  {
    self->_type = *(v4 + 3);
    *&self->_has |= 4u;
    v7 = *(v4 + 68);
    if ((v7 & 8) == 0)
    {
LABEL_13:
      if ((v7 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 68) & 8) == 0)
  {
    goto LABEL_13;
  }

  self->_deleted = *(v4 + 64);
  *&self->_has |= 8u;
  if ((*(v4 + 68) & 2) != 0)
  {
LABEL_14:
    self->_creationDate = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_15:
  if (*(v4 + 6))
  {
    [(HDCodableTypedObjectAssociation *)self setSubObjectUUID:?];
    v4 = v8;
  }

  if (*(v4 + 68))
  {
    self->_behavior = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

- (HDCodableTypedObjectAssociation)initWithIntermediateSyncAssociation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDCodableTypedObjectAssociation;
  v5 = [(HDCodableTypedObjectAssociation *)&v13 init];
  if (v5)
  {
    v6 = [v4 associationUUID];
    v7 = [v6 hk_dataForUUIDBytes];
    [(HDCodableTypedObjectAssociation *)v5 setAssociationUUID:v7];

    -[HDCodableTypedObjectAssociation setType:](v5, "setType:", [v4 type]);
    -[HDCodableTypedObjectAssociation setBehavior:](v5, "setBehavior:", [v4 behavior]);
    -[HDCodableTypedObjectAssociation setDeleted:](v5, "setDeleted:", [v4 deleted]);
    v8 = [v4 creationDate];
    [v8 timeIntervalSinceReferenceDate];
    [(HDCodableTypedObjectAssociation *)v5 setCreationDate:?];

    v9 = [v4 destinationSubObjectUUID];

    if (v9)
    {
      v10 = [v4 destinationSubObjectUUID];
      v11 = [v10 hk_dataForUUIDBytes];
      [(HDCodableTypedObjectAssociation *)v5 setSubObjectUUID:v11];
    }
  }

  return v5;
}

- (id)decodedCreationDate
{
  if ((*&self->_has & 2) != 0)
  {
    creationDate = self->_creationDate;
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end