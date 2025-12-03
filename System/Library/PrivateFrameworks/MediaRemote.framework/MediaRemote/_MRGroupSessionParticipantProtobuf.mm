@interface _MRGroupSessionParticipantProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGuest:(BOOL)guest;
- (void)setHasHidden:(BOOL)hidden;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionParticipantProtobuf

- (void)setHasGuest:(BOOL)guest
{
  if (guest)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasHidden:(BOOL)hidden
{
  if (hidden)
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
  v8.super_class = _MRGroupSessionParticipantProtobuf;
  v4 = [(_MRGroupSessionParticipantProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionParticipantProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  identity = self->_identity;
  if (identity)
  {
    dictionaryRepresentation = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"identity"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_connected];
    [v4 setObject:v11 forKey:@"connected"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_guest];
  [v4 setObject:v12 forKey:@"guest"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hidden];
    [v4 setObject:v9 forKey:@"hidden"];
  }

LABEL_9:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    connected = self->_connected;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  guest = self->_guest;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    hidden = self->_hidden;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  if (self->_identity)
  {
    [v6 setIdentity:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    toCopy[24] = self->_connected;
    toCopy[28] |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  toCopy[25] = self->_guest;
  toCopy[28] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    toCopy[26] = self->_hidden;
    toCopy[28] |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 25) = self->_guest;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_connected;
  *(v5 + 28) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 26) = self->_hidden;
    *(v5 + 28) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_28;
    }
  }

  identity = self->_identity;
  if (identity | *(equalCopy + 2))
  {
    if (![(_MRUserIdentityProtobuf *)identity isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_28;
    }

    v8 = *(equalCopy + 24);
    if (self->_connected)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 28) & 2) == 0)
  {
    goto LABEL_28;
  }

  v9 = *(equalCopy + 25);
  if (self->_guest)
  {
    if ((*(equalCopy + 25) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 25))
  {
    goto LABEL_28;
  }

LABEL_10:
  v7 = (*(equalCopy + 28) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) != 0)
    {
      if (self->_hidden)
      {
        if (*(equalCopy + 26))
        {
          goto LABEL_30;
        }
      }

      else if (!*(equalCopy + 26))
      {
LABEL_30:
        v7 = 1;
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

LABEL_29:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(_MRUserIdentityProtobuf *)self->_identity hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_connected;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761 * self->_guest;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_hidden;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(_MRGroupSessionParticipantProtobuf *)self setIdentifier:?];
    fromCopy = v8;
  }

  identity = self->_identity;
  v6 = *(fromCopy + 2);
  if (identity)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(_MRGroupSessionParticipantProtobuf *)self setIdentity:?];
  }

  fromCopy = v8;
LABEL_9:
  v7 = fromCopy[28];
  if (v7)
  {
    self->_connected = fromCopy[24];
    *&self->_has |= 1u;
    v7 = fromCopy[28];
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((fromCopy[28] & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_guest = fromCopy[25];
  *&self->_has |= 2u;
  if ((fromCopy[28] & 4) != 0)
  {
LABEL_12:
    self->_hidden = fromCopy[26];
    *&self->_has |= 4u;
  }

LABEL_13:
}

@end