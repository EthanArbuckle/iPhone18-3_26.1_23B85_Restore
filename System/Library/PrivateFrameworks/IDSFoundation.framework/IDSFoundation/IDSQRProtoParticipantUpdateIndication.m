@interface IDSQRProtoParticipantUpdateIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)participantIdListAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasOperationFlags:(BOOL)a3;
- (void)setHasSessionStateCounter:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoParticipantUpdateIndication

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantUpdateIndication;
  [(IDSQRProtoParticipantUpdateIndication *)&v3 dealloc];
}

- (unint64_t)participantIdListAtIndex:(unint64_t)a3
{
  p_participantIdLists = &self->_participantIdLists;
  count = self->_participantIdLists.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_participantIdLists->list[a3];
}

- (void)setHasOperationFlags:(BOOL)a3
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

- (void)setHasSessionStateCounter:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantUpdateIndication;
  v4 = [(IDSQRProtoParticipantUpdateIndication *)&v8 description];
  v5 = [(IDSQRProtoParticipantUpdateIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt64NSArray();
  [v3 setObject:v4 forKey:@"participant_id_list"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_operationFlags];
    [v3 setObject:v8 forKey:@"operation_flags"];

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
  [v3 setObject:v9 forKey:@"txn_id"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [v3 setObject:v6 forKey:@"session_state_counter"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_participantIdLists.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      v4 = v7;
      ++v5;
    }

    while (v5 < self->_participantIdLists.count);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v7;
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
  v4 = v7;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(IDSQRProtoParticipantUpdateIndication *)self participantIdListsCount])
  {
    [v8 clearParticipantIdLists];
    v4 = [(IDSQRProtoParticipantUpdateIndication *)self participantIdListsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addParticipantIdList:{-[IDSQRProtoParticipantUpdateIndication participantIdListAtIndex:](self, "participantIdListAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v8 + 10) = self->_operationFlags;
    *(v8 + 48) |= 2u;
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

  *(v8 + 4) = self->_txnId;
  *(v8 + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v8 + 11) = self->_sessionStateCounter;
    *(v8 + 48) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_operationFlags != *(v4 + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_txnId != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_17;
  }

  v5 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_sessionStateCounter != *(v4 + 11))
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  v4 = [v8 participantIdListsCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[IDSQRProtoParticipantUpdateIndication addParticipantIdList:](self, "addParticipantIdList:", [v8 participantIdListAtIndex:i]);
    }
  }

  v7 = *(v8 + 48);
  if ((v7 & 2) != 0)
  {
    self->_operationFlags = *(v8 + 10);
    *&self->_has |= 2u;
    v7 = *(v8 + 48);
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

  else if ((*(v8 + 48) & 1) == 0)
  {
    goto LABEL_6;
  }

  self->_txnId = *(v8 + 4);
  *&self->_has |= 1u;
  if ((*(v8 + 48) & 4) != 0)
  {
LABEL_7:
    self->_sessionStateCounter = *(v8 + 11);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end