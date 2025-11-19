@interface NPKProtoAcceptSubcredentialInvitationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAcceptSubcredentialInvitationResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptSubcredentialInvitationResponse;
  v4 = [(NPKProtoAcceptSubcredentialInvitationResponse *)&v8 description];
  v5 = [(NPKProtoAcceptSubcredentialInvitationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  passForInvitation = self->_passForInvitation;
  if (passForInvitation)
  {
    v5 = [(NPKProtoPass *)passForInvitation dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"passForInvitation"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v7 forKey:@"pending"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_passForInvitation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passForInvitation)
  {
    [v4 setPassForInvitation:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoPass *)self->_passForInvitation copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passForInvitation = self->_passForInvitation;
  if (passForInvitation | *(v4 + 2))
  {
    if (![(NPKProtoPass *)passForInvitation isEqual:?])
    {
      goto LABEL_8;
    }
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1))
  {
    if (![(NSData *)errorData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_pending)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  passForInvitation = self->_passForInvitation;
  v6 = *(v4 + 2);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (*(v4 + 1))
  {
    [(NPKProtoAcceptSubcredentialInvitationResponse *)self setErrorData:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    self->_pending = *(v4 + 24);
    *&self->_has |= 1u;
  }
}

@end