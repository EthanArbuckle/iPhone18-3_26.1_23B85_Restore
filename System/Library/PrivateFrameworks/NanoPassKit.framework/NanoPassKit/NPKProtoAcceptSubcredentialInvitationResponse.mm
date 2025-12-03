@interface NPKProtoAcceptSubcredentialInvitationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAcceptSubcredentialInvitationResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationResponse;
  v4 = [(NPKProtoAcceptSubcredentialInvitationResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAcceptSubcredentialInvitationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  passForInvitation = self->_passForInvitation;
  if (passForInvitation)
  {
    dictionaryRepresentation = [(NPKProtoPass *)passForInvitation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"passForInvitation"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v7 forKey:@"pending"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_passForInvitation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passForInvitation)
  {
    [toCopy setPassForInvitation:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_pending;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoPass *)self->_passForInvitation copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passForInvitation = self->_passForInvitation;
  if (passForInvitation | *(equalCopy + 2))
  {
    if (![(NPKProtoPass *)passForInvitation isEqual:?])
    {
      goto LABEL_8;
    }
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1))
  {
    if (![(NSData *)errorData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_pending)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoPass *)self->_passForInvitation hash];
  v4 = [(NSData *)self->_errorData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_pending;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  passForInvitation = self->_passForInvitation;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
  if (passForInvitation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoPass *)passForInvitation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoAcceptSubcredentialInvitationResponse *)self setPassForInvitation:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(NPKProtoAcceptSubcredentialInvitationResponse *)self setErrorData:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    self->_pending = *(fromCopy + 24);
    *&self->_has |= 1u;
  }
}

@end