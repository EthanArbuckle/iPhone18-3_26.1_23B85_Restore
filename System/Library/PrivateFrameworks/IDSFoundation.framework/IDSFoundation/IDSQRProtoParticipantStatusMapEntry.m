@interface IDSQRProtoParticipantStatusMapEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)participantStatusAsString:(int)a3;
- (int)StringAsParticipantStatus:(id)a3;
- (int)participantStatus;
- (unint64_t)hash;
- (unint64_t)participantIdsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)participantStatusAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E18B8[a3];
  }

  return v4;
}

- (int)StringAsParticipantStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HOST"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PERFORMER"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACTIVE_AUDIENCE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)participantIdsAtIndex:(unint64_t)a3
{
  p_participantIds = &self->_participantIds;
  count = self->_participantIds.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_participantIds->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantStatusMapEntry;
  v4 = [(IDSQRProtoParticipantStatusMapEntry *)&v8 description];
  v5 = [(IDSQRProtoParticipantStatusMapEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"participant_status"];
  }

  v6 = PBRepeatedUInt64NSArray();
  [v3 setObject:v6 forKey:@"participant_ids"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  p_participantIds = &self->_participantIds;
  if (p_participantIds->count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint64Field();
      v4 = v7;
      ++v6;
    }

    while (v6 < p_participantIds->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_participantStatus;
    *(v4 + 36) |= 1u;
  }

  v8 = v4;
  if ([(IDSQRProtoParticipantStatusMapEntry *)self participantIdsCount])
  {
    [v8 clearParticipantIds];
    v5 = [(IDSQRProtoParticipantStatusMapEntry *)self participantIdsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addParticipantIds:{-[IDSQRProtoParticipantStatusMapEntry participantIdsAtIndex:](self, "participantIdsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_participantStatus;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedUInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_participantStatus != *(v4 + 8))
    {
      goto LABEL_8;
    }
  }

  else if (*(v4 + 36))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_participantStatus = v4[8];
    *&self->_has |= 1u;
  }

  v8 = v4;
  v5 = [v4 participantIdsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoParticipantStatusMapEntry addParticipantIds:](self, "addParticipantIds:", [v8 participantIdsAtIndex:i]);
    }
  }
}

@end