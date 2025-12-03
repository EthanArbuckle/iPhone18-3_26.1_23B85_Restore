@interface NPKProtoRemotePassUpdateRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequestAuthorization:(BOOL)authorization;
- (void)setHasShouldNotifyUser:(BOOL)user;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassUpdateRequest

- (void)setHasRequestAuthorization:(BOOL)authorization
{
  if (authorization)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasShouldNotifyUser:(BOOL)user
{
  if (user)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassUpdateRequest;
  v4 = [(NPKProtoRemotePassUpdateRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemotePassUpdateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passID = self->_passID;
  if (passID)
  {
    [dictionary setObject:passID forKey:@"passID"];
  }

  updateRequestData = self->_updateRequestData;
  if (updateRequestData)
  {
    [v4 setObject:updateRequestData forKey:@"updateRequestData"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_cancelUpdate];
    [v4 setObject:v7 forKey:@"cancelUpdate"];
  }

  pass = self->_pass;
  if (pass)
  {
    dictionaryRepresentation = [(NPKProtoPass *)pass dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"pass"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_requestAuthorization];
    [v4 setObject:v11 forKey:@"requestAuthorization"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldNotifyUser];
    [v4 setObject:v12 forKey:@"shouldNotifyUser"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passID)
  {
    [NPKProtoRemotePassUpdateRequest writeTo:];
  }

  v10 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_updateRequestData)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    cancelUpdate = self->_cancelUpdate;
    PBDataWriterWriteBOOLField();
  }

  v6 = v10;
  if (self->_pass)
  {
    PBDataWriterWriteSubmessage();
    v6 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    requestAuthorization = self->_requestAuthorization;
    PBDataWriterWriteBOOLField();
    v6 = v10;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    shouldNotifyUser = self->_shouldNotifyUser;
    PBDataWriterWriteBOOLField();
    v6 = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassID:self->_passID];
  if (self->_updateRequestData)
  {
    [toCopy setUpdateRequestData:?];
  }

  v4 = toCopy;
  if (*&self->_has)
  {
    toCopy[32] = self->_cancelUpdate;
    toCopy[36] |= 1u;
  }

  if (self->_pass)
  {
    [toCopy setPass:?];
    v4 = toCopy;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[33] = self->_requestAuthorization;
    v4[36] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[34] = self->_shouldNotifyUser;
    v4[36] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_updateRequestData copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_cancelUpdate;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NPKProtoPass *)self->_pass copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 33) = self->_requestAuthorization;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 34) = self->_shouldNotifyUser;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  passID = self->_passID;
  if (passID | *(equalCopy + 2))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  updateRequestData = self->_updateRequestData;
  if (updateRequestData | *(equalCopy + 3))
  {
    if (![(NSData *)updateRequestData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 36);
  if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = *(equalCopy + 32);
  if (self->_cancelUpdate)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_7:
    if (v8)
    {
      goto LABEL_23;
    }
  }

  pass = self->_pass;
  if (pass | *(equalCopy + 1))
  {
    if (![(NPKProtoPass *)pass isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
  }

  if ((has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(equalCopy + 33);
  if (self->_requestAuthorization)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_23;
  }

LABEL_13:
  v10 = (*(equalCopy + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) != 0)
    {
      if (self->_shouldNotifyUser)
      {
        if (*(equalCopy + 34))
        {
          goto LABEL_31;
        }
      }

      else if (!*(equalCopy + 34))
      {
LABEL_31:
        v10 = 1;
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passID hash];
  v4 = [(NSData *)self->_updateRequestData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cancelUpdate;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NPKProtoPass *)self->_pass hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_requestAuthorization;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = 2654435761 * self->_shouldNotifyUser;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoRemotePassUpdateRequest *)self setPassID:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoRemotePassUpdateRequest *)self setUpdateRequestData:?];
    fromCopy = v8;
  }

  if (fromCopy[36])
  {
    self->_cancelUpdate = fromCopy[32];
    *&self->_has |= 1u;
  }

  pass = self->_pass;
  v6 = *(fromCopy + 1);
  if (pass)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(NPKProtoPass *)pass mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(NPKProtoRemotePassUpdateRequest *)self setPass:?];
  }

  fromCopy = v8;
LABEL_13:
  v7 = fromCopy[36];
  if ((v7 & 2) != 0)
  {
    self->_requestAuthorization = fromCopy[33];
    *&self->_has |= 2u;
    v7 = fromCopy[36];
  }

  if ((v7 & 4) != 0)
  {
    self->_shouldNotifyUser = fromCopy[34];
    *&self->_has |= 4u;
  }
}

@end