@interface HDCodableObjectTypeSourceOrder
- (BOOL)isEqual:(id)a3;
- (double)modificationDatesAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasUserOrdered:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableObjectTypeSourceOrder

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = HDCodableObjectTypeSourceOrder;
  [(HDCodableObjectTypeSourceOrder *)&v3 dealloc];
}

- (void)setHasUserOrdered:(BOOL)a3
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

- (double)modificationDatesAtIndex:(unint64_t)a3
{
  p_modificationDates = &self->_modificationDates;
  count = self->_modificationDates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_modificationDates->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableObjectTypeSourceOrder;
  v4 = [(HDCodableObjectTypeSourceOrder *)&v8 description];
  v5 = [(HDCodableObjectTypeSourceOrder *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_objectType];
    [v3 setObject:v5 forKey:@"objectType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_userOrdered];
    [v3 setObject:v6 forKey:@"userOrdered"];
  }

  sourceUUIDs = self->_sourceUUIDs;
  if (sourceUUIDs)
  {
    [v3 setObject:sourceUUIDs forKey:@"sourceUUIDs"];
  }

  v8 = PBRepeatedDoubleNSArray();
  [v3 setObject:v8 forKey:@"modificationDates"];

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    v10 = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"syncIdentity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    userOrdered = self->_userOrdered;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_sourceUUIDs)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_modificationDates.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_modificationDates.list[v8];
      PBDataWriterWriteDoubleField();
      v4 = v10;
      ++v8;
    }

    while (v8 < self->_modificationDates.count);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_objectType;
    *(v4 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 56) = self->_userOrdered;
    *(v4 + 60) |= 2u;
  }

  v9 = v4;
  if (self->_sourceUUIDs)
  {
    [v4 setSourceUUIDs:?];
  }

  if ([(HDCodableObjectTypeSourceOrder *)self modificationDatesCount])
  {
    [v9 clearModificationDates];
    v6 = [(HDCodableObjectTypeSourceOrder *)self modificationDatesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [(HDCodableObjectTypeSourceOrder *)self modificationDatesAtIndex:i];
        [v9 addModificationDates:?];
      }
    }
  }

  if (self->_syncIdentity)
  {
    [v9 setSyncIdentity:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_objectType;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_userOrdered;
    *(v5 + 60) |= 2u;
  }

  v8 = [(NSData *)self->_sourceUUIDs copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  PBRepeatedDoubleCopy();
  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:a3];
  v11 = v6[6];
  v6[6] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_objectType != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ((*(v4 + 60) & 2) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(v4 + 56);
  if (self->_userOrdered)
  {
    if ((*(v4 + 56) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_15;
  }

LABEL_9:
  sourceUUIDs = self->_sourceUUIDs;
  if (sourceUUIDs | *(v4 + 5) && ![(NSData *)sourceUUIDs isEqual:?]|| !PBRepeatedDoubleIsEqual())
  {
    goto LABEL_15;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(v4 + 6))
  {
    v8 = [(HDCodableSyncIdentity *)syncIdentity isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_objectType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_userOrdered;
LABEL_6:
  v5 = v4 ^ v3;
  v6 = [(NSData *)self->_sourceUUIDs hash];
  v7 = v5 ^ PBRepeatedDoubleHash() ^ v6;
  return v7 ^ [(HDCodableSyncIdentity *)self->_syncIdentity hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if (v6)
  {
    self->_objectType = *(v4 + 4);
    *&self->_has |= 1u;
    v6 = *(v4 + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_userOrdered = *(v4 + 56);
    *&self->_has |= 2u;
  }

  v13 = v4;
  if (*(v4 + 5))
  {
    [(HDCodableObjectTypeSourceOrder *)self setSourceUUIDs:?];
    v5 = v13;
  }

  v7 = [v5 modificationDatesCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      [v13 modificationDatesAtIndex:i];
      [(HDCodableObjectTypeSourceOrder *)self addModificationDates:?];
    }
  }

  syncIdentity = self->_syncIdentity;
  v11 = v13;
  v12 = v13[6];
  if (syncIdentity)
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    syncIdentity = [(HDCodableSyncIdentity *)syncIdentity mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_16;
    }

    syncIdentity = [(HDCodableObjectTypeSourceOrder *)self setSyncIdentity:?];
  }

  v11 = v13;
LABEL_16:

  MEMORY[0x2821F96F8](syncIdentity, v11);
}

@end