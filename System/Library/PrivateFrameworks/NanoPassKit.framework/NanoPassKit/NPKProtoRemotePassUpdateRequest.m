@interface NPKProtoRemotePassUpdateRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequestAuthorization:(BOOL)a3;
- (void)setHasShouldNotifyUser:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassUpdateRequest

- (void)setHasRequestAuthorization:(BOOL)a3
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

- (void)setHasShouldNotifyUser:(BOOL)a3
{
  if (a3)
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
  v5 = [(NPKProtoRemotePassUpdateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passID = self->_passID;
  if (passID)
  {
    [v3 setObject:passID forKey:@"passID"];
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
    v9 = [(NPKProtoPass *)pass dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"pass"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_passID)
  {
    [NPKProtoRemotePassUpdateRequest writeTo:];
  }

  v10 = v4;
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

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setPassID:self->_passID];
  if (self->_updateRequestData)
  {
    [v6 setUpdateRequestData:?];
  }

  v4 = v6;
  if (*&self->_has)
  {
    v6[32] = self->_cancelUpdate;
    v6[36] |= 1u;
  }

  if (self->_pass)
  {
    [v6 setPass:?];
    v4 = v6;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_updateRequestData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_cancelUpdate;
    *(v5 + 36) |= 1u;
  }

  v10 = [(NPKProtoPass *)self->_pass copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  passID = self->_passID;
  if (passID | *(v4 + 2))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  updateRequestData = self->_updateRequestData;
  if (updateRequestData | *(v4 + 3))
  {
    if (![(NSData *)updateRequestData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(v4 + 36);
  if ((has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_23;
  }

  v8 = *(v4 + 32);
  if (self->_cancelUpdate)
  {
    if ((*(v4 + 32) & 1) == 0)
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
  if (pass | *(v4 + 1))
  {
    if (![(NPKProtoPass *)pass isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
  }

  if ((has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(v4 + 33);
  if (self->_requestAuthorization)
  {
    if ((*(v4 + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 33))
  {
    goto LABEL_23;
  }

LABEL_13:
  v10 = (*(v4 + 36) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) != 0)
    {
      if (self->_shouldNotifyUser)
      {
        if (*(v4 + 34))
        {
          goto LABEL_31;
        }
      }

      else if (!*(v4 + 34))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoRemotePassUpdateRequest *)self setPassID:?];
    v4 = v8;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoRemotePassUpdateRequest *)self setUpdateRequestData:?];
    v4 = v8;
  }

  if (v4[36])
  {
    self->_cancelUpdate = v4[32];
    *&self->_has |= 1u;
  }

  pass = self->_pass;
  v6 = *(v4 + 1);
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

  v4 = v8;
LABEL_13:
  v7 = v4[36];
  if ((v7 & 2) != 0)
  {
    self->_requestAuthorization = v4[33];
    *&self->_has |= 2u;
    v7 = v4[36];
  }

  if ((v7 & 4) != 0)
  {
    self->_shouldNotifyUser = v4[34];
    *&self->_has |= 4u;
  }
}

@end