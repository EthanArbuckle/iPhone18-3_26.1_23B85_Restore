@interface IDSQRProtoParticipantUpdateResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)participantIdListAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoParticipantUpdateResponse

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantUpdateResponse;
  [(IDSQRProtoParticipantUpdateResponse *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantUpdateResponse;
  v4 = [(IDSQRProtoParticipantUpdateResponse *)&v8 description];
  v5 = [(IDSQRProtoParticipantUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_operationFlags];
  [v3 setObject:v4 forKey:@"operation_flags"];

  v5 = PBRepeatedUInt64NSArray();
  [v3 setObject:v5 forKey:@"participant_id_list"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [v3 setObject:v6 forKey:@"session_state_counter"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_participantIdLists.count)
  {
    v4 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      ++v4;
    }

    while (v4 < self->_participantIdLists.count);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  v7[8] = self->_operationFlags;
  if ([(IDSQRProtoParticipantUpdateResponse *)self participantIdListsCount])
  {
    [v7 clearParticipantIdLists];
    v4 = [(IDSQRProtoParticipantUpdateResponse *)self participantIdListsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addParticipantIdList:{-[IDSQRProtoParticipantUpdateResponse participantIdListAtIndex:](self, "participantIdListAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    v7[9] = self->_sessionStateCounter;
    *(v7 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 32) = self->_operationFlags;
  PBRepeatedUInt64Copy();
  if (*&self->_has)
  {
    *(v4 + 36) = self->_sessionStateCounter;
    *(v4 + 40) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_operationFlags != *(v4 + 8) || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_8;
  }

  v5 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_sessionStateCounter == *(v4 + 9))
    {
      v5 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (unint64_t)hash
{
  operationFlags = self->_operationFlags;
  v4 = PBRepeatedUInt64Hash();
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_sessionStateCounter;
  }

  else
  {
    v5 = 0;
  }

  return (2654435761 * operationFlags) ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_operationFlags = v4[8];
  v8 = v4;
  v5 = [v4 participantIdListsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoParticipantUpdateResponse addParticipantIdList:](self, "addParticipantIdList:", [v8 participantIdListAtIndex:i]);
    }
  }

  if (v8[10])
  {
    self->_sessionStateCounter = v8[9];
    *&self->_has |= 1u;
  }
}

@end