@interface HDCodableObjectTypeSourceOrder
- (BOOL)isEqual:(id)equal;
- (double)modificationDatesAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasUserOrdered:(BOOL)ordered;
- (void)writeTo:(id)to;
@end

@implementation HDCodableObjectTypeSourceOrder

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = HDCodableObjectTypeSourceOrder;
  [(HDCodableObjectTypeSourceOrder *)&v3 dealloc];
}

- (void)setHasUserOrdered:(BOOL)ordered
{
  if (ordered)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (double)modificationDatesAtIndex:(unint64_t)index
{
  p_modificationDates = &self->_modificationDates;
  count = self->_modificationDates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_modificationDates->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableObjectTypeSourceOrder;
  v4 = [(HDCodableObjectTypeSourceOrder *)&v8 description];
  dictionaryRepresentation = [(HDCodableObjectTypeSourceOrder *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_objectType];
    [dictionary setObject:v5 forKey:@"objectType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_userOrdered];
    [dictionary setObject:v6 forKey:@"userOrdered"];
  }

  sourceUUIDs = self->_sourceUUIDs;
  if (sourceUUIDs)
  {
    [dictionary setObject:sourceUUIDs forKey:@"sourceUUIDs"];
  }

  v8 = PBRepeatedDoubleNSArray();
  [dictionary setObject:v8 forKey:@"modificationDates"];

  syncIdentity = self->_syncIdentity;
  if (syncIdentity)
  {
    dictionaryRepresentation = [(HDCodableSyncIdentity *)syncIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"syncIdentity"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    objectType = self->_objectType;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    userOrdered = self->_userOrdered;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

  if (self->_sourceUUIDs)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  if (self->_modificationDates.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_modificationDates.list[v8];
      PBDataWriterWriteDoubleField();
      toCopy = v10;
      ++v8;
    }

    while (v8 < self->_modificationDates.count);
  }

  if (self->_syncIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_objectType;
    *(toCopy + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 56) = self->_userOrdered;
    *(toCopy + 60) |= 2u;
  }

  v9 = toCopy;
  if (self->_sourceUUIDs)
  {
    [toCopy setSourceUUIDs:?];
  }

  if ([(HDCodableObjectTypeSourceOrder *)self modificationDatesCount])
  {
    [v9 clearModificationDates];
    modificationDatesCount = [(HDCodableObjectTypeSourceOrder *)self modificationDatesCount];
    if (modificationDatesCount)
    {
      v7 = modificationDatesCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_sourceUUIDs copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  PBRepeatedDoubleCopy();
  v10 = [(HDCodableSyncIdentity *)self->_syncIdentity copyWithZone:zone];
  v11 = v6[6];
  v6[6] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_objectType != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if ((*(equalCopy + 60) & 2) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(equalCopy + 56);
  if (self->_userOrdered)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_15;
  }

LABEL_9:
  sourceUUIDs = self->_sourceUUIDs;
  if (sourceUUIDs | *(equalCopy + 5) && ![(NSData *)sourceUUIDs isEqual:?]|| !PBRepeatedDoubleIsEqual())
  {
    goto LABEL_15;
  }

  syncIdentity = self->_syncIdentity;
  if (syncIdentity | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if (v6)
  {
    self->_objectType = *(fromCopy + 4);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 60);
  }

  if ((v6 & 2) != 0)
  {
    self->_userOrdered = *(fromCopy + 56);
    *&self->_has |= 2u;
  }

  v13 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HDCodableObjectTypeSourceOrder *)self setSourceUUIDs:?];
    v5 = v13;
  }

  modificationDatesCount = [v5 modificationDatesCount];
  if (modificationDatesCount)
  {
    v8 = modificationDatesCount;
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