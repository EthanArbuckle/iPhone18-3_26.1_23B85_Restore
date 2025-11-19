@interface IDSQRProtoParticipantUpdateRequest
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

@implementation IDSQRProtoParticipantUpdateRequest

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = IDSQRProtoParticipantUpdateRequest;
  [(IDSQRProtoParticipantUpdateRequest *)&v3 dealloc];
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
  v8.super_class = IDSQRProtoParticipantUpdateRequest;
  v4 = [(IDSQRProtoParticipantUpdateRequest *)&v8 description];
  v5 = [(IDSQRProtoParticipantUpdateRequest *)self dictionaryRepresentation];
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

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    v7 = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"client_context_blob"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sessionStateCounter];
    [v3 setObject:v8 forKey:@"session_state_counter"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = v6;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v5 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  v7[10] = self->_operationFlags;
  if ([(IDSQRProtoParticipantUpdateRequest *)self participantIdListsCount])
  {
    [v7 clearParticipantIdLists];
    v4 = [(IDSQRProtoParticipantUpdateRequest *)self participantIdListsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addParticipantIdList:{-[IDSQRProtoParticipantUpdateRequest participantIdListAtIndex:](self, "participantIdListAtIndex:", i)}];
      }
    }
  }

  if (self->_clientContextBlob)
  {
    [v7 setClientContextBlob:?];
  }

  if (*&self->_has)
  {
    v7[11] = self->_sessionStateCounter;
    *(v7 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_operationFlags;
  PBRepeatedUInt64Copy();
  v6 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 44) = self->_sessionStateCounter;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if (self->_operationFlags != *(v4 + 10))
  {
    goto LABEL_10;
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_10;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(v4 + 4))
  {
    if (![(IDSQRProtoMaterial *)clientContextBlob isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v6 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_sessionStateCounter == *(v4 + 11))
    {
      v6 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (unint64_t)hash
{
  operationFlags = self->_operationFlags;
  v4 = PBRepeatedUInt64Hash();
  v5 = [(IDSQRProtoMaterial *)self->_clientContextBlob hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_sessionStateCounter;
  }

  else
  {
    v6 = 0;
  }

  return (2654435761 * operationFlags) ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_operationFlags = v4[10];
  v11 = v4;
  v5 = [v4 participantIdListsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[IDSQRProtoParticipantUpdateRequest addParticipantIdList:](self, "addParticipantIdList:", [v11 participantIdListAtIndex:i]);
    }
  }

  clientContextBlob = self->_clientContextBlob;
  v9 = v11;
  v10 = v11[4];
  if (clientContextBlob)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    [(IDSQRProtoMaterial *)clientContextBlob mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    [(IDSQRProtoParticipantUpdateRequest *)self setClientContextBlob:?];
  }

  v9 = v11;
LABEL_10:
  if (v9[6])
  {
    self->_sessionStateCounter = *(v9 + 11);
    *&self->_has |= 1u;
  }
}

@end