@interface NPKProtoInsertBridgeNotificationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoInsertBridgeNotificationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoInsertBridgeNotificationRequest;
  v4 = [(NPKProtoInsertBridgeNotificationRequest *)&v8 description];
  v5 = [(NPKProtoInsertBridgeNotificationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  message = self->_message;
  if (message)
  {
    [v4 setObject:message forKey:@"message"];
  }

  actionURLString = self->_actionURLString;
  if (actionURLString)
  {
    [v4 setObject:actionURLString forKey:@"actionURLString"];
  }

  passUniqueID = self->_passUniqueID;
  if (passUniqueID)
  {
    [v4 setObject:passUniqueID forKey:@"passUniqueID"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_playSound];
    [v4 setObject:v9 forKey:@"playSound"];
  }

  notificationIdentifier = self->_notificationIdentifier;
  if (notificationIdentifier)
  {
    [v4 setObject:notificationIdentifier forKey:@"notificationIdentifier"];
  }

  expirationDateData = self->_expirationDateData;
  if (expirationDateData)
  {
    [v4 setObject:expirationDateData forKey:@"expirationDateData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_title)
  {
    [NPKProtoInsertBridgeNotificationRequest writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  if (!self->_message)
  {
    [NPKProtoInsertBridgeNotificationRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_actionURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passUniqueID)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (*&self->_has)
  {
    playSound = self->_playSound;
    PBDataWriterWriteBOOLField();
    v5 = v7;
  }

  if (self->_notificationIdentifier)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_expirationDateData)
  {
    PBDataWriterWriteDataField();
    v5 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setTitle:self->_title];
  [v5 setMessage:self->_message];
  if (self->_actionURLString)
  {
    [v5 setActionURLString:?];
  }

  if (self->_passUniqueID)
  {
    [v5 setPassUniqueID:?];
  }

  v4 = v5;
  if (*&self->_has)
  {
    v5[56] = self->_playSound;
    v5[60] |= 1u;
  }

  if (self->_notificationIdentifier)
  {
    [v5 setNotificationIdentifier:?];
    v4 = v5;
  }

  if (self->_expirationDateData)
  {
    [v5 setExpirationDateData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_message copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_actionURLString copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_passUniqueID copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_playSound;
    *(v5 + 60) |= 1u;
  }

  v14 = [(NSString *)self->_notificationIdentifier copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSData *)self->_expirationDateData copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = self->_title;
  if (title | *(v4 + 6))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_17;
    }
  }

  message = self->_message;
  if (message | *(v4 + 3))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_17;
    }
  }

  actionURLString = self->_actionURLString;
  if (actionURLString | *(v4 + 1))
  {
    if (![(NSString *)actionURLString isEqual:?])
    {
      goto LABEL_17;
    }
  }

  passUniqueID = self->_passUniqueID;
  if (passUniqueID | *(v4 + 5))
  {
    if (![(NSString *)passUniqueID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(v4 + 60);
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(v4 + 56);
    if (self->_playSound)
    {
      if (*(v4 + 56))
      {
        goto LABEL_12;
      }

LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }
  }

  if (v9)
  {
    goto LABEL_17;
  }

LABEL_12:
  notificationIdentifier = self->_notificationIdentifier;
  if (notificationIdentifier | *(v4 + 4) && ![(NSString *)notificationIdentifier isEqual:?])
  {
    goto LABEL_17;
  }

  expirationDateData = self->_expirationDateData;
  if (expirationDateData | *(v4 + 2))
  {
    v12 = [(NSData *)expirationDateData isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_18:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_message hash];
  v5 = [(NSString *)self->_actionURLString hash];
  v6 = [(NSString *)self->_passUniqueID hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_playSound;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_notificationIdentifier hash];
  return v8 ^ v9 ^ [(NSData *)self->_expirationDateData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 6))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setMessage:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setActionURLString:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setPassUniqueID:?];
    v4 = v5;
  }

  if (v4[60])
  {
    self->_playSound = v4[56];
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setNotificationIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setExpirationDateData:?];
    v4 = v5;
  }
}

@end