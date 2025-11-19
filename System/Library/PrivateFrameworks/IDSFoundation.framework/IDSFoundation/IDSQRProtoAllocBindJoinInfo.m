@interface IDSQRProtoAllocBindJoinInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)a3;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoAllocBindJoinInfo

- (int)reason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReason:(BOOL)a3
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

- (id)reasonAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"NEWLY_JOINED";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"NONE";
  }

  return v4;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"NEWLY_JOINED"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoAllocBindJoinInfo;
  v4 = [(IDSQRProtoAllocBindJoinInfo *)&v8 description];
  v5 = [(IDSQRProtoAllocBindJoinInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantId];
    [v3 setObject:v4 forKey:@"participant_id"];
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    v6 = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"client_context_blob"];
  }

  if ((*&self->_has & 2) != 0)
  {
    reason = self->_reason;
    if (reason)
    {
      if (reason == 1)
      {
        v8 = @"NEWLY_JOINED";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
      }
    }

    else
    {
      v8 = @"NONE";
    }

    [v3 setObject:v8 forKey:@"reason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_participantId;
    *(v4 + 28) |= 1u;
  }

  if (self->_clientContextBlob)
  {
    v5 = v4;
    [v4 setClientContextBlob:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 6) = self->_reason;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_participantId;
    *(v5 + 28) |= 1u;
  }

  v7 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_reason;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_participantId != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(v4 + 2))
  {
    if (![(IDSQRProtoMaterial *)clientContextBlob isEqual:?])
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v7 = (*(v4 + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_reason != *(v4 + 6))
    {
      goto LABEL_14;
    }

    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_participantId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IDSQRProtoMaterial *)self->_clientContextBlob hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_reason;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_participantId = v4[1];
    *&self->_has |= 1u;
  }

  clientContextBlob = self->_clientContextBlob;
  v7 = *(v5 + 2);
  if (clientContextBlob)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(IDSQRProtoMaterial *)clientContextBlob mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(IDSQRProtoAllocBindJoinInfo *)self setClientContextBlob:?];
  }

  v5 = v8;
LABEL_9:
  if ((*(v5 + 28) & 2) != 0)
  {
    self->_reason = *(v5 + 6);
    *&self->_has |= 2u;
  }
}

@end