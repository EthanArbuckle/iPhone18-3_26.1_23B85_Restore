@interface IDSQRProtoParticipantUpdateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)participantIdListAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoParticipantUpdateResponse

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantUpdateResponse;
  [(IDSQRProtoParticipantUpdateResponse *)&v3 dealloc];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantUpdateResponse;
  v4 = [(IDSQRProtoParticipantUpdateResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoParticipantUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_operationFlags];
  [dictionary setObject:v4 forKey:@"operation_flags"];

  v5 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v5 forKey:@"participant_id_list"];

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [dictionary setObject:v6 forKey:@"session_state_counter"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[8] = self->_operationFlags;
  if ([(IDSQRProtoParticipantUpdateResponse *)self participantIdListsCount])
  {
    [toCopy clearParticipantIdLists];
    participantIdListsCount = [(IDSQRProtoParticipantUpdateResponse *)self participantIdListsCount];
    if (participantIdListsCount)
    {
      v5 = participantIdListsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addParticipantIdList:{-[IDSQRProtoParticipantUpdateResponse participantIdListAtIndex:](self, "participantIdListAtIndex:", i)}];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[9] = self->_sessionStateCounter;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 32) = self->_operationFlags;
  PBRepeatedUInt64Copy();
  if (*&self->_has)
  {
    *(v4 + 36) = self->_sessionStateCounter;
    *(v4 + 40) |= 1u;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_operationFlags != *(equalCopy + 8) || !PBRepeatedUInt64IsEqual())
  {
    goto LABEL_8;
  }

  v5 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_sessionStateCounter == *(equalCopy + 9))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_operationFlags = fromCopy[8];
  v8 = fromCopy;
  participantIdListsCount = [fromCopy participantIdListsCount];
  if (participantIdListsCount)
  {
    v6 = participantIdListsCount;
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