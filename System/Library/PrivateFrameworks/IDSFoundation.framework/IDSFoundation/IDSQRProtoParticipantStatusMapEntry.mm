@interface IDSQRProtoParticipantStatusMapEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)participantStatusAsString:(int)string;
- (int)StringAsParticipantStatus:(id)status;
- (int)participantStatus;
- (unint64_t)hash;
- (unint64_t)participantIdsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoParticipantStatusMapEntry

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantStatusMapEntry;
  [(IDSQRProtoParticipantStatusMapEntry *)&v3 dealloc];
}

- (int)participantStatus
{
  if (*&self->_has)
  {
    return self->_participantStatus;
  }

  else
  {
    return 0;
  }
}

- (id)participantStatusAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E18B8[string];
  }

  return v4;
}

- (int)StringAsParticipantStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"HOST"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"PERFORMER"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"ACTIVE_AUDIENCE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)participantIdsAtIndex:(unint64_t)index
{
  p_participantIds = &self->_participantIds;
  count = self->_participantIds.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_participantIds->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantStatusMapEntry;
  v4 = [(IDSQRProtoParticipantStatusMapEntry *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoParticipantStatusMapEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    participantStatus = self->_participantStatus;
    if (participantStatus >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_participantStatus];
    }

    else
    {
      v5 = off_1E77E18B8[participantStatus];
    }

    [dictionary setObject:v5 forKey:@"participant_status"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [dictionary setObject:v6 forKey:@"participant_ids"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  p_participantIds = &self->_participantIds;
  if (p_participantIds->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      toCopy = v7;
      ++v6;
    }

    while (v6 < p_participantIds->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_participantStatus;
    *(toCopy + 36) |= 1u;
  }

  v8 = toCopy;
  if ([(IDSQRProtoParticipantStatusMapEntry *)self participantIdsCount])
  {
    [v8 clearParticipantIds];
    participantIdsCount = [(IDSQRProtoParticipantStatusMapEntry *)self participantIdsCount];
    if (participantIdsCount)
    {
      v6 = participantIdsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addParticipantIds:{-[IDSQRProtoParticipantStatusMapEntry participantIdsAtIndex:](self, "participantIdsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_participantStatus;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_participantStatus != *(equalCopy + 8))
    {
      goto LABEL_8;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedUInt64IsEqual();
LABEL_9:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_participantStatus;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt64Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_participantStatus = fromCopy[8];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  participantIdsCount = [fromCopy participantIdsCount];
  if (participantIdsCount)
  {
    v6 = participantIdsCount;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoParticipantStatusMapEntry addParticipantIds:](self, "addParticipantIds:", [v8 participantIdsAtIndex:i]);
    }
  }
}

@end