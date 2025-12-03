@interface NPKProtoInsertBridgeNotificationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoInsertBridgeNotificationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoInsertBridgeNotificationRequest;
  v4 = [(NPKProtoInsertBridgeNotificationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoInsertBridgeNotificationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_title)
  {
    [NPKProtoInsertBridgeNotificationRequest writeTo:];
  }

  v7 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTitle:self->_title];
  [toCopy setMessage:self->_message];
  if (self->_actionURLString)
  {
    [toCopy setActionURLString:?];
  }

  if (self->_passUniqueID)
  {
    [toCopy setPassUniqueID:?];
  }

  v4 = toCopy;
  if (*&self->_has)
  {
    toCopy[56] = self->_playSound;
    toCopy[60] |= 1u;
  }

  if (self->_notificationIdentifier)
  {
    [toCopy setNotificationIdentifier:?];
    v4 = toCopy;
  }

  if (self->_expirationDateData)
  {
    [toCopy setExpirationDateData:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_message copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_actionURLString copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_passUniqueID copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_playSound;
    *(v5 + 60) |= 1u;
  }

  v14 = [(NSString *)self->_notificationIdentifier copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSData *)self->_expirationDateData copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = self->_title;
  if (title | *(equalCopy + 6))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_17;
    }
  }

  message = self->_message;
  if (message | *(equalCopy + 3))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_17;
    }
  }

  actionURLString = self->_actionURLString;
  if (actionURLString | *(equalCopy + 1))
  {
    if (![(NSString *)actionURLString isEqual:?])
    {
      goto LABEL_17;
    }
  }

  passUniqueID = self->_passUniqueID;
  if (passUniqueID | *(equalCopy + 5))
  {
    if (![(NSString *)passUniqueID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_17;
    }

    v9 = *(equalCopy + 56);
    if (self->_playSound)
    {
      if (*(equalCopy + 56))
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
  if (notificationIdentifier | *(equalCopy + 4) && ![(NSString *)notificationIdentifier isEqual:?])
  {
    goto LABEL_17;
  }

  expirationDateData = self->_expirationDateData;
  if (expirationDateData | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setMessage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setActionURLString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setPassUniqueID:?];
    fromCopy = v5;
  }

  if (fromCopy[60])
  {
    self->_playSound = fromCopy[56];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setNotificationIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoInsertBridgeNotificationRequest *)self setExpirationDateData:?];
    fromCopy = v5;
  }
}

@end