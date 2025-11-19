@interface IDSQRProtoParticipantUpdateParticipantModeInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)modeAsString:(int)a3;
- (int)StringAsMode:(id)a3;
- (int)mode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoParticipantUpdateParticipantModeInfo

- (int)mode
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMode:(BOOL)a3
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

- (id)modeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"LIGHTWEIGHT";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"NORMAL";
  }

  return v4;
}

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NORMAL"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"LIGHTWEIGHT"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoParticipantUpdateParticipantModeInfo;
  v4 = [(IDSQRProtoParticipantUpdateParticipantModeInfo *)&v8 description];
  v5 = [(IDSQRProtoParticipantUpdateParticipantModeInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantId];
    [v3 setObject:v5 forKey:@"participant_id"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    mode = self->_mode;
    if (mode)
    {
      if (mode == 1)
      {
        v7 = @"LIGHTWEIGHT";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mode];
      }
    }

    else
    {
      v7 = @"NORMAL";
    }

    [v3 setObject:v7 forKey:@"mode"];
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    v9 = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"client_context_blob"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_participantId;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_mode;
    *(v4 + 28) |= 2u;
  }

  if (self->_clientContextBlob)
  {
    v6 = v4;
    [v4 setClientContextBlob:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_participantId;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_mode;
    *(v5 + 28) |= 2u;
  }

  v8 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_participantId != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_mode != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_14;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(v4 + 2))
  {
    v6 = [(IDSQRProtoMaterial *)clientContextBlob isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_15:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_participantId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(IDSQRProtoMaterial *)self->_clientContextBlob hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_mode;
  return v7 ^ v6 ^ [(IDSQRProtoMaterial *)self->_clientContextBlob hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 28);
  if (v6)
  {
    self->_participantId = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 28);
  }

  if ((v6 & 2) != 0)
  {
    self->_mode = *(v4 + 6);
    *&self->_has |= 2u;
  }

  clientContextBlob = self->_clientContextBlob;
  v8 = v5[2];
  if (clientContextBlob)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(IDSQRProtoMaterial *)clientContextBlob mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v5;
    [(IDSQRProtoParticipantUpdateParticipantModeInfo *)self setClientContextBlob:?];
  }

  v5 = v9;
LABEL_11:
}

@end