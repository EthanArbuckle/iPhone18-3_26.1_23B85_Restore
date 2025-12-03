@interface IDSQRProtoParticipantUpdateIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)participantIdListAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasOperationFlags:(BOOL)flags;
- (void)setHasSessionStateCounter:(BOOL)counter;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoParticipantUpdateIndication

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantUpdateIndication;
  [(IDSQRProtoParticipantUpdateIndication *)&v3 dealloc];
}

- (unint64_t)participantIdListAtIndex:(unint64_t)index
{
  p_participantIdLists = &self->_participantIdLists;
  count = self->_participantIdLists.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_participantIdLists->list[index];
}

- (void)setHasOperationFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSessionStateCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantUpdateIndication;
  v4 = [(IDSQRProtoParticipantUpdateIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoParticipantUpdateIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v4 forKey:@"participant_id_list"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_operationFlags];
    [dictionary setObject:v8 forKey:@"operation_flags"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
  [dictionary setObject:v9 forKey:@"txn_id"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [dictionary setObject:v6 forKey:@"session_state_counter"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_participantIdLists.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      toCopy = v7;
      ++v5;
    }

    while (v5 < self->_participantIdLists.count);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v7;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_6:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

  PBDataWriterWriteUint64Field();
  toCopy = v7;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(IDSQRProtoParticipantUpdateIndication *)self participantIdListsCount])
  {
    [toCopy clearParticipantIdLists];
    participantIdListsCount = [(IDSQRProtoParticipantUpdateIndication *)self participantIdListsCount];
    if (participantIdListsCount)
    {
      v5 = participantIdListsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addParticipantIdList:{-[IDSQRProtoParticipantUpdateIndication participantIdListAtIndex:](self, "participantIdListAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_operationFlags;
    *(toCopy + 48) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 4) = self->_txnId;
  *(toCopy + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 11) = self->_sessionStateCounter;
    *(toCopy + 48) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt64Copy();
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 32) = self->_txnId;
    *(v4 + 48) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v4;
    }

    goto LABEL_4;
  }

  *(v4 + 40) = self->_operationFlags;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v4 + 44) = self->_sessionStateCounter;
    *(v4 + 48) |= 4u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_operationFlags != *(equalCopy + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_txnId != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_17;
  }

  v5 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_sessionStateCounter != *(equalCopy + 11))
    {
      goto LABEL_17;
    }

    v5 = 1;
  }

LABEL_18:

  return v5;
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt64Hash();
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_operationFlags;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761u * self->_txnId;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_sessionStateCounter;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  participantIdListsCount = [fromCopy participantIdListsCount];
  if (participantIdListsCount)
  {
    v5 = participantIdListsCount;
    for (i = 0; i != v5; ++i)
    {
      -[IDSQRProtoParticipantUpdateIndication addParticipantIdList:](self, "addParticipantIdList:", [fromCopy participantIdListAtIndex:i]);
    }
  }

  v7 = *(fromCopy + 48);
  if ((v7 & 2) != 0)
  {
    self->_operationFlags = *(fromCopy + 10);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 48);
    if ((v7 & 1) == 0)
    {
LABEL_6:
      if ((v7 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(fromCopy + 48) & 1) == 0)
  {
    goto LABEL_6;
  }

  self->_txnId = *(fromCopy + 4);
  *&self->_has |= 1u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_7:
    self->_sessionStateCounter = *(fromCopy + 11);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end